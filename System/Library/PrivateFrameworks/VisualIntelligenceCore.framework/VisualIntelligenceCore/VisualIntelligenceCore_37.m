uint64_t sub_1D8ACF23C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8ACF29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v6;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return sub_1D8AEEEC0(v9, v3, v4, v5, a2);
}

float sub_1D8ACF2E8@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  result = a1[2] / *(**(v2 + 16) + 16);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1D8ACF310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8ACF380(uint64_t a1)
{
  v3 = type metadata accessor for CVTrackSnapshot(0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1D8B16610();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D87F4628(0, v6 & ~(v6 >> 63), 0);
    v52 = v59;
    if (v49)
    {
      result = sub_1D8B165C0();
    }

    else
    {
      result = sub_1D8B16580();
      v8 = *(a1 + 36);
    }

    v56 = result;
    v57 = v8;
    v58 = v49 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v51 = v1;
      v9 = 0;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v43 = a1 + 56;
      v44 = v10;
      v42 = a1 + 64;
      v45 = v6;
      v46 = a1;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v56;
        v14 = v58;
        v50 = v57;
        v15 = sub_1D89C7EE8(v56, v57, v58, a1);
        v16 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
        v17 = sub_1D8B13240();
        (*(*(v17 - 8) + 16))(v5, v15 + v16, v17);
        CVTrackedDetection.latestDetection.getter(v53);
        v18 = v53[0];
        CVTrackedDetection.latestEstimate.getter(&v55);
        v19 = v55;
        v20 = *(*(v15 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
        v21 = *(v15 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
        v22 = sub_1D8ABF4E8();
        v23 = v51;
        v24 = sub_1D8AC0E90(*(v15 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
        v51 = v23;
        sub_1D891FD78(v24, &v54);

        v25 = v54;
        v26 = v48;
        *&v5[v48[5]] = v18;
        *&v5[v26[6]] = v19;
        v5[v26[7]] = v20;
        *&v5[v26[8]] = v21;
        *&v5[v26[9]] = v22;
        v5[v26[10]] = v25;
        v27 = v52;
        v59 = v52;
        v29 = *(v52 + 16);
        v28 = *(v52 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D87F4628(v28 > 1, v29 + 1, 1);
          v27 = v59;
        }

        *(v27 + 16) = v29 + 1;
        v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v52 = v27;
        result = sub_1D8AF7F08(v5, v27 + v30 + *(v47 + 72) * v29, type metadata accessor for CVTrackSnapshot);
        if (v49)
        {
          a1 = v46;
          if (!v14)
          {
            goto LABEL_42;
          }

          if (sub_1D8B165E0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69230);
          v11 = sub_1D8B16060();
          sub_1D8B16660();
          result = v11(v53, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_1D87977B4(v56, v57, v58);
            return v52;
          }
        }

        else
        {
          a1 = v46;
          if (v14)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v31 = 1 << *(v46 + 32);
          if (v13 >= v31)
          {
            goto LABEL_38;
          }

          v32 = v13 >> 6;
          v33 = *(v43 + 8 * (v13 >> 6));
          if (((v33 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v46 + 36) != v50)
          {
            goto LABEL_40;
          }

          v34 = v33 & (-2 << (v13 & 0x3F));
          if (v34)
          {
            v31 = __clz(__rbit64(v34)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v35 = v32 << 6;
            v36 = v32 + 1;
            v37 = (v42 + 8 * v32);
            while (v36 < (v31 + 63) >> 6)
            {
              v39 = *v37++;
              v38 = v39;
              v35 += 64;
              ++v36;
              if (v39)
              {
                result = sub_1D87977B4(v13, v50, 0);
                v31 = __clz(__rbit64(v38)) + v35;
                goto LABEL_33;
              }
            }

            result = sub_1D87977B4(v13, v50, 0);
          }

LABEL_33:
          v40 = *(a1 + 36);
          v56 = v31;
          v57 = v40;
          v58 = 0;
          v6 = v45;
          if (v9 == v45)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8ACF864(uint64_t a1)
{
  v3 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProcessorState(0);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v35 - v12;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v35[0] = v1;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1D87F4534(0, v13, 0);
  v14 = v46;
  v44 = a1 + 56;
  result = sub_1D8B16580();
  v16 = result;
  v17 = 0;
  v35[1] = v11 + 8;
  v37 = a1 + 64;
  v38 = v13;
  v39 = v11;
  v40 = a1;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v44 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_26;
    }

    v43 = *(a1 + 36);
    v20 = *(a1 + 48) + *(v41 + 72) * v16;
    v21 = v45;
    sub_1D8AF7FF0(v20, v45, type metadata accessor for ProcessorState);
    sub_1D8AF7FF0(v21, v11, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v23 = v36;
        sub_1D8AF7F08(v11, v36, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v23, v7, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v23, type metadata accessor for DetectionResult);
        goto LABEL_13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
    }

    sub_1D8AF7F08(v11, v7, type metadata accessor for DetectionRequest);
LABEL_13:
    v24 = *v7;
    v25 = v7;
    sub_1D8AF7F70(v7, type metadata accessor for DetectionRequest);
    result = sub_1D8AF7F70(v45, type metadata accessor for ProcessorState);
    v46 = v14;
    v27 = *(v14 + 16);
    v26 = *(v14 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_1D87F4534((v26 > 1), v27 + 1, 1);
      v14 = v46;
    }

    *(v14 + 16) = v27 + 1;
    *(v14 + v27 + 32) = v24;
    a1 = v40;
    v18 = 1 << *(v40 + 32);
    if (v16 >= v18)
    {
      goto LABEL_27;
    }

    v28 = *(v44 + 8 * v19);
    if ((v28 & (1 << v16)) == 0)
    {
      goto LABEL_28;
    }

    if (v43 != *(v40 + 36))
    {
      goto LABEL_29;
    }

    v29 = v28 & (-2 << (v16 & 0x3F));
    if (v29)
    {
      v18 = __clz(__rbit64(v29)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v7 = v25;
      v11 = v39;
    }

    else
    {
      v30 = v19 << 6;
      v31 = v19 + 1;
      v32 = (v37 + 8 * v19);
      v7 = v25;
      v11 = v39;
      while (v31 < (v18 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1D87977B4(v16, v43, 0);
          v18 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v16, v43, 0);
    }

LABEL_4:
    ++v17;
    v16 = v18;
    if (v17 == v38)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D8ACFD00(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v2, 0);
    v29 = v32;
    v4 = a1 + 64;
    result = sub_1D8B16580();
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 36);
    v26 = v2;
    v27 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_38;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_39;
      }

      v28 = v6 + 1;
      v10 = *(*(a1 + 48) + v5);
      v30 = sub_1D8B16B50();
      v31 = v11;
      MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
      v12 = 0xE900000000000067;
      v13 = 0x6E69646E756F7267;
      switch(v10)
      {
        case 1:
          v13 = 0x6465646E756F7267;
          v14 = 0x6573726150;
          goto LABEL_23;
        case 2:
          v12 = 0xE400000000000000;
          v13 = 1635018093;
          break;
        case 3:
          v12 = 0xE600000000000000;
          v13 = 0x7463656A626FLL;
          break;
        case 4:
          v12 = 0xE500000000000000;
          v13 = 0x6573726170;
          break;
        case 5:
          v12 = 0xE400000000000000;
          v13 = 1954047348;
          break;
        case 6:
          v12 = 0xE600000000000000;
          v13 = 0x65646F437271;
          break;
        case 7:
          v12 = 0xE700000000000000;
          v13 = 0x70696C43707061;
          break;
        case 8:
          v13 = 0x6E696D6165727473;
          v14 = 0x7478655467;
LABEL_23:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v13 = 0x6C61636974726576;
          v12 = 0xEF746E65746E6F43;
          break;
        case 10:
          v12 = 0xEA00000000006C61;
          v13 = 0x646F6D69746C756DLL;
          break;
        case 11:
          v13 = 0x69746568746E7973;
          v12 = 0xE900000000000063;
          break;
        case 12:
          v13 = 0xD000000000000017;
          v12 = 0x80000001D8B439C0;
          break;
        case 13:
          v13 = 0xD00000000000001CLL;
          v12 = 0x80000001D8B439A0;
          break;
        default:
          break;
      }

      MEMORY[0x1DA71EFA0](v13, v12);

      v15 = v29;
      v17 = *(v29 + 16);
      v16 = *(v29 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1D87F3F54((v16 > 1), v17 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = v30;
      *(v18 + 40) = v31;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_40;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v9);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_41;
      }

      v29 = v15;
      v7 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_42;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (a1 + 72 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1D87977B4(v5, v27, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1D87977B4(v5, v27, 0);
      }

LABEL_4:
      v5 = v8;
      v6 = v28;
      if (v28 == v26)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8AD0124(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v19 = a1;
  v6 = type metadata accessor for CVBundle(0);
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
LABEL_9:
    sub_1D8AF7FF0(*(a3 + 48) + *(v18 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v8, type metadata accessor for CVBundle);
    v16 = v19(v8);
    result = sub_1D8AF7F70(v8, type metadata accessor for CVBundle);
    if (v3)
    {
      goto LABEL_13;
    }

    v11 &= v11 - 1;
    if (v16)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v11 = *(a3 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AD02F4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;

      v10 = a1(&v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1D8AD039C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D8AD0444(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1D8AD04F0(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v19 = a1;
  v6 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
LABEL_9:
    sub_1D8AF7FF0(*(a3 + 56) + *(v18 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v8, type metadata accessor for BundleClassifier.ClassificationInfo);
    v16 = v19(v8);
    result = sub_1D8AF7F70(v8, type metadata accessor for BundleClassifier.ClassificationInfo);
    if (v3)
    {
      goto LABEL_13;
    }

    v11 &= v11 - 1;
    if (v16)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v11 = *(a3 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AD06C0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1DA71FC20](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1D8B16610();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t CameraSourceFrameMetadata.timeDescription.getter()
{
  v1 = *(v0 + 40);
  sub_1D8B16020();
  if (v1)
  {
    v2 = 0x296C6C6974532820;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1DA71EFA0](v2, v3);

  return 0;
}

uint64_t sub_1D8AD0880(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 1;
  }

  v6 = (a3 + 32);
  v7 = v4 - 1;
  do
  {
    v8 = *v6++;
    v13 = v8;

    v9 = a1(&v13);

    result = (v3 == 0) & v9;
    v12 = v7-- != 0;
  }

  while (result == 1 && v12);
  return result;
}

uint64_t sub_1D8AD0930(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v52 = a2;
  v53 = a3;
  v49 = sub_1D8B13240();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v57 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v51 = v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v50 = v45 - v15;
  v59 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642A8);
  sub_1D8B15760();
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v45[1] = v6 + 16;
  v46 = v6;
  v48 = (v6 + 8);
  v56 = a1;

  v21 = 0;
  v47 = a1 + 56;
  v45[0] = v9;
  if (v19)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v22 >= v20)
    {

      return v59;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
  }

  while (!v19);
  while (1)
  {
    v23 = *(v9 + 72);
    v24 = v50;
    sub_1D8AF7FF0(*(v56 + 48) + v23 * (__clz(__rbit64(v19)) | (v22 << 6)), v50, type metadata accessor for CVBundle);
    v25 = v57;
    v52(v24);
    v26 = v51;
    v54(v24);
    sub_1D8AF7F70(v24, type metadata accessor for CVBundle);
    sub_1D8AF7F08(v26, v12, type metadata accessor for CVBundle);
    v27 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v27;
    v30 = sub_1D87EF764(v25);
    v31 = v27[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D896754C();
      }
    }

    else
    {
      sub_1D896D99C(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_1D87EF764(v57);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_24;
      }

      v30 = v35;
    }

    v19 &= v19 - 1;
    v37 = v58;
    if (v34)
    {
      sub_1D8AFD36C(v12, v58[7] + v30 * v23, type metadata accessor for CVBundle);
      (*v48)(v57, v49);
      v59 = v37;
      v21 = v22;
      v16 = v47;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v58[(v30 >> 6) + 8] |= 1 << v30;
      v38 = v46;
      v39 = v57;
      v40 = v49;
      (*(v46 + 16))(v37[6] + *(v46 + 72) * v30, v57, v49);
      sub_1D8AF7F08(v12, v37[7] + v30 * v23, type metadata accessor for CVBundle);
      (*(v38 + 8))(v39, v40);
      v41 = v37[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_23;
      }

      v37[2] = v43;
      v59 = v37;
      v21 = v22;
      v9 = v45[0];
      v16 = v47;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v22 = v21;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8AD0DD4(unint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void **__return_ptr, uint64_t *), uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v40 = sub_1D8B13240();
  v35 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v45 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1E69E7CC8];
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_31:
    sub_1D8B16610();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69190);
  sub_1D8B15760();
  if (v7)
  {
    v8 = sub_1D8B16610();
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_4:
      v9 = 0;
      v10 = a1 & 0xC000000000000001;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v34[1] = v35 + 16;
      v38 = a1;
      v39 = (v35 + 8);
      v37 = v8;
      while (1)
      {
        if (v10)
        {
          v7 = MEMORY[0x1DA71FC20](v9, a1);
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_28;
          }

          v7 = *(a1 + 8 * v9 + 32);

          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v47 = v7;
        v13 = v45;
        v41(&v47);
        v43(&v46, &v47);
        v14 = v46;
        v15 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v15;
        a1 = sub_1D87EF764(v13);
        v18 = v15[2];
        v19 = (v17 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_29;
        }

        v21 = v17;
        if (v15[3] >= v20)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v24 = v46;
            if (v17)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_1D896C3A0();
            v24 = v46;
            if (v21)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_1D8976E5C(v20, isUniquelyReferenced_nonNull_native);
          v22 = sub_1D87EF764(v45);
          if ((v21 & 1) != (v23 & 1))
          {
            result = sub_1D8B16C30();
            __break(1u);
            return result;
          }

          a1 = v22;
          v24 = v46;
          if (v21)
          {
LABEL_5:
            *(v24[7] + 8 * a1) = v14;

            (*v39)(v45, v40);

            goto LABEL_6;
          }
        }

        v36 = v7;
        v7 = v12;
        v25 = v11;
        v26 = v10;
        v24[(a1 >> 6) + 8] |= 1 << a1;
        v27 = v35;
        v28 = v45;
        v29 = v40;
        (*(v35 + 16))(v24[6] + *(v35 + 72) * a1, v45, v40);
        *(v24[7] + 8 * a1) = v14;
        (*(v27 + 8))(v28, v29);

        v30 = v24[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_30;
        }

        v24[2] = v32;
        v10 = v26;
        v11 = v25;
        v12 = v7;
LABEL_6:
        v48 = v24;
        ++v9;
        a1 = v38;
        if (v12 == v37)
        {
          return v24;
        }
      }
    }
  }

  return v48;
}

uint64_t TrackManager.__allocating_init(configuration:supporting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D8AF6530(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1D8AD11C8(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1D8B16610();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1D88B87A4(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1D8B16610() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1D8B16610();
  v2 = sub_1D8AF01A8(v5, v6);
LABEL_10:

  return sub_1D88BB248(a1, v2);
}

uint64_t static TrackManager.Configuration.factorySettings.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8A50334(&unk_1F5426A48);
  *a1 = result;
  *(a1 + 8) = 1056964608;
  return result;
}

uint64_t static TrackManager.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D894C93C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1D8AD1338(uint64_t a1)
{
  v37 = MEMORY[0x1E69E7CC8];
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D8B165D0();
    type metadata accessor for CVTrackedDetection(0);
    sub_1D8AF7D70(&qword_1EE0E62B8, type metadata accessor for CVTrackedDetection);
    sub_1D8B16070();
    a1 = v32;
    v1 = v33;
    v2 = v34;
    v3 = v35;
    v4 = v36;
  }

  else
  {
    v3 = 0;
    v5 = -1 << *(a1 + 32);
    v1 = a1 + 56;
    v2 = ~v5;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v4 = v7 & *(a1 + 56);
  }

  v8 = (v2 + 64) >> 6;
  v9 = MEMORY[0x1E69E7CC8];
  v29 = a1;
  while (a1 < 0)
  {
    if (!sub_1D8B16640() || (type metadata accessor for CVTrackedDetection(0), swift_dynamicCast(), v15 = v30, v13 = v3, v14 = v4, !v30))
    {
LABEL_27:
      sub_1D87977A0();
      return v9;
    }

LABEL_21:
    CVTrackedDetection.latestDetection.getter(&v30);
    CVDetection.detectionType.getter(&v31);

    v16 = sub_1D881F7DC(v31);
    v18 = v9[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_29;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_1D8976BC0(v21, 1);
      v9 = v37;
      v16 = sub_1D881F7DC(v31);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_31;
      }
    }

    if (v22)
    {
      v10 = (v9[7] + 8 * v16);
      MEMORY[0x1DA71F1A0]();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();
    }

    else
    {
      v24 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D8B23DF0;
      *(v25 + 32) = v15;
      v9[(v24 >> 6) + 8] |= 1 << v24;
      *(v9[6] + v24) = v31;
      *(v9[7] + 8 * v24) = v25;
      v26 = v9[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_30;
      }

      v9[2] = v27;
    }

    v3 = v13;
    v4 = v14;
    a1 = v29;
  }

  v11 = v3;
  v12 = v4;
  v13 = v3;
  if (v4)
  {
LABEL_17:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      goto LABEL_27;
    }

    v12 = *(v1 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void *TrackManager.State.description.getter()
{
  v1 = *(v0 + 40);
  sub_1D8B16720();

  v2 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v2);

  MEMORY[0x1DA71EFA0](0x6570797420796220, 0xEA0000000000203ALL);

  v4 = sub_1D8AF53E0(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
  result = sub_1D8B168F0();
  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v12 = v11 | (v6 << 6);
LABEL_10:
      v15 = *(*(v4 + 48) + v12);
      v16 = *(*(*(v4 + 56) + 8 * v12) + 16);
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
      *(result[6] + v12) = v15;
      *(result[7] + 8 * v12) = v16;
      v17 = result[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      result[2] = v19;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v6 >= v10)
      {
        break;
      }

      v14 = *(v4 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v9 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v6 << 6);
        goto LABEL_10;
      }
    }

    sub_1D87C4938();
    v20 = sub_1D8B15740();
    v22 = v21;

    MEMORY[0x1DA71EFA0](v20, v22);

    MEMORY[0x1DA71EFA0](0x3D7440202CLL, 0xE500000000000000);
    v23 = 0xE000000000000000;
    sub_1D8B16020();
    if (v1)
    {
      v24 = 0x296C6C6974532820;
    }

    else
    {
      v24 = 0;
    }

    if (v1)
    {
      v23 = 0xE800000000000000;
    }

    MEMORY[0x1DA71EFA0](v24, v23);

    MEMORY[0x1DA71EFA0](0, 0xE000000000000000);

    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    return 0xD00000000000001BLL;
  }

  return result;
}

uint64_t sub_1D8AD1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D87A0E38(a3, v25 - v10, &unk_1ECA675E0);
  v12 = sub_1D8B15EA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D87A14E4(v11, &unk_1ECA675E0);
  }

  else
  {
    sub_1D8B15E90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D8B15E00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D8B15A10() + 32;
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

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t sub_1D8AD1C44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_1D87EF764(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = sub_1D8B13240();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    sub_1D8AF27E8(v18, v15, a2, a3);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1D8AD1E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
  v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = sub_1D8AD2480(v4);
    v8 = *(result + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v13 = v9 + v8;
      }

      else
      {
        v13 = v9;
      }

      v6 = sub_1D87C8C30(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      if (*(v11 + 16))
      {
LABEL_14:
        v14 = (v6[3] >> 1) - v6[2];
        result = sub_1D8B13240();
        if (v14 < v8)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v15 = v6[2];
          v16 = __OFADD__(v15, v8);
          v17 = v15 + v8;
          if (v16)
          {
            goto LABEL_23;
          }

          v6[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    v4 += v5;
    if (!--v1)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

size_t sub_1D8AD1FFC(uint64_t a1, uint64_t (*a2)(void *))
{
  v40 = a2;
  v43 = sub_1D8B13240();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DetectionRequest.Originator(0);
  v5 = MEMORY[0x1EEE9AC00](v44);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v36 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v37 = *(v8 + 80);
  v11 = a1 + ((v37 + 32) & ~v37);
  v12 = *(v8 + 72);
  v39 = v3 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  v38 = xmmword_1D8B1AB90;
  v36 = (v37 + 32) & ~v37;
  v45 = v12;
  while (1)
  {
    v16 = v46;
    sub_1D8AF7FF0(v11, v46, type metadata accessor for DetectionRequest.Originator);
    sub_1D8AF7FF0(v16, v7, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v42 = *(v3 + 32);
      v25 = v41;
      v26 = v43;
      v42(v41, v7, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63200);
      v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v42((v28 + v27), v25, v26);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v18 = *v7;
      v19 = *(*v7 + 16);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8);
        v20 = v36;
        v21 = v45;
        v22 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v22);
        if (!v21)
        {
          goto LABEL_38;
        }

        if (result - v20 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_40;
        }

        v22[2] = v19;
        v22[3] = 2 * ((result - v20) / v21);
        v24 = sub_1D8817A24(&v47, v22 + v20, v19, v18);
        result = sub_1D87977A0();
        if (v24 != v19)
        {
          goto LABEL_39;
        }
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v28 = v40(v22);
    }

    else
    {
      sub_1D8AF7F70(v7, type metadata accessor for DetectionRequest.Originator);
      v28 = MEMORY[0x1E69E7CC0];
    }

    result = sub_1D8AF7F70(v46, type metadata accessor for DetectionRequest.Originator);
    v29 = *(v28 + 16);
    v30 = v13[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v31 <= v13[3] >> 1)
    {
      if (*(v28 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = sub_1D87C8C30(result, v32, 1, v13);
      v13 = result;
      if (*(v28 + 16))
      {
LABEL_28:
        if ((v13[3] >> 1) - v13[2] < v29)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        v15 = v45;
        if (v29)
        {
          v33 = v13[2];
          v34 = __OFADD__(v33, v29);
          v35 = v33 + v29;
          if (v34)
          {
            goto LABEL_37;
          }

          v13[2] = v35;
        }

        goto LABEL_4;
      }
    }

    v15 = v45;
    if (v29)
    {
      goto LABEL_35;
    }

LABEL_4:
    v11 += v15;
    if (!--v10)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D8AD2480(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetectionRequest.Originator(0);
  v36 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  sub_1D8AF7FF0(a1, &v32 - v10, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D8AF7F70(v11, type metadata accessor for DetectionRequest.Originator);
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *v11;
  v14 = v13[2];
  if (v14)
  {
    v5 = sub_1D87F3A40(v13[2], 0);
    v11 = sub_1D8817A24(&v35, &v5[(*(v36 + 80) + 32) & ~*(v36 + 80)], v14, v13);
    sub_1D87977A0();
    if (v11 != v14)
    {
      __break(1u);
LABEL_6:
      v15 = v33;
      v17 = v32 + 32;
      v16 = *(v32 + 32);
      v16(v5, v11, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63200);
      v18 = (*(v17 + 48) + 32) & ~*(v17 + 48);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D8B1AB90;
      v16((v19 + v18), v5, v15);
      return v19;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v5 + 2);
  if (!v34)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_29:

    return v19;
  }

  v20 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (v20 < *(v5 + 2))
  {
    sub_1D8AF7FF0(&v5[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v20], v9, type metadata accessor for DetectionRequest.Originator);
    v21 = sub_1D8AD2480(v9);
    if (v1)
    {
      goto LABEL_36;
    }

    v22 = v21;
    sub_1D8AF7F70(v9, type metadata accessor for DetectionRequest.Originator);
    v23 = *(v22 + 16);
    v24 = *(v19 + 16);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v25 <= *(v19 + 24) >> 1)
    {
      if (*(v22 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v19 = sub_1D87C8C30(isUniquelyReferenced_nonNull_native, v27, 1, v19);
      if (*(v22 + 16))
      {
LABEL_24:
        if ((*(v19 + 24) >> 1) - *(v19 + 16) < v23)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v28 = *(v19 + 16);
          v29 = __OFADD__(v28, v23);
          v30 = v28 + v23;
          if (v29)
          {
            goto LABEL_35;
          }

          *(v19 + 16) = v30;
        }

        goto LABEL_12;
      }
    }

    if (v23)
    {
      goto LABEL_33;
    }

LABEL_12:
    if (v34 == ++v20)
    {
      goto LABEL_29;
    }
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

  sub_1D8AF7F70(v9, type metadata accessor for DetectionRequest.Originator);

  __break(1u);
  return result;
}

uint64_t sub_1D8AD28E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8);
  v1 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  v4 = *(type metadata accessor for DetectionRequest(0) + 20);
  sub_1D8AF7FF0(v0 + v4, v3 + v2, type metadata accessor for DetectionRequest.Originator);
  v5 = sub_1D8AD1E10(v3);
  swift_setDeallocating();
  sub_1D8AF7F70(v3 + v2, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  sub_1D8AF7FF0(v0 + v4, v7 + v2, type metadata accessor for DetectionRequest.Originator);
  v8 = sub_1D8AD1E10(v7);
  swift_setDeallocating();
  sub_1D8AF7F70(v7 + v2, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v9 = sub_1D87C4B18(v8);

  return v9;
}

uint64_t sub_1D8AD2AC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8);
  v1 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  v4 = *(type metadata accessor for GroundedParseDetectorResult(0) + 56);
  sub_1D8AF7FF0(v0 + v4, v3 + v2, type metadata accessor for DetectionRequest.Originator);
  v5 = sub_1D8AD1FE4(v3);
  swift_setDeallocating();
  sub_1D8AF7F70(v3 + v2, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  sub_1D8AF7FF0(v0 + v4, v7 + v2, type metadata accessor for DetectionRequest.Originator);
  v8 = sub_1D8AD1FE4(v7);
  swift_setDeallocating();
  sub_1D8AF7F70(v7 + v2, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v9 = sub_1D87C4B18(v8);

  return v9;
}

uint64_t sub_1D8AD2D30(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8);
  v5 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  v8 = *(a1(0) + 44);
  sub_1D8AF7FF0(v2 + v8, v7 + v6, type metadata accessor for DetectionRequest.Originator);
  v9 = a2(v7);
  swift_setDeallocating();
  sub_1D8AF7F70(v7 + v6, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v10 = *(v9 + 16);

  if (!v10)
  {
    return 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8B1AB90;
  sub_1D8AF7FF0(v2 + v8, v11 + v6, type metadata accessor for DetectionRequest.Originator);
  v12 = a2(v11);
  swift_setDeallocating();
  sub_1D8AF7F70(v11 + v6, type metadata accessor for DetectionRequest.Originator);
  swift_deallocClassInstance();
  v13 = sub_1D87C4B18(v12);

  return v13;
}

uint64_t CameraSourceFrame.timeDescription.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(v6);
  v2 = v7;
  sub_1D8B16020();
  if (v2)
  {
    v3 = 0x296C6C6974532820;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1DA71EFA0](v3, v4);

  return 0;
}

uint64_t sub_1D8AD2FCC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1D8B16610();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA71FC20](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

__n128 TrackManager.State.latestFrameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1D8AD3114@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t TrackManager.Configuration.metaTypeTracksEnabled.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t sub_1D8AD31B4()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1D8AD31F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001D8B49010 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B49030 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D8AD32D4(uint64_t a1)
{
  v2 = sub_1D8AF6DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AD3310(uint64_t a1)
{
  v2 = sub_1D8AF6DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackManager.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA690F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AF6DB8();

  sub_1D8B16DD0();
  v11 = v8;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69100);
  sub_1D8AF6E0C(&qword_1ECA69108, sub_1D8A51970);
  sub_1D8B16AE0();

  if (!v2)
  {
    v10[6] = 1;
    sub_1D8B16AC0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TrackManager.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69110);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  sub_1D8A50334(&unk_1F5428E20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AF6DB8();
  sub_1D8B16DB0();
  if (!v2)
  {
    v8 = v5;
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69100);
    v17 = 0;
    sub_1D8AF6E0C(&qword_1ECA69118, sub_1D8A51A7C);
    sub_1D8B16A10();

    v11 = v18;
    v16 = 1;
    sub_1D8B169F0();
    v13 = v12;
    (*(v8 + 8))(v7, v4);
    *v9 = v11;
    *(v9 + 8) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8AD3770@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8A50334(&unk_1F5426A48);
  *a1 = result;
  *(a1 + 8) = 1056964608;
  return result;
}

uint64_t sub_1D8AD37D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D894C93C(*a1, *a2) & (v2 == v3);
}

void sub_1D8AD381C(unint64_t a1@<X8>)
{
  v82 = sub_1D8B13240();
  v3 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v64 - v9;
  v71 = type metadata accessor for CVTrackSnapshot(0);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v80 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(v1 + 7);
  v12 = *(v1 + 17);
  v97 = *(v1 + 16);
  v13 = *(v1 + 18);
  v14 = v1[152];
  v15 = *(v1 + 169);
  v93 = *(v1 + 153);
  *v94 = v15;
  *&v94[15] = *(v1 + 23);
  v95 = v14;
  if (v12 == 2)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v86 = *(v1 + 7);
    v87 = *(v1 + 16);
    v65 = v12;
    v88 = v12;
    v89 = v13;
    v90 = v14;
    v91 = *(v1 + 153);
    *v92 = *(v1 + 169);
    *&v92[15] = *(v1 + 23);
    v64 = sub_1D8AE93C8(&v86);
    swift_beginAccess();
    v16 = *(v1 + 24);
    if (v16 >> 62)
    {
LABEL_61:
      v17 = sub_1D8B16610();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v1;
    v66 = a1;

    v67 = v16;
    if (v17)
    {
      a1 = 0;
      v79 = v16 & 0xC000000000000001;
      v78 = v16 & 0xFFFFFFFFFFFFFF8;
      v77 = (v16 + 32);
      v70 = (v3 + 16);
      v69 = (v3 + 32);
      v75 = (v72 + 56);
      v74 = (v72 + 48);
      v18 = MEMORY[0x1E69E7CC0];
      v16 = &qword_1ECA63E20;
      v3 = v71;
      v76 = v17;
      while (1)
      {
        if (v79)
        {
          v19 = MEMORY[0x1DA71FC20](a1, v67);
          v20 = __OFADD__(a1++, 1);
          if (v20)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (a1 >= *(v78 + 16))
          {
            goto LABEL_59;
          }

          v19 = v77[a1];

          v20 = __OFADD__(a1++, 1);
          if (v20)
          {
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }
        }

        CVTrackedDetection.estimate(atTime:)(&v83, v13);
        v21 = v83;
        if ((~v83 & 0xF000000000000007) != 0)
        {
          break;
        }

        v22 = 1;
LABEL_31:
        (*v75)(v8, v22, 1, v3);
        v1 = &unk_1D8B22E50;
        sub_1D881F6FC(v8, v10, &qword_1ECA63E20);
        v41 = (*v74)(v10, 1, v3);
        v42 = v76;
        if (v41 == 1)
        {
          sub_1D87A14E4(v10, &qword_1ECA63E20);
        }

        else
        {
          sub_1D8AF7F08(v10, v80, type metadata accessor for CVTrackSnapshot);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1D87C7834(0, v18[2] + 1, 1, v18);
          }

          v44 = v18[2];
          v43 = v18[3];
          v1 = (v44 + 1);
          if (v44 >= v43 >> 1)
          {
            v18 = sub_1D87C7834(v43 > 1, v44 + 1, 1, v18);
          }

          v18[2] = v1;
          sub_1D8AF7F08(v80, v18 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v44, type metadata accessor for CVTrackSnapshot);
          v16 = &qword_1ECA63E20;
        }

        if (a1 == v42)
        {
          goto LABEL_41;
        }
      }

      v73 = v18;
      (*v70)(v81, v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id, v82);
      v23 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer;
      v1 = *(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);
      swift_beginAccess();
      v24 = *(v1 + 2);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = *(v1 + 4);
        if (!v26)
        {
          goto LABEL_60;
        }

        v27 = v24 + 40;
        v28 = v25 - 1;
        while (1)
        {
          if (v25 == v26)
          {
            v29 = *(v1 + 3);
            v20 = __OFADD__(v29, 1);
            v30 = v29 + 1;
            if (v20)
            {
              goto LABEL_56;
            }

            v31 = v30 % v25;
            v20 = __OFADD__(v31, v28);
            v32 = v31 + v28;
            if (v20)
            {
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }
          }

          else
          {
            v32 = v28;
          }

          if (v26 == -1 && v32 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          v33 = v32 % v26;
          if (v33 >= v25)
          {
            goto LABEL_55;
          }

          if ((*(v27 + 16 * v33) & 0xE0) == 0x40)
          {
            break;
          }

          if (--v28 == -1)
          {
            goto LABEL_65;
          }
        }

        sub_1D8AC1168(v28, &v83);
        v34 = v83;
        if ((v84 & 0xE0) == 0x40)
        {
          v35 = *(*(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
          v36 = *(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
          v37 = sub_1D8ABF4E8();
          v38 = *(v19 + v23);
          sub_1D8A699B4(v21);
          v39 = sub_1D8AC0E90(v38);
          sub_1D891FD78(v39, &v83);

          sub_1D88649A0(v21);

          LOBYTE(v38) = v83;
          (*v69)(v8, v81, v82);
          v22 = 0;
          v40 = v71;
          *&v8[*(v71 + 20)] = v34;
          *&v8[v40[6]] = v21;
          v8[v40[7]] = v35;
          v3 = v40;
          *&v8[v40[8]] = v36;
          *&v8[v40[9]] = v37;
          v8[v40[10]] = v38;
          v18 = v73;
          v16 = &qword_1ECA63E20;
          goto LABEL_31;
        }

        sub_1D8997618(v83, v84);
      }

LABEL_65:
      sub_1D8B168C0();
      __break(1u);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
LABEL_41:

      v45 = v18[2];
      v46 = *(v68 + 24);
      if (v46 >> 62)
      {
        v47 = sub_1D8B16610();
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v64;
      if (v45 != v47)
      {

        v49 = v68;

        v50 = sub_1D8B151C0();
        v51 = sub_1D8B16230();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v85 = v53;
          *v52 = 134218498;
          *(v52 + 4) = v18[2];

          *(v52 + 12) = 2048;
          v54 = *(v49 + 24);
          if (v54 >> 62)
          {
            v55 = sub_1D8B16610();
          }

          else
          {
            v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v52 + 14) = v55;

          *(v52 + 22) = 2080;
          v56 = v95;
          v57 = 0xE000000000000000;
          v83 = 0;
          v84 = 0xE000000000000000;
          sub_1D8B16020();
          if (v56)
          {
            v58 = 0x296C6C6974532820;
          }

          else
          {
            v58 = 0;
          }

          if (v56)
          {
            v57 = 0xE800000000000000;
          }

          MEMORY[0x1DA71EFA0](v58, v57);

          v59 = sub_1D89AC714(v83, v84, &v85);

          *(v52 + 24) = v59;
          _os_log_impl(&dword_1D8783000, v50, v51, "Presenting %ld tracks out of %ld total @ t=%s", v52, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x1DA721330](v53, -1, -1);
          MEMORY[0x1DA721330](v52, -1, -1);
        }

        else
        {
        }
      }

      v60 = v95;
      v61 = v66;
      *v66 = v96;
      v62 = v65;
      *(v61 + 2) = v97;
      *(v61 + 3) = v62;
      *(v61 + 4) = v13;
      *(v61 + 40) = v60;
      v63 = *v94;
      *(v61 + 41) = v93;
      *(v61 + 57) = v63;
      *(v61 + 9) = *&v94[15];
      *(v61 + 10) = v18;
      *(v61 + 11) = v48;
    }
  }
}

uint64_t sub_1D8AD4260(uint64_t a1)
{
  v3 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v33 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  sub_1D8AF7FF0(v1, v14, type metadata accessor for TrackManager.FrameProcessingTaskState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8AF7F70(v14, type metadata accessor for TrackManager.FrameProcessingTaskState);
    sub_1D8AF7FF0(v1, v12, type metadata accessor for TrackManager.FrameProcessingTaskState);
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v19 = sub_1D8B151E0();
    __swift_project_value_buffer(v19, qword_1EE0E4350);
    sub_1D8AF7FF0(v12, v9, type metadata accessor for TrackManager.FrameProcessingTaskState);
    v20 = sub_1D8B151C0();
    v21 = sub_1D8B16210();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      sub_1D8AF7FF0(v9, v6, type metadata accessor for TrackManager.FrameProcessingTaskState);
      v24 = sub_1D8B159E0();
      v26 = v25;
      sub_1D8AF7F70(v9, type metadata accessor for TrackManager.FrameProcessingTaskState);
      v27 = sub_1D89AC714(v24, v26, &v34);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1D8783000, v20, v21, "Failed to start frameProcessingUpdateTask: state was %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1DA721330](v23, -1, -1);
      MEMORY[0x1DA721330](v22, -1, -1);
    }

    else
    {

      sub_1D8AF7F70(v9, type metadata accessor for TrackManager.FrameProcessingTaskState);
    }

    return sub_1D8AF7F70(v12, type metadata accessor for TrackManager.FrameProcessingTaskState);
  }

  else
  {
    sub_1D8AF7F70(v1, type metadata accessor for TrackManager.FrameProcessingTaskState);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938);
    v29 = *(v16 + 32);
    v29(v18, &v14[*(v28 + 48)], v15);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940);
    (*(*(v30 - 8) + 8))(v14, v30);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930) + 48);
    *v1 = a1;
    v29(&v1[v31], v18, v15);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D8AD46E0()
{
  v0 = sub_1D8B151E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B15160();
  __swift_allocate_value_buffer(v4, qword_1EE0E8E88);
  __swift_project_value_buffer(v4, qword_1EE0E8E88);
  if (qword_1EE0E4348 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE0E4350);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D8B15140();
}

uint64_t sub_1D8AD481C(uint64_t a1)
{
  if (!a1)
  {
    return 0x646574726F6261;
  }

  if (a1 == 1)
  {
    return 0x74616E696D726574;
  }

  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0x6574656C706D6F63, 0xEB00000000282064);
  v2 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v2);

  MEMORY[0x1DA71EFA0](0xD000000000000013, 0x80000001D8B49050);
  v3 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v3);

  MEMORY[0x1DA71EFA0](0x2C736B6361727420, 0xE900000000000020);
  v4 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v4);

  MEMORY[0x1DA71EFA0](0x6974636574656420, 0xEC00000029736E6FLL);
  return 0;
}

uint64_t sub_1D8AD49E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v187 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v178 = &v162 - v5;
  v185 = type metadata accessor for CVTrackSnapshot(0);
  v177 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185 - 8);
  v184 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v175 = &v162 - v8;
  v182 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  MEMORY[0x1EEE9AC00](v182);
  v10 = (&v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  MEMORY[0x1EEE9AC00](v188);
  v174 = (&v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v170 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProcessorState(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v164 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v180 = (&v162 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v162 - v19;
  v20 = type metadata accessor for DetectionRequest(0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v165 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v181 = &v162 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v183 = &v162 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v179 = (&v162 - v27);
  v28 = type metadata accessor for TrackManager.MatchingComputationResult(0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v166 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v168 = &v162 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v167 = &v162 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = (&v162 - v36);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v162 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v162 - v41;
  v43 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  sub_1D8AF7FF0(a1, &v162 - v41, type metadata accessor for TrackManager.MatchingComputationResult);
  sub_1D8AF7FF0(a1, v40, type metadata accessor for TrackManager.MatchingComputationResult);
  v186 = a1;
  sub_1D8AF7FF0(a1, v37, type metadata accessor for TrackManager.MatchingComputationResult);
  v171 = v43;
  v44 = sub_1D8B151C0();
  v45 = sub_1D8B16200();
  v46 = os_log_type_enabled(v44, v45);
  v172 = v28;
  v173 = v14;
  if (v46)
  {
    LODWORD(v162) = v45;
    v163 = v44;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v202 = v48;
    *v47 = 136315650;
    v49 = sub_1D8AD481C(*&v42[*(v28 + 20)]);
    v51 = v50;
    sub_1D8AF7F70(v42, type metadata accessor for TrackManager.MatchingComputationResult);
    v52 = sub_1D89AC714(v49, v51, &v202);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    v53 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
    v54 = v169;
    sub_1D8AF7FF0(&v40[*(v53 + 20)], v169, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v56 = v188;
      v57 = v179;
      if (EnumCaseMultiPayload == 1)
      {
        v58 = v54;
        v59 = v170;
        sub_1D8AF7F08(v58, v170, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v59, v57, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v59, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        sub_1D8AF7F08(v54, v57, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v57 = v179;
      sub_1D8AF7F08(v54, v179, type metadata accessor for DetectionRequest);
      v56 = v188;
    }

    v60 = *v57;
    sub_1D8AF7F70(v57, type metadata accessor for DetectionRequest);
    LOBYTE(v197) = v60;
    v61 = CVDetection.DetectionType.description.getter();
    v63 = v62;
    sub_1D8AF7F70(v40, type metadata accessor for TrackManager.MatchingComputationResult);
    v64 = sub_1D89AC714(v61, v63, &v202);

    *(v47 + 14) = v64;
    *(v47 + 22) = 2080;
    v65 = v37[3];
    v66 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v65);
    v67 = CameraSourceFrame.timeDescription.getter(v65, v66);
    v69 = v68;
    sub_1D8AF7F70(v37, type metadata accessor for TrackManager.MatchingComputationResult);
    v70 = sub_1D89AC714(v67, v69, &v202);

    *(v47 + 24) = v70;
    v71 = v163;
    _os_log_impl(&dword_1D8783000, v163, v162, "updateTracksWithMatchingComputationResults: Processing %s for %s @ %s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v48, -1, -1);
    MEMORY[0x1DA721330](v47, -1, -1);
  }

  else
  {

    sub_1D8AF7F70(v40, type metadata accessor for TrackManager.MatchingComputationResult);
    sub_1D8AF7F70(v42, type metadata accessor for TrackManager.MatchingComputationResult);
    sub_1D8AF7F70(v37, type metadata accessor for TrackManager.MatchingComputationResult);
    v56 = v188;
  }

  v163 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v72 = v182;
  v73 = *(v182 + 20);
  v74 = v186;
  sub_1D8AF7FF0(v186 + SHIDWORD(v163[2].isa), v10 + v73, type metadata accessor for ProcessorState);
  v75 = v74[3];
  v76 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v76 + 40))(v196, v75, v76);
  v77 = v196[4];
  v10[3] = v196[3];
  v10[4] = v77;
  v78 = v196[2];
  v10[1] = v196[1];
  v10[2] = v78;
  *v10 = v196[0];
  *(v10 + *(v72 + 24)) = 0;
  v79 = v10[4];
  v200 = v10[3];
  v201 = v79;
  v80 = v10[2];
  v198 = v10[1];
  v199 = v80;
  v197 = *v10;
  v81 = v180;
  sub_1D8AF7F08(v10 + v73, v180, type metadata accessor for ProcessorState);
  v82 = swift_getEnumCaseMultiPayload();
  v83 = v176;
  if (v82)
  {
    v84 = v187;
    v85 = v181;
    if (v82 == 1)
    {
      v86 = v81;
      v87 = v170;
      sub_1D8AF7F08(v86, v170, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v87, v85, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v87, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      sub_1D8AF7F08(v81, v85, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    v85 = v181;
    sub_1D8AF7F08(v81, v181, type metadata accessor for DetectionRequest);
    v84 = v187;
  }

  v88 = v183;
  sub_1D8AF7F08(v85, v183, type metadata accessor for DetectionRequest);
  v89 = v200;
  v90 = v174;
  v174[2] = v199;
  v90[3] = v89;
  v90[4] = v201;
  v91 = v198;
  *v90 = v197;
  v90[1] = v91;
  sub_1D8AF7F08(v88, v90 + *(v56 + 5), type metadata accessor for DetectionRequest);
  swift_beginAccess();
  sub_1D8AF073C(v90, v175);
  swift_endAccess();
  v92 = v186;
  sub_1D8AD6554(v186);
  v93 = *(v92 + *(v172 + 20));
  if (v93 == 1)
  {
    v94 = v167;
    sub_1D8AF7FF0(v186, v167, type metadata accessor for TrackManager.MatchingComputationResult);
    v95 = sub_1D8B151C0();
    v96 = sub_1D8B16230();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134217984;
      v98 = v94[3];
      v99 = v94[4];
      __swift_project_boxed_opaque_existential_1(v94, v98);
      v100 = CameraSourceFrame.timestamp.getter(v98, v99);
      sub_1D8AF7F70(v94, type metadata accessor for TrackManager.MatchingComputationResult);
      *(v97 + 4) = v100;
      _os_log_impl(&dword_1D8783000, v95, v96, "Matching computation terminated! @  %f", v97, 0xCu);
      MEMORY[0x1DA721330](v97, -1, -1);
    }

    else
    {

      sub_1D8AF7F70(v94, type metadata accessor for TrackManager.MatchingComputationResult);
    }
  }

  else if (v93)
  {
    sub_1D8AD82D0(v186);
  }

  else
  {
    sub_1D8AD609C(v186);
  }

  v101 = v186[3];
  v102 = v186[4];
  v103 = __swift_project_boxed_opaque_existential_1(v186, v101);
  if (sub_1D8AD5EF4(v103, v101, v102))
  {
    v104 = v83 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v105 = *(v104 + 8);
      ObjectType = swift_getObjectType();
      v107 = v186[3];
      v108 = v186[4];
      v109 = __swift_project_boxed_opaque_existential_1(v186, v107);
      (*(v105 + 8))(v109, v107, v108, ObjectType, v105);
      swift_unknownObjectRelease();
    }
  }

  v194 = *(v83 + 112);
  v110 = *(v83 + 136);
  v195 = *(v83 + 128);
  v111 = *(v83 + 144);
  v112 = *(v83 + 169);
  v192 = *(v83 + 153);
  v193[0] = v112;
  *(v193 + 15) = *(v83 + 184);
  v113 = *(v83 + 152);
  if (v110 != 2)
  {
    v114 = v186[3];
    v115 = v186[4];
    v169 = v110;
    LODWORD(v167) = v113;
    __swift_project_boxed_opaque_existential_1(v186, v114);
    v116 = v178;
    (*(v115 + 40))(&v202, v114, v115);
    if (v111 == v205 && (v167 & 1) != 0)
    {
      v202 = v194;
      v203 = v195;
      v204 = v169;
      v205 = v111;
      v206 = v167;
      v207 = v192;
      *v208 = v193[0];
      *&v208[15] = *(v193 + 15);
      v162 = sub_1D8AE93C8(&v202);
      swift_beginAccess();
      v117 = *(v83 + 192);
      if (v117 >> 62)
      {
        goto LABEL_62;
      }

      v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:

      if (v118)
      {
        v119 = 0;
        v182 = v117 & 0xFFFFFFFFFFFFFF8;
        v183 = v117 & 0xC000000000000001;
        v179 = (v177 + 48);
        v180 = (v177 + 56);
        v188 = MEMORY[0x1E69E7CC0];
        v181 = v117;
        while (1)
        {
          if (v183)
          {
            v120 = MEMORY[0x1DA71FC20](v119, v117);
            v121 = v119 + 1;
            if (__OFADD__(v119, 1))
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (v119 >= *(v182 + 16))
            {
              goto LABEL_61;
            }

            v120 = *(v117 + 8 * v119 + 32);

            v121 = v119 + 1;
            if (__OFADD__(v119, 1))
            {
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              v118 = sub_1D8B16610();
              goto LABEL_29;
            }
          }

          v122 = v118;
          CVTrackedDetection.estimate(atTime:)(&v202, v111);
          v123 = v202;
          if ((~v202 & 0xF000000000000007) != 0)
          {
            v126 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
            v127 = sub_1D8B13240();
            (*(*(v127 - 8) + 16))(v84, v120 + v126, v127);
            CVTrackedDetection.latestDetection.getter(&v202);
            v128 = v202;
            v129 = *(*(v120 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
            v130 = *(v120 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
            v131 = sub_1D8ABF4E8();
            v132 = *(v120 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);

            v133 = sub_1D8AC0E90(v132);
            sub_1D891FD78(v133, &v189);

            sub_1D88649A0(v123);
            v124 = 0;
            v134 = v189;
            v125 = v185;
            *&v187[*(v185 + 20)] = v128;
            v84 = v187;
            *&v187[v125[6]] = v123;
            *(v84 + v125[7]) = v129;
            v116 = v178;
            *(v84 + v125[8]) = v130;
            *(v84 + v125[9]) = v131;
            *(v84 + v125[10]) = v134;
          }

          else
          {

            v124 = 1;
            v125 = v185;
          }

          v118 = v122;
          (*v180)(v84, v124, 1, v125);
          sub_1D881F6FC(v84, v116, &qword_1ECA63E20);
          if ((*v179)(v116, 1, v125) == 1)
          {
            sub_1D87A14E4(v116, &qword_1ECA63E20);
          }

          else
          {
            sub_1D8AF7F08(v116, v184, type metadata accessor for CVTrackSnapshot);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v188 = sub_1D87C7834(0, v188[2] + 1, 1, v188);
            }

            v136 = v188[2];
            v135 = v188[3];
            if (v136 >= v135 >> 1)
            {
              v188 = sub_1D87C7834(v135 > 1, v136 + 1, 1, v188);
            }

            v137 = v188;
            v188[2] = v136 + 1;
            sub_1D8AF7F08(v184, v137 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v136, type metadata accessor for CVTrackSnapshot);
          }

          v117 = v181;
          ++v119;
          if (v121 == v122)
          {
            goto LABEL_49;
          }
        }
      }

      v188 = MEMORY[0x1E69E7CC0];
LABEL_49:

      v202 = v194;
      v207 = v192;
      v138 = v168;
      v203 = v195;
      v204 = v169;
      v205 = v111;
      v206 = v167;
      *v208 = v193[0];
      *&v208[15] = *(v193 + 15);
      v209 = v188;
      v210 = v162;
      v139 = v186;
      sub_1D8AF7FF0(v186, v168, type metadata accessor for TrackManager.MatchingComputationResult);
      v140 = v166;
      sub_1D8AF7FF0(v139, v166, type metadata accessor for TrackManager.MatchingComputationResult);
      v141 = sub_1D8B151C0();
      v142 = sub_1D8B16200();
      if (!os_log_type_enabled(v141, v142))
      {

        sub_1D8AF7F70(v140, type metadata accessor for TrackManager.MatchingComputationResult);
        sub_1D8AF7F70(v138, type metadata accessor for TrackManager.MatchingComputationResult);
LABEL_58:
        sub_1D8AF6250(&v202);
        sub_1D8943A60(&v202);
        goto LABEL_59;
      }

      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v191[0] = v144;
      *v143 = 136315650;
      v145 = v164;
      sub_1D8AF7FF0(v138 + SHIDWORD(v163[2].isa), v164, type metadata accessor for ProcessorState);
      v146 = swift_getEnumCaseMultiPayload();
      if (v146)
      {
        v147 = v165;
        if (v146 == 1)
        {
          v148 = v145;
          v149 = v170;
          sub_1D8AF7F08(v148, v170, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v149, v147, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v149, type metadata accessor for DetectionResult);
LABEL_57:
          v151 = *v147;
          sub_1D8AF7F70(v147, type metadata accessor for DetectionRequest);
          LOBYTE(v189) = v151;
          v152 = CVDetection.DetectionType.description.getter();
          v154 = v153;
          sub_1D8AF7F70(v168, type metadata accessor for TrackManager.MatchingComputationResult);
          v155 = sub_1D89AC714(v152, v154, v191);

          *(v143 + 4) = v155;
          *(v143 + 12) = 2080;
          v156 = sub_1D8AD481C(*(v140 + *(v172 + 20)));
          v158 = v157;
          sub_1D8AF7F70(v140, type metadata accessor for TrackManager.MatchingComputationResult);
          v159 = sub_1D89AC714(v156, v158, v191);

          *(v143 + 14) = v159;
          *(v143 + 22) = 2080;
          v189 = 0;
          v190 = 0xE000000000000000;
          sub_1D8B16020();
          MEMORY[0x1DA71EFA0](0x296C6C6974532820, 0xE800000000000000);
          v160 = sub_1D89AC714(v189, v190, v191);

          *(v143 + 24) = v160;
          _os_log_impl(&dword_1D8783000, v141, v142, "Pushed update due to %s computation result %s @ %s", v143, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v144, -1, -1);
          MEMORY[0x1DA721330](v143, -1, -1);

          goto LABEL_58;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        v150 = v145;
      }

      else
      {
        v150 = v145;
        v147 = v165;
      }

      sub_1D8AF7F08(v150, v147, type metadata accessor for DetectionRequest);
      goto LABEL_57;
    }
  }

LABEL_59:
  sub_1D87A14E4(v175, &qword_1ECA65EF0);
  return sub_1D8AF7F70(v174, type metadata accessor for TrackManager.TrackedProcessorState.Key);
}

BOOL sub_1D8AD5EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69238);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  (*(a3 + 40))(v17, a2, a3);
  if (v18)
  {
    return 0;
  }

  v12 = swift_beginAccess();
  v13 = *(v4 + 200);
  MEMORY[0x1EEE9AC00](v12);
  *&v16[-32] = a2;
  *&v16[-24] = a3;
  *&v16[-16] = a1;

  sub_1D87EE720(sub_1D8AFD114, v13, v10);

  v14 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v11 = (*(*(v14 - 8) + 48))(v10, 1, v14) == 1;
  sub_1D87A14E4(v10, &qword_1ECA69238);
  return v11;
}

uint64_t sub_1D8AD609C(void *a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for TrackManager.MatchingComputationResult(0) + 20));
  if (v6)
  {
    goto LABEL_23;
  }

  v7 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D8B13240();
  *(&v28 - 8) = v8;
  v9 = type metadata accessor for CVTrackedDetection(0);
  *(&v28 - 7) = v9;
  *(&v28 - 6) = v9;
  *(&v28 - 5) = v8;
  *(&v28 - 4) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650D0);
  v10 = sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  *(&v28 - 3) = v10;
  v26 = v10;
  v27 = sub_1D881CF20(&qword_1ECA650D8, &qword_1ECA650D0);
  KeyPath = swift_getKeyPath();

  v13 = sub_1D8AD0DD4(v12, sub_1D8AFD468, 0, sub_1D8AFD484, KeyPath);

  v14 = *(a1 + *(type metadata accessor for TrackManager.MatchingComputationRequest(0) + 24));
  v29 = MEMORY[0x1E69E7CC0];
  v15 = *(v14 + 16);
  if (!v15)
  {

    v6 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_12;
    }

LABEL_20:
    v20 = sub_1D8B16610();
    if (v20)
    {
      goto LABEL_13;
    }
  }

  v16 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v17 = *(v3 + 72);
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D8AF7FF0(v16, v5, type metadata accessor for CVTrackSnapshot);
    if (*(v13 + 16) && (sub_1D87EF764(v5), (v18 & 1) != 0))
    {

      v19 = sub_1D8AF7F70(v5, type metadata accessor for CVTrackSnapshot);
      MEMORY[0x1DA71F1A0](v19);
      if (*((*&v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();
      v6 = *&v29;
    }

    else
    {
      sub_1D8AF7F70(v5, type metadata accessor for CVTrackSnapshot);
    }

    v16 += v17;
    --v15;
  }

  while (v15);

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

LABEL_12:
  v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
  }

LABEL_13:
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA71FC20](v21, v6);
      }

      else
      {
      }

      ++v21;
      v22 = a1[3];
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      v29 = CameraSourceFrame.timestamp.getter(v22, v23);
      v30 = 38;
      sub_1D8AC9B48(&v29);
    }

    while (v20 != v21);
  }

  __break(1u);
LABEL_23:
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1D8B16720();

  v31 = 0xD000000000000017;
  v32 = 0x80000001D8B49240;
  v25 = sub_1D8AD481C(v6);
  MEMORY[0x1DA71EFA0](v25);

  LODWORD(v27) = 0;
  v26 = 189;
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D8AD6554(void *a1)
{
  v82 = type metadata accessor for MetaDetectionResult();
  v3 = MEMORY[0x1EEE9AC00](v82);
  v81 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v80 = &v78 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v79 = &v78 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v78 - v12;
  v13 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ProcessorState(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - v20;
  v22 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_configuration);
  v26 = *(type metadata accessor for TrackManager.MatchingComputationRequest(0) + 20);
  sub_1D8AF7FF0(a1 + v26, v21, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8AF7F08(v21, v15, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v15, v24, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v15, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D8AF7F08(v21, v24, type metadata accessor for DetectionRequest);
LABEL_6:
  v28 = *v24;
  sub_1D8AF7F70(v24, type metadata accessor for DetectionRequest);
  result = sub_1D89AD844(v28, v25);
  if ((result & 1) == 0)
  {
    return result;
  }

  v30 = a1[3];
  v31 = a1[4];
  v32 = __swift_project_boxed_opaque_existential_1(a1, v30);
  v33 = sub_1D8AF7FF0(a1 + v26, v19, type metadata accessor for ProcessorState);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35, v32, v30);
  v37 = v83;
  sub_1D8A6E940(v19, v35, v30, v31, v83);
  v38 = swift_beginAccess();
  v39 = *(v1 + 192);
  MEMORY[0x1EEE9AC00](v38);
  *(&v78 - 2) = v37;

  v40 = sub_1D87EE5FC(sub_1D8AFD44C, (&v78 - 4), v39);

  if (!v40)
  {
    if (*(v1 + 136) == 2)
    {
      v42 = v80;
      sub_1D8AF7FF0(v37, v80, type metadata accessor for MetaDetectionResult);
      v43 = v81;
      sub_1D8AF7FF0(v37, v81, type metadata accessor for MetaDetectionResult);
      v44 = sub_1D8B151C0();
      v45 = sub_1D8B16230();
      if (!os_log_type_enabled(v44, v45))
      {

        sub_1D8AF7F70(v43, type metadata accessor for MetaDetectionResult);
        v66 = v42;
        goto LABEL_19;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v84 = v47;
      *v46 = 136315394;
      v86 = *v42;
      v48 = CVDetection.DetectionType.description.getter();
      v50 = v49;
      sub_1D8AF7F70(v42, type metadata accessor for MetaDetectionResult);
      v51 = sub_1D89AC714(v48, v50, &v84);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2048;
      v52 = *(v43 + v82[8]);
      sub_1D8AF7F70(v43, type metadata accessor for MetaDetectionResult);
      *(v46 + 14) = v52;
      _os_log_impl(&dword_1D8783000, v44, v45, "No meta track for %s at t=%f.", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v53 = v47;
    }

    else
    {
      v67 = *(v1 + 144);
      v68 = a1[3];
      v69 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v68);
      v70 = CameraSourceFrame.timestamp.getter(v68, v69);
      v71 = v79;
      sub_1D8AF7FF0(v37, v79, type metadata accessor for MetaDetectionResult);
      v44 = sub_1D8B151C0();
      v72 = sub_1D8B16210();
      if (!os_log_type_enabled(v44, v72))
      {

        v66 = v71;
        goto LABEL_19;
      }

      v46 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v84 = v73;
      *v46 = 136315394;
      v86 = *v71;
      v74 = CVDetection.DetectionType.description.getter();
      v76 = v75;
      sub_1D8AF7F70(v71, type metadata accessor for MetaDetectionResult);
      v77 = sub_1D89AC714(v74, v76, &v84);

      *(v46 + 4) = v77;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v67 - v70;
      _os_log_impl(&dword_1D8783000, v44, v72, "No meta track for %s at age=%f.", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v73);
      v53 = v73;
    }

    MEMORY[0x1DA721330](v53, -1, -1);
    MEMORY[0x1DA721330](v46, -1, -1);

    return sub_1D8AF7F70(v37, type metadata accessor for MetaDetectionResult);
  }

  if (*(a1 + *(type metadata accessor for TrackManager.MatchingComputationResult(0) + 20)) > 1uLL)
  {
    sub_1D8AF7FF0(v37, v11, type metadata accessor for DetectionRequest);
    v54 = v82;
    v55 = v82[5];
    v56 = *(v37 + v82[6]);
    v57 = *(v37 + v82[7]);
    v58 = (v37 + v55);
    v59 = *(v37 + v82[8]);
    v60 = &v11[v55];
    v61 = v58[1];
    *v60 = *v58;
    *(v60 + 1) = v61;
    v62 = v58[3];
    *(v60 + 2) = v58[2];
    *(v60 + 3) = v62;
    *&v11[v54[6]] = v56;
    *&v11[v54[7]] = v57;
    *&v11[v54[8]] = v59;
    v11[v54[9]] = 2;
    v63 = &v11[v54[10]];
    *v63 = 0;
    *(v63 + 1) = 0;
    v64 = swift_allocBox();
    sub_1D8AF7FF0(v11, v65, type metadata accessor for MetaDetectionResult);
    v84 = v64 | 0x2000000000000000;
    v85 = 64;

    sub_1D8AC9B48(&v84);

    sub_1D8997618(v84, v85);
    v66 = v11;
LABEL_19:
    sub_1D8AF7F70(v66, type metadata accessor for MetaDetectionResult);
    return sub_1D8AF7F70(v37, type metadata accessor for MetaDetectionResult);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D8B23DF0;
  *(v41 + 32) = v40;

  sub_1D8AED1F4(v41);

  return sub_1D8AF7F70(v37, type metadata accessor for MetaDetectionResult);
}

uint64_t sub_1D8AD6E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v119 = a6;
  v136 = a5;
  v118 = a4;
  v132 = a3;
  v117 = a2;
  v133 = a1;
  v8 = type metadata accessor for MetaDetectionResult();
  v129 = *(v8 - 1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v123 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v115 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v128 = v115 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v115 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v134 = v115 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v115 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v115 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v115 - v27;
  swift_beginAccess();
  v29 = *(v7 + 192);
  v137 = MEMORY[0x1E69E7CC0];
  if (v29 >> 62)
  {
LABEL_60:
    v30 = sub_1D8B16610();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v124 = v7;
  v120 = v13;
  v125 = v18;
  v130 = v26;
  v131 = v23;
  v127 = v28;
  if (v30)
  {
    v7 = 0;
    v28 = (v29 & 0xC000000000000001);
    v18 = (v29 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v28)
      {
        MEMORY[0x1DA71FC20](v7, v29);
        v26 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v135 = v137;
          v7 = v124;
          v26 = v130;
          v23 = v131;
          v28 = v127;
          v31 = MEMORY[0x1E69E7CC0];
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_60;
        }

        v26 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      CVTrackedDetection.latestDetection.getter(&v141);
      v23 = v141;
      v140 = v141;
      v13 = &v140;
      CVDetection.detectionType.getter(&v139);

      if (v139 == 2)
      {
        v13 = &v137;
        sub_1D8B167E0();
        v23 = *(v137 + 16);
        sub_1D8B16820();
        sub_1D8B16830();
        sub_1D8B167F0();
      }

      else
      {
      }

      ++v7;
      if (v26 == v30)
      {
        goto LABEL_15;
      }
    }
  }

  v135 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v141 = v31;
  v137 = *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_configuration);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69100);
  v33 = sub_1D881CF20(&qword_1EE0E3850, &qword_1ECA69100);
  v34 = sub_1D8AD7DEC(&v137, v117, v132, v32, v118, v136, v33, v119);
  v36 = *(v34 + 16);
  if (v36)
  {
    LODWORD(v133) = 0;
    v37 = 0;
    v126 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
    v38 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v115[1] = v34;
    v39 = v34 + v38;
    v136 = *(v129 + 72);
    v129 = MEMORY[0x1E69E7CC0];
    *&v35 = 136315394;
    v122 = v35;
    while (1)
    {
      sub_1D8AF7FF0(v39, v28, type metadata accessor for MetaDetectionResult);
      if (v28[v8[9]] > 1u)
      {
        if (v28[v8[9]] != 2)
        {
          v67 = v134;
          v68 = sub_1D8AF7FF0(v28, v134, type metadata accessor for DetectionRequest);
          v69 = v8[5];
          v70 = *&v28[v8[6]];
          v71 = *&v28[v8[7]];
          v72 = *&v28[v8[8]];
          v73 = &v28[v69];
          v74 = (v67 + v69);
          v75 = *(v73 + 1);
          *v74 = *v73;
          v74[1] = v75;
          v76 = *(v73 + 3);
          v74[2] = *(v73 + 2);
          v74[3] = v76;
          *(v67 + v8[6]) = v70;
          *(v67 + v8[7]) = v71;
          *(v67 + v8[8]) = v72;
          *(v67 + v8[9]) = 0;
          v77 = (v67 + v8[10]);
          *v77 = 0;
          v77[1] = 0;
          MEMORY[0x1EEE9AC00](v68);
          v115[-2] = v67;
          v78 = sub_1D87EE5FC(sub_1D8AFD44C, &v115[-4], v135);
          if (v78)
          {
            v79 = v78;
            v132 = v37;
            v80 = v125;
            sub_1D8AF7FF0(v28, v125, type metadata accessor for MetaDetectionResult);
            v81 = v128;
            sub_1D8AF7FF0(v28, v128, type metadata accessor for MetaDetectionResult);
            v82 = sub_1D8B151C0();
            v83 = sub_1D8B16210();
            if (os_log_type_enabled(v82, v83))
            {
              v121 = v83;
              v133 = v79;
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v137 = v85;
              *v84 = v122;
              LOBYTE(v140) = *v80;
              v86 = CVDetection.DetectionType.description.getter();
              v88 = v87;
              sub_1D8AF7F70(v80, type metadata accessor for MetaDetectionResult);
              v89 = sub_1D89AC714(v86, v88, &v137);

              *(v84 + 4) = v89;
              *(v84 + 12) = 2080;
              v90 = (v81 + v8[10]);
              if (v90[1])
              {
                v91 = *v90;
                v92 = v90[1];
              }

              else
              {
                v91 = 0x6F727020656E6F6ELL;
                v92 = 0xED00006465646976;
              }

              v37 = v132;

              sub_1D8AF7F70(v128, type metadata accessor for MetaDetectionResult);
              v106 = sub_1D89AC714(v91, v92, &v137);

              *(v84 + 14) = v106;
              _os_log_impl(&dword_1D8783000, v82, v121, "Updating metadetection(%s) track with processing abort (reason: %s)", v84, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v85, -1, -1);
              MEMORY[0x1DA721330](v84, -1, -1);
            }

            else
            {

              sub_1D8AF7F70(v81, type metadata accessor for MetaDetectionResult);
              sub_1D8AF7F70(v80, type metadata accessor for MetaDetectionResult);
              v37 = v132;
            }

            v107 = swift_allocBox();
            v28 = v127;
            sub_1D8AF7FF0(v127, v108, type metadata accessor for MetaDetectionResult);
            v137 = v107 | 0x2000000000000000;
            v138 = 64;

            sub_1D8AC9B48(&v137);

            sub_1D8997618(v137, v138);
            sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
            sub_1D8AF7F70(v134, type metadata accessor for MetaDetectionResult);
            LODWORD(v133) = 1;
          }

          else
          {
            v94 = v120;
            sub_1D8AF7FF0(v28, v120, type metadata accessor for MetaDetectionResult);
            v95 = v123;
            sub_1D8AF7FF0(v28, v123, type metadata accessor for MetaDetectionResult);
            v96 = sub_1D8B151C0();
            v97 = sub_1D8B16210();
            if (os_log_type_enabled(v96, v97))
            {
              v121 = v97;
              v132 = v37;
              v98 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v137 = v116;
              *v98 = v122;
              LOBYTE(v140) = *v94;
              v99 = CVDetection.DetectionType.description.getter();
              v101 = v100;
              sub_1D8AF7F70(v94, type metadata accessor for MetaDetectionResult);
              v102 = sub_1D89AC714(v99, v101, &v137);

              *(v98 + 4) = v102;
              *(v98 + 12) = 2080;
              v103 = (v95 + v8[10]);
              if (v103[1])
              {
                v104 = *v103;
                v105 = v103[1];
              }

              else
              {
                v104 = 0x6F727020656E6F6ELL;
                v105 = 0xED00006465646976;
              }

              sub_1D8AF7F70(v123, type metadata accessor for MetaDetectionResult);
              v109 = sub_1D89AC714(v104, v105, &v137);

              *(v98 + 14) = v109;
              _os_log_impl(&dword_1D8783000, v96, v121, "Failed to update existing metadetection(%s) track with processing abort (reason: %s)", v98, 0x16u);
              v110 = v116;
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v110, -1, -1);
              MEMORY[0x1DA721330](v98, -1, -1);

              v28 = v127;
              sub_1D8AF7F70(v127, type metadata accessor for MetaDetectionResult);
              v37 = v132;
            }

            else
            {

              sub_1D8AF7F70(v95, type metadata accessor for MetaDetectionResult);
              sub_1D8AF7F70(v94, type metadata accessor for MetaDetectionResult);
              sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
            }

            sub_1D8AF7F70(v134, type metadata accessor for MetaDetectionResult);
          }

          v26 = v130;
          v23 = v131;
          goto LABEL_22;
        }

        v55 = sub_1D8AF7FF0(v28, v23, type metadata accessor for DetectionRequest);
        v56 = v8[5];
        v57 = *&v28[v8[6]];
        v58 = *&v28[v8[7]];
        v59 = *&v28[v8[8]];
        v60 = &v28[v56];
        v61 = &v23[v56];
        v62 = *(v60 + 1);
        *v61 = *v60;
        *(v61 + 1) = v62;
        v63 = *(v60 + 3);
        *(v61 + 2) = *(v60 + 2);
        *(v61 + 3) = v63;
        *&v23[v8[6]] = v57;
        *&v23[v8[7]] = v58;
        *&v23[v8[8]] = v59;
        v23[v8[9]] = 1;
        v64 = &v23[v8[10]];
        *v64 = 0;
        *(v64 + 1) = 0;
        MEMORY[0x1EEE9AC00](v55);
        v115[-2] = v23;
        if (!sub_1D87EE5FC(sub_1D8AFD44C, &v115[-4], v135))
        {
          sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
          v93 = v23;
          goto LABEL_37;
        }

        v65 = swift_allocBox();
        sub_1D8AF7FF0(v28, v66, type metadata accessor for MetaDetectionResult);
        v137 = v65 | 0x2000000000000000;
        v138 = 64;

        sub_1D8AC9B48(&v137);

        sub_1D8997618(v137, v138);
        sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
        v52 = v23;
      }

      else
      {
        if (!v28[v8[9]])
        {
          v53 = swift_allocBox();
          sub_1D8AF7FF0(v28, v54, type metadata accessor for MetaDetectionResult);
          v137 = v53 | 0x2000000000000000;
          type metadata accessor for CVTrackedDetection(0);
          swift_allocObject();
          sub_1D8AC8338(&v137);
          MEMORY[0x1DA71F1A0]();
          if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v132 = v37;
            sub_1D8B15D20();
            v37 = v132;
          }

          sub_1D8B15D70();
          sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
          v129 = v141;
          goto LABEL_22;
        }

        v40 = sub_1D8AF7FF0(v28, v26, type metadata accessor for DetectionRequest);
        v41 = v8[5];
        v42 = *&v28[v8[6]];
        v43 = *&v28[v8[7]];
        v44 = *&v28[v8[8]];
        v45 = &v28[v41];
        v46 = &v26[v41];
        v47 = *(v45 + 1);
        *v46 = *v45;
        *(v46 + 1) = v47;
        v48 = *(v45 + 3);
        *(v46 + 2) = *(v45 + 2);
        *(v46 + 3) = v48;
        *&v26[v8[6]] = v42;
        *&v26[v8[7]] = v43;
        *&v26[v8[8]] = v44;
        v26[v8[9]] = 0;
        v49 = &v26[v8[10]];
        *v49 = 0;
        *(v49 + 1) = 0;
        MEMORY[0x1EEE9AC00](v40);
        v115[-2] = v26;
        if (!sub_1D87EE5FC(sub_1D8AFD048, &v115[-4], v135))
        {
          sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
          v93 = v26;
LABEL_37:
          sub_1D8AF7F70(v93, type metadata accessor for MetaDetectionResult);
          goto LABEL_22;
        }

        v50 = swift_allocBox();
        sub_1D8AF7FF0(v28, v51, type metadata accessor for MetaDetectionResult);
        v137 = v50 | 0x2000000000000000;
        v138 = 64;

        sub_1D8AC9B48(&v137);

        sub_1D8997618(v137, v138);
        sub_1D8AF7F70(v28, type metadata accessor for MetaDetectionResult);
        v52 = v26;
      }

      sub_1D8AF7F70(v52, type metadata accessor for MetaDetectionResult);
      LODWORD(v133) = 1;
LABEL_22:
      v39 += v136;
      if (!--v36)
      {

        v111 = v129;
        v112 = v133;
        if (!(v129 >> 62))
        {
          goto LABEL_51;
        }

LABEL_56:
        if (!sub_1D8B16610())
        {
          goto LABEL_57;
        }

LABEL_52:
        sub_1D8AD7FF8(v111, v135);

        sub_1D8AECDD4(v111, v117, v118, v119);
        if (!(v111 >> 62))
        {
          goto LABEL_53;
        }

LABEL_58:
        v113 = sub_1D8B16610();
        goto LABEL_54;
      }
    }
  }

  v112 = 0;
  v111 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_56;
  }

LABEL_51:
  if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_52;
  }

LABEL_57:

  if (v111 >> 62)
  {
    goto LABEL_58;
  }

LABEL_53:
  v113 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_54:

  return (v113 != 0) | v112 & 1u;
}

uint64_t sub_1D8AD7DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v18 + 16))(&v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a1;
  v19 = sub_1D8B15BF0();
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a2;
  v20 = sub_1D89170E0(sub_1D8AFD094, v22, v19);

  return v20;
}

uint64_t sub_1D8AD7F54(uint64_t a1, uint64_t a2)
{
  CVTrackedDetection.latestDetection.getter(&v7);
  type metadata accessor for MetaDetectionResult();
  v3 = swift_allocBox();
  sub_1D8AF7FF0(a2, v4, type metadata accessor for MetaDetectionResult);
  v6 = v3 | 0x2000000000000000;
  LOBYTE(v3) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v7, &v6);

  return v3 & 1;
}

uint64_t sub_1D8AD7FF8(unint64_t a1, unint64_t a2)
{
  v31 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    v3 = sub_1D8B16610();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v5 = COERCE_DOUBLE(&v30);
    sub_1D87F4140(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    v7 = 0;
    v4 = v30;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA71FC20](v7, a1);
      }

      else
      {
      }

      CVTrackedDetection.latestEstimate.getter(&v29);
      v28 = v29;
      CVDetection.detection.getter(v25);
      v8 = v26;
      v9 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v10 = (*(v9 + 88))(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v25);
      v30 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D87F4140((v11 > 1), v12 + 1, 1);
        v4 = v30;
      }

      ++v7;
      *(v4 + 16) = v12 + 1;
      *(v4 + 8 * v12 + 32) = v10;
    }

    while (v3 != v7);
  }

  v5 = COERCE_DOUBLE(sub_1D8918E7C(v4));
  v14 = v13;

  v6 = a2;
  if (v14)
  {
    goto LABEL_26;
  }

  if (!(a2 >> 62))
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_26:
    sub_1D8AED8E4(v31);
  }

LABEL_25:
  v23 = v6;
  result = sub_1D8B16610();
  v6 = v23;
  v16 = result;
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_15:
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v6 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x1DA71FC20](v17);
      }

      else
      {
        v19 = *(v6 + 8 * v17 + 32);
      }

      v20 = v5 - *(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
      CVTrackedDetection.latestEstimate.getter(v25);
      v30 = v25[0];
      CVDetection.maxSecondsDecay.getter();
      v22 = v21;

      if (v22 < v20)
      {
        sub_1D87FE258(v25, v19);
      }

      ++v17;
      v6 = a2;
    }

    while (v16 != v17);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AD82D0(uint64_t a1)
{
  v272 = *v1;
  v3 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v293 = &v263 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for ProcessorState(0);
  v5 = MEMORY[0x1EEE9AC00](v291);
  v274 = &v263 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v285 = &v263 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v292 = &v263 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v297 = &v263 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v299 = &v263 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v270 = &v263 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v269 = &v263 - v17;
  v18 = type metadata accessor for DetectionRequest(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v273 = &v263 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v271 = &v263 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v286 = &v263 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v284 = &v263 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v290 = &v263 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v289 = &v263 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v295 = &v263 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v294 = &v263 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v268 = &v263 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v267 = &v263 - v37;
  v38 = type metadata accessor for TrackManager.MatchingComputationResult(0);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v288 = &v263 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v280 = (&v263 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v279 = &v263 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v278 = (&v263 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v287 = &v263 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v277 = (&v263 - v50);
  MEMORY[0x1EEE9AC00](v49);
  v276 = (&v263 - v51);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63220);
  v305 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v302 = &v263 - v52;
  v53 = type metadata accessor for CVTrackSnapshot(0);
  v54 = *(v53 - 8);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  *&v283 = &v263 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v263 - v57;
  v59 = sub_1D8B13240();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v263 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v63 = *(v298 + 24);
  v301 = a1;
  v64 = *(a1 + v63);
  v65 = *(v64 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  v275 = v54;
  if (v65)
  {
    v282 = v38;
    v309 = MEMORY[0x1E69E7CC0];
    sub_1D87F3EE0(0, v65, 0);
    v66 = v309;
    v67 = v64 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v304 = *(v54 + 72);
    v303 = v60 + 32;
    v68 = v59;
    do
    {
      sub_1D8AF7FF0(v67, v58, type metadata accessor for CVTrackSnapshot);
      (*(v60 + 16))(v62, v58, v68);
      sub_1D8AF7F70(v58, type metadata accessor for CVTrackSnapshot);
      v309 = v66;
      v70 = *(v66 + 16);
      v69 = *(v66 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1D87F3EE0(v69 > 1, v70 + 1, 1);
        v66 = v309;
      }

      *(v66 + 16) = v70 + 1;
      (*(v60 + 32))(v66 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v70, v62, v68);
      v67 += v304;
      --v65;
    }

    while (v65);
    v71 = v282;
  }

  else
  {
    v68 = v59;
    v71 = v38;
  }

  v72 = sub_1D87C4B18(v66);

  v73 = v296;
  v74 = swift_beginAccess();
  v75 = *(v73 + 192);
  MEMORY[0x1EEE9AC00](v74);
  v76 = v301;

  v77 = sub_1D87C7118(sub_1D8AFCFF0, &v263 - 4, v75);
  MEMORY[0x1EEE9AC00](v77);
  *(&v263 - 8) = v68;
  v78 = type metadata accessor for CVTrackedDetection(0);
  *(&v263 - 7) = v78;
  *(&v263 - 6) = v78;
  *(&v263 - 5) = v68;
  *(&v263 - 4) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650D0);
  v79 = sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  *(&v263 - 3) = v79;
  v261 = v79;
  v262 = sub_1D881CF20(&qword_1ECA650D8, &qword_1ECA650D0);
  KeyPath = swift_getKeyPath();
  v281 = v77;
  v81 = sub_1D8AD0DD4(v77, sub_1D8AFD468, 0, sub_1D8AFD484, KeyPath);

  v82 = (v76 + *(v71 + 20));
  v84 = *v82;
  v83 = v82[1];
  v85 = v82[2];
  if (*v82 >= 2)
  {
    v282 = v72;
    v86 = *(v84 + 16);

    v304 = v85;

    v87 = MEMORY[0x1E69E7CC0];
    v303 = v83;
    v88 = v302;
    if (v86)
    {
      v266 = v86 - 1;
      v89 = &qword_1ECA63220;
      v90 = &unk_1D8B1E7E0;
      v91 = 0;
      while (v91 < *(v84 + 16))
      {
        sub_1D87A0E38(v84 + ((*(v305 + 80) + 32) & ~*(v305 + 80)) + v305[9] * v91, v88, &qword_1ECA63220);
        if (*(v81 + 16) && (v92 = *(v88 + *(v300 + 48)), v93 = sub_1D87EF764(v88), v88 = v302, (v94 & 1) != 0))
        {
          v264 = v78;
          v95 = *(*(v81 + 56) + 8 * v93);

          v265 = v95;

          sub_1D87A14E4(v88, &qword_1ECA63220);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_1D87CA3EC(0, v87[2] + 1, 1, v87);
          }

          v96 = v87;
          v97 = v87[2];
          v98 = v96;
          v99 = v96[3];
          v78 = v264;
          if (v97 >= v99 >> 1)
          {
            v98 = sub_1D87CA3EC((v99 > 1), v97 + 1, 1, v98);
          }

          v98[2] = v97 + 1;
          v100 = &v98[2 * v97];
          v87 = v98;
          v100[4] = v265;
          v100[5] = v92;
          v88 = v302;
          if (v266 == v91)
          {
            goto LABEL_21;
          }

          ++v91;
        }

        else
        {
          ++v91;
          sub_1D87A14E4(v88, &qword_1ECA63220);
          if (v86 == v91)
          {
            goto LABEL_21;
          }
        }
      }

      __break(1u);
      goto LABEL_131;
    }

LABEL_21:

    v101 = *(v84 + 16) == v87[2];
    v305 = v87;
    if (v101)
    {
    }

    else
    {
      v102 = v301;
      v103 = v276;
      sub_1D8AF7FF0(v301, v276, type metadata accessor for TrackManager.MatchingComputationResult);
      v104 = v277;
      sub_1D8AF7FF0(v102, v277, type metadata accessor for TrackManager.MatchingComputationResult);
      swift_bridgeObjectRetain_n();

      v105 = sub_1D8B151C0();
      v106 = sub_1D8B16210();
      if (os_log_type_enabled(v105, v106))
      {
        LODWORD(v302) = v106;
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v309 = v109;
        *v108 = 136315906;
        v110 = v269;
        sub_1D8AF7FF0(v103 + *(v298 + 20), v269, type metadata accessor for ProcessorState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v112 = v267;
          if (EnumCaseMultiPayload == 1)
          {
            v113 = v110;
            v114 = v293;
            sub_1D8AF7F08(v113, v293, type metadata accessor for DetectionResult);
            sub_1D8AF7FF0(v114, v112, type metadata accessor for DetectionRequest);
            sub_1D8AF7F70(v114, type metadata accessor for DetectionResult);
LABEL_33:
            v117 = *v112;
            sub_1D8AF7F70(v112, type metadata accessor for DetectionRequest);
            LOBYTE(v315) = v117;
            v118 = CVDetection.DetectionType.description.getter();
            v120 = v119;
            sub_1D8AF7F70(v276, type metadata accessor for TrackManager.MatchingComputationResult);
            v121 = sub_1D89AC714(v118, v120, &v309);

            *(v108 + 4) = v121;
            *(v108 + 12) = 2048;
            v122 = *(v84 + 16);

            *(v108 + 14) = v122;

            *(v108 + 22) = 2048;
            v123 = v305[2];

            *(v108 + 24) = v123;

            *(v108 + 32) = 2080;
            v124 = v277;
            v125 = v277[3];
            v126 = v277[4];
            __swift_project_boxed_opaque_existential_1(v277, v125);
            v127 = CameraSourceFrame.timeDescription.getter(v125, v126);
            v129 = v128;
            sub_1D8AF7F70(v124, type metadata accessor for TrackManager.MatchingComputationResult);
            v130 = sub_1D89AC714(v127, v129, &v309);

            *(v108 + 34) = v130;
            _os_log_impl(&dword_1D8783000, v105, v302, "Matched pair count for %s: expected %ld but got %ld back. Did matching take too long? @ t=%s", v108, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v109, -1, -1);
            MEMORY[0x1DA721330](v108, -1, -1);

            v115 = MEMORY[0x1E69E7CC0];
LABEL_34:
            v131 = v283;
            v309 = v115;
            v89 = v304;
            v132 = *(v304 + 16);
            v84 = v287;
            if (v132)
            {
              v133 = v304 + ((*(v275 + 80) + 32) & ~*(v275 + 80));
              v134 = *(v275 + 72);
              v91 = MEMORY[0x1E69E7CC0];
              do
              {
                sub_1D8AF7FF0(v133, v131, type metadata accessor for CVTrackSnapshot);
                if (*(v81 + 16) && (sub_1D87EF764(v131), (v135 & 1) != 0))
                {

                  v136 = sub_1D8AF7F70(v131, type metadata accessor for CVTrackSnapshot);
                  MEMORY[0x1DA71F1A0](v136);
                  if (*((v309 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v309 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1D8B15D20();
                    v84 = v287;
                  }

                  sub_1D8B15D70();
                  v91 = v309;
                }

                else
                {
                  sub_1D8AF7F70(v131, type metadata accessor for CVTrackSnapshot);
                }

                v133 += v134;
                --v132;
              }

              while (v132);

              v89 = v304;
            }

            else
            {

              v91 = MEMORY[0x1E69E7CC0];
            }

            v90 = (v91 >> 62);
            if (!(v91 >> 62))
            {
              v137 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_47;
            }

LABEL_131:
            v137 = sub_1D8B16610();
LABEL_47:
            if (v137 == v89[2])
            {

              goto LABEL_60;
            }

            v138 = v301;
            sub_1D8AF7FF0(v301, v84, type metadata accessor for TrackManager.MatchingComputationResult);
            v139 = v138;
            v140 = v278;
            sub_1D8AF7FF0(v139, v278, type metadata accessor for TrackManager.MatchingComputationResult);
            swift_bridgeObjectRetain_n();

            v141 = sub_1D8B151C0();
            v142 = sub_1D8B16210();
            if (!os_log_type_enabled(v141, v142))
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              sub_1D8AF7F70(v84, type metadata accessor for TrackManager.MatchingComputationResult);
              sub_1D8AF7F70(v140, type metadata accessor for TrackManager.MatchingComputationResult);
              goto LABEL_60;
            }

            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v309 = v144;
            *v143 = 136315906;
            v145 = v270;
            sub_1D8AF7FF0(v84 + *(v298 + 20), v270, type metadata accessor for ProcessorState);
            v146 = swift_getEnumCaseMultiPayload();
            if (v146)
            {
              if (v146 == 1)
              {
                v147 = v145;
                v148 = v293;
                sub_1D8AF7F08(v147, v293, type metadata accessor for DetectionResult);
                v149 = v268;
                sub_1D8AF7FF0(v148, v268, type metadata accessor for DetectionRequest);
                sub_1D8AF7F70(v148, type metadata accessor for DetectionResult);
LABEL_56:
                v150 = *v149;
                sub_1D8AF7F70(v149, type metadata accessor for DetectionRequest);
                LOBYTE(v315) = v150;
                v151 = CVDetection.DetectionType.description.getter();
                v153 = v152;
                sub_1D8AF7F70(v287, type metadata accessor for TrackManager.MatchingComputationResult);
                v154 = sub_1D89AC714(v151, v153, &v309);

                *(v143 + 4) = v154;
                *(v143 + 12) = 2048;
                v155 = *(v304 + 16);

                *(v143 + 14) = v155;

                *(v143 + 22) = 2048;
                if (v90)
                {
                  v156 = sub_1D8B16610();
                }

                else
                {
                  v156 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v143 + 24) = v156;

                *(v143 + 32) = 2080;
                v157 = v278;
                v158 = v278[3];
                v159 = v278[4];
                __swift_project_boxed_opaque_existential_1(v278, v158);
                v160 = CameraSourceFrame.timeDescription.getter(v158, v159);
                v162 = v161;
                sub_1D8AF7F70(v157, type metadata accessor for TrackManager.MatchingComputationResult);
                v163 = sub_1D89AC714(v160, v162, &v309);

                *(v143 + 34) = v163;
                _os_log_impl(&dword_1D8783000, v141, v142, "Unmatched count for %s: expected %ld but got %ld back. Did matching take too long? @ t=%s", v143, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x1DA721330](v144, -1, -1);
                MEMORY[0x1DA721330](v143, -1, -1);

LABEL_60:
                v164 = v305;
                sub_1D87C1470(v301, &v315);
                v304 = v164[2];
                if (v304)
                {
                  v165 = v164 + 5;
                  v166 = v304;
                  do
                  {
                    v309 = *v165;
                    LOBYTE(v310) = 64;
                    swift_retain_n();

                    sub_1D8AC9B48(&v309);

                    sub_1D8997618(v309, v310);
                    v165 += 2;
                    --v166;
                  }

                  while (v166);
                }

                v314 = MEMORY[0x1E69E7CD0];
                if (v90)
                {
                  v168 = sub_1D8B16610();
                }

                else
                {
                  v168 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v84 = v291;
                if (v168)
                {
                  if (v168 >= 1)
                  {
                    v169 = 0;
                    v300 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
                    v305 = (v299 + 8);
                    v302 = (v297 + 8);
                    v287 = v292 + 8;
                    v282 = v285 + 8;
                    *&v167 = 136315650;
                    v283 = v167;
                    while (1)
                    {
                      if ((v91 & 0xC000000000000001) != 0)
                      {
                        v170 = MEMORY[0x1DA71FC20](v169, v91);
                      }

                      else
                      {
                        v170 = *(v91 + 8 * v169 + 32);
                      }

                      v171 = v316;
                      v172 = v317;
                      __swift_project_boxed_opaque_existential_1(&v315, v316);
                      v309 = CameraSourceFrame.timestamp.getter(v171, v172);
                      LOBYTE(v310) = 0x80;
                      sub_1D8AC9B48(&v309);
                      if (*(*(v170 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64) == 1)
                      {
                        goto LABEL_70;
                      }

                      v173 = v316;
                      v174 = v317;
                      __swift_project_boxed_opaque_existential_1(&v315, v316);
                      (*(v174 + 40))(&v309, v173, v174);
                      if (v313 != 1)
                      {
                        goto LABEL_71;
                      }

                      v175 = *(v298 + 20);
                      sub_1D8AF7FF0(v301 + v175, v299, type metadata accessor for ProcessorState);
                      v176 = swift_getEnumCaseMultiPayload();
                      if (v176)
                      {
                        if (v176 == 1)
                        {
                          v177 = v293;
                          sub_1D8AF7F08(v299, v293, type metadata accessor for DetectionResult);
                          v178 = v295;
                          sub_1D8AF7FF0(v177, v295, type metadata accessor for DetectionRequest);
                          sub_1D8AF7F70(v177, type metadata accessor for DetectionResult);
                          goto LABEL_82;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
                      }

                      v178 = v295;
                      sub_1D8AF7F08(v299, v295, type metadata accessor for DetectionRequest);
LABEL_82:
                      v179 = v178;
                      v180 = v294;
                      sub_1D8AF7F08(v179, v294, type metadata accessor for DetectionRequest);
                      v181 = *v180;
                      sub_1D8AF7F70(v180, type metadata accessor for DetectionRequest);
                      if (v181 == 1)
                      {
                        goto LABEL_71;
                      }

                      sub_1D8AF7FF0(v301 + v175, v297, type metadata accessor for ProcessorState);
                      v182 = swift_getEnumCaseMultiPayload();
                      if (v182)
                      {
                        if (v182 == 1)
                        {
                          v183 = v293;
                          sub_1D8AF7F08(v297, v293, type metadata accessor for DetectionResult);
                          v184 = v290;
                          sub_1D8AF7FF0(v183, v290, type metadata accessor for DetectionRequest);
                          sub_1D8AF7F70(v183, type metadata accessor for DetectionResult);
                          goto LABEL_88;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
                      }

                      v184 = v290;
                      sub_1D8AF7F08(v297, v290, type metadata accessor for DetectionRequest);
LABEL_88:
                      v185 = v184;
                      v186 = v289;
                      sub_1D8AF7F08(v185, v289, type metadata accessor for DetectionRequest);
                      v187 = *v186;
                      sub_1D8AF7F70(v186, type metadata accessor for DetectionRequest);
                      if (v187 == 12)
                      {
                        goto LABEL_71;
                      }

                      sub_1D8AF7FF0(v301 + v175, v292, type metadata accessor for ProcessorState);
                      v188 = swift_getEnumCaseMultiPayload();
                      if (v188)
                      {
                        if (v188 == 1)
                        {
                          v189 = v293;
                          sub_1D8AF7F08(v292, v293, type metadata accessor for DetectionResult);
                          v190 = v286;
                          sub_1D8AF7FF0(v189, v286, type metadata accessor for DetectionRequest);
                          sub_1D8AF7F70(v189, type metadata accessor for DetectionResult);
                          goto LABEL_94;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
                      }

                      v190 = v286;
                      sub_1D8AF7F08(v292, v286, type metadata accessor for DetectionRequest);
LABEL_94:
                      v191 = v190;
                      v192 = v284;
                      sub_1D8AF7F08(v191, v284, type metadata accessor for DetectionRequest);
                      v193 = *v192;
                      sub_1D8AF7F70(v192, type metadata accessor for DetectionRequest);
                      if (v193 == 13)
                      {
                        goto LABEL_71;
                      }

                      v194 = v301;
                      v195 = v279;
                      sub_1D8AF7FF0(v301, v279, type metadata accessor for TrackManager.MatchingComputationResult);
                      v196 = v280;
                      sub_1D8AF7FF0(v194, v280, type metadata accessor for TrackManager.MatchingComputationResult);

                      v197 = sub_1D8B151C0();
                      v198 = sub_1D8B16230();

                      if (os_log_type_enabled(v197, v198))
                      {
                        LODWORD(v278) = v198;
                        v281 = v197;
                        v199 = swift_slowAlloc();
                        v277 = swift_slowAlloc();
                        v308 = v277;
                        *v199 = v283;
                        sub_1D8AF7FF0(v195 + *(v298 + 20), v285, type metadata accessor for ProcessorState);
                        v200 = swift_getEnumCaseMultiPayload();
                        if (v200)
                        {
                          v201 = v271;
                          if (v200 == 1)
                          {
                            v202 = v293;
                            sub_1D8AF7F08(v285, v293, type metadata accessor for DetectionResult);
                            sub_1D8AF7FF0(v202, v201, type metadata accessor for DetectionRequest);
                            sub_1D8AF7F70(v202, type metadata accessor for DetectionResult);
LABEL_103:
                            v204 = *v201;
                            sub_1D8AF7F70(v201, type metadata accessor for DetectionRequest);
                            LOBYTE(v309) = v204;
                            v205 = CVDetection.DetectionType.description.getter();
                            v207 = v206;
                            v276 = type metadata accessor for TrackManager.MatchingComputationResult;
                            sub_1D8AF7F70(v279, type metadata accessor for TrackManager.MatchingComputationResult);
                            v208 = sub_1D89AC714(v205, v207, &v308);

                            *(v199 + 4) = v208;
                            *(v199 + 12) = 2080;
                            CVTrackedDetection.latestDetection.getter(&v307);
                            v275 = v199;
                            v306 = v307;
                            CVDetection.detection.getter(&v309);
                            v210 = v311;
                            v209 = v312;
                            __swift_project_boxed_opaque_existential_1(&v309, v311);
                            v211 = (*(v209 + 72))(v210, v209);
                            v213 = v212;

                            __swift_destroy_boxed_opaque_existential_1(&v309);
                            v214 = sub_1D89AC714(v211, v213, &v308);

                            v215 = v275;
                            *(v275 + 14) = v214;
                            *(v215 + 22) = 2048;
                            v216 = v280;
                            v217 = v280[3];
                            v218 = v280[4];
                            __swift_project_boxed_opaque_existential_1(v280, v217);
                            v219 = CameraSourceFrame.timestamp.getter(v217, v218) - *(v170 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
                            sub_1D8AF7F70(v216, v276);
                            *(v215 + 24) = v219;
                            v220 = v281;
                            _os_log_impl(&dword_1D8783000, v281, v278, "Killing track %s (%s) (age=%f) due to still arrival", v215, 0x20u);
                            v221 = v277;
                            swift_arrayDestroy();
                            MEMORY[0x1DA721330](v221, -1, -1);
                            MEMORY[0x1DA721330](v215, -1, -1);

                            goto LABEL_70;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

                          v203 = v285;
                        }

                        else
                        {
                          v203 = v285;
                          v201 = v271;
                        }

                        sub_1D8AF7F08(v203, v201, type metadata accessor for DetectionRequest);
                        goto LABEL_103;
                      }

                      sub_1D8AF7F70(v195, type metadata accessor for TrackManager.MatchingComputationResult);
                      sub_1D8AF7F70(v196, type metadata accessor for TrackManager.MatchingComputationResult);
LABEL_70:
                      sub_1D87FE258(&v309, v170);
LABEL_71:

                      if (v168 == ++v169)
                      {
                        goto LABEL_104;
                      }
                    }
                  }

                  __break(1u);
                  goto LABEL_133;
                }

LABEL_104:

                v222 = v314;
                if ((v314 & 0xC000000000000001) != 0)
                {
                  v223 = sub_1D8B16610();
                }

                else
                {
                  v223 = *(v314 + 16);
                }

                v224 = v288;
                v225 = v303;
                if (v223)
                {
                  sub_1D8AF7FF0(v301, v288, type metadata accessor for TrackManager.MatchingComputationResult);
                  sub_1D87C1470(&v315, &v309);

                  v226 = sub_1D8B151C0();
                  v227 = sub_1D8B16200();
                  if (os_log_type_enabled(v226, v227))
                  {
                    v228 = swift_slowAlloc();
                    v229 = swift_slowAlloc();
                    v308 = v229;
                    *v228 = 134218754;
                    if ((v222 & 0xC000000000000001) != 0)
                    {
                      v230 = sub_1D8B16610();
                    }

                    else
                    {
                      v230 = *(v222 + 16);
                    }

                    *(v228 + 4) = v230;

                    *(v228 + 12) = 2080;
                    sub_1D8ADB098(&v307);
                    sub_1D87C4938();
                    v231 = sub_1D8B15740();
                    v233 = v232;

                    v234 = sub_1D89AC714(v231, v233, &v308);

                    *(v228 + 14) = v234;
                    *(v228 + 22) = 2080;
                    v235 = v274;
                    sub_1D8AF7FF0(v288 + *(v298 + 20), v274, type metadata accessor for ProcessorState);
                    v236 = swift_getEnumCaseMultiPayload();
                    if (v236)
                    {
                      v237 = v273;
                      v225 = v303;
                      if (v236 == 1)
                      {
                        v238 = v235;
                        v239 = v293;
                        sub_1D8AF7F08(v238, v293, type metadata accessor for DetectionResult);
                        sub_1D8AF7FF0(v239, v237, type metadata accessor for DetectionRequest);
                        sub_1D8AF7F70(v239, type metadata accessor for DetectionResult);
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

                        sub_1D8AF7F08(v235, v237, type metadata accessor for DetectionRequest);
                      }
                    }

                    else
                    {
                      v237 = v273;
                      sub_1D8AF7F08(v235, v273, type metadata accessor for DetectionRequest);
                      v225 = v303;
                    }

                    v240 = *v237;
                    sub_1D8AF7F70(v237, type metadata accessor for DetectionRequest);
                    LOBYTE(v307) = v240;
                    v241 = CVDetection.DetectionType.description.getter();
                    v243 = v242;
                    sub_1D8AF7F70(v288, type metadata accessor for TrackManager.MatchingComputationResult);
                    v244 = sub_1D89AC714(v241, v243, &v308);

                    *(v228 + 24) = v244;
                    *(v228 + 32) = 2080;
                    v245 = v311;
                    v246 = v312;
                    __swift_project_boxed_opaque_existential_1(&v309, v311);
                    v247 = CameraSourceFrame.timeDescription.getter(v245, v246);
                    v249 = v248;
                    __swift_destroy_boxed_opaque_existential_1(&v309);
                    v250 = sub_1D89AC714(v247, v249, &v308);

                    *(v228 + 34) = v250;
                    _os_log_impl(&dword_1D8783000, v226, v227, "updateTracksWithMatchingComputationResultsCompleted: Removing %ld expired tracks by type: %s for %s @ %s", v228, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x1DA721330](v229, -1, -1);
                    MEMORY[0x1DA721330](v228, -1, -1);
                  }

                  else
                  {

                    sub_1D8AF7F70(v224, type metadata accessor for TrackManager.MatchingComputationResult);
                    __swift_destroy_boxed_opaque_existential_1(&v309);
                  }
                }

                sub_1D8AED8E4(v222);
                v251 = *(v225 + 16);

                if (v251)
                {
                  v309 = MEMORY[0x1E69E7CC0];
                  v252 = (v225 + 32);
                  do
                  {
                    v253 = *v252++;
                    v308 = v253;
                    swift_allocObject();
                    swift_retain_n();
                    sub_1D8AC8338(&v308);

                    MEMORY[0x1DA71F1A0](v254);
                    if (*((v309 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v309 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1D8B15D20();
                    }

                    sub_1D8B15D70();

                    --v251;
                  }

                  while (v251);
                  v255 = v309;
                }

                else
                {
                  if (!v304)
                  {
                    goto LABEL_128;
                  }

                  v255 = MEMORY[0x1E69E7CC0];
                }

                v256 = v316;
                v257 = v317;
                v258 = __swift_project_boxed_opaque_existential_1(&v315, v316);
                sub_1D8AECDD4(v255, v258, v256, v257);
LABEL_128:

                return __swift_destroy_boxed_opaque_existential_1(&v315);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
            }

            v149 = v268;
            sub_1D8AF7F08(v145, v268, type metadata accessor for DetectionRequest);
            goto LABEL_56;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

          v116 = v110;
        }

        else
        {
          v116 = v110;
          v112 = v267;
        }

        sub_1D8AF7F08(v116, v112, type metadata accessor for DetectionRequest);
        goto LABEL_33;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_1D8AF7F70(v103, type metadata accessor for TrackManager.MatchingComputationResult);
      sub_1D8AF7F70(v104, type metadata accessor for TrackManager.MatchingComputationResult);
    }

    v115 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

LABEL_133:
  v309 = 0;
  v310 = 0xE000000000000000;
  sub_1D8B16720();

  v309 = 0xD000000000000017;
  v310 = 0x80000001D8B49240;
  v260 = sub_1D8AD481C(v84);
  MEMORY[0x1DA71EFA0](v260);

  LODWORD(v262) = 0;
  v261 = 312;
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

BOOL sub_1D8ADA920(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_1D89A5880(*a1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id, a2) & 1) == 0)
  {
    return 0;
  }

  CVTrackedDetection.latestDetection.getter(&v23);
  v22 = v23;
  CVDetection.detectionType.getter(&v21);

  v15 = v21;
  v16 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  sub_1D8AF7FF0(a3 + *(v16 + 20), v11, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

LABEL_7:
    sub_1D8AF7F08(v11, v14, type metadata accessor for DetectionRequest);
    goto LABEL_8;
  }

  sub_1D8AF7F08(v11, v8, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v8, v14, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v8, type metadata accessor for DetectionResult);
LABEL_8:
  v19 = *v14;
  sub_1D8AF7F70(v14, type metadata accessor for DetectionRequest);
  return v15 == v19;
}

BOOL sub_1D8ADABAC()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProcessorState(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for DetectionRequest(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v33 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v33 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v33 - v24;
  sub_1D8AF7FF0(v1, v13, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8AF7F08(v13, v4, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v4, v23, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v4, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D8AF7F08(v13, v23, type metadata accessor for DetectionRequest);
LABEL_6:
  sub_1D8AF7F08(v23, v25, type metadata accessor for DetectionRequest);
  v27 = *v25;
  sub_1D8AF7F70(v25, type metadata accessor for DetectionRequest);
  if (v27 == 1)
  {
    return 0;
  }

  sub_1D8AF7FF0(v1, v11, type metadata accessor for ProcessorState);
  v28 = swift_getEnumCaseMultiPayload();
  if (v28)
  {
    if (v28 == 1)
    {
      sub_1D8AF7F08(v11, v4, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v4, v20, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v4, type metadata accessor for DetectionResult);
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D8AF7F08(v11, v20, type metadata accessor for DetectionRequest);
LABEL_12:
  v29 = *v20;
  sub_1D8AF7F70(v20, type metadata accessor for DetectionRequest);
  if (v29 == 12)
  {
    return 0;
  }

  sub_1D8AF7FF0(v1, v8, type metadata accessor for ProcessorState);
  v31 = swift_getEnumCaseMultiPayload();
  if (!v31)
  {
    goto LABEL_18;
  }

  if (v31 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

LABEL_18:
    sub_1D8AF7F08(v8, v17, type metadata accessor for DetectionRequest);
    goto LABEL_19;
  }

  sub_1D8AF7F08(v8, v4, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v4, v17, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v4, type metadata accessor for DetectionResult);
LABEL_19:
  v32 = *v17;
  sub_1D8AF7F70(v17, type metadata accessor for DetectionRequest);
  return v32 != 13;
}

uint64_t sub_1D8ADB098@<X0>(void *a1@<X8>)
{

  v3 = sub_1D8AD1338(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
  v4 = sub_1D8B168F0();
  result = v3;
  v6 = 0;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v10 = *(v3 + 64);
  v9 = v3 + 64;
  v11 = v8 & v10;
  v12 = (v7 + 63) >> 6;
  if ((v8 & v10) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v6 << 6);
      v17 = *(*(result + 48) + v16);
      v18 = *(*(result + 56) + 8 * v16);
      if (v18 >> 62)
      {
        v23 = result;
        v19 = sub_1D8B16610();
        result = v23;
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v4 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      *(v4[6] + v16) = v17;
      *(v4[7] + 8 * v16) = v19;
      v20 = v4[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v4[2] = v22;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v12)
      {

        *a1 = v4;
        return result;
      }

      v15 = *(v9 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TrackManager.init(configuration:supporting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D8AF6530(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1D8ADB25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8ADB27C, 0, 0);
}

uint64_t sub_1D8ADB27C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8ADB340, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D8ADB340()
{
  sub_1D8AE3964();

  return MEMORY[0x1EEE6DFA0](sub_1D8ADB3B0, 0, 0);
}

uint64_t sub_1D8ADB3D8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v42 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138);
  v44 = *(v46 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v37 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v37 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691D0);
  swift_allocObject();
  v40 = sub_1D8B14C90();
  *v9 = 1;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8640], v6);
  type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v41 = v15;
  sub_1D8B15EB0();
  (*(v7 + 8))(v9, v6);
  v16 = sub_1D8B15EA0();
  v17 = *(v16 - 8);
  v38 = *(v17 + 56);
  v42 = v17 + 56;
  v38(v5, 1, 1, v16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v11;
  v20 = *(v11 + 16);
  v21 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v10;
  v20(v21, v15, v10);
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v19 + 32))(v24 + v22, v21, v10);
  *(v24 + v23) = v18;
  v25 = v40;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

  v26 = v37;
  sub_1D8891CA0(0, 0, v37, &unk_1D8B3ED68, v24);

  v27 = *(v48 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_configuration + 8);
  v38(v26, 1, 1, v16);
  v29 = v43;
  v28 = v44;
  v30 = v46;
  (*(v44 + 16))(v43, v47, v46);
  v31 = v28;
  v32 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v33 = (v45 + v32 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v25;
  (*(v31 + 32))(&v34[v32], v29, v30);
  *&v34[v33] = v27;

  v35 = sub_1D8AD1984(0, 0, v26, &unk_1D8B3ED78, v34);

  sub_1D87A14E4(v26, &unk_1ECA675E0);
  (*(v19 + 8))(v41, v39);
  return v35;
}

uint64_t sub_1D8ADB928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  type metadata accessor for DetectionResult(0);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for ProcessorState(0);
  v6[11] = swift_task_alloc();
  type metadata accessor for DetectionRequest(0);
  v6[12] = swift_task_alloc();
  v7 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69170);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69228);
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ADBB5C, 0, 0);
}

uint64_t sub_1D8ADBB5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C8);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1D8ADBC40;
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1D8ADBC40()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8ADBD3C, 0, 0);
}

uint64_t sub_1D8ADBD3C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v3 + 48);
  *(v0 + 216) = v4;
  *(v0 + 224) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_8:

    v7 = *(v0 + 8);

    return v7();
  }

  sub_1D8AF7F08(v1, *(v0 + 144), type metadata accessor for TrackManager.MatchingComputationRequest);
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_7;
  }

  v6 = Strong;
  if (sub_1D8B15F90())
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

LABEL_7:
    sub_1D8AF7F70(*(v0 + 144), type metadata accessor for TrackManager.MatchingComputationRequest);
    goto LABEL_8;
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  *(v0 + 272) = *(v11 + 20);
  v13 = v10[3];
  *(v0 + 240) = v13;
  *(v0 + 248) = v10[4];
  *(v0 + 256) = __swift_project_boxed_opaque_existential_1(v10, v13);
  sub_1D8AF7FF0(v10, v9, type metadata accessor for TrackManager.MatchingComputationRequest);
  (*(v12 + 56))(v9, 0, 1, v11);

  return MEMORY[0x1EEE6DFA0](sub_1D8ADBFD0, v6, 0);
}

uint64_t sub_1D8ADBFD0()
{
  v1 = *(v0 + 160);
  sub_1D8AEB2F8(*(v0 + 144) + *(v0 + 272), *(v0 + 256), v1, *(v0 + 240), *(v0 + 248), *(v0 + 168));
  sub_1D87A14E4(v1, &qword_1ECA69170);

  return MEMORY[0x1EEE6DFA0](sub_1D8ADC068, 0, 0);
}

uint64_t sub_1D8ADC068()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[13];
  sub_1D87A0E38(v0[21], v2, &qword_1ECA69170);
  v4 = v1(v2, 1, v3);
  v5 = v0[19];
  if (v4 == 1)
  {
    sub_1D87A14E4(v5, &qword_1ECA69170);
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v6 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v9 = sub_1D8B151E0();
    __swift_project_value_buffer(v9, qword_1EE0E4350);
    sub_1D8AF7FF0(v6, v7, type metadata accessor for TrackManager.MatchingComputationRequest);
    sub_1D8AF7FF0(v6, v8, type metadata accessor for TrackManager.MatchingComputationRequest);
    v10 = sub_1D8B151C0();
    v11 = sub_1D8B16210();
    if (!os_log_type_enabled(v10, v11))
    {
      v23 = v0[21];
      v25 = v0[15];
      v24 = v0[16];

      sub_1D8AF7F70(v24, type metadata accessor for TrackManager.MatchingComputationRequest);
      sub_1D87A14E4(v23, &qword_1ECA69170);
      sub_1D8AF7F70(v25, type metadata accessor for TrackManager.MatchingComputationRequest);
LABEL_30:
      sub_1D8AF7F70(v0[18], type metadata accessor for TrackManager.MatchingComputationRequest);
      v40 = swift_task_alloc();
      v0[26] = v40;
      *v40 = v0;
      v40[1] = sub_1D8ADBC40;
      v41 = v0[22];
      v42 = v0[23];

      return MEMORY[0x1EEE6D9C8](v41, 0, 0, v42);
    }

    v12 = v0[16];
    v13 = v0[13];
    v14 = v0[11];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v0[5] = v16;
    *v15 = 136315394;
    sub_1D8AF7FF0(v12 + *(v13 + 20), v14, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v0[11];
    v19 = v0[12];
    v44 = v16;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v0[9];
        sub_1D8AF7F08(v18, v20, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v20, v19, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v20, type metadata accessor for DetectionResult);
LABEL_15:
        v27 = v0[12];
        v28 = *v27;
        sub_1D8AF7F70(v27, type metadata accessor for DetectionRequest);
        v29 = 0xE900000000000067;
        v30 = 0x6E69646E756F7267;
        switch(v28)
        {
          case 1:
            v29 = 0xED00006573726150;
            v30 = 0x6465646E756F7267;
            break;
          case 2:
            v29 = 0xE400000000000000;
            v30 = 1635018093;
            break;
          case 3:
            v29 = 0xE600000000000000;
            v30 = 0x7463656A626FLL;
            break;
          case 4:
            v29 = 0xE500000000000000;
            v30 = 0x6573726170;
            break;
          case 5:
            v29 = 0xE400000000000000;
            v30 = 1954047348;
            break;
          case 6:
            v29 = 0xE600000000000000;
            v30 = 0x65646F437271;
            break;
          case 7:
            v29 = 0xE700000000000000;
            v30 = 0x70696C43707061;
            break;
          case 8:
            v29 = 0xED00007478655467;
            v30 = 0x6E696D6165727473;
            break;
          case 9:
            v29 = 0xEF746E65746E6F43;
            v30 = 0x6C61636974726576;
            break;
          case 10:
            v29 = 0xEA00000000006C61;
            v30 = 0x646F6D69746C756DLL;
            break;
          case 11:
            v30 = 0x69746568746E7973;
            v29 = 0xE900000000000063;
            break;
          case 12:
            v30 = 0xD000000000000017;
            v29 = 0x80000001D8B439C0;
            break;
          case 13:
            v29 = 0x80000001D8B439A0;
            v30 = 0xD00000000000001CLL;
            break;
          default:
            break;
        }

        v31 = v0[21];
        v32 = v0[15];
        sub_1D8AF7F70(v0[16], type metadata accessor for TrackManager.MatchingComputationRequest);
        v33 = sub_1D89AC714(v30, v29, v0 + 5);

        *(v15 + 4) = v33;
        *(v15 + 12) = 2080;
        v34 = v32[3];
        v35 = v32[4];
        __swift_project_boxed_opaque_existential_1(v32, v34);
        v36 = CameraSourceFrame.timeDescription.getter(v34, v35);
        v38 = v37;
        sub_1D8AF7F70(v32, type metadata accessor for TrackManager.MatchingComputationRequest);
        v39 = sub_1D89AC714(v36, v38, v0 + 5);

        *(v15 + 14) = v39;
        _os_log_impl(&dword_1D8783000, v10, v11, "Failed to create updated request for %s @ %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v44, -1, -1);
        MEMORY[0x1DA721330](v15, -1, -1);

        sub_1D87A14E4(v31, &qword_1ECA69170);
        goto LABEL_30;
      }

      v26 = v0[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v18 = v26;
    }

    sub_1D8AF7F08(v18, v19, type metadata accessor for DetectionRequest);
    goto LABEL_15;
  }

  sub_1D8AF7F08(v5, v0[17], type metadata accessor for TrackManager.MatchingComputationRequest);
  v21 = swift_task_alloc();
  v0[33] = v21;
  *v21 = v0;
  v21[1] = sub_1D8ADC76C;
  v22 = v0[17];

  return MEMORY[0x1EEDEE868](v22);
}

uint64_t sub_1D8ADC76C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8ADC868, 0, 0);
}

uint64_t sub_1D8ADC868()
{
  v1 = v0[21];
  v2 = v0[17];

  sub_1D8AF7F70(v2, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D87A14E4(v1, &qword_1ECA69170);
  sub_1D8AF7F70(v0[18], type metadata accessor for TrackManager.MatchingComputationRequest);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1D8ADBC40;
  v4 = v0[22];
  v5 = v0[23];

  return MEMORY[0x1EEE6D9C8](v4, 0, 0, v5);
}

uint64_t sub_1D8ADC968(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 288) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691D8);
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = type metadata accessor for TrackManager.MatchingComputationResult(0);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for DetectionResult(0);
  *(v6 + 128) = swift_task_alloc();
  type metadata accessor for DetectionRequest(0);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for ProcessorState(0);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  v8 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  *(v6 + 184) = v8;
  *(v6 + 192) = *(v8 - 8);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69170);
  *(v6 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ADCBFC, 0, 0);
}

uint64_t sub_1D8ADCBFC()
{
  v1 = sub_1D8B14C60();
  *(v0 + 248) = v1;
  *(v0 + 256) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 276) = 0;
  *(v0 + 272) = 0;
  *(v0 + 264) = 3;
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691E0);
  *v3 = v0;
  v3[1] = sub_1D8ADCCD4;
  v5 = *(v0 + 240);

  return MEMORY[0x1EEDEE870](v5, v4);
}

uint64_t sub_1D8ADCCD4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8ADCDD0, 0, 0);
}

uint64_t sub_1D8ADCDD0()
{
  v1 = *(v0 + 240);
  if ((*(*(v0 + 192) + 48))(v1, 1, *(v0 + 184)) == 1)
  {
    v2 = *(v0 + 264);

    sub_1D8AFCECC(v2);
LABEL_5:

    v12 = *(v0 + 8);

    return v12();
  }

  sub_1D8AF7F08(v1, *(v0 + 232), type metadata accessor for TrackManager.MatchingComputationRequest);
  if (sub_1D8B15F90())
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 232);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    sub_1D8AF7FF0(v4, v6, type metadata accessor for TrackManager.MatchingComputationRequest);
    v11 = (v6 + *(v7 + 20));
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 1;
    sub_1D8AF7FF0(v6, v5, type metadata accessor for TrackManager.MatchingComputationResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138);
    sub_1D8B15EE0();
    sub_1D8AFCECC(v3);
    (*(v9 + 8))(v8, v10);
    sub_1D8AF7F70(v6, type metadata accessor for TrackManager.MatchingComputationResult);

    sub_1D8AF7F70(v4, type metadata accessor for TrackManager.MatchingComputationRequest);
    goto LABEL_5;
  }

  v14 = *(v0 + 264);
  sub_1D8AF7FF0(*(v0 + 232) + *(*(v0 + 184) + 20), *(v0 + 176), type metadata accessor for ProcessorState);
  if (v14 == 3)
  {
    v15 = sub_1D8AFA7FC(*(v0 + 176));
    v17 = v16;
  }

  else
  {
    v17 = *(v0 + 272) | (*(v0 + 276) << 32);
    v15 = *(v0 + 264);
  }

  sub_1D8AFCEF0(v15);
  if (qword_1EE0E4348 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 224);
  v19 = *(v0 + 232);
  v20 = *(v0 + 216);
  v21 = sub_1D8B151E0();
  __swift_project_value_buffer(v21, qword_1EE0E4350);
  sub_1D8AF7FF0(v19, v18, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D8AF7FF0(v19, v20, type metadata accessor for TrackManager.MatchingComputationRequest);
  v22 = sub_1D8B151C0();
  v23 = sub_1D8B16200();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 224);
  if (!v24)
  {
    v34 = *(v0 + 216);

    sub_1D8AF7F70(v25, type metadata accessor for TrackManager.MatchingComputationRequest);
    sub_1D8AF7F70(v34, type metadata accessor for TrackManager.MatchingComputationRequest);
    goto LABEL_36;
  }

  v26 = v17;
  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = swift_slowAlloc();
  v107 = swift_slowAlloc();
  *(v0 + 40) = v107;
  *v29 = 136315394;
  sub_1D8AF7FF0(v25 + *(v27 + 20), v28, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = *(v0 + 168);
  v32 = *(v0 + 144);
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v35 = *(v0 + 168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

    v31 = v35;
LABEL_20:
    sub_1D8AF7F08(v31, v32, type metadata accessor for DetectionRequest);
    goto LABEL_21;
  }

  v33 = *(v0 + 128);
  sub_1D8AF7F08(v31, v33, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v33, v32, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v33, type metadata accessor for DetectionResult);
LABEL_21:
  v17 = v26;
  v36 = *(v0 + 144);
  v37 = *v36;
  sub_1D8AF7F70(v36, type metadata accessor for DetectionRequest);
  v38 = 0xE900000000000067;
  v39 = 0x6E69646E756F7267;
  switch(v37)
  {
    case 1:
      v38 = 0xED00006573726150;
      v39 = 0x6465646E756F7267;
      break;
    case 2:
      v38 = 0xE400000000000000;
      v39 = 1635018093;
      break;
    case 3:
      v38 = 0xE600000000000000;
      v39 = 0x7463656A626FLL;
      break;
    case 4:
      v38 = 0xE500000000000000;
      v39 = 0x6573726170;
      break;
    case 5:
      v38 = 0xE400000000000000;
      v39 = 1954047348;
      break;
    case 6:
      v38 = 0xE600000000000000;
      v39 = 0x65646F437271;
      break;
    case 7:
      v38 = 0xE700000000000000;
      v39 = 0x70696C43707061;
      break;
    case 8:
      v38 = 0xED00007478655467;
      v39 = 0x6E696D6165727473;
      break;
    case 9:
      v38 = 0xEF746E65746E6F43;
      v39 = 0x6C61636974726576;
      break;
    case 10:
      v38 = 0xEA00000000006C61;
      v39 = 0x646F6D69746C756DLL;
      break;
    case 11:
      v39 = 0x69746568746E7973;
      v38 = 0xE900000000000063;
      break;
    case 12:
      v39 = 0xD000000000000017;
      v38 = 0x80000001D8B439C0;
      break;
    case 13:
      v38 = 0x80000001D8B439A0;
      v39 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  v40 = *(v0 + 216);
  sub_1D8AF7F70(*(v0 + 224), type metadata accessor for TrackManager.MatchingComputationRequest);
  v41 = sub_1D89AC714(v39, v38, (v0 + 40));

  *(v29 + 4) = v41;
  *(v29 + 12) = 2080;
  v42 = v40[3];
  v43 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v42);
  v44 = CameraSourceFrame.timeDescription.getter(v42, v43);
  v46 = v45;
  sub_1D8AF7F70(v40, type metadata accessor for TrackManager.MatchingComputationRequest);
  v47 = sub_1D89AC714(v44, v46, (v0 + 40));

  *(v29 + 14) = v47;
  _os_log_impl(&dword_1D8783000, v22, v23, "Starting matching request for %s @ %s...", v29, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1DA721330](v107, -1, -1);
  MEMORY[0x1DA721330](v29, -1, -1);

LABEL_36:
  v48 = *(v0 + 232);
  v49 = *(v0 + 208);
  v103 = *(v0 + 200);
  v51 = *(v0 + 112);
  v50 = *(v0 + 120);
  v52 = *(v0 + 88);
  v106 = v17;
  v108 = v15;
  v53 = sub_1D8AFAC84(*(v48 + *(*(v0 + 184) + 24)), *(v0 + 176), v15, v17 & 0xFFFFFFFFFFLL, *(v0 + 288));
  v55 = v54;
  v57 = v56;
  sub_1D8AF7FF0(v48, v50, type metadata accessor for TrackManager.MatchingComputationRequest);
  v58 = (v50 + *(v52 + 20));
  *v58 = v53;
  v58[1] = v57;
  v58[2] = v55;
  sub_1D8AF7FF0(v48, v49, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D8AF7FF0(v50, v51, type metadata accessor for TrackManager.MatchingComputationResult);
  sub_1D8AF7FF0(v48, v103, type metadata accessor for TrackManager.MatchingComputationRequest);
  v59 = sub_1D8B151C0();
  v60 = sub_1D8B16200();
  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v0 + 208);
  if (v61)
  {
    v63 = *(v0 + 184);
    v64 = *(v0 + 160);
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *(v0 + 32) = v66;
    *v65 = 136315650;
    sub_1D8AF7FF0(v62 + *(v63 + 20), v64, type metadata accessor for ProcessorState);
    v67 = swift_getEnumCaseMultiPayload();
    v68 = *(v0 + 160);
    v69 = *(v0 + 136);
    v105 = v60;
    v104 = v66;
    if (v67)
    {
      if (v67 == 1)
      {
        v70 = *(v0 + 128);
        sub_1D8AF7F08(v68, v70, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v70, v69, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v70, type metadata accessor for DetectionResult);
LABEL_44:
        v75 = *(v0 + 200);
        v74 = *(v0 + 208);
        v76 = *(v0 + 136);
        v77 = *(v0 + 112);
        v78 = *(v0 + 88);
        v79 = *v76;
        sub_1D8AF7F70(v76, type metadata accessor for DetectionRequest);
        *(v0 + 292) = v79;
        v80 = CVDetection.DetectionType.description.getter();
        v82 = v81;
        sub_1D8AF7F70(v74, type metadata accessor for TrackManager.MatchingComputationRequest);
        v83 = sub_1D89AC714(v80, v82, (v0 + 32));

        *(v65 + 4) = v83;
        *(v65 + 12) = 2080;
        v84 = sub_1D8AD481C(*(v77 + *(v78 + 20)));
        v86 = v85;
        sub_1D8AF7F70(v77, type metadata accessor for TrackManager.MatchingComputationResult);
        v87 = sub_1D89AC714(v84, v86, (v0 + 32));

        *(v65 + 14) = v87;
        *(v65 + 22) = 2080;
        v89 = v75[3];
        v88 = v75[4];
        __swift_project_boxed_opaque_existential_1(v75, v89);
        v90 = CameraSourceFrame.timeDescription.getter(v89, v88);
        v92 = v91;
        sub_1D8AF7F70(v75, type metadata accessor for TrackManager.MatchingComputationRequest);
        v93 = sub_1D89AC714(v90, v92, (v0 + 32));

        *(v65 + 24) = v93;
        _os_log_impl(&dword_1D8783000, v59, v105, "Finished matching request for %s %s @ %s", v65, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v104, -1, -1);
        MEMORY[0x1DA721330](v65, -1, -1);

        goto LABEL_45;
      }

      v73 = *(v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v68 = v73;
    }

    sub_1D8AF7F08(v68, v69, type metadata accessor for DetectionRequest);
    goto LABEL_44;
  }

  v71 = *(v0 + 200);
  v72 = *(v0 + 112);

  sub_1D8AF7F70(v72, type metadata accessor for TrackManager.MatchingComputationResult);
  sub_1D8AF7F70(v62, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D8AF7F70(v71, type metadata accessor for TrackManager.MatchingComputationRequest);
LABEL_45:
  v94 = *(v0 + 232);
  v95 = *(v0 + 176);
  v96 = *(v0 + 120);
  v98 = *(v0 + 72);
  v97 = *(v0 + 80);
  v99 = *(v0 + 64);
  sub_1D8AF7FF0(v96, *(v0 + 104), type metadata accessor for TrackManager.MatchingComputationResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138);
  sub_1D8B15EE0();
  sub_1D8AFCECC(v108);
  (*(v98 + 8))(v97, v99);
  sub_1D8AF7F70(v96, type metadata accessor for TrackManager.MatchingComputationResult);
  sub_1D8AF7F70(v95, type metadata accessor for ProcessorState);
  sub_1D8AF7F70(v94, type metadata accessor for TrackManager.MatchingComputationRequest);
  *(v0 + 276) = BYTE4(v106);
  *(v0 + 272) = v106;
  *(v0 + 264) = v108;
  v100 = swift_task_alloc();
  *(v0 + 280) = v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691E0);
  *v100 = v0;
  v100[1] = sub_1D8ADCCD4;
  v102 = *(v0 + 240);

  return MEMORY[0x1EEDEE870](v102, v101);
}

uint64_t sub_1D8ADDB94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v354 = a5;
  v347 = a3;
  v358 = a2;
  v316 = type metadata accessor for TrackManager.MatchingComputationResult(0);
  MEMORY[0x1EEE9AC00](v316);
  v317 = (&v295 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v341 = &v295 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v304 = &v295 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v302 = &v295 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v318 = &v295 - v16;
  v355 = a4;
  v340 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v315 = &v295 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v329 = &v295 - v19;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691B8);
  v343 = *(v353 - 8);
  v20 = MEMORY[0x1EEE9AC00](v353);
  v339 = &v295 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v348 = &v295 - v22;
  v344 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v337 = *(v344 - 8);
  v23 = MEMORY[0x1EEE9AC00](v344);
  v314 = (&v295 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v313 = &v295 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v327 = (&v295 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v338 = &v295 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v351 = &v295 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69170);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v336 = &v295 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v335 = &v295 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v350 = &v295 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF8);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v325 = (&v295 - v39);
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138);
  v326 = *(v346 - 8);
  MEMORY[0x1EEE9AC00](v346);
  v345 = &v295 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
  v333 = *(v41 - 8);
  v334 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v312 = &v295 - v42;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69128);
  v349 = *(v360 - 8);
  v43 = MEMORY[0x1EEE9AC00](v360);
  v324 = &v295 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v359 = &v295 - v45;
  v46 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v330 = &v295 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DetectionRequest(0);
  v49 = MEMORY[0x1EEE9AC00](v48 - 8);
  v300 = &v295 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v299 = &v295 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v309 = &v295 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v310 = &v295 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v311 = &v295 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v332 = &v295 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v295 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v331 = &v295 - v64;
  v65 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v319 = *(v65 - 8);
  v66 = MEMORY[0x1EEE9AC00](v65);
  v298 = &v295 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v296 = &v295 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v307 = &v295 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v73 = (&v295 - v72);
  v342 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v303 = *(v342 - 8);
  v74 = MEMORY[0x1EEE9AC00](v342);
  v323 = &v295 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v322 = &v295 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v320 = (&v295 - v79);
  MEMORY[0x1EEE9AC00](v78);
  v352 = (&v295 - v80);
  v81 = type metadata accessor for ProcessorState(0);
  v82 = MEMORY[0x1EEE9AC00](v81);
  v301 = &v295 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x1EEE9AC00](v82);
  v308 = &v295 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v297 = &v295 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v306 = &v295 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v305 = &v295 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v328 = &v295 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v96 = &v295 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v295 - v98;
  MEMORY[0x1EEE9AC00](v97);
  v101 = &v295 - v100;
  v102 = a1;
  sub_1D8AF7FF0(a1, &v295 - v100, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8AF7F70(v101, type metadata accessor for ProcessorState);
    goto LABEL_93;
  }

  sub_1D8AF7F70(v101, type metadata accessor for ProcessorState);
  v103 = *(v65 + 20);
  v357 = v102;
  sub_1D8AF7FF0(v102, v73 + v103, type metadata accessor for ProcessorState);
  (*(v354 + 40))(v369, v355);
  v104 = v369[4];
  v73[3] = v369[3];
  v73[4] = v104;
  v105 = v369[2];
  v73[1] = v369[1];
  v73[2] = v105;
  *v73 = v369[0];
  v321 = v65;
  *(v73 + *(v65 + 24)) = 0;
  v106 = v73[4];
  v373 = v73[3];
  v374 = v106;
  v107 = v73[2];
  v371 = v73[1];
  v372 = v107;
  v370 = *v73;
  sub_1D8AF7F08(v73 + v103, v99, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v110 = v331;
    v109 = v332;
    if (EnumCaseMultiPayload == 1)
    {
      v111 = v330;
      sub_1D8AF7F08(v99, v330, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v111, v63, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v111, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      sub_1D8AF7F08(v99, v63, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    sub_1D8AF7F08(v99, v63, type metadata accessor for DetectionRequest);
    v110 = v331;
    v109 = v332;
  }

  sub_1D8AF7F08(v63, v110, type metadata accessor for DetectionRequest);
  v112 = v373;
  v113 = v352;
  v352[2] = v372;
  v113[3] = v112;
  v113[4] = v374;
  v114 = v371;
  *v113 = v370;
  v113[1] = v114;
  sub_1D8AF7F08(v110, v113 + *(v342 + 20), type metadata accessor for DetectionRequest);
  sub_1D8AF7FF0(v357, v96, type metadata accessor for ProcessorState);
  v115 = swift_getEnumCaseMultiPayload();
  if (v115)
  {
    v116 = v360;
    v117 = v356;
    if (v115 == 1)
    {
      v118 = v330;
      sub_1D8AF7F08(v96, v330, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v118, v109, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v118, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      sub_1D8AF7F08(v96, v109, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    sub_1D8AF7F08(v96, v109, type metadata accessor for DetectionRequest);
    v116 = v360;
    v117 = v356;
  }

  v332 = v81;
  v119 = *v109;
  sub_1D8AF7F70(v109, type metadata accessor for DetectionRequest);
  v120 = *v347;
  if (*(*v347 + 16) && (v121 = sub_1D881F7DC(v119), (v122 & 1) != 0))
  {
    v123 = *(v120 + 56) + *(v333 + 72) * v121;
    v124 = v312;
    sub_1D87A0E38(v123, v312, &qword_1ECA65B98);

    (*(v349 + 32))(v359, v124 + *(v334 + 48), v116);
    v125 = v343;
  }

  else
  {
    v126 = v326;
    v127 = v345;
    (*(v326 + 16))(v345, v117 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStreamContinuation, v346);
    v128 = v324;
    v129 = sub_1D8ADB3D8(v324, v127);
    v130 = v349;
    LODWORD(v331) = v119;
    v131 = *(v349 + 16);
    v131(v359, v128, v116);
    v132 = v334;
    v133 = *(v334 + 48);
    v134 = v325;
    *v325 = v129;
    v131((v134 + v133), v128, v116);
    (*(v333 + 56))(v134, 0, 1, v132);
    sub_1D895F624(v134, v331);
    (*(v130 + 8))(v128, v116);
    (*(v126 + 8))(v345, v346);
    v125 = v343;
  }

  v135 = v337;
  v136 = v335;
  v137 = v344;
  (*(v337 + 56))(v335, 1, 1, v344);
  v138 = v350;
  v139 = v355;
  sub_1D8AEB2F8(v357, v358, v136, v355, v354, v350);
  sub_1D87A14E4(v136, &qword_1ECA69170);
  v140 = v138;
  v141 = v336;
  sub_1D87A0E38(v140, v336, &qword_1ECA69170);
  if ((*(v135 + 48))(v141, 1, v137) == 1)
  {
    sub_1D87A14E4(v141, &qword_1ECA69170);
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v291 = sub_1D8B151E0();
    __swift_project_value_buffer(v291, qword_1EE0E4350);
    v292 = sub_1D8B151C0();
    v293 = sub_1D8B16210();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      *v294 = 0;
      _os_log_impl(&dword_1D8783000, v292, v293, "Failed to create request?", v294, 2u);
      MEMORY[0x1DA721330](v294, -1, -1);
    }

    goto LABEL_93;
  }

  v142 = v351;
  sub_1D8AF7F08(v141, v351, type metadata accessor for TrackManager.MatchingComputationRequest);
  sub_1D8AF7FF0(v142, v338, type metadata accessor for TrackManager.MatchingComputationRequest);
  v143 = v348;
  sub_1D8B15EE0();
  v144 = v125;
  v145 = v339;
  v146 = v353;
  (*(v125 + 16))(v339, v143, v353);
  v147 = (*(v125 + 88))(v145, v146);
  v148 = v341;
  if (v147 == *MEMORY[0x1E69E8630])
  {
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v149 = sub_1D8B151E0();
    __swift_project_value_buffer(v149, qword_1EE0E4350);
    v150 = v328;
    sub_1D8AF7FF0(v357, v328, type metadata accessor for ProcessorState);
    v151 = v340;
    v152 = v329;
    (*(v340 + 16))(v329, v358, v139);
    v153 = sub_1D8B151C0();
    v154 = sub_1D8B16200();
    if (!os_log_type_enabled(v153, v154))
    {

      (*(v151 + 8))(v152, v139);
      sub_1D8AF7F70(v150, type metadata accessor for ProcessorState);
      (*(v144 + 8))(v143, v353);
LABEL_40:
      sub_1D8AF7F70(v351, type metadata accessor for TrackManager.MatchingComputationRequest);
      sub_1D87A14E4(v350, &qword_1ECA69170);
      (*(v349 + 8))(v359, v360);
      v205 = type metadata accessor for TrackManager.TrackedProcessorState.Key;
      v206 = v352;
      return sub_1D8AF7F70(v206, v205);
    }

    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *&v364 = v156;
    *v155 = 136315394;
    v157 = v305;
    sub_1D8AF7FF0(v150, v305, type metadata accessor for ProcessorState);
    v158 = swift_getEnumCaseMultiPayload();
    v159 = v144;
    if (v158)
    {
      if (v158 == 1)
      {
        v160 = v157;
        v161 = v330;
        sub_1D8AF7F08(v160, v330, type metadata accessor for DetectionResult);
        v162 = v311;
        sub_1D8AF7FF0(v161, v311, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v161, type metadata accessor for DetectionResult);
LABEL_39:
        v194 = *v162;
        sub_1D8AF7F70(v162, type metadata accessor for DetectionRequest);
        LOBYTE(v363[0]) = v194;
        v195 = CVDetection.DetectionType.description.getter();
        v197 = v196;
        sub_1D8AF7F70(v328, type metadata accessor for ProcessorState);
        v198 = sub_1D89AC714(v195, v197, &v364);

        *(v155 + 4) = v198;
        *(v155 + 12) = 2080;
        v199 = v355;
        v200 = v329;
        v201 = CameraSourceFrame.timeDescription.getter(v355, v354);
        v203 = v202;
        (*(v340 + 8))(v200, v199);
        v204 = sub_1D89AC714(v201, v203, &v364);

        *(v155 + 14) = v204;
        _os_log_impl(&dword_1D8783000, v153, v154, "Enqueued request for %s @ %s", v155, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v156, -1, -1);
        MEMORY[0x1DA721330](v155, -1, -1);

        (*(v159 + 8))(v348, v353);
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
    }

    v162 = v311;
    sub_1D8AF7F08(v157, v311, type metadata accessor for DetectionRequest);
    goto LABEL_39;
  }

  if (v147 == *MEMORY[0x1E69E8628])
  {
    (*(v125 + 96))(v145, v353);
    v163 = v327;
    sub_1D8AF7F08(v145, v327, type metadata accessor for TrackManager.MatchingComputationRequest);
    v139 = v321;
    v164 = *(v321 + 20);
    v165 = v307;
    sub_1D8AF7FF0(v163 + *(v344 + 20), &v307[v164], type metadata accessor for ProcessorState);
    v166 = v163[3];
    v167 = v163[4];
    __swift_project_boxed_opaque_existential_1(v163, v166);
    (*(v167 + 40))(v363, v166, v167);
    v168 = v363[4];
    v165[3] = v363[3];
    v165[4] = v168;
    v169 = v363[2];
    v165[1] = v363[1];
    v165[2] = v169;
    *v165 = v363[0];
    *(v165 + *(v139 + 24)) = 0;
    v170 = v165[4];
    v367 = v165[3];
    v368 = v170;
    v171 = v165[2];
    v365 = v165[1];
    v366 = v171;
    v364 = *v165;
    v172 = v306;
    sub_1D8AF7F08(v165 + v164, v306, type metadata accessor for ProcessorState);
    v173 = swift_getEnumCaseMultiPayload();
    v174 = v356;
    if (v173)
    {
      v175 = v309;
      v176 = v310;
      if (v173 == 1)
      {
        v177 = v172;
        v178 = v330;
        sub_1D8AF7F08(v177, v330, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v178, v175, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v178, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        sub_1D8AF7F08(v172, v175, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v175 = v309;
      sub_1D8AF7F08(v172, v309, type metadata accessor for DetectionRequest);
      v176 = v310;
    }

    sub_1D8AF7F08(v175, v176, type metadata accessor for DetectionRequest);
    v207 = v367;
    v208 = v320;
    v320[2] = v366;
    v208[3] = v207;
    v208[4] = v368;
    v209 = v365;
    *v208 = v364;
    v208[1] = v209;
    sub_1D8AF7F08(v176, v208 + *(v342 + 20), type metadata accessor for DetectionRequest);
    swift_beginAccess();
    LODWORD(i) = swift_isUniquelyReferenced_nonNull_native();
    v211 = v208;
    v212 = v322;
    sub_1D8AF7FF0(v211, v322, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v361 = *(v174 + 200);
    v213 = v361;
    *(v174 + 200) = 0x8000000000000000;
    v179 = sub_1D87F02B0(v212);
    v215 = *(v213 + 16);
    v216 = (v214 & 1) == 0;
    v217 = v215 + v216;
    if (!__OFADD__(v215, v216))
    {
      v218 = v214;
      if (*(v213 + 24) >= v217)
      {
        goto LABEL_47;
      }

      sub_1D897724C(v217, i);
      v219 = sub_1D87F02B0(v322);
      if ((v218 & 1) == (v220 & 1))
      {
        v179 = v219;
        for (i = v319; (v218 & 1) == 0; i = v319)
        {
          while (1)
          {
            v221 = *(i + 56);
            LOBYTE(i) = i + 56;
            v221(v318, 1, 1, v139);
            __break(1u);
LABEL_47:
            if ((i & 1) == 0)
            {
              break;
            }

            i = v319;
            if (v218)
            {
              goto LABEL_49;
            }
          }

          sub_1D896C62C();
        }

LABEL_49:
        v222 = v361;
        v223 = *(i + 72) * v179;
        v224 = v318;
        sub_1D8AF7F08(*(v361 + 56) + v223, v318, type metadata accessor for TrackManager.TrackedProcessorState);
        (*(i + 56))(v224, 0, 1, v139);
        *(v224 + *(v139 + 24)) = 6;
        v225 = v224;
        v226 = v302;
        sub_1D87A0E38(v225, v302, &qword_1ECA65EF0);
        if ((*(i + 48))(v226, 1, v139) == 1)
        {
          sub_1D87A14E4(v226, &qword_1ECA65EF0);
          sub_1D8AF7F70(*(v222 + 48) + *(v303 + 72) * v179, type metadata accessor for TrackManager.TrackedProcessorState.Key);
          sub_1D8AF3434(v179, v222);
        }

        else
        {
          v227 = v296;
          sub_1D8AF7F08(v226, v296, type metadata accessor for TrackManager.TrackedProcessorState);
          sub_1D8AF7F08(v227, *(v222 + 56) + v223, type metadata accessor for TrackManager.TrackedProcessorState);
        }

        v143 = v348;
        sub_1D8AF7F70(v322, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        sub_1D87A14E4(v318, &qword_1ECA65EF0);
        *(v174 + 200) = v222;
        swift_endAccess();
        if (qword_1EE0E4348 == -1)
        {
LABEL_53:
          v228 = sub_1D8B151E0();
          __swift_project_value_buffer(v228, qword_1EE0E4350);
          v229 = v327;
          v230 = v313;
          sub_1D8AF7FF0(v327, v313, type metadata accessor for TrackManager.MatchingComputationRequest);
          v231 = v229;
          v232 = v314;
          sub_1D8AF7FF0(v231, v314, type metadata accessor for TrackManager.MatchingComputationRequest);
          v233 = sub_1D8B151C0();
          v234 = sub_1D8B16210();
          if (!os_log_type_enabled(v233, v234))
          {

            sub_1D8AF7F70(v230, type metadata accessor for TrackManager.MatchingComputationRequest);
            sub_1D8AF7F70(v232, type metadata accessor for TrackManager.MatchingComputationRequest);
            v242 = v360;
LABEL_76:
            v287 = v327;
            v288 = v317;
            sub_1D8AF7FF0(v327, v317, type metadata accessor for TrackManager.MatchingComputationRequest);
            v289 = (v288 + *(v316 + 20));
            *v289 = 0;
            v289[1] = 0;
            v289[2] = 0;
            sub_1D8AD49E8(v288);
            sub_1D8AF7F70(v288, type metadata accessor for TrackManager.MatchingComputationResult);
            sub_1D8AF7F70(v320, type metadata accessor for TrackManager.TrackedProcessorState.Key);
            (*(v144 + 8))(v143, v353);
            v270 = type metadata accessor for TrackManager.MatchingComputationRequest;
            sub_1D8AF7F70(v351, type metadata accessor for TrackManager.MatchingComputationRequest);
            sub_1D87A14E4(v350, &qword_1ECA69170);
            (*(v349 + 8))(v359, v242);
            sub_1D8AF7F70(v352, type metadata accessor for TrackManager.TrackedProcessorState.Key);
            v206 = v287;
LABEL_77:
            v205 = v270;
            return sub_1D8AF7F70(v206, v205);
          }

          v235 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          v362[0] = v236;
          *v235 = 136315394;
          v237 = v297;
          sub_1D8AF7FF0(v230 + *(v344 + 20), v297, type metadata accessor for ProcessorState);
          v238 = swift_getEnumCaseMultiPayload();
          if (v238)
          {
            v239 = v299;
            if (v238 == 1)
            {
              v240 = v237;
              v241 = v330;
              sub_1D8AF7F08(v240, v330, type metadata accessor for DetectionResult);
              sub_1D8AF7FF0(v241, v239, type metadata accessor for DetectionRequest);
              sub_1D8AF7F70(v241, type metadata accessor for DetectionResult);
LABEL_75:
              v275 = *v239;
              sub_1D8AF7F70(v239, type metadata accessor for DetectionRequest);
              LOBYTE(v361) = v275;
              v276 = CVDetection.DetectionType.description.getter();
              v278 = v277;
              sub_1D8AF7F70(v313, type metadata accessor for TrackManager.MatchingComputationRequest);
              v279 = sub_1D89AC714(v276, v278, v362);

              *(v235 + 4) = v279;
              *(v235 + 12) = 2080;
              v280 = v314;
              v281 = v314[3];
              v282 = v314[4];
              __swift_project_boxed_opaque_existential_1(v314, v281);
              v283 = CameraSourceFrame.timeDescription.getter(v281, v282);
              v285 = v284;
              sub_1D8AF7F70(v280, type metadata accessor for TrackManager.MatchingComputationRequest);
              v286 = sub_1D89AC714(v283, v285, v362);

              *(v235 + 14) = v286;
              _os_log_impl(&dword_1D8783000, v233, v234, "Dropping request for %s @ %s", v235, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v236, -1, -1);
              MEMORY[0x1DA721330](v235, -1, -1);

              v144 = v343;
              v242 = v360;
              goto LABEL_76;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

            v274 = v237;
          }

          else
          {
            v274 = v237;
            v239 = v299;
          }

          sub_1D8AF7F08(v274, v239, type metadata accessor for DetectionRequest);
          goto LABEL_75;
        }

LABEL_82:
        swift_once();
        goto LABEL_53;
      }

      goto LABEL_95;
    }

    __break(1u);
    goto LABEL_80;
  }

  v179 = v358;
  v174 = v356;
  if (v147 != *MEMORY[0x1E69E8620])
  {
    while (1)
    {
      *&v364 = 0;
      *(&v364 + 1) = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000019, 0x80000001D8B49130);
      sub_1D8B168A0();
LABEL_93:
      sub_1D8B168C0();
      __break(1u);
    }
  }

  v144 = v315;
  if (qword_1EE0E4348 != -1)
  {
LABEL_80:
    swift_once();
  }

  v180 = sub_1D8B151E0();
  __swift_project_value_buffer(v180, qword_1EE0E4350);
  v181 = v308;
  sub_1D8AF7FF0(v357, v308, type metadata accessor for ProcessorState);
  v182 = v340;
  (*(v340 + 16))(v144, v179, v139);
  v183 = sub_1D8B151C0();
  v184 = v139;
  v185 = sub_1D8B16230();
  if (os_log_type_enabled(v183, v185))
  {
    v186 = v185;
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    *&v364 = v188;
    *v187 = 136315394;
    v189 = v301;
    sub_1D8AF7FF0(v181, v301, type metadata accessor for ProcessorState);
    v190 = swift_getEnumCaseMultiPayload();
    if (v190)
    {
      if (v190 == 1)
      {
        v191 = v189;
        v192 = v330;
        sub_1D8AF7F08(v191, v330, type metadata accessor for DetectionResult);
        v193 = v300;
        sub_1D8AF7FF0(v192, v300, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v192, type metadata accessor for DetectionResult);
LABEL_60:
        v243 = *v193;
        sub_1D8AF7F70(v193, type metadata accessor for DetectionRequest);
        LOBYTE(v363[0]) = v243;
        v244 = CVDetection.DetectionType.description.getter();
        v246 = v245;
        sub_1D8AF7F70(v181, type metadata accessor for ProcessorState);
        v247 = sub_1D89AC714(v244, v246, &v364);

        *(v187 + 4) = v247;
        *(v187 + 12) = 2080;
        v143 = v355;
        v248 = v315;
        v249 = CameraSourceFrame.timeDescription.getter(v355, v354);
        v144 = v250;
        (*(v340 + 8))(v248, v143);
        v251 = sub_1D89AC714(v249, v144, &v364);

        *(v187 + 14) = v251;
        _os_log_impl(&dword_1D8783000, v183, v186, "Terminated request for %s @ %s", v187, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v188, -1, -1);
        MEMORY[0x1DA721330](v187, -1, -1);

        v174 = v356;
        v148 = v341;
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
    }

    v193 = v300;
    sub_1D8AF7F08(v189, v300, type metadata accessor for DetectionRequest);
    goto LABEL_60;
  }

  (*(v182 + 8))(v144, v184);
  sub_1D8AF7F70(v181, type metadata accessor for ProcessorState);
LABEL_61:
  swift_beginAccess();
  LODWORD(j) = swift_isUniquelyReferenced_nonNull_native();
  v253 = v323;
  sub_1D8AF7FF0(v352, v323, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  *&v363[0] = *(v174 + 200);
  v254 = *&v363[0];
  *(v174 + 200) = 0x8000000000000000;
  v256 = sub_1D87F02B0(v253);
  v257 = *(v254 + 16);
  v258 = (v255 & 1) == 0;
  v259 = v257 + v258;
  if (__OFADD__(v257, v258))
  {
    __break(1u);
    goto LABEL_82;
  }

  v260 = v255;
  if (*(v254 + 24) >= v259)
  {
    goto LABEL_66;
  }

  sub_1D897724C(v259, j);
  v261 = sub_1D87F02B0(v323);
  if ((v260 & 1) == (v262 & 1))
  {
    v256 = v261;
    for (j = v304; (v260 & 1) == 0; j = v304)
    {
      while (1)
      {
        (*(v319 + 56))(j, 1, 1, v321);
        __break(1u);
LABEL_66:
        if ((j & 1) == 0)
        {
          break;
        }

        j = v304;
        if (v260)
        {
          goto LABEL_68;
        }
      }

      sub_1D896C62C();
    }

LABEL_68:
    v263 = *&v363[0];
    v264 = v319;
    v265 = *(v319 + 72) * v256;
    sub_1D8AF7F08(*(*&v363[0] + 56) + v265, j, type metadata accessor for TrackManager.TrackedProcessorState);
    v266 = v321;
    (*(v264 + 56))(j, 0, 1, v321);
    *(j + *(v266 + 24)) = 7;
    sub_1D87A0E38(j, v148, &qword_1ECA65EF0);
    if ((*(v264 + 48))(v148, 1, v266) == 1)
    {
      sub_1D87A14E4(v148, &qword_1ECA65EF0);
      sub_1D8AF7F70(*(v263 + 48) + *(v303 + 72) * v256, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF3434(v256, v263);
    }

    else
    {
      v267 = v298;
      sub_1D8AF7F08(v148, v298, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8AF7F08(v267, *(v263 + 56) + v265, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    v268 = v348;
    v269 = v343;
    v270 = type metadata accessor for TrackManager.TrackedProcessorState.Key;
    sub_1D8AF7F70(v323, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D87A14E4(j, &qword_1ECA65EF0);
    *(v174 + 200) = v263;
    swift_endAccess();
    v271 = v351;
    v272 = v317;
    sub_1D8AF7FF0(v351, v317, type metadata accessor for TrackManager.MatchingComputationRequest);
    v273 = (v272 + *(v316 + 20));
    v273[1] = 0;
    v273[2] = 0;
    *v273 = 1;
    sub_1D8AD49E8(v272);
    sub_1D8AF7F70(v272, type metadata accessor for TrackManager.MatchingComputationResult);
    (*(v269 + 8))(v268, v353);
    sub_1D8AF7F70(v271, type metadata accessor for TrackManager.MatchingComputationRequest);
    sub_1D87A14E4(v350, &qword_1ECA69170);
    (*(v349 + 8))(v359, v360);
    v206 = v352;
    goto LABEL_77;
  }

LABEL_95:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8AE030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v279 = a2;
  v280 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v234 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v246 = &v234 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v254 = &v234 - v15;
  v16 = type metadata accessor for DetectionRequest(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v265 = &v234 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v268 = &v234 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v251 = &v234 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v253 = &v234 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v250 = &v234 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v252 = &v234 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v274 = &v234 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v272 = &v234 - v31;
  v277 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v244 = *(v277 - 8);
  v32 = MEMORY[0x1EEE9AC00](v277);
  v267 = &v234 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v256 = &v234 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v255 = (&v234 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v249 = &v234 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v273 = &v234 - v40;
  v281 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v276 = *(v281 - 8);
  v41 = MEMORY[0x1EEE9AC00](v281);
  v243 = &v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v257 = &v234 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v263 = &v234 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v48 = (&v234 - v47);
  v259 = type metadata accessor for AFMResult(0);
  v49 = MEMORY[0x1EEE9AC00](v259);
  v258 = &v234 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = a3;
  v261 = *(a3 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v260 = &v234 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v284 = &v234 - v53;
  v54 = type metadata accessor for ProcessorState(0);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v266 = &v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v248 = &v234 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v247 = &v234 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v271 = &v234 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v270 = &v234 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v234 - v65;
  v67 = type metadata accessor for DetectionResult(0);
  v68 = MEMORY[0x1EEE9AC00](v67);
  v262 = &v234 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v264 = &v234 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v74 = &v234 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v234 - v75;
  v275 = a1;
  sub_1D8AF7FF0(a1, v66, type metadata accessor for ProcessorState);
  v283 = v54;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v245 = v12;
  v269 = v9;
  if (EnumCaseMultiPayload != 1)
  {
    v82 = type metadata accessor for ProcessorState;
    v83 = v66;
    goto LABEL_5;
  }

  v78 = sub_1D8AF7F08(v66, v76, type metadata accessor for DetectionResult);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v279;
  v80 = v280;
  *(&v234 - 4) = v282;
  *(&v234 - 3) = v80;
  *(&v234 - 2) = v79;
  if (sub_1D8AD0880(sub_1D8AFCB20, (&v234 - 6), v81))
  {
    v82 = type metadata accessor for DetectionResult;
    v83 = v76;
LABEL_5:
    sub_1D8AF7F70(v83, v82);
    v84 = v278;
    v85 = v275;
    goto LABEL_6;
  }

  v239 = 0;
  v241 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  v242 = v48;
  sub_1D8AF7FF0(v76, v74, type metadata accessor for DetectionResult);
  v130 = v261;
  v131 = *(v261 + 16);
  v132 = v279;
  v133 = v282;
  v131(v284, v279, v282);
  sub_1D8AF7FF0(v76, v264, type metadata accessor for DetectionResult);
  v240 = v76;
  v134 = v260;
  v131(v260, v132, v133);
  v135 = sub_1D8B151C0();
  v136 = sub_1D8B16220();
  if (os_log_type_enabled(v135, v136))
  {
    v237 = v136;
    v241 = v135;
    v137 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    *&v291[0] = v236;
    *v137 = 136315650;
    LOBYTE(v292) = *v74;
    v138 = CVDetection.DetectionType.description.getter();
    v140 = v139;
    sub_1D8AF7F70(v74, type metadata accessor for DetectionResult);
    v141 = sub_1D89AC714(v138, v140, v291);

    *(v137 + 4) = v141;
    *(v137 + 12) = 2048;
    v142 = v282;
    v143 = v284;
    v144 = CameraSourceFrame.timestamp.getter(v282, v280);
    v145 = *(v130 + 8);
    v261 = v130 + 8;
    v235 = v145;
    v146 = (v145)(v143, v142);
    *(v137 + 14) = v144;
    v238 = v137;
    *(v137 + 22) = 2080;
    v147 = *(v264 + *(v67 + 20));
    v148 = *(v147 + 16);
    v149 = MEMORY[0x1E69E7CC0];
    v48 = v242;
    if (v148)
    {
      *&v286 = MEMORY[0x1E69E7CC0];
      sub_1D87F4140(0, v148, 0);
      v150 = (v147 + 32);
      v149 = v286;
      do
      {
        v151 = *v150 >> 60;
        v284 = (v150 + 1);
        switch(v151)
        {
          case 1:
            v166 = type metadata accessor for GroundedParseDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v166;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for GroundedParseDetectorResult;
            goto LABEL_43;
          case 2:
            v161 = type metadata accessor for MetaDetectionResult();
            v153 = swift_projectBox();
            *(&v293 + 1) = v161;
            *&v294 = sub_1D8AF7D70(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for MetaDetectionResult;
            goto LABEL_43;
          case 3:
          case 8:
            v152 = type metadata accessor for ObjectDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v152;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_43;
          case 4:
            v167 = type metadata accessor for ParseDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v167;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for ParseDetectorResult;
            goto LABEL_43;
          case 5:
            v168 = type metadata accessor for TextDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v168;
            *&v294 = sub_1D8AF7D70(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for TextDetectorResult;
            goto LABEL_43;
          case 6:
          case 7:
            v156 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v156;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_43;
          case 9:
          case 10:
            v157 = swift_projectBox();
            v158 = v258;
            sub_1D8AF7FF0(v157, v258, type metadata accessor for AFMResult);
            *(&v293 + 1) = v259;
            *&v294 = sub_1D8AF7D70(&qword_1EE0E3F80, type metadata accessor for AFMResult);
            v159 = __swift_allocate_boxed_opaque_existential_1(&v292);
            sub_1D8AF7F08(v158, v159, type metadata accessor for AFMResult);
            break;
          case 11:
            v160 = type metadata accessor for SyntheticDetectionResult();
            v153 = swift_projectBox();
            *(&v293 + 1) = v160;
            *&v294 = sub_1D8AF7D70(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_43;
          case 12:
            v162 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v162;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_43;
          case 13:
            v169 = type metadata accessor for GroundedParseClassificationsResult(0);
            v153 = swift_projectBox();
            *(&v293 + 1) = v169;
            *&v294 = sub_1D8AF7D70(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v292);
            v155 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_43:
            sub_1D8AF7FF0(v153, boxed_opaque_existential_1, v155);
            break;
          default:
            v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
            v164 = swift_projectBox();
            *(&v293 + 1) = v163;
            *&v294 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
            v165 = __swift_allocate_boxed_opaque_existential_1(&v292);
            sub_1D87A0E38(v164, v165, &qword_1ECA67750);
            break;
        }

        v171 = *(&v293 + 1);
        v170 = v294;
        __swift_project_boxed_opaque_existential_1(&v292, *(&v293 + 1));
        v172 = *(v170 + 88);

        v173 = v172(v171, v170);
        __swift_destroy_boxed_opaque_existential_1(&v292);

        *&v286 = v149;
        v175 = *(v149 + 16);
        v174 = *(v149 + 24);
        if (v175 >= v174 >> 1)
        {
          v146 = sub_1D87F4140((v174 > 1), v175 + 1, 1);
          v149 = v286;
        }

        *(v149 + 16) = v175 + 1;
        *(v149 + 8 * v175 + 32) = v173;
        --v148;
        v150 = v284;
      }

      while (v148);
    }

    MEMORY[0x1EEE9AC00](v146);
    v109 = v282;
    v187 = v280;
    *(&v234 - 4) = v282;
    *(&v234 - 3) = v187;
    *(&v234 - 2) = v188;
    v189 = sub_1D87C72D4(sub_1D8AFCB44, (&v234 - 6), v149);
    v190 = sub_1D87C57C0(v189);

    v191 = *(v190 + 16);
    if (v191)
    {
      v192 = sub_1D87F38D4(*(v190 + 16), 0);
      v193 = sub_1D8818A80(&v292, v192 + 4, v191, v190);
      sub_1D87977A0();
      v84 = v278;
      v85 = v275;
      v91 = v261;
      if (v193 != v191)
      {
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {

      v192 = MEMORY[0x1E69E7CC0];
      v84 = v278;
      v85 = v275;
    }

    sub_1D8AF7F70(v264, type metadata accessor for DetectionResult);
    v235(v260, v109);
    v203 = MEMORY[0x1DA71F1E0](v192, MEMORY[0x1E69E63B0]);
    v205 = v204;

    v206 = sub_1D89AC714(v203, v205, v291);

    v207 = v238;
    *(v238 + 24) = v206;
    v208 = v241;
    _os_log_impl(&dword_1D8783000, v241, v237, "ProcessorState results.timestamps for %s do not match frame; expecting %f but got %s", v207, 0x20u);
    v209 = v236;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v209, -1, -1);
    MEMORY[0x1DA721330](v207, -1, -1);

    sub_1D8AF7F70(v240, type metadata accessor for DetectionResult);
  }

  else
  {
    sub_1D8AF7F70(v264, type metadata accessor for DetectionResult);
    v184 = *(v130 + 8);
    v185 = v134;
    v186 = v282;
    v184(v185, v282);

    v184(v284, v186);
    sub_1D8AF7F70(v74, type metadata accessor for DetectionResult);
    sub_1D8AF7F70(v240, type metadata accessor for DetectionResult);
    v84 = v278;
    v85 = v275;
    v48 = v242;
  }

LABEL_6:
  v86 = v270;
  sub_1D8AF7FF0(v85, v270, type metadata accessor for ProcessorState);
  v87 = swift_getEnumCaseMultiPayload();
  v88 = type metadata accessor for ProcessorState;
  if (v87)
  {
    if (v87 == 1)
    {
      v89 = 3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v89 = 2;
      v88 = type metadata accessor for DetectionRequest;
    }
  }

  else
  {
    v89 = 1;
    v88 = type metadata accessor for ProcessorState;
  }

  sub_1D8AF7F70(v86, v88);
  v90 = v281;
  v91 = *(v281 + 20);
  sub_1D8AF7FF0(v85, v48 + v91, type metadata accessor for ProcessorState);
  (*(v280 + 40))(v291, v282);
  v92 = v291[3];
  v48[2] = v291[2];
  v48[3] = v92;
  v48[4] = v291[4];
  v93 = v291[1];
  *v48 = v291[0];
  v48[1] = v93;
  *(v48 + *(v90 + 24)) = v89;
  v94 = v48[3];
  v294 = v48[2];
  v295 = v94;
  v296 = v48[4];
  v95 = v48[1];
  v292 = *v48;
  v293 = v95;
  v96 = v271;
  sub_1D8AF7FF0(v48 + v91, v271, type metadata accessor for ProcessorState);
  v97 = swift_getEnumCaseMultiPayload();
  if (v97)
  {
    v99 = v272;
    v98 = v273;
    if (v97 == 1)
    {
      v100 = v96;
      v101 = v262;
      sub_1D8AF7F08(v100, v262, type metadata accessor for DetectionResult);
      v102 = v274;
      sub_1D8AF7FF0(v101, v274, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v101, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v102 = v274;
      sub_1D8AF7F08(v96, v274, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    v102 = v274;
    sub_1D8AF7F08(v96, v274, type metadata accessor for DetectionRequest);
    v99 = v272;
    v98 = v273;
  }

  sub_1D8AF7F08(v102, v99, type metadata accessor for DetectionRequest);
  v103 = v295;
  v98[2] = v294;
  v98[3] = v103;
  v98[4] = v296;
  v104 = v293;
  *v98 = v292;
  v98[1] = v104;
  v105 = v277;
  sub_1D8AF7F08(v99, v98 + *(v277 + 20), type metadata accessor for DetectionRequest);
  swift_beginAccess();
  v106 = *(v84 + 200);
  if (!*(v106 + 16))
  {
LABEL_25:
    sub_1D8AF7F70(v98, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v123 = v48[3];
    v288 = v48[2];
    v289 = v123;
    v290 = v48[4];
    v124 = v48[1];
    v286 = *v48;
    v287 = v124;
    v125 = v266;
    sub_1D8AF7FF0(v48 + v91, v266, type metadata accessor for ProcessorState);
    v126 = swift_getEnumCaseMultiPayload();
    if (v126)
    {
      v127 = v265;
      if (v126 == 1)
      {
        v128 = v125;
        v129 = v262;
        sub_1D8AF7F08(v128, v262, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v129, v127, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v129, type metadata accessor for DetectionResult);
LABEL_51:
        v177 = v127;
        v178 = v268;
        sub_1D8AF7F08(v177, v268, type metadata accessor for DetectionRequest);
        v179 = v289;
        v180 = v267;
        *(v267 + 2) = v288;
        v180[3] = v179;
        v180[4] = v290;
        v181 = v287;
        *v180 = v286;
        v180[1] = v181;
        sub_1D8AF7F08(v178, v180 + *(v105 + 20), type metadata accessor for DetectionRequest);
        v182 = v269;
        sub_1D8AF7FF0(v48, v269, type metadata accessor for TrackManager.TrackedProcessorState);
        (*(v276 + 56))(v182, 0, 1, v281);
        swift_beginAccess();
        sub_1D895F878(v182, v180);
        swift_endAccess();
        v183 = v48;
        return sub_1D8AF7F70(v183, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v176 = v125;
    }

    else
    {
      v176 = v125;
      v127 = v265;
    }

    sub_1D8AF7F08(v176, v127, type metadata accessor for DetectionRequest);
    goto LABEL_51;
  }

  v107 = sub_1D87F02B0(v98);
  if ((v108 & 1) == 0)
  {

    goto LABEL_25;
  }

  v109 = *(v276 + 72);
  v110 = v257;
  sub_1D8AF7FF0(*(v106 + 56) + v109 * v107, v257, type metadata accessor for TrackManager.TrackedProcessorState);
  sub_1D8AF7F70(v98, type metadata accessor for TrackManager.TrackedProcessorState.Key);

  v111 = v263;
  sub_1D8AF7F08(v110, v263, type metadata accessor for TrackManager.TrackedProcessorState);
  if (*(v111 + *(v281 + 24)) != 1)
  {
    goto LABEL_78;
  }

  if (v89 != 3)
  {
    if (v89 == 2)
    {
      v112 = v48[3];
      v288 = v48[2];
      v289 = v112;
      v290 = v48[4];
      v113 = v48[1];
      v286 = *v48;
      v287 = v113;
      v114 = v247;
      sub_1D8AF7FF0(v48 + v91, v247, type metadata accessor for ProcessorState);
      v115 = swift_getEnumCaseMultiPayload();
      v116 = v277;
      if (v115)
      {
        v117 = v254;
        v118 = v252;
        v120 = v249;
        v119 = v250;
        if (v115 == 1)
        {
          v121 = v114;
          v122 = v262;
          sub_1D8AF7F08(v121, v262, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v122, v119, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v122, type metadata accessor for DetectionResult);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

          sub_1D8AF7F08(v114, v119, type metadata accessor for DetectionRequest);
        }
      }

      else
      {
        v119 = v250;
        sub_1D8AF7F08(v114, v250, type metadata accessor for DetectionRequest);
        v117 = v254;
        v118 = v252;
        v120 = v249;
      }

      sub_1D8AF7F08(v119, v118, type metadata accessor for DetectionRequest);
      v210 = v289;
      v120[2] = v288;
      v120[3] = v210;
      v120[4] = v290;
      v211 = v287;
      *v120 = v286;
      v120[1] = v211;
      sub_1D8AF7F08(v118, v120 + *(v116 + 20), type metadata accessor for DetectionRequest);
      swift_beginAccess();
      sub_1D8AF073C(v120, v117);
      sub_1D8AF7F70(v120, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D87A14E4(v117, &qword_1ECA65EF0);
LABEL_77:
      swift_endAccess();
    }

LABEL_78:
    sub_1D8AF7F70(v263, type metadata accessor for TrackManager.TrackedProcessorState);
    v183 = v48;
    return sub_1D8AF7F70(v183, type metadata accessor for TrackManager.TrackedProcessorState);
  }

LABEL_56:
  v194 = v48[3];
  v288 = v48[2];
  v289 = v194;
  v290 = v48[4];
  v195 = v48[1];
  v286 = *v48;
  v287 = v195;
  v196 = v248;
  sub_1D8AF7FF0(v48 + v91, v248, type metadata accessor for ProcessorState);
  v197 = swift_getEnumCaseMultiPayload();
  if (v197)
  {
    v198 = v253;
    v199 = v251;
    v200 = v277;
    if (v197 == 1)
    {
      v201 = v196;
      v202 = v262;
      sub_1D8AF7F08(v201, v262, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v202, v199, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v202, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      sub_1D8AF7F08(v196, v199, type metadata accessor for DetectionRequest);
    }
  }

  else
  {
    v199 = v251;
    sub_1D8AF7F08(v196, v251, type metadata accessor for DetectionRequest);
    v198 = v253;
    v200 = v277;
  }

  sub_1D8AF7F08(v199, v198, type metadata accessor for DetectionRequest);
  v212 = v289;
  v213 = v255;
  v255[2] = v288;
  v213[3] = v212;
  v213[4] = v290;
  v214 = v287;
  *v213 = v286;
  v213[1] = v214;
  sub_1D8AF7F08(v198, v213 + *(v200 + 20), type metadata accessor for DetectionRequest);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v216 = v213;
  v217 = v256;
  sub_1D8AF7FF0(v216, v256, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  v285 = *(v84 + 200);
  v218 = v285;
  *(v84 + 200) = 0x8000000000000000;
  v220 = sub_1D87F02B0(v217);
  v221 = *(v218 + 16);
  v222 = (v219 & 1) == 0;
  v223 = v221 + v222;
  if (__OFADD__(v221, v222))
  {
    __break(1u);
    goto LABEL_81;
  }

  LOBYTE(v198) = v219;
  if (*(v218 + 24) >= v223)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v226 = v246;
      if (v219)
      {
        goto LABEL_73;
      }

LABEL_82:
      (*(v276 + 56))(v226, 1, 1, v281);
      __break(1u);
      goto LABEL_83;
    }

LABEL_81:
    sub_1D896C62C();
    v226 = v246;
    if (v198)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

  sub_1D897724C(v223, isUniquelyReferenced_nonNull_native);
  v224 = sub_1D87F02B0(v256);
  if ((v198 & 1) == (v225 & 1))
  {
    v220 = v224;
    v226 = v246;
    if ((v198 & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_73:
    v227 = v285;
    v228 = v220 * v109;
    sub_1D8AF7F08(*(v285 + 56) + v220 * v109, v226, type metadata accessor for TrackManager.TrackedProcessorState);
    v229 = v276;
    v230 = v281;
    (*(v276 + 56))(v226, 0, 1, v281);
    *(v226 + *(v230 + 24)) = 3;
    v231 = v245;
    sub_1D87A0E38(v226, v245, &qword_1ECA65EF0);
    if ((*(v229 + 48))(v231, 1, v230) == 1)
    {
      sub_1D87A14E4(v231, &qword_1ECA65EF0);
      sub_1D8AF7F70(*(v227 + 48) + *(v244 + 72) * v220, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF3434(v220, v227);
    }

    else
    {
      v232 = v243;
      sub_1D8AF7F08(v231, v243, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8AF7F08(v232, *(v227 + 56) + v228, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    sub_1D8AF7F70(v256, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D8AF7F70(v255, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D87A14E4(v226, &qword_1ECA65EF0);
    *(v84 + 200) = v227;
    goto LABEL_77;
  }

LABEL_83:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

BOOL sub_1D8AE20E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *a1;
  CVDetection.detection.getter(v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 88))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8 == CameraSourceFrame.timestamp.getter(a3, a4);
}

void *sub_1D8AE21A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(v4 + 192);
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;

  return sub_1D87C7118(sub_1D8AFCAFC, v11, v9);
}

uint64_t sub_1D8AE2238(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (*(*(*a1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64) == 1)
  {
    return 0;
  }

  CVTrackedDetection.latestDetection.getter(&v15);
  v14 = v15;
  CVDetection.detectionType.getter(&v13);

  if (v13 != *a2)
  {
    return 0;
  }

  v10 = *(v5 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
  if (v10 > CameraSourceFrame.timestamp.getter(a4, a5))
  {
    return 0;
  }

  CVTrackedDetection.latestEstimate.getter(&v15);
  v14 = v15;
  v11 = sub_1D8A5BE40();

  if (!v11)
  {
    return 1;
  }

  result = sub_1D8AD28E4();
  if (result)
  {
    v12 = sub_1D8AC5768(result, v11);

    return v12 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8AE238C(uint64_t a1, uint64_t *a2)
{
  v187 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v190 = v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v208 = v178 - v7;
  v214 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v206 = *(v214 - 8);
  v8 = MEMORY[0x1EEE9AC00](v214);
  v186 = v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v193 = v178 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v202 = v178 - v12;
  v201 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v185 = *(v201 - 8);
  v13 = MEMORY[0x1EEE9AC00](v201);
  v192 = v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v213 = (v178 - v15);
  v16 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v203 = v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DetectionRequest(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v180 = v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v200 = v178 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v199 = v178 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v198 = v178 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v197 = v178 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v196 = v178 - v29;
  v222 = type metadata accessor for ProcessorState(0);
  v216 = *(v222 - 8);
  v30 = MEMORY[0x1EEE9AC00](v222);
  v204 = v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v188 = v178 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v210 = v178 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = v178 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = v178 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = v178 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v223 = v178 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v215 = v178 - v47;
  v48 = *(a1 + 40);
  v49 = v48 + 56;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v48 + 56);
  v184 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  v217 = a1;
  v218 = v48;

  v53 = v2;
  swift_beginAccess();
  v54 = 0;
  v55 = 0;
  v221 = v44;
  v194 = v44 + 8;
  v195 = v41;
  v209 = v38;
  v182 = v210 + 8;
  v183 = v38 + 8;
  v178[1] = v204 + 8;
  v181 = v41 + 8;
  v56 = v52;
  v57 = (v50 + 63) >> 6;
  v191 = (v206 + 56);
  v189 = (v206 + 48);
  *&v58 = 136315394;
  v179 = v58;
  v211 = v57;
  v212 = v49;
  v207 = v53;
  while (v56)
  {
    v62 = v223;
LABEL_15:
    v219 = v54;
    v64 = v215;
    sub_1D8AF7FF0(*(v218 + 48) + *(v216 + 72) * (__clz(__rbit64(v56)) | (v54 << 6)), v215, type metadata accessor for ProcessorState);
    sub_1D8AF7F08(v64, v62, type metadata accessor for ProcessorState);
    sub_1D87C1470(v217, v236);
    v65 = v237;
    v66 = v238;
    v67 = __swift_project_boxed_opaque_existential_1(v236, v237);
    sub_1D8AE030C(v62, v67, v65, v66);
    sub_1D8AF7FF0(v62, v221, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v220 = (v56 - 1) & v56;
    if (!EnumCaseMultiPayload)
    {
      v82 = v237;
      v83 = v238;
      v84 = __swift_project_boxed_opaque_existential_1(v236, v237);
      v85 = v195;
      sub_1D8AF7FF0(v62, v195, type metadata accessor for ProcessorState);
      v86 = swift_getEnumCaseMultiPayload();
      if (v86)
      {
        v87 = v197;
        if (v86 == 1)
        {
          v88 = v85;
          v89 = v203;
          sub_1D8AF7F08(v88, v203, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v89, v87, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v89, type metadata accessor for DetectionResult);
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        v96 = v85;
      }

      else
      {
        v96 = v85;
        v87 = v197;
      }

      sub_1D8AF7F08(v96, v87, type metadata accessor for DetectionRequest);
LABEL_49:
      v144 = v196;
      sub_1D8AF7F08(v87, v196, type metadata accessor for DetectionRequest);
      v145 = sub_1D8AE21A8(v144, v84, v82, v83);
      sub_1D8AF7F70(v144, type metadata accessor for DetectionRequest);
      if (v145 >> 62)
      {
        v146 = sub_1D8B16610();
        if (!v146)
        {
          goto LABEL_4;
        }

LABEL_51:
        if (v146 < 1)
        {
          goto LABEL_103;
        }

        v59 = v53;
        v147 = 0;
        do
        {
          if ((v145 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1DA71FC20](v147, v145);
          }

          else
          {
          }

          ++v147;
          v148 = v237;
          v149 = v238;
          v150 = __swift_project_boxed_opaque_existential_1(v236, v237);
          sub_1D8AC9AF0(1, v150, v148, v149);
        }

        while (v146 != v147);
      }

      else
      {
        v146 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v146)
        {
          goto LABEL_51;
        }

LABEL_4:
        v59 = v53;
      }

      sub_1D8AF7F70(v223, type metadata accessor for ProcessorState);
      v60 = v221;
      v61 = type metadata accessor for ProcessorState;
LABEL_6:
      sub_1D8AF7F70(v60, v61);
      v53 = v59;
      v57 = v211;
      v49 = v212;
      v56 = v220;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v90 = v237;
      v91 = v238;
      v92 = __swift_project_boxed_opaque_existential_1(v236, v237);
      sub_1D8AF7FF0(v62, v209, type metadata accessor for ProcessorState);
      v93 = swift_getEnumCaseMultiPayload();
      if (v93)
      {
        v94 = v198;
        if (v93 == 1)
        {
          v95 = v203;
          sub_1D8AF7F08(v209, v203, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v95, v94, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v95, type metadata accessor for DetectionResult);
          goto LABEL_60;
        }

        v151 = v209;
      }

      else
      {
        v151 = v209;
        v94 = v198;
      }

      sub_1D8AF7F08(v151, v94, type metadata accessor for DetectionRequest);
LABEL_60:
      v152 = sub_1D8AE21A8(v94, v92, v90, v91);
      sub_1D8AF7F70(v94, type metadata accessor for DetectionRequest);
      *&v231 = MEMORY[0x1E69E7CC0];
      if (v152 >> 62)
      {
        v153 = sub_1D8B16610();
        v154 = &unk_1EE0E6000;
        if (v153)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v153 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v154 = &unk_1EE0E6000;
        if (v153)
        {
LABEL_62:
          v155 = 0;
          v224 = v152 & 0xC000000000000001;
          do
          {
            if (v224)
            {
              v156 = MEMORY[0x1DA71FC20](v155, v152);
              v157 = v155 + 1;
              if (__OFADD__(v155, 1))
              {
                goto LABEL_98;
              }
            }

            else
            {
              if (v155 >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_99;
              }

              v156 = *(v152 + 8 * v155 + 32);

              v157 = v155 + 1;
              if (__OFADD__(v155, 1))
              {
                goto LABEL_98;
              }
            }

            v158 = sub_1D8AC0E90(*(v156 + v154[88]));
            sub_1D891FD78(v158, v230);

            if (LOBYTE(v230[0]))
            {
            }

            else
            {
              sub_1D8B167E0();
              sub_1D8B16820();
              v154 = &unk_1EE0E6000;
              sub_1D8B16830();
              sub_1D8B167F0();
            }

            ++v155;
          }

          while (v157 != v153);
          v159 = v231;
          v53 = v207;
LABEL_84:

          if (v159 < 0 || (v159 & 0x4000000000000000) != 0)
          {
            v173 = sub_1D8B16610();
            if (!v173)
            {
              goto LABEL_94;
            }

LABEL_87:
            if (v173 < 1)
            {
              goto LABEL_104;
            }

            v59 = v53;
            v174 = 0;
            do
            {
              if ((v159 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1DA71FC20](v174, v159);
              }

              else
              {
              }

              ++v174;
              v175 = v237;
              v176 = v238;
              __swift_project_boxed_opaque_existential_1(v236, v237);
              *&v231 = CameraSourceFrame.timestamp.getter(v175, v176);
              BYTE8(v231) = 34;
              sub_1D8AC9B48(&v231);
            }

            while (v173 != v174);
          }

          else
          {
            v173 = *(v159 + 16);
            if (v173)
            {
              goto LABEL_87;
            }

LABEL_94:
            v59 = v53;
          }

          sub_1D8AF7F70(v223, type metadata accessor for ProcessorState);
          v61 = type metadata accessor for DetectionRequest;
          v60 = v221;
          goto LABEL_6;
        }
      }

      v159 = MEMORY[0x1E69E7CC0];
      goto LABEL_84;
    }

    v69 = v214;
    v70 = *(v214 + 20);
    v71 = v202;
    sub_1D8AF7FF0(v62, &v202[v70], type metadata accessor for ProcessorState);
    v72 = v237;
    v73 = v238;
    __swift_project_boxed_opaque_existential_1(v236, v237);
    (*(v73 + 40))(v230, v72, v73);
    v74 = v230[4];
    v71[3] = v230[3];
    v71[4] = v74;
    v75 = v230[2];
    v71[1] = v230[1];
    v71[2] = v75;
    *v71 = v230[0];
    *(v71 + *(v69 + 24)) = 0;
    v76 = v71[4];
    v234 = v71[3];
    v235 = v76;
    v77 = v71[2];
    v232 = v71[1];
    v233 = v77;
    v231 = *v71;
    sub_1D8AF7F08(v71 + v70, v210, type metadata accessor for ProcessorState);
    v78 = swift_getEnumCaseMultiPayload();
    if (v78)
    {
      v79 = v213;
      v80 = v200;
      if (v78 == 1)
      {
        v81 = v203;
        sub_1D8AF7F08(v210, v203, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v81, v80, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v81, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        sub_1D8AF7F08(v210, v80, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v80 = v200;
      sub_1D8AF7F08(v210, v200, type metadata accessor for DetectionRequest);
      v79 = v213;
    }

    v97 = v80;
    v98 = v199;
    sub_1D8AF7F08(v97, v199, type metadata accessor for DetectionRequest);
    v99 = v234;
    v79[2] = v233;
    v79[3] = v99;
    v79[4] = v235;
    v100 = v232;
    *v79 = v231;
    v79[1] = v100;
    sub_1D8AF7F08(v98, v79 + *(v201 + 20), type metadata accessor for DetectionRequest);
    v101 = *(v53 + 200);
    if (!*(v101 + 16))
    {
      goto LABEL_100;
    }

    v102 = sub_1D87F02B0(v79);
    if ((v103 & 1) == 0)
    {
      goto LABEL_101;
    }

    v104 = v53;
    v105 = *(v206 + 72);
    v106 = v193;
    sub_1D8AF7FF0(*(v101 + 56) + v105 * v102, v193, type metadata accessor for TrackManager.TrackedProcessorState);

    v107 = *(v106 + *(v214 + 24));
    sub_1D8AF7F70(v106, type metadata accessor for TrackManager.TrackedProcessorState);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v192;
    sub_1D8AF7FF0(v213, v192, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v229 = *(v104 + 200);
    v110 = v229;
    *(v104 + 200) = 0x8000000000000000;
    v112 = sub_1D87F02B0(v109);
    v113 = *(v110 + 16);
    v114 = (v111 & 1) == 0;
    v115 = v113 + v114;
    if (__OFADD__(v113, v114))
    {
      goto LABEL_102;
    }

    v116 = v111;
    v117 = *(v110 + 24);
    v205 = v55;
    if (v117 >= v115)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D896C62C();
      }
    }

    else
    {
      sub_1D897724C(v115, isUniquelyReferenced_nonNull_native);
      v118 = sub_1D87F02B0(v109);
      if ((v116 & 1) != (v119 & 1))
      {
        goto LABEL_106;
      }

      v112 = v118;
    }

    if ((v116 & 1) == 0)
    {
      goto LABEL_105;
    }

    v120 = v107;
    v121 = v229;
    v122 = v112 * v105;
    v123 = v208;
    sub_1D8AF7F08(*(v229 + 56) + v112 * v105, v208, type metadata accessor for TrackManager.TrackedProcessorState);
    v124 = v214;
    (*v191)(v123, 0, 1, v214);
    *(v123 + *(v124 + 24)) = 4;
    v125 = v190;
    sub_1D87A0E38(v123, v190, &qword_1ECA65EF0);
    if ((*v189)(v125, 1, v124) == 1)
    {
      sub_1D87A14E4(v125, &qword_1ECA65EF0);
      sub_1D8AF7F70(*(v121 + 48) + *(v185 + 72) * v112, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF3434(v112, v121);
    }

    else
    {
      v126 = v186;
      sub_1D8AF7F08(v125, v186, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8AF7F08(v126, *(v121 + 56) + v122, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    v127 = v109;
    v128 = v213;
    v129 = v223;
    v130 = v120;
    sub_1D8AF7F70(v127, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D87A14E4(v208, &qword_1ECA65EF0);
    v131 = v207;
    *(v207 + 200) = v121;
    swift_endAccess();
    if (v130 != 4)
    {
      v141 = v237;
      v142 = v238;
      v143 = __swift_project_boxed_opaque_existential_1(v236, v237);
      v53 = v131;
      sub_1D8ADDB94(v129, v143, v187, v141, v142);
      sub_1D8AF7F70(v128, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF7F70(v129, type metadata accessor for ProcessorState);
      sub_1D8AF7F70(v221, type metadata accessor for ProcessorState);
      v57 = v211;
      v49 = v212;
      v56 = v220;
      v55 = v205;
      goto LABEL_7;
    }

    v132 = v188;
    sub_1D8AF7FF0(v129, v188, type metadata accessor for ProcessorState);
    sub_1D87C1470(v236, v226);
    v133 = sub_1D8B151C0();
    v134 = sub_1D8B16210();
    v135 = os_log_type_enabled(v133, v134);
    v55 = v205;
    if (v135)
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v229 = v137;
      *v136 = v179;
      sub_1D8AF7FF0(v132, v204, type metadata accessor for ProcessorState);
      v138 = swift_getEnumCaseMultiPayload();
      v224 = v137;
      if (v138)
      {
        v139 = v180;
        if (v138 == 1)
        {
          v140 = v203;
          sub_1D8AF7F08(v204, v203, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v140, v139, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v140, type metadata accessor for DetectionResult);
LABEL_78:
          v161 = *v139;
          sub_1D8AF7F70(v139, type metadata accessor for DetectionRequest);
          v225 = v161;
          v162 = CVDetection.DetectionType.description.getter();
          v164 = v163;
          sub_1D8AF7F70(v188, type metadata accessor for ProcessorState);
          v165 = sub_1D89AC714(v162, v164, &v229);

          *(v136 + 4) = v165;
          *(v136 + 12) = 2080;
          v166 = v227;
          v167 = v228;
          __swift_project_boxed_opaque_existential_1(v226, v227);
          v168 = CameraSourceFrame.timeDescription.getter(v166, v167);
          v170 = v169;
          __swift_destroy_boxed_opaque_existential_1(v226);
          v171 = sub_1D89AC714(v168, v170, &v229);

          *(v136 + 14) = v171;
          _os_log_impl(&dword_1D8783000, v133, v134, "Already sent DRQ %s at %s for matching. Skipping...", v136, 0x16u);
          v172 = v224;
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v172, -1, -1);
          MEMORY[0x1DA721330](v136, -1, -1);

          sub_1D8AF7F70(v128, type metadata accessor for TrackManager.TrackedProcessorState.Key);
          sub_1D8AF7F70(v129, type metadata accessor for ProcessorState);
          v53 = v207;
          goto LABEL_79;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        v160 = v204;
      }

      else
      {
        v160 = v204;
        v139 = v180;
      }

      sub_1D8AF7F08(v160, v139, type metadata accessor for DetectionRequest);
      goto LABEL_78;
    }

    v53 = v131;

    sub_1D8AF7F70(v132, type metadata accessor for ProcessorState);
    sub_1D8AF7F70(v128, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D8AF7F70(v129, type metadata accessor for ProcessorState);
    __swift_destroy_boxed_opaque_existential_1(v226);
LABEL_79:
    v57 = v211;
    v49 = v212;
    v56 = v220;
    sub_1D8AF7F70(v221, type metadata accessor for ProcessorState);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v236);
    v54 = v219;
  }

  v62 = v223;
  while (1)
  {
    v63 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v63 >= v57)
    {
    }

    v56 = *(v49 + 8 * v63);
    ++v54;
    if (v56)
    {
      v54 = v63;
      goto LABEL_15;
    }
  }

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
  (*v191)(v208, 1, 1, v214);
  __break(1u);
LABEL_106:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8AE3964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130);
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v43 = v3;
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69198);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v48 = v0;
  v17 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 24))(ObjectType, v18);
    swift_unknownObjectRelease();
    v42 = *(v8 + 32);
    v42(v16, v14, v7);
    v20 = sub_1D8B15EA0();
    v21 = v47;
    (*(*(v20 - 8) + 56))(v47, 1, 1, v20);
    v22 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v11, v16, v7);
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v42((v24 + v23), v11, v7);
    *(v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    sub_1D8891CA0(0, 0, v21, &unk_1D8B3ECF8, v24);

    (*(v8 + 8))(v16, v7);
  }

  v25 = v45;
  v26 = v46;
  v27 = *(v45 + 16);
  v28 = v49;
  v27(v49, v48 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStream, v46);
  v29 = sub_1D8B15EA0();
  v30 = *(v29 - 8);
  v41 = *(v30 + 56);
  v42 = (v30 + 56);
  v31 = v47;
  v41(v47, 1, 1, v29);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v44;
  v27(v44, v28, v26);
  v34 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v35 = (v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  (*(v25 + 32))(v36 + v34, v33, v26);
  *(v36 + v35) = v32;
  sub_1D8891CA0(0, 0, v31, &unk_1D8B3ED08, v36);

  v41(v31, 1, 1, v29);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  sub_1D8891F60(0, 0, v31, &unk_1D8B3ED18, v38);

  return (*(v25 + 8))(v49, v26);
}

uint64_t sub_1D8AE3EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691B0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8AE3FA8, 0, 0);
}

uint64_t sub_1D8AE3FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69198);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE4090;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v2);
}

uint64_t sub_1D8AE4090()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8AE418C, 0, 0);
}

uint64_t sub_1D8AE418C()
{
  v1 = v0[5];
  v0[12] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1D8AE4280, Strong, 0);
    }

    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8AE4280()
{
  sub_1D8AE662C(*(v0 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1D8AE42F4, 0, 0);
}

uint64_t sub_1D8AE42F4()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE4090;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v2);
}

uint64_t sub_1D8AE43A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for TrackManager.MatchingComputationResult(0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691A0);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691A8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8AE4504, 0, 0);
}

uint64_t sub_1D8AE4504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE45E8;
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1D8AE45E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8AE46E4, 0, 0);
}

uint64_t sub_1D8AE46E4()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) != 1)
  {
    sub_1D8AF7F08(v1, v0[9], type metadata accessor for TrackManager.MatchingComputationResult);
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1D8AE4834, Strong, 0);
    }

    sub_1D8AF7F70(v0[9], type metadata accessor for TrackManager.MatchingComputationResult);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8AE4834()
{
  sub_1D8AD49E8(*(v0 + 72));

  return MEMORY[0x1EEE6DFA0](sub_1D8AE48A0, 0, 0);
}

uint64_t sub_1D8AE48A0()
{
  v1 = v0[9];

  sub_1D8AF7F70(v1, type metadata accessor for TrackManager.MatchingComputationResult);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1D8AE45E8;
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v4);
}

uint64_t sub_1D8AE496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8AE498C, 0, 0);
}

uint64_t sub_1D8AE498C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8AE4A50, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D8AE4A50()
{
  v1 = *(v0 + 56);
  v2 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928);
  sub_1D8AE5038(v2 + *(v3 + 28), v1);
  os_unfair_lock_unlock(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D8AFD488, 0, 0);
}

uint64_t sub_1D8AE4B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69248);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8AE4C04, 0, 0);
}

uint64_t sub_1D8AE4C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE4CEC;
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1D8AE4CEC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8AE4DE8, 0, 0);
}

uint64_t sub_1D8AE4DE8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v1;
    *(v0 + 96) = *(v0 + 48);
    if ((sub_1D8B15F90() & 1) == 0)
    {
      Strong = swift_weakLoadStrong();
      *(v0 + 184) = Strong;
      if (Strong)
      {
        v3 = Strong;
        v4 = *(v0 + 88);
        *(v0 + 192) = v4;
        v5 = __swift_project_boxed_opaque_existential_1((v0 + 64), v4);
        v6 = *(v0 + 104);
        *(v0 + 208) = v5;
        *(v0 + 216) = v6;

        return MEMORY[0x1EEE6DFA0](sub_1D8AE4F10, v3, 0);
      }
    }

    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    sub_1D8AFC6D4(v0 + 64);
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D8AE4F10()
{
  sub_1D8AE8FF8(v0[26], v0[27], v0[24], v0[25]);

  return MEMORY[0x1EEE6DFA0](sub_1D8AE4F80, 0, 0);
}

uint64_t sub_1D8AE4F80()
{

  sub_1D8AFC6D4(v0 + 64);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE4CEC;
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1D8AE5038(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69240);
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v62 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v78 = v62 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918);
  v16 = *(v77 - 8);
  v17 = MEMORY[0x1EEE9AC00](v77);
  v66 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = v62 - v19;
  v20 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v67 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v62 - v23;
  v76 = a1;
  sub_1D8AF7FF0(a1, v62 - v23, type metadata accessor for TrackManager.FrameProcessingTaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v73 = v5;
  if (EnumCaseMultiPayload == 1)
  {
    v64 = v10;
    v65 = v14;
    v26 = v76;
    sub_1D8AF7F70(v76, type metadata accessor for TrackManager.FrameProcessingTaskState);
    v27 = *v24;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930) + 48);
    v63 = v16;
    v68 = *(v16 + 32);
    v29 = v77;
    (v68)(v71, &v24[v28], v77);
    v62[1] = v27;
    sub_1D8B15F80();
    sub_1D8B15EF0();
    v31 = v69;
    v30 = v70;
    (*(v69 + 13))(v8, *MEMORY[0x1E69E8650], v70);
    v32 = v78;
    v33 = v66;
    sub_1D8B15EB0();
    (*(v31 + 1))(v8, v30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938);
    v35 = *(v34 + 48);
    v36 = v32;
    v37 = *(v74 + 32);
    v37(v26, v36, v75);
    (v68)(v26 + v35, v33, v29);
    swift_storeEnumTagMultiPayload();
    v38 = v67;
    sub_1D8AF7FF0(v26, v67, type metadata accessor for TrackManager.FrameProcessingTaskState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = sub_1D8AF7F70(v38, type metadata accessor for TrackManager.FrameProcessingTaskState);
      __break(1u);
    }

    else
    {
      v39 = *(v34 + 48);
      v40 = v65;
      v41 = v75;
      v69 = v37;
      v37(v65, v38, v75);
      v70 = *(v63 + 8);
      v70(v38 + v39, v77);
      v42 = sub_1D8B15EA0();
      (*(*(v42 - 8) + 56))(v73, 1, 1, v42);
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = v74;
      v45 = v78;
      (*(v74 + 16))(v78, v40, v41);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = (v64 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      *(v48 + 24) = 0;
      v69(v48 + v46, v45, v41);
      *(v48 + v47) = v43;
      v49 = sub_1D8891CA0(0, 0, v73, &unk_1D8B3EE30, v48);
      (*(v44 + 8))(v65, v41);
      sub_1D8AD4260(v49);

      return (v70)(v71, v77);
    }
  }

  else
  {
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938) + 48);
    v52 = v74;
    v71 = *(v74 + 32);
    v53 = v78;
    v54 = v16;
    v55 = v75;
    (v71)(v78, v24, v75);
    (*(v54 + 8))(&v24[v51], v77);
    v56 = sub_1D8B15EA0();
    (*(*(v56 - 8) + 56))(v5, 1, 1, v56);
    v57 = swift_allocObject();
    swift_weakInit();
    v58 = v68;
    (*(v52 + 16))(v68, v53, v55);
    v59 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    (v71)(v60 + v59, v58, v55);
    *(v60 + ((v10 + v59 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;
    v61 = sub_1D8891CA0(0, 0, v73, &unk_1D8B3EE28, v60);
    sub_1D8AD4260(v61);

    return (*(v52 + 8))(v78, v55);
  }

  return result;
}

void sub_1D8AE5870()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v63 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69120);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v63 - v4;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  v73 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;

  v63 = v8;
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B161F0();

  v11 = os_log_type_enabled(v9, v10);
  v64 = v0;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v75[0] = v13;
    *v12 = 136315138;
    if (*(v0 + 136) == 2)
    {
      v14 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E75;
    }

    else
    {
      v16 = *(v0 + 152);
      v78 = 0;
      v79 = 0xE000000000000000;
      sub_1D8B16020();
      if (v16)
      {
        v17 = 0x296C6C6974532820;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v17, v18);

      v15 = v78;
      v14 = v79;
    }

    v19 = sub_1D89AC714(v15, v14, v75);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1D8783000, v9, v10, "reset() begin (previously: %s)", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA721330](v13, -1, -1);
    MEMORY[0x1DA721330](v12, -1, -1);

    v1 = v64;
  }

  else
  {
  }

  v20 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928);
  v22 = 0;
  sub_1D8AE5038(v20 + *(v21 + 28), v1);
  os_unfair_lock_unlock(v20);
  swift_beginAccess();
  v23 = *(v1 + 192);
  if (v23 >> 62)
  {
LABEL_41:
    v62 = v23;
    v24 = sub_1D8B16610();
    v23 = v62;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v75[0] = MEMORY[0x1E69E7CC0];
    v26 = v23;

    sub_1D87F4628(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      return;
    }

    v27 = 0;
    v25 = v75[0];
    v28 = v26;
    v70 = v26 & 0xC000000000000001;
    v71 = v24;
    v72 = v26;
    do
    {
      if (v70)
      {
        v29 = MEMORY[0x1DA71FC20](v27, v28);
      }

      else
      {
        v29 = *(v28 + 8 * v27 + 32);
      }

      v30 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
      v31 = sub_1D8B13240();
      (*(*(v31 - 8) + 16))(v7, v29 + v30, v31);
      CVTrackedDetection.latestDetection.getter(v74);
      v32 = v74[0];
      CVTrackedDetection.latestEstimate.getter(&v77);
      v33 = v77;
      v34 = *(*(v29 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
      v35 = *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
      v36 = sub_1D8ABF4E8();
      v37 = sub_1D8AC0E90(*(v29 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
      sub_1D891FD78(v37, &v76);

      v38 = v76;
      *&v7[v5[5]] = v32;
      *&v7[v5[6]] = v33;
      v7[v5[7]] = v34;
      *&v7[v5[8]] = v35;
      *&v7[v5[9]] = v36;
      v7[v5[10]] = v38;
      v75[0] = v25;
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D87F4628(v39 > 1, v40 + 1, 1);
        v25 = v75[0];
      }

      ++v27;
      *(v25 + 16) = v40 + 1;
      sub_1D8AF7F08(v7, v25 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v40, type metadata accessor for CVTrackSnapshot);
      v28 = v72;
    }

    while (v71 != v27);

    v1 = v64;
  }

  v71 = v22;
  v41 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v41 + 8);
    ObjectType = swift_getObjectType();
    (*(v42 + 40))(v25, ObjectType, v42);
    swift_unknownObjectRelease();
  }

  *(v1 + 192) = MEMORY[0x1E69E7CC0];

  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 2;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  swift_beginAccess();
  *(v1 + 200) = MEMORY[0x1E69E7CC8];

  v44 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_detectionTypeToMatchingTask;
  swift_beginAccess();
  v45 = *(v1 + v44);
  v22 = v45 + 64;
  v46 = 1 << *(v45 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v1 = v47 & *(v45 + 64);
  v48 = (v46 + 63) >> 6;
  v72 = v44;
  v73 = v45;
  v23 = swift_bridgeObjectRetain_n();
  v7 = 0;
  v49 = v67;
  if (v1)
  {
    while (1)
    {
      v50 = v7;
LABEL_35:
      v51 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v52 = v51 | (v50 << 6);
      v53 = *(*(v73 + 48) + v52);
      v54 = v65;
      v55 = &v65[*(v66 + 48)];
      sub_1D87A0E38(*(v73 + 56) + *(v68 + 72) * v52, v55, &qword_1ECA65B98);
      *v54 = v53;
      v5 = *v55;
      v56 = *(v69 + 48);
      *v49 = *v55;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69128);
      (*(*(v57 - 8) + 16))(&v49[v56], v55 + v56, v57);

      sub_1D8B15EF0();
      sub_1D8B15F80();
      sub_1D87A14E4(v49, &qword_1ECA65B98);
      v23 = sub_1D87A14E4(v54, &qword_1ECA69120);
      if (!v1)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
LABEL_31:
    v50 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v50 >= v48)
    {
      break;
    }

    v1 = *(v22 + 8 * v50);
    ++v7;
    if (v1)
    {
      v7 = v50;
      goto LABEL_35;
    }
  }

  v58 = sub_1D893E048(MEMORY[0x1E69E7CC0]);
  *(v64 + v72) = v58;

  v59 = sub_1D8B151C0();
  v60 = sub_1D8B161F0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_1D8783000, v59, v60, "reset() end", v61, 2u);
    MEMORY[0x1DA721330](v61, -1, -1);
  }
}

uint64_t TrackManager.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = (&v36 - v2);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69120);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v36 - v3;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_detectionTypeToMatchingTask;
  swift_beginAccess();
  v37 = v4;
  v38 = v0;
  v5 = *(v0 + v4);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(v0 + v4) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v44 = *(v0 + v4);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v11; result = sub_1D87A14E4(v19, &qword_1ECA69120))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(*(v44 + 48) + v17);
    v19 = v40;
    v20 = &v40[*(v41 + 48)];
    sub_1D87A0E38(*(v44 + 56) + *(v42 + 72) * v17, v20, &qword_1ECA65B98);
    *v19 = v18;
    v21 = *(v43 + 48);
    v22 = v39;
    *v39 = *v20;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69128);
    (*(*(v23 - 8) + 16))(v22 + v21, &v20[v21], v23);

    sub_1D8B15EF0();
    sub_1D8B15F80();
    sub_1D87A14E4(v22, &qword_1ECA65B98);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v24 = sub_1D893E048(MEMORY[0x1E69E7CC0]);
      v25 = v38;
      *(v38 + v37) = v24;

      v26 = v25 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928);
      sub_1D8AF7F70(v26 + *(v27 + 28), type metadata accessor for TrackManager.FrameProcessingTaskState);

      v28 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
      v29 = sub_1D8B151E0();
      (*(*(v29 - 8) + 8))(v25 + v28, v29);
      v30 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStream;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130);
      (*(*(v31 - 8) + 8))(v25 + v30, v31);
      v32 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStreamContinuation;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138);
      (*(*(v33 - 8) + 8))(v25 + v32, v33);
      sub_1D885E5A0(v25 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting);
      v34 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStreamBufferingPolicy;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64840);
      (*(*(v35 - 8) + 8))(v25 + v34, v35);

      swift_defaultActor_destroy();
      return v25;
    }

    v11 = *(v7 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t TrackManager.__deallocating_deinit()
{
  TrackManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8AE662C(uint64_t a1)
{
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69180);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  swift_beginAccess();
  v65 = v2;
  v66 = type metadata accessor for CVTrackedDetection(0);
  v67 = v66;
  v64 = v2;
  v68 = v2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650D0);
  v70 = sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  v71 = v70;
  v72 = sub_1D881CF20(&qword_1ECA650D8, &qword_1ECA650D0);
  KeyPath = swift_getKeyPath();

  v60 = sub_1D8AD0DD4(v14, sub_1D8AFD468, 0, sub_1D8AFC7EC, KeyPath);

  v15 = *(a1 + 64);
  v61 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v52 = (v16 + 63) >> 6;
  v53 = v3 + 16;
  v63 = (v3 + 32);
  v57 = v3;
  v58 = a1;
  v19 = (v3 + 8);
  v20 = v12;

  v22 = 0;
  v23 = &unk_1D8B3ECD0;
  v56 = v6;
  v54 = v12;
  v59 = v19;
  v24 = v61;
  if (!v18)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v22;
LABEL_16:
      v30 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v31 = v30 | (v26 << 6);
      v32 = v57;
      v33 = v58;
      (*(v57 + 16))(v55, *(v58 + 48) + *(v57 + 72) * v31, v64);
      v34 = *(v33 + 56) + 88 * v31;
      v35 = *(v34 + 48);
      v75 = *(v34 + 32);
      v76 = v35;
      v77 = *(v34 + 64);
      v78 = *(v34 + 80);
      v36 = *(v34 + 16);
      v73 = *v34;
      v74 = v36;
      v37 = &unk_1D8B3ECD0;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69188);
      v39 = &v62[*(v38 + 48)];
      v29 = v62;
      (*(v32 + 32))();
      v40 = v76;
      *(v39 + 2) = v75;
      *(v39 + 3) = v40;
      *(v39 + 4) = v77;
      *(v39 + 10) = v78;
      v41 = v74;
      *v39 = v73;
      *(v39 + 1) = v41;
      (*(*(v38 - 8) + 56))(v29, 0, 1, v38);
      v6 = v56;
      v20 = v54;
LABEL_17:
      sub_1D881F6FC(v29, v20, &qword_1ECA69180);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69188);
      if ((*(*(v42 - 8) + 48))(v20, 1, v42) == 1)
      {
      }

      v23 = v37;
      v43 = v20 + *(v42 + 48);
      v44 = *(v43 + 48);
      v79[2] = *(v43 + 32);
      v79[3] = v44;
      v79[4] = *(v43 + 64);
      v80 = *(v43 + 80);
      v45 = *(v43 + 16);
      v79[0] = *v43;
      v79[1] = v45;
      (*v63)(v6, v20, v64);
      v46 = v60;
      if (*(v60 + 16))
      {
        break;
      }

      v25 = *v59;
LABEL_6:
      result = v25(v6, v64);
      v24 = v61;
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    v47 = sub_1D87EF764(v6);
    v25 = *v59;
    if ((v48 & 1) == 0)
    {
      goto LABEL_6;
    }

    v49 = *(*(v46 + 56) + 8 * v47);

    v25(v6, v64);
    sub_1D899210C(v79, *(v49 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_predictions), &v73);

    v24 = v61;
  }

  while (v18);
LABEL_8:
  if (v52 <= v22 + 1)
  {
    v27 = v22 + 1;
  }

  else
  {
    v27 = v52;
  }

  v28 = v27 - 1;
  v29 = v62;
  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v52)
    {
      v37 = v23;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69188);
      (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
      v18 = 0;
      v22 = v28;
      goto LABEL_17;
    }

    v18 = *(v24 + 8 * v26);
    ++v22;
    if (v18)
    {
      v22 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AE6C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
  swift_beginAccess();
  v5 = sub_1D8B13240();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D8AE6CC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1DA720210](v3);
  }

  else
  {
    MEMORY[0x1DA720210](3);
    return sub_1D8B16D60();
  }
}

uint64_t sub_1D8AE6D2C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D8B16D20();
  sub_1D8AE6CC0(v4, v1 | (v2 << 32));
  return sub_1D8B16D80();
}

uint64_t sub_1D8AE6DA0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D8B16D20();
  sub_1D8AE6CC0(v4, v1 | (v2 << 32));
  return sub_1D8B16D80();
}

BOOL sub_1D8AE6DF0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (LODWORD(v2) == 1)
    {
      if (LODWORD(v3) == 1)
      {
        v4 = *(a2 + 4);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (LODWORD(v3) > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 4) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t sub_1D8AE6E74(unsigned __int8 *a1, unint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v32 = v7;
  v8 = HIDWORD(a2) & 1;
  v9 = a2;
  result = sub_1D87F05FC(a2 | (v8 << 32));
  v12 = v7[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(a2) = v11;
  if (v7[3] >= v15)
  {
    goto LABEL_5;
  }

  sub_1D89780FC(v15, isUniquelyReferenced_nonNull_native);
  result = sub_1D87F05FC(v9 | (v8 << 32));
  if ((a2 & 1) != (v16 & 1))
  {
    result = sub_1D8B16C30();
    __break(1u);
LABEL_5:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  *v3 = v7;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_7:
  a2 = result;
  sub_1D8978E9C(result, v9 | (v8 << 32), 0, v7);
  result = a2;
  while (1)
  {
LABEL_8:
    v17 = v7[7];
    v18 = *(v17 + 8 * result);
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    *(v17 + 8 * result) = v19;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v3[1];
    v32 = v21;
    result = sub_1D881F7DC(v5);
    v23 = v21[2];
    v24 = (v22 & 1) == 0;
    v14 = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (!v14)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v30 = result;
    sub_1D896CEEC();
    result = v30;
    v7 = v32;
    *v3 = v32;
    if ((a2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  LOBYTE(a2) = v22;
  if (v21[3] >= v25)
  {
    goto LABEL_13;
  }

  sub_1D89777B0(v25, v20);
  result = sub_1D881F7DC(v5);
  if ((a2 & 1) == (v26 & 1))
  {
    goto LABEL_14;
  }

  result = sub_1D8B16C30();
  __break(1u);
LABEL_13:
  if (v20)
  {
LABEL_14:
    v3[1] = v21;
    if ((a2 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v31 = result;
    sub_1D896C918();
    result = v31;
    v3[1] = v21;
    if ((a2 & 1) == 0)
    {
LABEL_15:
      v3 = result;
      sub_1D8978E58(result, v5, 0, v21);
      result = v3;
    }
  }

  v27 = v21[7];
  v28 = *(v27 + 8 * result);
  v14 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v14)
  {
    goto LABEL_21;
  }

  *(v27 + 8 * result) = v29;
  return result;
}

uint64_t sub_1D8AE7084(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v3, 0);
    v39 = v42;
    v5 = a1 + 64;
    result = sub_1D8B16580();
    v7 = result;
    v8 = 0;
    v9 = *(a1 + 36);
    v37 = v3;
    v38 = v9;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v13 = *(a1 + 48) + 8 * v7;
      v14 = *v13;
      v15 = *(v13 + 4);
      v40 = sub_1D8B16B50();
      v41 = v16;
      MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
      if (v15 == 1)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            v17 = 0xE400000000000000;
            v18 = 1852141679;
          }

          else
          {
            v17 = 0xE800000000000000;
            v18 = 0x64696F72746E6563;
          }
        }

        else
        {
          v17 = 0xE300000000000000;
          v18 = 4804434;
        }
      }

      else
      {
        MEMORY[0x1DA71EFA0](0x2870616C7265766FLL, 0xE90000000000003CLL);
        sub_1D8B16030();
        MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
        v18 = 0;
        v17 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v18, v17);

      v19 = v39;
      v21 = *(v39 + 16);
      v20 = *(v39 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1D87F3F54((v20 > 1), v21 + 1, 1);
        v19 = v39;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v41;
      v10 = 1 << *(a1 + 32);
      if (v7 >= v10)
      {
        goto LABEL_32;
      }

      v5 = a1 + 64;
      v23 = *(a1 + 64 + 8 * v12);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_33;
      }

      v39 = v19;
      v9 = v38;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_34;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v11 = v37;
      }

      else
      {
        v25 = v12 << 6;
        v26 = v12 + 1;
        v27 = (a1 + 72 + 8 * v12);
        v11 = v37;
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1D87977B4(v7, v38, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1D87977B4(v7, v38, 0);
      }

LABEL_4:
      ++v8;
      v7 = v10;
      if (v8 == v11)
      {
        v2 = a2;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
    sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
    v30 = sub_1D8B15810();
    v32 = v31;

    sub_1D8ACFD00(v2);
    v33 = sub_1D8B15810();
    v35 = v34;

    sub_1D8B16720();

    MEMORY[0x1DA71EFA0](v30, v32);

    MEMORY[0x1DA71EFA0](0x3A7365707974205DLL, 0xEA00000000005B20);
    MEMORY[0x1DA71EFA0](v33, v35);

    MEMORY[0x1DA71EFA0](93, 0xE100000000000000);
    return 91;
  }

  return result;
}

uint64_t sub_1D8AE7500(void *a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v121 = a5;
  v5 = a4;
  v122 = a3;
  v7 = a1;
  v116 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v118 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v111 - v12;
  v14 = type metadata accessor for ProcessorState(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a2;
  sub_1D87A0E38(a2, v13, &qword_1ECA64948);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D87A14E4(v13, &qword_1ECA64948);
  }

  else
  {
    v18 = sub_1D8AF7F08(v13, v17, type metadata accessor for ProcessorState);
    MEMORY[0x1EEE9AC00](v18);
    *(&v111 - 2) = v17;

    v7 = sub_1D87C7118(sub_1D8AFC7CC, &v111 - 4, v7);
    sub_1D8AF7F70(v17, type metadata accessor for ProcessorState);
  }

  v19 = v120 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v119 = v5;
    v111 = *(v19 + 8);

    v21 = sub_1D8AF8058(v20);
    v113 = 0;

    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
    v22 = sub_1D8B168F0();
    v23 = v22;
    v24 = 0;
    v25 = 1 << *(v21 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v21 + 64);
    v5 = (v25 + 63) >> 6;
    for (i = v22 + 64; v27; *(v23 + 16) = v38)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_14:
      v32 = v29 | (v24 << 6);
      v33 = *(*(v21 + 48) + v32);
      v34 = *(*(v21 + 56) + 8 * v32);
      if (v34 >> 62)
      {
        v35 = sub_1D8B16610();
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(i + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      *(*(v23 + 48) + v32) = v33;
      *(*(v23 + 56) + 8 * v32) = v35;
      v36 = *(v23 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v5)
      {

        ObjectType = swift_getObjectType();
        i = (*(v111 + 16))(v7, v122, v119, v121, ObjectType);

        v41 = v113;
        v42 = sub_1D8AF8058(v40);
        v113 = v41;

        v43 = sub_1D8B168F0();
        v44 = v42;
        v45 = 0;
        v46 = 1 << *(v44 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v44 + 64;
        v5 = v47 & *(v44 + 64);
        v49 = (v46 + 63) >> 6;
        if (v5)
        {
          while (1)
          {
            v50 = __clz(__rbit64(v5));
            v5 &= v5 - 1;
LABEL_29:
            v53 = v50 | (v45 << 6);
            v54 = *(*(v44 + 48) + v53);
            v55 = *(*(v44 + 56) + 8 * v53);
            if (v55 >> 62)
            {
              v112 = v44;
              v56 = sub_1D8B16610();
              v44 = v112;
            }

            else
            {
              v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v43 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v53;
            *(v43[6] + v53) = v54;
            *(v43[7] + 8 * v53) = v56;
            v57 = v43[2];
            v37 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v37)
            {
              break;
            }

            v43[2] = v58;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

LABEL_57:
          __break(1u);
LABEL_58:
          v84 = sub_1D8B16610();
          v85 = v84;
          goto LABEL_45;
        }

LABEL_24:
        v51 = v45;
        v5 = v119;
        while (1)
        {
          v45 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v45 >= v49)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v123[0] = v23;
            v60 = v113;
            sub_1D8AFC44C(v43, sub_1D8AF5268, 0, isUniquelyReferenced_nonNull_native, v123);

            if (v60)
            {
              goto LABEL_61;
            }

            v61 = sub_1D8AF3C88(v123[0]);

            v62 = v114;
            if (!v61[2])
            {
              swift_unknownObjectRelease();

              goto LABEL_41;
            }

            v63 = v116;
            (*(v116 + 16))(v114, v122, v5);

            v64 = sub_1D8B151C0();
            v65 = sub_1D8B16200();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v123[0] = v113;
              *v66 = 136315650;
              sub_1D87C4938();
              v67 = sub_1D8B15740();
              LODWORD(v112) = v65;
              v68 = v67;
              v70 = v69;

              v71 = sub_1D89AC714(v68, v70, v123);

              *(v66 + 4) = v71;
              *(v66 + 12) = 2080;
              v72 = sub_1D8B15740();
              v74 = v73;

              v75 = sub_1D89AC714(v72, v74, v123);

              *(v66 + 14) = v75;
              *(v66 + 22) = 2080;
              v76 = v114;
              v77 = CameraSourceFrame.timeDescription.getter(v5, v121);
              v79 = v78;
              v23 = v116;
              (*(v116 + 8))(v76, v5);
              v80 = sub_1D89AC714(v77, v79, v123);

              *(v66 + 24) = v80;
              _os_log_impl(&dword_1D8783000, v64, v112, "TrackManagerSupporting.filterToRelevantTracks removed tracks by type: %s from total %s @ %s", v66, 0x20u);
              v81 = v113;
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v81, -1, -1);
              MEMORY[0x1DA721330](v66, -1, -1);
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();

              (*(v63 + 8))(v62, v5);
              v23 = v63;
            }

            goto LABEL_43;
          }

          v52 = *(v48 + 8 * v45);
          ++v51;
          if (v52)
          {
            v50 = __clz(__rbit64(v52));
            v5 = (v52 - 1) & v52;
            goto LABEL_29;
          }
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v31 = *(v21 + 64 + 8 * v24);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v27 = (v31 - 1) & v31;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  i = v7;
LABEL_41:
  v23 = v116;
LABEL_43:
  v82 = MEMORY[0x1E69E7CC0];
  v83 = sub_1D893F7F0(MEMORY[0x1E69E7CC0]);
  v84 = sub_1D893F8F0(v82);
  v125 = v83;
  v126 = v84;
  if (i >> 62)
  {
    goto LABEL_58;
  }

  v85 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
  MEMORY[0x1EEE9AC00](v84);
  v86 = v121;
  v87 = v122;
  *(&v111 - 6) = v5;
  *(&v111 - 5) = v86;
  v88 = v115;
  *(&v111 - 4) = v87;
  *(&v111 - 3) = v88;
  *(&v111 - 2) = &v125;

  v89 = sub_1D87C7118(sub_1D8AFC7A4, &v111 - 8, i);

  if (v89 >> 62)
  {
    v90 = sub_1D8B16610();
  }

  else
  {
    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v118;
  v92 = v85 - v90;
  if (!__OFSUB__(v85, v90))
  {
    if (v92 >= 1)
    {
      (*(v23 + 16))(v118, v122, v5);
      v93 = sub_1D8B151C0();
      v94 = sub_1D8B16200();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = v23;
        v96 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v124[0] = v122;
        *v96 = 134218754;
        *(v96 + 4) = v92;
        *(v96 + 12) = 2048;
        *(v96 + 14) = v85;
        *(v96 + 22) = 2080;
        swift_beginAccess();
        v97 = v125;
        v98 = v126;

        v99 = sub_1D8AE7084(v97, v98);
        LODWORD(v120) = v94;
        v101 = v100;

        v102 = sub_1D89AC714(v99, v101, v124);

        *(v96 + 24) = v102;
        *(v96 + 32) = 2080;
        v103 = v5;
        v104 = v118;
        v105 = CameraSourceFrame.timeDescription.getter(v5, v121);
        v107 = v106;
        (*(v95 + 8))(v104, v103);
        v108 = sub_1D89AC714(v105, v107, v124);

        *(v96 + 34) = v108;
        _os_log_impl(&dword_1D8783000, v93, v120, "filterToRelevantTracks: Filtered %ld/%ld tracks by reason: %s @ %s", v96, 0x2Au);
        v109 = v122;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v109, -1, -1);
        MEMORY[0x1DA721330](v96, -1, -1);

        return v89;
      }

      (*(v23 + 8))(v91, v5);
    }

    return v89;
  }

  __break(1u);
LABEL_61:

  __break(1u);
  return result;
}

BOOL sub_1D8AE80BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  CVTrackedDetection.latestDetection.getter(&v19);
  v18 = v19;
  CVDetection.detectionType.getter(&v17);

  v12 = v17;
  sub_1D8AF7FF0(a2, v8, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

LABEL_5:
    sub_1D8AF7F08(v8, v11, type metadata accessor for DetectionRequest);
    goto LABEL_6;
  }

  sub_1D8AF7F08(v8, v5, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v5, v11, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v5, type metadata accessor for DetectionResult);
LABEL_6:
  v14 = *v11;
  sub_1D8AF7F70(v11, type metadata accessor for DetectionRequest);
  return v12 == v14;
}

uint64_t sub_1D8AE830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a4;
  v60 = a3;
  v9 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProcessorState(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - v17;
  v56 = a5;
  v57 = a6;
  v55 = a2;
  v19 = CameraSourceFrame.timestamp.getter(a5, a6);
  CVTrackedDetection.estimate(atTime:)(v63, v19);
  v20 = v63[0];
  if ((~v63[0] & 0xF000000000000007) == 0)
  {
    CVTrackedDetection.latestEstimate.getter(v63);
    v20 = v63[0];
  }

  v73 = v20;
  CVDetection.detection.getter(v70);
  v22 = v71;
  v21 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  (*(v21 + 64))(v63, v22, v21);
  __swift_destroy_boxed_opaque_existential_1(v70);
  Corners.bounds.getter();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  CVTrackedDetection.latestDetection.getter(v63);
  v70[0] = v63[0];
  CVDetection.detectionType.getter(&v73);

  v31 = v73;
  sub_1D87A0E38(v60, v18, &qword_1ECA64948);
  if ((*(v12 + 48))(v18, 1, v11) == 1)
  {
    sub_1D87A14E4(v18, &qword_1ECA64948);
    (*(v57 + 40))(v63, v56);
    v33 = v66;
    v32 = v67;
    v35 = v68;
    v34 = v69;
    v70[0] = v20;
    CVDetection.detection.getter(v63);
    v36 = v64;
    v37 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v37 + 112))(&v73, v36, v37);
    v38 = v73;
    if (BYTE4(v73) == 1)
    {
      if (v73)
      {
        v75.origin.x = v24;
        v75.origin.y = v26;
        v75.size.width = v28;
        v75.size.height = v30;
        MidX = CGRectGetMidX(v75);
        v76.origin.y = v26;
        v40 = MidX;
        v76.origin.x = v24;
        v76.size.width = v28;
        v76.size.height = v30;
        v74.y = CGRectGetMidY(v76);
        v77.origin.x = v33;
        v77.origin.y = v32;
        v77.size.width = v35;
        v77.size.height = v34;
        v74.x = v40;
        v41 = CGRectContainsPoint(v77, v74);
        if (!v41)
        {
          v62 = v31;
          v61 = 1;
          v42 = 0x100000002;
LABEL_20:
          sub_1D8AE6E74(&v62, v42);
        }
      }

      else
      {
        v86.origin.x = 0.0;
        v86.origin.y = 0.0;
        v86.size.width = 1.0;
        v86.size.height = 1.0;
        v82.origin.x = v24;
        v82.origin.y = v26;
        v82.size.width = v28;
        v82.size.height = v30;
        v83 = CGRectIntersection(v82, v86);
        v41 = v83.size.width * v83.size.height > 0.0;
        if (v83.size.width * v83.size.height <= 0.0)
        {
          v62 = v31;
          v61 = 1;
          v42 = 0x100000001;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v78.origin.y = v26;
      v78.origin.x = v24;
      v78.size.width = v28;
      v78.size.height = v30;
      v84.origin.x = v33;
      v84.origin.y = v32;
      v84.size.width = v35;
      v84.size.height = v34;
      v79 = CGRectIntersection(v78, v84);
      *&v79.origin.x = v79.size.width * v79.size.height / (v28 * v30);
      v41 = *&v38 <= *&v79.origin.x;
      if (*&v38 > *&v79.origin.x)
      {
        v62 = v31;
        v61 = 0;
        v42 = v38;
        goto LABEL_20;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v63);
    return v41;
  }

  sub_1D8AF7FF0(v18, v14, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = v53;
      sub_1D8AF7F08(v14, v53, type metadata accessor for DetectionResult);
      v45 = v54;
      sub_1D8AF7FF0(v44, v54, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v44, type metadata accessor for DetectionResult);
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  v46 = v14;
  v45 = v54;
  sub_1D8AF7F08(v46, v54, type metadata accessor for DetectionRequest);
LABEL_15:
  sub_1D8AF7F70(v18, type metadata accessor for ProcessorState);
  v47 = (v45 + *(v58 + 28));
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  v51 = v47[3];
  sub_1D8AF7F70(v45, type metadata accessor for DetectionRequest);
  v80.origin.x = v24;
  v80.origin.y = v26;
  v80.size.width = v28;
  v80.size.height = v30;
  v85.origin.x = v48;
  v85.origin.y = v49;
  v85.size.width = v50;
  v85.size.height = v51;
  v81 = CGRectIntersection(v80, v85);
  if (v28 * v30 * 0.2 <= v81.size.width * v81.size.height)
  {

    return 1;
  }

  else
  {
    LOBYTE(v63[0]) = v31;
    LOBYTE(v70[0]) = 1;
    sub_1D8AE6E74(v63, 0x100000000uLL);

    return 0;
  }
}

void sub_1D8AE8A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64920);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v14 = (v4 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  os_unfair_lock_lock(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928);
  sub_1D8AE8B58(v14 + *(v15 + 28), v5, a1, a2, a3, a4, v13);
  (*(v11 + 8))(v13, v10);
  os_unfair_lock_unlock(v14);
}

uint64_t sub_1D8AE8B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a6;
  v44 = a2;
  v45 = a4;
  v48 = a3;
  v46 = a7;
  v50 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  sub_1D8AF7FF0(a1, v13, type metadata accessor for TrackManager.FrameProcessingTaskState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930);
    (*(v15 + 32))(v20, &v13[*(v21 + 48)], v14);
    v22 = v48;
    v23 = v50;
  }

  else
  {
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938) + 48)];
    v42 = *(v15 + 32);
    v43 = v18;
    v42(v18, v24, v14);
    (*(v50 + 16))(v10, v48, a5);
    v25 = sub_1D8B151C0();
    v26 = sub_1D8B16230();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = v25;
      v28 = v27;
      v44 = swift_slowAlloc();
      v49[0] = v44;
      *v28 = 136315138;
      v40 = v26;
      v39 = CameraSourceFrame.timeDescription.getter(a5, v47);
      v30 = v29;
      (*(v50 + 8))(v10, a5);
      v31 = sub_1D89AC714(v39, v30, v49);

      v32 = v28;
      *(v28 + 4) = v31;
      v33 = v41;
      _os_log_impl(&dword_1D8783000, v41, v40, "Enqueueing update(for:) %s", v32, 0xCu);
      v34 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1DA721330](v34, -1, -1);
      MEMORY[0x1DA721330](v32, -1, -1);

      v23 = v50;
    }

    else
    {

      v23 = v50;
      (*(v50 + 8))(v10, a5);
    }

    v42(v20, v43, v14);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940);
    (*(*(v35 - 8) + 8))(v13, v35);
    v22 = v48;
  }

  v49[3] = a5;
  v49[4] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(v23 + 16))(boxed_opaque_existential_1, v22, a5);
  v49[5] = v45;

  sub_1D8B15EE0();
  return (*(v15 + 8))(v20, v14);
}

void sub_1D8AE8FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a2;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - v12;
  v14 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  v15 = *(v8 + 16);
  v50 = v16;
  v47 = v15;
  (v15)(v44 - v12);
  v48 = v14;
  v17 = sub_1D8B151C0();
  v18 = sub_1D8B16200();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = v11;
    v22 = v21;
    v51[0] = v21;
    *v20 = 136315138;
    v23 = CameraSourceFrame.timeDescription.getter(a3, a4);
    v44[1] = v5;
    v24 = a4;
    v26 = v25;
    v27 = v13;
    v28 = *(v46 + 8);
    v28(v27, a3);
    v29 = sub_1D89AC714(v23, v26, v51);
    a4 = v24;

    *(v20 + 4) = v29;
    _os_log_impl(&dword_1D8783000, v17, v18, "--> _update begin for frame %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v30 = v22;
    v11 = v45;
    MEMORY[0x1DA721330](v30, -1, -1);
    MEMORY[0x1DA721330](v20, -1, -1);
  }

  else
  {

    v31 = v13;
    v28 = *(v8 + 8);
    v28(v31, a3);
  }

  v51[3] = a3;
  v51[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  v33 = v50;
  v34 = v47;
  v47(boxed_opaque_existential_1, v50, a3);
  v51[5] = v49;

  sub_1D8AE9A78(v51);
  sub_1D8AFC6D4(v51);
  v34(v11, v33, a3);
  v35 = sub_1D8B151C0();
  v36 = sub_1D8B16200();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v11;
    v39 = swift_slowAlloc();
    v51[0] = v39;
    *v37 = 136315138;
    v40 = CameraSourceFrame.timeDescription.getter(a3, a4);
    v42 = v41;
    v28(v38, a3);
    v43 = sub_1D89AC714(v40, v42, v51);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_1D8783000, v35, v36, "<-- _update end for frame %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1DA721330](v39, -1, -1);
    MEMORY[0x1DA721330](v37, -1, -1);
  }

  else
  {

    v28(v11, a3);
  }
}

uint64_t sub_1D8AE93C8(uint64_t a1)
{
  v62 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v69 = *(v62 - 8);
  v3 = MEMORY[0x1EEE9AC00](v62);
  v5 = (&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v60 - v6;
  v61 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v67 = *(v61 - 8);
  v7 = MEMORY[0x1EEE9AC00](v61);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69250);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v60 - v15;
  v16 = *(a1 + 32);
  swift_beginAccess();
  v17 = *(v1 + 200);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v1 + 200) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v70 = *(v1 + 200);

  v63 = MEMORY[0x1E69E7CC8];
  v64 = v5;
  v66 = v9;
  v72 = v14;
  v25 = 0;
  if (!v23)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v25;
LABEL_15:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v70;
      v32 = v65;
      sub_1D8AF7FF0(*(v70 + 48) + *(v67 + 72) * v30, v65, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v33 = v68;
      sub_1D8AF7FF0(*(v31 + 56) + *(v69 + 72) * v30, v68, type metadata accessor for TrackManager.TrackedProcessorState);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69258);
      v35 = *(v34 + 48);
      v36 = v32;
      v37 = v72;
      sub_1D8AF7F08(v36, v72, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF7F08(v33, v37 + v35, type metadata accessor for TrackManager.TrackedProcessorState);
      (*(*(v34 - 8) + 56))(v37, 0, 1, v34);
      v28 = v26;
      v38 = v37;
      v9 = v66;
      v5 = v64;
LABEL_16:
      v39 = v71;
      sub_1D881F6FC(v38, v71, &qword_1ECA69250);
      v40 = v39;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69258);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {

        return v63;
      }

      v42 = *(v41 + 48);
      sub_1D8AF7F08(v40, v9, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF7F08(v40 + v42, v5, type metadata accessor for TrackManager.TrackedProcessorState);
      if (v5[4] > v16)
      {
        goto LABEL_6;
      }

      v43 = v9[*(v61 + 20)];
      v44 = v63;
      v45 = *(v5 + *(v62 + 24));
      LODWORD(v60) = swift_isUniquelyReferenced_nonNull_native();
      v73 = v44;
      v47 = sub_1D881F7DC(v43);
      v48 = v44[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_31;
      }

      if (v44[3] >= v50)
      {
        if ((v60 & 1) == 0)
        {
          LODWORD(v63) = v46;
          v60 = v47;
          sub_1D8968924();
          v47 = v60;
          LOBYTE(v46) = v63;
        }
      }

      else
      {
        LODWORD(v63) = v46;
        sub_1D89705B8(v50, v60);
        v51 = sub_1D881F7DC(v43);
        v52 = v46 & 1;
        LOBYTE(v46) = v63;
        if ((v63 & 1) != v52)
        {
          goto LABEL_33;
        }

        v47 = v51;
      }

      v54 = 0x202020101020002uLL >> (8 * v45);
      v55 = v73;
      v63 = v73;
      if ((v46 & 1) == 0)
      {
        break;
      }

      *(v73[7] + v47) = v54;
LABEL_6:
      sub_1D8AF7F70(v5, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8AF7F70(v9, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v25 = v28;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

    v73[(v47 >> 6) + 8] |= 1 << v47;
    *(v55[6] + v47) = v43;
    *(v55[7] + v47) = v54;
    sub_1D8AF7F70(v5, type metadata accessor for TrackManager.TrackedProcessorState);
    sub_1D8AF7F70(v9, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v56 = v55[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_32;
    }

    v55[2] = v58;
    v25 = v28;
  }

  while (v23);
LABEL_8:
  if (v24 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69258);
      v38 = v72;
      (*(*(v53 - 8) + 56))(v72, 1, 1, v53);
      v23 = 0;
      goto LABEL_16;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8AE9A78(uint64_t a1)
{
  v3 = v1;
  v229 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v236 = &v216[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v227 = &v216[-v8];
  v234 = type metadata accessor for CVTrackSnapshot(0);
  v226 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234 - 8);
  v233 = &v216[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v228 = &v216[-v11];
  sub_1D87C1470(a1, v251);
  v12 = (v1 + 144);
  v13 = (v1 + 112);
  if (*(v1 + 136) == 2)
  {
    v14 = -INFINITY;
  }

  else
  {
    v14 = *(v1 + 144);
  }

  v15 = v252;
  v16 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  v17 = CameraSourceFrame.timestamp.getter(v15, v16);
  v18 = v252;
  v19 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  (*(v19 + 40))(&v254, v18, v19);
  v225 = v3;
  v223 = v256[8];
  LODWORD(v224) = (v14 < v17) | v256[8];
  v232 = v12;
  if ((v14 < v17) | v256[8] & 1)
  {
    v20 = *(v3 + 136);
    v2 = *(v3 + 144);
    LOBYTE(v240) = *(v3 + 152);
    if (v20 != 2)
    {
      v21 = v252;
      v22 = v253;
      __swift_project_boxed_opaque_existential_1(v251, v252);
      if (CameraSourceFrame.timestamp.getter(v21, v22) < v2)
      {
        sub_1D87C1470(v251, v237);
        sub_1D8AFC69C(a1, &v254);
        v23 = sub_1D8B151C0();
        v24 = sub_1D8B16210();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v235 = swift_slowAlloc();
          *&v246 = v235;
          *v25 = 136315650;
          v26 = v238;
          v27 = v239;
          __swift_project_boxed_opaque_existential_1(v237, v238);
          v28 = CameraSourceFrame.timeDescription.getter(v26, v27);
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_1(v237);
          v31 = sub_1D89AC714(v28, v30, &v246);

          *(v25 + 4) = v31;
          *(v25 + 12) = 2080;
          v32 = v240;
          v33 = 0xE000000000000000;
          v248 = 0;
          v249 = 0xE000000000000000;
          sub_1D8B16020();
          if (v32)
          {
            v34 = 0x296C6C6974532820;
          }

          else
          {
            v34 = 0;
          }

          if (v32)
          {
            v33 = 0xE800000000000000;
          }

          MEMORY[0x1DA71EFA0](v34, v33);

          v35 = sub_1D89AC714(v248, v249, &v246);

          *(v25 + 14) = v35;
          *(v25 + 22) = 2080;
          v36 = v229;
          sub_1D8ACF864(*&v256[8]);
          v229 = v36;
          v37 = MEMORY[0x1DA71F1E0]();
          v38 = v13;
          v40 = v39;

          sub_1D8AFC6D4(&v254);
          v41 = sub_1D89AC714(v37, v40, &v246);
          v13 = v38;

          *(v25 + 24) = v41;
          _os_log_impl(&dword_1D8783000, v23, v24, "Updates not in time order: current frame %s should be equal or newer than %s. Types:  %s", v25, 0x20u);
          v42 = v235;
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v42, -1, -1);
          MEMORY[0x1DA721330](v25, -1, -1);
        }

        else
        {

          sub_1D8AFC6D4(&v254);
          __swift_destroy_boxed_opaque_existential_1(v237);
        }

        v12 = v232;
      }
    }

    v43 = v252;
    v44 = v253;
    __swift_project_boxed_opaque_existential_1(v251, v252);
    (*(v44 + 40))(&v254, v43, v44);
    v45 = *&v256[16];
    v13[2] = *v256;
    v13[3] = v45;
    v13[4] = *&v256[32];
    v46 = v255;
    *v13 = v254;
    v13[1] = v46;
  }

  v47 = v225;
  swift_beginAccess();
  v48 = *(v47 + 136);
  if (v48 == 2)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v49 = *(v47 + 200);
  v254 = *v13;
  v235 = v13;
  *&v255 = *(v13 + 2);
  *(&v255 + 1) = v48;
  v50 = v12[1];
  *v256 = *v12;
  *&v256[16] = v50;
  *&v256[32] = v12[2];
  v231 = v49;

  v230 = sub_1D8AE93C8(&v254);
  v51 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_detectionTypeToMatchingTask;
  swift_beginAccess();
  sub_1D8AE238C(a1, (v47 + v51));
  swift_endAccess();
  v53 = v252;
  v52 = v253;
  v54 = __swift_project_boxed_opaque_existential_1(v251, v252);
  *&v254 = *(a1 + 40);

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69178);
  v56 = sub_1D881CF20(&qword_1EE0E3848, &qword_1ECA69178);
  v222 = sub_1D8AD6E90(&v254, v54, v55, v53, v56, v52);

  v250 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v57 = *(v47 + 192);
  if (v57 >> 62)
  {
    v58 = sub_1D8B16610();
    v59 = v235;
    if (v58)
    {
      goto LABEL_20;
    }

LABEL_33:
    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v59 = v235;
  if (!v58)
  {
    goto LABEL_33;
  }

LABEL_20:
  if (v58 < 1)
  {
    goto LABEL_175;
  }

  v60 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v57 & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x1DA71FC20](v60, v57);
    }

    else
    {
      v62 = *(v57 + 8 * v60 + 32);
    }

    if (*(*(v62 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64) == 1)
    {

      MEMORY[0x1DA71F1A0](v63);
      if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();

      v61 = v250;
    }

    else
    {
    }

    ++v60;
  }

  while (v58 != v60);

  v59 = v235;
LABEL_34:
  v64 = v225;
  sub_1D8AED1F4(v61);

  v65 = *(v64 + 136);
  if (v65 == 2)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v254 = *v59;
  *&v255 = *(v59 + 16);
  *(&v255 + 1) = v65;
  v66 = v232[1];
  *v256 = *v232;
  *&v256[16] = v66;
  *&v256[32] = v232[2];
  v67 = sub_1D8AE93C8(&v254);

  v69 = sub_1D87C3758(v68);

  v71 = sub_1D87C3758(v70);
  v72 = sub_1D89515CC(v69, v71);

  if ((v72 & 1) == 0)
  {
    if ((v224 & 1) == 0)
    {

      v74 = v225;
      goto LABEL_165;
    }

    v73 = 1;
    goto LABEL_42;
  }

  v73 = sub_1D88555FC(v230, v67) ^ 1;
  if (v14 < v17)
  {
LABEL_42:
    v74 = v225;
LABEL_43:
    v246 = *v59;
    v247 = *(v59 + 16);
    v75 = *(v74 + 136);
    v2 = *(v74 + 144);
    v76 = *(v74 + 152);
    v77 = *(v74 + 169);
    v243 = *(v74 + 153);
    *v244 = v77;
    *&v244[15] = *(v74 + 184);
    v218 = v75;
    v219 = v67;
    v245 = v76;
    if (v75 == 2)
    {
LABEL_180:
      sub_1D8B168C0();
      __break(1u);
LABEL_181:

      __break(1u);
      return result;
    }

    v52 = v229;
    v79 = sub_1D8AF8058(v78);

    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
    v80 = sub_1D8B168F0();
    v81 = v79;
    v82 = 0;
    v83 = 1 << *(v81 + 32);
    v84 = -1;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    v47 = v81 + 64;
    v85 = v84 & *(v81 + 64);
    v86 = (v83 + 63) >> 6;
    v87 = v80 + 8;
    v224 = v80;
    if (v85)
    {
      goto LABEL_47;
    }

LABEL_48:
    v89 = v82;
    while (1)
    {
      v82 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      if (v82 >= v86)
      {
        break;
      }

      v90 = *(v47 + 8 * v82);
      ++v89;
      if (v90)
      {
        v88 = __clz(__rbit64(v90));
        v85 = (v90 - 1) & v90;
        while (2)
        {
          v91 = v88 | (v82 << 6);
          v92 = *(*(v81 + 48) + v91);
          v93 = *(*(v81 + 56) + 8 * v91);
          if (v93 >> 62)
          {
            v235 = v81;
            v98 = sub_1D8B16610();
            v80 = v224;
            v94 = v98;
            v81 = v235;
          }

          else
          {
            v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v87 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v91;
          *(v80[6] + v91) = v92;
          *(v80[7] + 8 * v91) = v94;
          v95 = v80[2];
          v96 = __OFADD__(v95, 1);
          v97 = v95 + 1;
          if (!v96)
          {
            v80[2] = v97;
            if (!v85)
            {
              goto LABEL_48;
            }

LABEL_47:
            v88 = __clz(__rbit64(v85));
            v85 &= v85 - 1;
            continue;
          }

          break;
        }

LABEL_173:
        __break(1u);
        goto LABEL_174;
      }
    }

    v217 = v73;

    v99 = v252;
    v100 = v253;
    v101 = __swift_project_boxed_opaque_existential_1(v251, v252);
    v102 = type metadata accessor for ProcessorState(0);
    v103 = v228;
    (*(*(v102 - 8) + 56))(v228, 1, 1, v102);

    v47 = sub_1D8AE7500(v104, v103, v101, v99, v100);

    sub_1D87A14E4(v103, &qword_1ECA64948);
    v221 = v47 >> 62;
    if (v47 >> 62)
    {
      goto LABEL_176;
    }

    for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D8B16610())
    {
      v106 = v236;
      v107 = v227;
      v235 = v47;
      if (i)
      {
        v108 = 0;
        v231 = v47 & 0xFFFFFFFFFFFFFF8;
        v232 = (v47 & 0xC000000000000001);
        v228 = (v226 + 48);
        v229 = (v226 + 56);
        v109 = MEMORY[0x1E69E7CC0];
        v230 = i;
        while (1)
        {
          if (v232)
          {
            v111 = MEMORY[0x1DA71FC20](v108, v47);
            v112 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              goto LABEL_171;
            }
          }

          else
          {
            if (v108 >= *(v231 + 16))
            {
              goto LABEL_172;
            }

            v111 = *(v47 + 8 * v108 + 32);

            v112 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              goto LABEL_171;
            }
          }

          CVTrackedDetection.estimate(atTime:)(&v254, v2);
          v113 = v254;
          if ((~v254 & 0xF000000000000007) != 0)
          {
            v116 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
            v117 = sub_1D8B13240();
            (*(*(v117 - 8) + 16))(v106, v111 + v116, v117);
            CVTrackedDetection.latestDetection.getter(&v254);
            v118 = v254;
            v119 = *(*(v111 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
            v120 = *(v111 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
            v121 = sub_1D8ABF4E8();
            v122 = *(v111 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);

            v123 = sub_1D8AC0E90(v122);
            sub_1D891FD78(v123, &v240);

            sub_1D88649A0(v113);
            v114 = 0;
            v124 = v240;
            v115 = v234;
            *&v236[*(v234 + 20)] = v118;
            v107 = v227;
            *&v236[v115[6]] = v113;
            v236[v115[7]] = v119;
            v106 = v236;
            *&v236[v115[8]] = v120;
            *(v106 + v115[9]) = v121;
            *(v106 + v115[10]) = v124;
          }

          else
          {

            v114 = 1;
            v115 = v234;
          }

          (*v229)(v106, v114, 1, v115);
          sub_1D881F6FC(v106, v107, &qword_1ECA63E20);
          if ((*v228)(v107, 1, v115) == 1)
          {
            sub_1D87A14E4(v107, &qword_1ECA63E20);
            v47 = v235;
            v110 = v230;
          }

          else
          {
            sub_1D8AF7F08(v107, v233, type metadata accessor for CVTrackSnapshot);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v110 = v230;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v109 = sub_1D87C7834(0, v109[2] + 1, 1, v109);
            }

            v127 = v109[2];
            v126 = v109[3];
            if (v127 >= v126 >> 1)
            {
              v109 = sub_1D87C7834(v126 > 1, v127 + 1, 1, v109);
            }

            v109[2] = v127 + 1;
            sub_1D8AF7F08(v233, v109 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v127, type metadata accessor for CVTrackSnapshot);
            v47 = v235;
          }

          ++v108;
          if (v112 == v110)
          {
            goto LABEL_82;
          }
        }
      }

      v109 = MEMORY[0x1E69E7CC0];
LABEL_82:

      v129 = v109;
      v130 = sub_1D8AF8058(v128);
      v234 = v52;

      v47 = sub_1D8B168F0();
      v131 = v130;
      v132 = 0;
      v52 = 1;
      v133 = 1 << *(v130 + 32);
      v134 = -1;
      if (v133 < 64)
      {
        v134 = ~(-1 << v133);
      }

      v136 = *(v130 + 64);
      v135 = v130 + 64;
      v137 = v134 & v136;
      v138 = (v133 + 63) >> 6;
      v139 = v129;
      v236 = v129;
      if ((v134 & v136) == 0)
      {
        break;
      }

      while (1)
      {
        v140 = __clz(__rbit64(v137));
        v137 &= v137 - 1;
LABEL_91:
        v143 = v140 | (v132 << 6);
        v144 = *(*(v131 + 6) + v143);
        v145 = *(*(v131 + 7) + 8 * v143);
        if (v145 >> 62)
        {
          v233 = v131;
          v146 = sub_1D8B16610();
          v131 = v233;
        }

        else
        {
          v146 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v47 + 64 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
        *(*(v47 + 48) + v143) = v144;
        *(*(v47 + 56) + 8 * v143) = v146;
        v147 = *(v47 + 16);
        v96 = __OFADD__(v147, 1);
        v148 = v147 + 1;
        if (v96)
        {
          break;
        }

        *(v47 + 16) = v148;
        v139 = v236;
        if (!v137)
        {
          goto LABEL_86;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      ;
    }

LABEL_86:
    v141 = v132;
    while (1)
    {
      v132 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        goto LABEL_170;
      }

      if (v132 >= v138)
      {
        break;
      }

      v142 = *(v135 + 8 * v132);
      ++v141;
      if (v142)
      {
        v140 = __clz(__rbit64(v142));
        v137 = (v142 - 1) & v142;
        goto LABEL_91;
      }
    }

    v149 = v224;

    v150 = swift_isUniquelyReferenced_nonNull_native();
    *&v254 = v149;
    v151 = v234;
    sub_1D8AFC44C(v47, sub_1D8AF5268, 0, v150, &v254);

    if (v151)
    {
      goto LABEL_181;
    }

    v152 = sub_1D8AF3C88(v254);

    if (v152[2])
    {

      v153 = sub_1D8B151C0();
      v154 = sub_1D8B16200();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v240 = v234;
        *v155 = 136315650;
        sub_1D87C4938();
        LODWORD(v233) = v154;
        v156 = sub_1D8B15740();
        v158 = v157;

        v159 = sub_1D89AC714(v156, v158, &v240);

        *(v155 + 4) = v159;
        *(v155 + 12) = 2080;
        v139 = v236;
        v160 = sub_1D8B15740();
        v162 = v161;

        v163 = sub_1D89AC714(v160, v162, &v240);

        *(v155 + 14) = v163;
        *(v155 + 22) = 2080;
        v164 = v245;
        *&v254 = 0;
        *(&v254 + 1) = 0xE000000000000000;
        sub_1D8B16020();
        if (v164)
        {
          v165 = 0x296C6C6974532820;
        }

        else
        {
          v165 = 0;
        }

        if (v164)
        {
          v166 = 0xE800000000000000;
        }

        else
        {
          v166 = 0xE000000000000000;
        }

        MEMORY[0x1DA71EFA0](v165, v166);

        v167 = sub_1D89AC714(v254, *(&v254 + 1), &v240);

        *(v155 + 24) = v167;
        _os_log_impl(&dword_1D8783000, v153, v233, "filterToRelevantTracks removed tracks by type: %s from total %s @ %s", v155, 0x20u);
        v168 = v234;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v168, -1, -1);
        MEMORY[0x1DA721330](v155, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    v169 = *(v139 + 2);
    if (v221)
    {
      v170 = sub_1D8B16610();
    }

    else
    {
      v170 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v74 = v225;
    if (v169 == v170)
    {

LABEL_119:
      v177 = v218;
LABEL_132:
      v254 = v246;
      *&v256[9] = v243;
      v185 = v245;
      *&v255 = v247;
      *(&v255 + 1) = v177;
      *v256 = v2;
      v256[8] = v245;
      *&v256[25] = *v244;
      *&v256[40] = *&v244[15];
      v257 = v139;
      v258 = v219;
      v186 = sub_1D8B151C0();
      v187 = sub_1D8B16200();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v242[0] = v189;
        *v188 = 136316162;
        if (v222)
        {
          v190 = 0x647075206174656DLL;
        }

        else
        {
          v190 = 0;
        }

        if (v222)
        {
          v191 = 0xEB00000000657461;
        }

        else
        {
          v191 = 0xE000000000000000;
        }

        v192 = sub_1D89AC714(v190, v191, v242);

        *(v188 + 4) = v192;
        *(v188 + 12) = 2080;
        if (v217)
        {
          v193 = 0xD000000000000011;
        }

        else
        {
          v193 = 0;
        }

        if (v217)
        {
          v194 = 0x80000001D8B490C0;
        }

        else
        {
          v194 = 0xE000000000000000;
        }

        v195 = sub_1D89AC714(v193, v194, v242);

        *(v188 + 14) = v195;
        *(v188 + 22) = 2080;
        if (v14 >= v17)
        {
          v196 = 0;
        }

        else
        {
          v196 = 0x6D6172662077656ELL;
        }

        if (v14 >= v17)
        {
          v197 = 0xE000000000000000;
        }

        else
        {
          v197 = 0xE900000000000065;
        }

        v198 = sub_1D89AC714(v196, v197, v242);

        *(v188 + 24) = v198;
        *(v188 + 32) = 2080;
        if (v223)
        {
          v199 = 0x7266206C616E6966;
        }

        else
        {
          v199 = 0;
        }

        if (v223)
        {
          v200 = 0xEB00000000656D61;
        }

        else
        {
          v200 = 0xE000000000000000;
        }

        v201 = sub_1D89AC714(v199, v200, v242);

        *(v188 + 34) = v201;
        *(v188 + 42) = 2080;
        v240 = 0;
        v241 = 0xE000000000000000;
        sub_1D8B16020();
        if (v185)
        {
          v202 = 0x296C6C6974532820;
        }

        else
        {
          v202 = 0;
        }

        if (v185)
        {
          v203 = 0xE800000000000000;
        }

        else
        {
          v203 = 0xE000000000000000;
        }

        MEMORY[0x1DA71EFA0](v202, v203);

        v204 = sub_1D89AC714(v240, v241, v242);

        *(v188 + 44) = v204;
        _os_log_impl(&dword_1D8783000, v186, v187, "Pushed update due to: %s %s %s %s @ %s", v188, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v189, -1, -1);
        v205 = v188;
        v74 = v225;
        MEMORY[0x1DA721330](v205, -1, -1);
      }

      sub_1D8AF6250(&v254);
      sub_1D8943A60(&v254);
      goto LABEL_165;
    }

    v171 = sub_1D8B151C0();
    v172 = sub_1D8B16210();
    if (!os_log_type_enabled(v171, v172))
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_119;
    }

    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v240 = v174;
    *v173 = 134218498;
    v175 = v235;
    if (v221)
    {
      v176 = sub_1D8B16610();
    }

    else
    {
      v176 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v178 = *(v139 + 2);
    v96 = __OFSUB__(v176, v178);
    v179 = v176 - v178;
    if (!v96)
    {
      *(v173 + 4) = v179;

      *(v173 + 12) = 2048;
      if (v221)
      {
        v180 = sub_1D8B16610();
      }

      else
      {
        v180 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v173 + 14) = v180;

      *(v173 + 22) = 2080;
      v181 = v245;
      *&v254 = 0;
      *(&v254 + 1) = 0xE000000000000000;
      sub_1D8B16020();
      if (v181)
      {
        v182 = 0x296C6C6974532820;
      }

      else
      {
        v182 = 0;
      }

      if (v181)
      {
        v183 = 0xE800000000000000;
      }

      else
      {
        v183 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v182, v183);

      v184 = sub_1D89AC714(v254, *(&v254 + 1), &v240);

      *(v173 + 24) = v184;
      _os_log_impl(&dword_1D8783000, v171, v172, "Filtered %ld tracks with nil snapshots out of %ld @ %s", v173, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v174);
      MEMORY[0x1DA721330](v174, -1, -1);
      MEMORY[0x1DA721330](v173, -1, -1);

      v74 = v225;
      v177 = v218;
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_178;
  }

  v74 = v225;
  if (v223 & 1) != 0 && ((v73 | v222))
  {
    goto LABEL_43;
  }

LABEL_165:
  v206 = v252;
  v207 = v253;
  v208 = __swift_project_boxed_opaque_existential_1(v251, v252);
  if (sub_1D8AD5EF4(v208, v206, v207))
  {
    v209 = v74 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v210 = *(v209 + 8);
      ObjectType = swift_getObjectType();
      v212 = v252;
      v213 = v253;
      v214 = __swift_project_boxed_opaque_existential_1(v251, v252);
      (*(v210 + 8))(v214, v212, v213, ObjectType, v210);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v251);
}

uint64_t sub_1D8AEB2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v174 = a5;
  v176 = a4;
  v184 = a3;
  v175 = a2;
  v165 = a6;
  v181 = type metadata accessor for CVTrackSnapshot(0);
  v182 = *(v181 - 8);
  v7 = MEMORY[0x1EEE9AC00](v181);
  v183 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v162 - v9;
  v10 = sub_1D8B13240();
  v178 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v189 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v177 = (&v162 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v162 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69170);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v191 = &v162 - v18;
  v168 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v166 = *(v168 - 8);
  v19 = MEMORY[0x1EEE9AC00](v168);
  v163 = (&v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v164 = &v162 - v21;
  v22 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v187 = (&v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for ProcessorState(0);
  v170 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v172 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v171 = &v162 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v162 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v162 - v32;
  v34 = type metadata accessor for DetectionRequest(0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v173 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v186 = &v162 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v162 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v162 - v42;
  v167 = a1;
  sub_1D8AF7FF0(a1, v33, type metadata accessor for ProcessorState);
  v44 = v24;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

LABEL_5:
    sub_1D8AF7F08(v33, v43, type metadata accessor for DetectionRequest);
    goto LABEL_6;
  }

  v46 = v187;
  sub_1D8AF7F08(v33, v187, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v46, v43, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v46, type metadata accessor for DetectionResult);
LABEL_6:
  v47 = v188;
  v48 = *&v43[*(v34 + 32)];
  sub_1D8AF7F70(v43, type metadata accessor for DetectionRequest);
  if (v48 > CameraSourceFrame.timestamp.getter(v176, v174))
  {
    v49 = sub_1D8B151C0();
    v50 = sub_1D8B16210();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D8783000, v49, v50, "Detection result provided but applies to some future frame", v51, 2u);
      MEMORY[0x1DA721330](v51, -1, -1);
    }

    return (*(v166 + 56))(v165, 1, 1, v168);
  }

  v53 = v16;
  v54 = swift_beginAccess();
  v55 = *(v47 + 192);
  MEMORY[0x1EEE9AC00](v54);
  v56 = v167;
  *(&v162 - 2) = v167;

  v169 = sub_1D87C7118(sub_1D8AF7FD0, &v162 - 4, v55);
  sub_1D8AF7FF0(v56, v31, type metadata accessor for ProcessorState);
  v57 = v44;
  v58 = swift_getEnumCaseMultiPayload();
  v185 = 0;
  if (v58)
  {
    v59 = v191;
    if (v58 == 1)
    {
      v60 = v187;
      sub_1D8AF7F08(v31, v187, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v60, v41, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v60, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      sub_1D8AF7F08(v31, v41, type metadata accessor for DetectionRequest);
    }

    v61 = v53;
  }

  else
  {
    sub_1D8AF7F08(v31, v41, type metadata accessor for DetectionRequest);
    v61 = v53;
    v59 = v191;
  }

  v62 = sub_1D8AD28E4();
  sub_1D8AF7F70(v41, type metadata accessor for DetectionRequest);
  if (v62)
  {
  }

  sub_1D87A0E38(v184, v59, &qword_1ECA69170);
  v63 = *(v166 + 48);
  v180 = v166 + 48;
  v179 = v63;
  v64 = v63(v59, 1, v168);
  v191 = v10;
  if (v64 == 1)
  {
    sub_1D87A14E4(v59, &qword_1ECA69170);
    if (!v62)
    {
      v82 = v169;

      v83 = v82;
      goto LABEL_34;
    }

    v65 = v172;
    sub_1D8AF7FF0(v167, v172, type metadata accessor for ProcessorState);
    v66 = swift_getEnumCaseMultiPayload();
    v67 = v176;
    v68 = v175;
    v69 = v174;
    if (v66)
    {
      v70 = v173;
      if (v66 == 1)
      {
        v71 = v187;
        sub_1D8AF7F08(v65, v187, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v71, v70, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v71, type metadata accessor for DetectionResult);
LABEL_33:
        v82 = v169;
        v83 = sub_1D8AE21A8(v70, v68, v67, v69);
        sub_1D8AF7F70(v70, type metadata accessor for DetectionRequest);
LABEL_34:
        v85 = sub_1D87C543C(v82);

        v87 = sub_1D87C543C(v86);
        v186 = v83;

        v88 = sub_1D8AD11C8(v87, v85);

        if ((v88 & 0xC000000000000001) == 0)
        {
          goto LABEL_68;
        }

LABEL_35:
        sub_1D8B165D0();
        type metadata accessor for CVTrackedDetection(0);
        sub_1D8AF7D70(&qword_1EE0E62B8, type metadata accessor for CVTrackedDetection);
        sub_1D8B16070();
        v88 = v197;
        v89 = v198;
        v90 = v199;
        v91 = v200;
        v92 = v201;
        goto LABEL_72;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v84 = v65;
    }

    else
    {
      v84 = v65;
      v70 = v173;
    }

    sub_1D8AF7F08(v84, v70, type metadata accessor for DetectionRequest);
    goto LABEL_33;
  }

  sub_1D8AF7F08(v59, v164, type metadata accessor for TrackManager.MatchingComputationRequest);
  if (v62)
  {

    v72 = v171;
    sub_1D8AF7FF0(v167, v171, type metadata accessor for ProcessorState);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73)
    {
      v74 = v176;
      v75 = v175;
      v76 = v174;
      v77 = v168;
      v78 = v177;
      if (v73 == 1)
      {
        v79 = v72;
        v80 = v187;
        sub_1D8AF7F08(v79, v187, type metadata accessor for DetectionResult);
        v81 = v186;
        sub_1D8AF7FF0(v80, v186, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v80, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        v81 = v186;
        sub_1D8AF7F08(v72, v186, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v81 = v186;
      sub_1D8AF7F08(v72, v186, type metadata accessor for DetectionRequest);
      v74 = v176;
      v75 = v175;
      v76 = v174;
      v77 = v168;
      v78 = v177;
    }

    v186 = sub_1D8AE21A8(v81, v75, v74, v76);
    sub_1D8AF7F70(v81, type metadata accessor for DetectionRequest);
  }

  else
  {
    sub_1D8AF7FF0(v167, v61, type metadata accessor for ProcessorState);
    (*(v170 + 56))(v61, 0, 1, v57);
    v186 = sub_1D8AE7500(v169, v61, v175, v176, v174);

    sub_1D87A14E4(v61, &qword_1ECA64948);
    v77 = v168;
    v78 = v177;
  }

  v93 = *(v164 + *(v77 + 24));
  v94 = *(v93 + 16);
  v95 = MEMORY[0x1E69E7CC0];
  if (v94)
  {
    v197 = MEMORY[0x1E69E7CC0];
    sub_1D87F3EE0(0, v94, 0);
    v96 = v197;
    v97 = v93 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
    v98 = *(v182 + 72);
    v99 = (v178 + 16);
    do
    {
      v100 = v190;
      sub_1D8AF7FF0(v97, v190, type metadata accessor for CVTrackSnapshot);
      (*v99)(v78, v100, v10);
      sub_1D8AF7F70(v100, type metadata accessor for CVTrackSnapshot);
      v197 = v96;
      v101 = v10;
      v103 = *(v96 + 16);
      v102 = *(v96 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_1D87F3EE0(v102 > 1, v103 + 1, 1);
        v96 = v197;
      }

      *(v96 + 16) = v103 + 1;
      (*(v178 + 32))(v96 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v103, v78, v101);
      v97 += v98;
      --v94;
      v10 = v101;
    }

    while (v94);
    v104 = v188;
    v95 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v96 = MEMORY[0x1E69E7CC0];
    v104 = v188;
  }

  v88 = sub_1D87C4B18(v96);

  v105 = *(v104 + 192);
  v197 = v95;
  if (!(v105 >> 62))
  {
    v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_47;
  }

  while (2)
  {
    v106 = sub_1D8B16610();
LABEL_47:

    if (!v106)
    {
      v119 = MEMORY[0x1E69E7CC0];
      goto LABEL_67;
    }

    v107 = 0;
    v173 = (v105 & 0xC000000000000001);
    v172 = v105 & 0xFFFFFFFFFFFFFF8;
    v171 = v105 + 32;
    v190 = v88 + 56;
    v187 = (v178 + 8);
    v188 = v178 + 16;
    v170 = v105;
    v169 = v106;
    v108 = v189;
    while (v173)
    {
      MEMORY[0x1DA71FC20](v107, v105);
      v109 = __OFADD__(v107, 1);
      v107 = (v107 + 1);
      if (v109)
      {
        goto LABEL_64;
      }

LABEL_53:
      if (*(v88 + 16))
      {
        v177 = v107;
        sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
        v110 = sub_1D8B15790();
        v111 = -1 << *(v88 + 32);
        v112 = v110 & ~v111;
        if ((*(v190 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112))
        {
          v113 = ~v111;
          v114 = *(v178 + 72);
          v115 = *(v178 + 16);
          while (1)
          {
            v116 = v88;
            v117 = v191;
            v115(v108, *(v88 + 48) + v114 * v112, v191);
            sub_1D8AF7D70(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
            v118 = sub_1D8B158C0();
            (*v187)(v108, v117);
            if (v118)
            {
              break;
            }

            v112 = (v112 + 1) & v113;
            v88 = v116;
            if (((*(v190 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          sub_1D8B167E0();
          sub_1D8B16820();
          sub_1D8B16830();
          sub_1D8B167F0();
          v88 = v116;
        }

        else
        {
LABEL_58:
        }

        v105 = v170;
        v106 = v169;
        v107 = v177;
        if (v177 == v169)
        {
          goto LABEL_65;
        }
      }

      else
      {

        if (v107 == v106)
        {
          goto LABEL_65;
        }
      }
    }

    if (v107 >= *(v172 + 16))
    {
      goto LABEL_110;
    }

    v109 = __OFADD__(v107, 1);
    v107 = (v107 + 1);
    if (!v109)
    {
      goto LABEL_53;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    v119 = v197;
LABEL_67:

    v120 = sub_1D87C543C(v119);

    v122 = sub_1D87C543C(v121);

    v88 = sub_1D8AD11C8(v122, v120);

    sub_1D8AF7F70(v164, type metadata accessor for TrackManager.MatchingComputationRequest);
    if ((v88 & 0xC000000000000001) != 0)
    {
      goto LABEL_35;
    }

LABEL_68:
    v91 = 0;
    v123 = -1 << *(v88 + 32);
    v89 = v88 + 56;
    v90 = ~v123;
    v124 = -v123;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    else
    {
      v125 = -1;
    }

    v92 = v125 & *(v88 + 56);
LABEL_72:
    v190 = v90;
    v105 = (v90 + 64) >> 6;
    if (v88 < 0)
    {
      goto LABEL_79;
    }

    while (1)
    {
      v126 = v91;
      v127 = v92;
      v128 = v91;
      if (!v92)
      {
        while (1)
        {
          v128 = v126 + 1;
          if (__OFADD__(v126, 1))
          {
            break;
          }

          if (v128 >= v105)
          {
            goto LABEL_83;
          }

          v127 = *(v89 + 8 * v128);
          ++v126;
          if (v127)
          {
            goto LABEL_77;
          }
        }

        __break(1u);
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

LABEL_77:
      v129 = (v127 - 1) & v127;
      v130 = *(*(v88 + 48) + ((v128 << 9) | (8 * __clz(__rbit64(v127)))));

      if (!v130)
      {
        break;
      }

      while (1)
      {
        v192 = CameraSourceFrame.timestamp.getter(v176, v174);
        v193 = 96;
        sub_1D8AC9B48(&v192);

        v91 = v128;
        v92 = v129;
        if ((v88 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_79:
        v131 = sub_1D8B16640();
        if (v131)
        {
          v196 = v131;
          type metadata accessor for CVTrackedDetection(0);
          swift_dynamicCast();
          v128 = v91;
          v129 = v92;
          if (v192 != 0.0)
          {
            continue;
          }
        }

        goto LABEL_83;
      }
    }

LABEL_83:
    sub_1D87977A0();
    v105 = v186 >> 62;
    if (!(v186 >> 62))
    {
      v132 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_85;
    }

LABEL_111:
    v132 = sub_1D8B16610();
LABEL_85:
    v133 = v176;
    v134 = v175;
    v135 = v174;
    v136 = v168;
    if (!v132)
    {
      goto LABEL_95;
    }

    if (v132 < 1)
    {
      __break(1u);
LABEL_113:
      __break(1u);
      continue;
    }

    break;
  }

  v88 = 0;
  v137 = v186 & 0xC000000000000001;
  do
  {
    if (v137)
    {
      MEMORY[0x1DA71FC20](v88, v186);
    }

    else
    {
    }

    ++v88;
    if (v179(v184, 1, v136) == 1)
    {
      v138 = 3;
    }

    else
    {
      v138 = 4;
    }

    sub_1D8AC9AF0(v138, v134, v133, v135);
  }

  while (v132 != v88);
LABEL_95:
  sub_1D8ADABAC();
  if (v105)
  {
    v105 = v186;
    v139 = sub_1D8B16610();
    if (!v139)
    {
LABEL_107:

      v141 = MEMORY[0x1E69E7CC0];
      goto LABEL_108;
    }
  }

  else
  {
    v105 = v186;
    v139 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v139)
    {
      goto LABEL_107;
    }
  }

  v192 = MEMORY[0x1E69E7CC0];
  sub_1D87F4628(0, v139 & ~(v139 >> 63), 0);
  if (v139 < 0)
  {
    goto LABEL_113;
  }

  v140 = 0;
  v141 = v192;
  v142 = v105;
  v190 = v105 & 0xC000000000000001;
  v143 = (v178 + 16);
  v144 = v183;
  v145 = v139;
  do
  {
    if (v190)
    {
      v146 = MEMORY[0x1DA71FC20](v140, v142);
    }

    else
    {
      v146 = *(v142 + 8 * v140 + 32);
    }

    (*v143)(v144, v146 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id, v191);
    CVTrackedDetection.latestDetection.getter(&v196);
    v147 = v196;
    CVTrackedDetection.latestEstimate.getter(&v195);
    v148 = v195;
    v149 = *(*(v146 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
    v150 = *(v146 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
    v151 = sub_1D8ABF4E8();
    v152 = v185;
    v153 = sub_1D8AC0E90(*(v146 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
    v185 = v152;
    sub_1D891FD78(v153, &v194);

    v144 = v183;

    v154 = v194;
    v155 = v181;
    *(v144 + *(v181 + 20)) = v147;
    *(v144 + v155[6]) = v148;
    *(v144 + v155[7]) = v149;
    *(v144 + v155[8]) = v150;
    *(v144 + v155[9]) = v151;
    *(v144 + v155[10]) = v154;
    v192 = v141;
    v157 = *(*&v141 + 16);
    v156 = *(*&v141 + 24);
    if (v157 >= v156 >> 1)
    {
      sub_1D87F4628(v156 > 1, v157 + 1, 1);
      v144 = v183;
      v141 = v192;
    }

    ++v140;
    *(*&v141 + 16) = v157 + 1;
    sub_1D8AF7F08(v144, *&v141 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v157, type metadata accessor for CVTrackSnapshot);
    v142 = v186;
  }

  while (v145 != v140);

  v133 = v176;
  v134 = v175;
  v135 = v174;
  v136 = v168;
LABEL_108:
  v158 = v163;
  v163[3] = v133;
  v158[4] = v135;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v158);
  (*(*(v133 - 8) + 16))(boxed_opaque_existential_1, v134, v133);
  sub_1D8AF7FF0(v167, v158 + *(v136 + 20), type metadata accessor for ProcessorState);
  *(v158 + *(v136 + 24)) = v141;
  v160 = v158;
  v161 = v165;
  sub_1D8AF7F08(v160, v165, type metadata accessor for TrackManager.MatchingComputationRequest);
  return (*(v166 + 56))(v161, 0, 1, v136);
}

BOOL sub_1D8AECB60(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(*(*a1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64) == 1)
  {
    return 0;
  }

  CVTrackedDetection.latestDetection.getter(&v20);
  v19 = v20;
  CVDetection.detectionType.getter(&v18);

  v14 = v18;
  sub_1D8AF7FF0(a2, v9, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

LABEL_7:
    sub_1D8AF7F08(v9, v12, type metadata accessor for DetectionRequest);
    goto LABEL_8;
  }

  sub_1D8AF7F08(v9, v6, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v6, v12, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v6, type metadata accessor for DetectionResult);
LABEL_8:
  v16 = *v12;
  sub_1D8AF7F70(v12, type metadata accessor for DetectionRequest);
  return v14 == v16;
}

size_t sub_1D8AECDD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v46 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v42 = v4;
  v12 = *(v4 + 192);
  if (a1 >> 62)
  {
    if (sub_1D8B16610())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_beginAccess();

    sub_1D88F6924(v13);
    swift_endAccess();
    goto LABEL_6;
  }

LABEL_6:
  v50 = v12;

  sub_1D88F6924(v14);
  v15 = v50;
  if (v50 >> 62)
  {
    v34 = v50;
    v16 = sub_1D8B16610();
    v15 = v34;
    v41 = a2;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_18:

    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v16 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v41 = a2;
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_8:
  v17 = v15;
  v50 = MEMORY[0x1E69E7CC0];
  result = sub_1D87F4628(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    return result;
  }

  v39 = a3;
  v40 = a4;
  v19 = 0;
  v20 = v50;
  v21 = v17;
  v43 = v17 & 0xC000000000000001;
  v44 = v16;
  v45 = v17;
  do
  {
    if (v43)
    {
      v22 = MEMORY[0x1DA71FC20](v19, v21);
    }

    else
    {
      v22 = *(v21 + 8 * v19 + 32);
    }

    v23 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
    v24 = sub_1D8B13240();
    (*(*(v24 - 8) + 16))(v11, v22 + v23, v24);
    CVTrackedDetection.latestDetection.getter(&v49);
    v25 = v49;
    CVTrackedDetection.latestEstimate.getter(&v48);
    v26 = v48;
    v27 = *(*(v22 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
    v28 = *(v22 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
    v29 = sub_1D8ABF4E8();
    v30 = sub_1D8AC0E90(*(v22 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
    sub_1D891FD78(v30, &v47);

    v31 = v47;
    *&v11[v9[5]] = v25;
    *&v11[v9[6]] = v26;
    v11[v9[7]] = v27;
    *&v11[v9[8]] = v28;
    *&v11[v9[9]] = v29;
    v11[v9[10]] = v31;
    v50 = v20;
    v33 = *(v20 + 16);
    v32 = *(v20 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1D87F4628(v32 > 1, v33 + 1, 1);
      v20 = v50;
    }

    ++v19;
    *(v20 + 16) = v33 + 1;
    sub_1D8AF7F08(v11, v20 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v33, type metadata accessor for CVTrackSnapshot);
    v21 = v45;
  }

  while (v44 != v19);

  a3 = v39;
  a4 = v40;
LABEL_19:
  v35 = v42 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v36 = *(v35 + 8);
  ObjectType = swift_getObjectType();
  (*(v36 + 32))(v20, v41, a3, a4, ObjectType, v36);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8AED1F4(unint64_t a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = *(v2 - 8);
  v73 = v2;
  v74 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      swift_bridgeObjectRetain_n();
      v8 = sub_1D8B151C0();
      v9 = sub_1D8B16200();
      v10 = os_log_type_enabled(v8, v9);
      v72 = a1;
      if (!v10)
      {
        break;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v75[0] = v12;
      *v11 = 134218242;
      v71 = v6;
      v69 = v8;
      v67 = v9;
      v66 = v12;
      if (v6)
      {
        v13 = sub_1D8B16610();
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 4) = v13;
      v68 = v11;
      *(v11 + 12) = 2080;

      v17 = sub_1D8AF8058(v16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
      v18 = sub_1D8B168F0();
      v19 = v18;
      a1 = 0;
      v20 = 1 << *(v17 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v17 + 64);
      v23 = (v20 + 63) >> 6;
      v24 = v18 + 64;
      if (!v22)
      {
LABEL_13:
        v26 = a1;
        while (1)
        {
          a1 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (a1 >= v23)
          {
            break;
          }

          v27 = *(v17 + 64 + 8 * a1);
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v22 = (v27 - 1) & v27;
            goto LABEL_18;
          }
        }

        a1 = v72;

        sub_1D87C4938();
        v34 = sub_1D8B15740();
        v36 = v35;

        v37 = sub_1D89AC714(v34, v36, v75);

        v38 = v68;
        *(v68 + 14) = v37;
        v39 = v69;
        _os_log_impl(&dword_1D8783000, v69, v67, "TrackManager.remove: Removing %ld tracks by type: %s", v38, 0x16u);
        v40 = v66;
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x1DA721330](v40, -1, -1);
        MEMORY[0x1DA721330](v38, -1, -1);

        v14 = a1 & 0xFFFFFFFFFFFFFF8;
        if (!v71)
        {
          goto LABEL_7;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_18:
        v28 = v25 | (a1 << 6);
        v6 = *(*(v17 + 48) + v28);
        v29 = *(*(v17 + 56) + 8 * v28);
        if (v29 >> 62)
        {
          v65 = v24;
          v30 = sub_1D8B16610();
          v24 = v65;
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        *(v19[6] + v28) = v6;
        *(v19[7] + 8 * v28) = v30;
        v31 = v19[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          break;
        }

        v19[2] = v33;
        if (!v22)
        {
          goto LABEL_13;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      result = sub_1D8B16610();
      if (!result)
      {
        return result;
      }
    }

    swift_bridgeObjectRelease_n();
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v6)
    {
LABEL_7:
      v15 = *(v14 + 16);
      goto LABEL_26;
    }

LABEL_25:
    v15 = sub_1D8B16610();
LABEL_26:
    v41 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v75[0] = MEMORY[0x1E69E7CC0];
      result = sub_1D87F4628(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        goto LABEL_48;
      }

      v42 = 0;
      v41 = v75[0];
      v71 = a1 & 0xC000000000000001;
      do
      {
        if (v71)
        {
          v43 = MEMORY[0x1DA71FC20](v42, a1);
        }

        else
        {
          v43 = *(a1 + 8 * v42 + 32);
        }

        v44 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
        v45 = sub_1D8B13240();
        (*(*(v45 - 8) + 16))(v5, v43 + v44, v45);
        CVTrackedDetection.latestDetection.getter(&v78);
        v46 = v78;
        CVTrackedDetection.latestEstimate.getter(&v77);
        v47 = v77;
        v48 = *(*(v43 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
        v49 = *(v43 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
        v50 = sub_1D8ABF4E8();
        v51 = sub_1D8AC0E90(*(v43 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
        sub_1D891FD78(v51, &v76);

        v52 = v76;
        v53 = v73;
        *&v5[v73[5]] = v46;
        *&v5[v53[6]] = v47;
        v5[v53[7]] = v48;
        *&v5[v53[8]] = v49;
        *&v5[v53[9]] = v50;
        v5[v53[10]] = v52;
        v75[0] = v41;
        v55 = *(v41 + 16);
        v54 = *(v41 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1D87F4628(v54 > 1, v55 + 1, 1);
          v41 = v75[0];
        }

        ++v42;
        *(v41 + 16) = v55 + 1;
        sub_1D8AF7F08(v5, v41 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v55, type metadata accessor for CVTrackSnapshot);
        a1 = v72;
      }

      while (v15 != v42);
    }

    v56 = v70;
    v57 = v70 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v58 = *(v57 + 8);
      ObjectType = swift_getObjectType();
      (*(v58 + 40))(v41, ObjectType, v58);

      v60 = swift_unknownObjectRelease();
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v60);
    *(&v64 - 2) = &v79;
    swift_beginAccess();
    result = sub_1D8AF4848(sub_1D8AFC704, (&v64 - 4));
    v61 = *(v56 + 192);
    if (v61 >> 62)
    {
      v63 = result;
      v62 = sub_1D8B16610();
      result = v63;
      if (v62 >= v63)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v62 >= result)
      {
LABEL_40:
        sub_1D88648C8(result, v62);
        return swift_endAccess();
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8AED8E4(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_1D8B16610();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  swift_bridgeObjectRetain_n();
  v6 = sub_1D8B151C0();
  v7 = sub_1D8B16200();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    v49 = v2;
    v50[0] = v9;
    v47 = v6;
    v45 = v7;
    v44 = v9;
    if (v4)
    {
      v10 = sub_1D8B16610();
    }

    else
    {
      v10 = *(a1 + 16);
    }

    *(v8 + 4) = v10;
    v46 = v8;
    *(v8 + 12) = 2080;

    v12 = sub_1D8AD1338(v11);
    v48 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
    result = sub_1D8B168F0();
    v13 = result;
    v14 = 0;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v12 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    if (v17)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_19:
        v23 = v20 | (v14 << 6);
        v24 = *(*(v12 + 48) + v23);
        v25 = *(*(v12 + 56) + 8 * v23);
        result = v25 >> 62 ? sub_1D8B16610() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(v13[6] + v23) = v24;
        *(v13[7] + 8 * v23) = result;
        v26 = v13[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          break;
        }

        v13[2] = v28;
        if (!v17)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v21 = v14;
      while (1)
      {
        v14 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v14 >= v18)
        {

          sub_1D87C4938();
          v29 = sub_1D8B15740();
          v31 = v30;

          v32 = sub_1D89AC714(v29, v31, v50);

          v34 = v46;
          v33 = v47;
          *(v46 + 14) = v32;
          _os_log_impl(&dword_1D8783000, v33, v45, "TrackManager.remove: Removing %ld tracks by type: %s", v34, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x1DA721330](v44, -1, -1);
          MEMORY[0x1DA721330](v34, -1, -1);

          v2 = v49;
          goto LABEL_26;
        }

        v22 = *(v12 + 64 + 8 * v14);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v17 = (v22 - 1) & v22;
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
LABEL_26:
    v35 = sub_1D8ACF380(a1);
    v36 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      ObjectType = swift_getObjectType();
      (*(v37 + 40))(v35, ObjectType, v37);

      v39 = swift_unknownObjectRelease();
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v39);
    v43[2] = &v51;
    swift_beginAccess();
    result = sub_1D8AF4848(sub_1D8AFD010, v43);
    v40 = *(v2 + 192);
    if (!(v40 >> 62))
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41 < result)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      goto LABEL_31;
    }
  }

  v42 = result;
  v41 = sub_1D8B16610();
  result = v42;
  if (v41 < v42)
  {
    goto LABEL_36;
  }

LABEL_31:
  sub_1D88648C8(result, v41);
  return swift_endAccess();
}

uint64_t sub_1D8AEDD38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for CVTrackSnapshot(0) + 24));
}

uint64_t sub_1D8AEDD84@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8B16D20();
  CVTrackSnapshot.hash(into:)(v3);
  result = sub_1D8B16D80();
  *a1 = result;
  return result;
}

void *sub_1D8AEDDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v70 = a3;
  v68 = a2;
  v8 = type metadata accessor for CVTrackSnapshot(0);
  v74 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v79 = &v68 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69218);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63220);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v82 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v68 - v25;
  v26 = *(a1 + 16);
  v69 = v26;
  if (v26)
  {
    v75 = v24;
    v80 = (v24 + 48);
    v81 = (v24 + 56);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = (a1 + 40);
    do
    {
      v29 = v27;
      v30 = v21;
      v32 = *(v28 - 1);
      v31 = *v28;
      v33 = *(a4 + 16);

      if (v33 && (v34 = a4, v35 = sub_1D87F0680(v32), (v36 & 1) != 0))
      {
        v37 = *(a4 + 56) + *(v74 + 72) * v35;
        v38 = v72;
        sub_1D8AF7FF0(v37, v72, type metadata accessor for CVTrackSnapshot);
        v39 = v38;
        v40 = v20;
        v41 = v71;
        sub_1D8AF7F08(v39, v71, type metadata accessor for CVTrackSnapshot);
        v77 = *(v30 + 48);
        v78 = v29;
        v42 = v41;
        v43 = v83;
        v20 = v40;
        sub_1D8AF7F08(v42, v83, type metadata accessor for CVTrackSnapshot);
        v27 = v78;
        *(v43 + v77) = v31;
        a4 = v34;
        v21 = v30;
        (*v81)(v43, 0, 1, v30);
      }

      else
      {
        v21 = v30;
        (*v81)(v83, 1, 1, v30);
        v27 = v29;
      }

      sub_1D881F6FC(v83, v20, &qword_1ECA69218);

      if ((*v80)(v20, 1, v21) == 1)
      {
        sub_1D87A14E4(v20, &qword_1ECA69218);
      }

      else
      {
        v44 = v76;
        sub_1D881F6FC(v20, v76, &qword_1ECA63220);
        sub_1D881F6FC(v44, v82, &qword_1ECA63220);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D87CA520(0, v27[2] + 1, 1, v27);
        }

        v46 = v27[2];
        v45 = v27[3];
        if (v46 >= v45 >> 1)
        {
          v27 = sub_1D87CA520(v45 > 1, v46 + 1, 1, v27);
        }

        v27[2] = v46 + 1;
        sub_1D881F6FC(v82, v27 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v46, &qword_1ECA63220);
      }

      v28 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v47 = *(v68 + 16);
  v83 = v47;
  if (v47)
  {
    v48 = (v68 + 32);
    v49 = MEMORY[0x1E69E7CC0];
    v50 = v74;
    do
    {
      if (*(a4 + 16))
      {
        v51 = *v48;

        v52 = sub_1D87F0680(v51);
        if (v53)
        {
          v54 = *(v50 + 72);
          v55 = v73;
          sub_1D8AF7FF0(*(a4 + 56) + v54 * v52, v73, type metadata accessor for CVTrackSnapshot);

          sub_1D8AF7F08(v55, v79, type metadata accessor for CVTrackSnapshot);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1D87C7834(0, v49[2] + 1, 1, v49);
          }

          v57 = v49[2];
          v56 = v49[3];
          if (v57 >= v56 >> 1)
          {
            v49 = sub_1D87C7834(v56 > 1, v57 + 1, 1, v49);
          }

          v49[2] = v57 + 1;
          sub_1D8AF7F08(v79, v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + v57 * v54, type metadata accessor for CVTrackSnapshot);
        }

        else
        {
        }
      }

      ++v48;
      --v47;
    }

    while (v47);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v58 = v83;
  if (v27[2] != v69)
  {
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v59 = sub_1D8B151E0();
    __swift_project_value_buffer(v59, qword_1EE0E4350);
    v60 = sub_1D8B151C0();
    v61 = sub_1D8B16230();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = a5;
      _os_log_impl(&dword_1D8783000, v60, v61, "Failed to lookup track with latest estimate for matchPairs @ t=%f", v62, 0xCu);
      MEMORY[0x1DA721330](v62, -1, -1);
    }
  }

  if (v49[2] != v58)
  {
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v63 = sub_1D8B151E0();
    __swift_project_value_buffer(v63, qword_1EE0E4350);
    v64 = sub_1D8B151C0();
    v65 = sub_1D8B16230();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = a5;
      _os_log_impl(&dword_1D8783000, v64, v65, "Failed to lookup track with latest estimate for unmatchedTracks @ t=%f", v66, 0xCu);
      MEMORY[0x1DA721330](v66, -1, -1);
    }
  }

  return v27;
}

BOOL sub_1D8AEE5DC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a1 + 3);
  v13[2] = *(a1 + 2);
  v13[3] = v6;
  v13[4] = *(a1 + 4);
  v7 = *(a1 + 1);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a2 + 3);
  v12[2] = *(a2 + 2);
  v12[3] = v8;
  v12[4] = *(a2 + 4);
  v9 = *(a2 + 1);
  v12[0] = *a2;
  v12[1] = v9;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v13, v12))
  {
    return 0;
  }

  v10 = *(a3 + 20);

  return _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(&a1[v10], &a2[v10]);
}

uint64_t sub_1D8AEE688()
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)();
  DetectionRequest.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8AEE76C()
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)();
  DetectionRequest.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8AEE7E8(uint64_t a1)
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)();
  sub_1D8A36918(v4);
  MEMORY[0x1DA720210](*(v1 + *(a1 + 24)));
  return sub_1D8B16D80();
}

uint64_t sub_1D8AEE874(__int128 *a1, uint64_t a2)
{
  CameraSourceFrameMetadata.hash(into:)();
  sub_1D8A36918(a1);
  return MEMORY[0x1DA720210](*(v2 + *(a2 + 24)));
}

uint64_t sub_1D8AEE8EC(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)();
  sub_1D8A36918(v5);
  MEMORY[0x1DA720210](*(v2 + *(a2 + 24)));
  return sub_1D8B16D80();
}

uint64_t sub_1D8AEE974@<X0>(_BYTE *a1@<X0>, void (*a2)(uint64_t *__return_ptr, _BYTE *)@<X1>, uint64_t *a3@<X3>, NSObject *a4@<X4>, uint64_t a5@<X8>)
{
  v47 = a4;
  v48 = a5;
  v8 = sub_1D8B152F0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v39[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39[-v14];
  a2(&v51, a1);
  v16 = *a3;
  v17 = v51;
  v18 = v52;
  v49[0] = v51;
  v49[1] = v52;

  sub_1D8B166A0();
  v19 = sub_1D89A5B64(v50, v16);

  sub_1D881F6A8(v50);
  if (v19)
  {
    v46 = v8;
    sub_1D87A0E38(v47, v15, &qword_1ECA65E98);
    v20 = sub_1D8B151E0();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {

      sub_1D87A14E4(v15, &qword_1ECA65E98);
      v22 = 1;
      v23 = v48;
      v8 = v46;
    }

    else
    {
      v43 = v9;
      v25 = *(v9 + 16);
      v26 = v45;
      v8 = v46;
      v42 = v25;
      v25(v45, a1, v46);
      v27 = sub_1D8B151C0();
      v28 = sub_1D8B161F0();
      v47 = v27;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v50[0] = v41;
        *v29 = 136315394;
        *(v29 + 4) = sub_1D89AC714(0xD00000000000001ELL, 0x80000001D8B49260, v50);
        *(v29 + 12) = 2080;
        v40 = v28;
        v42(v44, v26, v8);
        v30 = sub_1D8B159E0();
        v32 = v31;
        v33 = v43;
        (*(v43 + 8))(v26, v46);
        v34 = sub_1D89AC714(v30, v32, v50);
        v8 = v46;

        *(v29 + 14) = v34;
        v35 = v47;
        _os_log_impl(&dword_1D8783000, v47, v40, "filterUnique is eliminating duplicate %s: %s", v29, 0x16u);
        v36 = v41;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v36, -1, -1);
        MEMORY[0x1DA721330](v29, -1, -1);

        v9 = v33;
      }

      else
      {

        v37 = v43;
        (*(v43 + 8))(v26, v8);

        v9 = v37;
      }

      (*(v21 + 8))(v15, v20);
      v22 = 1;
      v23 = v48;
    }
  }

  else
  {
    v49[5] = v17;
    v49[6] = v18;

    sub_1D8B166A0();
    sub_1D8AF4ACC(v50, v49);
    sub_1D8B16690();
    sub_1D881F6A8(v50);

    swift_dynamicCast();

    v24 = v48;
    (*(v9 + 16))(v48, a1, v8);
    v22 = 0;
    v23 = v24;
  }

  return (*(v9 + 56))(v23, v22, 1, v8);
}

uint64_t sub_1D8AEEEC0@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = a1[3];
  v42 = a1[2];
  v43 = v13;
  v44 = a1[4];
  v45 = *(a1 + 10);
  v14 = a1[1];
  v40 = *a1;
  v41 = v14;
  a2(&v39, &v40);
  v15 = *a3;
  v16 = v39;
  v38[0] = v39;

  sub_1D8B166A0();
  LOBYTE(a2) = sub_1D89A5B64(v36, v15);

  sub_1D881F6A8(v36);
  if (a2)
  {
    sub_1D87A0E38(a4, v12, &qword_1ECA65E98);
    v17 = sub_1D8B151E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v12, 1, v17) == 1)
    {
      result = sub_1D87A14E4(v12, &qword_1ECA65E98);
    }

    else
    {
      v22 = sub_1D8B151C0();
      v23 = sub_1D8B161F0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v34 = v23;
        v25 = v24;
        v35 = swift_slowAlloc();
        v38[0] = v35;
        *v25 = 136315394;
        *(v25 + 4) = sub_1D89AC714(0x6974636964657250, 0xEA00000000006E6FLL, v38);
        *(v25 + 12) = 2080;
        v36[2] = v42;
        v36[3] = v43;
        v36[4] = v44;
        v37 = v45;
        v36[0] = v40;
        v36[1] = v41;
        v26 = sub_1D8B159E0();
        v28 = sub_1D89AC714(v26, v27, v38);
        v33 = v22;
        v29 = v28;

        *(v25 + 14) = v29;
        v30 = v33;
        _os_log_impl(&dword_1D8783000, v33, v34, "filterUnique is eliminating duplicate %s: %s", v25, 0x16u);
        v31 = v35;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v31, -1, -1);
        MEMORY[0x1DA721330](v25, -1, -1);
      }

      else
      {
      }

      result = (*(v18 + 8))(v12, v17);
    }

    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0;
    *(a5 + 88) = 1;
  }

  else
  {
    v38[5] = v16;
    sub_1D8B166A0();
    sub_1D8AF4ACC(v36, v38);
    sub_1D8B16690();
    sub_1D881F6A8(v36);
    result = swift_dynamicCast();
    LOBYTE(v36[0]) = 0;
    v20 = v43;
    *(a5 + 32) = v42;
    *(a5 + 48) = v20;
    *(a5 + 64) = v44;
    *(a5 + 80) = v45;
    v21 = v41;
    *a5 = v40;
    *(a5 + 16) = v21;
    *(a5 + 88) = 0;
  }

  return result;
}

uint64_t sub_1D8AEF2B0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = type metadata accessor for CVTrackSnapshot(0);
  v37 = *(v38 - 8);
  v10 = MEMORY[0x1EEE9AC00](v38);
  v36 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33[-v15];
  a2(&v41, a1);
  v17 = *a3;
  v18 = v41;
  v39[0] = v41;

  sub_1D8B166A0();
  LOBYTE(a2) = sub_1D89A5B64(v40, v17);

  sub_1D881F6A8(v40);
  if (a2)
  {
    v19 = a5;
    sub_1D87A0E38(a4, v16, &qword_1ECA65E98);
    v20 = sub_1D8B151E0();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      sub_1D87A14E4(v16, &qword_1ECA65E98);
    }

    else
    {
      sub_1D8AF7FF0(a1, v13, type metadata accessor for CVTrackSnapshot);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B161F0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v40[0] = v35;
        *v26 = 136315394;
        *(v26 + 4) = sub_1D89AC714(0x536B636172545643, 0xEF746F687370616ELL, v40);
        *(v26 + 12) = 2080;
        v34 = v25;
        sub_1D8AF7FF0(v13, v36, type metadata accessor for CVTrackSnapshot);
        v27 = sub_1D8B159E0();
        v29 = v28;
        sub_1D8AF7F70(v13, type metadata accessor for CVTrackSnapshot);
        v30 = sub_1D89AC714(v27, v29, v40);

        *(v26 + 14) = v30;
        _os_log_impl(&dword_1D8783000, v24, v34, "filterUnique is eliminating duplicate %s: %s", v26, 0x16u);
        v31 = v35;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v31, -1, -1);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      else
      {

        sub_1D8AF7F70(v13, type metadata accessor for CVTrackSnapshot);
      }

      (*(v21 + 8))(v16, v20);
    }

    v22 = 1;
    v23 = v19;
  }

  else
  {
    v39[5] = v18;
    sub_1D8B166A0();
    sub_1D8AF4ACC(v40, v39);
    sub_1D8B16690();
    sub_1D881F6A8(v40);
    swift_dynamicCast();
    sub_1D8AF7FF0(a1, a5, type metadata accessor for CVTrackSnapshot);
    v22 = 0;
    v23 = a5;
  }

  return (*(v37 + 56))(v23, v22, 1, v38);
}

uint64_t sub_1D8AEF774@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a4;
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v38 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35[-v15];
  a2(&v44, a1);
  v17 = *a3;
  v18 = v44;
  v42[0] = v44;
  sub_1D87C5834();

  sub_1D8B166A0();
  v19 = sub_1D89A5B64(v43, v17);

  sub_1D881F6A8(v43);
  if (v19)
  {
    v37 = a5;
    sub_1D87A0E38(v39, v16, &qword_1ECA65E98);
    v20 = sub_1D8B151E0();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {

      sub_1D87A14E4(v16, &qword_1ECA65E98);
      v22 = 1;
      v23 = v37;
      v24 = v41;
    }

    else
    {
      sub_1D8AF7FF0(a1, v13, type metadata accessor for CVTrackSnapshot);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B161F0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v43[0] = v39;
        *v27 = 136315394;
        *(v27 + 4) = sub_1D89AC714(0x536B636172545643, 0xEF746F687370616ELL, v43);
        *(v27 + 12) = 2080;
        v36 = v26;
        sub_1D8AF7FF0(v13, v38, type metadata accessor for CVTrackSnapshot);
        v28 = v41;
        v29 = sub_1D8B159E0();
        v31 = v30;
        sub_1D8AF7F70(v13, type metadata accessor for CVTrackSnapshot);
        v32 = sub_1D89AC714(v29, v31, v43);

        *(v27 + 14) = v32;
        _os_log_impl(&dword_1D8783000, v25, v36, "filterUnique is eliminating duplicate %s: %s", v27, 0x16u);
        v33 = v39;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v33, -1, -1);
        MEMORY[0x1DA721330](v27, -1, -1);
      }

      else
      {

        sub_1D8AF7F70(v13, type metadata accessor for CVTrackSnapshot);

        v28 = v41;
      }

      (*(v21 + 8))(v16, v20);
      v22 = 1;
      v23 = v37;
      v24 = v28;
    }
  }

  else
  {
    v42[5] = v18;

    sub_1D8B166A0();
    sub_1D8AF4ACC(v43, v42);
    sub_1D8B16690();
    sub_1D881F6A8(v43);
    swift_dynamicCast();

    sub_1D8AF7FF0(a1, a5, type metadata accessor for CVTrackSnapshot);
    v22 = 0;
    v23 = a5;
    v24 = v41;
  }

  return (*(v40 + 56))(v23, v22, 1, v24);
}

uint64_t sub_1D8AEFC8C(uint64_t a1)
{
  v2 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8AF7FF0(a1, v7, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

LABEL_5:
    sub_1D8AF7F08(v7, v10, type metadata accessor for DetectionRequest);
    goto LABEL_6;
  }

  sub_1D8AF7F08(v7, v4, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v4, v10, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v4, type metadata accessor for DetectionResult);
LABEL_6:
  v12 = *v10;
  sub_1D8AF7F70(v10, type metadata accessor for DetectionRequest);
  v15 = v12;
  sub_1D8A6A550();
  return sub_1D8B15C20() & 1;
}

uint64_t sub_1D8AEFED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8AF7FF0(a1, v15, type metadata accessor for ProcessorState);
  (*(v10 + 16))(v12, a2, a3);
  return sub_1D8A6E940(v15, v12, a3, a4, a5);
}

uint64_t TrackManager.State.detectionsWithIncompleteWorkStateForTestingOnly.getter()
{
  v1 = *(v0 + 88);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = v9 | (v7 << 6);
      if (*(*(v1 + 56) + v10) != 2)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v12 = *(*(v1 + 48) + v10);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C8F58(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v13 = *(v8 + 16);
    v14 = *(v8 + 24);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v18 = v13 + 1;
      v16 = v8;
      v17 = *(v8 + 16);
      result = sub_1D87C8F58((v14 > 1), v13 + 1, 1, v16);
      v13 = v17;
      v15 = v18;
      v8 = result;
    }

    *(v8 + 16) = v15;
    *(v8 + v13 + 32) = v12;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      v7 = v11;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF01A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D58);
    v2 = sub_1D8B166D0();
    v14 = v2;
    sub_1D8B165D0();
    if (sub_1D8B16640())
    {
      type metadata accessor for CVTrackedDetection(0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1D8802CB4();
        }

        v2 = v14;
        sub_1D8B16D20();
        sub_1D8B13240();
        sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
        sub_1D8B157A0();
        result = sub_1D8B16D80();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1D8B16640());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

double sub_1D8AF0400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D87EF838(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8968CE0();
      v10 = v12;
    }

    sub_1D8943B68((*(v10 + 56) + 32 * v8), a3);
    sub_1D8AF1FEC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D8AF04A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D87F0134(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8968E84();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
    sub_1D8AF7F70(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
    v20 = *(v13 - 8);
    sub_1D881F6FC(v12 + *(v20 + 72) * v7, a2, &qword_1ECA65B78);
    sub_1D8AF219C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1D8AF0658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D87EF6AC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D896B104();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for BundleClassification.ClassificationType(0);
    sub_1D8AF7F70(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D87C15B4((*(v9 + 56) + 40 * v7), a2);
    sub_1D8AF2B2C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D8AF073C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D87F02B0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D896C62C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
    sub_1D8AF7F70(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TrackManager.TrackedProcessorState(0);
    v20 = *(v13 - 8);
    sub_1D8AF7F08(v12 + *(v20 + 72) * v7, a2, type metadata accessor for TrackManager.TrackedProcessorState);
    sub_1D8AF3434(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TrackManager.TrackedProcessorState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1D8AF08D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8B16590() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x1DA7201E0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF0A48(int64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13E40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1D8B13E30();
  v7 = *(v126 - 8);
  v8 = MEMORY[0x1EEE9AC00](v126);
  v121 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v99 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v92 - v14;
  v15 = type metadata accessor for ActionPin.PermanentPill(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v112 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v92 - v18;
  v125 = sub_1D8B14E80();
  v19 = *(v125 - 8);
  v20 = MEMORY[0x1EEE9AC00](v125);
  v116 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v92 - v22;
  v110 = sub_1D8B13240();
  v23 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v108 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v27 = MEMORY[0x1EEE9AC00](v127);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v27);
  v129 = &v92 - v32;
  v33 = a2 + 64;
  v34 = -1 << *(a2 + 32);
  v35 = (a1 + 1) & ~v34;
  if ((*(a2 + 64 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
  {
    v113 = v4;
    v124 = v5;
    v36 = ~v34;
    v37 = v31;
    v38 = sub_1D8B16590();
    v128 = v36;
    v123 = (v38 + 1) & v36;
    v39 = *(v37 + 72);
    v114 = (v19 + 32);
    v115 = (v19 + 8);
    v97 = (v7 + 48);
    v92 = (v7 + 32);
    v40 = v113;
    v103 = (v124 + 8);
    v102 = (v7 + 8);
    v96 = v7 + 16;
    v107 = (v23 + 32);
    v106 = (v23 + 8);
    v41 = v39;
    v98 = v7;
    v124 = a2 + 64;
    v118 = v29;
    v122 = v39;
    while (1)
    {
      v42 = v41 * v35;
      v43 = v129;
      sub_1D8AF7FF0(*(a2 + 48) + v41 * v35, v129, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D8B16D20();
      sub_1D8AF7FF0(v43, v29, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v45 = v111;
          v46 = v125;
          (*v114)(v111, v29, v125);
          MEMORY[0x1DA720210](1);
          sub_1D8AF7D70(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
          sub_1D8B157A0();
          (*v115)(v45, v46);
        }

        else
        {
          v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
          (*v114)(v116, v29, v125);
          v58 = &v29[v57];
          v59 = v117;
          sub_1D8AF7F08(v58, v117, type metadata accessor for ActionPin.PermanentPill);
          MEMORY[0x1DA720210](2);
          sub_1D8AF7D70(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
          sub_1D8B157A0();
          v60 = v59;
          v61 = v112;
          sub_1D8AF7FF0(v60, v112, type metadata accessor for ActionPin.PermanentPill);
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
          v63 = (*(*(v62 - 8) + 48))(v61, 6, v62);
          if (v63 <= 2)
          {
            v105 = v42;
            v65 = v40;
            v66 = v103;
            v67 = v102;
            if (v63)
            {
              v29 = v118;
              MEMORY[0x1DA720210](v63 != 1);
              sub_1D8AF7F70(v117, type metadata accessor for ActionPin.PermanentPill);
              (*v115)(v116, v125);
              v40 = v65;
              v42 = v105;
            }

            else
            {
              v101 = *(v112 + *(v62 + 48));
              v68 = v104;
              sub_1D881F6FC(v112, v104, &qword_1ECA635B8);
              MEMORY[0x1DA720210](5);
              v69 = v99;
              sub_1D87A0E38(v68, v99, &qword_1ECA635B8);
              v70 = v126;
              if ((*v97)(v69, 1, v126) == 1)
              {
                sub_1D8B16D40();
              }

              else
              {
                v76 = v95;
                (*v92)(v95, v69, v70);
                sub_1D8B16D40();
                v77 = v100;
                sub_1D8B13E10();
                sub_1D8AF7D70(&qword_1ECA635D8, MEMORY[0x1E699C610]);
                sub_1D8B157A0();
                (*v66)(v77, v65);
                sub_1D8B13DF0();
                sub_1D8B15A60();

                sub_1D8B13DE0();
                sub_1D8B15A60();

                (*v67)(v76, v126);
              }

              v29 = v118;
              v42 = v105;
              v78 = v98;
              v79 = v101;
              MEMORY[0x1DA720210](*(v101 + 16));
              v80 = *(v79 + 16);
              if (v80)
              {
                v93 = a1;
                v94 = a2;
                v81 = v79 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
                v82 = *(v78 + 72);
                v119 = *(v78 + 16);
                v120 = v82;
                v83 = v100;
                v84 = v113;
                v85 = v126;
                v86 = v103;
                v87 = v102;
                do
                {
                  v88 = v121;
                  v119(v121, v81, v85);
                  sub_1D8B13E10();
                  sub_1D8AF7D70(&qword_1ECA635D8, MEMORY[0x1E699C610]);
                  sub_1D8B157A0();
                  (*v86)(v83, v84);
                  sub_1D8B13DF0();
                  sub_1D8B15A60();

                  sub_1D8B13DE0();
                  sub_1D8B15A60();
                  v85 = v126;

                  (*v87)(v88, v85);
                  v81 += v120;
                  --v80;
                }

                while (v80);

                a2 = v94;
                a1 = v93;
                v29 = v118;
                v42 = v105;
              }

              else
              {
              }

              sub_1D87A14E4(v104, &qword_1ECA635B8);
              sub_1D8AF7F70(v117, type metadata accessor for ActionPin.PermanentPill);
              (*v115)(v116, v125);
              v40 = v113;
            }
          }

          else
          {
            if (v63 > 4)
            {
              v29 = v118;
              v64 = v63 == 5 ? 4 : 6;
            }

            else
            {
              v29 = v118;
              v64 = v63 == 3 ? 2 : 3;
            }

            MEMORY[0x1DA720210](v64);
            sub_1D8AF7F70(v117, type metadata accessor for ActionPin.PermanentPill);
            (*v115)(v116, v125);
          }
        }
      }

      else
      {
        v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0) + 48);
        v48 = a1;
        v49 = a2;
        v50 = v108;
        sub_1D8AF7F08(v29, v108, type metadata accessor for BundleClassification.ClassificationType);
        v51 = &v29[v47];
        v52 = v109;
        v53 = v110;
        (*v107)(v109, v51, v110);
        MEMORY[0x1DA720210](0);
        BundleClassification.ClassificationType.hash(into:)(&v130);
        sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
        sub_1D8B157A0();
        sub_1D8B15A60();
        v54 = v113;

        v55 = v52;
        v29 = v118;
        (*v106)(v55, v53);
        v56 = v50;
        a2 = v49;
        a1 = v48;
        v40 = v54;
        sub_1D8AF7F70(v56, type metadata accessor for BundleClassification.ClassificationType);
      }

      v71 = sub_1D8B16D80();
      result = sub_1D8AF7F70(v129, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v72 = v71 & v128;
      if (a1 >= v123)
      {
        break;
      }

      v33 = v124;
      v41 = v122;
      if (v72 < v123)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v41 * a1 < v42 || *(a2 + 48) + v41 * a1 >= (*(a2 + 48) + v42 + v41))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v41 * a1 != v42)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v73 = *(a2 + 56);
      v74 = *(*(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8) + 72);
      v75 = v74 * a1;
      result = v73 + v74 * a1;
      if (v74 * a1 < (v74 * v35) || result >= v73 + v74 * v35 + v74)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v35;
        if (v75 == v74 * v35)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v35;
LABEL_5:
      v35 = (v35 + 1) & v128;
      if (((*(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v33 = v124;
    v41 = v122;
    if (v72 < v123)
    {
      goto LABEL_5;
    }

LABEL_27:
    if (a1 < v72)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_44:
  *(v33 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v89 = *(a2 + 16);
  v90 = __OFSUB__(v89, 1);
  v91 = v89 - 1;
  if (v90)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v91;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF19F0(int64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for BuiltInAction(0);
  v4 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v9 = *(v60 - 8);
  result = MEMORY[0x1EEE9AC00](v60);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 + 64;
  v59 = a2;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = sub_1D8B16590();
    v18 = *(v9 + 72);
    v54 = (v4 + 48);
    v19 = v59;
    v57 = v16;
    v56 = (v17 + 1) & v16;
    v55 = v13;
    while (1)
    {
      v20 = v8;
      v21 = v18;
      v22 = v18 * v15;
      sub_1D8AF7FF0(*(v19 + 48) + v18 * v15, v12, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      v23 = type metadata accessor for ActionPin(0);
      v24 = &v12[*(v23 + 20)];
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v29 = v24[4];
      v30 = v24[5];
      v32 = v24[6];
      v31 = v24[7];
      if (*v24 == 0.0)
      {
        v25 = 0.0;
      }

      MEMORY[0x1DA720250](*&v25);
      if (v26 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v26;
      }

      MEMORY[0x1DA720250](*&v33);
      if (v27 == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v27;
      }

      MEMORY[0x1DA720250](*&v34);
      if (v28 == 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = v28;
      }

      MEMORY[0x1DA720250](*&v35);
      if (v29 == 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = v29;
      }

      MEMORY[0x1DA720250](*&v36);
      if (v30 == 0.0)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v30;
      }

      MEMORY[0x1DA720250](*&v37);
      if (v32 == 0.0)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v32;
      }

      MEMORY[0x1DA720250](*&v38);
      if (v31 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v31;
      }

      MEMORY[0x1DA720250](*&v39);
      sub_1D8B15A60();
      sub_1D87CF3E8(v61, *&v12[*(v23 + 28)]);
      sub_1D8B16D40();
      v40 = &v12[*(v60 + 20)];
      sub_1D8B15A60();
      sub_1D8B15A60();
      sub_1D8B15A60();
      if (*(v40 + 7))
      {
        sub_1D8B16D40();
        sub_1D8B15A60();
      }

      else
      {
        sub_1D8B16D40();
      }

      MEMORY[0x1DA720210](*(v40 + 8));
      v41 = &v40[*(type metadata accessor for ActionPin.Pill(0) + 36)];
      v8 = v20;
      sub_1D8AF7FF0(v41, v20, type metadata accessor for ActionPin.Pill.Source);
      if ((*v54)(v20, 1, v58) == 1)
      {
        MEMORY[0x1DA720210](1);
      }

      else
      {
        v42 = v53;
        sub_1D8AF7F08(v20, v53, type metadata accessor for BuiltInAction);
        MEMORY[0x1DA720210](0);
        BuiltInAction.hash(into:)(v61);
        sub_1D8AF7F70(v42, type metadata accessor for BuiltInAction);
      }

      v13 = v55;
      v43 = v57;
      v18 = v21;
      v44 = sub_1D8B16D80();
      result = sub_1D8AF7F70(v12, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v45 = v44 & v43;
      if (a1 >= v56)
      {
        v19 = v59;
        if (v45 < v56)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v59;
        if (v45 >= v56)
        {
          goto LABEL_39;
        }
      }

      if (a1 >= v45)
      {
LABEL_39:
        v46 = *(v19 + 48);
        result = v46 + v21 * a1;
        if (v21 * a1 < v22 || result >= v46 + v22 + v21)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 * a1 != v22)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v47 = *(v19 + 56);
        v48 = (v47 + 8 * a1);
        v49 = (v47 + 8 * v15);
        if (a1 != v15 || v48 >= v49 + 1)
        {
          *v48 = *v49;
          a1 = v15;
        }
      }

LABEL_4:
      v15 = (v15 + 1) & v43;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  v19 = v59;
LABEL_48:
  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v50 = *(v19 + 16);
  v51 = __OFSUB__(v50, 1);
  v52 = v50 - 1;
  if (v51)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v52;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_1D8AF1FEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8B16590() + 1) & ~v5;
    do
    {
      sub_1D8B16D20();

      sub_1D8B15A60();
      v10 = sub_1D8B16D80();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF219C(unint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13CF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v8 = *(v44 - 8);
  result = MEMORY[0x1EEE9AC00](v44);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  if ((*(a2 + 64 + ((((a1 + 1) & ~v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~v13)))
  {
    v14 = ~v13;
    v15 = (a1 + 1) & ~v13;
    v16 = sub_1D8B16590();
    v17 = v15;
    v48 = v14;
    v39 = v5;
    v40 = (v16 + 1) & v14;
    v18 = *(v8 + 72);
    v19 = (v5 + 8);
    v42 = a2 + 64;
    v43 = a2;
    v41 = v11;
    v46 = v18;
    do
    {
      v47 = a1;
      v21 = *(a2 + 48);
      v49 = v17;
      v45 = v18 * v17;
      sub_1D8AF7FF0(v21 + v18 * v17, v11, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      v22 = *&v11[*(v44 + 20)];
      MEMORY[0x1DA720210](*(v22 + 16));
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v22 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v25 = *(v39 + 72);
        v26 = *(v39 + 16);
        do
        {
          v26(v7, v24, v4);
          sub_1D8AF7D70(&qword_1ECA65FD0, MEMORY[0x1E69E0420]);
          sub_1D8B157A0();
          (*v19)(v7, v4);
          v24 += v25;
          --v23;
        }

        while (v23);
      }

      v27 = sub_1D8B16D80();
      v11 = v41;
      result = sub_1D8AF7F70(v41, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      a1 = v47;
      v28 = v27 & v48;
      if (v47 >= v40)
      {
        v12 = v42;
        a2 = v43;
        v20 = v49;
        v18 = v46;
        if (v28 < v40)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v12 = v42;
        a2 = v43;
        v20 = v49;
        v18 = v46;
        if (v28 >= v40)
        {
          goto LABEL_13;
        }
      }

      if (v47 >= v28)
      {
LABEL_13:
        if (v18 * v47 < v45 || *(a2 + 48) + v18 * v47 >= (*(a2 + 48) + v45 + v18))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v18 * v47 != v45)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v29 = *(a2 + 56);
        v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78) - 8) + 72);
        v31 = v30 * a1;
        result = v29 + v30 * a1;
        v20 = v49;
        v32 = v30 * v49;
        v33 = v29 + v30 * v49 + v30;
        if (v31 < v32 || result >= v33)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          v20 = v49;
          a1 = v49;
          v18 = v46;
        }

        else
        {
          a1 = v49;
          v18 = v46;
          if (v31 != v32)
          {
            result = swift_arrayInitWithTakeBackToFront();
            v20 = v49;
            a1 = v49;
          }
        }
      }

LABEL_4:
      v17 = (v20 + 1) & v48;
    }

    while (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8AF2654(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8B16590() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v9);
      result = sub_1D8B16D80();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF27E8(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_1D8B16590();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      v23 = sub_1D8B15790();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v38) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF2B2C(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for BundleClassification.ClassificationType(0);
  v4 = *(v26 - 8);
  result = MEMORY[0x1EEE9AC00](v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_1D8B16590() + 1) & ~v9;
    v13 = *(v4 + 72);
    do
    {
      v16 = v13 * v10;
      sub_1D8AF7FF0(*(a2 + 48) + v13 * v10, v7, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v27);
      v17 = sub_1D8B16D80();
      result = sub_1D8AF7F70(v7, type metadata accessor for BundleClassification.ClassificationType);
      v18 = v17 & v11;
      if (a1 >= v12)
      {
        if (v18 < v12)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v12)
      {
        goto LABEL_10;
      }

      if (a1 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        result = v19 + v13 * a1;
        if (v13 * a1 < v16 || result >= v19 + v16 + v13)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v16)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * a1;
        v22 = (v20 + 40 * v10);
        if (a1 != v10 || v21 >= v22 + 40)
        {
          v14 = *v22;
          v15 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v14;
          *(v21 + 16) = v15;
          a1 = v10;
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF2DB0(int64_t a1, uint64_t a2)
{
  v40 = sub_1D8B13240();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1D8B16590();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      v23 = sub_1D8B15790();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1D8AF30D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8B16590() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D8B16D10();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for CVDebugArtifactManager.BoresightState(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8AF3294(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8B16590() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + v6);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v11);
      result = sub_1D8B16D80();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF3434(unint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v4 = *(v44 - 8);
  result = MEMORY[0x1EEE9AC00](v44);
  v6 = a1;
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D8B16590();
    v6 = a1;
    v14 = (v13 + 1) & v12;
    v15 = *(v4 + 72);
    v43 = a2 + 64;
    do
    {
      v45 = v6;
      v16 = v15;
      v17 = v15 * v11;
      sub_1D8AF7FF0(*(a2 + 48) + v15 * v11, v8, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v18 = a2;
      sub_1D8B16D20();
      v19 = v8[2];
      v20 = v12;
      v21 = v14;
      v22 = v8[4];
      v23 = v8[6];
      v24 = v8[7];
      v25 = v8[8];
      v26 = v8[9];
      sub_1D8818B80(*v8, v8[1]);
      if (v19 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v19;
      }

      MEMORY[0x1DA720250](*&v27);
      sub_1D8B16D40();
      if (v22 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v22;
      }

      MEMORY[0x1DA720250](*&v28);
      sub_1D8B16D40();
      sub_1D88911A0(v23, v24, v25, v26);
      v29 = v8 + *(v44 + 20);
      MEMORY[0x1DA720210](*v29);
      v30 = type metadata accessor for DetectionRequest(0);
      DetectionRequest.Originator.hash(into:)(v46);
      sub_1D8818BD0(v46, *&v29[v30[6]]);
      sub_1D88911A0(*&v29[v30[7]], *&v29[v30[7] + 8], *&v29[v30[7] + 16], *&v29[v30[7] + 24]);
      v31 = v30[8];
      v14 = v21;
      v12 = v20;
      v32 = *&v29[v31];
      if (v32 == 0.0)
      {
        v32 = 0.0;
      }

      MEMORY[0x1DA720250](*&v32);
      v33 = sub_1D8B16D80();
      result = sub_1D8AF7F70(v8, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v6 = v45;
      v34 = v33 & v20;
      if (v45 >= v14)
      {
        if (v34 < v14)
        {
          v9 = v43;
          v15 = v16;
          a2 = v18;
          goto LABEL_4;
        }

        v15 = v16;
        a2 = v18;
        if (v45 >= v34)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v15 = v16;
        a2 = v18;
        if (v34 >= v14 || v45 >= v34)
        {
LABEL_19:
          if (v15 * v45 < v17 || *(a2 + 48) + v15 * v45 >= (*(a2 + 48) + v17 + v15))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v15 * v45 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v35 = *(a2 + 56);
          v36 = *(*(type metadata accessor for TrackManager.TrackedProcessorState(0) - 8) + 72);
          v37 = v36 * v45;
          result = v35 + v36 * v45;
          v38 = v36 * v11;
          v9 = v43;
          if (v36 * v45 < (v36 * v11) || result >= v35 + v36 * v11 + v36)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v11;
          }

          else
          {
            v6 = v11;
            if (v37 != v38)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      v9 = v43;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v6) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF3850(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8B16590() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v9);
      result = sub_1D8B16D80();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t *sub_1D8AF3A38(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8AF3DE8(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D8AF3AB0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8AF3ED4(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D8AF3B28(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8AF3DE8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D8AF3A38(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D8AF3C88(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8AF3ED4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D8AF3AB0(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D8AF3DE8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 2)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D8AF442C(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D8AF442C(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D8AF3ED4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D8AF4628(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D8AF4628(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF3FC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C70);
  result = sub_1D8B16910();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(v4 + 56) + 8 * v16;
    v29 = *(v18 + 4);
    v30 = *v18;
    sub_1D8B16D20();
    MEMORY[0x1DA720210](v17);
    result = sub_1D8B16D80();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    v27 = *(v9 + 56) + 8 * v22;
    *v27 = v30;
    *(v27 + 4) = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1D8AF41F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C10);
  result = sub_1D8B16910();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 4 * v16);
    sub_1D8B16D20();

    sub_1D8B15A60();
    result = sub_1D8B16D80();
    v22 = -1 << *(v9 + 32);
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
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 4 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1D8AF442C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AB8);
  result = sub_1D8B16910();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_1D8B16D10();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1D8AF4628(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
  result = sub_1D8B16910();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1D8B16D20();
    MEMORY[0x1DA720210](v17);
    result = sub_1D8B16D80();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1D8AF4848(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_1D8AD2FCC(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1D8B16610();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1D8B16610())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA71FC20](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1DA71FC20](v2, v6);
    v15 = MEMORY[0x1DA71FC20](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1D89394F0(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1D89394F0(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1D8B16610();
}

uint64_t sub_1D8AF4ACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D8B16670();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1D881F64C(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1DA71FB60](v16, a2);
      sub_1D881F6A8(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D881F6A8(a2);
    sub_1D881F64C(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D881F64C(a2, v16);
    v15 = *v3;
    sub_1D8AF4C18(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1D8AF4C18(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v54 = *(i + 48) + 40 * a2;
      v55 = *(v6 + 16);
      *v54 = *v6;
      *(v54 + 16) = v55;
      *(v54 + 32) = *(v6 + 32);
      v56 = *(i + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        *(i + 16) = v58;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69220);
      v59 = sub_1D8B166B0();
      i = v59;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v60 = (v59 + 56);
    v61 = v7 + 56;
    v62 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v60 >= v61 + 8 * v62)
    {
      memmove(v60, (v7 + 56), 8 * v62);
    }

    v63 = 0;
    *(i + 16) = *(v7 + 16);
    v64 = 1 << *(v7 + 32);
    v65 = *(v7 + 56);
    v66 = -1;
    if (v64 < 64)
    {
      v66 = ~(-1 << v64);
    }

    v67 = v66 & v65;
    v68 = (v64 + 63) >> 6;
    if ((v66 & v65) != 0)
    {
      do
      {
        v69 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
LABEL_81:
        v72 = 40 * (v69 | (v63 << 6));
        sub_1D881F64C(*(v7 + 48) + v72, &v78);
        v73 = *(i + 48) + v72;
        v74 = v78;
        v75 = v79;
        *(v73 + 32) = v80;
        *v73 = v74;
        *(v73 + 16) = v75;
      }

      while (v67);
    }

    v70 = v63;
    while (1)
    {
      v63 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v63 >= v68)
      {
        goto LABEL_83;
      }

      v71 = *(v61 + 8 * v63);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v67 = (v71 - 1) & v71;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69220);
  if ((a3 & 1) == 0)
  {
    v30 = sub_1D8B166C0();
    i = v30;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v77 = v4;
    v31 = 0;
    a2 = v7 + 56;
    v32 = 1 << *(v7 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v7 + 56);
    v4 = (v32 + 63) >> 6;
    v35 = v30 + 56;
    while (1)
    {
      if (v34)
      {
        v40 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v41 = v31;
        do
        {
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_64;
          }

          if (v31 >= v4)
          {

            v4 = v77;
            goto LABEL_57;
          }

          v42 = *(a2 + 8 * v31);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v34 = (v42 - 1) & v42;
      }

      sub_1D881F64C(*(v7 + 48) + 40 * (v40 | (v31 << 6)), &v78);
      v43 = sub_1D8B16670();
      v44 = -1 << *(i + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v35 + 8 * (v45 >> 6))) != 0)
      {
        v36 = __clz(__rbit64((-1 << v45) & ~*(v35 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        do
        {
          if (++v46 == v48 && (v47 & 1) != 0)
          {
            goto LABEL_66;
          }

          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v35 + 8 * v46);
        }

        while (v50 == -1);
        v36 = __clz(__rbit64(~v50)) + (v46 << 6);
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v37 = *(i + 48) + 40 * v36;
      v38 = v78;
      v39 = v79;
      *(v37 + 32) = v80;
      *v37 = v38;
      *(v37 + 16) = v39;
      ++*(i + 16);
    }
  }

  v10 = sub_1D8B166C0();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v76 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v78 = *v21;
      v79 = *(v21 + 16);
      v80 = *(v21 + 32);
      v22 = sub_1D8B16670();
      v23 = -1 << *(i + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_65;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
        }

        while (v29 == -1);
        v16 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v78;
      *(v17 + 16) = v79;
      *(v17 + 32) = v80;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v51 = 1 << *(v7 + 32);
  if (v51 >= 64)
  {
    bzero((v7 + 56), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v51;
  }

  v4 = v76;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  result = sub_1D8B16670();
  v52 = -1 << *(i + 32);
  a2 = result & ~v52;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v52;
  while (1)
  {
    sub_1D881F64C(*(i + 48) + 40 * a2, &v78);
    v53 = MEMORY[0x1DA71FB60](&v78, v6);
    result = sub_1D881F6A8(&v78);
    if (v53)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8AF5268@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t _s22VisualIntelligenceCore12TrackManagerC5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v12[4] = *(a1 + 64);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v11[4] = *(a2 + 64);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v12, v11) || !sub_1D88E5414(v5, v9))
  {
    return 0;
  }

  return sub_1D88555FC(v4, v8);
}

BOOL sub_1D8AF5330(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[3];
  v11[2] = a1[2];
  v11[3] = v4;
  v11[4] = a1[4];
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v10[4] = a2[4];
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  if (_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v11, v10) && (v8 = type metadata accessor for TrackManager.TrackedProcessorState(0), sub_1D8A4D460(a1 + *(v8 + 20), a2 + *(v8 + 20))))
  {
    return *(a1 + *(v8 + 24)) == *(a2 + *(v8 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8AF53E0(uint64_t a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1E69E7CC8];
  v42 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_1D8B1AB90;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_1D8AF7FF0(v11, v7, type metadata accessor for CVTrackSnapshot);
    v15 = *&v7[*(v2 + 20)] >> 60;
    v17 = sub_1D881F7DC(v15);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_1D896D04C(v20, 1);
      v8 = v42;
      v22 = sub_1D881F7DC(v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_1D8AF7F08(v7, v41, type metadata accessor for CVTrackSnapshot);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D87C7834(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D87C7834(v27 > 1, v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_1D8AF7F08(v41, v13, type metadata accessor for CVTrackSnapshot);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633E0);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_1D8AF7F08(v7, v30 + v29, type metadata accessor for CVTrackSnapshot);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8AF5720(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for ActionPredictor.Output(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A20);
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - v8;
  swift_beginAccess();
  v10 = *(v1 + 16);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = (v4 + 8);
  v22[0] = v7 + 8;
  v22[1] = v7 + 16;
  v27 = v10;

  v18 = 0;
  for (i = v23; v14; result = (*(v7 + 8))(v9, v6))
  {
    v20 = v18;
LABEL_9:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v7 + 16))(v9, *(v27 + 56) + *(v7 + 72) * (v21 | (v20 << 6)), v6);
    sub_1D8AF7FF0(v26, v25, type metadata accessor for ActionPredictor.Output);
    sub_1D8B15EE0();
    (*v16)(i, v24);
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF5A04(uint64_t a1)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EB0);
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v21 = v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - v6;
  swift_beginAccess();
  v8 = *(v1 + 16);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = (v2 + 8);
  v20[0] = v5 + 8;
  v20[1] = v5 + 16;
  v24 = v8;

  for (i = 0; v12; result = (*(v5 + 8))(v7, v4))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v5 + 16))(v7, *(v24 + 56) + *(v5 + 72) * (v18 | (v17 << 6)), v4);
    v25 = v23;

    v19 = v21;
    sub_1D8B15EE0();
    (*v14)(v19, v22);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
    }

    v12 = *(v9 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF5C8C(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for BundleSelector.Output(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A38);
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - v8;
  swift_beginAccess();
  v10 = *(v1 + 16);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = (v4 + 8);
  v22[0] = v7 + 8;
  v22[1] = v7 + 16;
  v27 = v10;

  v18 = 0;
  for (i = v23; v14; result = (*(v7 + 8))(v9, v6))
  {
    v20 = v18;
LABEL_9:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v7 + 16))(v9, *(v27 + 56) + *(v7 + 72) * (v21 | (v20 << 6)), v6);
    sub_1D8AF7FF0(v26, v25, type metadata accessor for BundleSelector.Output);
    sub_1D8B15EE0();
    (*v16)(i, v24);
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF5F70(__int128 *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A50);
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  swift_beginAccess();
  v9 = *(v1 + 16);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v25 = v6 + 16;
  v24 = (v3 + 8);
  v23 = v6 + 8;
  v28 = v9;

  for (i = 0; v13; result = (*(v6 + 8))(v8, v5))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v6 + 16))(v8, *(v28 + 56) + *(v6 + 72) * (v18 | (v17 << 6)), v5);
    v19 = a1[3];
    v32 = a1[2];
    v33 = v19;
    v20 = a1[5];
    v34 = a1[4];
    v35 = v20;
    v21 = a1[1];
    v30 = *a1;
    v31 = v21;
    sub_1D8943B30(a1, v29);
    v22 = v26;
    sub_1D8B15EE0();
    (*v24)(v22, v27);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF6250(__int128 *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A08);
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  swift_beginAccess();
  v9 = *(v1 + 16);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v25 = v6 + 16;
  v24 = (v3 + 8);
  v23 = v6 + 8;
  v28 = v9;

  for (i = 0; v13; result = (*(v6 + 8))(v8, v5))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v6 + 16))(v8, *(v28 + 56) + *(v6 + 72) * (v18 | (v17 << 6)), v5);
    v19 = a1[3];
    v32 = a1[2];
    v33 = v19;
    v20 = a1[5];
    v34 = a1[4];
    v35 = v20;
    v21 = a1[1];
    v30 = *a1;
    v31 = v21;
    sub_1D88C7A20(a1, v29);
    v22 = v26;
    sub_1D8B15EE0();
    (*v24)(v22, v27);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF6530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v69 = a2;
  v71 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69260);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v54 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69240);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918);
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940);
  v18 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v20 = &v54 - v19;
  v21 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 2;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  v24 = MEMORY[0x1E69E7CC0];
  *(v3 + 192) = MEMORY[0x1E69E7CC0];
  *(v3 + 200) = sub_1D893E230(v24);
  v25 = (v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  v26 = *(v12 + 104);
  v58 = *MEMORY[0x1E69E8650];
  v26(v14);
  sub_1D8B15EB0();
  (*(v12 + 8))(v14, v11);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938) + 48);
  (*(v18 + 32))(v23, v20, v55);
  (*(v56 + 32))(&v23[v27], v17, v57);
  swift_storeEnumTagMultiPayload();
  *v25 = 0;
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928) + 28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69268);
  bzero(v25 + v28, *(*(v29 - 8) + 64));
  sub_1D8AF7F08(v23, v25 + v28, type metadata accessor for TrackManager.FrameProcessingTaskState);
  v30 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  if (qword_1EE0E4348 != -1)
  {
    swift_once();
  }

  v31 = sub_1D8B151E0();
  v32 = __swift_project_value_buffer(v31, qword_1EE0E4350);
  (*(*(v31 - 8) + 16))(v3 + v30, v32, v31);
  v33 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStream;
  v34 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStreamContinuation;
  type metadata accessor for TrackManager.MatchingComputationResult(0);
  v36 = v66;
  v35 = v67;
  v37 = v64;
  (*(v66 + 104))(v64, v58, v67);
  v38 = v59;
  v39 = v62;
  sub_1D8B15EB0();
  (*(v36 + 8))(v37, v35);
  (*(v60 + 32))(v3 + v33, v38, v61);
  (*(v63 + 32))(v3 + v34, v39, v65);
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting + 8) = 0;
  swift_unknownObjectWeakInit();
  v40 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStreamBufferingPolicy;
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStreamBufferingPolicy) = 1;
  v41 = *MEMORY[0x1E69E8640];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64840);
  (*(*(v42 - 8) + 104))(v3 + v40, v41, v42);
  v43 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69270);
  v44 = swift_allocObject();
  v45 = MEMORY[0x1E69E7CC8];
  *(v44 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + v43) = v44;
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_detectionTypeToMatchingTask) = v45;
  v46 = v71;
  v47 = *(v71 + 56);
  v48 = v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_configuration;
  *v48 = *(v71 + 48);
  *(v48 + 8) = v47;
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting + 8) = v68;
  swift_unknownObjectWeakAssign();
  v49 = sub_1D8B15EA0();
  v50 = v70;
  (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v51;

  sub_1D8B06D68(0, 0, v50, 0, 0, &unk_1D8B3EE70, v52);

  sub_1D8AF7F70(v46, type metadata accessor for SaliencyStreamConfiguration);
  sub_1D87A14E4(v50, &unk_1ECA675E0);
  return v3;
}

unint64_t sub_1D8AF6DB8()
{
  result = qword_1ECA690F8;
  if (!qword_1ECA690F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA690F8);
  }

  return result;
}

uint64_t sub_1D8AF6E0C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA69100);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8AF6EA4(void *a1)
{
  a1[1] = sub_1D88C9348();
  a1[2] = sub_1D88C91F8();
  result = sub_1D8AF6EDC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D8AF6EDC()
{
  result = qword_1ECA69140;
  if (!qword_1ECA69140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69140);
  }

  return result;
}

uint64_t sub_1D8AF6F30(uint64_t a1)
{
  result = sub_1D8AF7D70(&qword_1EE0E8B28, type metadata accessor for TrackManager);
  *(a1 + 16) = result;
  return result;
}

void sub_1D8AF6FB0()
{
  sub_1D8AF7280(319, &qword_1EE0E9860, type metadata accessor for TrackManager.FrameProcessingTaskState, MEMORY[0x1E69E8300]);
  if (v0 <= 0x3F)
  {
    sub_1D8B151E0();
    if (v1 <= 0x3F)
    {
      sub_1D8AF7280(319, &qword_1EE0E38B0, type metadata accessor for TrackManager.MatchingComputationResult, MEMORY[0x1E69E8698]);
      if (v2 <= 0x3F)
      {
        sub_1D8AF7280(319, &qword_1EE0E38F8, type metadata accessor for TrackManager.MatchingComputationResult, MEMORY[0x1E69E8660]);
        if (v3 <= 0x3F)
        {
          sub_1D8AF7304();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1D8AF7280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D8AF7304()
{
  if (!qword_1EE0E3918)
  {
    v0 = sub_1D8B15ED0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3918);
    }
  }
}

uint64_t sub_1D8AF7354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8AF739C(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_1D8AF7404(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1D8AF744C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8AF7548()
{
  result = type metadata accessor for ProcessorState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 254)
  {
    v5 = *(a1 + 24);
    v6 = v5 >= 2;
    v7 = (v5 + 2147483646) & 0x7FFFFFFF;
    if (v6)
    {
      return (v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = a4(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D8AF7778()
{
  result = type metadata accessor for DetectionRequest(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8AF783C()
{
  result = type metadata accessor for TrackManager.MatchingComputationRequest(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore12TrackManagerC25MatchingComputationResult33_1BC519384AA1B0D3CF0F4F0C911DE605LLV0H4TypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8AF78C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D8AF791C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1D8AF798C()
{
  sub_1D8AF7A40(319, &qword_1EE0E38B8, &qword_1ECA64940);
  if (v0 <= 0x3F)
  {
    sub_1D8AF7A40(319, &qword_1EE0E3860, &qword_1ECA69148);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8AF7A40(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA64918);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D8AF7AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D8AF7B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8AF7B90()
{
  sub_1D8AF7C5C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ProcessorState(319);
    if (v1 <= 0x3F)
    {
      sub_1D8AF7280(319, &qword_1EE0E39D8, type metadata accessor for CVTrackSnapshot, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D8AF7C5C()
{
  result = qword_1EE0E6400[0];
  if (!qword_1EE0E6400[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0E6400);
  }

  return result;
}

unint64_t sub_1D8AF7CD4()
{
  result = qword_1ECA69150;
  if (!qword_1ECA69150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69150);
  }

  return result;
}

uint64_t sub_1D8AF7D70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8AF7DBC()
{
  result = qword_1ECA69158;
  if (!qword_1ECA69158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69158);
  }

  return result;
}

unint64_t sub_1D8AF7E5C()
{
  result = qword_1ECA69160;
  if (!qword_1ECA69160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69160);
  }

  return result;
}

unint64_t sub_1D8AF7EB4()
{
  result = qword_1ECA69168;
  if (!qword_1ECA69168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69168);
  }

  return result;
}

uint64_t sub_1D8AF7F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8AF7F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8AF7FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8AF8058(unint64_t a1)
{
  v24 = MEMORY[0x1E69E7CC8];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

LABEL_23:
  v2 = sub_1D8B16610();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA71FC20](v3, a1);
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 8 * v3 + 32);

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    CVTrackedDetection.latestDetection.getter(&v22);
    CVDetection.detectionType.getter(&v23);

    v8 = v23;
    v9 = sub_1D881F7DC(v23);
    v11 = v4[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_21;
    }

    v15 = v10;
    if (v4[3] < v14)
    {
      sub_1D8976BC0(v14, 1);
      v4 = v24;
      v9 = sub_1D881F7DC(v8);
      if ((v15 & 1) != (v16 & 1))
      {
        break;
      }
    }

    if (v15)
    {
      v5 = (v4[7] + 8 * v9);
      MEMORY[0x1DA71F1A0]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();
    }

    else
    {
      v17 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D8B23DF0;
      *(v18 + 32) = v6;
      v4[(v17 >> 6) + 8] |= 1 << v17;
      *(v4[6] + v17) = v8;
      *(v4[7] + 8 * v17) = v18;
      v19 = v4[2];
      v13 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v13)
      {
        goto LABEL_22;
      }

      v4[2] = v20;
    }

    ++v3;
    if (v7 == v2)
    {
      return v4;
    }
  }

  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8AF82D8(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v63 = result;
  v5 = result + 40;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 24 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return result;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_69;
    }

    v9 = *v7;

    sub_1D8A699B4(v9);

    ++v3;
    v7 += 3;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D87C7F54(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1D87C7F54((v10 > 1), v11 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
      v3 = v8;
      goto LABEL_2;
    }
  }

  v12 = sub_1D87C5734(v6);

  v13 = *(a2 + 16);
  if (v13)
  {
    v65 = a2 + 32;
    v14 = v12 + 56;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = 0;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_74;
      }

      v18 = *(v65 + 8 * v16);
      v69 = v18;
      if (*(v12 + 16))
      {
        v68 = v18;
        sub_1D8B16D20();

        CVDetection.hash(into:)(v67);
        v19 = sub_1D8B16D80();
        v20 = -1 << *(v12 + 32);
        v21 = v19 & ~v20;
        if ((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          do
          {
            *&v67[0] = *(*(v12 + 48) + 8 * v21);

            v23 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v67, &v69);

            if (v23)
            {
              goto LABEL_15;
            }

            v21 = (v21 + 1) & v22;
          }

          while (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
        }
      }

      else
      {
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v70 = v15;
      if ((result & 1) == 0)
      {
        result = sub_1D87F43E0(0, *(v15 + 16) + 1, 1);
        v15 = v70;
      }

      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1D87F43E0((v24 > 1), v25 + 1, 1);
        v15 = v70;
      }

      *(v15 + 16) = v25 + 1;
      *(v15 + 8 * v25 + 32) = v18;
      if (v17 == v13)
      {
        break;
      }

      v16 = v17;
      while (v17 >= v13)
      {
        __break(1u);
LABEL_15:

        v16 = v17;
        if (v17 == v13)
        {
          goto LABEL_31;
        }
      }
    }
  }

LABEL_31:

  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v29 = v63 + 24 + 24 * v26;
  while (v4 != v26)
  {
    if (v26 >= v4)
    {
      goto LABEL_70;
    }

    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_71;
    }

    v31 = *(v29 + 16);
    ++v26;
    v29 += 24;
    if ((~v31 & 0xF000000000000007) != 0)
    {
      v32 = *(v29 - 16);
      v33 = *v29;

      sub_1D8A699B4(v31);
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v67[0] = v28;
      if ((result & 1) == 0)
      {
        result = sub_1D87F4FF4(0, *(v28 + 16) + 1, 1);
        v28 = *&v67[0];
      }

      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_1D87F4FF4((v34 > 1), v35 + 1, 1);
        v28 = *&v67[0];
      }

      *(v28 + 16) = v35 + 1;
      v36 = v28 + 24 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v31;
      *(v36 + 48) = v33;
      v26 = v30;
      goto LABEL_32;
    }
  }

  v37 = *(v28 + 16);
  if (v37)
  {
    *&v67[0] = v27;
    result = sub_1D87F5014(0, v37, 0);
    v38 = 0;
    v39 = 32;
    v40 = *&v67[0];
    while (v38 < *(v28 + 16))
    {
      v41 = *(v28 + v39 + 8);
      if ((~v41 & 0xF000000000000007) == 0)
      {
        goto LABEL_76;
      }

      v66 = *(v28 + v39);

      sub_1D8A699B4(v41);

      sub_1D8A699B4(v41);

      result = sub_1D88649A0(v41);
      *&v67[0] = v40;
      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        result = sub_1D87F5014((v42 > 1), v43 + 1, 1);
        v40 = *&v67[0];
      }

      ++v38;
      *(v40 + 16) = v43 + 1;
      *(v40 + 16 * v43 + 32) = v66;
      v39 += 24;
      if (v37 == v38)
      {

        goto LABEL_51;
      }
    }

    goto LABEL_75;
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_51:
  v44 = 0;
  v45 = v63 + 40;
  v46 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
LABEL_52:
  v48 = (v45 + 24 * v44);
  while (v4 != v44)
  {
    if (v44 >= v4)
    {
      goto LABEL_72;
    }

    v49 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_73;
    }

    v51 = *v48;
    v48 += 3;
    v50 = v51;
    ++v44;
    if ((~v51 & 0xF000000000000007) == 0)
    {
      v52 = *(v48 - 4);
      v64 = *(v48 - 4);

      sub_1D8A699B4(v50);
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v67[0] = v47;
      if ((result & 1) == 0)
      {
        result = sub_1D87F4FF4(0, *(v47 + 16) + 1, 1);
        v47 = *&v67[0];
      }

      v54 = *(v47 + 16);
      v53 = *(v47 + 24);
      if (v54 >= v53 >> 1)
      {
        result = sub_1D87F4FF4((v53 > 1), v54 + 1, 1);
        v47 = *&v67[0];
      }

      *(v47 + 16) = v54 + 1;
      v55 = v47 + 24 * v54;
      *(v55 + 32) = v64;
      *(v55 + 40) = v50;
      *(v55 + 48) = v52;
      v44 = v49;
      goto LABEL_52;
    }
  }

  v56 = *(v47 + 16);
  if (v56)
  {
    *&v67[0] = v46;
    sub_1D87F43E0(0, v56, 0);
    v57 = *&v67[0];
    v58 = (v47 + 40);
    do
    {
      v60 = *(v58 - 1);
      v59 = *v58;

      sub_1D8A699B4(v59);
      sub_1D88649A0(v59);
      *&v67[0] = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D87F43E0((v61 > 1), v62 + 1, 1);
        v57 = *&v67[0];
      }

      v58 += 3;
      *(v57 + 16) = v62 + 1;
      *(v57 + 8 * v62 + 32) = v60;
      --v56;
    }

    while (v56);
  }

  return v40;
}

uint64_t sub_1D8AF898C(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 16);
  v4 = *(a2 + 16);
  v30 = v3 * v4;
  v31 = a2;
  if ((v3 * v4) >> 64 == (v3 * v4) >> 63)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
LABEL_18:
      v25 = sub_1D8AF82D8(v5, v31);

      return v25;
    }

    v7 = 0;
    v8 = 0;
    v28 = v3;
    v29 = result + 32;
    while (1)
    {
      v35 = *(v29 + 8 * v7);
      MEMORY[0x1EEE9AC00](result);
      v26[2] = &v35;
      v26[3] = v30;
      v27 = a3;

      v9 = v31;

      v10 = sub_1D87C6F00(sub_1D8AFCF44, v26, v9);
      v11 = *(v10 + 16);
      if (v11)
      {
        break;
      }

      v20 = v35;
      v21 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D87CA72C(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1D87CA72C((v22 > 1), v23 + 1, 1, v21);
      }

      v21[2] = v23 + 1;
      v24 = &v21[3 * v23];
      v24[4] = v20;
      v24[5] = 0xF000000000000007;
      *(v24 + 12) = 0;
      v36 = v21;
LABEL_4:
      ++v7;

      if (v7 == v3)
      {
        v5 = v36;
        goto LABEL_18;
      }
    }

    v32 = v8;
    v33 = v7;
    v12 = v5;
    v34 = v5;
    result = sub_1D87F4FF4(0, v11, 0);
    v13 = 0;
    v14 = v34;
    v15 = v35;
    while (v13 < *(v10 + 16))
    {
      v16 = *(v10 + 8 * v13 + 32);
      v34 = v14;
      v18 = v14[2];
      v17 = v14[3];

      if (v18 >= v17 >> 1)
      {
        result = sub_1D87F4FF4((v17 > 1), v18 + 1, 1);
        v14 = v34;
      }

      ++v13;
      v14[2] = v18 + 1;
      v19 = &v14[3 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v19[12] = a3;
      if (v11 == v13)
      {

        sub_1D88F6A14(v14);
        v5 = v12;
        v3 = v28;
        v8 = v32;
        v7 = v33;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF8C4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, float a6)
{
  v228 = a4;
  v229 = a3;
  v219 = sub_1D8B15170();
  v218 = *(v219 - 8);
  v10 = MEMORY[0x1EEE9AC00](v219);
  v216 = &v213 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v214 = &v213 - v12;
  v232 = sub_1D8B15130();
  v237 = *(v232 - 8);
  v13 = MEMORY[0x1EEE9AC00](v232);
  v15 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v217 = &v213 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v215 = &v213 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v223 = &v213 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v239 = &v213 - v22;
  v234 = sub_1D8B15160();
  v231 = *(v234 - 8);
  v23 = MEMORY[0x1EEE9AC00](v234);
  v25 = &v213 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v221 = &v213 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v242 = &v213 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691E8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v213 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69200);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v213 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v213 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69208);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v220 = &v213 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v241 = &v213 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v235 = &v213 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69210);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v227 = &v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v226 = &v213 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v213 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v238 = &v213 - v52;
  v236 = a2;
  v53 = *(a2 + 16);
  if (v53)
  {
    v213 = v25;
    v240 = v53;
    v233 = a1;
    sub_1D87A0E38(a5, v31, &qword_1ECA691E8);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691F8);
    v55 = (*(*(v54 - 8) + 48))(v31, 1, v54);
    v222 = v15;
    if (v55 == 1)
    {
      sub_1D87A14E4(v31, &qword_1ECA691E8);
      v56 = *(v32 + 48);
      v57 = v231;
      v58 = v234;
      (*(v231 + 56))(v37, 1, 1, v234);
      v59 = v232;
      (*(v237 + 7))(&v37[v56], 1, 1, v232);
    }

    else
    {
      v70 = *(v54 + 48);
      v71 = *(v32 + 48);
      v57 = v231;
      v58 = v234;
      (*(v231 + 32))(v35, v31, v234);
      (*(v57 + 7))(v35, 0, 1, v58);
      v72 = v237;
      v73 = &v31[v70];
      v74 = v232;
      (*(v237 + 4))(&v35[v71], v73, v232);
      v75 = v72;
      v59 = v74;
      (*(v75 + 7))(&v35[v71], 0, 1, v74);
      sub_1D881F6FC(v35, v37, &qword_1ECA69200);
    }

    v76 = v233;
    v77 = *(v32 + 48);
    v78 = v238;
    sub_1D881F6FC(v37, v238, &qword_1ECA69210);
    v79 = &v37[v77];
    v80 = v235;
    sub_1D881F6FC(v79, v235, &qword_1ECA69208);
    sub_1D87A0E38(v78, v51, &qword_1ECA69210);
    v81 = *(v57 + 6);
    v225 = v57 + 48;
    v224 = v81;
    if (v81(v51, 1, v58) == 1)
    {
      v82 = &qword_1ECA69210;
      v83 = v51;
    }

    else
    {
      v84 = v58;
      v85 = v242;
      (*(v57 + 4))(v242, v51, v58);
      v86 = v241;
      sub_1D87A0E38(v80, v241, &qword_1ECA69208);
      v87 = v237;
      if ((*(v237 + 6))(v86, 1, v59) != 1)
      {
        v58 = v239;
        (*(v87 + 4))(v239, v86, v59);
        v89 = sub_1D8B15150();
        v90 = sub_1D8B16370();
        if (sub_1D8B16460())
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          v92 = sub_1D8B15110();
          _os_signpost_emit_with_name_impl(&dword_1D8783000, v89, v90, v92, "Tamale.TrackManager.matchSelectedTracks.costMatrix", "", v91, 2u);
          MEMORY[0x1DA721330](v91, -1, -1);
        }

        v93 = v237;
        (*(v237 + 2))(v223, v58, v59);
        sub_1D8B151A0();
        swift_allocObject();
        v94 = sub_1D8B15190();
        (*(v93 + 1))(v58, v59);
        v95 = *(v57 + 1);
        v57 += 8;
        v95(v85, v84);
        v230 = v94;

LABEL_19:
        v96 = *(v76 + 16);
        v97 = v240 * v96;
        if ((v240 * v96) >> 64 == (v240 * v96) >> 63)
        {
          if ((v97 & 0x8000000000000000) == 0)
          {
            v241 = *(v76 + 16);
            if (v97)
            {
              v98 = sub_1D8B15D60();
              *(v98 + 16) = v97;
              v242 = v98;
              bzero((v98 + 32), 4 * v97);
            }

            else
            {
              v242 = MEMORY[0x1E69E7CC0];
            }

            v247 = 0;
            v248 = 0;
            v246 = v76;

            sub_1D8960D94(&v244);
            v99 = v245;
            v100 = OS_SIGNPOST_INTERVAL_END|OS_SIGNPOST_INTERVAL_BEGIN|0x4;
            if ((~v245 & 0xF000000000000007) != 0)
            {
              v109 = v244;
              v239 = (v236 + 32);
              v110 = v242 + 32;
              do
              {
                v107 = v239;
                v111 = v240;
                v105 = v240 * v109;
                v244 = v99;
                v112 = (v240 * v109) >> 64 != (v240 * v109) >> 63;
                v113 = v240 * v109;
                do
                {
                  v115 = *v107++;
                  v114 = v115;
                  v116 = ~v115 & 0xF000000000000007;

                  if (!v116)
                  {
                    break;
                  }

                  v243 = v114;
                  v117 = &v244;
                  sub_1D8AC5B38(&v243, v97);
                  if (v112)
                  {
                    __break(1u);
LABEL_45:
                    __break(1u);
LABEL_46:
                    __break(1u);
LABEL_47:
                    (*(v111 + 8))(v110, v117);
                    v124 = "";
LABEL_48:
                    v125 = swift_slowAlloc();
                    *v125 = 0;
                    v126 = v217;
                    v127 = sub_1D8B15110();
                    v128 = v124;
                    v123 = v126;
                    _os_signpost_emit_with_name_impl(&dword_1D8783000, v97, v100, v127, "Tamale.TrackManager.matchSelectedTracks.costMatrix", v128, v125, 2u);
                    MEMORY[0x1DA721330](v125, -1, -1);
LABEL_49:

                    v129 = *(v105 + 8);
                    v129(v123, v232);
                    v130 = sub_1D8B15150();
                    v131 = sub_1D8B16370();
                    if (sub_1D8B16460())
                    {
                      v132 = swift_slowAlloc();
                      *v132 = 0;
                      v133 = sub_1D8B15110();
                      _os_signpost_emit_with_name_impl(&dword_1D8783000, v130, v131, v133, "Tamale.TrackManager.matchSelectedTracks.bipartiteMatching", "", v132, 2u);
                      MEMORY[0x1DA721330](v132, -1, -1);
                    }

                    v134 = v232;
                    (*(v105 + 16))(v223, v112, v232);
                    sub_1D8B151A0();
                    swift_allocObject();
                    v135 = sub_1D8B15190();

                    v136 = v134;
                    v120 = v135;
                    v129(v112, v136);
                    v102 = v234;
                    (*(v231 + 8))(v116, v234);

                    v106 = v222;
                    goto LABEL_52;
                  }

                  v119 = v118;

                  if (v105 < 0)
                  {
                    goto LABEL_45;
                  }

                  if (v113 >= *(v242 + 2))
                  {
                    goto LABEL_46;
                  }

                  *&v110[4 * v113++] = (1.0 - v119) + 1.0;
                  --v111;
                }

                while (v111);

                sub_1D8960D94(&v244);
                v109 = v244;
                v99 = v245;
              }

              while ((~v245 & 0xF000000000000007) != 0);
            }

            if (v230)
            {
              v101 = v226;
              sub_1D87A0E38(v238, v226, &qword_1ECA69210);
              v102 = v234;
              v103 = v224(v101, 1, v234);
              v104 = v235;
              v105 = v237;
              v106 = v222;
              v107 = v229;
              if (v103 == 1)
              {

                v108 = &qword_1ECA69210;
              }

              else
              {
                v121 = v231;
                v116 = v221;
                (*(v231 + 32))(v221, v101, v102);
                v101 = v220;
                sub_1D87A0E38(v104, v220, &qword_1ECA69208);
                v122 = v232;
                if ((*(v105 + 48))(v101, 1, v232) != 1)
                {
                  v112 = v215;
                  (*(v105 + 32))(v215, v101, v122);
                  v97 = sub_1D8B15150();
                  v123 = v217;
                  sub_1D8B15180();
                  v100 = sub_1D8B16360();
                  if (sub_1D8B16460())
                  {

                    v110 = v214;
                    sub_1D8B151B0();

                    v111 = v218;
                    v117 = v219;
                    if ((*(v218 + 88))(v110, v219) != *MEMORY[0x1E69E93E8])
                    {
                      goto LABEL_47;
                    }

                    v124 = "[Error] Interval already ended";
                    goto LABEL_48;
                  }

                  goto LABEL_49;
                }

                (*(v121 + 8))(v116, v102);

                v108 = &qword_1ECA69208;
              }

              sub_1D87A14E4(v101, v108);
              v120 = 0;
            }

            else
            {
              v120 = 0;
              v105 = v237;
              v106 = v222;
              v102 = v234;
              v107 = v229;
            }

LABEL_52:
            v229 = v120;
            if (v107)
            {
              v57 = v107;
              v76 = v233;
              v137 = v240;
              v138 = v241;
            }

            else
            {
              v137 = v240;
              v138 = v241;
              if (v241 <= v240)
              {
                v139 = v240;
              }

              else
              {
                v139 = v241;
              }

              if (v139 <= 1)
              {
                v140 = 1;
              }

              else
              {
                v140 = v139;
              }

              v141 = objc_allocWithZone(MEMORY[0x1E699FD50]);
              v142 = v140;
              v120 = v229;
              v57 = [v141 initWithInitialSize_];
              v76 = v233;
            }

            if ((v228 & 0x100000000) != 0)
            {
              v143 = 82.0;
            }

            else
            {
              v143 = *&v228 + 2.0;
            }

            v144 = v242 + 32;
            v145 = v107;
            v237 = v144;
            *&v146 = v143;
            v239 = [v57 computeMatchingForCostMatrix:v144 withRowCount:v138 columnCount:v137 maxIters:5 minimumNonzeroPaddingValue:v146];
            if (v120)
            {
              v147 = v227;
              sub_1D87A0E38(v238, v227, &qword_1ECA69210);
              if (v224(v147, 1, v102) == 1)
              {

                sub_1D87A14E4(v147, &qword_1ECA69210);
              }

              else
              {
                v148 = v57;
                v149 = v106;
                v150 = v231;
                v151 = v213;
                (*(v231 + 32))(v213, v147, v102);
                v152 = sub_1D8B15150();
                sub_1D8B15180();
                v153 = sub_1D8B16360();
                if (sub_1D8B16460())
                {

                  v154 = v216;
                  sub_1D8B151B0();

                  v155 = v218;
                  v156 = v219;
                  if ((*(v218 + 88))(v154, v219) == *MEMORY[0x1E69E93E8])
                  {
                    v157 = "[Error] Interval already ended";
                  }

                  else
                  {
                    (*(v155 + 8))(v154, v156);
                    v157 = "";
                  }

                  v158 = v213;
                  v57 = v148;
                  v159 = swift_slowAlloc();
                  *v159 = 0;
                  v160 = sub_1D8B15110();
                  _os_signpost_emit_with_name_impl(&dword_1D8783000, v152, v153, v160, "Tamale.TrackManager.matchSelectedTracks.bipartiteMatching", v157, v159, 2u);
                  MEMORY[0x1DA721330](v159, -1, -1);

                  (*(v105 + 8))(v149, v232);
                  (*(v231 + 8))(v158, v234);
                }

                else
                {

                  (*(v105 + 8))(v149, v232);
                  (*(v150 + 8))(v151, v102);
                  v57 = v148;
                }

                v76 = v233;
              }
            }

            v58 = &property descriptor for UserDefaultsUtility.featureAwarenessCamera;
            v161 = [v239 matches];
            v97 = sub_1D8AFCFA4();
            v162 = sub_1D8B15CF0();

            if (!(v162 >> 62))
            {
              v163 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_76;
            }

LABEL_103:
            v163 = sub_1D8B16610();
LABEL_76:

            v226 = v57;
            if (v163 != v241)
            {
              if (qword_1EE0E4348 == -1)
              {
                goto LABEL_89;
              }

              goto LABEL_160;
            }

            v164 = [v239 *(v58 + 3224)];
            v165 = sub_1D8B15CF0();

            if (v165 >> 62)
            {
              v166 = sub_1D8B16610();
              if (v166)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v166)
              {
LABEL_79:
                v246 = MEMORY[0x1E69E7CC0];
                sub_1D87F3F24(0, v166 & ~(v166 >> 63), 0);
                if (v166 < 0)
                {
                  __break(1u);
                  goto LABEL_162;
                }

                v167 = 0;
                v97 = v246;
                do
                {
                  if ((v165 & 0xC000000000000001) != 0)
                  {
                    v168 = MEMORY[0x1DA71FC20](v167, v165);
                  }

                  else
                  {
                    v168 = *(v165 + 8 * v167 + 32);
                  }

                  v169 = v168;
                  v58 = [v168 integerValue];

                  v246 = v97;
                  v171 = *(v97 + 16);
                  v170 = *(v97 + 24);
                  if (v171 >= v170 >> 1)
                  {
                    sub_1D87F3F24((v170 > 1), v171 + 1, 1);
                    v97 = v246;
                  }

                  ++v167;
                  *(v97 + 16) = v171 + 1;
                  *(v97 + 8 * v171 + 32) = v58;
                }

                while (v166 != v167);

                v76 = v233;
LABEL_106:
                v181 = v241;
                while (1)
                {
                  v166 = sub_1D8ABF1B4(v97);
                  v165 = sub_1D8AF3B28(v166);
                  v57 = v166;
                  if (![v239 state])
                  {
                    goto LABEL_124;
                  }

                  v185 = sub_1D87C3660(v184);
                  v186 = sub_1D87C53C8(&unk_1F5428DF8);
                  v58 = sub_1D8951478(v185, v186);

                  if ((v58 & 1) == 0)
                  {

                    if (!v241)
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_129;
                  }

                  if (qword_1EE0E4348 != -1)
                  {
LABEL_162:
                    swift_once();
                  }

                  v187 = sub_1D8B151E0();
                  __swift_project_value_buffer(v187, qword_1EE0E4350);

                  v181 = sub_1D8B151C0();
                  v188 = sub_1D8B16210();
                  if (!os_log_type_enabled(v181, v188))
                  {

                    if (!v241)
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_129;
                  }

                  v58 = swift_slowAlloc();
                  v189 = 0;
                  v76 = 0;
                  *v58 = 134217984;
                  v190 = 1 << *(v165 + 32);
                  if (v190 < 64)
                  {
                    v191 = ~(-1 << v190);
                  }

                  else
                  {
                    v191 = -1;
                  }

                  v166 = v57;
                  v192 = v191 & *(v165 + 64);
                  v193 = (v190 + 63) >> 6;
LABEL_115:
                  if (v192)
                  {
                    v194 = v189;
                    goto LABEL_121;
                  }

                  while (1)
                  {
                    v194 = v189 + 1;
                    if (__OFADD__(v189, 1))
                    {
                      break;
                    }

                    if (v194 >= v193)
                    {

                      *(v58 + 4) = v76;

                      _os_log_impl(&dword_1D8783000, v181, v188, "solverResult was not optimal; proceeding with %ld match failures.", v58, 0xCu);
                      MEMORY[0x1DA721330](v58, -1, -1);

                      v76 = v233;
                      if (!v241)
                      {
                        goto LABEL_151;
                      }

                      goto LABEL_129;
                    }

                    v192 = *(v165 + 64 + 8 * v194);
                    ++v189;
                    if (v192)
                    {
                      v189 = v194;
LABEL_121:
                      v195 = __clz(__rbit64(v192));
                      v192 &= v192 - 1;
                      v196 = *(*(v165 + 56) + ((v194 << 9) | (8 * v195)));
                      v197 = __OFADD__(v76, v196);
                      v76 += v196;
                      if (!v197)
                      {
                        goto LABEL_115;
                      }

                      __break(1u);
LABEL_124:

                      if (!v181)
                      {
LABEL_151:

                        sub_1D87A14E4(v235, &qword_1ECA69208);
                        sub_1D87A14E4(v238, &qword_1ECA69210);

                        v61 = MEMORY[0x1E69E7CC0];
                        goto LABEL_152;
                      }

LABEL_129:
                      v246 = MEMORY[0x1E69E7CC0];
                      sub_1D87F4FF4(0, v241, 0);
                      v198 = v241;
                      v199 = 0;
                      v200 = v76 + 32;
                      v61 = v246;
                      v234 = v236 + 32;
LABEL_130:
                      if (v199 >= *(v97 + 16))
                      {
                        __break(1u);
                        break;
                      }

                      v76 = *(v200 + 8 * v199);
                      if (*(v166 + 16))
                      {
                        v201 = *(v97 + 8 * v199 + 32);
                        v202 = sub_1D87EFF94(v201);
                        v198 = v241;
                        if ((v203 & 1) != 0 && *(*(v166 + 56) + 8 * v202) == 1)
                        {
                          if (v201 == -1)
                          {
                            v206 = 0xF000000000000007;
                            v207 = 0.0;
                          }

                          else
                          {
                            if (v201 >= v240)
                            {
                              goto LABEL_155;
                            }

                            v204 = v199 * v240;
                            if ((v199 * v240) >> 64 != (v199 * v240) >> 63)
                            {
                              goto LABEL_156;
                            }

                            v197 = __OFADD__(v204, v201);
                            v205 = v204 + v201;
                            if (v197)
                            {
                              goto LABEL_157;
                            }

                            if ((v205 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_158;
                            }

                            if (v205 >= *(v242 + 2))
                            {
                              goto LABEL_159;
                            }

                            v206 = *(v234 + 8 * v201);
                            v207 = 1.0 - (*&v237[4 * v205] + -1.0);
                          }

                          if (v207 <= a6)
                          {
                            sub_1D88649A0(v206);
LABEL_142:
                            v206 = 0xF000000000000007;
                          }

                          v246 = v61;
                          v209 = *(v61 + 16);
                          v208 = *(v61 + 24);
                          v58 = v209 + 1;
                          if (v209 >= v208 >> 1)
                          {
                            sub_1D87F4FF4((v208 > 1), v209 + 1, 1);
                            v198 = v241;
                            v61 = v246;
                          }

                          ++v199;
                          *(v61 + 16) = v58;
                          v210 = v61 + 24 * v209;
                          *(v210 + 32) = v76;
                          *(v210 + 40) = v206;
                          *(v210 + 48) = v207;
                          v166 = v57;
                          if (v198 == v199)
                          {

                            sub_1D87A14E4(v235, &qword_1ECA69208);
                            sub_1D87A14E4(v238, &qword_1ECA69210);

                            goto LABEL_152;
                          }

                          goto LABEL_130;
                        }
                      }

                      v207 = 0.0;
                      goto LABEL_142;
                    }
                  }

                  __break(1u);
LABEL_155:
                  __break(1u);
LABEL_156:
                  __break(1u);
LABEL_157:
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  swift_once();
LABEL_89:
                  v172 = sub_1D8B151E0();
                  __swift_project_value_buffer(v172, qword_1EE0E4350);
                  v173 = v239;

                  v174 = v173;
                  v175 = sub_1D8B151C0();
                  v176 = sub_1D8B16210();
                  if (os_log_type_enabled(v175, v176))
                  {
                    v177 = swift_slowAlloc();
                    *v177 = 134218240;
                    v178 = [v174 *(v58 + 3224)];
                    v179 = sub_1D8B15CF0();

                    if (v179 >> 62)
                    {
                      v58 = sub_1D8B16610();
                    }

                    else
                    {
                      v58 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    *(v177 + 4) = v58;

                    *(v177 + 12) = 2048;
                    v180 = v241;
                    *(v177 + 14) = v241;

                    _os_log_impl(&dword_1D8783000, v175, v176, "Bipartite match failed; produced %ld results when %ld are required.", v177, 0x16u);
                    MEMORY[0x1DA721330](v177, -1, -1);
                  }

                  else
                  {

                    v175 = v174;
                    v180 = v241;
                  }

                  v97 = MEMORY[0x1E69E7CC0];
                  if (v180)
                  {
                    v246 = MEMORY[0x1E69E7CC0];
                    sub_1D87F3F24(0, v241, 0);
                    v181 = v241;
                    v97 = v246;
                    v58 = *(v246 + 16);
                    v182 = v241;
                    do
                    {
                      v246 = v97;
                      v183 = *(v97 + 24);
                      if (v58 >= v183 >> 1)
                      {
                        sub_1D87F3F24((v183 > 1), v58 + 1, 1);
                        v181 = v241;
                        v97 = v246;
                      }

                      *(v97 + 16) = v58 + 1;
                      *(v97 + 8 * v58++ + 32) = -1;
                      --v182;
                    }

                    while (v182);
                  }

                  else
                  {
                    v181 = 0;
                  }
                }
              }
            }

            v97 = MEMORY[0x1E69E7CC0];
            goto LABEL_106;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_103;
      }

      v88 = *(v57 + 1);
      v57 += 8;
      v88(v85, v58);
      v82 = &qword_1ECA69208;
      v83 = v86;
    }

    sub_1D87A14E4(v83, v82);
    v230 = 0;
    goto LABEL_19;
  }

  v60 = *(a1 + 16);
  v61 = MEMORY[0x1E69E7CC0];
  if (v60)
  {
    v246 = MEMORY[0x1E69E7CC0];
    sub_1D87F4FF4(0, v60, 0);
    v61 = v246;
    v62 = (a1 + 32);
    v63 = *(v246 + 16);
    v64 = 24 * v63;
    do
    {
      v66 = *v62++;
      v65 = v66;
      v246 = v61;
      v67 = v63 + 1;
      v68 = *(v61 + 24);

      if (v63 >= v68 >> 1)
      {
        sub_1D87F4FF4((v68 > 1), v67, 1);
        v61 = v246;
      }

      *(v61 + 16) = v67;
      v69 = v61 + v64;
      *(v69 + 32) = v65;
      *(v69 + 40) = 0xF000000000000007;
      *(v69 + 48) = 0;
      v64 += 24;
      ++v63;
      --v60;
    }

    while (v60);
  }

LABEL_152:
  v211 = sub_1D8AF82D8(v61, v236);

  return v211;
}

uint64_t sub_1D8AFA7FC(uint64_t a1)
{
  v2 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1D8ADABAC())
  {
    return 1;
  }

  sub_1D8AF7FF0(a1, v4, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8AF7F08(v4, v7, type metadata accessor for DetectionResult);
    if (*(*&v7[*(v5 + 20)] + 16) <= 5uLL)
    {
      v8 = 5;
    }

    else
    {
      v8 = *(*&v7[*(v5 + 20)] + 16);
    }

    sub_1D8AF7F70(v7, type metadata accessor for DetectionResult);
  }

  else
  {
    sub_1D8AF7F70(v4, type metadata accessor for ProcessorState);
    v8 = 5;
  }

  return [objc_allocWithZone(MEMORY[0x1E699FD50]) initWithInitialSize_];
}

uint64_t sub_1D8AFA9A8(const char *a1, uint64_t a2, int a3)
{
  v19 = a3;
  v4 = sub_1D8B15170();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B15130();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0E8E80 != -1)
  {
    swift_once();
  }

  v12 = sub_1D8B15160();
  __swift_project_value_buffer(v12, qword_1EE0E8E88);
  v13 = sub_1D8B15150();
  sub_1D8B15180();
  v18 = sub_1D8B16360();
  result = sub_1D8B16460();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v19 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_1D8B151B0();

      if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1D8B15110();
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v13, v18, v17, a1, v15, v16, 2u);
      MEMORY[0x1DA721330](v16, -1, -1);
LABEL_15:

      return (*(v9 + 8))(v11, v8);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8AFAC84(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), unint64_t *a3, unint64_t a4, float a5)
{
  v153 = a4;
  v168 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v152 - v9;
  v173 = type metadata accessor for CVTrackSnapshot(0);
  v157 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v166 = &v152 - v13;
  v14 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v156 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1D8B15130();
  v167 = *(v171 - 8);
  v16 = MEMORY[0x1EEE9AC00](v171);
  v165 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v172 = &v152 - v18;
  v19 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v19);
  v170 = (&v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for ProcessorState(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v155 = (&v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v164 = &v152 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v152 - v26);
  v28 = type metadata accessor for DetectionResult(0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v152 - v32;
  sub_1D8AF7FF0(a2, v27, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_77:
    sub_1D8AF7F70(v27, type metadata accessor for ProcessorState);
    LODWORD(v151) = 0;
    v150 = 1076;
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  v152 = v31;
  v154 = v21;
  v163 = a2;
  v161 = a3;
  sub_1D8AF7F08(v27, v33, type metadata accessor for DetectionResult);
  v34 = *&v33[*(v28 + 20)];
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  v169 = v34;
  v162 = v10;
  v160 = v33;
  if (v35)
  {
    v178 = MEMORY[0x1E69E7CC0];
    sub_1D87F4140(0, v35, 0);
    v37 = (v34 + 32);
    v36 = v178;
    v38 = v19;
    do
    {
      v39 = *v37++;
      switch(v39 >> 60)
      {
        case 1uLL:
          v54 = type metadata accessor for GroundedParseDetectorResult(0);
          v41 = swift_projectBox();
          v176 = v54;
          v177 = sub_1D8AF7D70(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_16;
        case 2uLL:
          v49 = type metadata accessor for MetaDetectionResult();
          v41 = swift_projectBox();
          v176 = v49;
          v177 = sub_1D8AF7D70(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for MetaDetectionResult;
          goto LABEL_16;
        case 3uLL:
        case 8uLL:
          v40 = type metadata accessor for ObjectDetectorResult(0);
          v41 = swift_projectBox();
          v176 = v40;
          v177 = sub_1D8AF7D70(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_16;
        case 4uLL:
          v55 = type metadata accessor for ParseDetectorResult(0);
          v41 = swift_projectBox();
          v176 = v55;
          v177 = sub_1D8AF7D70(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for ParseDetectorResult;
          goto LABEL_16;
        case 5uLL:
          v56 = type metadata accessor for TextDetectorResult(0);
          v41 = swift_projectBox();
          v176 = v56;
          v177 = sub_1D8AF7D70(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for TextDetectorResult;
          goto LABEL_16;
        case 6uLL:
        case 7uLL:
          v44 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v41 = swift_projectBox();
          v176 = v44;
          v177 = sub_1D8AF7D70(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_16;
        case 9uLL:
        case 0xAuLL:
          v45 = swift_projectBox();
          v46 = v170;
          sub_1D8AF7FF0(v45, v170, type metadata accessor for AFMResult);
          v176 = v38;
          v177 = sub_1D8AF7D70(&qword_1EE0E3F80, type metadata accessor for AFMResult);
          v47 = __swift_allocate_boxed_opaque_existential_1(&v175);
          sub_1D8AF7F08(v46, v47, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v48 = type metadata accessor for SyntheticDetectionResult();
          v41 = swift_projectBox();
          v176 = v48;
          v177 = sub_1D8AF7D70(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_16;
        case 0xCuLL:
          v50 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v41 = swift_projectBox();
          v176 = v50;
          v177 = sub_1D8AF7D70(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_16;
        case 0xDuLL:
          v57 = type metadata accessor for GroundedParseClassificationsResult(0);
          v41 = swift_projectBox();
          v176 = v57;
          v177 = sub_1D8AF7D70(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
          v43 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_16:
          sub_1D8AF7FF0(v41, boxed_opaque_existential_1, v43);
          break;
        default:
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v52 = swift_projectBox();
          v176 = v51;
          v177 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
          v53 = __swift_allocate_boxed_opaque_existential_1(&v175);
          sub_1D87A0E38(v52, v53, &qword_1ECA67750);
          break;
      }

      v58 = v176;
      v59 = v177;
      __swift_project_boxed_opaque_existential_1(&v175, v176);
      v60 = *(v59 + 88);

      v61 = v60(v58, v59);
      __swift_destroy_boxed_opaque_existential_1(&v175);

      v178 = v36;
      v63 = *(v36 + 16);
      v62 = *(v36 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1D87F4140((v62 > 1), v63 + 1, 1);
        v36 = v178;
      }

      *(v36 + 16) = v63 + 1;
      *(v36 + 8 * v63 + 32) = v61;
      --v35;
    }

    while (v35);
  }

  v64 = COERCE_DOUBLE(sub_1D8918E7C(v36));
  v66 = v65;

  if (v66)
  {
    v67 = NAN;
  }

  else
  {
    v67 = v64;
  }

  if (qword_1EE0E8E80 != -1)
  {
    goto LABEL_76;
  }

LABEL_24:
  v68 = sub_1D8B15160();
  v69 = __swift_project_value_buffer(v68, qword_1EE0E8E88);
  sub_1D8B15150();
  v70 = v172;
  sub_1D8B15100();
  v71 = v164;
  sub_1D8AF7FF0(v163, v164, type metadata accessor for ProcessorState);
  v72 = v168;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v73 = sub_1D8B15150();
  LODWORD(v170) = sub_1D8B16370();
  v74 = sub_1D8B16460();
  v159 = v68;
  v158 = v69;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v175 = v76;
    *v75 = 136315906;
    v77 = v155;
    sub_1D8AF7FF0(v71, v155, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v79 = v168;
      v80 = v166;
      v81 = v156;
      if (EnumCaseMultiPayload == 1)
      {
        v82 = v77;
        v83 = v152;
        sub_1D8AF7F08(v82, v152, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v83, v81, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v83, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        sub_1D8AF7F08(v77, v81, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v81 = v156;
      sub_1D8AF7F08(v77, v156, type metadata accessor for DetectionRequest);
      v79 = v168;
      v80 = v166;
    }

    v85 = *v81;
    sub_1D8AF7F70(v81, type metadata accessor for DetectionRequest);
    LOBYTE(v178) = v85;
    v86 = CVDetection.DetectionType.description.getter();
    v88 = v87;
    sub_1D8AF7F70(v71, type metadata accessor for ProcessorState);
    v89 = sub_1D89AC714(v86, v88, &v175);

    *(v75 + 4) = v89;
    *(v75 + 12) = 2048;
    v90 = *(v79 + 16);

    *(v75 + 14) = v90;

    *(v75 + 22) = 2048;
    v91 = *(v169 + 16);

    *(v75 + 24) = v91;

    *(v75 + 32) = 2048;
    *(v75 + 34) = v67;
    v70 = v172;
    v92 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v73, v170, v92, "Tamale.TrackManager.matchSelectedTracks", "%s size: %ld (existing) x %ld (new) @ t=%f", v75, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1DA721330](v76, -1, -1);
    MEMORY[0x1DA721330](v75, -1, -1);

    v84 = v80;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_1D8AF7F70(v71, type metadata accessor for ProcessorState);
    v79 = v72;
    v84 = v166;
  }

  v93 = *(v167 + 16);
  v164 = v167 + 16;
  v163 = v93;
  v93(v165, v70, v171);
  sub_1D8B151A0();
  swift_allocObject();
  v165 = sub_1D8B15190();
  if (qword_1EE0E4348 != -1)
  {
    swift_once();
  }

  v94 = sub_1D8B151E0();
  v95 = __swift_project_value_buffer(v94, qword_1EE0E4350);
  v96 = *(v94 - 8);
  v156 = *(v96 + 16);
  (v156)(v84, v95, v94);
  v155 = *(v96 + 56);
  v97 = (v155)(v84, 0, 1, v94);
  v175 = MEMORY[0x1E69E7CD0];
  MEMORY[0x1EEE9AC00](v97);
  *(&v152 - 4) = sub_1D8AEDD38;
  *(&v152 - 3) = 0;
  v150 = &v175;
  v151 = v84;
  v98 = sub_1D8821AF8(sub_1D8AFCF04, (&v152 - 6), v79);

  sub_1D87A14E4(v84, &qword_1ECA65E98);
  v99 = *(v79 + 16);
  v100 = v98[2];
  v170 = v98;
  if (v99 != v100)
  {

    v101 = sub_1D8B151C0();
    v102 = sub_1D8B16230();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 134218240;
      *(v103 + 4) = v99 - v98[2];

      *(v103 + 12) = 2048;
      *(v103 + 14) = v67;
      _os_log_impl(&dword_1D8783000, v101, v102, "matchSelectedTracks: duplicates found in estimates. Removed %ld @ t=%f.", v103, 0x16u);
      v104 = v103;
      v79 = v168;
      MEMORY[0x1DA721330](v104, -1, -1);
    }

    else
    {
    }

    v105 = v166;
    (v156)(v166, v95, v94);
    v106 = (v155)(v105, 0, 1, v94);
    v175 = MEMORY[0x1E69E7CD0];
    MEMORY[0x1EEE9AC00](v106);
    *(&v152 - 4) = sub_1D8AEDD84;
    *(&v152 - 3) = 0;
    v150 = &v175;
    v151 = v105;
    v107 = sub_1D8821AF8(sub_1D8AFCF24, (&v152 - 6), v79);

    sub_1D87A14E4(v105, &qword_1ECA65E98);
    if (v99 == v107[2] && (v108 = , v109 = sub_1D87C55A8(v108), , v110 = *(v109 + 16), , v99 == v110))
    {
    }

    else
    {

      v111 = sub_1D8B151C0();
      v112 = sub_1D8B16230();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 134218752;
        *(v113 + 4) = v99;
        *(v113 + 12) = 2048;
        v114 = v107[2];

        *(v113 + 14) = v114;

        *(v113 + 22) = 2048;

        v116 = sub_1D87C55A8(v115);

        v117 = *(v116 + 16);

        *(v113 + 24) = v117;

        *(v113 + 32) = 2048;
        *(v113 + 34) = v67;
        _os_log_impl(&dword_1D8783000, v111, v112, "matchSelectedTracks: duplicates found in tracks! original %ld, deduped %ld, set %ld @ t=%f", v113, 0x2Au);
        MEMORY[0x1DA721330](v113, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    v98 = v170;
    v99 = v170[2];
  }

  v175 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691F0);
  sub_1D8B15760();
  if (v99)
  {
    v118 = 0;
    v119 = v98 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
    v120 = *(v157 + 72);
    v121 = v175;
    while (1)
    {
      v122 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        swift_once();
        goto LABEL_24;
      }

      v123 = *(v119 + *(v173 + 24));
      sub_1D8AF7FF0(v119, v174, type metadata accessor for CVTrackSnapshot);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178 = v121;
      v125 = sub_1D87F0680(v123);
      v127 = v121[2];
      v128 = (v126 & 1) == 0;
      v129 = __OFADD__(v127, v128);
      v130 = v127 + v128;
      if (v129)
      {
        goto LABEL_74;
      }

      v131 = v126;
      if (v121[3] < v130)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_55;
      }

      v135 = v125;
      sub_1D896CA64();
      v125 = v135;
      v121 = v178;
      if (v131)
      {
LABEL_47:
        sub_1D8AFD36C(v174, v121[7] + v125 * v120, type metadata accessor for CVTrackSnapshot);

        goto LABEL_48;
      }

LABEL_56:
      v121[(v125 >> 6) + 8] |= 1 << v125;
      *(v121[6] + 8 * v125) = v123;
      sub_1D8AF7F08(v174, v121[7] + v125 * v120, type metadata accessor for CVTrackSnapshot);
      v133 = v121[2];
      v129 = __OFADD__(v133, 1);
      v134 = v133 + 1;
      if (v129)
      {
        goto LABEL_75;
      }

      v121[2] = v134;
LABEL_48:
      v119 += v120;
      ++v118;
      if (v122 == v99)
      {

        goto LABEL_62;
      }
    }

    sub_1D8977A30(v130, isUniquelyReferenced_nonNull_native);
    v27 = v178;
    v125 = sub_1D87F0680(v123);
    if ((v131 & 1) != (v132 & 1))
    {
      sub_1D8B16C30();
      __break(1u);
      goto LABEL_77;
    }

LABEL_55:
    v121 = v178;
    if (v131)
    {
      goto LABEL_47;
    }

    goto LABEL_56;
  }

  v121 = v175;
LABEL_62:
  v136 = v121[2];
  v137 = v162;
  if (v136)
  {
    v138 = sub_1D87F38AC(v121[2], 0);
    v139 = sub_1D8818924(&v175, v138 + 4, v136, v121);

    sub_1D87977A0();
    if (v139 != v136)
    {
      __break(1u);
      goto LABEL_65;
    }
  }

  else
  {
LABEL_65:
    v138 = MEMORY[0x1E69E7CC0];
  }

  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691F8);
  v141 = *(v140 + 48);
  (*(*(v159 - 8) + 16))(v137, v158);
  v163(v137 + v141, v172, v171);
  (*(*(v140 - 8) + 56))(v137, 0, 1, v140);
  if (v161 == 1)
  {
    v144 = sub_1D8AF898C(v138, v169, a5);
  }

  else
  {
    if (v161 == 2)
    {
      v142 = v169;

      v143 = MEMORY[0x1E69E7CC0];
      goto LABEL_72;
    }

    v144 = sub_1D8AF8C4C(v138, v169, v161, v153 | ((HIDWORD(v153) & 1) << 32), v137, a5);
  }

  v143 = v144;
  v147 = v145;
  v142 = v146;

  v138 = v147;
LABEL_72:
  sub_1D87A14E4(v137, &qword_1ECA691E8);
  v148 = sub_1D8AEDDD0(v143, v138, v142, v121, v67);

  sub_1D8AFA9A8("Tamale.TrackManager.matchSelectedTracks", 39, 2);

  (*(v167 + 8))(v172, v171);
  sub_1D8AF7F70(v160, type metadata accessor for DetectionResult);
  return v148;
}

uint64_t sub_1D8AFC44C(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v40 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = 0; ; v11 = i)
  {
    v16 = v9;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v16)) | (i << 6);
    v19 = *(*(a1 + 48) + v18);
    v20 = *(*(a1 + 56) + 8 * v18);
    v37[0] = v19;
    v38 = v20;
    a2(v39, v37);
    v21 = LOBYTE(v39[0]);
    if (LOBYTE(v39[0]) == 14)
    {
LABEL_23:
      sub_1D87977A0();
    }

    v22 = v39[1];
    v23 = *v40;
    v24 = sub_1D881F7DC(LOBYTE(v39[0]));
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        v33 = v24;
        sub_1D896C918();
        v24 = v33;
      }
    }

    else
    {
      sub_1D89777B0(v29, a4 & 1);
      v24 = sub_1D881F7DC(v21);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_28;
      }
    }

    v32 = *v40;
    if (v30)
    {
      v13 = (v32[7] + 8 * v24);
      v15 = *v13 - v22;
      if (__OFSUB__(*v13, v22))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v32[(v24 >> 6) + 8] |= 1 << v24;
      *(v32[6] + v24) = v21;
      *(v32[7] + 8 * v24) = v22;
      v14 = v32[2];
      v13 = v32 + 2;
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_27;
      }
    }

    v9 = (v16 - 1) & v16;
    *v13 = v15;
    a4 = 1;
  }

  v17 = v11;
  while (1)
  {
    i = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (i >= v10)
    {
      goto LABEL_23;
    }

    v16 = *(v6 + 8 * i);
    ++v17;
    if (v16)
    {
      goto LABEL_12;
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
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8AFC704(uint64_t *a1)
{
  v2 = **(v1 + 16);
  v5 = *a1;
  v4[2] = &v5;
  return sub_1D8AD06C0(sub_1D8AFC758, v4, v2) & 1;
}

uint64_t sub_1D8AFC7F0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69198) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8AE3EDC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D8AFC91C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8AE43A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D8AFCA48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D8AE496C(a1, v4, v5, v6);
}

uint64_t sub_1D8AFCB8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D886553C;

  return sub_1D8ADB928(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_1D8AFCCD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8ADC968(v10, a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1D8AFCE14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D88B7B50(a1, v4);
}

void sub_1D8AFCECC(id a1)
{
  if (a1 != 3)
  {
    sub_1D8AFCEDC(a1);
  }
}

void sub_1D8AFCEDC(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

id sub_1D8AFCEF0(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

BOOL sub_1D8AFCF44(unint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = **(v1 + 16);
  v7[2] = *a1;
  v7[0] = v4;
  sub_1D8AC5B38(v7, v2);
  return v5 >= v3;
}

unint64_t sub_1D8AFCFA4()
{
  result = qword_1EE0E36A8;
  if (!qword_1EE0E36A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E36A8);
  }

  return result;
}

uint64_t sub_1D8AFD0CC@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  return result;
}

BOOL sub_1D8AFD114(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v8[4] = a1[4];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  (*(v2 + 40))(v7, v3);
  return _s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v8, v7);
}

uint64_t sub_1D8AFD18C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8AE4B38(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D8AFD2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8ADB25C(a1, v4, v5, v6);
}

uint64_t sub_1D8AFD36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8AFD3F8()
{
  result = qword_1ECA69278;
  if (!qword_1ECA69278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69278);
  }

  return result;
}

uint64_t sub_1D8AFD4A0()
{
  v1 = 0x676E69686374616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69737365636F7270;
  }
}

uint64_t sub_1D8AFD504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8AFE59C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8AFD52C(uint64_t a1)
{
  v2 = sub_1D8AFDA78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AFD568(uint64_t a1)
{
  v2 = sub_1D8AFDA78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AFD5A4(uint64_t a1)
{
  v2 = sub_1D8AFDACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AFD5E0(uint64_t a1)
{
  v2 = sub_1D8AFDACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AFD61C(uint64_t a1)
{
  v2 = sub_1D8AFDB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AFD658(uint64_t a1)
{
  v2 = sub_1D8AFDB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AFD694(uint64_t a1)
{
  v2 = sub_1D8AFDB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AFD6D0(uint64_t a1)
{
  v2 = sub_1D8AFDB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69280);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69288);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69290);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69298);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AFDA78();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8AFDB20();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8AFDACC();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8AFDB74();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1D8AFDA78()
{
  result = qword_1ECA692A0;
  if (!qword_1ECA692A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692A0);
  }

  return result;
}

unint64_t sub_1D8AFDACC()
{
  result = qword_1ECA692A8;
  if (!qword_1ECA692A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692A8);
  }

  return result;
}

unint64_t sub_1D8AFDB20()
{
  result = qword_1ECA692B0;
  if (!qword_1ECA692B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692B0);
  }

  return result;
}

unint64_t sub_1D8AFDB74()
{
  result = qword_1ECA692B8;
  if (!qword_1ECA692B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692B8);
  }

  return result;
}

uint64_t WorkState.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t WorkState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA692C0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA692C8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA692D0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA692D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8AFDA78();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v24 = &type metadata for WorkState;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8AFDB20();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8AFDACC();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8AFDB74();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1D8AFE1B0()
{
  result = qword_1EE0E3AD0;
  if (!qword_1EE0E3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E3AD0);
  }

  return result;
}

unint64_t sub_1D8AFE288()
{
  result = qword_1ECA692E0;
  if (!qword_1ECA692E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692E0);
  }

  return result;
}

unint64_t sub_1D8AFE2E0()
{
  result = qword_1ECA692E8;
  if (!qword_1ECA692E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692E8);
  }

  return result;
}

unint64_t sub_1D8AFE338()
{
  result = qword_1ECA692F0;
  if (!qword_1ECA692F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692F0);
  }

  return result;
}

unint64_t sub_1D8AFE390()
{
  result = qword_1ECA692F8;
  if (!qword_1ECA692F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692F8);
  }

  return result;
}

unint64_t sub_1D8AFE3E8()
{
  result = qword_1ECA69300;
  if (!qword_1ECA69300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69300);
  }

  return result;
}

unint64_t sub_1D8AFE440()
{
  result = qword_1ECA69308;
  if (!qword_1ECA69308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69308);
  }

  return result;
}

unint64_t sub_1D8AFE498()
{
  result = qword_1ECA69310;
  if (!qword_1ECA69310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69310);
  }

  return result;
}

unint64_t sub_1D8AFE4F0()
{
  result = qword_1ECA69318;
  if (!qword_1ECA69318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69318);
  }

  return result;
}

unint64_t sub_1D8AFE548()
{
  result = qword_1ECA69320;
  if (!qword_1ECA69320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69320);
  }

  return result;
}

uint64_t sub_1D8AFE59C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69737365636F7270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69686374616DLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8AFE6C4()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E4240);
  v1 = __swift_project_value_buffer(v0, qword_1EE0E4240);
  if (qword_1EE0E42D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE0E42D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id VICVisualIntelligenceSaliencyStream.__allocating_init(stream:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___VICVisualIntelligenceSaliencyStream_viSaliencyStream];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id VICVisualIntelligenceSaliencyStream.init(stream:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___VICVisualIntelligenceSaliencyStream_viSaliencyStream];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for VICVisualIntelligenceSaliencyStream();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D8AFE99C()
{
  v1 = (v0 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D8AFEA70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D8AFEAD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void *sub_1D8AFEBE8()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8AFEC40(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VICVisualIntelligenceAnalysisRequestConfig.init()()
{
  v1 = &v0[OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for VICVisualIntelligenceAnalysisRequestConfig();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D8AFEF30()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D8AFEF90(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_request;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D8AFF028;
}

void sub_1D8AFF028(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_1D8AFF0F4()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_pixelBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8AFF14C(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_pixelBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1D8AFF250()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8AFF2A8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1D8AFF304(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VICVisualIntelligenceAnalysisRequest.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_pixelBuffer] = 0;
  *&v0[OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VICVisualIntelligenceAnalysisRequest();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D8AFF56C()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D8AFF620(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D8AFF678(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_1D8AFF738(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1D8AFF794()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8AFF7E0(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D8AFF898(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8AFF954(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

id VICVisualIntelligenceAnalysisResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8AFFB40()
{
  v0 = type metadata accessor for VisualIntelligenceAnalyzer.State(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VisualIntelligenceAnalyzer(0);
  v4 = swift_allocObject();
  type metadata accessor for VisionKitConfigStorage();
  swift_allocObject();
  sub_1D89609D0();
  *(v4 + 16) = v5;
  v6 = (v4 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state);
  sub_1D8B07734(v3);
  *&v3[*(v1 + 28)] = 0;
  *v6 = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370) + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69380);
  bzero(v6 + v7, *(*(v8 - 8) + 64));
  result = sub_1D8B03764(v3, v6 + v7, type metadata accessor for VisualIntelligenceAnalyzer.State);
  off_1EE0E96B8 = v4;
  return result;
}

uint64_t static VICVisualIntelligenceAnalyzer.configStorage.getter()
{
  if (qword_1EE0E96B0 != -1)
  {
    swift_once();
  }
}

void static VICVisualIntelligenceAnalyzer.setAppConfiguration(_:)(_BYTE *a1)
{
  if (qword_1EE0E96B0 != -1)
  {
    swift_once();
  }

  v2 = (off_1EE0E96B8 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state);
  os_unfair_lock_lock((off_1EE0E96B8 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370);
  sub_1D8B017E4(v2 + *(v3 + 28), a1);

  os_unfair_lock_unlock(v2);
}

uint64_t static VICVisualIntelligenceAnalyzer.preheat()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1D8B15EA0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D8891CA0(0, 0, v2, &unk_1D8B3F3E8, v4);
}

uint64_t sub_1D8AFFE80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8AFFF18, 0, 0);
}

uint64_t sub_1D8AFFF18()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8B15EA0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1D8891CA0(0, 0, v1, &unk_1D8B3F618, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D8B00110()
{
  if (qword_1EE0E96B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D8B001DC;
  v2 = *(v0 + 16);

  return sub_1D8B002D8(v2);
}

uint64_t sub_1D8B001DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D8B002D8(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v2[56] = *v1;
  v2[57] = type metadata accessor for LoggingSignposter(0);
  v2[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8B00394, 0, 0);
}

uint64_t sub_1D8B00394()
{
  v76 = v0;
  if (qword_1EE0E62D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 464);
  v2 = __swift_project_value_buffer(*(v0 + 456), qword_1EE0E62E0);
  sub_1D8B037CC(v2, v1, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("VisualIntelligenceAnalyzer.process", 34, 2u, 1, 0, (v0 + 32));
  sub_1D8B036AC(v1, type metadata accessor for LoggingSignposter);
  if (qword_1EE0E4238 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 432);
  v4 = sub_1D8B151E0();
  *(v0 + 472) = __swift_project_value_buffer(v4, qword_1EE0E4240);
  v5 = v3;
  v6 = sub_1D8B151C0();
  v7 = sub_1D8B16230();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 432);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_1D8783000, v6, v7, "request: %@", v9, 0xCu);
    sub_1D87A14E4(v10, &qword_1ECA63128);
    MEMORY[0x1DA721330](v10, -1, -1);
    MEMORY[0x1DA721330](v9, -1, -1);
  }

  v12 = *(v0 + 432);

  v13 = v12;
  v14 = sub_1D8B151C0();
  v15 = sub_1D8B16230();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 432);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v75[0] = v18;
    *v17 = 136315138;
    v19 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
    swift_beginAccess();
    v20 = *(v16 + v19);
    if (v20 && (v21 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized, swift_beginAccess(), (v22 = *(v20 + v21)) != 0))
    {
      v23 = [v22 BOOLValue];
    }

    else
    {
      v23 = 2;
    }

    *(v0 + 536) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66370);
    v24 = sub_1D8B159E0();
    v26 = sub_1D89AC714(v24, v25, v75);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_1D8783000, v14, v15, "request.config?.vluAuthorized: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1DA721330](v18, -1, -1);
    MEMORY[0x1DA721330](v17, -1, -1);
  }

  v27 = *(v0 + 432);
  v28 = sub_1D8B151C0();
  v29 = sub_1D8B16230();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 432);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v75[0] = v32;
    *v31 = 136315138;
    v33 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
    swift_beginAccess();
    v34 = *(v30 + v33);
    if (v34 && (v35 = (v34 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier), swift_beginAccess(), (v36 = v35[1]) != 0))
    {
      v37 = *v35;
    }

    else
    {

      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    v38 = sub_1D89AC714(v37, v36, v75);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_1D8783000, v28, v29, "request.config?.environmentBundleIdentifier: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1DA721330](v32, -1, -1);
    MEMORY[0x1DA721330](v31, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    RequestPixels = viCore_getRequestPixels(Strong);
    *(v0 + 488) = RequestPixels;
    if (RequestPixels)
    {
      v41 = *(v0 + 432);
      v42 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
      swift_beginAccess();
      v43 = *(v41 + v42);
      if (v43)
      {
        v44 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized;
        swift_beginAccess();
        v45 = *(v43 + v44);
        if (v45)
        {
          v46 = [v45 BOOLValue];
          v75[3] = MEMORY[0x1E69E6370];
          LOBYTE(v75[0]) = v46;
          VisionKitConfigStorage.subscript.setter(v75, 0xD00000000000001ELL, 0x80000001D8B40140);
        }

        v47 = *(v41 + v42);
        if (v47)
        {
          v48 = (v47 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
          swift_beginAccess();
          v49 = *v48;
          v43 = v48[1];
        }

        else
        {
          v49 = 0;
          v43 = 0;
        }
      }

      else
      {
        v49 = 0;
      }

      v71 = *(v0 + 440);
      v72 = (v71 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state);
      os_unfair_lock_lock((v71 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state));
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370);
      sub_1D8B01B88(v72 + *(v73 + 28), v71, v49, v43, v75);

      os_unfair_lock_unlock(v72);
      v74 = v75[0];
      *(v0 + 496) = v75[0];

      return MEMORY[0x1EEE6DFA0](sub_1D8B00C70, v74, 0);
    }

    v59 = sub_1D8B151C0();
    v60 = sub_1D8B16210();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1D8783000, v59, v60, "Error Creating Vi Analysis, nil request pixel buffer", v61, 2u);
      MEMORY[0x1DA721330](v61, -1, -1);
    }

    v62 = *(v0 + 432);

    v63 = type metadata accessor for VICVisualIntelligenceAnalysisResult();
    v64 = objc_allocWithZone(v63);
    *&v64[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer] = 0;
    v65 = &v64[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream];
    *v65 = 0;
    v65[1] = 0;
    *&v64[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request] = v62;
    swift_beginAccess();
    *v65 = 0;
    v65[1] = 0;
    v64[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_success] = 0;
    *(v0 + 376) = v64;
    *(v0 + 384) = v63;
    v66 = v62;
    v58 = objc_msgSendSuper2((v0 + 376), sel_init);
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = sub_1D8B151C0();
    v51 = sub_1D8B16210();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1D8783000, v50, v51, "Error Creating Vi Analysis, no VIC analysis request", v52, 2u);
      MEMORY[0x1DA721330](v52, -1, -1);
    }

    v53 = *(v0 + 432);

    v54 = type metadata accessor for VICVisualIntelligenceAnalysisResult();
    v55 = objc_allocWithZone(v54);
    *&v55[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer] = 0;
    v56 = &v55[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream];
    *v56 = 0;
    v56[1] = 0;
    *&v55[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request] = v53;
    swift_beginAccess();
    *v56 = 0;
    v56[1] = 0;
    v55[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_success] = 0;
    *(v0 + 360) = v55;
    *(v0 + 368) = v54;
    v57 = v53;
    v58 = objc_msgSendSuper2((v0 + 360), sel_init);
  }

  v67 = *(v0 + 56);
  v68 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v67);
  (*(v68 + 8))(v67, v68);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  v69 = *(v0 + 8);

  return v69(v58);
}

uint64_t sub_1D8B00C70()
{
  v1 = sub_1D88925D4();
  v3 = v2;
  v0[63] = v1;
  v0[64] = v2;
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = sub_1D8B00D34;
  v6 = v0[61];

  return SaliencyStream.refine(pixelBuffer:)(v6, ObjectType, v3);
}

uint64_t sub_1D8B00D34()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1D8B00FE4;
  }

  else
  {
    v2 = sub_1D8B00E48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8B00E48()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v15 = *(v0 + 488);
  v3 = *(v0 + 432);
  v4 = type metadata accessor for VICVisualIntelligenceAnalysisResult();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer] = 0;
  v6 = &v5[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request] = v3;
  swift_beginAccess();
  *v6 = v1;
  v6[1] = v2;
  v5[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_success] = 1;
  *(v0 + 392) = v5;
  *(v0 + 400) = v4;
  v7 = v3;
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2((v0 + 392), sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v9);
  (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v11 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer;
  swift_beginAccess();
  v12 = *&v8[v11];
  *&v8[v11] = v15;

  v13 = *(v0 + 8);

  return v13(v8);
}

uint64_t sub_1D8B00FE4()
{
  v35 = v0;
  v1 = *(v0 + 488);
  swift_unknownObjectRetain();
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 528);
    v6 = *(v0 + 504);
    v7 = *(v0 + 512);
    v8 = *(v0 + 488);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315394;
    *(v0 + 408) = v6;
    *(v0 + 416) = v7;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66550);
    v11 = sub_1D8B159E0();
    v13 = sub_1D89AC714(v11, v12, &v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 424) = v8;
    type metadata accessor for CVBuffer(0);
    v14 = v8;
    v15 = sub_1D8B159E0();
    v17 = sub_1D89AC714(v15, v16, &v34);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D8783000, v3, v4, "Error refining stream: %s with pixelBuffer: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v10, -1, -1);
    MEMORY[0x1DA721330](v9, -1, -1);
    v18 = v5;
  }

  else
  {
    v18 = *(v0 + 528);
  }

  v19 = *(v0 + 504);
  v20 = *(v0 + 512);
  v33 = *(v0 + 488);
  v21 = *(v0 + 432);
  v22 = type metadata accessor for VICVisualIntelligenceAnalysisResult();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer] = 0;
  v24 = &v23[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream];
  *v24 = 0;
  v24[1] = 0;
  *&v23[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request] = v21;
  swift_beginAccess();
  *v24 = v19;
  v24[1] = v20;
  v23[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_success] = 1;
  *(v0 + 392) = v23;
  *(v0 + 400) = v22;
  v25 = v21;
  swift_unknownObjectRetain();
  v26 = objc_msgSendSuper2((v0 + 392), sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v27 = *(v0 + 56);
  v28 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v27);
  (*(v28 + 8))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v29 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer;
  swift_beginAccess();
  v30 = *&v26[v29];
  *&v26[v29] = v33;

  v31 = *(v0 + 8);

  return v31(v26);
}

uint64_t sub_1D8B01488(void *a1, void *aBlock)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = _Block_copy(aBlock);
  v4 = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8B01504, 0, 0);
}

uint64_t sub_1D8B01504()
{
  if (qword_1EE0E96B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D8B015D0;
  v2 = *(v0 + 16);

  return sub_1D8B002D8(v2);
}

uint64_t sub_1D8B015D0(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

id VICVisualIntelligenceAnalyzer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VICVisualIntelligenceAnalyzer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D8B017A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D8B017E4(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for StillAppConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B037CC(a1, v6, type metadata accessor for StillAppConfiguration);
  v7 = _s22VisualIntelligenceCore21StillAppConfigurationV2eeoiySbAC_ACtFZ_0(v6, a2);
  result = sub_1D8B036AC(v6, type metadata accessor for StillAppConfiguration);
  if ((v7 & 1) == 0)
  {
    if (_s22VisualIntelligenceCore13BundleManagerC13ConfigurationV2eeoiySbAE_AEtFZ_0(a1 + *(v4 + 20), &a2[*(v4 + 20)]) & 1) != 0 && (v9 = a1 + *(v4 + 24), v10 = *(v9 + 48), v26[2] = *(v9 + 32), v26[3] = v10, v27 = *(v9 + 64), v11 = *(v9 + 16), v26[0] = *v9, v26[1] = v11, v12 = &a2[*(v4 + 24)], v13 = *(v12 + 3), v24[2] = *(v12 + 2), v24[3] = v13, v25 = v12[64], v14 = *(v12 + 1), v24[0] = *v12, v24[1] = v14, (_s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(v26, v24)))
    {
      if (qword_1EE0E4238 != -1)
      {
        swift_once();
      }

      v15 = sub_1D8B151E0();
      __swift_project_value_buffer(v15, qword_1EE0E4240);
      v16 = sub_1D8B151C0();
      v17 = sub_1D8B16230();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1D8783000, v16, v17, "app configuration change does not require stream restart", v18, 2u);
        MEMORY[0x1DA721330](v18, -1, -1);
      }
    }

    else
    {
      if (qword_1EE0E4238 != -1)
      {
        swift_once();
      }

      v19 = sub_1D8B151E0();
      __swift_project_value_buffer(v19, qword_1EE0E4240);
      v20 = sub_1D8B151C0();
      v21 = sub_1D8B16230();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D8783000, v20, v21, "app configuration change requires stream restart", v22, 2u);
        MEMORY[0x1DA721330](v22, -1, -1);
      }

      v23 = *(type metadata accessor for VisualIntelligenceAnalyzer.State(0) + 20);

      *(a1 + v23) = 0;
    }

    return sub_1D8B03834(a2, a1);
  }

  return result;
}

uint64_t sub_1D8B01AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D8AFFE80();
}

uint64_t sub_1D8B01B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v66 = a5;
  v67 = a1;
  v8 = type metadata accessor for SaliencySession.Configuration.HostingProcess(0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SaliencySession.ScreenshotsConfiguration(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v59 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = type metadata accessor for SaliencySession.Configuration(0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v64 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v59 - v23);
  v25 = *(a2 + 16);
  swift_storeEnumTagMultiPayload();
  sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration.HostingProcess);
  v26 = v67;
  sub_1D8B037CC(v67, v24 + *(v10 + 20), type metadata accessor for StillAppConfiguration);
  *v24 = v25;
  v24[1] = &protocol witness table for VisionKitConfigStorage;
  v60 = a3;
  v61 = v10;
  v27 = (v24 + *(v10 + 24));
  *v27 = a3;
  v27[1] = a4;
  swift_storeEnumTagMultiPayload();
  sub_1D8B037CC(v24, v22, type metadata accessor for SaliencySession.Configuration);
  type metadata accessor for SaliencySession(0);
  v28 = swift_allocObject();
  v62 = a4;

  swift_defaultActor_initialize();
  sub_1D8B037CC(v22, v28 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, type metadata accessor for SaliencySession.Configuration);
  v29 = sub_1D8B15EA0();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_1D8891CA0(0, 0, v16, &unk_1D8B3F610, v30);

  sub_1D8B036AC(v22, type metadata accessor for SaliencySession.Configuration);
  v31 = *(type metadata accessor for VisualIntelligenceAnalyzer.State(0) + 20);
  v32 = *(v26 + v31);
  if (!v32)
  {
    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    *(v26 + v31) = v28;
    *v66 = v28;
  }

  v33 = v66;
  v34 = v64;
  sub_1D8B037CC(v32 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, v64, type metadata accessor for SaliencySession.Configuration);
  v35 = v34;
  v36 = v65;
  sub_1D8B03764(v35, v65, type metadata accessor for SaliencySession.Configuration.HostingProcess);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1D8B036AC(v36, type metadata accessor for SaliencySession.Configuration.HostingProcess);
    result = sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    *v33 = v32;
    return result;
  }

  v38 = v63;
  sub_1D8B03764(v36, v63, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
  v39 = (v38 + *(v61 + 24));
  v40 = v39[1];
  if (!v40)
  {
    if (v62)
    {
      goto LABEL_13;
    }

LABEL_20:

    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    result = sub_1D8B036AC(v63, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    *v33 = v32;
    return result;
  }

  v41 = *v39;
  if (!v62)
  {
    if (sub_1D89BB128(v41, v40))
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (v41 == v60 && v40 == v62 || (sub_1D8B16BA0() & 1) != 0)
  {
    goto LABEL_20;
  }

  if (sub_1D89BB128(v41, v40))
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((sub_1D89BB128(v60, v62) & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v42 = qword_1EE0E4238;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = sub_1D8B151E0();
  __swift_project_value_buffer(v43, qword_1EE0E4240);
  v44 = v59;
  sub_1D8B037CC(v63, v59, type metadata accessor for SaliencySession.ScreenshotsConfiguration);

  v45 = sub_1D8B151C0();
  v46 = sub_1D8B16230();
  v47 = v45;

  LODWORD(v65) = v46;
  if (os_log_type_enabled(v45, v46))
  {
    v48 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v68 = v64;
    *v48 = 136315394;
    v49 = (v44 + *(v61 + 24));
    v50 = v44;
    if (v49[1])
    {
      v51 = *v49;
      v52 = v49[1];
    }

    else
    {
      v52 = 0xE300000000000000;
      v51 = 7104878;
    }

    sub_1D8B036AC(v50, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    v54 = sub_1D89AC714(v51, v52, &v68);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2080;
    if (v62)
    {
      v55 = v60;
    }

    else
    {
      v55 = 7104878;
    }

    if (v62)
    {
      v56 = v62;
    }

    else
    {
      v56 = 0xE300000000000000;
    }

    v57 = sub_1D89AC714(v55, v56, &v68);

    *(v48 + 14) = v57;
    _os_log_impl(&dword_1D8783000, v47, v65, "environment bundle identifier changed from %s to %s; restarting session", v48, 0x16u);
    v58 = v64;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v58, -1, -1);
    MEMORY[0x1DA721330](v48, -1, -1);

    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    v53 = v67;
  }

  else
  {

    sub_1D8B036AC(v44, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    v33 = v66;
    v53 = v67;
  }

  sub_1D8B036AC(v63, type metadata accessor for SaliencySession.ScreenshotsConfiguration);

  *(v53 + v31) = v28;
  *v33 = v28;
  return result;
}

uint64_t VisualIntelligenceAnalyzer.deinit()
{

  v1 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370);
  sub_1D8B036AC(v1 + *(v2 + 28), type metadata accessor for VisualIntelligenceAnalyzer.State);
  return v0;
}

uint64_t VisualIntelligenceAnalyzer.__deallocating_deinit()
{

  v1 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370);
  sub_1D8B036AC(v1 + *(v2 + 28), type metadata accessor for VisualIntelligenceAnalyzer.State);

  return swift_deallocClassInstance();
}

id keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t dispatch thunk of VICVisualIntelligenceAnalyzer.processRequest(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D89424A4;

  return v7(a1);
}

void sub_1D8B02C18()
{
  sub_1D8B02DDC(319, &qword_1EE0E9868, type metadata accessor for VisualIntelligenceAnalyzer.State, MEMORY[0x1E69E8300]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D8B02D28()
{
  type metadata accessor for StillAppConfiguration();
  if (v0 <= 0x3F)
  {
    sub_1D8B02DDC(319, qword_1EE0E6EE8, type metadata accessor for SaliencySession, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8B02DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D8B02E40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D8864FBC;

  return sub_1D8B01488(v2, v3);
}

uint64_t sub_1D8B02EF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D886553C;

  return v6();
}

uint64_t sub_1D8B02FDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D886553C;

  return sub_1D8B02EF4(v2, v3, v4);
}

uint64_t sub_1D8B0309C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D8864FBC;

  return v7();
}

uint64_t sub_1D8B03184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D8B0309C(a1, v4, v5, v6);
}

uint64_t sub_1D8B03250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1D889342C(a3, v23 - v10);
  v12 = sub_1D8B15EA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D87A14E4(v11, &unk_1ECA675E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D8B15E90();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1D8B15E00();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1D8B15A10() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1D87A14E4(a3, &unk_1ECA675E0);

    return v21;
  }

LABEL_8:
  sub_1D87A14E4(a3, &unk_1ECA675E0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D8B0353C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88B7B50(a1, v4);
}

uint64_t sub_1D8B035F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D88B7B50(a1, v4);
}

uint64_t sub_1D8B036AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t viCore_getRequestPixels(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 performSelector:sel_viPixelBufferRef];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1D8B03764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8B037CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8B03834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StillAppConfiguration();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t RellenoConfiguration.init(builtInActionsOnly:bypassConfigurationValidation:crystalEraModels:enabledClassificationTypes:fixedHeading:fixedLocation:heuristicEvents:visualLookUpMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char *a12)
{
  v12 = *a12;
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6 & 1;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10 & 1;
  *(a9 + 49) = a11;
  *(a9 + 50) = v12;
  return result;
}

uint64_t RellenoConfiguration.saliencySessionConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v8[0] = *(v1 + 32);
  *(v8 + 15) = *(v1 + 47);
  type metadata accessor for SaliencySession.Configuration.HostingProcess(0);
  swift_storeEnumTagMultiPayload();
  sub_1D8B07610(a1, type metadata accessor for SaliencySession.Configuration.HostingProcess);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 47) = *(v1 + 47);
  swift_storeEnumTagMultiPayload();
  return sub_1D8B039EC(v7, v6);
}

uint64_t RellenoConfiguration.configStorage.getter()
{
  v1 = *(v0 + 50);
  type metadata accessor for DictionaryConfigStorage();
  v2 = swift_allocObject();
  v3 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;
  v4 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E6370];
  v9[0] = 1;
  os_unfair_lock_lock((v2 + 16));
  sub_1D87A0E38(v9, v8, &qword_1ECA650C0);
  sub_1D895E64C(v8, 0xD000000000000018, 0x80000001D8B40160);
  os_unfair_lock_unlock((v2 + 16));
  sub_1D87A14E4(v9, &qword_1ECA650C0);
  if (v1 == 2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    v5 = v6 ^ 1;
  }

  v10 = v4;
  v9[0] = v5 & 1;
  os_unfair_lock_lock((v2 + 16));
  sub_1D87A0E38(v9, v8, &qword_1ECA650C0);
  sub_1D895E64C(v8, 0xD00000000000001ELL, 0x80000001D8B40140);
  os_unfair_lock_unlock((v2 + 16));
  sub_1D87A14E4(v9, &qword_1ECA650C0);
  return v2;
}

uint64_t SaliencyStreamConfiguration.apply(_:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24[-1] - v4;
  v6 = a1[1];
  v25 = *a1;
  v26 = v6;
  *v27 = a1[2];
  *&v27[15] = *(a1 + 47);
  if (BYTE2(v25))
  {
    v7 = sub_1D893DF5C(&unk_1F5426928);
    v8 = sub_1D8B06A6C(v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v8;
    v10 = v1;
    sub_1D8B052EC(1084227584, 4, isUniquelyReferenced_nonNull_native);
    v11 = v24[0];
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v11;
    sub_1D8B052EC(0x40000000, 3, v12);
    v1 = v10;
    v13 = v24[0];

    *(v1 + 16) = v13;
    *(v1 + 24) = 1;
    *(v1 + 32) = 1;
    *(v1 + 40) = 2;
  }

  v14 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v15 = *(type metadata accessor for SaliencyStreamConfiguration() + 28);
    sub_1D8B039EC(&v25, v24);

    *(v1 + v15) = v14;
  }

  if (v27[17])
  {
    *(v1 + *(type metadata accessor for SaliencyStreamConfiguration() + 28) + 12) = 1;
  }

  v16 = v27[18];
  v17 = type metadata accessor for SaliencyStreamConfiguration();
  v18 = v1 + *(v17 + 28);
  result = type metadata accessor for BundleManager.Configuration(0);
  *(v18 + *(result + 44)) = v16;
  if (v25)
  {
    *(v1 + *(v17 + 36) + 8) = v25;
  }

  if ((BYTE8(v26) & 1) == 0 || (v27[16] & 1) == 0)
  {
    v20 = sub_1D8B15EA0();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v22 = v26;
    *(v21 + 32) = v25;
    *(v21 + 48) = v22;
    *(v21 + 64) = *v27;
    *(v21 + 79) = *&v27[15];
    sub_1D8B039EC(&v25, v24);
    sub_1D8B070E8(0, 0, v5, 0, 0, &unk_1D8B3F638, v21);

    result = sub_1D87A14E4(v5, &unk_1ECA675E0);
  }

  if ((BYTE1(v25) & 1) == 0)
  {
    return sub_1D8B04908();
  }

  return result;
}

uint64_t sub_1D8B03F0C()
{
  *(v0 + 32) = sub_1D8B15E80();
  *(v0 + 40) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B03FA4, v2, v1);
}

uint64_t sub_1D8B03FA4()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D8B0403C, 0, 0);
}

uint64_t sub_1D8B0403C()
{
  *(v0 + 48) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B040C8, v2, v1);
}

uint64_t sub_1D8B040C8()
{

  *(v0 + 56) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D8B0413C, 0, 0);
}

uint64_t sub_1D8B0413C()
{
  *(v0 + 64) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B041C8, v2, v1);
}

uint64_t sub_1D8B041C8()
{

  sub_1D89B1AE4();

  return MEMORY[0x1EEE6DFA0](sub_1D8B04234, 0, 0);
}

uint64_t sub_1D8B04234()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    if (*(v1 + 48))
    {
      v2 = v0[1];

      return v2();
    }

    v0[12] = *(v1 + 40);
    v0[13] = *(v1 + 32);
    v0[14] = sub_1D8B15E70();
    v4 = sub_1D8B15E00();
    v6 = v8;
    v7 = sub_1D8B04598;
  }

  else
  {
    v0[9] = *(v1 + 16);
    v0[10] = sub_1D8B15E70();
    v4 = sub_1D8B15E00();
    v6 = v5;
    v7 = sub_1D8B04358;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1D8B04358()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8B043C0, 0, 0);
}

uint64_t sub_1D8B043C0()
{
  *(v0 + 88) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B0444C, v2, v1);
}

uint64_t sub_1D8B0444C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8B044B4, 0, 0);
}

uint64_t sub_1D8B044B4()
{
  sub_1D89B42F0(*(v0 + 72));
  v1 = *(v0 + 24);
  if (*(v1 + 48))
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 96) = *(v1 + 40);
    *(v0 + 104) = *(v1 + 32);
    *(v0 + 112) = sub_1D8B15E70();
    v5 = sub_1D8B15E00();

    return MEMORY[0x1EEE6DFA0](sub_1D8B04598, v5, v4);
  }
}

uint64_t sub_1D8B04598()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8B04600, 0, 0);
}

uint64_t sub_1D8B04600()
{
  *(v0 + 120) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B0468C, v2, v1);
}

uint64_t sub_1D8B0468C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8B046F4, 0, 0);
}

uint64_t sub_1D8B046F4()
{
  *(v0 + 128) = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v0 + 104) longitude:*(v0 + 96)];
  *(v0 + 136) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B047B0, v2, v1);
}

uint64_t sub_1D8B047B0()
{
  v1 = v0[16];
  v2 = v0[7];

  v3 = v1;
  sub_1D89AFB38(v1);
  swift_getKeyPath();
  v0[2] = v2;
  sub_1D8B075B8();
  sub_1D8B13520();

  v0[2] = v2;
  swift_getKeyPath();
  sub_1D8B13540();

  v5 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[16];
    v9 = v0[7];
    *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count) = v7;
    v0[2] = v9;
    swift_getKeyPath();
    sub_1D8B13530();

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_1D8B04908()
{
  v1 = type metadata accessor for BundleClassification.ClassificationType(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = (v0 + *(type metadata accessor for SaliencyStreamConfiguration() + 28));
  v9 = *v8;
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  v11 = *(v9 + 16);
  do
  {
    if (v11 == v10)
    {
      return sub_1D8B07610(v7, type metadata accessor for BundleClassification.ClassificationType);
    }

    v12 = v10 + 1;
    v13 = *(v2 + 72);
    v14 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v14 + v13 * v10, v7);
    v10 = v12;
  }

  while ((v15 & 1) == 0);
  sub_1D8B07610(v7, type metadata accessor for BundleClassification.ClassificationType);
  v16 = *(v8 + 12);
  *v5 = 0x7974706D65;
  v5[1] = 0xE500000000000000;
  v17 = *MEMORY[0x1E69C9C08];
  v18 = sub_1D8B145A0();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  swift_storeEnumTagMultiPayload();
  v19 = *(v9 + 16) + 1;
  do
  {
    if (!--v19)
    {
      break;
    }

    v7 = (v14 + v13);
    v20 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v14, v5);
    v14 += v13;
  }

  while ((v20 & 1) == 0);
  result = sub_1D8B07610(v5, type metadata accessor for BundleClassification.ClassificationType);
  if (((v16 ^ (v19 != 0)) & 1) == 0)
  {
    sub_1D8B168C0();
    __break(1u);
    return sub_1D8B07610(v7, type metadata accessor for BundleClassification.ClassificationType);
  }

  return result;
}

unint64_t sub_1D8B04B90(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D87EFF4C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8967BA4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D896E2DC(v14, a3 & 1);
    v9 = sub_1D87EFF4C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1D89783D8(v9, a2, a1, v19);
  }
}

unint64_t sub_1D8B04CB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D87EFF94(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D896822C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D896FAE8(v14, a3 & 1);
    v9 = sub_1D87EFF94(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8978448(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8B04DD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8968A70();
      goto LABEL_7;
    }

    sub_1D8970838(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D897848C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *sub_1D8B04FE8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D87EF838(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8968CE0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D8970C98(v16, a4 & 1);
    v11 = sub_1D87EF838(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D8943B68(a1, v22);
  }

  else
  {
    sub_1D89784A0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D8B05138(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D87F0134(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
      return sub_1D87B6EFC(a1, v20 + *(*(v21 - 8) + 72) * v13, &qword_1ECA65B78);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_1D8968E84();
    goto LABEL_7;
  }

  sub_1D8970F50(v16, a3 & 1);
  v23 = sub_1D87F0134(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D8B07550(a2, v10, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  return sub_1D897850C(v13, v10, a1, v19);
}

uint64_t sub_1D8B052EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D881F7DC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1D8969194();
      result = v17;
      goto LABEL_8;
    }

    sub_1D89715C0(v14, a3 & 1);
    result = sub_1D881F7DC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * result;
    *v20 = a1;
    *(v20 + 4) = BYTE4(a1);
  }

  else
  {

    return sub_1D8978600(result, a2, a1 & 0xFFFFFFFFFFLL, v19);
  }

  return result;
}

uint64_t sub_1D8B05404(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D881F7DC(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_1D89692F4();
      result = v17;
      goto LABEL_8;
    }

    sub_1D8971854(v14, a2 & 1);
    result = sub_1D881F7DC(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return sub_1D8978650(result, a1, v19, a3);
  }

  return result;
}

uint64_t sub_1D8B05518(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8969440();
      goto LABEL_7;
    }

    sub_1D8971AD8(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D8978694(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1D8B05728(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8969774();
      goto LABEL_7;
    }

    sub_1D89725A8(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D89786A8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1D8B05938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8969798();
      goto LABEL_7;
    }

    sub_1D89725CC(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D89786BC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1D8B05B48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D89697BC();
      goto LABEL_7;
    }

    sub_1D89725F0(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D89786D0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1D8B05D58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D896AD54();
      goto LABEL_7;
    }

    sub_1D89745B4(v17, a3 & 1);
    v22 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D89789C0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1D8B05F64(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D87EF6AC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1D896B104();
      goto LABEL_7;
    }

    sub_1D8974BAC(v16, a3 & 1);
    v22 = sub_1D87EF6AC(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8B07550(a2, v10, type metadata accessor for BundleClassification.ClassificationType);
      return sub_1D8978A78(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 40 * v13;
  __swift_destroy_boxed_opaque_existential_1(v20);

  return sub_1D8788F40(a1, v20);
}

uint64_t sub_1D8B06158(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v7 = v6;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1D87EF764(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v29();
      goto LABEL_9;
    }

    v30();
    v23 = sub_1D87EF764(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    return v31(v17, v14, v25, v26);
  }
}

uint64_t sub_1D8B06348(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D87F05B0(a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a2 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
      return sub_1D8B076CC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for CVDebugArtifactManager.BoresightState);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a2 & 1) == 0)
  {
    sub_1D896BB64();
    goto LABEL_7;
  }

  sub_1D8975D80(v13, a2 & 1);
  v20 = sub_1D87F05B0(a3);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D8978B38(v10, a1, v16, a3);
}

unint64_t sub_1D8B06498(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D881F7DC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D896BD9C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D89760D0(v14, a3 & 1);
    v9 = sub_1D881F7DC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 88 * v9;

    return sub_1D8B07670(a1, v20);
  }

  else
  {

    return sub_1D8978BE0(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8B065BC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D881F7DC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D896BF5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D89763FC(v14, a3 & 1);
    v9 = sub_1D881F7DC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1D8788F40(a1, v20);
  }

  else
  {

    return sub_1D8978C48(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8B066EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D881F7DC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
      return sub_1D87B6EFC(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_1ECA65B98);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D896CCA0();
    goto LABEL_7;
  }

  sub_1D8977D9C(v13, a3 & 1);
  v20 = sub_1D881F7DC(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D8978DA0(v10, a2, a1, v16);
}

uint64_t sub_1D8B06848(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D87F02B0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for TrackManager.TrackedProcessorState(0);
      return sub_1D8B076CC(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_1D896C62C();
    goto LABEL_7;
  }

  sub_1D897724C(v16, a3 & 1);
  v23 = sub_1D87F02B0(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D8B07550(a2, v10, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  return sub_1D8978CB4(v13, v10, a1, v19);
}

unint64_t *sub_1D8B069F4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8B06BCC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D8B06A6C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8B06BCC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D8B069F4(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D8B06BCC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + v11) == 5)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D8AF3FC0(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D8AF3FC0(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8B06CB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D8B03EEC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D8B06D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1D8B15E00();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D87A0E38(a3, v13, &unk_1ECA675E0);
  v18 = sub_1D8B15EA0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1D87A14E4(v13, &unk_1ECA675E0);
  }

  else
  {
    sub_1D8B15E90();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F0);
    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_18:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_13;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_18;
  }

  v20 = sub_1D8B15A10() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F0);
  v22 = (v16 | v14);
  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
  }

  if (a4 != 1)
  {
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_13:
    swift_task_immediate();
  }

  return v23;
}

uint64_t sub_1D8B070E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1D8B15E00();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D87A0E38(a3, v13, &unk_1ECA675E0);
  v18 = sub_1D8B15EA0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1D87A14E4(v13, &unk_1ECA675E0);
  }

  else
  {
    sub_1D8B15E90();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = sub_1D8B15A10() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8B0747C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 51))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8B074D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8B07550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8B075B8()
{
  result = qword_1ECA66830;
  if (!qword_1ECA66830)
  {
    type metadata accessor for LocationsHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66830);
  }

  return result;
}

uint64_t sub_1D8B07610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8B076CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_1D8B07734@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StillAppConfiguration();
  *a1 = 0;
  *(a1 + 4) = 0;
  v3 = a1 + *(v2 + 20);
  *v3 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v3 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(v3 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v4 = type metadata accessor for InternalSettings();
  v5 = sub_1D8B15940();
  LODWORD(v4) = [v4 BOOLForKey:v5 defaultValue:0];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  *(v3 + 13) = v6;
  v7 = type metadata accessor for BundleManager.Configuration(0);
  v8 = v7[8];
  v9 = *MEMORY[0x1E69C9A80];
  v10 = sub_1D8B15340();
  (*(*(v10 - 8) + 104))(v3 + v8, v9, v10);
  *(v3 + v7[9]) = MEMORY[0x1E69E7CD0];
  v11 = v7[10];
  v12 = *MEMORY[0x1E69DFC20];
  v13 = sub_1D8B150F0();
  (*(*(v13 - 8) + 104))(v3 + v11, v12, v13);
  *(v3 + v7[11]) = 2;
  v14 = a1 + *(v2 + 24);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v14 + 24) = _Q0;
  *(v14 + 40) = 16908290;
  *&result = 10;
  *(v14 + 48) = xmmword_1D8B190E0;
  *(v14 + 64) = 1;
  return result;
}

uint64_t static StillAppConfiguration.changeRequiresStreamRestart(old:new:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StillAppConfiguration();
  if (_s22VisualIntelligenceCore13BundleManagerC13ConfigurationV2eeoiySbAE_AEtFZ_0(a1 + *(v4 + 20), a2 + *(v4 + 20)))
  {
    v5 = a1 + *(v4 + 24);
    v6 = *(v5 + 48);
    v15[2] = *(v5 + 32);
    v15[3] = v6;
    v16 = *(v5 + 64);
    v7 = *(v5 + 16);
    v15[0] = *v5;
    v15[1] = v7;
    v8 = a2 + *(v4 + 24);
    v9 = *(v8 + 48);
    v13[2] = *(v8 + 32);
    v13[3] = v9;
    v14 = *(v8 + 64);
    v10 = *(v8 + 16);
    v13[0] = *v8;
    v13[1] = v10;
    v11 = _s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(v15, v13) ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t type metadata accessor for StillAppConfiguration()
{
  result = qword_1EE0E5238;
  if (!qword_1EE0E5238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D8B07A24()
{
  v0 = type metadata accessor for StillAppConfiguration();
  __swift_allocate_value_buffer(v0, qword_1EE0E5250);
  v1 = __swift_project_value_buffer(v0, qword_1EE0E5250);
  return sub_1D8B07734(v1);
}

uint64_t static StillAppConfiguration.factorySettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE0E5248 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StillAppConfiguration();
  v3 = __swift_project_value_buffer(v2, qword_1EE0E5250);
  return sub_1D8B08728(v3, a1, type metadata accessor for StillAppConfiguration);
}

void StillAppConfiguration.annotationViewConfiguration.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

_BYTE *StillAppConfiguration.annotationViewConfiguration.setter(_BYTE *result)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *v1 = *result;
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  return result;
}

uint64_t StillAppConfiguration.bundleManagerConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StillAppConfiguration() + 20);

  return sub_1D88C7CB8(a1, v3);
}

__n128 StillAppConfiguration.bundleSelectorConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StillAppConfiguration() + 24);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 StillAppConfiguration.bundleSelectorConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StillAppConfiguration() + 24);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

unint64_t sub_1D8B07D1C()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1D8B07D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8B08AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8B07D98(uint64_t a1)
{
  v2 = sub_1D8B08790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8B07DD4(uint64_t a1)
{
  v2 = sub_1D8B08790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StillAppConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69388);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B08790();
  sub_1D8B16DD0();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  LOBYTE(v19) = *v3;
  BYTE1(v19) = v9;
  BYTE2(v19) = v10;
  BYTE3(v19) = v11;
  BYTE4(v19) = v12;
  v24 = 0;
  sub_1D8799DCC();
  sub_1D8B16AE0();
  if (!v2)
  {
    v13 = type metadata accessor for StillAppConfiguration();
    v24 = 1;
    type metadata accessor for BundleManager.Configuration(0);
    sub_1D8B088EC(&qword_1ECA64A90, type metadata accessor for BundleManager.Configuration);
    sub_1D8B16AE0();
    v14 = &v3[*(v13 + 24)];
    v15 = *(v14 + 3);
    v21 = *(v14 + 2);
    v22 = v15;
    v23 = v14[64];
    v16 = *(v14 + 1);
    v19 = *v14;
    v20 = v16;
    v18[15] = 2;
    sub_1D88C924C();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StillAppConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69398);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for StillAppConfiguration();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[4] = 0;
  *v11 = 0;
  v12 = &v11[*(v9 + 20)];
  *v12 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v12 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(v12 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v13 = type metadata accessor for InternalSettings();
  v14 = sub_1D8B15940();
  LODWORD(v13) = [v13 BOOLForKey:v14 defaultValue:0];

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *(v12 + 13) = v15;
  v16 = v3[8];
  v17 = *MEMORY[0x1E69C9A80];
  v18 = sub_1D8B15340();
  (*(*(v18 - 8) + 104))(v12 + v16, v17, v18);
  *(v12 + v3[9]) = MEMORY[0x1E69E7CD0];
  v19 = v3[10];
  v20 = *MEMORY[0x1E69DFC20];
  v21 = sub_1D8B150F0();
  (*(*(v21 - 8) + 104))(v12 + v19, v20, v21);
  *(v12 + v3[11]) = 2;
  v22 = &v11[*(v8 + 24)];
  *v22 = 0;
  *(v22 + 1) = *v50;
  *(v22 + 1) = *&v50[3];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v22 + 24) = _Q0;
  *(v22 + 10) = 16908290;
  *(v22 + 3) = xmmword_1D8B190E0;
  v22[64] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B08790();
  v28 = v43;
  sub_1D8B16DB0();
  if (!v28)
  {
    v49 = 0;
    sub_1D8799D78();
    v29 = v7;
    v30 = v42;
    sub_1D8B16A10();
    v31 = BYTE1(v44);
    v32 = BYTE2(v44);
    v33 = BYTE3(v44);
    v34 = BYTE4(v44);
    *v11 = v44;
    v11[1] = v31;
    v11[2] = v32;
    v11[3] = v33;
    v11[4] = v34;
    LOBYTE(v44) = 1;
    sub_1D8B088EC(&qword_1ECA64AB8, type metadata accessor for BundleManager.Configuration);
    v35 = v40;
    sub_1D8B16A10();
    sub_1D88C7CB8(v35, v12);
    v49 = 2;
    sub_1D88C93E0();
    sub_1D8B16A10();
    (*(v41 + 8))(v29, v30);
    v37 = v47;
    *(v22 + 2) = v46;
    *(v22 + 3) = v37;
    v22[64] = v48;
    v38 = v45;
    *v22 = v44;
    *(v22 + 1) = v38;
    sub_1D8B08728(v11, v39, type metadata accessor for StillAppConfiguration);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8B087E4(v11);
}

uint64_t sub_1D8B08564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EE0E5248 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = __swift_project_value_buffer(a1, qword_1EE0E5250);
  return sub_1D8B08728(v3, a2, type metadata accessor for StillAppConfiguration);
}

uint64_t _s22VisualIntelligenceCore21StillAppConfigurationV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  LOBYTE(v23[0]) = *a1;
  BYTE1(v23[0]) = v4;
  BYTE2(v23[0]) = v5;
  BYTE3(v23[0]) = v6;
  BYTE4(v23[0]) = v7;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  LOBYTE(v21[0]) = *a2;
  BYTE1(v21[0]) = v8;
  BYTE2(v21[0]) = v9;
  BYTE3(v21[0]) = v10;
  BYTE4(v21[0]) = v11;
  if (_s22VisualIntelligenceCore27AnnotationViewConfigurationV2eeoiySbAC_ACtFZ_0(v23, v21) && (v12 = type metadata accessor for StillAppConfiguration(), (static BundleManager.Configuration.== infix(_:_:)(&a1[*(v12 + 20)], &a2[*(v12 + 20)]) & 1) != 0))
  {
    v13 = &a1[*(v12 + 24)];
    v14 = *(v13 + 3);
    v23[2] = *(v13 + 2);
    v23[3] = v14;
    v24 = v13[64];
    v15 = *(v13 + 1);
    v23[0] = *v13;
    v23[1] = v15;
    v16 = &a2[*(v12 + 24)];
    v17 = *(v16 + 3);
    v21[2] = *(v16 + 2);
    v21[3] = v17;
    v22 = v16[64];
    v18 = *(v16 + 1);
    v21[0] = *v16;
    v21[1] = v18;
    v19 = _s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(v23, v21);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1D8B08728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8B08790()
{
  result = qword_1ECA69390;
  if (!qword_1ECA69390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69390);
  }

  return result;
}

uint64_t sub_1D8B087E4(uint64_t a1)
{
  v2 = type metadata accessor for StillAppConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8B08840(void *a1)
{
  a1[1] = sub_1D8B088EC(&qword_1ECA693A0, type metadata accessor for StillAppConfiguration);
  a1[2] = sub_1D8B088EC(&qword_1ECA693A8, type metadata accessor for StillAppConfiguration);
  result = sub_1D8B088EC(&qword_1ECA693B0, type metadata accessor for StillAppConfiguration);
  a1[3] = result;
  return result;
}

uint64_t sub_1D8B088EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8B0895C()
{
  result = type metadata accessor for BundleManager.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D8B089F4()
{
  result = qword_1ECA693B8;
  if (!qword_1ECA693B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693B8);
  }

  return result;
}

unint64_t sub_1D8B08A4C()
{
  result = qword_1ECA693C0;
  if (!qword_1ECA693C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693C0);
  }

  return result;
}

unint64_t sub_1D8B08AA4()
{
  result = qword_1ECA693C8;
  if (!qword_1ECA693C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693C8);
  }

  return result;
}

uint64_t sub_1D8B08AF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001D8B497E0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D8B43B20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D8B43B40 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D8B16BA0();

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

uint64_t sub_1D8B08C20(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t sub_1D8B08C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = *(v3 + 16);
  v9(aBlock - v7, a1, v2);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v8, v2);
  v12 = MKBGetDeviceLockState();
  if (v12 != 3 && v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1D8B08ED4;
    *(v13 + 24) = v11;
    aBlock[4] = sub_1D8B08F78;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8B08C20;
    aBlock[3] = &block_descriptor_12;
    v14 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v14);
  }

  else
  {
    LOBYTE(aBlock[0]) = 1;
    sub_1D8B15E20();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D8B08ED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);
  return sub_1D8B15E20();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AnalyticsSceneLabelReportingManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = sub_1D8B09C68();
  v2 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    v2 = v1;
  }

  *(v0 + 24) = v2;
  return v0;
}

uint64_t AnalyticsSceneLabelReportingManager.init()()
{
  *(v0 + 16) = 0;
  v1 = sub_1D8B09C68();
  v2 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    v2 = v1;
  }

  *(v0 + 24) = v2;
  return v0;
}

Swift::Void __swiftcall AnalyticsSceneLabelReportingManager.performDelayedReporting(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  if (qword_1EE0E42A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D8B151E0();
  __swift_project_value_buffer(v7, qword_1EE0E42B0);
  v8 = sub_1D8B151C0();
  v9 = sub_1D8B16200();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D8783000, v8, v9, "Scheduling scene label reporting", v10, 2u);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

  v11 = sub_1D8B15EA0();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1D8B15E80();

  v12 = sub_1D8B15E70();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2]._rawValue = v12;
  v13[3]._rawValue = v14;
  v13[4]._rawValue = v2;
  v13[5]._rawValue = a1._rawValue;
  v2[2] = sub_1D8891CA0(0, 0, v6, &unk_1D8B3F930, v13);
}

uint64_t sub_1D8B09264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D8B16880();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1D8B15E80();
  v5[7] = sub_1D8B15E70();
  v8 = sub_1D8B15E00();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D8B09358, v8, v7);
}

uint64_t sub_1D8B09358()
{
  v1 = sub_1D8B16E30();
  v3 = v2;
  _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1D8B09434;

  return sub_1D8A0077C(v1, v3, 0, 0, 1);
}

uint64_t sub_1D8B09434()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1D8B0A27C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1D8B095C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D8B095C8()
{

  if ((sub_1D8B15F90() & 1) == 0)
  {
    sub_1D8B09640(*(v0 + 24));
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D8B09640(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D8B151E0();
    __swift_project_value_buffer(v3, qword_1EE0E42B0);

    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16200();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D88F0E40();
      v8 = sub_1D8B15810();
      v10 = sub_1D89AC714(v8, v9, &v26);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1D8783000, v4, v5, "Recording post-shutter labels for analytics: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1DA721330](v7, -1, -1);
      MEMORY[0x1DA721330](v6, -1, -1);
    }

    v11 = sub_1D8B09A24(a1, *(v1 + 24));
    if (*(v11 + 16) >= 4uLL)
    {
      sub_1D8AB60C4(v11, v11 + 32, 0, 7uLL);
    }

    v12 = sub_1D8B151C0();
    v13 = sub_1D8B16200();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D88F0E40();
      v16 = sub_1D8B15810();
      v18 = sub_1D89AC714(v16, v17, &v26);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1D8783000, v12, v13, "Filtered and trimmed labels for analytics: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1DA721330](v15, -1, -1);
      MEMORY[0x1DA721330](v14, -1, -1);
    }

    v19 = [BiomeLibrary() VisualIntelligenceCamera];
    swift_unknownObjectRelease();
    v20 = [v19 DetectedLabels];
    swift_unknownObjectRelease();
    v21 = [v20 source];

    v22 = objc_allocWithZone(MEMORY[0x1E698EFD0]);
    v23 = sub_1D8B15CD0();

    v24 = sub_1D8B15940();
    v25 = [v22 initWithLabel:v23 taxonomy:v24 type:2];

    [v21 sendEvent_];
  }
}

uint64_t sub_1D8B09A24(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v21 = result + 32;
  v5 = a2 + 56;
  v6 = MEMORY[0x1E69E7CC0];
  v20 = *(result + 16);
  while (v4 < v2)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_25;
    }

    v8 = (v21 + 16 * v4);
    v10 = *v8;
    v9 = v8[1];
    ++v4;
    if (!*(a2 + 16))
    {

      goto LABEL_15;
    }

    sub_1D8B16D20();

    sub_1D8B15A60();
    v11 = sub_1D8B16D80();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = (*(a2 + 48) + 16 * v13);
        v16 = *v15 == v10 && v15[1] == v9;
        if (v16 || (sub_1D8B16BA0() & 1) != 0)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (v7 == v2)
      {
        return v6;
      }
    }

    else
    {
LABEL_15:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D87F3F54(0, *(v6 + 16) + 1, 1);
      }

      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1D87F3F54((v17 > 1), v18 + 1, 1);
      }

      *(v6 + 16) = v18 + 1;
      v19 = v6 + 16 * v18;
      *(v19 + 32) = v10;
      *(v19 + 40) = v9;
      v2 = v20;
      if (v7 == v20)
      {
        return v6;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t AnalyticsSceneLabelReportingManager.deinit()
{

  return v0;
}

uint64_t AnalyticsSceneLabelReportingManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8B09C68()
{
  v33[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1D8B13000();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - v5;
  type metadata accessor for AnalyticsSceneLabelReportingManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_1D8B15940();
  v10 = sub_1D8B15940();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_1D8B12FB0();

    (*(v1 + 32))(v6, v4, v0);
    v17 = sub_1D8B13010();
    v19 = v18;
    v20 = objc_opt_self();
    v21 = sub_1D8B13030();
    v33[0] = 0;
    v22 = [v20 propertyListWithData:v21 options:0 format:0 error:v33];

    if (v22)
    {
      v23 = v33[0];
      sub_1D8B16540();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      if (swift_dynamicCast())
      {
        v24 = v32[1];
        if (qword_1EE0E42A8 != -1)
        {
          swift_once();
        }

        v25 = sub_1D8B151E0();
        __swift_project_value_buffer(v25, qword_1EE0E42B0);

        v26 = sub_1D8B151C0();
        v27 = sub_1D8B16200();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          *(v28 + 4) = *(v24 + 16);

          _os_log_impl(&dword_1D8783000, v26, v27, "Deny list loaded with %ld entries", v28, 0xCu);
          MEMORY[0x1DA721330](v28, -1, -1);
        }

        else
        {
        }

        v31 = sub_1D87C4264(v24);

        sub_1D87A1598(v17, v19);
        (*(v1 + 8))(v6, v0);
        return v31;
      }

      (*(v1 + 8))(v6, v0);
      sub_1D87A1598(v17, v19);
    }

    else
    {
      v29 = v33[0];
      v30 = sub_1D8B12EB0();

      swift_willThrow();
      sub_1D87A1598(v17, v19);

      (*(v1 + 8))(v6, v0);
    }
  }

  if (qword_1EE0E42A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D8B151E0();
  __swift_project_value_buffer(v12, qword_1EE0E42B0);
  v13 = sub_1D8B151C0();
  v14 = sub_1D8B16220();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D8783000, v13, v14, "Deny list is empty", v15, 2u);
    MEMORY[0x1DA721330](v15, -1, -1);
  }

  return 0;
}

uint64_t sub_1D8B0A15C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8864FBC;

  return sub_1D8B09264(a1, v4, v5, v7, v6);
}

uint64_t CameraSourceFrameMetadata.dumpDebugArtfacts.getter()
{
  v1 = *(v0 + 40);
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8B0AAA4();
  if ((v2 & 1) == 0 && ((v1 ^ 1) & 1) == 0)
  {
    v3 = type metadata accessor for InternalSettings();
    v4 = sub_1D8B15940();
    LOBYTE(v3) = [v3 BOOLForKey:v4 defaultValue:0];

    v2 = v3;
  }

  return v2 & 1;
}

uint64_t sub_1D8B0A33C()
{
  type metadata accessor for RellenoGlobalSettings();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  v2 = sub_1D8B131D0();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire) = 0;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno) = 2;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isUnitTest) = 2;
  qword_1EE0E54C8 = v0;
  return result;
}

uint64_t static RellenoGlobalSettings.shared.getter()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8B0A4A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_1D8B0A53C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1D8B0A5D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D87C65F0(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  swift_beginAccess();
  sub_1D87C69C8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1D8B0A694@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  swift_beginAccess();
  return sub_1D87C65F0(v1 + v3, a1);
}

uint64_t sub_1D8B0A6EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  swift_beginAccess();
  sub_1D87C69C8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D8B0A7AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE0E54C8;
  if (sub_1D8B0AAA4())
  {
    v6 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
    swift_beginAccess();
    sub_1D87C65F0(v5 + v6, v4);
    v7 = sub_1D8B131D0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      return (*(v8 + 32))(a1, v4, v7);
    }
  }

  else
  {
    v7 = sub_1D8B131D0();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  sub_1D8B131D0();
  result = (*(*(v7 - 8) + 48))(v4, 1, v7);
  if (result != 1)
  {
    return sub_1D87C6660(v4);
  }

  return result;
}

uint64_t sub_1D8B0A9B0()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D8B0A9F4(char a1)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D8B0AAA4()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno;
  v2 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno);
  if (v2 == 2)
  {
    v3 = sub_1D8B0ACEC();
    if (v4)
    {
      if (v3 == 0x6F6E656C6C6572 && v4 == 0xE700000000000000)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = sub_1D8B16BA0();
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t (*sub_1D8B0AB54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D8B0AAA4() & 1;
  return sub_1D8B0ABA0;
}

uint64_t sub_1D8B0ABB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isUnitTest);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isUnitTest) = 0;
  }

  return v1 & 1;
}

uint64_t (*sub_1D8B0ABEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D8B0ABB8() & 1;
  return sub_1D8B0AC38;
}

uint64_t RellenoGlobalSettings.deinit()
{

  sub_1D87C6660(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate);
  return v0;
}

uint64_t RellenoGlobalSettings.__deallocating_deinit()
{

  sub_1D87C6660(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8B0ACEC()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA693D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D8B1ABA0;
  *(v1 + 32) = 0xE00000001;
  v2 = (v1 + 32);
  *(v1 + 40) = 1;
  *(v1 + 44) = v0;
  bzero(v7, 0x288uLL);
  v6 = 648;
  v3 = sysctl(v2, 4u, v7, &v6, 0, 0);
  if (v3 == sub_1D8B15430())
  {
    v4 = sub_1D8B15AD0();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for RellenoGlobalSettings()
{
  result = qword_1EE0E54A8;
  if (!qword_1EE0E54A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8B0AE70()
{
  sub_1D87C7ACC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

const char *sub_1D8B0B224()
{
  v1 = "DeveloperMode";
  if (*v0 != 1)
  {
    v1 = "RecordingOnly";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "AFMPlus";
  }
}

unint64_t sub_1D8B0B27C()
{
  result = qword_1EE0E51A8[0];
  if (!qword_1EE0E51A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E51A8);
  }

  return result;
}

uint64_t sub_1D8B0B2E0(uint64_t a1, char a2, _BYTE *a3)
{
  v8 = &type metadata for TamaleFeatureFlagsKey;
  v9 = sub_1D8B0B27C();
  v7[0] = a2;
  v5 = sub_1D8B13620();
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *a3 = v5 & 1;
  return result;
}

unint64_t sub_1D8B0B354()
{
  result = qword_1ECA693D8;
  if (!qword_1ECA693D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693D8);
  }

  return result;
}

VisualIntelligenceCore::AnalyticsFeatureAwareness::Status_optional __swiftcall AnalyticsFeatureAwareness.Status.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void AnalyticsFeatureAwareness.init(userDefaults:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1D89D733C(&v24);
  v4 = v24;
  sub_1D89D7554(&v23);

  v5 = v23;
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = sub_1D8B15970();
    v11 = v10;

    if (v9 == 0xD000000000000022 && 0x80000001D8B433B0 == v11)
    {

      v14 = 0;
      goto LABEL_15;
    }

    v13 = sub_1D8B16BA0();

    v14 = 0;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  v15 = [v6 mainBundle];
  v16 = [v15 bundleIdentifier];

  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = sub_1D8B15970();
  v19 = v18;

  if (v17 == 0xD000000000000023 && 0x80000001D8B433E0 == v19)
  {

    v14 = 1;
    goto LABEL_15;
  }

  v20 = sub_1D8B16BA0();

  if (v20)
  {
    v14 = 1;
  }

  else
  {
LABEL_14:
    v14 = 2;
  }

LABEL_15:
  if (v4 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v4;
  }

  *a2 = v21;
  if (v5 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v5;
  }

  *(a2 + 1) = v22;
  *(a2 + 2) = v14;
  *(a2 + 8) = a1;
}

Swift::Void __swiftcall AnalyticsFeatureAwareness.opened()()
{
  if (v0[2])
  {
    if (v0[2] == 1 && v0[1] != 3)
    {
      v0[1] = 2;
    }
  }

  else if (*v0 != 3)
  {
    *v0 = 2;
  }
}

Swift::Void __swiftcall AnalyticsFeatureAwareness.used()()
{
  if (v0[2])
  {
    if (v0[2] == 1)
    {
      v0[1] = 3;
    }
  }

  else
  {
    *v0 = 3;
  }
}

Swift::Void __swiftcall AnalyticsFeatureAwareness.publish()()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1D8B160A0();
  v3 = sub_1D8B15940();
  v4 = *MEMORY[0x1E696A400];
  [v1 setObject:v2 forKey:v3 inDomain:*MEMORY[0x1E696A400]];

  v5 = [v0 standardUserDefaults];
  v6 = sub_1D8B160A0();
  v7 = sub_1D8B15940();
  [v5 setObject:v6 forKey:v7 inDomain:v4];
}

uint64_t AnalyticsFeatureAwareness.Context.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D8B0B884()
{
  result = qword_1ECA693E0;
  if (!qword_1ECA693E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693E0);
  }

  return result;
}

unint64_t sub_1D8B0B8DC()
{
  result = qword_1ECA693E8;
  if (!qword_1ECA693E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693E8);
  }

  return result;
}

uint64_t sub_1D8B0B960()
{
  v0 = sub_1D8B131D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AE78]) init];
  [v7 setUnitsStyle_];
  sub_1D8B13150();
  v8 = sub_1D8B13120();
  sub_1D8B131C0();
  v9 = sub_1D8B13120();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v11 = [v7 localizedStringForDate:v8 relativeToDate:v9];

  v12 = sub_1D8B15970();
  v10(v6, v0);
  return v12;
}

uint64_t AnalyticsVLUEventManager.onServerRequestStart(visualUnderstanding:)(uint64_t a1)
{
  v3 = sub_1D8B155B0();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B155E0();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v17 - v11;
  v17[1] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  sub_1D87A0E38(a1, v17 - v11, &qword_1ECA67148);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1D881F6FC(v12, v14 + v13, &qword_1ECA67148);
  aBlock[4] = sub_1D8B0DD90;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);

  sub_1D8B155D0();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v8, v5, v15);
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

uint64_t AnalyticsVLUEventManager.onServerRequestEnd(searchResult:error:)(uint64_t a1, void *a2)
{
  v21 = sub_1D8B155B0();
  v24 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B155E0();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68908);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v20 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  sub_1D87A0E38(a1, &v20 - v12, &qword_1ECA68908);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v2;
  sub_1D881F6FC(v13, v15 + v14, &qword_1ECA68908);
  aBlock[4] = sub_1D8B0E9D8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  sub_1D8B155D0();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  v18 = v21;
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v24 + 8))(v6, v18);
  (*(v22 + 8))(v9, v23);
}

uint64_t sub_1D8B0C21C()
{
  type metadata accessor for AnalyticsVLUEventManager();
  swift_allocObject();
  result = sub_1D8B0C2B8();
  qword_1EE0E4ED0 = result;
  return result;
}

uint64_t static AnalyticsVLUEventManager.shared.getter()
{
  if (qword_1EE0E4EC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8B0C2B8()
{
  v1 = sub_1D8B162B0();
  v12 = *(v1 - 8);
  v13 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B162A0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D8B155E0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  v7 = sub_1D8B13240();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID, 1, 1, v7);
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue;
  v10[1] = sub_1D881F764(0, &qword_1EE0E3730);
  sub_1D8B155D0();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&unk_1EE0E3740, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E80);
  sub_1D89C2E9C(&qword_1EE0E3920, &qword_1ECA66E80);
  sub_1D8B16570();
  (*(v12 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  *(v0 + v11) = sub_1D8B162F0();
  return v0;
}

uint64_t AnalyticsVLUEventManager.start(sessionID:)(uint64_t a1)
{
  v3 = sub_1D8B155B0();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B155E0();
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v16[1] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  (*(v10 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  (*(v10 + 32))(v13 + v12, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1D8B0EA48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_12;
  v14 = _Block_copy(aBlock);

  sub_1D8B155D0();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v8, v5, v14);
  _Block_release(v14);
  (*(v19 + 8))(v5, v3);
  (*(v17 + 8))(v8, v18);
}

void sub_1D8B0C920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D8B10A48(v6, a1 + v9);
  swift_endAccess();
  sub_1D8B0CA50();
}

void sub_1D8B0CA50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B15610();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = sub_1D8B15620();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v14 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v0 + v14, v3, &qword_1ECA63178);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1D8B131E0();
    v19 = sub_1D8B10300();
    v20 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v21 = sub_1D8B15940();

    v22 = [v20 initWithSessionId:v21 dimensionContext:v19 visualIntelligenceContext:0 serverRequestContext:0 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v22);
    v23 = [objc_allocWithZone(MEMORY[0x1E698F018]) initWithVisualLookupSessionId:0 appeared:1 disappeared:0];
    sub_1D8B131E0();
    v24 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v25 = v23;
    v26 = sub_1D8B15940();

    v27 = [v24 initWithSessionId:v26 dimensionContext:0 visualIntelligenceContext:v25 serverRequestContext:0 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v27);
    (*(v5 + 8))(v7, v4);
    return;
  }

  sub_1D87A14E4(v3, &qword_1ECA63178);
  if (qword_1EE0E42A8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v15 = sub_1D8B151E0();
  __swift_project_value_buffer(v15, qword_1EE0E42B0);
  v16 = sub_1D8B151C0();
  v17 = sub_1D8B16210();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D8783000, v16, v17, "AnalyticsVLUEventManager: nil sessionID", v18, 2u);
    MEMORY[0x1DA721330](v18, -1, -1);
  }
}

Swift::Void __swiftcall AnalyticsVLUEventManager.end()()
{
  v1 = sub_1D8B155B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8B155E0();
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  aBlock[4] = sub_1D8B0EAAC;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_15;
  v8 = _Block_copy(aBlock);

  sub_1D8B155D0();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_1D8B0D180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  sub_1D8B0D2C8();
  v5 = sub_1D8B13240();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D8B10A48(v4, a1 + v7);
  swift_endAccess();
  v6(v4, 1, 1, v5);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D8B10A48(v4, a1 + v8);
  return swift_endAccess();
}

void sub_1D8B0D2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B15610();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = sub_1D8B15620();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v14 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v0 + v14, v3, &qword_1ECA63178);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    v19 = [objc_allocWithZone(MEMORY[0x1E698F018]) initWithVisualLookupSessionId:0 appeared:0 disappeared:2];
    sub_1D8B131E0();
    v20 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v21 = v19;
    v22 = sub_1D8B15940();

    v23 = [v20 initWithSessionId:v22 dimensionContext:0 visualIntelligenceContext:v21 serverRequestContext:0 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v23);
    (*(v5 + 8))(v7, v4);
    return;
  }

  sub_1D87A14E4(v3, &qword_1ECA63178);
  if (qword_1EE0E42A8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v15 = sub_1D8B151E0();
  __swift_project_value_buffer(v15, qword_1EE0E42B0);
  v16 = sub_1D8B151C0();
  v17 = sub_1D8B16210();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D8783000, v16, v17, "AnalyticsVLUEventManager: nil sessionID", v18, 2u);
    MEMORY[0x1DA721330](v18, -1, -1);
  }
}

void sub_1D8B0D6CC(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1D8B13830();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D8B137A0();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D8B13AD0();
  v47 = *(v49 - 8);
  v6 = MEMORY[0x1EEE9AC00](v49);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v57 = sub_1D8B138B0();
  v12 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  v55 = a1;
  sub_1D87A0E38(a1 + v20, v19, &qword_1ECA63178);
  v21 = sub_1D8B13240();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v19, 1, v21);
  sub_1D87A14E4(v19, &qword_1ECA63178);
  if (v23 == 1)
  {
    sub_1D8B13230();
    (*(v22 + 56))(v17, 0, 1, v21);
    v24 = v55;
    swift_beginAccess();
    sub_1D8B10A48(v17, v24 + v20);
    swift_endAccess();
  }

  sub_1D87A0E38(v56, v11, &qword_1ECA67148);
  v25 = v57;
  if ((*(v12 + 48))(v11, 1, v57) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA67148);
  }

  else
  {
    v26 = v54;
    (*(v12 + 32))(v54, v11, v25);
    v27 = sub_1D8B13840();
    if (*(v27 + 16))
    {
      v29 = v51;
      v28 = v52;
      v30 = v53;
      (*(v52 + 16))(v51, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v53);

      v31 = sub_1D8B137B0();
      (*(v28 + 8))(v29, v30);
      if (*(v31 + 16))
      {
        v32 = v48;
        v33 = v46;
        v34 = v50;
        (*(v48 + 16))(v46, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v50);

        v35 = v44;
        sub_1D8B13780();
        (*(v32 + 8))(v33, v34);
        v36 = v47;
        v37 = v45;
        v38 = v49;
        (*(v47 + 32))(v45, v35, v49);
        sub_1D8B0DE18(v37);
        (*(v36 + 8))(v37, v38);
        (*(v12 + 8))(v26, v25);
        return;
      }
    }

    (*(v12 + 8))(v26, v25);
  }

  if (qword_1EE0E42A8 != -1)
  {
    swift_once();
  }

  v39 = sub_1D8B151E0();
  __swift_project_value_buffer(v39, qword_1EE0E42B0);
  v40 = sub_1D8B151C0();
  v41 = sub_1D8B16200();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D8783000, v40, v41, "AnalyticsVLUEventManager: onServerRequestStart empty domain in visualUnderstanding", v42, 2u);
    MEMORY[0x1DA721330](v42, -1, -1);
  }
}

void sub_1D8B0DD90()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D8B0D6CC(v2, v3);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D8B0DE18(uint64_t a1)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68818);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v53 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v53 - v9;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v53 - v15;
  v16 = sub_1D8B15610();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = sub_1D8B15620();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v22, v10, &qword_1ECA63178);
  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {
    sub_1D87A14E4(v10, &qword_1ECA63178);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v24 = sub_1D8B151E0();
      __swift_project_value_buffer(v24, qword_1EE0E42B0);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B16210();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1D8783000, v25, v26, "AnalyticsVLUEventManager: reportServerRequestSuccess nil sessionID", v27, 2u);
        MEMORY[0x1DA721330](v27, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v28 = *(v12 + 32);
  v28(v56, v10, v11);
  v29 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v29, v8, &qword_1ECA63178);
  if (v23(v8, 1, v11) == 1)
  {
    sub_1D87A14E4(v8, &qword_1ECA63178);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D8B151E0();
    __swift_project_value_buffer(v30, qword_1EE0E42B0);
    v31 = sub_1D8B151C0();
    v32 = sub_1D8B16210();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v56;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8783000, v31, v32, "AnalyticsVLUEventManager: reportServerRequestStart nil visualLookupSessionID", v35, 2u);
      MEMORY[0x1DA721330](v35, -1, -1);
    }

    (*(v12 + 8))(v34, v11);
  }

  else
  {
    v36 = v55;
    v28(v55, v8, v11);
    v37 = sub_1D8B13AD0();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v4, v54, v37);
    (*(v38 + 56))(v4, 0, 1, v37);
    sub_1D8B10AB8(v4);
    sub_1D87A14E4(v4, &qword_1ECA68818);
    v39 = objc_allocWithZone(MEMORY[0x1E698EFF0]);
    sub_1D881F764(0, &qword_1EE0E36A8);
    v40 = sub_1D8B15CD0();

    v41 = [v39 initWithRequestType:1 requestDomain:v40];

    v42 = v36;
    sub_1D8B131E0();
    v43 = objc_allocWithZone(MEMORY[0x1E698F000]);
    v44 = v41;
    v45 = sub_1D8B15940();

    v46 = [v43 initWithVisualLookupSessionId:v45 connectionUuid:0 started:v44 ended:0 failed:0];

    v47 = v56;
    sub_1D8B131E0();
    v48 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v49 = v46;
    v50 = sub_1D8B15940();

    v51 = [v48 initWithSessionId:v50 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:v49 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v51);
    v52 = *(v12 + 8);
    v52(v42, v11);
    v52(v47, v11);
  }
}

void sub_1D8B0E578(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = sub_1D8B13CA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68908);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_1D8B13720();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    sub_1D8B11D5C(3u, "AnalyticsVLUEventManager: reportServerRequestError nil visualLookupSessionID", "AnalyticsVLUEventManager: reportServerRequestError nil sessionID");
  }

  else
  {
    v26 = v8;
    sub_1D87A0E38(v27, v14, &qword_1ECA68908);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D87A14E4(v14, &qword_1ECA68908);
    }

    else
    {
      v27 = a2;
      (*(v16 + 32))(v18, v14, v15);
      v20 = sub_1D8B13710();
      if (*(v20 + 16))
      {
        v21 = v6;
        v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v23 = *(v6 + 16);
        v23(v11, v20 + v22, v5);

        (*(v21 + 56))(v11, 0, 1, v5);
        sub_1D87A14E4(v11, &qword_1ECA68910);
        v24 = sub_1D8B13710();
        if (*(v24 + 16))
        {
          v25 = v26;
          v23(v26, v24 + v22, v5);

          sub_1D8B13C80();

          (*(v21 + 8))(v25, v5);
          sub_1D8B0EAB4(1);
          (*(v16 + 8))(v18, v15);
          return;
        }

        (*(v16 + 8))(v18, v15);
      }

      else
      {

        (*(v6 + 56))(v11, 1, 1, v5);
        (*(v16 + 8))(v18, v15);
        sub_1D87A14E4(v11, &qword_1ECA68910);
      }
    }

    sub_1D8B0EAB4(0);
    sub_1D8B11D5C(1u, "AnalyticsVLUEventManager: reportServerRequestNoResult nil visualLookupSessionID", "AnalyticsVLUEventManager: reportServerRequestNoResult nil sessionID");
  }
}

void sub_1D8B0E9D8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68908) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1D8B0E578(v2, v3, v4);
}

void sub_1D8B0EA48()
{
  v1 = *(sub_1D8B13240() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D8B0C920(v2, v3);
}

void sub_1D8B0EAB4(int a1)
{
  v46[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v46 - v6;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v46 - v13;
  v14 = sub_1D8B15610();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  LOBYTE(v18) = sub_1D8B15620();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v20, v7, &qword_1ECA63178);
  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    sub_1D87A14E4(v7, &qword_1ECA63178);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v22 = sub_1D8B151E0();
      __swift_project_value_buffer(v22, qword_1EE0E42B0);
      v23 = sub_1D8B151C0();
      v24 = sub_1D8B16210();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1D8783000, v23, v24, "AnalyticsVLUEventManager: reportServerRequestSuccess nil sessionID", v25, 2u);
        MEMORY[0x1DA721330](v25, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v26 = *(v9 + 32);
  v26(v47, v7, v8);
  v27 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v27, v5, &qword_1ECA63178);
  if (v21(v5, 1, v8) == 1)
  {
    sub_1D87A14E4(v5, &qword_1ECA63178);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D8B151E0();
    __swift_project_value_buffer(v28, qword_1EE0E42B0);
    v29 = sub_1D8B151C0();
    v30 = sub_1D8B16210();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v47;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D8783000, v29, v30, "AnalyticsVLUEventManager: reportServerRequestSuccess nil visualLookupSessionID", v33, 2u);
      MEMORY[0x1DA721330](v33, -1, -1);
    }

    (*(v9 + 8))(v32, v8);
  }

  else
  {
    v26(v12, v5, v8);
    v34 = sub_1D8B15DF0();
    v35 = [objc_allocWithZone(MEMORY[0x1E698EFF8]) initWithHasResultRetrieved:v34 endReason:1 httpErrorCode:0 serverErrorCode:0];

    sub_1D8B131E0();
    v36 = objc_allocWithZone(MEMORY[0x1E698F000]);
    v37 = v35;
    v38 = sub_1D8B15940();

    v39 = [v36 initWithVisualLookupSessionId:v38 connectionUuid:0 started:0 ended:v37 failed:0];

    v40 = v47;
    sub_1D8B131E0();
    v41 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v42 = v39;
    v43 = sub_1D8B15940();

    v44 = [v41 initWithSessionId:v43 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:v42 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v44);
    v45 = *(v9 + 8);
    v45(v12, v8);
    v45(v40, v8);
  }
}

void sub_1D8B0F158(uint64_t a1, uint64_t a2)
{
  v46[1] = a1;
  v46[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v46 - v7;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v46 - v14;
  v15 = sub_1D8B15610();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  LOBYTE(v19) = sub_1D8B15620();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v2 + v21, v8, &qword_1ECA63178);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    sub_1D87A14E4(v8, &qword_1ECA63178);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v23 = sub_1D8B151E0();
      __swift_project_value_buffer(v23, qword_1EE0E42B0);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B16210();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D8783000, v24, v25, "AnalyticsVLUEventManager: reportComponentAppeared nil sessionID", v26, 2u);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v27 = *(v10 + 32);
  v27(v47, v8, v9);
  v28 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v2 + v28, v6, &qword_1ECA63178);
  if (v22(v6, 1, v9) == 1)
  {
    sub_1D87A14E4(v6, &qword_1ECA63178);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D8B151E0();
    __swift_project_value_buffer(v29, qword_1EE0E42B0);
    v30 = sub_1D8B151C0();
    v31 = sub_1D8B16210();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v47;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8783000, v30, v31, "AnalyticsVLUEventManager: reportComponentAppeared nil visualLookupSessionID", v34, 2u);
      MEMORY[0x1DA721330](v34, -1, -1);
    }

    (*(v10 + 8))(v33, v9);
  }

  else
  {
    v27(v13, v6, v9);
    sub_1D8B131E0();
    v35 = objc_allocWithZone(MEMORY[0x1E698EFE8]);
    v36 = sub_1D8B15940();

    v37 = sub_1D8B15940();
    sub_1D881F764(0, &qword_1ECA693F0);
    v38 = sub_1D8B15CD0();
    v39 = [v35 initWithVisualLookupSessionId:v36 pillSessionId:v37 visualComponents:v38 totalResultsShown:0 started:1 ended:0];

    v40 = v47;
    sub_1D8B131E0();
    v41 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v42 = v39;
    v43 = sub_1D8B15940();

    v44 = [v41 initWithSessionId:v43 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:0 displayContext:v42 userInteractionDetected:0];

    sub_1D8B1013C(v44);
    v45 = *(v10 + 8);
    v45(v13, v9);
    v45(v40, v9);
  }
}

uint64_t sub_1D8B0F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v7 = v5;
  v10 = sub_1D8B155B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D8B155E0();
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = v20[0];
  v18 = _Block_copy(aBlock);

  sub_1D8B155D0();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t objectdestroy_17Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D8B0FAFC(uint64_t a1, uint64_t a2)
{
  v46[1] = a1;
  v46[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v46 - v7;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v46 - v14;
  v15 = sub_1D8B15610();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  LOBYTE(v19) = sub_1D8B15620();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v2 + v21, v8, &qword_1ECA63178);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    sub_1D87A14E4(v8, &qword_1ECA63178);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v23 = sub_1D8B151E0();
      __swift_project_value_buffer(v23, qword_1EE0E42B0);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B16210();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D8783000, v24, v25, "AnalyticsVLUEventManager: reportComponentInteraction nil sessionID", v26, 2u);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v27 = *(v10 + 32);
  v27(v47, v8, v9);
  v28 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v2 + v28, v6, &qword_1ECA63178);
  if (v22(v6, 1, v9) == 1)
  {
    sub_1D87A14E4(v6, &qword_1ECA63178);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D8B151E0();
    __swift_project_value_buffer(v29, qword_1EE0E42B0);
    v30 = sub_1D8B151C0();
    v31 = sub_1D8B16210();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v47;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8783000, v30, v31, "AnalyticsVLUEventManager: reportComponentInteraction nil visualLookupSessionID", v34, 2u);
      MEMORY[0x1DA721330](v34, -1, -1);
    }

    (*(v10 + 8))(v33, v9);
  }

  else
  {
    v27(v13, v6, v9);
    sub_1D8B131E0();
    v35 = objc_allocWithZone(MEMORY[0x1E698F008]);
    v36 = sub_1D8B15940();

    v37 = sub_1D8B15940();
    sub_1D881F764(0, &qword_1ECA693F0);
    v38 = sub_1D8B15CD0();
    v39 = [v35 initWithVisualLookupSessionId:v36 pillSessionId:v37 visualComponents:v38 engagedResultPosition:0 interactionType:1];

    v40 = v47;
    sub_1D8B131E0();
    v41 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v42 = v39;
    v43 = sub_1D8B15940();

    v44 = [v41 initWithSessionId:v43 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:0 displayContext:0 userInteractionDetected:v42];

    sub_1D8B1013C(v44);
    v45 = *(v10 + 8);
    v45(v13, v9);
    v45(v40, v9);
  }
}

void sub_1D8B1013C(uint64_t a1)
{
  v3 = sub_1D8B15610();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1D8B15620();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = [BiomeLibrary() VisualIntelligenceCamera];
    swift_unknownObjectRelease();
    v10 = [v9 Lookup];
    swift_unknownObjectRelease();
    v11 = [v10 Event];
    swift_unknownObjectRelease();
    v12 = [v11 source];

    [v12 sendEvent_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D8B10300()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63118);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v31 - v2;
  v4 = sub_1D8B13350();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v31 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - v12;
  v14 = sub_1D8B15610();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  LOBYTE(v18) = sub_1D8B15620();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_1D8B132F0();
    v31[1] = sub_1D8B13250();
    v20 = *(v5 + 8);
    v20(v13, v4);
    sub_1D8B132F0();
    sub_1D8B132E0();
    v20(v11, v4);
    v21 = sub_1D8B132B0();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v3, 1, v21) == 1)
    {
      sub_1D87A14E4(v3, &qword_1ECA63118);
      sub_1D8B132F0();
      sub_1D8B13250();
      v20(v8, v4);
    }

    else
    {
      sub_1D8B13260();
      (*(v22 + 8))(v3, v21);
    }

    if (qword_1EE0E5690 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  v23 = objc_allocWithZone(MEMORY[0x1E698EFE0]);
  v24 = sub_1D8B15940();

  v25 = sub_1D8B15940();

  v26 = sub_1D8B15940();
  v27 = sub_1D8B15940();
  v28 = sub_1D8B15940();

  v29 = [v23 initWithVisualLookupSessionId:0 systemLocale:v24 currentCountry:v25 build:v26 osType:v27 productType:0 buildType:v28];

  return v29;
}

uint64_t AnalyticsVLUEventManager.deinit()
{
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID, &qword_1ECA63178);
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID, &qword_1ECA63178);

  return v0;
}

uint64_t AnalyticsVLUEventManager.__deallocating_deinit()
{
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID, &qword_1ECA63178);
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID, &qword_1ECA63178);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AnalyticsVLUEventManager()
{
  result = qword_1EE0E4EA8;
  if (!qword_1EE0E4EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8B10938()
{
  sub_1D8B109F0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D8B109F0()
{
  if (!qword_1EE0E9888)
  {
    sub_1D8B13240();
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E9888);
    }
  }
}

uint64_t sub_1D8B10A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8B10AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68818);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v94 - v3;
  v5 = sub_1D8B13AD0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v102 = &v94 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v100 = &v94 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v94 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v98 = &v94 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v94 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v103 = &v94 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v104 = &v94 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v105 = &v94 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v106 = &v94 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v108 = &v94 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v109 = &v94 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v110 = &v94 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v111 = &v94 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v94 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v94 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v94 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v94 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v94 - v46;
  v49 = v48;
  sub_1D87A0E38(a1, v4, &qword_1ECA68818);
  if ((*(v49 + 48))(v4, 1, v5) == 1)
  {
    sub_1D87A14E4(v4, &qword_1ECA68818);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v49 + 32))(v47, v4, v5);
  sub_1D8B13A10();
  v51 = sub_1D8B123C4(&qword_1ECA693F8, MEMORY[0x1E69E03D8]);
  v112 = v47;
  sub_1D8B15C40();
  v107 = v5;
  v96 = v51;
  sub_1D8B15C40();
  if (v115 == v113 && v116 == v114)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_1D8B16BA0();
  }

  v95 = v49;
  v53 = *(v49 + 8);
  v54 = v45;
  v55 = v107;
  v53(v54, v107);

  v56 = v112;
  if (v52)
  {
    goto LABEL_12;
  }

  sub_1D8B13A30();
  sub_1D8B15C40();
  sub_1D8B15C40();
  if (v115 != v113 || v116 != v114)
  {
    v57 = sub_1D8B16BA0();
    v53(v42, v55);

    if (v57)
    {
      goto LABEL_12;
    }

    sub_1D8B13A50();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v61 = v39;
LABEL_26:
      v53(v61, v55);

      goto LABEL_27;
    }

    v62 = sub_1D8B16BA0();
    v53(v39, v55);

    if (v62)
    {
      goto LABEL_27;
    }

    sub_1D8B13A20();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
LABEL_21:
      v61 = v36;
      goto LABEL_26;
    }

    v63 = sub_1D8B16BA0();
    v53(v36, v55);

    if (v63)
    {
LABEL_27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D8B23DF0;
      v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
LABEL_28:
      *(v58 + 32) = v65;
      v59 = v112;
      goto LABEL_13;
    }

    v64 = v111;
    sub_1D8B13AB0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      goto LABEL_25;
    }

    v66 = sub_1D8B16BA0();
    v53(v64, v55);

    if (v66)
    {
      goto LABEL_27;
    }

    v64 = v110;
    sub_1D8B13A70();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
LABEL_25:
      v61 = v64;
      goto LABEL_26;
    }

    v67 = sub_1D8B16BA0();
    v53(v64, v55);

    if (v67)
    {
      goto LABEL_27;
    }

    v36 = v109;
    sub_1D8B13A60();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      goto LABEL_21;
    }

    v68 = sub_1D8B16BA0();
    v53(v36, v55);

    if (v68)
    {
      goto LABEL_27;
    }

    v69 = v108;
    sub_1D8B139C0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v53(v69, v55);

LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D8B23DF0;
      v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      goto LABEL_28;
    }

    v70 = sub_1D8B16BA0();
    v53(v69, v55);

    if (v70)
    {
      goto LABEL_40;
    }

    sub_1D8B139D0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v53(v106, v107);

LABEL_45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D8B23DF0;
      v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      goto LABEL_52;
    }

    v71 = sub_1D8B16BA0();
    v53(v106, v107);

    if (v71)
    {
      goto LABEL_45;
    }

    sub_1D8B13A90();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v73 = v105;
LABEL_49:
      v53(v73, v107);

LABEL_51:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D8B23DF0;
      v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      goto LABEL_52;
    }

    v74 = sub_1D8B16BA0();
    v53(v105, v107);

    if (v74)
    {
      goto LABEL_51;
    }

    sub_1D8B139B0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v73 = v104;
      goto LABEL_49;
    }

    v75 = sub_1D8B16BA0();
    v53(v104, v107);

    if (v75)
    {
      goto LABEL_51;
    }

    sub_1D8B13AC0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v73 = v103;
      goto LABEL_49;
    }

    v76 = sub_1D8B16BA0();
    v53(v103, v107);

    if (v76)
    {
      goto LABEL_51;
    }

    sub_1D8B13A80();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v73 = v97;
      goto LABEL_49;
    }

    v77 = sub_1D8B16BA0();
    v53(v97, v107);

    if (v77)
    {
      goto LABEL_51;
    }

    sub_1D8B139E0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v78 = v98;
LABEL_72:
      v53(v78, v107);

      goto LABEL_73;
    }

    v79 = sub_1D8B16BA0();
    v53(v98, v107);

    if ((v79 & 1) == 0)
    {
      sub_1D8B139F0();
      sub_1D8B15C40();
      sub_1D8B15C40();
      if (v115 == v113 && v116 == v114)
      {
        v78 = v99;
        goto LABEL_72;
      }

      v80 = sub_1D8B16BA0();
      v53(v99, v107);

      if ((v80 & 1) == 0)
      {
        sub_1D8B13A40();
        sub_1D8B15C40();
        sub_1D8B15C40();
        if (v115 == v113 && v116 == v114)
        {
          v53(v100, v107);
        }

        else
        {
          v81 = sub_1D8B16BA0();
          v53(v100, v107);

          if ((v81 & 1) == 0)
          {
            if (qword_1EE0E42A8 != -1)
            {
              swift_once();
            }

            v82 = sub_1D8B151E0();
            __swift_project_value_buffer(v82, qword_1EE0E42B0);
            v83 = *(v95 + 16);
            v95 += 16;
            v83(v102, v112, v107);
            v84 = sub_1D8B151C0();
            v85 = sub_1D8B16210();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v115 = v87;
              *v86 = 136315138;
              v88 = v102;
              v89 = v107;
              v83(v101, v102, v107);
              v90 = sub_1D8B159E0();
              v92 = v91;
              v53(v88, v89);
              v93 = sub_1D89AC714(v90, v92, &v115);

              *(v86 + 4) = v93;
              _os_log_impl(&dword_1D8783000, v84, v85, "AnalyticsVLUEventManager: unexpected visual domain %s", v86, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v87);
              MEMORY[0x1DA721330](v87, -1, -1);
              MEMORY[0x1DA721330](v86, -1, -1);
            }

            else
            {

              v53(v102, v107);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_1D8B23DF0;
            v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
            goto LABEL_52;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1D8B23DF0;
        v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
LABEL_52:
        *(v58 + 32) = v72;
        v59 = v112;
        v60 = v107;
        goto LABEL_14;
      }
    }

LABEL_73:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1D8B23DF0;
    v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    goto LABEL_52;
  }

  v53(v42, v55);

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D8B23DF0;
  *(v58 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  v59 = v56;
LABEL_13:
  v60 = v55;
LABEL_14:
  v53(v59, v60);
  return v58;
}

void sub_1D8B11D5C(unsigned int a1, const char *a2, const char *a3)
{
  v49 = a2;
  v50 = a3;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - v8;
  v10 = sub_1D8B13240();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v49 - v15;
  v16 = sub_1D8B15610();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = sub_1D8B15620();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v3 + v22, v9, &qword_1ECA63178);
  v23 = *(v11 + 48);
  if (v23(v9, 1, v10) == 1)
  {
    sub_1D87A14E4(v9, &qword_1ECA63178);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v24 = sub_1D8B151E0();
      __swift_project_value_buffer(v24, qword_1EE0E42B0);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B16210();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1D8783000, v25, v26, v50, v27, 2u);
        MEMORY[0x1DA721330](v27, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v28 = *(v11 + 32);
  v28(v52, v9, v10);
  v29 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v3 + v29, v7, &qword_1ECA63178);
  if (v23(v7, 1, v10) == 1)
  {
    sub_1D87A14E4(v7, &qword_1ECA63178);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D8B151E0();
    __swift_project_value_buffer(v30, qword_1EE0E42B0);
    v31 = sub_1D8B151C0();
    v32 = sub_1D8B16210();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v52;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8783000, v31, v32, v49, v35, 2u);
      MEMORY[0x1DA721330](v35, -1, -1);
    }

    (*(v11 + 8))(v34, v10);
  }

  else
  {
    v28(v14, v7, v10);
    sub_1D881F764(0, &qword_1EE0E36A8);
    v36 = sub_1D8B163F0();
    v37 = objc_allocWithZone(MEMORY[0x1E698EFF8]);
    v38 = [v37 initWithHasResultRetrieved:v36 endReason:v51 httpErrorCode:0 serverErrorCode:{0, v49, v50}];

    sub_1D8B131E0();
    v39 = objc_allocWithZone(MEMORY[0x1E698F000]);
    v40 = v38;
    v41 = sub_1D8B15940();

    v42 = [v39 initWithVisualLookupSessionId:v41 connectionUuid:0 started:0 ended:v40 failed:0];

    v43 = v52;
    sub_1D8B131E0();
    v44 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v45 = v42;
    v46 = sub_1D8B15940();

    v47 = [v44 initWithSessionId:v46 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:v45 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v47);
    v48 = *(v11 + 8);
    v48(v14, v10);
    v48(v43, v10);
  }
}

uint64_t sub_1D8B123C4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1D8B12434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D893DA30(&unk_1F5426818);
  v5 = *(a3 + 16);
  if (!v5)
  {

    v7 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_15:
    v16 = 0;
    v14 = a1;
    goto LABEL_21;
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*(v4 + 16))
    {
      v8 = sub_1D881F7DC(*v6);
      if (v9)
      {
        v10 = *(*(v4 + 56) + 8 * v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D87C8180(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_1D87C8180((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        *&v7[8 * v12 + 32] = v10;
      }
    }

    ++v6;
    --v5;
  }

  while (v5);

  v13 = *(v7 + 2);
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_12:
  v14 = a1;
  if (v13 <= 3)
  {
    v15 = 0;
    v16 = 0;
LABEL_19:
    v22 = v13 - v15;
    v23 = &v7[8 * v15 + 32];
    do
    {
      v24 = *v23;
      v23 += 8;
      *&v16 |= v24;
      --v22;
    }

    while (v22);
    goto LABEL_21;
  }

  v15 = v13 & 0x7FFFFFFFFFFFFFFCLL;
  v17 = (v7 + 48);
  v18 = 0uLL;
  v19 = v13 & 0x7FFFFFFFFFFFFFFCLL;
  v20 = 0uLL;
  do
  {
    v18 = vorrq_s8(v17[-1], v18);
    v20 = vorrq_s8(*v17, v20);
    v17 += 2;
    v19 -= 4;
  }

  while (v19);
  v21 = vorrq_s8(v20, v18);
  v16 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
  if (v13 != v15)
  {
    goto LABEL_19;
  }

LABEL_21:

  v61[0] = 0;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AB60]) initWithTypes:*&v16 error:v61];
  v26 = v61[0];
  if (v25)
  {
    v27 = v25;
    sub_1D881F764(0, &qword_1ECA69400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D8B1AB90;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1D8B129CC();
    *(v28 + 32) = 0xD00000000000002ELL;
    *(v28 + 40) = 0x80000001D8B49A40;
    v29 = v26;
    v57 = sub_1D8B161C0();
    v30 = sub_1D8B15940();
    v31 = [v27 matchesInString:v30 options:0 range:{0, MEMORY[0x1DA71F010](v14, a2)}];

    sub_1D881F764(0, &qword_1ECA64B10);
    v32 = sub_1D8B15CF0();

    if (v32 >> 62)
    {
      v33 = sub_1D8B16610();
      v56 = v27;
      if (v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v56 = v27;
      if (v33)
      {
LABEL_24:
        if (v33 < 1)
        {
          __break(1u);
        }

        v34 = 0;
        v35 = MEMORY[0x1E69E7CC0];
        v36 = v32 & 0xC000000000000001;
        v37 = &property descriptor for UserDefaultsUtility.featureAwarenessCamera;
        v58 = v33;
        while (1)
        {
          v38 = v36 ? MEMORY[0x1DA71FC20](v34, v32) : *(v32 + 8 * v34 + 32);
          v39 = v38;
          [v38 v37[376]];
          sub_1D8B16180();
          if ((v40 & 1) == 0)
          {
            break;
          }

LABEL_27:
          if (v33 == ++v34)
          {
            goto LABEL_55;
          }
        }

        v41 = v32;
        v42 = sub_1D8B15BB0();
        v43 = MEMORY[0x1DA71EF10](v42);
        v45 = v44;

        v46 = [v39 resultType];
        if (v46 <= 31)
        {
          if (v46 == 8)
          {
            v49 = 4;
          }

          else
          {
            if (v46 != 16)
            {
              goto LABEL_51;
            }

            v49 = 3;
          }
        }

        else
        {
          switch(v46)
          {
            case 4096:
              v49 = 5;
              break;
            case 2048:
              v49 = 0;
              break;
            case 32:
              v47 = sub_1D8B15940();
              v48 = [v57 evaluateWithObject_];

              if (v48)
              {
                v49 = 1;
              }

              else
              {
                v49 = 2;
              }

              break;
            default:
LABEL_51:

LABEL_50:
              v32 = v41;
              v33 = v58;
              v37 = &property descriptor for UserDefaultsUtility.featureAwarenessCamera;
              goto LABEL_27;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1D87C8060(0, *(v35 + 2) + 1, 1, v35);
        }

        v51 = *(v35 + 2);
        v50 = *(v35 + 3);
        if (v51 >= v50 >> 1)
        {
          v35 = sub_1D87C8060((v50 > 1), v51 + 1, 1, v35);
        }

        *(v35 + 2) = v51 + 1;
        v52 = &v35[24 * v51];
        v52[32] = v49;
        *(v52 + 5) = v43;
        *(v52 + 6) = v45;
        goto LABEL_50;
      }
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_55:
  }

  else
  {
    v53 = v61[0];
    v54 = sub_1D8B12EB0();

    swift_willThrow();
    return MEMORY[0x1E69E7CC0];
  }

  return v35;
}

unint64_t sub_1D8B129CC()
{
  result = qword_1ECA69408;
  if (!qword_1ECA69408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69408);
  }

  return result;
}

uint64_t sub_1D8B12A30(uint64_t a1, int a2)
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

uint64_t sub_1D8B12A78(uint64_t result, int a2, int a3)
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

unint64_t sub_1D8B12ACC()
{
  result = qword_1ECA69410;
  if (!qword_1ECA69410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69410);
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}