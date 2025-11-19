uint64_t sub_1D88F8054(float a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v82 - v3;
  v86 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v86);
  v91 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D891DE68();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v6 + 24);
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8901B88(v13, v9, type metadata accessor for CVTrackSnapshot);
      v16 = *&v9[v12];

      sub_1D8901BF0(v9, type metadata accessor for CVTrackSnapshot);
      if (v16 >> 60 == 13)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = v15;
        }

        else
        {
          v17 = sub_1D87C7F54(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        if (v19 >= v18 >> 1)
        {
          v17 = sub_1D87C7F54((v18 > 1), v19 + 1, 1, v17);
        }

        *(v17 + 2) = v19 + 1;
        v15 = v17;
        *&v17[8 * v19 + 32] = v16;
      }

      else
      {
      }

      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1D893EB38(MEMORY[0x1E69E7CC0]);
  v21 = *(v15 + 2);
  if (!v21)
  {
LABEL_73:

    return v20;
  }

  v22 = 0;
  v23 = v15 + 32;
  v87 = v4;
  v84 = v21;
  v85 = v15;
  v82 = 0;
  v83 = v15 + 32;
  while (1)
  {
    if (v22 >= *(v15 + 2))
    {
      goto LABEL_77;
    }

    v24 = *&v23[8 * v22];
    if (v24 >> 60 == 13)
    {
      break;
    }

LABEL_17:
    if (++v22 == v21)
    {
      goto LABEL_73;
    }
  }

  v92 = v20;
  v89 = v22;
  v25 = swift_projectBox();
  v26 = v91;
  sub_1D8901B88(v25, v91, type metadata accessor for GroundedParseClassificationsResult);
  sub_1D87A0E38(v26 + *(v86 + 40), v4, &qword_1ECA635E8);
  v27 = sub_1D8B13830();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v4, 1, v27);

  v90 = v24;
  if (v29 == 1)
  {
    sub_1D87A14E4(v4, &qword_1ECA635E8);
    v30 = MEMORY[0x1E69E7CC8];
    goto LABEL_43;
  }

  v31 = sub_1D8B137F0();
  v32 = (*(v28 + 8))(v4, v27);
  v88 = &v82;
  v33 = MEMORY[0x1EEE9AC00](v32);
  *(&v82 - 4) = a1;
  v34 = *(v31 + 32);
  v35 = ((1 << v34) + 63) >> 6;
  if ((v34 & 0x3Fu) <= 0xD)
  {
    goto LABEL_23;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_23:
    MEMORY[0x1EEE9AC00](v33);
    v37 = &v82 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v36);
    v38 = 0;
    v39 = 0;
    v40 = 1 << *(v31 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v31 + 64);
    v43 = (v40 + 63) >> 6;
LABEL_27:
    if (v42)
    {
      v44 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      goto LABEL_34;
    }

    v45 = v39;
    while (1)
    {
      v39 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_75;
      }

      if (v39 >= v43)
      {
        break;
      }

      v46 = *(v31 + 64 + 8 * v39);
      ++v45;
      if (v46)
      {
        v44 = __clz(__rbit64(v46));
        v42 = (v46 - 1) & v46;
LABEL_34:
        v47 = v44 | (v39 << 6);
        if (*(*(v31 + 56) + 4 * v47) >= a1)
        {
          v48 = (*(v31 + 48) + 16 * v47);
          if ((*v48 != 0x6E776F6E6B6E75 || v48[1] != 0xE700000000000000) && (sub_1D8B16BA0() & 1) == 0)
          {
            *&v37[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
            v49 = __OFADD__(v38++, 1);
            if (v49)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_27;
      }
    }

    v30 = sub_1D8AF41F0(v37, v35, v38, v31);
    v4 = v87;
    goto LABEL_42;
  }

  v79 = swift_slowAlloc();

  v80 = v82;
  v30 = sub_1D8900728(v79, v35, v31, sub_1D8901C50);
  v82 = v80;

  MEMORY[0x1DA721330](v79, -1, -1);
LABEL_42:

LABEL_43:
  v20 = v92;
  if (!*(v30 + 16))
  {
    sub_1D8901BF0(v91, type metadata accessor for GroundedParseClassificationsResult);

    v21 = v84;
    v15 = v85;
    v22 = v89;
    v23 = v83;
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v20;
  v51 = v30 + 64;
  v52 = -1 << *(v30 + 32);
  if (-v52 < 64)
  {
    v53 = ~(-1 << -v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v30 + 64);
  v88 = (-1 << *(v30 + 32));
  v55 = (63 - v52) >> 6;

  v56 = 0;
  while (1)
  {
    if (v54)
    {
      LODWORD(v92) = isUniquelyReferenced_nonNull_native;
      v59 = v56;
      goto LABEL_60;
    }

    v60 = v56;
    do
    {
      v59 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
      }

      if (v59 >= v55)
      {
        sub_1D87977A0();

        sub_1D8901BF0(v91, type metadata accessor for GroundedParseClassificationsResult);

        v4 = v87;
        v21 = v84;
        v15 = v85;
        v22 = v89;
        v23 = v83;
        goto LABEL_17;
      }

      v54 = *(v51 + 8 * v59);
      ++v60;
    }

    while (!v54);
    LODWORD(v92) = isUniquelyReferenced_nonNull_native;
LABEL_60:
    v61 = __clz(__rbit64(v54)) | (v59 << 6);
    v62 = *(v30 + 56);
    v63 = v30;
    v64 = (*(v30 + 48) + 16 * v61);
    v66 = *v64;
    v65 = v64[1];
    v67 = *(v62 + 4 * v61);

    v69 = sub_1D87EF838(v66, v65);
    v70 = v20[2];
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_76;
    }

    v73 = v68;
    if (v20[3] < v72)
    {
      break;
    }

    if ((v92 & 1) == 0)
    {
      sub_1D8969DF4();
    }

LABEL_66:
    v54 &= v54 - 1;
    v20 = v93;
    if (v73)
    {
      v57 = *(v93[7] + 4 * v69);

      if (v57 > v67)
      {
        v58 = v57;
      }

      else
      {
        v58 = v67;
      }

      *(v20[7] + 4 * v69) = v58;
    }

    else
    {
      v93[(v69 >> 6) + 8] |= 1 << v69;
      v76 = (v20[6] + 16 * v69);
      *v76 = v66;
      v76[1] = v65;
      *(v20[7] + 4 * v69) = v67;
      v77 = v20[2];
      v49 = __OFADD__(v77, 1);
      v78 = v77 + 1;
      if (v49)
      {
        goto LABEL_78;
      }

      v20[2] = v78;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v56 = v59;
    v30 = v63;
  }

  sub_1D8972D20(v72, v92 & 1);
  v74 = sub_1D87EF838(v66, v65);
  if ((v73 & 1) == (v75 & 1))
  {
    v69 = v74;
    goto LABEL_66;
  }

  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

VisualIntelligenceCore::visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy sub_1D88F8978()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750) + 44));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1D87F3FAC(0, v2, 0);
  v5 = 0;
  v3 = v12;
  v6 = (v1 + 40);
  while (v5 < *(v1 + 16))
  {
    v7 = *v6;
    result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v6 - 1)).value;
    if (v11 == 181)
    {
      goto LABEL_10;
    }

    v9 = *(v12 + 16);
    v8 = *(v12 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_1D87F3FAC((v8 > 1), v9 + 1, 1);
    }

    ++v5;
    *(v12 + 16) = v9 + 1;
    v10 = v12 + 8 * v9;
    *(v10 + 32) = v11;
    *(v10 + 36) = v7;
    v6 += 4;
    if (v2 == v5)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D88F8A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v143 - v9;
  v153 = type metadata accessor for AFMResult(0);
  v11 = MEMORY[0x1EEE9AC00](v153);
  v13 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v143 - v14;
  v15 = type metadata accessor for MetaDetectionResult();
  v149 = *(v15 - 1);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v161 = (&v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v143 - v18;
  v148 = type metadata accessor for CVTrackSnapshot(0);
  v162 = *(v148 - 8);
  v19 = MEMORY[0x1EEE9AC00](v148);
  v21 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v143 - v22;
  v24 = *(a2 + 32);
  v155 = *(a2 + 40);
  v154 = a1;
  result = static MapsResultsClassifier.lookupDetectionType(bundle:)(a1, &v163);
  LOBYTE(a1) = v164;
  if (v164 > 0xFDu)
  {
    v27 = xmmword_1D8B26630;
LABEL_3:
    *a3 = v27;
    v28 = 2;
LABEL_55:
    *(a3 + 16) = v28;
    return result;
  }

  v146 = v13;
  v147 = v8;
  v30 = *(&v163 + 1);
  v29 = v163;
  if (qword_1ECA620F0 != -1)
  {
LABEL_124:
    swift_once();
  }

  if ((sub_1D8B147C0() & 1) == 0)
  {
    result = sub_1D8901870(v29, v30, a1);
    *a3 = xmmword_1D8B28190;
    v28 = 1;
    goto LABEL_55;
  }

  CVBundle.latestEstimate.getter(&v163);
  if (v163 >> 60)
  {

    sub_1D8901870(v29, v30, a1);
    v29 = v161;
  }

  else
  {

    sub_1D8901870(v29, v30, a1);
    v29 = v161;
    if ((a1 & 0x80) == 0)
    {
      v31 = sub_1D891A6E8();
      v159 = *(v31 + 16);
      if (v159)
      {
        v152 = *(v148 + 20);
        v158 = v31 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
        a1 = v31;
        v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
        v32 = a1;
        v30 = 0;
        v29 = (v149 + 56);
        v156 = a1;
        v151 = (v149 + 56);
        v145 = a3;
        do
        {
          if (v30 >= *(v32 + 16))
          {
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          sub_1D8901B88(v158 + *(v162 + 72) * v30, v23, type metadata accessor for CVTrackSnapshot);
          v33 = sub_1D8B16910();
          v34 = sub_1D881F7DC(1);
          if (v35)
          {
            goto LABEL_116;
          }

          a1 = (v33 + 8);
          *(v33 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v34;
          *(v33[6] + v34) = 1;
          *(v33[7] + 8 * v34) = 0x3FE999999999999ALL;
          v36 = v33[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_117;
          }

          v33[2] = v38;
          v39 = sub_1D881F7DC(12);
          if (v40)
          {
            goto LABEL_118;
          }

          *(a1 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
          *(v33[6] + v39) = 12;
          *(v33[7] + 8 * v39) = 0x3FE0000000000000;
          v41 = v33[2];
          v37 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v37)
          {
            goto LABEL_119;
          }

          v33[2] = v42;
          v43 = sub_1D881F7DC(13);
          if (v44)
          {
            goto LABEL_120;
          }

          *(a1 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
          *(v33[6] + v43) = 13;
          *(v33[7] + 8 * v43) = 0x3FE0000000000000;
          v45 = v33[2];
          v37 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v37)
          {
            goto LABEL_121;
          }

          v33[2] = v46;
          v47 = sub_1D881F7DC(5);
          if (v48)
          {
            goto LABEL_122;
          }

          *(a1 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
          *(v33[6] + v47) = 5;
          *(v33[7] + 8 * v47) = 0x4020000000000000;
          v49 = v33[2];
          v37 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v37)
          {
            goto LABEL_123;
          }

          v33[2] = v50;
          v51 = 0.1;
          if (v50)
          {
            v52 = sub_1D881F7DC(13);
            v51 = 0.1;
            if (v53)
            {
              v51 = *(v33[7] + 8 * v52);
            }
          }

          ++v30;

          switch(*(v23 + v152) >> 60)
          {
            case 1:
              a1 = type metadata accessor for GroundedParseDetectorResult(0);
              v54 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D8901B40(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v56 = type metadata accessor for GroundedParseDetectorResult;
              goto LABEL_36;
            case 2:
              a1 = swift_projectBox();
              *(&v164 + 1) = v15;
              *&v165 = sub_1D8901B40(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v59 = type metadata accessor for MetaDetectionResult;
              v60 = a1;
              goto LABEL_37;
            case 3:
            case 8:
              a1 = type metadata accessor for ObjectDetectorResult(0);
              v54 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D8901B40(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v56 = type metadata accessor for ObjectDetectorResult;
              goto LABEL_36;
            case 4:
              a1 = type metadata accessor for ParseDetectorResult(0);
              v54 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D8901B40(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v56 = type metadata accessor for ParseDetectorResult;
              goto LABEL_36;
            case 5:
              a1 = type metadata accessor for TextDetectorResult(0);
              v54 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D8901B40(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v56 = type metadata accessor for TextDetectorResult;
              goto LABEL_36;
            case 6:
            case 7:
              a1 = type metadata accessor for StreamingBarcodeDetectorResult(0);
              v54 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D8901B40(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v56 = type metadata accessor for StreamingBarcodeDetectorResult;
              goto LABEL_36;
            case 9:
            case 0xALL:
              v57 = swift_projectBox();
              a1 = v150;
              sub_1D8901B88(v57, v150, type metadata accessor for AFMResult);
              *(&v164 + 1) = v153;
              *&v165 = sub_1D8901B40(&qword_1EE0E3F80, type metadata accessor for AFMResult);
              v58 = __swift_allocate_boxed_opaque_existential_1(&v163);
              sub_1D8901C70(a1, v58, type metadata accessor for AFMResult);
              break;
            case 0xBLL:
              a1 = type metadata accessor for SyntheticDetectionResult();
              v54 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D8901B40(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v56 = type metadata accessor for SyntheticDetectionResult;
              goto LABEL_36;
            case 0xCLL:
              a1 = type metadata accessor for GroundedParseEmbeddingsResult(0);
              v54 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D8901B40(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v56 = type metadata accessor for GroundedParseEmbeddingsResult;
              goto LABEL_36;
            case 0xDLL:
              a1 = type metadata accessor for GroundedParseClassificationsResult(0);
              v54 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D8901B40(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
              v56 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_36:
              v59 = v56;
              v60 = v54;
LABEL_37:
              sub_1D8901B88(v60, boxed_opaque_existential_1, v59);
              break;
            default:
              a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
              v61 = swift_projectBox();
              *(&v164 + 1) = a1;
              *&v165 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
              v62 = __swift_allocate_boxed_opaque_existential_1(&v163);
              a3 = v145;
              sub_1D87A0E38(v61, v62, &qword_1ECA67750);
              break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
          v63 = swift_dynamicCast();
          v64 = *v29;
          if (v63)
          {
            v64(v10, 0, 1, v15);
            a1 = v160;
            sub_1D8901C70(v10, v160, type metadata accessor for MetaDetectionResult);
            v65 = a1;
            if (*a1 == 13 && ((v155 & 1) == 0 || *(a1 + v15[8]) == v24) && ((v144 = v15[9], *(a1 + v144) != 2) || v24 - *(a1 + v15[8]) <= v51) && (CVBundle.latestEstimate.getter(&v171), v170 = v171, CVDetection.detection.getter(v167), a1 = v168, v66 = v169, __swift_project_boxed_opaque_existential_1(v167, v168), v67 = *(v66 + 64), v68 = v66, v29 = v161, v67(&v163, a1, v68), __swift_destroy_boxed_opaque_existential_1(v167), Corners.bounds.getter(), v70 = v69, v72 = v71, v74 = v73, v76 = v75, , v180.origin.x = 0.0, v180.origin.y = 0.0, v180.size.width = 1.0, v180.size.height = 1.0, v172.origin.x = v70, v172.origin.y = v72, v172.size.width = v74, v172.size.height = v76, v173 = CGRectIntersection(v172, v180), x = v173.origin.x, y = v173.origin.y, width = v173.size.width, height = v173.size.height, v81 = (v160 + v15[5]), *&v173.origin.y = v81[1], v163 = *v81, v164 = *&v173.origin.y, *&v173.origin.y = v81[3], v165 = v81[2], v166 = *&v173.origin.y, Corners.bounds.getter(), v181.origin.x = x, v181.origin.y = y, v181.size.width = width, v181.size.height = height, v175 = CGRectIntersection(v174, v181), v65 = v160, width * height * 0.9 <= v175.size.width * v175.size.height))
            {
              LODWORD(a1) = *(v160 + v144);
              if (a1 == 3)
              {
                if (qword_1EE0E54C0 != -1)
                {
                  swift_once();
                }

                if (sub_1D8B0AAA4())
                {
                  *&v163 = 0;
                  *(&v163 + 1) = 0xE000000000000000;
                  sub_1D8B16720();

                  *&v163 = 0xD000000000000047;
                  *(&v163 + 1) = 0x80000001D8B44050;
                  v140 = (v160 + v15[10]);
LABEL_127:
                  if (v140[1])
                  {
                    v141 = *v140;
                    v142 = v140[1];
                  }

                  else
                  {
                    v141 = 0x6F73616572206F6ELL;
                    v142 = 0xEF6E65766967206ELL;
                  }

                  MEMORY[0x1DA71EFA0](v141, v142);

                  result = sub_1D8B168C0();
                  __break(1u);
                  return result;
                }

                sub_1D8901BF0(v160, type metadata accessor for MetaDetectionResult);
                if (v155)
                {
                  goto LABEL_105;
                }
              }

              else
              {
                sub_1D8901BF0(v160, type metadata accessor for MetaDetectionResult);
                if (a1 == 2)
                {
LABEL_105:

                  sub_1D8901BF0(v23, type metadata accessor for CVTrackSnapshot);
                  goto LABEL_57;
                }
              }
            }

            else
            {
              sub_1D8901BF0(v65, type metadata accessor for MetaDetectionResult);
            }
          }

          else
          {
            v64(v10, 1, 1, v15);
            sub_1D87A14E4(v10, &qword_1ECA64BB8);
          }

          sub_1D8901BF0(v23, type metadata accessor for CVTrackSnapshot);
          v32 = v156;
          v29 = v151;
        }

        while (v159 != v30);
      }

      v27 = xmmword_1D8B26640;
      goto LABEL_3;
    }
  }

LABEL_57:
  v145 = a3;
  v160 = sub_1D891A6E8();
  v30 = v147;
  v159 = *(v160 + 16);
  if (v159)
  {
    v156 = *(v148 + 20);
    v158 = v160 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
    v23 = 0;
    a3 = (v149 + 56);
    v10 = 1;
    do
    {
      if (v23 >= *(v160 + 16))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
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
        goto LABEL_115;
      }

      sub_1D8901B88(v158 + *(v162 + 72) * v23, v21, type metadata accessor for CVTrackSnapshot);
      v82 = sub_1D8B16910();
      v83 = sub_1D881F7DC(1);
      if (v84)
      {
        goto LABEL_107;
      }

      a1 = (v82 + 8);
      *(v82 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v83;
      *(v82[6] + v83) = 1;
      *(v82[7] + 8 * v83) = 0x3FE999999999999ALL;
      v85 = v82[2];
      v37 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v37)
      {
        goto LABEL_108;
      }

      v82[2] = v86;
      v87 = sub_1D881F7DC(12);
      if (v88)
      {
        goto LABEL_109;
      }

      *(a1 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
      *(v82[6] + v87) = 12;
      *(v82[7] + 8 * v87) = 0x3FE0000000000000;
      v89 = v82[2];
      v37 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v37)
      {
        goto LABEL_110;
      }

      v82[2] = v90;
      v91 = sub_1D881F7DC(13);
      if (v92)
      {
        goto LABEL_111;
      }

      *(a1 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v91;
      *(v82[6] + v91) = 13;
      *(v82[7] + 8 * v91) = 0x3FE0000000000000;
      v93 = v82[2];
      v37 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (v37)
      {
        goto LABEL_112;
      }

      v82[2] = v94;
      v95 = sub_1D881F7DC(5);
      if (v96)
      {
        goto LABEL_113;
      }

      *(a1 + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
      *(v82[6] + v95) = 5;
      *(v82[7] + 8 * v95) = 0x4020000000000000;
      v97 = v82[2];
      v37 = __OFADD__(v97, 1);
      v98 = v97 + 1;
      if (v37)
      {
        goto LABEL_114;
      }

      v82[2] = v98;
      v99 = 1.0;
      if (v98)
      {
        v100 = sub_1D881F7DC(5);
        if (v101)
        {
          v99 = *(v82[7] + 8 * v100);
        }
      }

      ++v23;

      switch(*&v21[v156] >> 60)
      {
        case 1:
          v114 = type metadata accessor for GroundedParseDetectorResult(0);
          v103 = swift_projectBox();
          *(&v164 + 1) = v114;
          v29 = v161;
          *&v165 = sub_1D8901B40(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_85;
        case 2:
          v103 = swift_projectBox();
          *(&v164 + 1) = v15;
          *&v165 = sub_1D8901B40(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for MetaDetectionResult;
          goto LABEL_85;
        case 3:
        case 8:
          v102 = type metadata accessor for ObjectDetectorResult(0);
          v103 = swift_projectBox();
          *(&v164 + 1) = v102;
          v29 = v161;
          *&v165 = sub_1D8901B40(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_85;
        case 4:
          v115 = type metadata accessor for ParseDetectorResult(0);
          v103 = swift_projectBox();
          *(&v164 + 1) = v115;
          v29 = v161;
          *&v165 = sub_1D8901B40(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for ParseDetectorResult;
          goto LABEL_85;
        case 5:
          v116 = type metadata accessor for TextDetectorResult(0);
          v103 = swift_projectBox();
          *(&v164 + 1) = v116;
          v29 = v161;
          *&v165 = sub_1D8901B40(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for TextDetectorResult;
          goto LABEL_85;
        case 6:
        case 7:
          v106 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v103 = swift_projectBox();
          *(&v164 + 1) = v106;
          v29 = v161;
          *&v165 = sub_1D8901B40(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_85;
        case 9:
        case 0xALL:
          v107 = swift_projectBox();
          a1 = v146;
          sub_1D8901B88(v107, v146, type metadata accessor for AFMResult);
          *(&v164 + 1) = v153;
          *&v165 = sub_1D8901B40(&qword_1EE0E3F80, type metadata accessor for AFMResult);
          v108 = __swift_allocate_boxed_opaque_existential_1(&v163);
          sub_1D8901C70(a1, v108, type metadata accessor for AFMResult);
          break;
        case 0xBLL:
          v109 = type metadata accessor for SyntheticDetectionResult();
          v103 = swift_projectBox();
          *(&v164 + 1) = v109;
          v29 = v161;
          *&v165 = sub_1D8901B40(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_85;
        case 0xCLL:
          v110 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v103 = swift_projectBox();
          *(&v164 + 1) = v110;
          v29 = v161;
          *&v165 = sub_1D8901B40(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_85;
        case 0xDLL:
          v117 = type metadata accessor for GroundedParseClassificationsResult(0);
          v103 = swift_projectBox();
          *(&v164 + 1) = v117;
          v29 = v161;
          *&v165 = sub_1D8901B40(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
          v104 = __swift_allocate_boxed_opaque_existential_1(&v163);
          v105 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_85:
          sub_1D8901B88(v103, v104, v105);
          break;
        default:
          a1 = &qword_1ECA67750;
          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v112 = swift_projectBox();
          *(&v164 + 1) = v111;
          v29 = v161;
          *&v165 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v163);
          sub_1D87A0E38(v112, v113, &qword_1ECA67750);
          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
      v118 = swift_dynamicCast();
      v119 = *a3;
      if (v118)
      {
        v119(v30, 0, 1, v15);
        sub_1D8901C70(v30, v29, type metadata accessor for MetaDetectionResult);
        if (*v29 == 5 && ((v155 & 1) == 0 || *(v29 + v15[8]) == v24) && ((a1 = v15[9], *(v29 + a1) != 2) || v24 - *(v29 + v15[8]) <= v99) && (CVBundle.latestEstimate.getter(&v171), v170 = v171, CVDetection.detection.getter(v167), v120 = v168, v121 = v169, __swift_project_boxed_opaque_existential_1(v167, v168), v122 = *(v121 + 64), v123 = v120, v29 = v161, v124 = v121, v30 = v147, v122(&v163, v123, v124), __swift_destroy_boxed_opaque_existential_1(v167), Corners.bounds.getter(), v126 = v125, v128 = v127, v130 = v129, v132 = v131, v10 = 1, , v182.origin.x = 0.0, v182.origin.y = 0.0, v182.size.width = 1.0, v182.size.height = 1.0, v176.origin.x = v126, v176.origin.y = v128, v176.size.width = v130, v176.size.height = v132, v177 = CGRectIntersection(v176, v182), v133 = v177.origin.x, v134 = v177.origin.y, v135 = v177.size.width, v136 = v177.size.height, v137 = (v29 + v15[5]), *&v177.origin.y = v137[1], v163 = *v137, v164 = *&v177.origin.y, *&v177.origin.y = v137[3], v165 = v137[2], v166 = *&v177.origin.y, Corners.bounds.getter(), v183.origin.x = v133, v183.origin.y = v134, v183.size.width = v135, v183.size.height = v136, v179 = CGRectIntersection(v178, v183), v135 * v136 * 0.9 <= v179.size.width * v179.size.height))
        {
          LODWORD(a1) = *(v29 + a1);
          if (a1 == 3)
          {
            if (qword_1EE0E54C0 != -1)
            {
              swift_once();
            }

            if (sub_1D8B0AAA4())
            {
              *&v163 = 0;
              *(&v163 + 1) = 0xE000000000000000;
              sub_1D8B16720();

              *&v163 = 0xD00000000000002FLL;
              *(&v163 + 1) = 0x80000001D8B43DD0;
              v140 = (v29 + v15[10]);
              goto LABEL_127;
            }

            sub_1D8901BF0(v29, type metadata accessor for MetaDetectionResult);
            if (v155)
            {
              goto LABEL_104;
            }
          }

          else
          {
            sub_1D8901BF0(v29, type metadata accessor for MetaDetectionResult);
            if (a1 == 2)
            {
LABEL_104:

              result = sub_1D8901BF0(v21, type metadata accessor for CVTrackSnapshot);
              v139 = v145;
              *v145 = 0;
              v139[1] = 0;
              *(v139 + 16) = -1;
              return result;
            }
          }
        }

        else
        {
          sub_1D8901BF0(v29, type metadata accessor for MetaDetectionResult);
        }
      }

      else
      {
        v119(v30, 1, 1, v15);
        sub_1D87A14E4(v30, &qword_1ECA64BB8);
      }

      sub_1D8901BF0(v21, type metadata accessor for CVTrackSnapshot);
    }

    while (v159 != v23);
  }

  v138 = v145;
  *v145 = xmmword_1D8B26640;
  *(v138 + 16) = 2;
  return result;
}

uint64_t sub_1D88FA6C8(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2[3];
  v43[2] = a2[2];
  v43[3] = v3;
  v43[4] = a2[4];
  v4 = a2[1];
  v43[0] = *a2;
  v43[1] = v4;
  static MapsResultsClassifier.lookupDetectionType(bundle:)(a1, v44);
  LOBYTE(v5) = v45;
  if (v45 > 0xFDu)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v7 = v44[0];
  v6 = v44[1];
  if (qword_1ECA620F0 != -1)
  {
LABEL_59:
    swift_once();
  }

  if ((sub_1D8B147C0() & 1) == 0)
  {
    sub_1D8901870(v7, v6, v5);
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  CVBundle.latestEstimate.getter(v44);
  if (v44[0] >> 60)
  {

    sub_1D8901870(v7, v6, v5);
  }

  else
  {

    sub_1D8901870(v7, v6, v5);
    if ((v5 & 0x80) == 0)
    {
      v10 = *(inited + 16);
      v9 = *(inited + 24);
      if (v10 >= v9 >> 1)
      {
        inited = sub_1D87C8F58((v9 > 1), v10 + 1, 1, inited);
      }

      *(inited + 16) = v10 + 1;
      *(inited + v10 + 32) = 13;
    }
  }

  v6 = *(inited + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v42 = v2;
    v44[0] = MEMORY[0x1E69E7CC0];

    sub_1D87F4140(0, v6, 0);
    v5 = v44[0];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
    v12 = 32;
    while (1)
    {
      v2 = *(inited + v12);
      v13 = sub_1D8B16910();
      v14 = sub_1D881F7DC(1);
      if (v15)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v16 = v13 + 8;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      *(v13[6] + v14) = 1;
      *(v13[7] + 8 * v14) = 0x4024000000000000;
      v17 = v13[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_52;
      }

      v13[2] = v19;
      v20 = sub_1D881F7DC(12);
      if (v21)
      {
        goto LABEL_53;
      }

      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(v13[6] + v20) = 12;
      *(v13[7] + 8 * v20) = 0x4024000000000000;
      v22 = v13[2];
      v18 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v18)
      {
        goto LABEL_54;
      }

      v13[2] = v23;
      v24 = sub_1D881F7DC(13);
      if (v25)
      {
        goto LABEL_55;
      }

      *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(v13[6] + v24) = 13;
      *(v13[7] + 8 * v24) = 0x4024000000000000;
      v26 = v13[2];
      v18 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v18)
      {
        goto LABEL_56;
      }

      v13[2] = v27;
      v28 = sub_1D881F7DC(5);
      if (v29)
      {
        goto LABEL_57;
      }

      *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(v13[6] + v28) = 5;
      *(v13[7] + 8 * v28) = 0x3FF0000000000000;
      v30 = v13[2];
      v18 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v18)
      {
        goto LABEL_58;
      }

      v13[2] = v31;
      if (v31 && (v32 = sub_1D881F7DC(v2), (v33 & 1) != 0))
      {
        v34 = *(v13[7] + 8 * v32);
      }

      else
      {

        if (v2 > 5)
        {
          if (v2 <= 8)
          {
            if ((v2 - 6) >= 2)
            {
              goto LABEL_60;
            }

            v34 = 60.0;
          }

          else
          {
            if ((v2 - 9) >= 2)
            {
              if ((v2 - 12) >= 2)
              {
LABEL_60:
                sub_1D8B168C0();
                __break(1u);
                result = swift_unexpectedError();
                __break(1u);
                return result;
              }

LABEL_37:
              v34 = 10.0;
              goto LABEL_38;
            }

            v34 = 0.0;
          }
        }

        else
        {
          if (v2 <= 2)
          {
            goto LABEL_37;
          }

          if (v2 == 3)
          {
            v34 = 4.0;
            goto LABEL_38;
          }

          if (v2 == 4)
          {
            goto LABEL_37;
          }

          v34 = 1.0;
        }
      }

LABEL_38:
      v44[0] = v5;
      v36 = *(v5 + 16);
      v35 = *(v5 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D87F4140((v35 > 1), v36 + 1, 1);
        v5 = v44[0];
      }

      *(v5 + 16) = v36 + 1;
      *(v5 + 8 * v36 + 32) = v34;
      ++v12;
      if (!--v6)
      {

        v37 = *(inited + 16);
        v2 = v42;
        goto LABEL_44;
      }
    }
  }

  v37 = 0;
LABEL_44:
  if (*(v5 + 16) >= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = *(v5 + 16);
  }

  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
    v39 = sub_1D8B16910();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v44[0] = v39;
  sub_1D890030C(inited, v5, 1, v44);
  v40 = sub_1D89DF91C(v2, v43, v44[0]);

  v41 = sub_1D891B418(v2, v43);
  return sub_1D8917354(v41, v40);
}

uint64_t sub_1D88FACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[79] = a5;
  v5[78] = a3;
  v5[77] = a2;
  v5[76] = a1;
  v6 = sub_1D8B147B0();
  v5[80] = v6;
  v5[81] = *(v6 - 8);
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  type metadata accessor for CVTrackSnapshot(0);
  v5[85] = swift_task_alloc();
  v5[86] = type metadata accessor for CVBundle.BundleType(0);
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v7 = sub_1D8B13240();
  v5[93] = v7;
  v5[94] = *(v7 - 8);
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v5[104] = swift_task_alloc();
  v5[105] = swift_task_alloc();
  v5[106] = swift_task_alloc();
  type metadata accessor for CVBundle(0);
  v5[107] = swift_task_alloc();
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v5[110] = swift_task_alloc();
  v5[111] = swift_task_alloc();
  v5[112] = swift_task_alloc();
  v5[113] = type metadata accessor for BundleClassification.ClassificationType(0);
  v5[114] = swift_task_alloc();
  v5[115] = swift_task_alloc();
  v5[116] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88FAFAC, 0, 0);
}

uint64_t sub_1D88FAFAC()
{
  v13 = v0;
  v1 = *(v0 + 616);
  CVBundle.latestEstimate.getter(&v10);
  *&v11 = v10;
  CVDetection.detection.getter((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 88))(v2, v3);
  *(v0 + 936) = v4;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  static MapsResultsClassifier.lookupDetectionType(bundle:)(v1, &v11);
  *(v0 + 944) = v11;
  v5 = v12;
  *(v0 + 361) = v12;
  if (v5 <= 0xFD)
  {
    v9 = swift_task_alloc();
    *(v0 + 960) = v9;
    *v9 = v0;
    v9[1] = sub_1D88FB328;

    return sub_1D88FF138(v0 + 336);
  }

  else
  {
    v6 = *(v0 + 632);
    *v6 = 0;
    *(v6 + 8) = xmmword_1D8B26630;
    *(v6 + 24) = 2;
    *(v6 + 32) = v4;
    *(v0 + 56) = 0;
    *(v0 + 64) = xmmword_1D8B26630;
    *(v0 + 80) = 2;
    *(v0 + 88) = v4;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D88FB328()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FB424, 0, 0);
}

uint64_t sub_1D88FB424()
{
  v29 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  *(v0 + 968) = v1;
  *(v0 + 976) = v2;
  v3 = *(v0 + 352);
  *(v0 + 984) = v3;
  v4 = *(v0 + 360);
  *(v0 + 362) = v4;
  if (v4 == 255)
  {
    sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));
    if (qword_1EE0E42F8 != -1)
    {
      swift_once();
    }

    v8 = sub_1D8B151E0();
    __swift_project_value_buffer(v8, qword_1EE0E4300);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D8783000, v9, v10, "No location available for MapsResultsClassifier. Requesting location access…", v11, 2u);
      MEMORY[0x1DA721330](v11, -1, -1);
    }

    v12 = *(v0 + 616);

    static MapsResultsClassifier.lookupDetectionType(bundle:)(v12, v26);
    v13 = v27;
    if (v27 > 0xFDu || (sub_1D893EB38(MEMORY[0x1E69E7CC0]), sub_1D88F0C30(), sub_1D88F0C30(), v13 < 0))
    {
      v16 = *(v0 + 936);
      v17 = *(v0 + 632);
      *v17 = 0;
      *(v17 + 8) = xmmword_1D8B281A0;
      *(v17 + 24) = 2;
      *(v17 + 32) = v16;
      *(v0 + 96) = 0;
      *(v0 + 104) = xmmword_1D8B281A0;
      *(v0 + 120) = 2;
      *(v0 + 128) = v16;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();

      v18 = *(v0 + 8);

      return v18();
    }

    else
    {
      *(v0 + 1032) = sub_1D8B15E80();
      *(v0 + 1040) = sub_1D8B15E70();
      v15 = sub_1D8B15E00();

      return MEMORY[0x1EEE6DFA0](sub_1D88FE608, v15, v14);
    }
  }

  else
  {
    sub_1D8901B88(*(v0 + 624), *(v0 + 928), type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 928);
    if (EnumCaseMultiPayload)
    {
      sub_1D8901BF0(v6, type metadata accessor for BundleClassification.ClassificationType);
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v7 = *v6;
    }

    *(v0 + 992) = v7;
    if (qword_1ECA620F0 != -1)
    {
      swift_once();
    }

    v26[0] = v1;
    v26[1] = v2;
    v27 = v3;
    v28 = v4;
    sub_1D88EA768(v26);
    if (qword_1ECA62210 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 361);
    v20 = *(v0 + 952);
    v21 = *(v0 + 944);
    v22 = type metadata accessor for LoggingSignposter(0);
    __swift_project_value_buffer(v22, qword_1ECA66B70);
    LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("MapsResultsClassifier.rank", 26, 2u, 1, 0, (v0 + 136));
    *(v0 + 424) = v21;
    *(v0 + 432) = v20;
    *(v0 + 440) = v19;
    v23 = CVBundle.textDetections.getter();
    *(v0 + 1000) = v23;
    *(v0 + 368) = v1;
    *(v0 + 376) = v2;
    *(v0 + 384) = v3;
    *(v0 + 392) = v4;
    v24 = swift_task_alloc();
    *(v0 + 1008) = v24;
    *v24 = v0;
    v24[1] = sub_1D88FBA2C;

    return sub_1D88EAECC((v0 + 424), v23, (v0 + 368));
  }
}

uint64_t sub_1D88FBA2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1016) = a1;
  *(v3 + 1024) = v1;

  if (v1)
  {

    v4 = sub_1D88FEB10;
  }

  else
  {
    v4 = sub_1D88FBB60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D88FBB60()
{
  v409 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v2);
  (*(v3 + 8))(v2, v3);
  v4 = *(v1 + 16);
  v5 = *(v0 + 992);
  if (!v4)
  {

    v19 = *(v5 + 16);

    if (v19)
    {
      if (qword_1ECA62160 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 952);
      v21 = *(v0 + 944);
      v22 = *(v0 + 856);
      v23 = *(v0 + 616);
      v24 = *(v0 + 361);
      v25 = sub_1D8B151E0();
      __swift_project_value_buffer(v25, qword_1ECA66A08);
      sub_1D8901B88(v23, v22, type metadata accessor for CVBundle);
      sub_1D88F0BF8();
      v26 = sub_1D8B151C0();
      v27 = sub_1D8B161F0();
      sub_1D8901870(v21, v20, v24);
      if (os_log_type_enabled(v26, v27))
      {
        v406 = v27;
        v28 = *(v0 + 856);
        v29 = *(v0 + 696);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v408[0] = v31;
        *v30 = 136315394;
        sub_1D8901B88(v28, v29, type metadata accessor for CVBundle.BundleType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v33 = *(v0 + 760);
        v34 = *(v0 + 752);
        v35 = *(v0 + 744);
        v36 = *(v0 + 696);
        v398 = v31;
        if (EnumCaseMultiPayload == 1)
        {
          v37 = *(v34 + 32);
          v37(v33, v36, v35);
        }

        else
        {
          v92 = *(v0 + 680);
          sub_1D8901C70(v36, v92, type metadata accessor for CVTrackSnapshot);
          (*(v34 + 16))(v33, v92, v35);
          sub_1D8901BF0(v92, type metadata accessor for CVTrackSnapshot);
          v37 = *(v34 + 32);
        }

        v395 = *(v0 + 361);
        v386 = *(v0 + 952);
        v93 = *(v0 + 944);
        v94 = *(v0 + 856);
        v95 = *(v0 + 768);
        v96 = *(v0 + 752);
        v97 = *(v0 + 744);
        v37(v95, *(v0 + 760), v97);
        sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v98 = sub_1D8B16B50();
        v100 = v99;
        (*(v96 + 8))(v95, v97);
        sub_1D8901BF0(v94, type metadata accessor for CVBundle);
        v101 = sub_1D89AC714(v98, v100, v408);

        *(v30 + 4) = v101;
        *(v30 + 12) = 2080;
        *(v0 + 568) = v93;
        *(v0 + 576) = v386;
        *(v0 + 584) = v395;
        v102 = sub_1D8B159E0();
        v104 = sub_1D89AC714(v102, v103, v408);

        *(v30 + 14) = v104;
        _os_log_impl(&dword_1D8783000, v26, v406, "[%s / %s] classified with zero results", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v398, -1, -1);
        MEMORY[0x1DA721330](v30, -1, -1);
      }

      else
      {
        v77 = *(v0 + 856);
        sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));

        sub_1D8901BF0(v77, type metadata accessor for CVBundle);
      }
    }

    else
    {
      sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));
    }

    v105 = *(v0 + 936);
    sub_1D88E0E0C();
    v106 = swift_allocError();
    *v107 = 0;
    *(v107 + 8) = xmmword_1D8B281B0;
    *(v107 + 24) = 0x80;
    *(v107 + 32) = v105;
    swift_willThrow();
    goto LABEL_50;
  }

  v6 = sub_1D8901898(*(v0 + 1016));

  v7 = *(v6 + 16);
  if (v7 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = *(v6 + 16);
  }

  v9 = *(v5 + 16);
  if (!v7)
  {

    if (v9)
    {
      if (qword_1ECA62160 != -1)
      {
        goto LABEL_145;
      }

      goto LABEL_20;
    }

    sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));
LABEL_49:
    v121 = *(v0 + 936);
    sub_1D88E0E0C();
    v106 = swift_allocError();
    *v122 = 0;
    *(v122 + 8) = 0xD000000000000015;
    *(v122 + 16) = 0x80000001D8B44010;
    *(v122 + 24) = 0x80;
    *(v122 + 32) = v121;
    swift_willThrow();

LABEL_50:
    __swift_destroy_boxed_opaque_existential_1(v0 + 136);
    *(v0 + 592) = v106;
    v123 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    if (!swift_dynamicCast())
    {
      v141 = *(v0 + 984);
      v142 = *(v0 + 976);
      v143 = *(v0 + 968);
      v144 = *(v0 + 936);
      v145 = *(v0 + 632);
      v146 = *(v0 + 362);

      swift_getErrorValue();
      v147 = sub_1D8B16C90();
      *v145 = 0;
      *(v145 + 8) = v147;
      *(v145 + 16) = v148;
      *(v145 + 24) = 64;
      *(v145 + 32) = v144;
      *(v0 + 176) = 0;
      *(v0 + 184) = v147;
      *(v0 + 192) = v148;
      *(v0 + 200) = 64;
      *(v0 + 208) = v144;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();
      sub_1D8901884(v143, v142, v141, v146);
      v149 = v106;
LABEL_58:

      v154 = *(v0 + 8);
      goto LABEL_92;
    }

    v124 = *(v0 + 672);
    v125 = *(v0 + 664);
    v126 = *(v0 + 656);
    v127 = *(v0 + 648);
    v128 = *(v0 + 640);

    (*(v127 + 32))(v125, v124, v128);
    (*(v127 + 16))(v126, v125, v128);
    v129 = (*(v127 + 88))(v126, v128);
    if (v129 != *MEMORY[0x1E69E0278])
    {
      if (v129 == *MEMORY[0x1E69E0280])
      {
        v130 = *(v0 + 984);
        v131 = *(v0 + 976);
        v132 = *(v0 + 968);
        v150 = *(v0 + 936);
        v134 = *(v0 + 664);
        v135 = *(v0 + 648);
        v136 = *(v0 + 640);
        v151 = *(v0 + 632);
        v138 = *(v0 + 362);
        sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290]);
        v152 = sub_1D8B16C90();
        *v151 = 1;
        *(v151 + 8) = v152;
        *(v151 + 16) = v153;
        *(v151 + 24) = 64;
        *(v151 + 32) = v150;
        *(v0 + 256) = 1;
        *(v0 + 264) = v152;
        *(v0 + 272) = v153;
        *(v0 + 280) = 64;
        *(v0 + 288) = v150;
        sub_1D88E0E0C();
        goto LABEL_56;
      }

      if (v129 != *MEMORY[0x1E69E0288])
      {
        v155 = *(v0 + 984);
        v156 = *(v0 + 976);
        v157 = *(v0 + 968);
        v158 = *(v0 + 936);
        v159 = *(v0 + 664);
        v160 = *(v0 + 656);
        v161 = *(v0 + 648);
        v162 = *(v0 + 640);
        v163 = *(v0 + 632);
        v164 = *(v0 + 362);
        sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290]);
        v165 = sub_1D8B16C90();
        *v163 = 0;
        *(v163 + 8) = v165;
        *(v163 + 16) = v166;
        *(v163 + 24) = 64;
        *(v163 + 32) = v158;
        *(v0 + 216) = 0;
        *(v0 + 224) = v165;
        *(v0 + 232) = v166;
        *(v0 + 240) = 64;
        *(v0 + 248) = v158;
        sub_1D88E0E0C();
        swift_willThrowTypedImpl();
        sub_1D8901884(v157, v156, v155, v164);
        v167 = *(v161 + 8);
        v167(v159, v162);
        v167(v160, v162);
        goto LABEL_57;
      }
    }

    v130 = *(v0 + 984);
    v131 = *(v0 + 976);
    v132 = *(v0 + 968);
    v133 = *(v0 + 936);
    v134 = *(v0 + 664);
    v135 = *(v0 + 648);
    v136 = *(v0 + 640);
    v137 = *(v0 + 632);
    v138 = *(v0 + 362);
    sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290]);
    v139 = sub_1D8B16C90();
    *v137 = 0;
    *(v137 + 8) = v139;
    *(v137 + 16) = v140;
    *(v137 + 24) = 64;
    *(v137 + 32) = v133;
    *(v0 + 296) = 0;
    *(v0 + 304) = v139;
    *(v0 + 312) = v140;
    *(v0 + 320) = 64;
    *(v0 + 328) = v133;
    sub_1D88E0E0C();
LABEL_56:
    swift_willThrowTypedImpl();
    sub_1D8901884(v132, v131, v130, v138);
    (*(v135 + 8))(v134, v136);
LABEL_57:
    v149 = *(v0 + 592);
    goto LABEL_58;
  }

  v405 = v6;
  v385 = v6 + 32;
  v376 = (2 * v8) | 1;
  v10 = MEMORY[0x1E69E7CC0];
  v397 = v8;
  log = *(v5 + 16);
  if (v9)
  {
    v11 = *(v0 + 992);
    v408[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F4810(0, v9, 0);
    v12 = v408[0];
    v13 = (v11 + 32);
    v14 = v9;
    do
    {
      v15 = [*v13 muid];
      v408[0] = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = v15;
        sub_1D87F4810((v16 > 1), v17 + 1, 1);
        v15 = v18;
        v12 = v408[0];
      }

      *(v12 + 16) = v17 + 1;
      *(v12 + 8 * v17 + 32) = v15;
      v13 += 5;
      --v14;
    }

    while (v14);
    v8 = v397;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v408[0] = v10;
  sub_1D87F4810(0, v8, 0);
  v54 = 32;
  v55 = v408[0];
  v56 = v8;
  do
  {
    v57 = [*(v6 + v54) muid];
    v408[0] = v55;
    v59 = *(v55 + 16);
    v58 = *(v55 + 24);
    if (v59 >= v58 >> 1)
    {
      v392 = v57;
      sub_1D87F4810((v58 > 1), v59 + 1, 1);
      v57 = v392;
      v55 = v408[0];
    }

    *(v55 + 16) = v59 + 1;
    *(v55 + 8 * v59 + 32) = v57;
    v54 += 40;
    --v56;
  }

  while (v56);
  v60 = sub_1D88E78AC(v12, v55);

  if (v60)
  {
    v61 = *(v0 + 952);
    v62 = *(v0 + 944);
    v63 = *(v0 + 361);

    sub_1D8901870(v62, v61, v63);
    if (v405[2] == v397)
    {

      v393 = v405;
    }

    else
    {
      sub_1D8AB5D04(v405, v385, 0, v376);
      v393 = v350;
    }

    v64 = *(v0 + 984);
    v65 = *(v0 + 976);
    v66 = *(v0 + 968);
    v67 = *(v0 + 936);
    v68 = *(v0 + 912);
    v400 = *(v0 + 608);
    v69 = v405[4];
    v70 = v405[7];
    v71 = *(v0 + 362);

    v72 = v69;

    sub_1D8901884(v66, v65, v64, v71);

    *v68 = v393;
    v68[1] = v70;
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for BundleClassification(0);
    v74 = *(v73 + 20);
    v75 = v400;
    goto LABEL_89;
  }

  v76 = v405;
  if (v7 == 1 || !*(v5 + 16))
  {
    goto LABEL_77;
  }

  v78 = *(*(v0 + 992) + 32);

  v394 = v78;

  v79 = v405 + 8;
  v80 = v405[4];
  v81 = *(v405 + 7);

  v374 = v80;

  v82 = 0;
  while (1)
  {
    v83 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
LABEL_140:

      v273 = v12;
LABEL_129:
      v297 = *(v0 + 952);
      v298 = *(v0 + 944);
      v299 = *(v0 + 880);
      v300 = *(v0 + 616);
      v301 = *(v0 + 361);

      v408[0] = v362;
      sub_1D88F495C(v273);
      v302 = v408[0];
      sub_1D8901B88(v300, v299, type metadata accessor for CVBundle);

      sub_1D8901B00(v298, v297, v301);

      v303 = sub_1D8B151C0();
      v304 = sub_1D8B161F0();
      sub_1D8901870(v298, v297, v301);
      if (os_log_type_enabled(v303, v304))
      {
        v305 = *(v0 + 880);
        v306 = *(v0 + 720);
        v307 = swift_slowAlloc();
        v308 = swift_slowAlloc();
        v408[0] = v308;
        *v307 = 136315650;
        sub_1D8901B88(v305, v306, type metadata accessor for CVBundle.BundleType);
        v309 = swift_getEnumCaseMultiPayload();
        v310 = *(v0 + 808);
        v311 = *(v0 + 752);
        v312 = *(v0 + 744);
        v313 = *(v0 + 720);
        v404 = v303;
        v389 = v304;
        loge = v308;
        if (v309 == 1)
        {
          v314 = *(v311 + 32);
          v314(v310, v313, v312);
        }

        else
        {
          v319 = *(v0 + 680);
          sub_1D8901C70(v313, v319, type metadata accessor for CVTrackSnapshot);
          (*(v311 + 16))(v310, v319, v312);
          sub_1D8901BF0(v319, type metadata accessor for CVTrackSnapshot);
          v314 = *(v311 + 32);
        }

        v369 = *(v0 + 361);
        v360 = *(v0 + 944);
        v364 = *(v0 + 952);
        v357 = *(v0 + 880);
        v320 = *(v0 + 816);
        v321 = *(v0 + 752);
        v322 = *(v0 + 744);
        v314(v320, *(v0 + 808), v322);
        sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v323 = sub_1D8B16B50();
        v325 = v324;
        (*(v321 + 8))(v320, v322);
        sub_1D8901BF0(v357, type metadata accessor for CVBundle);
        v326 = sub_1D89AC714(v323, v325, v408);

        *(v307 + 4) = v326;
        *(v307 + 12) = 2080;
        *(v0 + 472) = v360;
        *(v0 + 480) = v364;
        *(v0 + 488) = v369;
        v327 = sub_1D8B159E0();
        v329 = sub_1D89AC714(v327, v328, v408);

        *(v307 + 14) = v329;
        *(v307 + 22) = 2048;
        v330 = *(v302 + 16);

        *(v307 + 24) = v330;

        _os_log_impl(&dword_1D8783000, v404, v389, "[%s / %s] classified with %ld results", v307, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](loge, -1, -1);
        MEMORY[0x1DA721330](v307, -1, -1);
      }

      else
      {
        v315 = *(v0 + 952);
        v316 = *(v0 + 944);
        v317 = *(v0 + 880);
        v318 = *(v0 + 361);

        sub_1D8901870(v316, v315, v318);

        sub_1D8901BF0(v317, type metadata accessor for CVBundle);
      }

      v390 = *(v0 + 984);
      v331 = *(v0 + 976);
      v332 = *(v0 + 968);
      v67 = *(v0 + 936);
      v230 = *(v0 + 608);
      v333 = v405[4];
      v334 = v405[7];
      v335 = *(v0 + 362);

      v336 = v333;

      sub_1D8901884(v332, v331, v390, v335);

      *v230 = v302;
      v230[1] = v334;
      swift_storeEnumTagMultiPayload();
      v73 = type metadata accessor for BundleClassification(0);
      v337 = v230 + *(v73 + 20);
      *v337 = 2;
      *(v337 + 8) = 0u;
      *(v337 + 24) = 0u;
      sub_1D88E0FE4(2, 0, 0, 0);
      *v337 = 2;
      *(v337 + 8) = 0u;
      *(v337 + 24) = 0u;
      goto LABEL_90;
    }

    v60 = *(v79 - 3);
    v84 = *(v79 - 2);
    v12 = *v79;
    v85 = *(v79 - 1);
    v86 = *(v79 - 4);

    v87 = v86;
    v88 = v84;
    v89 = v87;

    v90 = [v89 muid];
    if (v90 == [v394 muid])
    {
      break;
    }

    ++v82;
    v79 += 5;
    if (v83 == v397)
    {

      v76 = v405;
      goto LABEL_78;
    }
  }

  v76 = v405;
  if (!log)
  {
    goto LABEL_76;
  }

  if (log != 1)
  {
    if (vabdd_f64(v85, v81) > 0.1)
    {
      goto LABEL_76;
    }

    v371 = v12;
    v377 = v88;
    if (qword_1ECA62160 != -1)
    {
      swift_once();
    }

    v232 = *(v0 + 952);
    v233 = *(v0 + 944);
    v234 = *(v0 + 888);
    v235 = *(v0 + 616);
    v236 = *(v0 + 361);
    v237 = sub_1D8B151E0();
    __swift_project_value_buffer(v237, qword_1ECA66A08);
    sub_1D8901B88(v235, v234, type metadata accessor for CVBundle);
    v238 = v233;
    v239 = v233;
    v240 = v232;
    sub_1D8901B00(v238, v232, v236);
    v241 = sub_1D8B151C0();
    v242 = sub_1D8B16200();
    sub_1D8901870(v239, v240, v236);
    v243 = os_log_type_enabled(v241, v242);
    v244 = *(v0 + 888);
    if (v243)
    {
      v367 = v242;
      logc = v241;
      v245 = *(v0 + 728);
      v246 = swift_slowAlloc();
      v363 = swift_slowAlloc();
      v408[0] = v363;
      v359 = v246;
      *v246 = 136315394;
      sub_1D8901B88(v244, v245, type metadata accessor for CVBundle.BundleType);
      v247 = swift_getEnumCaseMultiPayload();
      v248 = *(v0 + 824);
      v249 = *(v0 + 752);
      v250 = *(v0 + 744);
      if (v247 == 1)
      {
        v251 = *(v249 + 32);
        v251(*(v0 + 824), *(v0 + 728), *(v0 + 744));
      }

      else
      {
        v259 = *(v0 + 680);
        sub_1D8901C70(*(v0 + 728), v259, type metadata accessor for CVTrackSnapshot);
        (*(v249 + 16))(v248, v259, v250);
        sub_1D8901BF0(v259, type metadata accessor for CVTrackSnapshot);
        v251 = *(v249 + 32);
      }

      v354 = *(v0 + 944);
      v356 = *(v0 + 952);
      v352 = *(v0 + 888);
      v260 = *(v0 + 832);
      v261 = *(v0 + 752);
      v262 = *(v0 + 744);
      v263 = *(v0 + 361);
      v251(v260, *(v0 + 824), v262);
      sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v264 = sub_1D8B16B50();
      v266 = v265;
      (*(v261 + 8))(v260, v262);
      sub_1D8901BF0(v352, type metadata accessor for CVBundle);
      v267 = sub_1D89AC714(v264, v266, v408);

      *(v359 + 1) = v267;
      *(v359 + 6) = 2080;
      *(v0 + 496) = v354;
      *(v0 + 504) = v356;
      *(v0 + 512) = v263;
      sub_1D8901B00(v354, v356, v263);
      v268 = sub_1D8B159E0();
      v270 = sub_1D89AC714(v268, v269, v408);

      *(v359 + 14) = v270;
      _os_log_impl(&dword_1D8783000, logc, v367, "[%s / %s] New classification has different top result, but previous top result is still contained in result set with sufficient score. Reordering results to preserve existing top result", v359, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v363, -1, -1);
      MEMORY[0x1DA721330](v359, -1, -1);
    }

    else
    {

      sub_1D8901BF0(v244, type metadata accessor for CVBundle);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633C0);
    v271 = swift_allocObject();
    *(v271 + 16) = xmmword_1D8B1AB90;
    *(v271 + 32) = v89;
    *(v271 + 40) = v60;
    *(v271 + 48) = v377;
    *(v271 + 56) = v85;
    v362 = v271;
    *(v271 + 64) = v371;
    v366 = v89;

    v272 = 0;
    v273 = MEMORY[0x1E69E7CC0];
    v274 = v397;
    while (1)
    {
      if (v272 >= v274)
      {
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        swift_once();
LABEL_20:
        v38 = *(v0 + 952);
        v39 = *(v0 + 944);
        v40 = *(v0 + 864);
        v41 = *(v0 + 616);
        v42 = *(v0 + 361);
        v43 = sub_1D8B151E0();
        __swift_project_value_buffer(v43, qword_1ECA66A08);
        sub_1D8901B88(v41, v40, type metadata accessor for CVBundle);
        sub_1D88F0BF8();
        v44 = sub_1D8B151C0();
        v45 = sub_1D8B161F0();
        sub_1D8901870(v39, v38, v42);
        if (os_log_type_enabled(v44, v45))
        {
          v399 = v45;
          v46 = *(v0 + 864);
          v47 = *(v0 + 704);
          v48 = swift_slowAlloc();
          v391 = swift_slowAlloc();
          v408[0] = v391;
          *v48 = 136315394;
          sub_1D8901B88(v46, v47, type metadata accessor for CVBundle.BundleType);
          v49 = swift_getEnumCaseMultiPayload();
          v50 = *(v0 + 776);
          v51 = *(v0 + 752);
          v52 = *(v0 + 744);
          if (v49 == 1)
          {
            v53 = *(v51 + 32);
            v53(*(v0 + 776), *(v0 + 704), *(v0 + 744));
          }

          else
          {
            v108 = *(v0 + 680);
            sub_1D8901C70(*(v0 + 704), v108, type metadata accessor for CVTrackSnapshot);
            (*(v51 + 16))(v50, v108, v52);
            sub_1D8901BF0(v108, type metadata accessor for CVTrackSnapshot);
            v53 = *(v51 + 32);
          }

          v387 = *(v0 + 361);
          logf = *(v0 + 952);
          v109 = *(v0 + 944);
          v110 = *(v0 + 864);
          v111 = *(v0 + 784);
          v112 = *(v0 + 752);
          v113 = *(v0 + 744);
          v53(v111, *(v0 + 776), v113);
          sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
          v114 = sub_1D8B16B50();
          v116 = v115;
          (*(v112 + 8))(v111, v113);
          sub_1D8901BF0(v110, type metadata accessor for CVBundle);
          v117 = sub_1D89AC714(v114, v116, v408);

          *(v48 + 4) = v117;
          *(v48 + 12) = 2080;
          *(v0 + 544) = v109;
          *(v0 + 552) = logf;
          *(v0 + 560) = v387;
          v118 = sub_1D8B159E0();
          v120 = sub_1D89AC714(v118, v119, v408);

          *(v48 + 14) = v120;
          _os_log_impl(&dword_1D8783000, v44, v399, "[%s / %s] classified with zero results", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v391, -1, -1);
          MEMORY[0x1DA721330](v48, -1, -1);
        }

        else
        {
          v91 = *(v0 + 864);
          sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));

          sub_1D8901BF0(v91, type metadata accessor for CVBundle);
        }

        goto LABEL_49;
      }

      v275 = v272 + 1;
      if (__OFADD__(v272, 1))
      {
        goto LABEL_144;
      }

      v12 = v273;
      v276 = v385 + 40 * v272;
      v277 = *(v276 + 32);
      v278 = *(v276 + 24);
      v279 = *v276;
      v280 = *(v276 + 16);
      logd = *(v276 + 8);

      v60 = v279;

      v281 = [v60 muid];
      if (v281 != [v394 muid])
      {
        break;
      }

      if (v275 == v397)
      {
        goto LABEL_128;
      }

      if (v275 >= v397)
      {
        goto LABEL_143;
      }

      v272 = v275 + 1;
      if (__OFADD__(v275, 1))
      {
        goto LABEL_144;
      }

      v282 = v385 + 40 * v275;
      v283 = *(v282 + 32);
      v278 = *(v282 + 24);
      v284 = *v282;
      v280 = *(v282 + 16);
      logd = *(v282 + 8);

      v60 = v284;

      v285 = [v60 muid];
      if (v285 == [v394 muid])
      {

        if (v272 == v397)
        {
          goto LABEL_128;
        }

        if (v272 >= v397)
        {
          goto LABEL_143;
        }

        v275 = v272 + 1;
        if (__OFADD__(v272, 1))
        {
          goto LABEL_144;
        }

        v286 = v385 + 40 * v272;
        v277 = *(v286 + 32);
        v278 = *(v286 + 24);
        v287 = *v286;
        v280 = *(v286 + 16);
        logd = *(v286 + 8);

        v60 = v287;

        v288 = [v60 muid];
        if (v288 != [v394 muid])
        {
          break;
        }

        if (v275 == v397)
        {
LABEL_128:
          v273 = v12;
          goto LABEL_129;
        }

        if (v275 >= v397)
        {
          goto LABEL_143;
        }

        v272 = v275 + 1;
        if (__OFADD__(v275, 1))
        {
          goto LABEL_144;
        }

        v289 = v385 + 40 * v275;
        v278 = *(v289 + 24);
        v290 = *v289;
        v280 = *(v289 + 16);
        logd = *(v289 + 8);
        v283 = *(v289 + 32);

        v60 = v290;

        v291 = [v60 muid];
        if (v291 == [v394 muid])
        {
          goto LABEL_140;
        }
      }

      v273 = v12;
      v277 = v283;
LABEL_122:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v408[0] = v273;
      v293 = v277;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F476C(0, *(v273 + 16) + 1, 1);
        v273 = v408[0];
      }

      v295 = *(v273 + 16);
      v294 = *(v273 + 24);
      if (v295 >= v294 >> 1)
      {
        sub_1D87F476C((v294 > 1), v295 + 1, 1);
        v273 = v408[0];
      }

      *(v273 + 16) = v295 + 1;
      v296 = (v273 + 40 * v295);
      v296[4] = v60;
      v296[5] = logd;
      v296[6] = v280;
      v296[7] = v278;
      v296[8] = v293;
      v274 = v397;
      if (v272 == v397)
      {
        goto LABEL_129;
      }
    }

    v272 = v275;
    v273 = v12;
    goto LABEL_122;
  }

  v168 = [v374 muid];
  if (v168 == [v394 muid] && (vabdd_f64(v85, v81) <= 0.1 ? (v169 = v81 < 0.7) : (v169 = 0), v169))
  {
    if (qword_1ECA62160 != -1)
    {
      swift_once();
    }

    v170 = *(v0 + 952);
    v171 = *(v0 + 944);
    v172 = *(v0 + 896);
    v173 = *(v0 + 616);
    v174 = *(v0 + 361);
    v175 = sub_1D8B151E0();
    __swift_project_value_buffer(v175, qword_1ECA66A08);
    sub_1D8901B88(v173, v172, type metadata accessor for CVBundle);
    sub_1D8901B00(v171, v170, v174);
    v176 = sub_1D8B151C0();
    v177 = sub_1D8B16200();
    sub_1D8901870(v171, v170, v174);
    if (os_log_type_enabled(v176, v177))
    {
      v388 = v177;
      v401 = v176;
      v178 = *(v0 + 896);
      v179 = *(v0 + 736);
      v180 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v408[0] = loga;
      v181 = v180;
      *v180 = 136315394;
      sub_1D8901B88(v178, v179, type metadata accessor for CVBundle.BundleType);
      v182 = swift_getEnumCaseMultiPayload();
      v183 = *(v0 + 840);
      v184 = *(v0 + 752);
      v185 = *(v0 + 744);
      if (v182 == 1)
      {
        v186 = *(v184 + 32);
        v186(*(v0 + 840), *(v0 + 736), *(v0 + 744));
      }

      else
      {
        v338 = *(v0 + 680);
        sub_1D8901C70(*(v0 + 736), v338, type metadata accessor for CVTrackSnapshot);
        (*(v184 + 16))(v183, v338, v185);
        sub_1D8901BF0(v338, type metadata accessor for CVTrackSnapshot);
        v186 = *(v184 + 32);
      }

      v368 = *(v0 + 976);
      v370 = *(v0 + 984);
      v365 = *(v0 + 968);
      v358 = *(v0 + 361);
      v353 = *(v0 + 944);
      v355 = *(v0 + 952);
      v339 = *(v0 + 896);
      v340 = *(v0 + 848);
      v341 = *(v0 + 752);
      v342 = *(v0 + 744);
      v361 = *(v0 + 362);
      v186(v340, *(v0 + 840), v342);
      sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v343 = sub_1D8B16B50();
      v345 = v344;
      (*(v341 + 8))(v340, v342);
      sub_1D8901BF0(v339, type metadata accessor for CVBundle);
      v346 = sub_1D89AC714(v343, v345, v408);

      *(v181 + 1) = v346;
      *(v181 + 6) = 2080;
      *(v0 + 520) = v353;
      *(v0 + 528) = v355;
      *(v0 + 536) = v358;
      v347 = sub_1D8B159E0();
      v349 = sub_1D89AC714(v347, v348, v408);

      *(v181 + 14) = v349;
      _os_log_impl(&dword_1D8783000, v401, v388, "[%s / %s] Existing classification had only one result, which is the top result in new multi-result set, with sufficient score. Preserving existing classification", v181, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](loga, -1, -1);
      MEMORY[0x1DA721330](v181, -1, -1);

      sub_1D8901884(v365, v368, v370, v361);
    }

    else
    {
      v252 = *(v0 + 984);
      v403 = *(v0 + 976);
      v253 = *(v0 + 968);
      v254 = *(v0 + 952);
      v255 = *(v0 + 944);
      v256 = *(v0 + 896);
      v257 = *(v0 + 361);
      v258 = *(v0 + 362);

      sub_1D8901870(v255, v254, v257);

      sub_1D8901884(v253, v403, v252, v258);

      sub_1D8901BF0(v256, type metadata accessor for CVBundle);
    }

    sub_1D8901B88(*(v0 + 624), *(v0 + 608), type metadata accessor for BundleClassification);
  }

  else
  {
LABEL_76:

LABEL_77:

LABEL_78:
    if (qword_1ECA62160 != -1)
    {
      swift_once();
    }

    v187 = *(v0 + 952);
    v188 = *(v0 + 944);
    v189 = *(v0 + 872);
    v190 = *(v0 + 616);
    v191 = *(v0 + 361);
    v192 = sub_1D8B151E0();
    __swift_project_value_buffer(v192, qword_1ECA66A08);
    sub_1D8901B88(v190, v189, type metadata accessor for CVBundle);

    sub_1D8901B00(v188, v187, v191);

    v193 = sub_1D8B151C0();
    v194 = sub_1D8B161F0();
    sub_1D8901870(v188, v187, v191);
    if (os_log_type_enabled(v193, v194))
    {
      v396 = v194;
      v195 = *(v0 + 872);
      v196 = *(v0 + 712);
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v408[0] = v198;
      *v197 = 136315650;
      sub_1D8901B88(v195, v196, type metadata accessor for CVBundle.BundleType);
      v199 = swift_getEnumCaseMultiPayload();
      v200 = *(v0 + 792);
      v201 = *(v0 + 752);
      v202 = *(v0 + 744);
      v203 = *(v0 + 712);
      logb = v198;
      if (v199 == 1)
      {
        v204 = *(v201 + 32);
        v204(v200, v203, v202);
      }

      else
      {
        v210 = *(v0 + 680);
        sub_1D8901C70(v203, v210, type metadata accessor for CVTrackSnapshot);
        (*(v201 + 16))(v200, v210, v202);
        sub_1D8901BF0(v210, type metadata accessor for CVTrackSnapshot);
        v204 = *(v201 + 32);
      }

      v375 = *(v0 + 361);
      v372 = *(v0 + 944);
      v373 = *(v0 + 952);
      v211 = *(v0 + 872);
      v212 = *(v0 + 800);
      v213 = *(v0 + 752);
      v214 = *(v0 + 744);
      v204(v212, *(v0 + 792), v214);
      sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v215 = sub_1D8B16B50();
      v217 = v216;
      (*(v213 + 8))(v212, v214);
      sub_1D8901BF0(v211, type metadata accessor for CVBundle);
      v218 = sub_1D89AC714(v215, v217, v408);

      *(v197 + 4) = v218;
      *(v197 + 12) = 2080;
      *(v0 + 448) = v372;
      *(v0 + 456) = v373;
      *(v0 + 464) = v375;
      v219 = sub_1D8B159E0();
      v221 = sub_1D89AC714(v219, v220, v408);

      *(v197 + 14) = v221;
      *(v197 + 22) = 2048;
      v76 = v405;

      v209 = v397;
      *(v197 + 24) = v397;

      _os_log_impl(&dword_1D8783000, v193, v396, "[%s / %s] classified with %ld results", v197, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](logb, -1, -1);
      MEMORY[0x1DA721330](v197, -1, -1);
    }

    else
    {
      v205 = *(v0 + 952);
      v206 = *(v0 + 944);
      v207 = *(v0 + 872);
      v208 = *(v0 + 361);

      sub_1D8901870(v206, v205, v208);

      sub_1D8901BF0(v207, type metadata accessor for CVBundle);
      v209 = v397;
    }

    if (v76[2].isa == v209)
    {

      v402 = v76;
    }

    else
    {
      sub_1D8AB5D04(v76, v385, 0, v376);
      v402 = v351;
    }

    v222 = *(v0 + 984);
    v223 = *(v0 + 976);
    v224 = *(v0 + 968);
    v67 = *(v0 + 936);
    v68 = *(v0 + 920);
    v407 = *(v0 + 608);
    isa = v76[4].isa;
    v226 = v76[7].isa;
    v227 = *(v0 + 362);

    v228 = isa;

    sub_1D8901884(v224, v223, v222, v227);

    *v68 = v402;
    v68[1] = v226;
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for BundleClassification(0);
    v74 = *(v73 + 20);
    v75 = v407;
LABEL_89:
    v229 = v75 + v74;
    *v229 = 2;
    *(v229 + 8) = 0u;
    *(v229 + 24) = 0u;
    v230 = v75;
    sub_1D8901C70(v68, v75, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D88E0FE4(*v229, *(v229 + 8), *(v229 + 16), *(v229 + 24));
    *v229 = 2;
    *(v229 + 8) = 0u;
    *(v229 + 24) = 0u;
LABEL_90:
    *(v230 + *(v73 + 24)) = v67;
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  v154 = *(v0 + 8);
LABEL_92:

  return v154();
}

uint64_t sub_1D88FE608()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D88FE6A0, 0, 0);
}

uint64_t sub_1D88FE6A0()
{
  *(v0 + 1048) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FE72C, v2, v1);
}

uint64_t sub_1D88FE72C()
{

  *(v0 + 1056) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D88FE7A0, 0, 0);
}

uint64_t sub_1D88FE7A0()
{
  *(v0 + 1064) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FE82C, v2, v1);
}

uint64_t sub_1D88FE82C()
{

  if (sub_1D89B46EC())
  {
    sub_1D89B1580();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D88FE8A8, 0, 0);
}

uint64_t sub_1D88FE8A8()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 632);
  *v2 = 0;
  *(v2 + 8) = xmmword_1D8B281A0;
  *(v2 + 24) = 2;
  *(v2 + 32) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = xmmword_1D8B281A0;
  *(v0 + 120) = 2;
  *(v0 + 128) = v1;
  sub_1D88E0E0C();
  swift_willThrowTypedImpl();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D88FEB10()
{
  sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));
  v1 = *(v0 + 1024);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  *(v0 + 592) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if (!swift_dynamicCast())
  {
    v20 = *(v0 + 984);
    v21 = *(v0 + 976);
    v22 = *(v0 + 968);
    v23 = *(v0 + 936);
    v24 = *(v0 + 632);
    v25 = *(v0 + 362);

    swift_getErrorValue();
    v26 = sub_1D8B16C90();
    *v24 = 0;
    *(v24 + 8) = v26;
    *(v24 + 16) = v27;
    *(v24 + 24) = 64;
    *(v24 + 32) = v23;
    *(v0 + 176) = 0;
    *(v0 + 184) = v26;
    *(v0 + 192) = v27;
    *(v0 + 200) = 64;
    *(v0 + 208) = v23;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();
    sub_1D8901884(v22, v21, v20, v25);
    v28 = v1;
    goto LABEL_9;
  }

  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);

  (*(v6 + 32))(v4, v3, v7);
  (*(v6 + 16))(v5, v4, v7);
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 != *MEMORY[0x1E69E0278])
  {
    if (v8 == *MEMORY[0x1E69E0280])
    {
      v9 = *(v0 + 984);
      v10 = *(v0 + 976);
      v11 = *(v0 + 968);
      v29 = *(v0 + 936);
      v13 = *(v0 + 664);
      v14 = *(v0 + 648);
      v15 = *(v0 + 640);
      v30 = *(v0 + 632);
      v17 = *(v0 + 362);
      sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290]);
      v31 = sub_1D8B16C90();
      *v30 = 1;
      *(v30 + 8) = v31;
      *(v30 + 16) = v32;
      *(v30 + 24) = 64;
      *(v30 + 32) = v29;
      *(v0 + 256) = 1;
      *(v0 + 264) = v31;
      *(v0 + 272) = v32;
      *(v0 + 280) = 64;
      *(v0 + 288) = v29;
      sub_1D88E0E0C();
      goto LABEL_7;
    }

    if (v8 != *MEMORY[0x1E69E0288])
    {
      v35 = *(v0 + 984);
      v36 = *(v0 + 976);
      v37 = *(v0 + 968);
      v38 = *(v0 + 936);
      v39 = *(v0 + 664);
      v40 = *(v0 + 656);
      v41 = *(v0 + 648);
      v42 = *(v0 + 640);
      v43 = *(v0 + 632);
      v44 = *(v0 + 362);
      sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290]);
      v45 = sub_1D8B16C90();
      *v43 = 0;
      *(v43 + 8) = v45;
      *(v43 + 16) = v46;
      *(v43 + 24) = 64;
      *(v43 + 32) = v38;
      *(v0 + 216) = 0;
      *(v0 + 224) = v45;
      *(v0 + 232) = v46;
      *(v0 + 240) = 64;
      *(v0 + 248) = v38;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();
      sub_1D8901884(v37, v36, v35, v44);
      v47 = *(v41 + 8);
      v47(v39, v42);
      v47(v40, v42);
      goto LABEL_8;
    }
  }

  v9 = *(v0 + 984);
  v10 = *(v0 + 976);
  v11 = *(v0 + 968);
  v12 = *(v0 + 936);
  v13 = *(v0 + 664);
  v14 = *(v0 + 648);
  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 362);
  sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290]);
  v18 = sub_1D8B16C90();
  *v16 = 0;
  *(v16 + 8) = v18;
  *(v16 + 16) = v19;
  *(v16 + 24) = 64;
  *(v16 + 32) = v12;
  *(v0 + 296) = 0;
  *(v0 + 304) = v18;
  *(v0 + 312) = v19;
  *(v0 + 320) = 64;
  *(v0 + 328) = v12;
  sub_1D88E0E0C();
LABEL_7:
  swift_willThrowTypedImpl();
  sub_1D8901884(v11, v10, v9, v17);
  (*(v14 + 8))(v13, v15);
LABEL_8:
  v28 = *(v0 + 592);
LABEL_9:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D88FF158()
{
  *(v0 + 160) = sub_1D8B15E80();
  *(v0 + 168) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF1F0, v2, v1);
}

uint64_t sub_1D88FF1F0()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D88FF288, 0, 0);
}

uint64_t sub_1D88FF288()
{
  *(v0 + 176) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF314, v2, v1);
}

uint64_t sub_1D88FF314()
{

  *(v0 + 184) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D88FF388, 0, 0);
}

uint64_t sub_1D88FF388()
{
  *(v0 + 192) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF414, v2, v1);
}

uint64_t sub_1D88FF414()
{
  v1 = v0[23];

  swift_getKeyPath();
  v0[10] = v1;
  v0[25] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler___observationRegistrar;
  v0[26] = sub_1D8901B40(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  if (v2)
  {
    v3 = v0[23];
    swift_getKeyPath();
    v0[10] = v3;
    v4 = v2;
    sub_1D8B13520();

    v5 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading;
    v0[27] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading;
    v6 = *(v3 + v5);
    v7 = v6;
    v0[28] = sub_1D89AFE24(v6);

    v8 = sub_1D88FF59C;
  }

  else
  {
    v8 = sub_1D8900078;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D88FF59C()
{
  *(v0 + 232) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF628, v2, v1);
}

uint64_t sub_1D88FF628()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FF690, 0, 0);
}

uint64_t sub_1D88FF690()
{
  *(v0 + 240) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF71C, v2, v1);
}

uint64_t sub_1D88FF71C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FF784, 0, 0);
}

uint64_t sub_1D88FF784()
{
  *(v0 + 248) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF810, v2, v1);
}

uint64_t sub_1D88FF810()
{
  v1 = *(v0 + 184);

  *(v0 + 256) = *(*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_headingUpdatePublisher) + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_authorizationInfo + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D88FF89C, 0, 0);
}

uint64_t sub_1D88FF89C()
{
  v1 = v0[28];
  if (v0[32])
  {
    v2 = v0[19];

    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    *(v0[19] + 24) = -1;
    v3 = v0[1];

    return v3();
  }

  else if ([objc_opt_self() isLocationShiftRequiredForLocation_])
  {
    if (qword_1ECA620F8 != -1)
    {
      swift_once();
    }

    v5 = v0[28];
    v6 = qword_1ECA650B0;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D88FFAF8;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650F0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D89000A4;
    v0[13] = &block_descriptor_3;
    v0[14] = v7;
    [v6 shiftLocation:v5 withCompletionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v0[33] = v0[28];
    v0[34] = sub_1D8B15E70();
    v9 = sub_1D8B15E00();

    return MEMORY[0x1EEE6DFA0](sub_1D88FFCC8, v9, v8);
  }
}

uint64_t sub_1D88FFAF8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FFBD8, 0, 0);
}

uint64_t sub_1D88FFBD8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    *(v0 + 264) = v1;
    *(v0 + 272) = sub_1D8B15E70();
    v3 = sub_1D8B15E00();

    return MEMORY[0x1EEE6DFA0](sub_1D88FFCC8, v3, v2);
  }

  else
  {
    v4 = *(v0 + 152);

    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *(*(v0 + 152) + 24) = -1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D88FFCC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FFD30, 0, 0);
}

uint64_t sub_1D88FFD30()
{
  *(v0 + 280) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FFDBC, v2, v1);
}

uint64_t sub_1D88FFDBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FFE24, 0, 0);
}

uint64_t sub_1D88FFE24()
{
  *(v0 + 288) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FFEB0, v2, v1);
}

uint64_t sub_1D88FFEB0()
{
  v1 = v0[27];
  v2 = v0[23];

  swift_getKeyPath();
  v0[10] = v2;
  sub_1D8B13520();

  v3 = *(v2 + v1);
  v0[37] = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D88FFF74, 0, 0);
}

uint64_t sub_1D88FFF74()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 224);
  v4 = *(v0 + 152);
  if (v1)
  {
    [*(v0 + 296) trueHeading];
    v12 = v5;
    [v1 headingAccuracy];
    v11 = v6;

    *v4 = v2;
    v7.f64[0] = v12;
    v7.f64[1] = v11;
    *(v4 + 8) = vdivq_f64(vmulq_f64(v7, vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL));
    v8 = 2;
  }

  else
  {

    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v8 = 1;
    *v4 = v2;
  }

  *(*(v0 + 152) + 24) = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D8900078()
{
  v1 = *(v0 + 152);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  *(*(v0 + 152) + 24) = -1;
  return (*(v0 + 8))();
}

uint64_t sub_1D89000A4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1D8900120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D88FACA0(a1, a2, a3, v9, v5 + 16);
}

uint64_t sub_1D89001F0(void *a1, float *a2, float a3)
{
  if (*a2 < a3)
  {
    return 0;
  }

  if (*a1 == 0x6E776F6E6B6E75 && a1[1] == 0xE700000000000000)
  {
    return 0;
  }

  else
  {
    return (sub_1D8B16BA0() ^ 1) & 1;
  }
}

uint64_t sub_1D890026C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D8B16610();
LABEL_9:
  result = sub_1D8B16750();
  *v1 = result;
  return result;
}

void sub_1D890030C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 32);
  if (v6 == 14)
  {
    goto LABEL_4;
  }

  LOBYTE(v8) = a3;
  v9 = *(a2 + 32);
  v10 = *a4;
  v11 = sub_1D881F7DC(v6);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1D8971854(v16, v8 & 1);
    v11 = sub_1D881F7DC(v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = sub_1D8B16C30();
    __break(1u);
  }

  if (v8)
  {
LABEL_10:
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    v22 = *a4;
    *(*a4 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v22[6] + v11) = v6;
    *(v22[7] + 8 * v11) = v9;
    v23 = v22[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v22[2] = v24;
      v25 = *(a1 + 16);
      if (v25 == 1)
      {
LABEL_4:

        return;
      }

      v26 = 0;
      v8 = a1 + 33;
      while (1)
      {
        v27 = v26 + 1;
        if (v26 + 1 >= v25)
        {
          goto LABEL_30;
        }

        v28 = *(a2 + 16);
        if (v27 == v28)
        {
          goto LABEL_4;
        }

        if (v27 >= v28)
        {
          goto LABEL_31;
        }

        v6 = *(v8 + v26);
        if (v6 == 14)
        {
          goto LABEL_4;
        }

        v9 = *(a2 + 40 + 8 * v26);
        v29 = *a4;
        v30 = sub_1D881F7DC(v6);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v15 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v15)
        {
          goto LABEL_28;
        }

        v17 = v31;
        if (v29[3] < v34)
        {
          sub_1D8971854(v34, 1);
          v30 = sub_1D881F7DC(v6);
          if ((v17 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        if (v17)
        {
          goto LABEL_11;
        }

        v36 = *a4;
        *(*a4 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        *(v36[6] + v30) = v6;
        *(v36[7] + 8 * v30) = v9;
        v37 = v36[2];
        v15 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v15)
        {
          break;
        }

        v36[2] = v38;
        v25 = *(a1 + 16);
        v39 = v26 + 2;
        ++v26;
        if (v39 == v25)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = v11;
  sub_1D89692F4();
  v11 = v21;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_32:
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B421B0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](39, 0xE100000000000000);
  sub_1D8B168C0();
  __break(1u);
}

void *sub_1D89006B0(void *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1D8900918(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_1D8900728(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, int *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D8900A90(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D89007B8(uint64_t a1)
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
    result = sub_1D8900918(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D89006B0(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1D8900918(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 4 * v14) >= 0.6)
    {
      v15 = (*(a3 + 48) + 16 * v14);
      result = *v15;
      if (*v15 != 0x6E776F6E6B6E75 || v15[1] != 0xE700000000000000)
      {
        result = sub_1D8B16BA0();
        if ((result & 1) == 0)
        {
          *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          if (__OFADD__(v4++, 1))
          {
            __break(1u);
            return sub_1D8AF41F0(v19, a2, v4, a3);
          }
        }
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

    if (v5 >= v10)
    {
      return sub_1D8AF41F0(v19, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8900A90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, int *))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    v26 = *(v15 + 4 * v14);

    v18 = a4(v25, &v26);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1D8AF41F0(v21, a2, v22, a3);
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

    if (v5 >= v10)
    {
      return sub_1D8AF41F0(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8900C08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D8B16610();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D8B16610();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D881CF20(&qword_1EE0E3930, &qword_1ECA65108);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65108);
            v9 = sub_1D8A729F8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D881F764(0, &qword_1EE0E3768);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8900DBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D8B16610();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D8B16610();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D881CF20(&qword_1ECA650D8, &qword_1ECA650D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650D0);
            v9 = sub_1D8A728F0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CVTrackedDetection(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8900F60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = v1[2];
  if (v7)
  {
LABEL_2:
    v8 = *(v7 + 16);
    v9 = v1[3];
    if (v9 == v8)
    {
      v10 = type metadata accessor for CVTrackSnapshot(0);
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      result = sub_1D87A14E4(v6, &qword_1ECA63E20);
      goto LABEL_4;
    }

    if (v9 < v8)
    {
      v14 = type metadata accessor for CVTrackSnapshot(0);
      v15 = *(v14 - 8);
      sub_1D8901B88(v7 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v9, v6, type metadata accessor for CVTrackSnapshot);
      v1[3] = v9 + 1;
      (*(v15 + 56))(v6, 0, 1, v14);
      return sub_1D8901800(v6, a1);
    }
  }

  else
  {
    while (1)
    {
LABEL_4:
      v11 = v1[1];
      v12 = *(*v1 + 16);
      if (v11 == v12)
      {
        v13 = type metadata accessor for CVTrackSnapshot(0);
        return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
      }

      if (v11 >= v12)
      {
        break;
      }

      v7 = *(*v1 + 8 * v11 + 32);
      v1[1] = v11 + 1;

      v1[2] = v7;
      v1[3] = 0;
      if (v7)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D89011A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8901B88(a1, v7, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D8B13240();
    (*(*(v8 - 8) + 8))(v7, v8);
    return 0;
  }

  sub_1D8901BF0(v7, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestEstimate.getter(&v43);
  if (v43 >> 60)
  {

LABEL_13:
    v14 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = swift_projectBox();
    sub_1D87A0E38(v9, v4, &qword_1ECA67750);

    v10 = sub_1D88F8978();
    v11 = *(v10 + 16) + 1;
    v12 = 32;
    do
    {
      if (!--v11)
      {

        sub_1D87A14E4(v4, &qword_1ECA67750);
        goto LABEL_13;
      }

      v13 = *(v10 + v12);
      v12 += 8;
    }

    while (v13 != 28);

    v14 = sub_1D87C8F58(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = (v16 + 1);
    if (v16 >= v15 >> 1)
    {
LABEL_59:
      v14 = sub_1D87C8F58((v15 > 1), v17, 1, v14);
    }

    sub_1D87A14E4(v4, &qword_1ECA67750);
    *(v14 + 2) = v17;
    v14[v16 + 32] = 12;
    v16 = *(v14 + 2);
    if (!v16)
    {
LABEL_9:

      return 0;
    }
  }

  v43 = MEMORY[0x1E69E7CC0];

  sub_1D87F4140(0, v16, 0);
  v4 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
  v19 = 32;
  do
  {
    v20 = v14[v19];
    v17 = sub_1D8B16910();
    v21 = sub_1D881F7DC(1);
    if (v22)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v23 = v17 + 8;
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
    *(v17[6] + v21) = 1;
    *(v17[7] + 8 * v21) = 0x4024000000000000;
    v24 = v17[2];
    v25 = __OFADD__(v24, 1);
    v15 = v24 + 1;
    if (v25)
    {
      goto LABEL_52;
    }

    v17[2] = v15;
    v26 = sub_1D881F7DC(12);
    if (v27)
    {
      goto LABEL_53;
    }

    *(v23 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(v17[6] + v26) = 12;
    *(v17[7] + 8 * v26) = 0x4024000000000000;
    v28 = v17[2];
    v25 = __OFADD__(v28, 1);
    v15 = v28 + 1;
    if (v25)
    {
      goto LABEL_54;
    }

    v17[2] = v15;
    v29 = sub_1D881F7DC(13);
    if (v30)
    {
      goto LABEL_55;
    }

    *(v23 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(v17[6] + v29) = 13;
    *(v17[7] + 8 * v29) = 0x4024000000000000;
    v31 = v17[2];
    v25 = __OFADD__(v31, 1);
    v15 = v31 + 1;
    if (v25)
    {
      goto LABEL_56;
    }

    v17[2] = v15;
    v32 = sub_1D881F7DC(5);
    if (v33)
    {
      goto LABEL_57;
    }

    *(v23 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(v17[6] + v32) = 5;
    *(v17[7] + 8 * v32) = 0x3FF0000000000000;
    v34 = v17[2];
    v25 = __OFADD__(v34, 1);
    v15 = v34 + 1;
    if (v25)
    {
      goto LABEL_58;
    }

    v17[2] = v15;
    if (v15)
    {
      v35 = sub_1D881F7DC(v20);
      if (v36)
      {
        v37 = *(v17[7] + 8 * v35);

        goto LABEL_39;
      }
    }

    if (v20 > 5)
    {
      if (v20 > 8)
      {
        if ((v20 - 9) < 2)
        {
          v37 = 0.0;
          goto LABEL_39;
        }

        if ((v20 - 12) >= 2)
        {
LABEL_60:
          sub_1D8B168C0();
          __break(1u);
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

LABEL_38:
        v37 = 10.0;
        goto LABEL_39;
      }

      if ((v20 - 6) >= 2)
      {
        goto LABEL_60;
      }

      v37 = 60.0;
    }

    else
    {
      if (v20 <= 2)
      {
        goto LABEL_38;
      }

      if (v20 != 3)
      {
        if (v20 != 4)
        {
          v37 = 1.0;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v37 = 4.0;
    }

LABEL_39:
    v43 = v4;
    v39 = *(v4 + 2);
    v38 = *(v4 + 3);
    if (v39 >= v38 >> 1)
    {
      sub_1D87F4140((v38 > 1), v39 + 1, 1);
      v4 = v43;
    }

    *(v4 + 2) = v39 + 1;
    *&v4[8 * v39 + 32] = v37;
    ++v19;
    --v16;
  }

  while (v16);

  if (*(v4 + 2) >= *(v14 + 2))
  {
    v40 = *(v14 + 2);
  }

  else
  {
    v40 = *(v4 + 2);
  }

  if (v40)
  {
    v41 = sub_1D8B16910();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC8];
  }

  v43 = v41;
  sub_1D890030C(v14, v4, 1, &v43);
  return v43;
}

uint64_t sub_1D8901800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8901870(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D88F0C30();
  }

  return result;
}

void sub_1D8901884(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_1D88F33B4(a1, a2, a3, a4);
  }
}

uint64_t sub_1D8901898(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v29 = result;
LABEL_2:
  v4 = result + 40 * v1;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_26;
    }

    v6 = *(v4 + 56);
    ++v1;
    v4 += 40;
    if (v6 >= 0.7)
    {
      v7 = *(v4 - 8);
      v8 = *v4;
      v9 = *(v4 + 8);
      v10 = *(v4 + 24);

      v11 = v7;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D87F476C(0, *(v3 + 16) + 1, 1);
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D87F476C((v12 > 1), v13 + 1, 1);
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + 40 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v8;
      *(v14 + 48) = v9;
      *(v14 + 56) = v6;
      *(v14 + 64) = v10;
      v1 = v5;
      result = v29;
      goto LABEL_2;
    }
  }

  if (!*(v3 + 16))
  {
    v15 = result;

    v16 = v15;
    v17 = 0;
    v3 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v18 = (v16 + 40 * v17);
    while (v2 != v17)
    {
      if (v17 >= v2)
      {
        goto LABEL_27;
      }

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_28;
      }

      v20 = v18[7];
      ++v17;
      v18 += 5;
      if (v20 >= 0.3)
      {
        v21 = *(v18 - 1);
        v22 = *v18;
        v23 = *(v18 + 1);
        v24 = *(v18 + 3);

        v25 = v21;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D87F476C(0, *(v3 + 16) + 1, 1);
        }

        v27 = *(v3 + 16);
        v26 = *(v3 + 24);
        if (v27 >= v26 >> 1)
        {
          result = sub_1D87F476C((v26 > 1), v27 + 1, 1);
        }

        *(v3 + 16) = v27 + 1;
        v28 = v3 + 40 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v22;
        *(v28 + 48) = v23;
        *(v28 + 56) = v20;
        *(v28 + 64) = v24;
        v17 = v19;
        v16 = v29;
        goto LABEL_15;
      }
    }
  }

  return v3;
}

uint64_t sub_1D8901B00(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D88F0BF8();
  }

  return result;
}

uint64_t sub_1D8901B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8901B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8901BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8901C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id BCSActionContainer.action.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t BCSActionContainer.actionIconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BCSActionContainer.shortDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double BCSActionContainer.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D8B190C0;
  *(a1 + 16) = 0xE700000000000000;
  *(a1 + 24) = 0x7974706D65;
  *(a1 + 32) = 0xE500000000000000;
  *(a1 + 40) = 0;
  return result;
}

uint64_t BCSActionContainer.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65110);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8901F98();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v9 = sub_1D8B169C0();
  v11 = v10;
  v18 = v9;
  v19 = 1;
  v12 = sub_1D8B169C0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v15 = v18;
  *a2 = 0;
  a2[1] = v15;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = 0;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D8901F98()
{
  result = qword_1ECA65118;
  if (!qword_1ECA65118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65118);
  }

  return result;
}

uint64_t BCSActionContainer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65120);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8901F98();
  sub_1D8B16DD0();
  v12 = 0;
  v8 = v10[3];
  sub_1D8B16A90();
  if (!v8)
  {
    v11 = 1;
    sub_1D8B16A90();
  }

  return (*(v4 + 8))(v6, v3);
}

void BCSActionContainer.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_1D8B16D40();
    v2 = v1;
    sub_1D8B16410();
  }

  else
  {
    sub_1D8B16D40();
  }
}

uint64_t sub_1D8902214(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x63496E6F69746361;
  }

  if (v2)
  {
    v4 = 0xEE00656D614E6E6FLL;
  }

  else
  {
    v4 = 0x80000001D8B3FEE0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x63496E6F69746361;
  }

  if (*a2)
  {
    v6 = 0x80000001D8B3FEE0;
  }

  else
  {
    v6 = 0xEE00656D614E6E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();
  }

  return v8 & 1;
}

uint64_t sub_1D89022CC()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8902360()
{
  sub_1D8B15A60();
}

uint64_t sub_1D89023E0()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8902470@<X0>(char *a1@<X8>)
{
  v2 = sub_1D8B16930();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D89024D0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D8B3FEE0;
  v3 = 0x63496E6F69746361;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEE00656D614E6E6FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D8902520()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x63496E6F69746361;
  }
}

uint64_t sub_1D890256C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D8B16930();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D89025D0(uint64_t a1)
{
  v2 = sub_1D8901F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890260C(uint64_t a1)
{
  v2 = sub_1D8901F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BCSActionContainer.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8B16D40();
  if (v1)
  {
    v2 = v1;
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D89026B8()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8B16D40();
  if (v1)
  {
    v2 = v1;
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

void sub_1D8902724()
{
  v1 = *v0;
  if (*v0)
  {
    sub_1D8B16D40();
    v2 = v1;
    sub_1D8B16410();
  }

  else
  {
    sub_1D8B16D40();
  }
}

uint64_t sub_1D89027B4()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8B16D40();
  if (v1)
  {
    v2 = v1;
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D890284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64838);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v9;
  v20 = *(a2 + 32);
  v10 = *(a2 + 40);
  v22 = *(a2 + 41);
  *v23 = *(a2 + 57);
  *&v23[15] = *(a2 + 72);
  v11 = *(a2 + 88);
  v21 = v10;
  v24 = v11;
  result = sub_1D8906230(a1);
  if ((result & 1) == 0)
  {
    v15 = xmmword_1D8B26630;
    goto LABEL_11;
  }

  if ((v10 & 1) == 0)
  {
    result = sub_1D8902A18();
    if ((result & 1) == 0 || (sub_1D8902B24(v8), v16 = type metadata accessor for StreamingBarcodeDetectorResult(0), v17 = (*(*(v16 - 8) + 48))(v8, 1, v16), result = sub_1D87A14E4(v8, &qword_1ECA64838), v17 == 1))
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_15;
    }

LABEL_16:
    *a3 = 0;
    *(a3 + 8) = 0;
    v18 = -1;
    goto LABEL_17;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_16;
  }

  result = sub_1D881F7DC(6);
  if ((v13 & 1) == 0 || *(*(v11 + 56) + result) == 2)
  {
    if (!*(v11 + 16))
    {
      goto LABEL_16;
    }

    result = sub_1D881F7DC(7);
    if ((v14 & 1) == 0 || *(*(v11 + 56) + result) == 2)
    {
      goto LABEL_16;
    }
  }

  v15 = xmmword_1D8B26640;
LABEL_11:
  *a3 = v15;
LABEL_15:
  v18 = 2;
LABEL_17:
  *(a3 + 16) = v18;
  return result;
}

uint64_t sub_1D8902A18()
{
  v0 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.latestEstimate.getter(&v7);
  if (v7 >> 61 == 3)
  {
    v3 = swift_projectBox();
    sub_1D8906458(v3, v2, type metadata accessor for StreamingBarcodeDetectorResult);

    v4 = *&v2[*(v0 + 40)];
    sub_1D88B7ED4(v4);
    sub_1D89064C0(v2, type metadata accessor for StreamingBarcodeDetectorResult);
    if (v4 >= 2)
    {
      sub_1D8905FA4(v4);
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D8902B24@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64048);
  v60 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v59 = &v50 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65168);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v50 - v17;
  v18 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.latestEstimate.getter(&v62);
  if (v62 >> 61 == 3)
  {
    v22 = swift_projectBox();
    sub_1D8906458(v22, v21, type metadata accessor for StreamingBarcodeDetectorResult);

    sub_1D890611C(v21, a1, type metadata accessor for StreamingBarcodeDetectorResult);
    return (*(v19 + 56))(a1, 0, 1, v18);
  }

  v50 = v6;
  v51 = v18;
  v53 = v19;
  v54 = v16;
  v52 = a1;

  v24 = sub_1D89047F8();
  v25 = *&v24;
  v26 = sub_1D8903DC8();
  MEMORY[0x1EEE9AC00](v26);
  *(&v50 - 2) = v1;
  v27 = sub_1D8916A7C(sub_1D89060FC, (&v50 - 4), v26);

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v56 = *(v27 + 16);
    v57 = v3;
    while (v29 < *(v27 + 16))
    {
      v31 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v32 = *(v60 + 72);
      sub_1D87A0E38(v27 + v31 + v32 * v29, v12, &qword_1ECA64048);
      if (v25 > *&v12[*(v3 + 48)])
      {
        result = sub_1D87A14E4(v12, &qword_1ECA64048);
      }

      else
      {
        sub_1D881F6FC(v12, v59, &qword_1ECA64048);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4840(0, *(v30 + 16) + 1, 1);
          v30 = v61;
        }

        v35 = *(v30 + 16);
        v34 = *(v30 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1D87F4840(v34 > 1, v35 + 1, 1);
          v30 = v61;
        }

        *(v30 + 16) = v35 + 1;
        result = sub_1D881F6FC(v59, v30 + v31 + v35 * v32, &qword_1ECA64048);
        v28 = v56;
        v3 = v57;
      }

      if (v28 == ++v29)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_15:

  v36 = *(v30 + 16);
  v37 = v54;
  if (v36)
  {
    v38 = v30 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    result = sub_1D87A0E38(v38, v58, &qword_1ECA64048);
    v39 = v53;
    v40 = v50;
    if (v36 != 1)
    {
      v48 = 1;
      v49 = v58;
      while (v48 < *(v30 + 16))
      {
        sub_1D87A0E38(v38 + *(v60 + 72) * v48, v40, &qword_1ECA64048);
        if (*(v49 + *(v3 + 48)) >= *(v40 + *(v3 + 48)))
        {
          result = sub_1D87A14E4(v40, &qword_1ECA64048);
        }

        else
        {
          sub_1D87A14E4(v49, &qword_1ECA64048);
          result = sub_1D881F6FC(v40, v49, &qword_1ECA64048);
        }

        if (v36 == ++v48)
        {
          goto LABEL_17;
        }
      }

LABEL_30:
      __break(1u);
      return result;
    }

LABEL_17:

    v41 = v55;
    sub_1D881F6FC(v58, v55, &qword_1ECA64048);
    v42 = 0;
    v37 = v54;
  }

  else
  {

    v42 = 1;
    v39 = v53;
    v41 = v55;
  }

  v43 = v60;
  (*(v60 + 56))(v41, v42, 1, v3);
  sub_1D881F6FC(v41, v37, &qword_1ECA65168);
  v44 = (*(v43 + 48))(v37, 1, v3);
  v46 = v51;
  v45 = v52;
  if (v44 == 1)
  {
    sub_1D87A14E4(v37, &qword_1ECA65168);
    v47 = 1;
  }

  else
  {
    sub_1D890611C(v37, v52, type metadata accessor for StreamingBarcodeDetectorResult);
    v47 = 0;
  }

  return (*(v39 + 56))(v45, v47, 1, v46);
}

uint64_t sub_1D8903174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a3;
  v5[20] = a5;
  v5[17] = a1;
  v5[18] = a2;
  v5[21] = type metadata accessor for BundleClassification.ClassificationType(0);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64838);
  v5[23] = swift_task_alloc();
  v7 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D89032AC, 0, 0);
}

uint64_t sub_1D89032AC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_1D8902B24(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 160);
    sub_1D87A14E4(*(v0 + 184), &qword_1ECA64838);
    *v5 = 0;
    *(v5 + 8) = 0xD00000000000001DLL;
    *(v5 + 16) = 0x80000001D8B44100;
    *(v5 + 24) = 0x80;
    *(v5 + 32) = v4;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xD00000000000001DLL;
    *(v0 + 32) = 0x80000001D8B44100;
    *(v0 + 40) = 0x80;
    *(v0 + 48) = v4;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();

    v6 = *(v0 + 8);
LABEL_3:

    return v6();
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  sub_1D890611C(*(v0 + 184), v8, type metadata accessor for StreamingBarcodeDetectorResult);
  v10 = *(v8 + *(v9 + 40));
  *(v0 + 224) = v10;
  if (v10 < 2)
  {
    return sub_1D8B168C0();
  }

  sub_1D8906458(*(v0 + 152), *(v0 + 176), type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + 176);
  if (EnumCaseMultiPayload == 2)
  {
    v13 = *v12;
    v14 = v12[2];
    v15 = v12[4];
    if (*v12)
    {
      v16 = v12[1];
      v17 = v12[3];
      v18 = v12[5];
      v19 = v10;
      v20 = [v13 detectedCode];
      if (v20)
      {
        v21 = v20;
        v22 = [v19 isLikelyEqualToCode_];

        if (v22)
        {
          v23 = *(v0 + 208);
          v24 = *(v0 + 136);
          sub_1D8905FA4(v10);
          sub_1D89064C0(v23, type metadata accessor for StreamingBarcodeDetectorResult);
          *v24 = v13;
          v24[1] = v16;
          v24[2] = v14;
          v24[3] = v17;
          v24[4] = v15;
          v24[5] = v18;
          swift_storeEnumTagMultiPayload();
          v25 = type metadata accessor for BundleClassification(0);
          v26 = v24 + *(v25 + 20);
          *v26 = 2;
          *(v26 + 8) = 0u;
          *(v26 + 24) = 0u;
          sub_1D88E0FE4(2, 0, 0, 0);
          v27 = *(v0 + 216);
          v28 = *(v0 + 136);
          *v26 = 2;
          *(v26 + 8) = 0u;
          *(v26 + 24) = 0u;
          *(v28 + *(v25 + 24)) = v27;

          v6 = *(v0 + 8);
          goto LABEL_3;
        }
      }
    }

    else
    {
      v30 = v10;
    }
  }

  else
  {
    v29 = v10;
    sub_1D89064C0(v12, type metadata accessor for BundleClassification.ClassificationType);
  }

  if (qword_1ECA62100 != -1)
  {
    swift_once();
  }

  v31 = qword_1ECAA3678;
  *(v0 + 232) = qword_1ECAA3678;

  return MEMORY[0x1EEE6DFA0](sub_1D89036E4, v31, 0);
}

uint64_t sub_1D89036E4(uint64_t a1, uint64_t a2)
{
  v4 = v2[28];
  v3 = v2[29];
  v5 = sub_1D89061E8(&qword_1ECA65158, a2, type metadata accessor for BarcodeParseSerializer);
  v6 = swift_task_alloc();
  v2[30] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[31] = v7;
  v8 = sub_1D8905F40();
  *v7 = v2;
  v7[1] = sub_1D8903820;

  return MEMORY[0x1EEE6DE38](v2 + 15, v3, v5, 0x646F436573726170, 0xED0000293A5F2865, sub_1D8905F9C, v6, v8);
}

uint64_t sub_1D8903820()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = sub_1D8903B6C;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_1D8903944;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D8903968()
{
  v1 = *(v0 + 264);
  v2 = [v1 actionIcon];
  v3 = viCore_systemSymbolNameForImage(v2);

  if (v3)
  {
    v4 = sub_1D8B15970();
    v21 = v5;
  }

  else
  {
    v21 = 0x80000001D8B44170;
    v4 = 0xD000000000000011;
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 224);
  v8 = *(v0 + 216);
  v9 = *(v0 + 208);
  v10 = *(v0 + 136);
  v11 = [v6 shortDescription];

  v12 = sub_1D8B15970();
  v14 = v13;

  sub_1D8905FA4(v7);
  sub_1D89064C0(v9, type metadata accessor for StreamingBarcodeDetectorResult);
  *v10 = v1;
  v10[1] = v4;
  v10[2] = v21;
  v10[3] = v12;
  v10[4] = v14;
  v10[5] = v8;
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for BundleClassification(0);
  v16 = v10 + *(v15 + 20);
  *v16 = 2;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  v17 = *(v0 + 216);
  v18 = *(v0 + 136);
  *v16 = 2;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v18 + *(v15 + 24)) = v17;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D8903B6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8903BD4, 0, 0);
}

uint64_t sub_1D8903BD4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  v4 = *(v0 + 208);
  v5 = *(v0 + 160);
  swift_getErrorValue();
  v6 = sub_1D8B16C90();
  *v5 = 0;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(v5 + 24) = 64;
  *(v5 + 32) = v3;
  *(v0 + 56) = 0;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  *(v0 + 80) = 64;
  *(v0 + 88) = v3;
  sub_1D88E0E0C();
  swift_willThrowTypedImpl();
  sub_1D8905FA4(v2);

  sub_1D89064C0(v4, type metadata accessor for StreamingBarcodeDetectorResult);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D8903CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D8903174(a1, a2, a3, a4, v5 + 16);
}

uint64_t sub_1D8903DC8()
{
  v51 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v49 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64838);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v49 - v2;
  v4 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D891DE68();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v6 + 24);
    v13 = *(v7 + 80);
    v55 = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v15 = *(v7 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8906458(v14, v9, type metadata accessor for CVTrackSnapshot);
      v17 = *&v9[v12];

      sub_1D89064C0(v9, type metadata accessor for CVTrackSnapshot);
      switch(v17 >> 60)
      {
        case 6uLL:
        case 7uLL:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1D87C7F54(0, *(v16 + 2) + 1, 1, v16);
          }

          v19 = *(v16 + 2);
          v18 = *(v16 + 3);
          v20 = v16;
          if (v19 >= v18 >> 1)
          {
            v20 = sub_1D87C7F54((v18 > 1), v19 + 1, 1, v16);
          }

          *(v20 + 2) = v19 + 1;
          v16 = v20;
          *&v20[8 * v19 + 32] = v17;
          break;
        default:

          break;
      }

      v14 += v15;
      --v11;
    }

    while (v11);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v16 + 2);
  v55 = v16;
  if (v22)
  {
    v23 = v16;
    v24 = 0;
    v53 = v23 + 32;
    v25 = (v52 + 56);
    v26 = (v52 + 48);
    v27 = MEMORY[0x1E69E7CC0];
    v49 = (v52 + 48);
    while (v24 < *(v55 + 16))
    {
      v28 = *&v53[8 * v24++];
      switch(v28 >> 60)
      {
        case 1uLL:
          v42 = type metadata accessor for GroundedParseDetectorResult(0);
          v30 = swift_projectBox();
          v57 = v42;
          v58 = sub_1D89061E8(&qword_1ECA64248, 255, type metadata accessor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_29;
        case 2uLL:
          v37 = type metadata accessor for MetaDetectionResult();
          v30 = swift_projectBox();
          v57 = v37;
          v58 = sub_1D89061E8(&qword_1EE0E5CE0, 255, type metadata accessor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for MetaDetectionResult;
          goto LABEL_29;
        case 3uLL:
        case 8uLL:
          v29 = type metadata accessor for ObjectDetectorResult(0);
          v30 = swift_projectBox();
          v57 = v29;
          v58 = sub_1D89061E8(&qword_1ECA64228, 255, type metadata accessor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_29;
        case 4uLL:
          v43 = type metadata accessor for ParseDetectorResult(0);
          v30 = swift_projectBox();
          v57 = v43;
          v58 = sub_1D89061E8(&qword_1ECA64238, 255, type metadata accessor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for ParseDetectorResult;
          goto LABEL_29;
        case 5uLL:
          v44 = type metadata accessor for TextDetectorResult(0);
          v30 = swift_projectBox();
          v57 = v44;
          v58 = sub_1D89061E8(&qword_1EE0E5FC0, 255, type metadata accessor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for TextDetectorResult;
          goto LABEL_29;
        case 6uLL:
        case 7uLL:
          v30 = swift_projectBox();
          v57 = v4;
          v58 = sub_1D89061E8(&qword_1ECA64230, 255, type metadata accessor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_29;
        case 9uLL:
        case 0xAuLL:
          v33 = swift_projectBox();
          v34 = v50;
          sub_1D8906458(v33, v50, type metadata accessor for AFMResult);
          v57 = v51;
          v58 = sub_1D89061E8(&qword_1EE0E3F80, 255, type metadata accessor for AFMResult);
          v35 = __swift_allocate_boxed_opaque_existential_1(v56);
          sub_1D890611C(v34, v35, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v36 = type metadata accessor for SyntheticDetectionResult();
          v30 = swift_projectBox();
          v57 = v36;
          v58 = sub_1D89061E8(&qword_1EE0E4D38, 255, type metadata accessor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_29;
        case 0xCuLL:
          v38 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v30 = swift_projectBox();
          v57 = v38;
          v58 = sub_1D89061E8(&qword_1ECA64220, 255, type metadata accessor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_29;
        case 0xDuLL:
          v45 = type metadata accessor for GroundedParseClassificationsResult(0);
          v30 = swift_projectBox();
          v57 = v45;
          v58 = sub_1D89061E8(&qword_1ECA64218, 255, type metadata accessor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          v32 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_29:
          sub_1D8906458(v30, boxed_opaque_existential_1, v32);
          break;
        default:
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v40 = swift_projectBox();
          v57 = v39;
          v58 = sub_1D8906184();
          v41 = __swift_allocate_boxed_opaque_existential_1(v56);
          v26 = v49;
          sub_1D87A0E38(v40, v41, &qword_1ECA67750);
          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
      v46 = swift_dynamicCast();
      (*v25)(v3, v46 ^ 1u, 1, v4);
      if ((*v26)(v3, 1, v4) == 1)
      {
        result = sub_1D87A14E4(v3, &qword_1ECA64838);
        if (v22 == v24)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_1D890611C(v3, v54, type metadata accessor for StreamingBarcodeDetectorResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D87C9178(0, v27[2] + 1, 1, v27);
        }

        v48 = v27[2];
        v47 = v27[3];
        if (v48 >= v47 >> 1)
        {
          v27 = sub_1D87C9178(v47 > 1, v48 + 1, 1, v27);
        }

        v27[2] = v48 + 1;
        result = sub_1D890611C(v54, v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v48, type metadata accessor for StreamingBarcodeDetectorResult);
        if (v22 == v24)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_38:

    return v27;
  }

  return result;
}

double sub_1D89047F8()
{
  CVBundle.latestDetection.getter(&v8);
  if (v8 >> 60 != 11)
  {

    goto LABEL_6;
  }

  v0 = type metadata accessor for SyntheticDetectionResult();
  v1 = swift_projectBox();
  v2 = *(v0 + 24);
  if ((*(v1 + v2) & 1) == 0)
  {

    return 0.0;
  }

  v3 = v1;
  v4 = sub_1D8B16BA0();

  if ((v4 & 1) == 0)
  {
    if (*(v3 + v2) == 1)
    {

LABEL_14:
      v6 = 1053609165;
      goto LABEL_7;
    }

    v7 = sub_1D8B16BA0();

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_6:
    v6 = 1061997773;
LABEL_7:
    LODWORD(result) = v6;
    return result;
  }

  return 0.0;
}

uint64_t sub_1D8904950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8906458(a1, a2, type metadata accessor for StreamingBarcodeDetectorResult);
  v4 = (a1 + *(type metadata accessor for StreamingBarcodeDetectorResult(0) + 24));
  v5 = v4[1];
  v34 = *v4;
  v6 = v4[2];
  v7 = v4[3];
  v35 = v5;
  v36 = v6;
  v37 = v7;
  Corners.bounds.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CVBundle.latestEstimate.getter(&v33);
  v32 = v33;
  CVDetection.detection.getter(v29);
  v16 = v30;
  v17 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v17 + 64))(v28, v16, v17);

  __swift_destroy_boxed_opaque_existential_1(v29);
  Corners.bounds.getter();
  v40.origin.x = v18;
  v40.origin.y = v19;
  v21 = v20;
  v23 = v22;
  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  v40.size.width = v21;
  v40.size.height = v23;
  v39 = CGRectIntersection(v38, v40);
  width = v39.size.width;
  height = v39.size.height;
  v26 = 0.0;
  if (!CGRectIsNull(v39))
  {
    v26 = width * height / (v13 * v15 + v21 * v23 - width * height);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64048);
  *(a2 + *(result + 48)) = v26;
  return result;
}

uint64_t sub_1D8904B00()
{
  type metadata accessor for BarcodeParseSerializer();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  qword_1ECAA3678 = v0;
  return result;
}

uint64_t sub_1D8904B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65148);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63520);
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8904C84, a4, 0);
}

uint64_t sub_1D8904C84()
{
  v1 = *(v0 + 192);
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = (v2 + 16);
  v4 = *(v0 + 192);
  if (*(v2 + 16))
  {
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      *(v0 + 248) = v2;
      if (*(v4 + 112) != 1)
      {
        break;
      }

      *(v4 + 120) = v5;
      v6 = *v3;
      *(v0 + 256) = *v3;
      if (v6)
      {
        v9 = *(v0 + 232);
        v10 = *(v0 + 240);
        v11 = *(v0 + 216);
        v12 = *(*(v0 + 224) + 48);
        *(v0 + 296) = v12;
        v13 = *(v9 + 80);
        *(v0 + 300) = v13;
        *(v0 + 264) = *(v9 + 72);
        *(v0 + 272) = 0;
        v14 = *(v0 + 200);
        v15 = *(v0 + 208);
        sub_1D87A0E38(*(v0 + 248) + ((v13 + 32) & ~v13), v10, &qword_1ECA63520);
        v16 = *v10;
        *(v0 + 280) = *v10;
        (*(v15 + 32))(v11, v10 + v12, v14);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1D8904EF4;
        v17 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65160);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1D89055E4;
        *(v0 + 104) = &block_descriptor_4;
        *(v0 + 112) = v17;
        [v16 parseCodeWithCompletion_];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      v4 = *(v0 + 192);
      v2 = *(v4 + 120);
      v3 = (v2 + 16);
    }

    while (*(v2 + 16));
  }

  *(v4 + 112) = 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D8904EF4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 192);
  if (v2)
  {
    v4 = sub_1D89052F8;
  }

  else
  {
    v4 = sub_1D8905014;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D8905014()
{
  v1 = *(v0 + 168);
  *(v0 + 184) = v1;
  v2 = *(v0 + 280);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = v1;
  sub_1D8B15E20();

  (*(v4 + 8))(v3, v5);
  v7 = *(v0 + 272) + 1;
  if (v7 == *(v0 + 256))
  {

    v8 = *(v0 + 192);
    v10 = (v8 + 120);
    v9 = *(v8 + 120);
    v11 = (v9 + 16);
    if (*(v9 + 16))
    {
      v12 = MEMORY[0x1E69E7CC0];
      do
      {
        *(v0 + 248) = v9;
        if (*(v8 + 112) != 1)
        {
          break;
        }

        *v10 = v12;
        v13 = *v11;
        *(v0 + 256) = *v11;
        if (v13)
        {
          v7 = 0;
          v26 = *(v0 + 232);
          v18 = *(*(v0 + 224) + 48);
          *(v0 + 296) = v18;
          v17 = *(v26 + 80);
          *(v0 + 300) = v17;
          v16 = *(v26 + 72);
          *(v0 + 264) = v16;
          goto LABEL_11;
        }

        v8 = *(v0 + 192);
        v10 = (v8 + 120);
        v9 = *(v8 + 120);
        v11 = (v9 + 16);
      }

      while (*(v9 + 16));
    }

    *(v8 + 112) = 0;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 264);
    LOBYTE(v17) = *(v0 + 300);
    v18 = *(v0 + 296);
LABEL_11:
    *(v0 + 272) = v7;
    v19 = *(v0 + 240);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = v19 + v18;
    sub_1D87A0E38(*(v0 + 248) + ((v17 + 32) & ~v17) + v16 * v7, v19, &qword_1ECA63520);
    v24 = *v19;
    *(v0 + 280) = v24;
    (*(v21 + 32))(v20, v23, v22);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1D8904EF4;
    v25 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65160);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D89055E4;
    *(v0 + 104) = &block_descriptor_4;
    *(v0 + 112) = v25;
    [v24 parseCodeWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1D89052F8()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  swift_willThrow();
  *(v0 + 176) = v1;
  v6 = v1;
  sub_1D8B15E10();

  (*(v4 + 8))(v3, v5);
  v7 = *(v0 + 272) + 1;
  if (v7 == *(v0 + 256))
  {

    v8 = *(v0 + 192);
    v10 = (v8 + 120);
    v9 = *(v8 + 120);
    v11 = (v9 + 16);
    if (*(v9 + 16))
    {
      v12 = MEMORY[0x1E69E7CC0];
      do
      {
        *(v0 + 248) = v9;
        if (*(v8 + 112) != 1)
        {
          break;
        }

        *v10 = v12;
        v13 = *v11;
        *(v0 + 256) = *v11;
        if (v13)
        {
          v7 = 0;
          v26 = *(v0 + 232);
          v18 = *(*(v0 + 224) + 48);
          *(v0 + 296) = v18;
          v17 = *(v26 + 80);
          *(v0 + 300) = v17;
          v16 = *(v26 + 72);
          *(v0 + 264) = v16;
          goto LABEL_11;
        }

        v8 = *(v0 + 192);
        v10 = (v8 + 120);
        v9 = *(v8 + 120);
        v11 = (v9 + 16);
      }

      while (*(v9 + 16));
    }

    *(v8 + 112) = 0;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 264);
    LOBYTE(v17) = *(v0 + 300);
    v18 = *(v0 + 296);
LABEL_11:
    *(v0 + 272) = v7;
    v19 = *(v0 + 240);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = v19 + v18;
    sub_1D87A0E38(*(v0 + 248) + ((v17 + 32) & ~v17) + v16 * v7, v19, &qword_1ECA63520);
    v24 = *v19;
    *(v0 + 280) = v24;
    (*(v21 + 32))(v20, v23, v22);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1D8904EF4;
    v25 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65160);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D89055E4;
    *(v0 + 104) = &block_descriptor_4;
    *(v0 + 112) = v25;
    [v24 parseCodeWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1D89055E4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1D89056BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63520);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - v12;
  v14 = *(v11 + 56);
  *(&v26 - v12) = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65148);
  (*(*(v15 - 8) + 16))(&v13[v14], a1, v15);
  swift_beginAccess();
  v16 = *(a2 + 120);
  v17 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1D87C91A0(0, v16[2] + 1, 1, v16);
    *(a2 + 120) = v16;
  }

  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19 >> 1)
  {
    v16 = sub_1D87C91A0(v19 > 1, v20 + 1, 1, v16);
  }

  v16[2] = v20 + 1;
  sub_1D881F6FC(v13, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, &qword_1ECA63520);
  *(a2 + 120) = v16;
  result = swift_endAccess();
  if ((*(a2 + 112) & 1) == 0)
  {
    *(a2 + 112) = 1;
    v22 = sub_1D8B15EA0();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v24 = sub_1D89061E8(&qword_1ECA65158, v23, type metadata accessor for BarcodeParseSerializer);
    v25 = swift_allocObject();
    v25[2] = a2;
    v25[3] = v24;
    v25[4] = a2;
    swift_retain_n();
    sub_1D8891CA0(0, 0, v8, &unk_1D8B28640, v25);
  }

  return result;
}

uint64_t sub_1D89059B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63520);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15 - v4);
  *(v1 + 112) = 0;
  swift_beginAccess();
  v6 = *(v1 + 120);
  v7 = *(v6 + 16);
  if (v7)
  {
    v15 = *(v1 + 120);
    v16 = v1;
    v8 = *(v2 + 48);
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    v17 = xmmword_1D8B282F0;
    do
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA63520);

      sub_1D88C53E4();
      v11 = swift_allocError();
      *v12 = v17;
      *(v12 + 16) = 3;
      v18 = v11;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65148);
      sub_1D8B15E10();
      (*(*(v13 - 8) + 8))(v5 + v8, v13);
      v9 += v10;
      --v7;
    }

    while (v7);

    v1 = v16;
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1D8905BB0()
{
  sub_1D89059B8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t _s22VisualIntelligenceCore18BCSActionContainerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v17 = *(a1 + 24);
    sub_1D8905F40();
    v11 = v7;
    v12 = v2;
    v13 = sub_1D8B16400();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a1 + 24);
    if (v7)
    {
      return 0;
    }
  }

  v14 = v3 == v6 && v4 == v9;
  if (!v14 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v8 && v5 == v10)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

unint64_t sub_1D8905D0C()
{
  result = qword_1ECA65128;
  if (!qword_1ECA65128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65128);
  }

  return result;
}

uint64_t sub_1D8905D60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D8905DA8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1D8905E3C()
{
  result = qword_1ECA65130;
  if (!qword_1ECA65130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65130);
  }

  return result;
}

unint64_t sub_1D8905E94()
{
  result = qword_1ECA65138;
  if (!qword_1ECA65138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65138);
  }

  return result;
}

unint64_t sub_1D8905EEC()
{
  result = qword_1ECA65140;
  if (!qword_1ECA65140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65140);
  }

  return result;
}

unint64_t sub_1D8905F40()
{
  result = qword_1ECA65150;
  if (!qword_1ECA65150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA65150);
  }

  return result;
}

void sub_1D8905FA4(id a1)
{
  if (a1 != 1)
  {
  }
}

id viCore_systemSymbolNameForImage(void *a1)
{
  v1 = a1;
  v2 = a1;
  v3 = v2;
  if (v1)
  {
    if (MEMORY[0x1DA7208A0](v2))
    {
      v1 = MEMORY[0x1DA720890](v3);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_1D890601C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8904B4C(a1, v4, v5, v6);
}

uint64_t sub_1D890611C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8906184()
{
  result = qword_1ECA64240;
  if (!qword_1ECA64240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64240);
  }

  return result;
}

uint64_t sub_1D89061E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char sub_1D8906230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-v3];
  v5 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8906458(a1, v7, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D8B13240();
    (*(*(v8 - 8) + 8))(v7, v8);
    return 0;
  }

  sub_1D89064C0(v7, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestEstimate.getter(&v16);
  v10 = v16 >> 60;
  if ((v16 >> 60) - 6 < 2 || v10 == 11)
  {

    return 1;
  }

  else
  {
    if (v10)
    {

      return 0;
    }

    v11 = swift_projectBox();
    result = sub_1D87A0E38(v11, v4, &qword_1ECA67750);
    v12 = *&v4[*(v2 + 44)];
    if (*(v12 + 16))
    {
      result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v12 + 32)).value;
      if (v15 != 181)
      {
        v13 = v15 == 6;
        sub_1D87A14E4(v4, &qword_1ECA67750);

        return v13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8906458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89064C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BundleClassification.ClassificationType.caseDescription.getter()
{
  v1 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8912BA4(v0, v3, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
        return 0x6974634174786574;
      }

      else
      {
        return 0x746E657665;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 0x756F6C4164616572;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      return 0x74616C736E617274;
    }

    else
    {
      return 0x7A6972616D6D7573;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
      return 0x796669746E656469;
    }

    else
    {
      sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
      return 1936744813;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
    return 0x65646F63726162;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x686372616573;
  }

  else
  {
    sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
    return 1667459446;
  }
}

uint64_t BundleClassification.ClassificationType.asEmpty.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8912BA4(v2, v6, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1D89128B8(v6, type metadata accessor for BundleClassification.ClassificationType);
      *a1 = MEMORY[0x1E69E7CD0];
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D89128B8(v6, type metadata accessor for BundleClassification.ClassificationType);
      *a1 = MEMORY[0x1E69E7CC0];
      a1[1] = 0xBFF0000000000000;
      return swift_storeEnumTagMultiPayload();
    }

    v10 = type metadata accessor for VisualLookupClassifier.Result(0);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return sub_1D89128B8(v6, type metadata accessor for BundleClassification.ClassificationType);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D89128B8(v6, type metadata accessor for BundleClassification.ClassificationType);
    *a1 = xmmword_1D8B190C0;
    a1[2] = 0xE700000000000000;
    a1[3] = 0x7974706D65;
    a1[4] = 0xE500000000000000;
    a1[5] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 3)
  {
    *a1 = 0x7974706D65;
    a1[1] = 0xE500000000000000;
    v8 = *MEMORY[0x1E69C9C08];
    v9 = sub_1D8B145A0();
    (*(*(v9 - 8) + 104))(a1, v8, v9);
    goto LABEL_14;
  }

  *a1 = 0;
  return swift_storeEnumTagMultiPayload();
}

BOOL BundleClassification.ClassificationType.isTextAction.getter()
{
  v1 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8912BA4(v0, v3, type metadata accessor for BundleClassification.ClassificationType);
  v4 = swift_getEnumCaseMultiPayload() == 5;
  sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
  return v4;
}

uint64_t sub_1D8906B48(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x686372616573;
    v6 = 0x6C61636974726576;
    if (a1 != 8)
    {
      v6 = 0x6974634174786574;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x796669746E656469;
    if (a1 != 5)
    {
      v7 = 0x65646F63726162;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x757365527370616DLL;
    v2 = 0x756F6C4164616572;
    v3 = 0x74616C736E617274;
    if (a1 != 3)
    {
      v3 = 0x7A6972616D6D7573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746E657665;
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
}

uint64_t sub_1D8906CA0(uint64_t a1)
{
  v2 = sub_1D89124F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906CDC(uint64_t a1)
{
  v2 = sub_1D89124F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8906D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D891585C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8906D54(uint64_t a1)
{
  v2 = sub_1D891234C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906D90(uint64_t a1)
{
  v2 = sub_1D891234C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8906DCC(uint64_t a1)
{
  v2 = sub_1D89127A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906E08(uint64_t a1)
{
  v2 = sub_1D89127A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8906E44(uint64_t a1)
{
  v2 = sub_1D8912608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906E80(uint64_t a1)
{
  v2 = sub_1D8912608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8906EBC()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D8906EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
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

uint64_t sub_1D8906FB8(uint64_t a1)
{
  v2 = sub_1D89127F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906FF4(uint64_t a1)
{
  v2 = sub_1D89127F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907030(uint64_t a1)
{
  v2 = sub_1D891274C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890706C(uint64_t a1)
{
  v2 = sub_1D891274C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89070A8(uint64_t a1)
{
  v2 = sub_1D8912448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89070E4(uint64_t a1)
{
  v2 = sub_1D8912448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907120(uint64_t a1)
{
  v2 = sub_1D89126A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890715C(uint64_t a1)
{
  v2 = sub_1D89126A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907198(uint64_t a1)
{
  v2 = sub_1D89123A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89071D4(uint64_t a1)
{
  v2 = sub_1D89123A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907210(uint64_t a1)
{
  v2 = sub_1D89126F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890724C(uint64_t a1)
{
  v2 = sub_1D89126F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907288(uint64_t a1)
{
  v2 = sub_1D89123F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89072C4(uint64_t a1)
{
  v2 = sub_1D89123F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BundleClassification.ClassificationType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65170);
  v88 = *(v2 - 8);
  v89 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v84 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65178);
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v57 - v5;
  v85 = sub_1D8B145A0();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65180);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v57 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65188);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v57 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65190);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v57 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65198);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v57 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651A0);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v57 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651A8);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v57 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651B0);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v57 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651B8);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v57 - v18;
  v19 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651C0);
  v91 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D891234C();
  v25 = v24;
  sub_1D8B16DD0();
  sub_1D8912BA4(v90, v21, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v27 = v22;
      if (EnumCaseMultiPayload == 2)
      {
        v39 = *v21;
        v40 = v21[1];
        v41 = v21[2];
        v42 = v21[3];
        v43 = v21[4];
        v44 = v21[5];
        LOBYTE(v94) = 6;
        sub_1D89124F0();
        v45 = v75;
        sub_1D8B16A40();
        v94 = v39;
        v95 = v40;
        v96 = v41;
        v97 = v42;
        v98 = v43;
        v99 = v44;
        sub_1D8912544();
        v46 = v78;
        sub_1D8B16AE0();
        (*(v76 + 8))(v45, v46);
        (*(v91 + 8))(v25, v27);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v28 = *v21;
          LOBYTE(v94) = 7;
          sub_1D8912448();
          v29 = v77;
          sub_1D8B16A40();
          LOBYTE(v94) = v28;
          sub_1D891249C();
          v30 = v80;
          sub_1D8B16AE0();
          (*(v79 + 8))(v29, v30);
        }

        else
        {
          v48 = v83;
          v49 = v81;
          v50 = v85;
          (*(v83 + 32))(v81, v21, v85);
          LOBYTE(v94) = 8;
          sub_1D89123F4();
          v51 = v82;
          sub_1D8B16A40();
          sub_1D891265C(&qword_1ECA651E0, MEMORY[0x1E69C9C10]);
          v52 = v87;
          sub_1D8B16AE0();
          (*(v86 + 8))(v51, v52);
          (*(v48 + 8))(v49, v50);
        }

        (*(v91 + 8))(v25, v27);
      }

      return;
    }

    v32 = v22;
    if (EnumCaseMultiPayload)
    {
      v54 = v71;
      sub_1D8912598(v21, v71);
      LOBYTE(v94) = 5;
      sub_1D8912608();
      v55 = v72;
      sub_1D8B16A40();
      type metadata accessor for VisualLookupClassifier.Result(0);
      sub_1D891265C(&qword_1ECA65210, type metadata accessor for VisualLookupClassifier.Result);
      v56 = v74;
      sub_1D8B16A80();
      (*(v73 + 8))(v55, v56);
      sub_1D87A14E4(v54, &qword_1ECA641B0);
    }

    else
    {
      v33 = *v21;
      LOBYTE(v94) = 0;
      sub_1D89127F4();
      v34 = v62;
      sub_1D8B16A40();
      v94 = v33;
      v93 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA639D8);
      sub_1D881C9B0(&qword_1ECA639E0, sub_1D881C860);
      v35 = v65;
      v36 = v92;
      sub_1D8B16AE0();
      if (v36)
      {
        v37 = v64;
        goto LABEL_15;
      }

      LOBYTE(v94) = 1;
      sub_1D8B16AB0();
      (*(v64 + 8))(v34, v35);
    }

    (*(v91 + 8))(v25, v22);
    return;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    v32 = v22;
    if (EnumCaseMultiPayload != 5)
    {
      LOBYTE(v94) = 1;
      sub_1D89127A0();
      sub_1D8B16A40();
      (*(v57 + 8))(v17, v58);
      (*(v91 + 8))(v24, v22);
      return;
    }

    v38 = *v21;
    LOBYTE(v94) = 9;
    sub_1D89123A0();
    v34 = v84;
    sub_1D8B16A40();
    v94 = v38;
    sub_1D881C470();
    v35 = v89;
    sub_1D8B16AE0();
    v37 = v88;
LABEL_15:
    (*(v37 + 8))(v34, v35);
    (*(v91 + 8))(v25, v32);

    return;
  }

  if (EnumCaseMultiPayload == 7)
  {
    LOBYTE(v94) = 2;
    sub_1D891274C();
    v47 = v59;
    sub_1D8B16A40();
    (*(v60 + 8))(v47, v61);
    (*(v91 + 8))(v24, v22);
  }

  else
  {
    if (EnumCaseMultiPayload == 8)
    {
      LOBYTE(v94) = 3;
      sub_1D89126F8();
      v31 = v63;
      sub_1D8B16A40();
      (*(v66 + 8))(v31, v67);
    }

    else
    {
      LOBYTE(v94) = 4;
      sub_1D89126A4();
      v53 = v68;
      sub_1D8B16A40();
      (*(v69 + 8))(v53, v70);
    }

    (*(v91 + 8))(v24, v22);
  }
}

void BundleClassification.ClassificationType.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D8B145A0();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VisualLookupClassifier.Result(0);
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8912BA4(v2, v18, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        MEMORY[0x1DA720210](1);
        return;
      }

      v23 = *v18;
      MEMORY[0x1DA720210](9);
      sub_1D8819574(a1, v23);
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 7)
    {
      MEMORY[0x1DA720210](2);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      MEMORY[0x1DA720210](3);
    }

    else
    {
      MEMORY[0x1DA720210](4);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x1DA720210](7);
          sub_1D8B16D40();
        }

        else
        {
          v26 = v28;
          (*(v28 + 32))(v6, v18, v4);
          MEMORY[0x1DA720210](8);
          sub_1D891265C(&qword_1EE0E9840, MEMORY[0x1E69C9C10]);
          sub_1D8B157A0();
          (*(v26 + 8))(v6, v4);
        }

        return;
      }

      v24 = *v18;
      MEMORY[0x1DA720210](6);
      if (v24)
      {
        sub_1D8B16D40();
        v25 = v24;
        sub_1D8B16410();

        return;
      }

      sub_1D8B16D40();

LABEL_27:

      return;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D8912598(v18, v15);
      MEMORY[0x1DA720210](5);
      sub_1D8912848(v15, v13);
      if ((*(v27 + 48))(v13, 1, v7) == 1)
      {
        sub_1D8B16D40();
      }

      else
      {
        sub_1D8912918(v13, v9, type metadata accessor for VisualLookupClassifier.Result);
        sub_1D8B16D40();
        VisualLookupClassifier.Result.hash(into:)(a1);
        sub_1D89128B8(v9, type metadata accessor for VisualLookupClassifier.Result);
      }

      sub_1D87A14E4(v15, &qword_1ECA641B0);
    }

    else
    {
      v20 = *v18;
      v21 = v18[1];
      MEMORY[0x1DA720210](0);
      sub_1D87D0814(a1, v20);

      v22 = 0.0;
      if (v21 != 0.0)
      {
        v22 = v21;
      }

      MEMORY[0x1DA720250](*&v22);
    }
  }
}

uint64_t BundleClassification.ClassificationType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65240);
  v109 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v115 = &v82 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65248);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v116 = &v82 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65250);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v123 = &v82 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65258);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v114 = &v82 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65260);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v113 = &v82 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65268);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v122 = &v82 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65270);
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v112 = &v82 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65278);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v111 = &v82 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65280);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v110 = &v82 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65288);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v120 = &v82 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65290);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v14 = &v82 - v13;
  v118 = type metadata accessor for BundleClassification.ClassificationType(0);
  v15 = MEMORY[0x1EEE9AC00](v118);
  v88 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v89 = &v82 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v82 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v82 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v82 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v82 - v31;
  v33 = a1[3];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1D891234C();
  v124 = v14;
  v34 = v126;
  sub_1D8B16DB0();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v125);
  }

  v87 = v27;
  v85 = v24;
  v86 = v21;
  v84 = v30;
  v35 = v120;
  v36 = v121;
  v38 = v122;
  v37 = v123;
  v126 = v32;
  v39 = v124;
  v40 = sub_1D8B16A20();
  v41 = (2 * *(v40 + 16)) | 1;
  v132 = v40;
  v133 = v40 + 32;
  v134 = 0;
  v135 = v41;
  v42 = sub_1D87E380C();
  if (v42 == 10 || v134 != v135 >> 1)
  {
    v47 = sub_1D8B16770();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v49 = v118;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v119 + 8))(v39, v36);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v125);
  }

  if (v42 > 4u)
  {
    if (v42 <= 6u)
    {
      v43 = v117;
      if (v42 == 5)
      {
        LOBYTE(v128) = 5;
        sub_1D8912608();
        v56 = v113;
        sub_1D8B16950();
        v57 = v119;
        type metadata accessor for VisualLookupClassifier.Result(0);
        sub_1D891265C(&qword_1ECA652B0, type metadata accessor for VisualLookupClassifier.Result);
        v68 = v87;
        v69 = v101;
        sub_1D8B169B0();
        v83 = 0;
        (*(v100 + 8))(v56, v69);
        (*(v57 + 8))(v39, v36);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v81 = v68;
      }

      else
      {
        LOBYTE(v128) = 6;
        sub_1D89124F0();
        v65 = v114;
        sub_1D8B16950();
        v66 = v119;
        sub_1D89129D4();
        v67 = v103;
        sub_1D8B16A10();
        v83 = 0;
        (*(v102 + 8))(v65, v67);
        (*(v66 + 8))(v39, v36);
        swift_unknownObjectRelease();
        v74 = v130;
        v75 = v131;
        v76 = v129;
        v77 = v85;
        *v85 = v128;
        v77[1] = v76;
        *(v77 + 4) = v74;
        *(v77 + 5) = v75;
        swift_storeEnumTagMultiPayload();
        v81 = v77;
      }

      goto LABEL_31;
    }

    if (v42 == 7)
    {
      LOBYTE(v128) = 7;
      sub_1D8912448();
      sub_1D8B16950();
      sub_1D8912980();
      v60 = v105;
      sub_1D8B16A10();
      v83 = 0;
      (*(v104 + 8))(v37, v60);
      (*(v119 + 8))(v39, v36);
      swift_unknownObjectRelease();
      v71 = v86;
      *v86 = v128;
    }

    else
    {
      if (v42 == 8)
      {
        LOBYTE(v128) = 8;
        sub_1D89123F4();
        v51 = v116;
        sub_1D8B16950();
        sub_1D8B145A0();
        sub_1D891265C(&qword_1ECA65298, MEMORY[0x1E69C9C10]);
        v52 = v89;
        v53 = v108;
        sub_1D8B16A10();
        v83 = 0;
        (*(v107 + 8))(v51, v53);
        (*(v119 + 8))(v39, v36);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v72 = v52;
LABEL_30:
        v46 = v126;
        sub_1D8912918(v72, v126, type metadata accessor for BundleClassification.ClassificationType);
        v70 = v125;
        v43 = v117;
        goto LABEL_28;
      }

      LOBYTE(v128) = 9;
      sub_1D89123A0();
      v61 = v115;
      sub_1D8B16950();
      sub_1D881C95C();
      v62 = v106;
      sub_1D8B16A10();
      v83 = 0;
      (*(v109 + 8))(v61, v62);
      (*(v119 + 8))(v39, v36);
      swift_unknownObjectRelease();
      v71 = v88;
      *v88 = v128;
    }

    swift_storeEnumTagMultiPayload();
    v72 = v71;
    goto LABEL_30;
  }

  if (v42 > 1u)
  {
    v43 = v117;
    if (v42 == 2)
    {
      LOBYTE(v128) = 2;
      sub_1D891274C();
      v58 = v111;
      sub_1D8B16950();
      v59 = v119;
      v83 = 0;
      (*(v92 + 8))(v58, v93);
      (*(v59 + 8))(v39, v36);
      swift_unknownObjectRelease();
      v46 = v126;
    }

    else
    {
      v44 = v119;
      if (v42 == 3)
      {
        LOBYTE(v128) = 3;
        sub_1D89126F8();
        v45 = v112;
        sub_1D8B16950();
        v83 = 0;
        (*(v94 + 8))(v45, v97);
      }

      else
      {
        LOBYTE(v128) = 4;
        sub_1D89126A4();
        sub_1D8B16950();
        v83 = 0;
        (*(v98 + 8))(v38, v99);
      }

      (*(v44 + 8))(v39, v36);
      swift_unknownObjectRelease();
      v46 = v126;
    }

    goto LABEL_26;
  }

  v43 = v117;
  if (!v42)
  {
    LOBYTE(v128) = 0;
    sub_1D89127F4();
    sub_1D8B16950();
    v54 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA639D8);
    v127 = 0;
    sub_1D881C9B0(&qword_1ECA63AA8, sub_1D881CA28);
    v55 = v96;
    sub_1D8B16A10();
    v73 = v128;
    v127 = 1;
    sub_1D8B169E0();
    v83 = 0;
    v79 = v78;
    (*(v95 + 8))(v35, v55);
    (*(v54 + 8))(v124, v36);
    swift_unknownObjectRelease();
    v80 = v84;
    *v84 = v73;
    v80[1] = v79;
    swift_storeEnumTagMultiPayload();
    v81 = v80;
LABEL_31:
    v46 = v126;
    sub_1D8912918(v81, v126, type metadata accessor for BundleClassification.ClassificationType);
    goto LABEL_27;
  }

  LOBYTE(v128) = 1;
  sub_1D89127A0();
  v63 = v110;
  sub_1D8B16950();
  v64 = v119;
  v83 = 0;
  (*(v90 + 8))(v63, v91);
  (*(v64 + 8))(v39, v36);
  swift_unknownObjectRelease();
  v46 = v126;
LABEL_26:
  swift_storeEnumTagMultiPayload();
LABEL_27:
  v70 = v125;
LABEL_28:
  sub_1D8912918(v46, v43, type metadata accessor for BundleClassification.ClassificationType);
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t BundleClassification.runtimeError.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BundleClassification(0) + 20));
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

  return sub_1D8912A48(v4, v5, v6, v7);
}

uint64_t sub_1D8909D00()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D8909D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8915B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8909D88(uint64_t a1)
{
  v2 = sub_1D8912AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8909DC4(uint64_t a1)
{
  v2 = sub_1D8912AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA652B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8912AA8();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  type metadata accessor for BundleClassification.ClassificationType(0);
  sub_1D891265C(&qword_1ECA652C8, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for BundleClassification(0) + 20));
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    v16 = *v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v15[7] = 1;
    sub_1D8912A48(v16, v10, v11, v12);
    sub_1D8912AFC();
    sub_1D8B16A80();
    sub_1D88E0FE4(v16, v17, v18, v19);
    LOBYTE(v16) = 2;
    sub_1D8B16AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BundleClassification.hash(into:)(__int128 *a1)
{
  BundleClassification.ClassificationType.hash(into:)(a1);
  v2 = type metadata accessor for BundleClassification(0);
  v3 = v1 + *(v2 + 20);
  if (*v3 != 2)
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    v6 = *(v3 + 32);
    v7 = *(v3 + 24);
    sub_1D8B16D40();
    sub_1D8B16D40();
    v8 = v7 >> 6;
    if (v7 >> 6 > 1)
    {
      if (v8 == 2)
      {
        v9 = 3;
        goto LABEL_12;
      }
    }

    else
    {
      if (v8)
      {
        v9 = 2;
        goto LABEL_12;
      }

      MEMORY[0x1DA720210](0);
      if (!v7)
      {
        v9 = 5;
        goto LABEL_12;
      }

      if (v7 == 1)
      {
        v9 = 6;
LABEL_12:
        MEMORY[0x1DA720210](v9);
        sub_1D8B15A60();
LABEL_21:
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v6;
        }

        else
        {
          v11 = 0;
        }

        MEMORY[0x1DA720250](v11);
        goto LABEL_25;
      }

      if (v5 > 1)
      {
        if (v5 ^ 2 | v4)
        {
          if (v5 ^ 3 | v4)
          {
            v10 = 4;
          }

          else
          {
            v10 = 3;
          }
        }

        else
        {
          v10 = 2;
        }

        goto LABEL_20;
      }

      if (!(v5 | v4))
      {
        v10 = 0;
LABEL_20:
        MEMORY[0x1DA720210](v10);
        goto LABEL_21;
      }
    }

    v10 = 1;
    goto LABEL_20;
  }

  sub_1D8B16D40();
LABEL_25:
  v12 = *(v1 + *(v2 + 24));
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v12);
}

uint64_t sub_1D890A1CC(void (*a1)(_BYTE *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

uint64_t BundleClassification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  *&v26 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v26);
  *&v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA652D8);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v24 - v5;
  v7 = type metadata accessor for BundleClassification(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v10[*(v8 + 20)];
  *v11 = 2;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8912AA8();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D88E0FE4(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3));
  }

  else
  {
    v12 = v25;
    v13 = v10;
    LOBYTE(v30) = 0;
    sub_1D891265C(&qword_1ECA652E0, type metadata accessor for BundleClassification.ClassificationType);
    v14 = v27;
    sub_1D8B16A10();
    sub_1D8912918(v28, v13, type metadata accessor for BundleClassification.ClassificationType);
    v29 = 1;
    sub_1D8912B50();
    sub_1D8B169B0();
    v15 = v32;
    v16 = *v11;
    v17 = *(v11 + 1);
    v18 = *(v11 + 2);
    v19 = *(v11 + 3);
    v28 = v30;
    v26 = v31;
    sub_1D88E0FE4(v16, v17, v18, v19);
    v20 = v26;
    *v11 = v28;
    *(v11 + 1) = v20;
    *(v11 + 4) = v15;
    LOBYTE(v30) = 2;
    sub_1D8B169E0();
    v22 = v21;
    (*(v12 + 8))(v6, v14);
    *(v13 + *(v7 + 24)) = v22;
    sub_1D8912BA4(v13, v24, type metadata accessor for BundleClassification);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D89128B8(v13, type metadata accessor for BundleClassification);
  }
}

uint64_t sub_1D890A608(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D890A66C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D890A6F0(uint64_t a1)
{
  v2 = sub_1D8912E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890A72C(uint64_t a1)
{
  v2 = sub_1D8912E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D890A768()
{
  v1 = *v0;
  v2 = 0x6D61657274737075;
  v3 = 0x69446D6574737973;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x696D694C65746172;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000019;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1D890A860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8915CC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D890A888(uint64_t a1)
{
  v2 = sub_1D8912C0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890A8C4(uint64_t a1)
{
  v2 = sub_1D8912C0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890A900(uint64_t a1)
{
  v2 = sub_1D8912DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890A93C(uint64_t a1)
{
  v2 = sub_1D8912DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890A978(uint64_t a1)
{
  v2 = sub_1D8912D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890A9B4(uint64_t a1)
{
  v2 = sub_1D8912D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890A9F0(uint64_t a1)
{
  v2 = sub_1D8912D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890AA2C(uint64_t a1)
{
  v2 = sub_1D8912D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890AA68(uint64_t a1)
{
  v2 = sub_1D8912CB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890AAA4(uint64_t a1)
{
  v2 = sub_1D8912CB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890AAE0(uint64_t a1)
{
  v2 = sub_1D8912C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890AB1C(uint64_t a1)
{
  v2 = sub_1D8912C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890AB58(uint64_t a1)
{
  v2 = sub_1D8912E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890AB94(uint64_t a1)
{
  v2 = sub_1D8912E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassification.BlockingReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA652F0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA652F8);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65300);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65308);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65310);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65318);
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v32 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65320);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65328);
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v21 = *v1;
  v20 = *(v1 + 8);
  v22 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8912C0C();
  sub_1D8B16DD0();
  if (!v22)
  {
    v59 = 5;
    sub_1D8912CB4();
    v23 = v46;
    v24 = v53;
    sub_1D8B16A40();
    v25 = v48;
    sub_1D8B16A90();
    v26 = v47;
    goto LABEL_5;
  }

  if (v22 == 1)
  {
    v60 = 6;
    sub_1D8912C60();
    v23 = v49;
    v24 = v53;
    sub_1D8B16A40();
    v25 = v51;
    sub_1D8B16A90();
    v26 = v50;
LABEL_5:
    (*(v26 + 8))(v23, v25);
    return (*(v52 + 8))(v19, v24);
  }

  if (v21 > 1)
  {
    if (v21 ^ 2 | v20)
    {
      if (v21 ^ 3 | v20)
      {
        v58 = 4;
        sub_1D8912D08();
        v28 = v43;
        v29 = v53;
        sub_1D8B16A40();
        v31 = v44;
        v30 = v45;
      }

      else
      {
        v57 = 3;
        sub_1D8912D5C();
        v28 = v40;
        v29 = v53;
        sub_1D8B16A40();
        v31 = v41;
        v30 = v42;
      }
    }

    else
    {
      v56 = 2;
      sub_1D8912DB0();
      v28 = v37;
      v29 = v53;
      sub_1D8B16A40();
      v31 = v38;
      v30 = v39;
    }

    goto LABEL_15;
  }

  if (v21 | v20)
  {
    v55 = 1;
    sub_1D8912E04();
    v28 = v34;
    v29 = v53;
    sub_1D8B16A40();
    v31 = v35;
    v30 = v36;
LABEL_15:
    (*(v31 + 8))(v28, v30);
    return (*(v52 + 8))(v19, v29);
  }

  v54 = 0;
  sub_1D8912E58();
  v29 = v53;
  sub_1D8B16A40();
  (*(v32 + 8))(v16, v33);
  return (*(v52 + 8))(v19, v29);
}

uint64_t BundleClassification.BlockingReason.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    v3 = 5;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v3 = 6;
LABEL_5:
    MEMORY[0x1DA720210](v3);

    return sub_1D8B15A60();
  }

  if (v2 <= 1)
  {
    v5 = (v2 | v1) != 0;
  }

  else if (v2 ^ 2 | v1)
  {
    if (v2 ^ 3 | v1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  return MEMORY[0x1DA720210](v5);
}

uint64_t BundleClassification.BlockingReason.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D8B16D20();
  if (!v3)
  {
    v4 = 5;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 6;
LABEL_5:
    MEMORY[0x1DA720210](v4);
    sub_1D8B15A60();
    return sub_1D8B16D80();
  }

  if (v2 <= 1)
  {
    v5 = (v2 | v1) != 0;
  }

  else if (v2 ^ 2 | v1)
  {
    if (v2 ^ 3 | v1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  MEMORY[0x1DA720210](v5);
  return sub_1D8B16D80();
}

uint64_t BundleClassification.BlockingReason.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65370);
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65378);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v55 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65380);
  v65 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v74 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65388);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65390);
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v55 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65398);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653A0);
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653A8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - v20;
  v22 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D8912C0C();
  v23 = v77;
  sub_1D8B16DB0();
  if (!v23)
  {
    v24 = v17;
    v55 = v15;
    v56 = v14;
    v25 = v73;
    v26 = v74;
    v27 = v75;
    v77 = v19;
    v28 = sub_1D8B16A20();
    v29 = (2 * *(v28 + 16)) | 1;
    v78 = v28;
    v79 = v28 + 32;
    v80 = 0;
    v81 = v29;
    v30 = sub_1D87E3840();
    v31 = v21;
    if (v30 != 7 && v80 == v81 >> 1)
    {
      if (v30 > 2u)
      {
        v70 = v21;
        if (v30 > 4u)
        {
          v44 = v72;
          v45 = v77;
          if (v30 == 5)
          {
            v82 = 5;
            sub_1D8912CB4();
            v46 = v71;
            sub_1D8B16950();
            v47 = v67;
            v37 = sub_1D8B169C0();
            v35 = v53;
            (*(v66 + 8))(v46, v47);
            (*(v45 + 8))(v70, v18);
            swift_unknownObjectRelease();
            v36 = 0;
          }

          else
          {
            v82 = 6;
            sub_1D8912C60();
            v50 = v27;
            sub_1D8B16950();
            v51 = v68;
            v37 = sub_1D8B169C0();
            v52 = v50;
            v35 = v54;
            (*(v69 + 8))(v52, v51);
            (*(v45 + 8))(v70, v18);
            swift_unknownObjectRelease();
            v36 = 1;
          }

          v41 = v76;
        }

        else
        {
          v32 = v76;
          v33 = v77;
          if (v30 == 3)
          {
            v82 = 3;
            sub_1D8912D5C();
            v34 = v70;
            sub_1D8B16950();
            (*(v63 + 8))(v25, v64);
            (*(v33 + 8))(v34, v18);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 2;
            v37 = 3;
          }

          else
          {
            v82 = 4;
            sub_1D8912D08();
            v49 = v70;
            sub_1D8B16950();
            (*(v65 + 8))(v26, v59);
            (*(v33 + 8))(v49, v18);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 2;
            v37 = 4;
          }

          v41 = v32;
          v44 = v72;
        }

        goto LABEL_24;
      }

      if (v30)
      {
        if (v30 == 1)
        {
          v82 = 1;
          sub_1D8912E04();
          v43 = v56;
          sub_1D8B16950();
          (*(v58 + 8))(v43, v60);
          (*(v77 + 8))(v31, v18);
          swift_unknownObjectRelease();
          v35 = 0;
          v36 = 2;
          v37 = 1;
LABEL_19:
          v41 = v76;
          v44 = v72;
LABEL_24:
          *v44 = v37;
          *(v44 + 8) = v35;
          *(v44 + 16) = v36;
          return __swift_destroy_boxed_opaque_existential_1(v41);
        }

        v82 = 2;
        sub_1D8912DB0();
        v48 = v70;
        sub_1D8B16950();
        (*(v61 + 8))(v48, v62);
        (*(v77 + 8))(v31, v18);
        swift_unknownObjectRelease();
        v35 = 0;
        v37 = 2;
      }

      else
      {
        v82 = 0;
        sub_1D8912E58();
        sub_1D8B16950();
        (*(v57 + 8))(v24, v55);
        (*(v77 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v37 = 0;
        v35 = 0;
      }

      v36 = 2;
      goto LABEL_19;
    }

    v38 = sub_1D8B16770();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v40 = &type metadata for BundleClassification.BlockingReason;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v77 + 8))(v31, v18);
    swift_unknownObjectRelease();
  }

  v41 = v76;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1D890BFD0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    v3 = 5;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v3 = 6;
LABEL_5:
    MEMORY[0x1DA720210](v3);

    return sub_1D8B15A60();
  }

  if (v2 <= 1)
  {
    v5 = (v2 | v1) != 0;
  }

  else if (v2 ^ 2 | v1)
  {
    if (v2 ^ 3 | v1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  return MEMORY[0x1DA720210](v5);
}

uint64_t sub_1D890C0A8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D8B16D20();
  if (!v3)
  {
    v4 = 5;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 6;
LABEL_5:
    MEMORY[0x1DA720210](v4);
    sub_1D8B15A60();
    return sub_1D8B16D80();
  }

  if (v2 <= 1)
  {
    v5 = (v2 | v1) != 0;
  }

  else if (v2 ^ 2 | v1)
  {
    if (v2 ^ 3 | v1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  MEMORY[0x1DA720210](v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D890C18C(uint64_t a1)
{
  v2 = sub_1D8912FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C1C8(uint64_t a1)
{
  v2 = sub_1D8912FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890C204()
{
  v1 = 0x4264656B636F6C62;
  v2 = 0x69737365636F7270;
  if (*v0 != 2)
  {
    v2 = 0x69724374656D6E75;
  }

  if (*v0)
  {
    v1 = 0x64657269707865;
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

uint64_t sub_1D890C29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8915F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D890C2C4(uint64_t a1)
{
  v2 = sub_1D8912EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C300(uint64_t a1)
{
  v2 = sub_1D8912EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890C33C(uint64_t a1)
{
  v2 = sub_1D8912FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C378(uint64_t a1)
{
  v2 = sub_1D8912FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890C3B4(uint64_t a1)
{
  v2 = sub_1D8912F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C3F0(uint64_t a1)
{
  v2 = sub_1D8912F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890C42C(uint64_t a1)
{
  v2 = sub_1D8912F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C468(uint64_t a1)
{
  v2 = sub_1D8912F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassificationRuntimeError.ErrorType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653B0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653B8);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653C0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653C8);
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653D0);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = v1[1];
  v32 = *v1;
  v33 = v16;
  v17 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8912EAC();
  sub_1D8B16DD0();
  v18 = v17 >> 6;
  if (v17 >> 6 <= 1)
  {
    if (v18)
    {
      LOBYTE(v36) = 2;
      sub_1D8912F54();
      v12 = v26;
      v19 = v35;
      sub_1D8B16A40();
      v10 = v28;
      sub_1D8B16A90();
      v20 = v27;
    }

    else
    {
      LOBYTE(v36) = 0;
      sub_1D8912FFC();
      v19 = v35;
      sub_1D8B16A40();
      v36 = v32;
      v37 = v33;
      v38 = v17;
      sub_1D8913050();
      sub_1D8B16AE0();
      v20 = v23;
    }

    goto LABEL_7;
  }

  if (v18 == 2)
  {
    LOBYTE(v36) = 3;
    sub_1D8912F00();
    v12 = v29;
    v19 = v35;
    sub_1D8B16A40();
    v10 = v31;
    sub_1D8B16A90();
    v20 = v30;
LABEL_7:
    (*(v20 + 8))(v12, v10);
    return (*(v34 + 8))(v15, v19);
  }

  LOBYTE(v36) = 1;
  sub_1D8912FA8();
  v22 = v35;
  sub_1D8B16A40();
  (*(v24 + 8))(v9, v25);
  return (*(v34 + 8))(v15, v22);
}

uint64_t BundleClassificationRuntimeError.ErrorType.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      v5 = 3;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v4)
  {
    v5 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v3)
  {
    v5 = 5;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v1)
      {
        if (v2 ^ 3 | v1)
        {
          v7 = 4;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }

      return MEMORY[0x1DA720210](v7);
    }

    if (!(v2 | v1))
    {
      v7 = 0;
      return MEMORY[0x1DA720210](v7);
    }

LABEL_19:
    v7 = 1;
    return MEMORY[0x1DA720210](v7);
  }

  v5 = 6;
LABEL_10:
  MEMORY[0x1DA720210](v5);

  return sub_1D8B15A60();
}

uint64_t BundleClassificationRuntimeError.ErrorType.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D8B16D20();
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      v5 = 3;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (v4)
  {
    v5 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v3)
  {
    v5 = 5;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v1)
      {
        if (v2 ^ 3 | v1)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      goto LABEL_18;
    }

    if (!(v2 | v1))
    {
      v6 = 0;
LABEL_18:
      MEMORY[0x1DA720210](v6);
      return sub_1D8B16D80();
    }

LABEL_17:
    v6 = 1;
    goto LABEL_18;
  }

  v5 = 6;
LABEL_10:
  MEMORY[0x1DA720210](v5);
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t BundleClassificationRuntimeError.ErrorType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65408);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v42 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65410);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v51 = &v42 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65418);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65420);
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65428);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8912EAC();
  v15 = v55;
  sub_1D8B16DB0();
  if (!v15)
  {
    v16 = v9;
    v43 = v7;
    v44 = 0;
    v17 = v51;
    v18 = v52;
    v55 = v11;
    v20 = v53;
    v19 = v54;
    v21 = sub_1D8B16A20();
    v22 = (2 * *(v21 + 16)) | 1;
    v59 = v21;
    v60 = v21 + 32;
    v61 = 0;
    v62 = v22;
    v23 = sub_1D881F7BC();
    if (v23 == 4 || v61 != v62 >> 1)
    {
      v30 = sub_1D8B16770();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v32 = &type metadata for BundleClassificationRuntimeError.ErrorType;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
    }

    else
    {
      if (v23 > 1u)
      {
        v29 = v19;
        v34 = v55;
        if (v23 == 2)
        {
          LOBYTE(v56) = 2;
          sub_1D8912F54();
          v35 = v17;
          v36 = v44;
          sub_1D8B16950();
          if (v36)
          {
            (*(v34 + 8))(v13, v10);
            goto LABEL_11;
          }

          v37 = v46;
          v27 = sub_1D8B169C0();
          v26 = v40;
          (*(v49 + 8))(v35, v37);
          v29 = v54;
          (*(v34 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v28 = 64;
        }

        else
        {
          LOBYTE(v56) = 3;
          sub_1D8912F00();
          v39 = v44;
          sub_1D8B16950();
          if (v39)
          {
            (*(v34 + 8))(v13, v10);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v63);
          }

          v27 = sub_1D8B169C0();
          v26 = v41;
          (*(v50 + 8))(v18, v20);
          (*(v34 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v28 = 0x80;
        }

LABEL_22:
        *v29 = v27;
        *(v29 + 8) = v26;
        *(v29 + 16) = v28;
        return __swift_destroy_boxed_opaque_existential_1(v63);
      }

      if (!v23)
      {
        LOBYTE(v56) = 0;
        sub_1D8912FFC();
        v24 = v44;
        sub_1D8B16950();
        if (!v24)
        {
          sub_1D89130A4();
          v25 = v43;
          sub_1D8B16A10();
          (*(v47 + 8))(v16, v25);
          (*(v55 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v27 = v56;
          v26 = v57;
          v28 = v58;
          v29 = v19;
          goto LABEL_22;
        }

        goto LABEL_10;
      }

      LOBYTE(v56) = 1;
      sub_1D8912FA8();
      v38 = v44;
      sub_1D8B16950();
      if (!v38)
      {
        (*(v45 + 8))(v6, v48);
        (*(v55 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v27 = 0;
        v26 = 0;
        v28 = -64;
        v29 = v19;
        goto LABEL_22;
      }
    }

LABEL_10:
    (*(v55 + 8))(v13, v10);
LABEL_11:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1D890D3AC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      v5 = 3;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v4)
  {
    v5 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v3)
  {
    v5 = 5;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v1)
      {
        if (v2 ^ 3 | v1)
        {
          v7 = 4;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }

      return MEMORY[0x1DA720210](v7);
    }

    if (!(v2 | v1))
    {
      v7 = 0;
      return MEMORY[0x1DA720210](v7);
    }

LABEL_19:
    v7 = 1;
    return MEMORY[0x1DA720210](v7);
  }

  v5 = 6;
LABEL_10:
  MEMORY[0x1DA720210](v5);

  return sub_1D8B15A60();
}

uint64_t sub_1D890D4C4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D8B16D20();
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      v5 = 3;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (v4)
  {
    v5 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v3)
  {
    v5 = 5;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v1)
      {
        if (v2 ^ 3 | v1)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      goto LABEL_18;
    }

    if (!(v2 | v1))
    {
      v6 = 0;
LABEL_18:
      MEMORY[0x1DA720210](v6);
      return sub_1D8B16D80();
    }

LABEL_17:
    v6 = 1;
    goto LABEL_18;
  }

  v5 = 6;
LABEL_10:
  MEMORY[0x1DA720210](v5);
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t BundleClassificationRuntimeError.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_1D8912A68(v2, v3, v4);
}

unint64_t sub_1D890D608()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1D890D664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8916098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D890D68C(uint64_t a1)
{
  v2 = sub_1D89130F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890D6C8(uint64_t a1)
{
  v2 = sub_1D89130F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassificationRuntimeError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65438);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v7;
  v8 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89130F8();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  v9 = v14;
  sub_1D8B16AA0();
  if (!v9)
  {
    v16 = v13;
    v17 = v12;
    v18 = v8;
    v15 = 1;
    sub_1D8912A68(v13, v12, v8);
    sub_1D891314C();
    sub_1D8B16AE0();
    sub_1D88E1004(v16, v17, v18);
    LOBYTE(v16) = 2;
    sub_1D8B16AB0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BundleClassificationRuntimeError.hash(into:)()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1D8B16D40();
  v5 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v5 == 2)
    {
      v6 = 3;
      goto LABEL_10;
    }

LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

  if (v5)
  {
    v6 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v3)
  {
    v6 = 5;
    goto LABEL_10;
  }

  if (v3 == 1)
  {
    v6 = 6;
LABEL_10:
    MEMORY[0x1DA720210](v6);
    sub_1D8B15A60();
    goto LABEL_19;
  }

  if (v2 > 1)
  {
    if (v2 ^ 2 | v1)
    {
      if (v2 ^ 3 | v1)
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_18;
  }

  if (v2 | v1)
  {
    goto LABEL_17;
  }

  v7 = 0;
LABEL_18:
  MEMORY[0x1DA720210](v7);
LABEL_19:
  v8 = 0.0;
  if (v4 != 0.0)
  {
    v8 = v4;
  }

  return MEMORY[0x1DA720250](*&v8);
}

uint64_t BundleClassificationRuntimeError.hashValue.getter()
{
  sub_1D8B16D20();
  BundleClassificationRuntimeError.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t BundleClassificationRuntimeError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65450);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89130F8();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1D8B169D0();
  v19 = 1;
  sub_1D89131A0();
  sub_1D8B16A10();
  v10 = v20;
  v17 = v21;
  v18 = v22;
  LOBYTE(v20) = 2;
  sub_1D8B169E0();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9 & 1;
  v13 = v17;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;
  v14 = v18;
  *(a2 + 24) = v18;
  *(a2 + 32) = v12;
  sub_1D8912A68(v10, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D88E1004(v10, v13, v14);
}

uint64_t sub_1D890DCDC()
{
  sub_1D8B16D20();
  BundleClassificationRuntimeError.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D890DD44()
{
  sub_1D8B16D20();
  BundleClassificationRuntimeError.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t BundleClassificationRuntimeError.ErrorType.errorDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      sub_1D8912A90(*v0, *(v0 + 8), v1);
      return sub_1D8B159E0();
    }

    goto LABEL_5;
  }

  if (v2 == 2)
  {
LABEL_5:
    v4 = *v0;

    return v4;
  }

  return 0x64657269707845;
}

uint64_t sub_1D890DE44(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 400) = a5;
  *(v6 + 408) = v5;
  *(v6 + 384) = a3;
  *(v6 + 392) = a4;
  *(v6 + 368) = a1;
  *(v6 + 376) = a2;
  v8 = sub_1D8B15170();
  *(v6 + 416) = v8;
  *(v6 + 424) = *(v8 - 8);
  *(v6 + 432) = swift_task_alloc();
  v9 = sub_1D8B15130();
  *(v6 + 440) = v9;
  *(v6 + 448) = *(v9 - 8);
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = type metadata accessor for BundleClassification(0);
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  type metadata accessor for BundleClassification.ClassificationType(0);
  *(v6 + 512) = swift_task_alloc();
  v10 = a3[3];
  *(v6 + 48) = a3[2];
  *(v6 + 64) = v10;
  v11 = a3[5];
  *(v6 + 80) = a3[4];
  *(v6 + 96) = v11;
  v12 = a3[1];
  *(v6 + 16) = *a3;
  *(v6 + 32) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D890E010, 0, 0);
}

uint64_t sub_1D890E010()
{
  v51 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 376);
  BundleClassification.ClassificationType.asEmpty.getter(v1);
  sub_1D891B79C(v1, v2, v0 + 208);
  sub_1D89128B8(v1, type metadata accessor for BundleClassification.ClassificationType);
  v5 = v3[3];
  v50[2] = v3[2];
  v50[3] = v5;
  v6 = v3[5];
  v50[4] = v3[4];
  v50[5] = v6;
  v7 = v3[1];
  v50[0] = *v3;
  v50[1] = v7;
  sub_1D890F44C(v4, v50, (v0 + 208), &v46);
  v8 = v46;
  v9 = v49 >> 62;
  if ((v49 >> 62) > 1)
  {
    if (v9 == 2 && *&v46 <= 0.0)
    {
      v12 = 3;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v47;
    if (!v9)
    {
      v11 = v48;
      if (v48 == 2 && v46 == 1 && !v47)
      {
        v12 = 4;
LABEL_10:
        sub_1D89163AC(v12, 0, 0, 0);
        v11 = 0;
        v10 = 0;
        v8 = 0;
        v13 = 2;
LABEL_24:
        v42 = *(v0 + 408);
        v43 = *(v0 + 368);
        sub_1D89163AC(v13, v8, v10, v11);
        sub_1D89163AC(v12, 0, 0, 0);
        sub_1D8912BA4(v42, v43, type metadata accessor for BundleClassification);
        __swift_destroy_boxed_opaque_existential_1(v0 + 208);

        v44 = *(v0 + 8);

        return v44();
      }

LABEL_23:
      v13 = 0;
      v12 = 2;
      goto LABEL_24;
    }

    if ((v46 & 1) == 0)
    {
      v11 = v49;
      v8 = v47;
      v10 = v48;
      goto LABEL_23;
    }

    sub_1D8916384(v46, v47, v48, v49);
  }

  if (qword_1EE0E6340 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 504);
  v15 = *(v0 + 408);
  v16 = type metadata accessor for LoggingSignposter(0);
  *(v0 + 520) = __swift_project_value_buffer(v16, qword_1EE0E6348);
  *(v0 + 616) = *(v16 + 20);
  sub_1D8912BA4(v15, v14, type metadata accessor for BundleClassification);
  sub_1D8B15120();
  v17 = sub_1D8B15150();
  v18 = sub_1D8B16370();
  v19 = sub_1D8B16460();
  v20 = *(v0 + 504);
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v50[0] = v22;
    *v21 = 136446210;
    v23 = BundleClassification.ClassificationType.caseDescription.getter();
    v25 = v24;
    sub_1D89128B8(v20, type metadata accessor for BundleClassification);
    v26 = sub_1D89AC714(v23, v25, v50);

    *(v21 + 4) = v26;
    v27 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v17, v18, v27, "BundleClassification.update", "type: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1DA721330](v22, -1, -1);
    MEMORY[0x1DA721330](v21, -1, -1);
  }

  else
  {

    sub_1D89128B8(v20, type metadata accessor for BundleClassification);
  }

  v28 = *(v0 + 472);
  v29 = *(v0 + 440);
  v30 = *(v0 + 448);
  (*(v30 + 16))(*(v0 + 464), v28, v29);
  sub_1D8B151A0();
  swift_allocObject();
  *(v0 + 528) = sub_1D8B15190();
  v31 = *(v30 + 8);
  *(v0 + 536) = v31;
  *(v0 + 544) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v28, v29);
  v32 = *(v0 + 232);
  v33 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v32);
  v34 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v34;
  v35 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v35;
  v36 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v36;
  v45 = (*(v33 + 16) + **(v33 + 16));
  v37 = swift_task_alloc();
  *(v0 + 552) = v37;
  *v37 = v0;
  v37[1] = sub_1D890E5CC;
  v38 = *(v0 + 488);
  v39 = *(v0 + 408);
  v40 = *(v0 + 376);

  return v45(v38, v40, v39, v0 + 112, v0 + 248, v32, v33);
}

uint64_t sub_1D890E5CC()
{

  if (v0)
  {
    v1 = sub_1D890EC78;
  }

  else
  {
    v1 = sub_1D890E6DC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D890E6DC()
{
  sub_1D8912918(v0[61], v0[62], type metadata accessor for BundleClassification);
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v1 = qword_1ECA675B0;
    v0[70] = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D890E9E0, v1, 0);
  }

  else
  {
    v2 = sub_1D8B15150();
    sub_1D8B15180();
    v3 = sub_1D8B16360();
    if (sub_1D8B16460())
    {
      v5 = v0[53];
      v4 = v0[54];
      v6 = v0[52];

      sub_1D8B151B0();

      if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E69E93E8])
      {
        v7 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[53] + 8))(v0[54], v0[52]);
        v7 = "";
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = sub_1D8B15110();
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v2, v3, v9, "BundleClassification.update", v7, v8, 2u);
      MEMORY[0x1DA721330](v8, -1, -1);
    }

    v10 = v0[67];
    v11 = v0[62];
    v12 = v0[57];
    v13 = v0[55];
    v14 = v0[46];

    v10(v12, v13);
    sub_1D8912918(v11, v14, type metadata accessor for BundleClassification);
    __swift_destroy_boxed_opaque_existential_1((v0 + 26));

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1D890E9E0()
{
  sub_1D8A3B924();

  return MEMORY[0x1EEE6DFA0](sub_1D890EA4C, 0, 0);
}

uint64_t sub_1D890EA4C()
{
  v1 = sub_1D8B15150();
  sub_1D8B15180();
  v2 = sub_1D8B16360();
  if (sub_1D8B16460())
  {
    v4 = v0[53];
    v3 = v0[54];
    v5 = v0[52];

    sub_1D8B151B0();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x1E69E93E8])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[53] + 8))(v0[54], v0[52]);
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v1, v2, v8, "BundleClassification.update", v6, v7, 2u);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  v9 = v0[67];
  v10 = v0[62];
  v11 = v0[57];
  v12 = v0[55];
  v13 = v0[46];

  v9(v11, v12);
  sub_1D8912918(v10, v13, type metadata accessor for BundleClassification);
  __swift_destroy_boxed_opaque_existential_1((v0 + 26));

  v14 = v0[1];

  return v14();
}