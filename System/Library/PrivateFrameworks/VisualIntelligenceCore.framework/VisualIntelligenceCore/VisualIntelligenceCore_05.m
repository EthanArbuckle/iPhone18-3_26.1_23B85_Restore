uint64_t sub_1D87F99C4(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v60 = sub_1D8B13240();
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v58);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for CVBundle.BundleType(0);
  v8 = MEMORY[0x1EEE9AC00](v69);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v47 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  MEMORY[0x1EEE9AC00](v65);
  v12 = &v47 - v11;
  v13 = type metadata accessor for CVBundle(0);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v47 - v18;
  v49 = v2;
  v19 = *v2;
  sub_1D8B16D20();
  sub_1D891CA54(v71);
  v52 = *(a2 + v13[5]);
  sub_1D87CF97C(v71, v52);
  v51 = *(a2 + v13[6]);
  sub_1D87CF97C(v71, v51);
  v54 = v13;
  v20 = v13[7];
  v67 = a2;
  v47 = *(a2 + v20);
  sub_1D893983C(v71, v47);
  v21 = sub_1D8B16D80();
  v22 = v19 + 56;
  v66 = v19;
  v23 = -1 << *(v19 + 32);
  v24 = v21 & ~v23;
  v64 = v22;
  if ((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v62 = ~v23;
    v63 = *(v14 + 72);
    v59 = (v4 + 8);
    v55 = (v4 + 32);
    v25 = v61;
    v56 = v17;
    do
    {
      v26 = v63 * v24;
      sub_1D881BDC4(*(v66 + 48) + v63 * v24, v17, type metadata accessor for CVBundle);
      v27 = *(v65 + 48);
      sub_1D881BDC4(v17, v12, type metadata accessor for CVBundle.BundleType);
      sub_1D881BDC4(v67, &v12[v27], type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D881BDC4(v12, v25, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v59)(v25, v60);
          goto LABEL_4;
        }

        v53 = v26;
        v28 = v7;
        v29 = v57;
        v30 = v60;
        (*v55)(v57, &v12[v27], v60);
        v31 = sub_1D8B13200();
        v32 = *v59;
        v33 = v29;
        v7 = v28;
        v25 = v61;
        (*v59)(v33, v30);
        v34 = v30;
        v17 = v56;
        v32(v25, v34);
        if ((v31 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1D881BDC4(v12, v68, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D881BD44(v68, type metadata accessor for CVTrackSnapshot);
LABEL_4:
          sub_1D87A14E4(v12, &qword_1ECA63DA8);
          goto LABEL_5;
        }

        sub_1D881BFE4(&v12[v27], v7, type metadata accessor for CVTrackSnapshot);
        if ((sub_1D8B13200() & 1) == 0 || (v35 = v58[5], v36 = *(v68 + v35), v70 = *&v7[v35], *&v71[0] = v36, , , LOBYTE(v36) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v71, &v70), , , (v36 & 1) == 0) || (v37 = v58[6], v38 = *(v68 + v37), v70 = *&v7[v37], *&v71[0] = v38, , , LOBYTE(v38) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v71, &v70), , , (v38 & 1) == 0) || *(v68 + v58[7]) != v7[v58[7]] || *(v68 + v58[8]) != *&v7[v58[8]] || *(v68 + v58[9]) != *&v7[v58[9]])
        {
          sub_1D881BD44(v7, type metadata accessor for CVTrackSnapshot);
LABEL_24:
          sub_1D881BD44(v68, type metadata accessor for CVTrackSnapshot);
LABEL_25:
          sub_1D881BD44(v12, type metadata accessor for CVBundle.BundleType);
          goto LABEL_5;
        }

        v39 = v58[10];
        v40 = *(v68 + v39);
        v41 = v7[v39];
        sub_1D881BD44(v7, type metadata accessor for CVTrackSnapshot);
        if (v40 != v41)
        {
          goto LABEL_24;
        }

        v53 = v26;
        sub_1D881BD44(v68, type metadata accessor for CVTrackSnapshot);
      }

      sub_1D881BD44(v12, type metadata accessor for CVBundle.BundleType);
      if (sub_1D88E4444(*&v17[v54[5]], v52) & 1) != 0 && (sub_1D88E4444(*&v17[v54[6]], v51) & 1) != 0 && (sub_1D8854A60(*&v17[v54[7]], v47))
      {
        sub_1D881BD44(v17, type metadata accessor for CVBundle);
        sub_1D881BD44(v67, type metadata accessor for CVBundle);
        sub_1D881BDC4(*(v66 + 48) + v53, v50, type metadata accessor for CVBundle);
        return 0;
      }

LABEL_5:
      sub_1D881BD44(v17, type metadata accessor for CVBundle);
      v24 = (v24 + 1) & v62;
    }

    while (((*(v64 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
  }

  v42 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v67;
  v45 = v48;
  sub_1D881BDC4(v67, v48, type metadata accessor for CVBundle);
  *&v71[0] = *v42;
  sub_1D880544C(v45, v24, isUniquelyReferenced_nonNull_native);
  *v42 = *&v71[0];
  sub_1D881BFE4(v44, v50, type metadata accessor for CVBundle);
  return 1;
}

uint64_t sub_1D87FA2C0(uint64_t a1, uint64_t a2)
{
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v131);
  v6 = v113 - v5;
  v138 = type metadata accessor for TextDetectorResult(0);
  v130 = *(v138 - 1);
  v7 = MEMORY[0x1EEE9AC00](v138);
  v145 = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v144 = v113 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D20);
  MEMORY[0x1EEE9AC00](v132);
  v11 = v113 - v10;
  v143 = type metadata accessor for DetectionRequest.Annotation(0);
  v12 = *(v143 - 8);
  v13 = MEMORY[0x1EEE9AC00](v143);
  v134 = v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v135 = v113 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v133 = (v113 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v113 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v117 = v113 - v22;
  v118 = v2;
  v23 = *v2;
  sub_1D8B16D20();
  DetectionRequest.Annotation.hash(into:)(&v146);
  v24 = sub_1D8B16D80();
  v25 = -1 << *(v23 + 32);
  v26 = v24 & ~v25;
  v142 = v23 + 56;
  v27 = *(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26;
  v120 = a1;
  if ((v27 & 1) == 0)
  {
LABEL_123:
    v109 = v118;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v117;
    sub_1D881BDC4(a2, v117, type metadata accessor for DetectionRequest.Annotation);
    v146 = *v109;
    sub_1D8805CE8(v111, v26, isUniquelyReferenced_nonNull_native);
    *v109 = v146;
    sub_1D881BFE4(a2, v120, type metadata accessor for DetectionRequest.Annotation);
    return 1;
  }

  v140 = ~v25;
  v141 = *(v12 + 72);
  v121 = "";
  v128 = "textComposition.OpenEndedSchema";
  v127 = "ucturedExtraction.addToCalendar";
  v113[1] = "sualIntelligenceCamera";
  v116 = "IntelligenceCamera.ImageSearch";
  v115 = "gs.AppleIntelligence";
  v28 = v132;
  v137 = v21;
  v123 = a2;
  v119 = v6;
  v122 = v23;
  while (1)
  {
    v31 = *(v23 + 48);
    v139 = v141 * v26;
    sub_1D881BDC4(v31 + v141 * v26, v21, type metadata accessor for DetectionRequest.Annotation);
    v32 = *(v28 + 48);
    sub_1D881BDC4(v21, v11, type metadata accessor for DetectionRequest.Annotation);
    sub_1D881BDC4(a2, &v11[v32], type metadata accessor for DetectionRequest.Annotation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v51 = v133;
      sub_1D881BDC4(v11, v133, type metadata accessor for DetectionRequest.Annotation);
      v52 = *v51;
      if (!swift_getEnumCaseMultiPayload())
      {
        v60 = *(v52 + 16);
        v136 = *&v11[v32];
        if (v60 != *(v136 + 16))
        {
LABEL_98:
          sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Annotation);

          sub_1D881BD44(v11, type metadata accessor for DetectionRequest.Annotation);
          goto LABEL_5;
        }

        v61 = v130;
        if (!v60 || v52 == v136)
        {
LABEL_124:
          sub_1D881BD44(a2, type metadata accessor for DetectionRequest.Annotation);
          sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Annotation);
        }

        else
        {
          v62 = 0;
          v63 = (*(v130 + 80) + 32) & ~*(v130 + 80);
          v126 = v52 + v63;
          v125 = v136 + v63;
          v124 = v52;
          v114 = v60;
          while (v62 < *(v52 + 16))
          {
            v64 = v62;
            v65 = *(v61 + 72) * v62;
            v32 = v144;
            sub_1D881BDC4(v126 + v65, v144, type metadata accessor for TextDetectorResult);
            v66 = *(v136 + 16);
            v129 = v64;
            if (v64 >= v66)
            {
              goto LABEL_129;
            }

            sub_1D881BDC4(v125 + v65, v145, type metadata accessor for TextDetectorResult);
            if ((sub_1D8B13200() & 1) == 0)
            {
              goto LABEL_97;
            }

            if (*(v144 + v138[5]) != *(v145 + v138[5]))
            {
              goto LABEL_97;
            }

            v67 = v138[6];
            if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v144 + v67), *(v145 + v67)), vceqq_f64(*(v144 + v67 + 16), *(v145 + v67 + 16))), vuzp1q_s32(vceqq_f64(*(v144 + v67 + 32), *(v145 + v67 + 32)), vceqq_f64(*(v144 + v67 + 48), *(v145 + v67 + 48)))))) & 1) == 0)
            {
              goto LABEL_97;
            }

            v68 = v138[7];
            v69 = (v144 + v68);
            v70 = *(v144 + v68 + 8);
            v71 = (v145 + v68);
            if ((*v69 != *v71 || v70 != v71[1]) && (sub_1D8B16BA0() & 1) == 0)
            {
              goto LABEL_97;
            }

            if (*(v144 + v138[8]) != *(v145 + v138[8]))
            {
              goto LABEL_97;
            }

            if (*(v144 + v138[9]) != *(v145 + v138[9]))
            {
              goto LABEL_97;
            }

            if ((sub_1D894DBC4(*(v144 + v138[10]), *(v145 + v138[10])) & 1) == 0)
            {
              goto LABEL_97;
            }

            v72 = v138[11];
            v73 = *(v144 + v72);
            v74 = *(v145 + v72);
            v75 = *(v73 + 16);
            if (v75 != *(v74 + 16))
            {
              goto LABEL_97;
            }

            if (v75 && v73 != v74)
            {
              v6 = 0;
              while (1)
              {
                v76 = &v6[v73];
                v77 = &v6[v74];
                if (*&v6[v73 + 32] != *&v6[v74 + 32])
                {
                  break;
                }

                v32 = *(v76 + 7);
                v78 = *(v76 + 8);
                v80 = *(v77 + 7);
                v79 = *(v77 + 8);
                v81 = *(v76 + 5) == *(v77 + 5) && *(v76 + 6) == *(v77 + 6);
                if (!v81 && (sub_1D8B16BA0() & 1) == 0)
                {
                  break;
                }

                v82 = v32 == v80 && v78 == v79;
                if (!v82 && (sub_1D8B16BA0() & 1) == 0)
                {
                  break;
                }

                v6 += 40;
                if (!--v75)
                {
                  goto LABEL_81;
                }
              }

LABEL_97:
              sub_1D881BD44(v145, type metadata accessor for TextDetectorResult);
              sub_1D881BD44(v144, type metadata accessor for TextDetectorResult);
              a2 = v123;
              v6 = v119;
              v23 = v122;
              v28 = v132;
              v21 = v137;
              goto LABEL_98;
            }

LABEL_81:
            v83 = v138[12];
            v84 = v144 + v83;
            v85 = *v84;
            v86 = v145 + v83;
            v87 = *v86;
            if (*v84)
            {
              if (!v87)
              {
                goto LABEL_97;
              }

              v6 = *(v84 + 8);
              v88 = *(v84 + 16);
              v90 = *(v86 + 8);
              v89 = *(v86 + 16);
              sub_1D881F764(0, &qword_1EE0E36A0);
              v91 = v87;
              v92 = v85;
              v32 = sub_1D8B16400();

              if ((v32 & 1) == 0 || v6 != v90 || v88 != v89)
              {
                goto LABEL_97;
              }
            }

            else if (v87)
            {
              goto LABEL_97;
            }

            v93 = v138[13];
            v94 = v144;
            v95 = *(v144 + v93);
            v96 = *(v144 + v93 + 8);
            v97 = (v145 + v93);
            if (v95 == *v97 && v96 == v97[1])
            {
              sub_1D881BD44(v145, type metadata accessor for TextDetectorResult);
              sub_1D881BD44(v94, type metadata accessor for TextDetectorResult);
              a2 = v123;
              v23 = v122;
              v21 = v137;
              v52 = v124;
              v98 = v114;
            }

            else
            {
              v99 = sub_1D8B16BA0();
              v32 = type metadata accessor for TextDetectorResult;
              sub_1D881BD44(v145, type metadata accessor for TextDetectorResult);
              sub_1D881BD44(v94, type metadata accessor for TextDetectorResult);
              a2 = v123;
              v6 = v119;
              v23 = v122;
              v28 = v132;
              v21 = v137;
              v52 = v124;
              v98 = v114;
              if ((v99 & 1) == 0)
              {
                goto LABEL_98;
              }
            }

            v62 = v129 + 1;
            v61 = v130;
            if (v129 + 1 == v98)
            {
              goto LABEL_124;
            }
          }

          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          sub_1D881BD44(a2, type metadata accessor for DetectionRequest.Annotation);
          sub_1D87A14E4(v6, &qword_1ECA67750);
          sub_1D87A14E4(v32, &qword_1ECA67750);
        }

LABEL_127:
        v112 = v120;
        sub_1D881BD44(v11, type metadata accessor for DetectionRequest.Annotation);
        sub_1D881BDC4(*(v23 + 48) + v139, v112, type metadata accessor for DetectionRequest.Annotation);
        return 0;
      }

      sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Annotation);

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v53 = v134;
    sub_1D881BDC4(v11, v134, type metadata accessor for DetectionRequest.Annotation);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Annotation);
      goto LABEL_4;
    }

    v54 = *v53;
    if (v54 > 2)
    {
      if (v54 == 3)
      {
        v58 = 0xD00000000000002ELL;
        v100 = &v145;
      }

      else if (v54 == 4)
      {
        v58 = 0xD000000000000024;
        v100 = &v148;
      }

      else
      {
        v58 = 0xD00000000000002CLL;
        v100 = &v147;
      }

      v59 = *(v100 - 32);
    }

    else
    {
      v55 = 0xD00000000000003FLL;
      if (v54 != 1)
      {
        v55 = 0xD000000000000026;
      }

      v56 = v128;
      if (v54 != 1)
      {
        v56 = v127;
      }

      v57 = v54 == 0;
      if (*v53)
      {
        v58 = v55;
      }

      else
      {
        v58 = 0xD00000000000001FLL;
      }

      v59 = v121;
      if (!v57)
      {
        v59 = v56;
      }
    }

    v101 = v11[v32];
    if (v101 > 2)
    {
      if (v101 != 3)
      {
        v102 = v101 == 4;
        if (v101 == 4)
        {
          v103 = 0xD000000000000024;
        }

        else
        {
          v103 = 0xD00000000000002CLL;
        }

        v104 = v116;
        v105 = &v147;
LABEL_113:
        v106 = *(v105 - 32);
        if (!v102)
        {
          v104 = v106;
        }

        goto LABEL_119;
      }

      v103 = 0xD00000000000002ELL;
      v107 = &v145;
    }

    else
    {
      if (v11[v32])
      {
        v102 = v101 == 1;
        if (v101 == 1)
        {
          v103 = 0xD00000000000003FLL;
        }

        else
        {
          v103 = 0xD000000000000026;
        }

        v104 = v128;
        v105 = &v150;
        goto LABEL_113;
      }

      v103 = 0xD00000000000001FLL;
      v107 = &v149;
    }

    v104 = *(v107 - 32);
LABEL_119:
    if (v58 == v103 && (v59 | 0x8000000000000000) == (v104 | 0x8000000000000000))
    {

      sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Annotation);
LABEL_126:
      sub_1D881BD44(a2, type metadata accessor for DetectionRequest.Annotation);
      goto LABEL_127;
    }

    v108 = sub_1D8B16BA0();

    sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Annotation);
    if (v108)
    {
      goto LABEL_126;
    }

    sub_1D881BD44(v11, type metadata accessor for DetectionRequest.Annotation);
    v28 = v132;
LABEL_5:
    v26 = (v26 + 1) & v140;
    if (((*(v142 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  v34 = v135;
  sub_1D881BDC4(v11, v135, type metadata accessor for DetectionRequest.Annotation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = v137;
    sub_1D881BD44(v137, type metadata accessor for DetectionRequest.Annotation);
    v30 = v34;
    v21 = v29;
    sub_1D87A14E4(v30, &qword_1ECA67750);
LABEL_4:
    sub_1D87A14E4(v11, &qword_1ECA63D20);
    goto LABEL_5;
  }

  sub_1D881F6FC(&v11[v32], v6, &qword_1ECA67750);
  result = sub_1D8B13200();
  v32 = v34;
  v21 = v137;
  if ((result & 1) == 0)
  {
    goto LABEL_47;
  }

  if (*(v32 + v131[9]) != *&v6[v131[9]])
  {
    goto LABEL_47;
  }

  v36 = v131[10];
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v32 + v36), *&v6[v36]), vceqq_f64(*(v32 + v36 + 16), *&v6[v36 + 16])), vuzp1q_s32(vceqq_f64(*(v32 + v36 + 32), *&v6[v36 + 32]), vceqq_f64(*(v32 + v36 + 48), *&v6[v36 + 48]))))) & 1) == 0)
  {
    goto LABEL_47;
  }

  v37 = v131[11];
  v38 = *(v32 + v37);
  v39 = *&v6[v37];
  v40 = *(v38 + 16);
  if (v40 != *(v39 + 16))
  {
    goto LABEL_47;
  }

  if (v40 && v38 != v39)
  {
    v41 = (v38 + 40);
    v42 = (v39 + 40);
    while (*(v41 - 1) == *(v42 - 1) && *v41 == *v42)
    {
      v41 += 4;
      v42 += 4;
      if (!--v40)
      {
        goto LABEL_19;
      }
    }

LABEL_47:
    sub_1D881BD44(v137, type metadata accessor for DetectionRequest.Annotation);
LABEL_48:
    sub_1D87A14E4(v6, &qword_1ECA67750);
    sub_1D87A14E4(v32, &qword_1ECA67750);
    sub_1D881BD44(v11, type metadata accessor for DetectionRequest.Annotation);
    goto LABEL_5;
  }

LABEL_19:
  v43 = v131[12];
  v44 = *(v32 + v43);
  v45 = *&v6[v43];
  v46 = *(v44 + 16);
  if (v46 != *(v45 + 16))
  {
    goto LABEL_47;
  }

  if (v46)
  {
    v47 = v44 == v45;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
LABEL_28:
    if (*(v32 + v131[13]) != *&v6[v131[13]] || *(v32 + v131[14]) != *&v6[v131[14]])
    {
      goto LABEL_47;
    }

    v50 = sub_1D88E31C4(*(v32 + v131[15]), *&v6[v131[15]]);
    sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Annotation);
    if (v50)
    {
      goto LABEL_130;
    }

    goto LABEL_48;
  }

  v48 = (v44 + 32);
  v49 = (v45 + 32);
  while (v46)
  {
    if (*v48 != *v49)
    {
      goto LABEL_47;
    }

    ++v48;
    ++v49;
    if (!--v46)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87FB314(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D8B15270();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D881BBCC(&qword_1EE0E3A80, MEMORY[0x1E69E0220]);
  v33 = a2;
  v11 = sub_1D8B15790();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D881BBCC(&qword_1EE0E3A78, MEMORY[0x1E69E0220]);
      v21 = sub_1D8B158C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D8806C9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D87FB5F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for ProcessorState(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D8B16D20();
  sub_1D8A36918(v20);
  v10 = sub_1D8B16D80();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D881BDC4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for ProcessorState);
      v15 = sub_1D8A4D460(v8, a2);
      sub_1D881BD44(v8, type metadata accessor for ProcessorState);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D881BD44(a2, type metadata accessor for ProcessorState);
    sub_1D881BDC4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for ProcessorState);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D881BDC4(a2, v8, type metadata accessor for ProcessorState);
    *&v20[0] = *v3;
    sub_1D8806F64(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D881BFE4(a2, v17, type metadata accessor for ProcessorState);
    return 1;
  }
}

uint64_t sub_1D87FB834(uint64_t a1, unsigned __int8 *a2)
{
  v68 = a1;
  v71 = sub_1D8B13240();
  v64 = *(v71 - 8);
  v4 = MEMORY[0x1EEE9AC00](v71);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - v6;
  v8 = type metadata accessor for DetectionRequest.Originator(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v60 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v75);
  v16 = &v60 - v15;
  v17 = type metadata accessor for DetectionRequest(0);
  v18 = *(v17 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v60 - v22;
  v67 = v2;
  v23 = *v2;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*a2);
  v74 = v17[5];
  DetectionRequest.Originator.hash(into:)(v82);
  v73 = *&a2[v17[6]];
  sub_1D8818BD0(v82, v73);
  v24 = &a2[v17[7]];
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  sub_1D88911A0(*v24, v26, v27, v28);
  v77 = v17;
  v29 = v17[8];
  v30 = *&a2[v29];
  v31 = 0;
  if (v30 != 0.0)
  {
    v31 = *&a2[v29];
  }

  MEMORY[0x1DA720250](v31);
  v32 = sub_1D8B16D80();
  v33 = v23 + 56;
  v80 = v23 + 56;
  v81 = v23;
  v34 = -1 << *(v23 + 32);
  v35 = v32 & ~v34;
  v36 = *(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35;
  v76 = a2;
  if (v36)
  {
    v78 = ~v34;
    v79 = *a2;
    v37 = *(v18 + 72);
    v69 = (v64 + 8);
    v61 = (v64 + 32);
    v63 = v8;
    v62 = v11;
    v60 = v37;
    do
    {
      v38 = v37 * v35;
      sub_1D881BDC4(*(v81 + 48) + v37 * v35, v21, type metadata accessor for DetectionRequest);
      if (*v21 != v79)
      {
        goto LABEL_7;
      }

      v39 = &v16[*(v75 + 48)];
      sub_1D881BDC4(&v21[v77[5]], v16, type metadata accessor for DetectionRequest.Originator);
      sub_1D881BDC4(&v76[v74], v39, type metadata accessor for DetectionRequest.Originator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v50 = v72;
          sub_1D881BDC4(v16, v72, type metadata accessor for DetectionRequest.Originator);
          v51 = *v50;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_6;
          }

          v52 = *v39;
          v53 = *(v39 + 4);
          if (*(v72 + 4))
          {
            if (*(v72 + 4) != 1)
            {
              v54 = v52;
              sub_1D881BD44(v16, type metadata accessor for DetectionRequest.Originator);
              if (v54 != 0.0 || v53 != 2)
              {
                goto LABEL_7;
              }

              goto LABEL_32;
            }

            if (v53 != 1)
            {
              goto LABEL_36;
            }
          }

          else if (v53)
          {
            goto LABEL_36;
          }

          if (v51 != v52)
          {
LABEL_36:
            sub_1D881BD44(v16, type metadata accessor for DetectionRequest.Originator);
            goto LABEL_7;
          }
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_6;
          }

          sub_1D881BD44(v39, type metadata accessor for DetectionRequest.Originator);
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v42 = v70;
          sub_1D881BDC4(v16, v70, type metadata accessor for DetectionRequest.Originator);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            (*v69)(v42, v71);
LABEL_6:
            sub_1D87A14E4(v16, &unk_1ECA64FB0);
            goto LABEL_7;
          }

          v43 = v42;
          v44 = *v61;
          v45 = v71;
          (*v61)(v7, v43, v71);
          v46 = v7;
          v47 = v65;
          v44(v65, v39, v45);
          v37 = v60;
          LODWORD(v64) = sub_1D8B13200();
          v48 = *v69;
          v49 = v47;
          v7 = v46;
          v11 = v62;
          (*v69)(v49, v45);
          v48(v7, v45);
          goto LABEL_19;
        }

        if (EnumCaseMultiPayload == 3)
        {
          sub_1D881BDC4(v16, v11, type metadata accessor for DetectionRequest.Originator);
          v41 = *v11;
          if (swift_getEnumCaseMultiPayload() != 3)
          {

            goto LABEL_6;
          }

          LODWORD(v64) = sub_1D894FA18(v41, *v39);

LABEL_19:
          sub_1D881BD44(v16, type metadata accessor for DetectionRequest.Originator);
          if ((v64 & 1) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_32;
        }

        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_6;
        }
      }

      sub_1D881BD44(v16, type metadata accessor for DetectionRequest.Originator);
LABEL_32:
      if (sub_1D894CAAC(*&v21[v77[6]], v73))
      {
        v83.origin.x = v25;
        v83.origin.y = v26;
        v83.size.width = v27;
        v83.size.height = v28;
        if (CGRectEqualToRect(*&v21[v77[7]], v83) && *&v21[v77[8]] == v30)
        {
          sub_1D881BD44(v21, type metadata accessor for DetectionRequest);
          sub_1D881BD44(v76, type metadata accessor for DetectionRequest);
          sub_1D881BDC4(*(v81 + 48) + v38, v68, type metadata accessor for DetectionRequest);
          return 0;
        }
      }

LABEL_7:
      sub_1D881BD44(v21, type metadata accessor for DetectionRequest);
      v35 = (v35 + 1) & v78;
    }

    while (((*(v80 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0);
  }

  v55 = v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v76;
  v58 = v66;
  sub_1D881BDC4(v76, v66, type metadata accessor for DetectionRequest);
  *&v82[0] = *v55;
  sub_1D88071A8(v58, v35, isUniquelyReferenced_nonNull_native);
  *v55 = *&v82[0];
  sub_1D881BFE4(v57, v68, type metadata accessor for DetectionRequest);
  return 1;
}

uint64_t sub_1D87FC15C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_1D8B15790();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D881BBCC(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
      v21 = sub_1D8B158C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D8807C54(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D87FC43C(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v4 = type metadata accessor for TextDetectorResult(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v57 - v9;
  v65 = v2;
  v10 = *v2;
  sub_1D8B16D20();
  TextDetectorResult.hash(into:)(v67);
  v11 = sub_1D8B16D80();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    do
    {
      sub_1D881BDC4(*(v10 + 48) + v15 * v13, v8, type metadata accessor for TextDetectorResult);
      if ((sub_1D8B13200() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (*&v8[v4[5]] != *(a2 + v4[5]))
      {
        goto LABEL_4;
      }

      v16 = v4[6];
      if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v8[v16], *(a2 + v16)), vceqq_f64(*&v8[v16 + 16], *(a2 + v16 + 16))), vuzp1q_s32(vceqq_f64(*&v8[v16 + 32], *(a2 + v16 + 32)), vceqq_f64(*&v8[v16 + 48], *(a2 + v16 + 48)))))) & 1) == 0)
      {
        goto LABEL_4;
      }

      v17 = v4[7];
      v18 = *&v8[v17];
      v19 = *&v8[v17 + 8];
      v20 = (a2 + v17);
      v21 = v18 == *v20 && v19 == v20[1];
      if (!v21 && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (*&v8[v4[8]] != *(a2 + v4[8]))
      {
        goto LABEL_4;
      }

      if (*&v8[v4[9]] != *(a2 + v4[9]))
      {
        goto LABEL_4;
      }

      if ((sub_1D894DBC4(*&v8[v4[10]], *(a2 + v4[10])) & 1) == 0)
      {
        goto LABEL_4;
      }

      v22 = v4[11];
      v23 = *&v8[v22];
      v61 = *(a2 + v22);
      v62 = v23;
      v24 = *(v23 + 2);
      if (v24 != *(v61 + 2))
      {
        goto LABEL_4;
      }

      if (v24 && v62 != v61)
      {
        v25 = 0;
        do
        {
          v26 = &v62[v25];
          v27 = &v61[v25];
          if (*&v62[v25 + 32] != *&v61[v25 + 32])
          {
            goto LABEL_4;
          }

          v28 = *(v26 + 5);
          v29 = *(v26 + 6);
          v31 = *(v26 + 7);
          v30 = *(v26 + 8);
          v32 = *(v27 + 5);
          v33 = *(v27 + 6);
          v35 = *(v27 + 7);
          v34 = *(v27 + 8);
          v36 = v28 == v32 && v29 == v33;
          v63 = v24;
          if (!v36)
          {
            v59 = v30;
            v60 = v31;
            v57 = v34;
            v58 = v35;
            v37 = sub_1D8B16BA0();
            v34 = v57;
            v35 = v58;
            v30 = v59;
            v31 = v60;
            v24 = v63;
            if ((v37 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (v31 != v35 || v30 != v34)
          {
            v39 = sub_1D8B16BA0();
            v24 = v63;
            if ((v39 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v25 += 40;
        }

        while (--v24);
      }

      v40 = v4[12];
      v41 = &v8[v40];
      v42 = *&v8[v40];
      v43 = a2 + v40;
      v44 = *v43;
      if (v42)
      {
        if (!v44)
        {
          goto LABEL_4;
        }

        v63 = v42;
        v45 = *(v41 + 1);
        v46 = *(v41 + 2);
        v59 = *(v43 + 8);
        v60 = v45;
        v57 = *(v43 + 16);
        v58 = v46;
        v62 = sub_1D881F764(0, &qword_1EE0E36A0);
        v61 = v44;
        v63 = v63;
        v47 = sub_1D8B16400();

        if ((v47 & 1) == 0 || v60 != v59 || v58 != v57)
        {
          goto LABEL_4;
        }
      }

      else if (v44)
      {
        goto LABEL_4;
      }

      v48 = v4[13];
      v49 = *&v8[v48];
      v50 = *&v8[v48 + 8];
      v51 = (a2 + v48);
      if (v49 == *v51 && v50 == v51[1] || (sub_1D8B16BA0() & 1) != 0)
      {
        sub_1D881BD44(v8, type metadata accessor for TextDetectorResult);
        sub_1D881BD44(a2, type metadata accessor for TextDetectorResult);
        sub_1D881BDC4(*(v10 + 48) + v15 * v13, v66, type metadata accessor for TextDetectorResult);
        return 0;
      }

LABEL_4:
      sub_1D881BD44(v8, type metadata accessor for TextDetectorResult);
      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v53 = v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v64;
  sub_1D881BDC4(a2, v64, type metadata accessor for TextDetectorResult);
  v67[0] = *v53;
  sub_1D8807F1C(v55, v13, isUniquelyReferenced_nonNull_native);
  v56 = v66;
  *v53 = v67[0];
  sub_1D881BFE4(a2, v56, type metadata accessor for TextDetectorResult);
  return 1;
}

uint64_t sub_1D87FC950(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](a2);
  v8 = sub_1D8B16D80();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1D8807AE4(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D87FCA70(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D8B152F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D881BBCC(&qword_1EE0E3A70, MEMORY[0x1E69E0248]);
  v33 = a2;
  v11 = sub_1D8B15790();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D881BBCC(&qword_1EE0E3A68, MEMORY[0x1E69E0248]);
      v21 = sub_1D8B158C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D88083D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D87FCD50(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D8B15240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D881BBCC(&qword_1EE0E3A90, MEMORY[0x1E69E01E8]);
  v33 = a2;
  v11 = sub_1D8B15790();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D881BBCC(&qword_1EE0E3A88, MEMORY[0x1E69E01E8]);
      v21 = sub_1D8B158C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D880869C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D87FD030(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for CVTrackSnapshot(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  sub_1D8B16D20();
  CVTrackSnapshot.hash(into:)(v30);
  v11 = sub_1D8B16D80();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    do
    {
      sub_1D881BDC4(*(v10 + 48) + v15 * v13, v8, type metadata accessor for CVTrackSnapshot);
      if (sub_1D8B13200() & 1) != 0 && (v16 = v4[5], v17 = *&v8[v16], v29 = *(a2 + v16), *&v30[0] = v17, , , LOBYTE(v17) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v30, &v29), , , (v17) && (v18 = v4[6], v19 = *&v8[v18], v29 = *(a2 + v18), *&v30[0] = v19, , , LOBYTE(v19) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v30, &v29), , , (v19) && v8[v4[7]] == *(a2 + v4[7]) && *&v8[v4[8]] == *(a2 + v4[8]) && *&v8[v4[9]] == *(a2 + v4[9]))
      {
        v20 = v8[v4[10]];
        sub_1D881BD44(v8, type metadata accessor for CVTrackSnapshot);
        if (v20 == *(a2 + v4[10]))
        {
          sub_1D881BD44(a2, type metadata accessor for CVTrackSnapshot);
          sub_1D881BDC4(*(v10 + 48) + v15 * v13, v28, type metadata accessor for CVTrackSnapshot);
          return 0;
        }
      }

      else
      {
        sub_1D881BD44(v8, type metadata accessor for CVTrackSnapshot);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v21 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v26;
  sub_1D881BDC4(a2, v26, type metadata accessor for CVTrackSnapshot);
  *&v30[0] = *v21;
  sub_1D8808964(v23, v13, isUniquelyReferenced_nonNull_native);
  *v21 = *&v30[0];
  sub_1D881BFE4(a2, v28, type metadata accessor for CVTrackSnapshot);
  return 1;
}

uint64_t sub_1D87FD3AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D8B13990();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D881BBCC(&qword_1ECA63E88, MEMORY[0x1E69E03C0]);
  v33 = a2;
  v11 = sub_1D8B15790();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D881BBCC(&qword_1ECA63E90, MEMORY[0x1E69E03C0]);
      v21 = sub_1D8B158C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D8808CB4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D87FD68C(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v64 = sub_1D8B13240();
  v4 = *(v64 - 8);
  v5 = MEMORY[0x1EEE9AC00](v64);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for DetectionRequest.Originator(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v63 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v51 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v65 = &v51 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v51 - v22;
  v53 = v2;
  v23 = *v2;
  sub_1D8B16D20();
  v70 = a2;
  DetectionRequest.Originator.hash(into:)(v71);
  v24 = sub_1D8B16D80();
  v25 = v23 + 56;
  v68 = v23 + 56;
  v69 = v23;
  v26 = -1 << *(v23 + 32);
  v27 = v24 & ~v26;
  if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_31:
    v46 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v70;
    v49 = v52;
    sub_1D881BDC4(v70, v52, type metadata accessor for DetectionRequest.Originator);
    *&v71[0] = *v46;
    sub_1D8808F7C(v49, v27, isUniquelyReferenced_nonNull_native);
    *v46 = *&v71[0];
    sub_1D881BFE4(v48, v57, type metadata accessor for DetectionRequest.Originator);
    return 1;
  }

  v66 = ~v26;
  v67 = *(v12 + 72);
  v61 = (v4 + 8);
  v55 = (v4 + 32);
  v56 = v11;
  v54 = v8;
  while (1)
  {
    v28 = v67 * v27;
    sub_1D881BDC4(*(v69 + 48) + v67 * v27, v21, type metadata accessor for DetectionRequest.Originator);
    v29 = &v10[*(v8 + 48)];
    sub_1D881BDC4(v21, v10, type metadata accessor for DetectionRequest.Originator);
    sub_1D881BDC4(v70, v29, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v34 = v62;
      sub_1D881BDC4(v10, v62, type metadata accessor for DetectionRequest.Originator);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Originator);
        (*v61)(v34, v64);
        goto LABEL_4;
      }

      v35 = v34;
      v36 = *v55;
      v37 = v58;
      v38 = v64;
      (*v55)(v58, v35, v64);
      v39 = v59;
      v36(v59, v29, v38);
      v60 = sub_1D8B13200();
      v40 = *v61;
      v41 = v39;
      v8 = v54;
      (*v61)(v41, v38);
      v40(v37, v38);
      sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Originator);
      sub_1D881BD44(v10, type metadata accessor for DetectionRequest.Originator);
      if (v60)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      }

      v31 = v63;
      sub_1D881BDC4(v10, v63, type metadata accessor for DetectionRequest.Originator);
      v32 = *v31;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Originator);

        goto LABEL_4;
      }

      v33 = sub_1D894FA18(v32, *v29);

      sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Originator);
      sub_1D881BD44(v10, type metadata accessor for DetectionRequest.Originator);
      if (v33)
      {
        goto LABEL_33;
      }
    }

LABEL_5:
    v27 = (v27 + 1) & v66;
    if (((*(v68 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Originator);
    v42 = v65;
    sub_1D881BDC4(v10, v65, type metadata accessor for DetectionRequest.Originator);
    v43 = *v42;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_4;
    }

    v44 = *v29;
    v45 = *(v29 + 4);
    if (!*(v65 + 4))
    {
      if (v45)
      {
LABEL_27:
        sub_1D881BD44(v10, type metadata accessor for DetectionRequest.Originator);
        goto LABEL_5;
      }

LABEL_26:
      if (v43 == v44)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (*(v65 + 4) == 1)
    {
      if (v45 != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    sub_1D881BD44(v10, type metadata accessor for DetectionRequest.Originator);
    if (v44 == 0.0 && v45 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_5;
  }

  sub_1D881BD44(v21, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_4:
    sub_1D87A14E4(v10, &unk_1ECA64FB0);
    goto LABEL_5;
  }

  sub_1D881BD44(v29, type metadata accessor for DetectionRequest.Originator);
LABEL_32:
  sub_1D881BD44(v10, type metadata accessor for DetectionRequest.Originator);
LABEL_33:
  sub_1D881BD44(v70, type metadata accessor for DetectionRequest.Originator);
  sub_1D881BDC4(*(v69 + 48) + v28, v57, type metadata accessor for DetectionRequest.Originator);
  return 0;
}

uint64_t sub_1D87FDE98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D8B13AD0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D881BBCC(&qword_1ECA63170, MEMORY[0x1E69E03D8]);
  v33 = a2;
  v11 = sub_1D8B15790();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D881BBCC(&qword_1ECA64FD0, MEMORY[0x1E69E03D8]);
      v21 = sub_1D8B158C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D8809718(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D87FE178(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D8B16D10();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D88099E0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D87FE258(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1D8B16620();

    if (v8)
    {

      type metadata accessor for CVTrackedDetection(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
    }

    else
    {
      result = sub_1D8B16610();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_1D8AF01A8(v7, result + 1);
        if (*(v17 + 24) <= *(v17 + 16))
        {
          sub_1D8802CB4();
        }

        sub_1D88B8288(v18, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_1D8B16D20();
    sub_1D8B13240();
    sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    v10 = sub_1D8B16D80();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = sub_1D8B13200();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v2;

      sub_1D8809B00(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v21;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D87FE4F0(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v16 = a2;
  v6 = *v2;
  v15 = a2;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v14);
  v7 = sub_1D8B16D80();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      *&v14[0] = *(*(v6 + 48) + 8 * v9);

      v11 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v14, &v16);

      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v4 = v16;
        goto LABEL_6;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v9);

    return 0;
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v14[0] = *v3;

    sub_1D8809CDC(v4, v9, isUniquelyReferenced_nonNull_native);
    *v3 = *&v14[0];
    *a1 = v4;
    return 1;
  }
}

uint64_t sub_1D87FE64C(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1D8B16D10();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D8809E5C(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D87FE740(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v4 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - v9;
  v39 = v2;
  v10 = *v2;
  sub_1D8B16D20();
  v11.f64[0] = *(a2 + 16);
  v12 = *(a2 + 24);
  *v50 = *(a2 + 25);
  *&v50[3] = *(a2 + 28);
  *&v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  *v53 = *(a2 + 41);
  *&v53[3] = *(a2 + 44);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  v18 = *(a2 + 72);
  v45 = *a2;
  v47 = v45;
  v46 = v11;
  v48 = v11.f64[0];
  v49 = v12;
  v37 = v13;
  v51 = v13;
  v42 = v14;
  v52 = v14;
  v54 = v15;
  v55 = v16;
  v56 = v17;
  v57 = v18;
  CameraSourceFrameMetadata.hash(into:)();
  v43 = *(v4 + 20);
  sub_1D8A36918(v58);
  v41 = *(a2 + *(v4 + 24));
  MEMORY[0x1DA720210]();
  v19 = sub_1D8B16D80();
  v20 = -1 << *(v10 + 32);
  v21 = v19 & ~v20;
  v44 = v10 + 56;
  if ((*(v10 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = ~v20;
    v23 = *(v5 + 72);
    v24.f64[0] = v46.f64[0];
    *&v24.f64[1] = v37;
    v46 = v24;
    v25 = v42;
    do
    {
      sub_1D881BDC4(*(v10 + 48) + v23 * v21, v8, type metadata accessor for TrackManager.TrackedProcessorState);
      v26.f64[0] = *(v8 + 2);
      v26.f64[1] = *(v8 + 4);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*v8, v45), vceqq_f64(v26, v46))))) & 1) != 0 || ((v8[24] ^ v12) & 1) != 0 || ((v8[40] ^ v25) & 1) != 0 || (v59.origin.x = v15, v59.origin.y = v16, v59.size.width = v17, v59.size.height = v18, !CGRectEqualToRect(*(v8 + 48), v59)) || !sub_1D8A4D460(&v8[*(v4 + 20)], a2 + v43))
      {
        sub_1D881BD44(v8, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      else
      {
        v27 = v10;
        v28 = v12;
        v29 = a2;
        v30 = v4;
        v31 = v8[*(v4 + 24)];
        sub_1D881BD44(v8, type metadata accessor for TrackManager.TrackedProcessorState);
        v32 = v31 == v41;
        v4 = v30;
        a2 = v29;
        v12 = v28;
        v10 = v27;
        v25 = v42;
        if (v32)
        {
          sub_1D881BD44(a2, type metadata accessor for TrackManager.TrackedProcessorState);
          sub_1D881BDC4(*(v10 + 48) + v23 * v21, v40, type metadata accessor for TrackManager.TrackedProcessorState);
          return 0;
        }
      }

      v21 = (v21 + 1) & v22;
    }

    while (((*(v44 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  v34 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v38;
  sub_1D881BDC4(a2, v38, type metadata accessor for TrackManager.TrackedProcessorState);
  v47.f64[0] = *v34;
  sub_1D8809F88(v36, v21, isUniquelyReferenced_nonNull_native);
  *v34 = v47.f64[0];
  sub_1D881BFE4(a2, v40, type metadata accessor for TrackManager.TrackedProcessorState);
  return 1;
}

uint64_t sub_1D87FEBA8()
{
  v1 = v0;
  v2 = type metadata accessor for BuiltInAction(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FF0);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_1D881BFE4(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for BuiltInAction);
      sub_1D8B16D20();
      BuiltInAction.hash(into:)(v31);
      result = sub_1D8B16D80();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v15 * v19, type metadata accessor for BuiltInAction);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D87FEEB0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E60);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D8B16D20();
      sub_1D8B15A60();

      result = sub_1D8B16D80();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D87FF1A0()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F40);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_1D881BFE4(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v31);
      result = sub_1D8B16D80();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v15 * v19, type metadata accessor for BundleClassification.ClassificationType);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D87FF4A8()
{
  v1 = v0;
  v2 = type metadata accessor for ActionPin(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E78);
  result = sub_1D8B166C0();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_1D88B7EE4(v5, v8))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_1D881BFE4(*(v6 + 48) + *(v3 + 72) * (v15 | (v9 << 6)), v5, type metadata accessor for ActionPin);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= i)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    v18 = 1 << *(v6 + 32);
    if (v18 >= 64)
    {
      bzero((v6 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v18;
    }

    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

uint64_t sub_1D87FF6B0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DB8);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D8B16D20();
      sub_1D8B15A60();
      result = sub_1D8B16D80();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D87FF910()
{
  v1 = v0;
  v2 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E68);
  result = sub_1D8B166C0();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_1D88B80A8(v5, v8))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_1D881BFE4(*(v6 + 48) + *(v3 + 72) * (v15 | (v9 << 6)), v5, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= i)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    v18 = 1 << *(v6 + 32);
    if (v18 >= 64)
    {
      bzero((v6 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v18;
    }

    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

uint64_t sub_1D87FFB18()
{
  v1 = v0;
  v42 = type metadata accessor for BuiltInAction(0);
  v2 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v41 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FA8);
  result = sub_1D8B166C0();
  v12 = result;
  if (*(v10 + 16))
  {
    v37 = v0;
    v38 = v9;
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v40 = (v2 + 48);
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v44 = (v17 - 1) & v17;
LABEL_15:
      v24 = *(v10 + 48);
      v43 = *(v41 + 72);
      sub_1D881F6FC(v24 + v43 * (v21 | (v13 << 6)), v9, &qword_1ECA63188);
      sub_1D8B16D20();
      sub_1D87A0E38(v9, v7, &qword_1ECA63188);
      if ((*v40)(v7, 1, v42) == 1)
      {
        sub_1D8B16D40();
      }

      else
      {
        v25 = v10;
        v26 = v39;
        sub_1D881BFE4(v7, v39, type metadata accessor for BuiltInAction);
        sub_1D8B16D40();
        BuiltInAction.hash(into:)(v45);
        v27 = v26;
        v10 = v25;
        v9 = v38;
        sub_1D881BD44(v27, type metadata accessor for BuiltInAction);
      }

      result = sub_1D8B16D80();
      v28 = -1 << *(v12 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1D881F6FC(v9, *(v12 + 48) + v20 * v43, &qword_1ECA63188);
      ++*(v12 + 16);
      v17 = v44;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v10 + 32);
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    v1 = v37;
    *(v10 + 16) = 0;
  }

  *v1 = v12;
  return result;
}

uint64_t sub_1D87FFF94()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DB0);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = *(v25 + 72);
      sub_1D881BFE4(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4, type metadata accessor for CVBundle);
      sub_1D8B16D20();
      sub_1D891CA54(v27);
      v18 = v26;
      sub_1D87CF97C(v27, *&v4[*(v26 + 20)]);
      sub_1D87CF97C(v27, *&v4[*(v18 + 24)]);
      sub_1D893983C(v27, *&v4[*(v18 + 28)]);
      sub_1D8B16D80();
      v19 = i;
      v20 = sub_1D8B165A0();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v20 * v17, type metadata accessor for CVBundle);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v16 = v9[v8];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v1 = v23;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D8800260()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest.Annotation(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D28);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_1D881BFE4(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8B16D20();
      DetectionRequest.Annotation.hash(into:)(v31);
      result = sub_1D8B16D80();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v15 * v19, type metadata accessor for DetectionRequest.Annotation);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D8800568()
{
  v1 = v0;
  v35 = sub_1D8B15270();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EE0);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D881BBCC(&qword_1EE0E3A80, MEMORY[0x1E69E0220]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D88008C4()
{
  v1 = v0;
  v2 = type metadata accessor for ProcessorState(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E30);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_1D881BFE4(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for ProcessorState);
      sub_1D8B16D20();
      sub_1D8A36918(v31);
      result = sub_1D8B16D80();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v15 * v19, type metadata accessor for ProcessorState);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D8800BCC()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest(0);
  v32 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E20);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_1D881BFE4(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for DetectionRequest);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](*v4);
      DetectionRequest.Originator.hash(into:)(v33);
      sub_1D8818BD0(v33, *&v4[v2[6]]);
      sub_1D88911A0(*&v4[v2[7]], *&v4[v2[7] + 8], *&v4[v2[7] + 16], *&v4[v2[7] + 24]);
      v21 = *&v4[v2[8]];
      if (v21 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x1DA720250](*&v21);
      result = sub_1D8B16D80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v15 * v20, type metadata accessor for DetectionRequest);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D8800F3C()
{
  v1 = v0;
  v35 = sub_1D8B13240();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D50);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D8801298()
{
  v1 = v0;
  v2 = type metadata accessor for TextDetectorResult(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EB8);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v22 = v0;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v23 = result + 56;
    for (i = v24; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v25 + 72);
      sub_1D881BFE4(*(v4 + 48) + v17 * (v14 | (v7 << 6)), i, type metadata accessor for TextDetectorResult);
      sub_1D8B16D20();
      TextDetectorResult.hash(into:)(v26);
      sub_1D8B16D80();
      v18 = v23;
      v19 = sub_1D8B165A0();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D881BFE4(i, *(v6 + 48) + v19 * v17, type metadata accessor for TextDetectorResult);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v4 + 32);
    if (v20 >= 64)
    {
      bzero((v4 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v1 = v22;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D8801534(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v18);
      result = sub_1D8B16D80();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1D880177C()
{
  v1 = v0;
  v35 = sub_1D8B152F0();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EC0);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D881BBCC(&qword_1EE0E3A70, MEMORY[0x1E69E0248]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D8801AD8()
{
  v1 = v0;
  v35 = sub_1D8B15240();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EC8);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D881BBCC(&qword_1EE0E3A90, MEMORY[0x1E69E01E8]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D8801E34()
{
  v1 = v0;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D70);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v22 = v0;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v23 = result + 56;
    for (i = v24; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v25 + 72);
      sub_1D881BFE4(*(v4 + 48) + v17 * (v14 | (v7 << 6)), i, type metadata accessor for CVTrackSnapshot);
      sub_1D8B16D20();
      CVTrackSnapshot.hash(into:)(v26);
      sub_1D8B16D80();
      v18 = v23;
      v19 = sub_1D8B165A0();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D881BFE4(i, *(v6 + 48) + v19 * v17, type metadata accessor for CVTrackSnapshot);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v4 + 32);
    if (v20 >= 64)
    {
      bzero((v4 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v1 = v22;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D88020D0()
{
  v1 = v0;
  v35 = sub_1D8B13990();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E98);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D881BBCC(&qword_1ECA63E88, MEMORY[0x1E69E03C0]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D880242C()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest.Originator(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D30);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_1D881BFE4(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for DetectionRequest.Originator);
      sub_1D8B16D20();
      DetectionRequest.Originator.hash(into:)(v31);
      result = sub_1D8B16D80();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v15 * v19, type metadata accessor for DetectionRequest.Originator);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D8802734()
{
  v1 = v0;
  v35 = sub_1D8B13AD0();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DD0);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D881BBCC(&qword_1ECA63170, MEMORY[0x1E69E03D8]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D8802A90()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D98);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D8B16D10();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D8802CB4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D58);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      result = sub_1D8B16D80();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D8802F5C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D88);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      v26 = v16;
      sub_1D8B16D20();
      CVDetection.hash(into:)(v25);
      result = sub_1D8B16D80();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D88031B0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D68);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D8B16D10();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D88033E4()
{
  v1 = v0;
  v2 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D60);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = *(v36 + 72);
      v18 = *(v5 + 48) + v17 * (v14 | (v8 << 6));
      v38 = type metadata accessor for TrackManager.TrackedProcessorState;
      v39 = v17;
      sub_1D881BFE4(v18, v4, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8B16D20();
      v19 = *v4;
      v20 = v4[1];
      v21 = v4[2];
      v22 = v4[4];
      v23 = v4[6];
      v24 = v4[7];
      v25 = v4[8];
      v26 = v4[9];
      if (*v4 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x1DA720250](*&v19);
      if (v20 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v20;
      }

      MEMORY[0x1DA720250](*&v27);
      if (v21 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v21;
      }

      MEMORY[0x1DA720250](*&v28);
      sub_1D8B16D40();
      if (v22 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v22;
      }

      MEMORY[0x1DA720250](*&v29);
      sub_1D8B16D40();
      sub_1D88911A0(v23, v24, v25, v26);
      v30 = v37;
      sub_1D8A36918(v40);
      MEMORY[0x1DA720210](*(v4 + *(v30 + 24)));
      sub_1D8B16D80();
      v31 = i;
      v32 = sub_1D8B165A0();
      *(v31 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v32 * v39, v38);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v16 = v9[v8];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v33 = 1 << *(v5 + 32);
    if (v33 >= 64)
    {
      bzero((v5 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    v1 = v34;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D880374C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BuiltInAction(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1D87FEBA8();
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D880A39C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1D880C88C();
  }

  v15 = *v4;
  sub_1D8B16D20();
  BuiltInAction.hash(into:)(v27);
  v16 = sub_1D8B16D80();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1D881BDC4(*(v15 + 48) + v19 * a2, v12, type metadata accessor for BuiltInAction);
      v20 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1D881BD44(v12, type metadata accessor for BuiltInAction);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for BuiltInAction);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8803990(uint64_t result, unint64_t a2, char a3)
{
  v32 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_1D87FEEB0();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D880B9DC(&unk_1ECA67E60);
      goto LABEL_45;
    }

    sub_1D880CB64();
  }

  v7 = 0x7474756853657270;
  v8 = *v3;
  sub_1D8B16D20();
  sub_1D8B15A60();

  result = sub_1D8B16D80();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v31 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = ~v9;
    v10 = 0x62616D6165727473;
    v11 = 0x6E49746C697562;
    v12 = v8;
    do
    {
      v13 = *(*(v8 + 48) + a2);
      if (v13 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v14 = 0x6261686372616573;
        }

        else
        {
          v14 = v7;
        }

        if (*(*(v8 + 48) + a2))
        {
          v15 = 0xEA0000000000656CLL;
        }

        else
        {
          v15 = 0xEA00000000007265;
        }
      }

      else if (v13 == 2)
      {
        v14 = 0x7261507473726966;
        v15 = 0xEA00000000007974;
      }

      else
      {
        if (v13 == 3)
        {
          v14 = v11;
        }

        else
        {
          v14 = v10;
        }

        if (v13 == 3)
        {
          v15 = 0xE700000000000000;
        }

        else
        {
          v15 = 0xEA0000000000656CLL;
        }
      }

      v16 = 0xEA00000000007265;
      v17 = v10;
      v18 = v11;
      if (v32 == 3)
      {
        v10 = v11;
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xEA0000000000656CLL;
      }

      if (v32 == 2)
      {
        v10 = 0x7261507473726966;
        v19 = 0xEA00000000007974;
      }

      v20 = v7;
      if (v32)
      {
        v21 = 0x6261686372616573;
      }

      else
      {
        v21 = v7;
      }

      if (v32)
      {
        v16 = 0xEA0000000000656CLL;
      }

      v22 = v32 <= 1u ? v21 : v10;
      v23 = v32 <= 1u ? v16 : v19;
      if (v14 == v22 && v15 == v23)
      {
        goto LABEL_48;
      }

      v24 = sub_1D8B16BA0();

      if (v24)
      {
        goto LABEL_49;
      }

      a2 = (a2 + 1) & v30;
      v7 = v20;
      v10 = v17;
      v8 = v12;
      v11 = v18;
    }

    while (((*(v31 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v32;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_48:

LABEL_49:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8803CE8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1D87FF1A0();
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D880A5BC();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1D880CE24();
  }

  v15 = *v4;
  sub_1D8B16D20();
  BundleClassification.ClassificationType.hash(into:)(v27);
  v16 = sub_1D8B16D80();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1D881BDC4(*(v15 + 48) + v19 * a2, v12, type metadata accessor for BundleClassification.ClassificationType);
      v20 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v12, a1);
      sub_1D881BD44(v12, type metadata accessor for BundleClassification.ClassificationType);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for BundleClassification.ClassificationType);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8803F2C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ActionPin(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v41 = v8;
  v42 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_37;
  }

  if (a3)
  {
    sub_1D87FF4A8();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D880A7C8();
      goto LABEL_37;
    }

    sub_1D880D0FC();
  }

  v13 = *v3;
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v14 = (a1 + v7[5]);
  v15 = v14[3];
  v45 = v14[2];
  v46 = v15;
  v17 = v14[1];
  v43 = *v14;
  v16 = v43.f64[0];
  v44 = v17;
  if (v43.f64[0] == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1DA720250](*&v16);
  v18 = v43.f64[1];
  if (v43.f64[1] == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1DA720250](*&v18);
  v19 = v44.f64[0];
  if (v44.f64[0] == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1DA720250](*&v19);
  v20 = v44.f64[1];
  if (v44.f64[1] == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1DA720250](*&v20);
  v21 = v45.f64[0];
  if (v45.f64[0] == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1DA720250](*&v21);
  v22 = v45.f64[1];
  if (v45.f64[1] == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1DA720250](*&v22);
  v23 = v46.f64[0];
  if (v46.f64[0] == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1DA720250](*&v23);
  v24 = v46.f64[1];
  if (v46.f64[1] == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1DA720250](*&v24);
  v25 = (a1 + v7[6]);
  v26 = *v25;
  v27 = v25[1];
  sub_1D8B15A60();
  v40 = *(a1 + v7[7]);
  sub_1D87CF3E8(v47, v40);
  HIDWORD(v39) = *(a1 + v7[8]);
  sub_1D8B16D40();
  v28 = sub_1D8B16D80();
  v29 = -1 << *(v13 + 32);
  a2 = v28 & ~v29;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = ~v29;
    v31 = *(v8 + 72);
    while (1)
    {
      sub_1D881BDC4(*(v13 + 48) + v31 * a2, v10, type metadata accessor for ActionPin);
      if (sub_1D8B13200() & 1) != 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v10[v7[5]], v43), vceqq_f64(*&v10[v7[5] + 16], v44)), vuzp1q_s32(vceqq_f64(*&v10[v7[5] + 32], v45), vceqq_f64(*&v10[v7[5] + 48], v46))))))
      {
        v32 = &v10[v7[6]];
        v33 = *v32 == v26 && *(v32 + 1) == v27;
        if (v33 || (sub_1D8B16BA0()) && (sub_1D88E245C(*&v10[v7[7]], v40) & 1) != 0 && HIDWORD(v39) == v10[v7[8]])
        {
          break;
        }
      }

      sub_1D881BD44(v10, type metadata accessor for ActionPin);
      a2 = (a2 + 1) & v30;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_1D881BD44(v10, type metadata accessor for ActionPin);
    sub_1D8B16C20();
    __break(1u);
  }

LABEL_37:
  v34 = *v42;
  *(*v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v34 + 48) + *(v41 + 72) * a2, type metadata accessor for ActionPin);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

uint64_t sub_1D8804384(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D87FF6B0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D880A9D4();
      goto LABEL_16;
    }

    sub_1D880D2C8();
  }

  v10 = *v4;
  sub_1D8B16D20();
  sub_1D8B15A60();
  result = sub_1D8B16D80();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D8B16BA0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8804504(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for BuiltInAction(0);
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v72 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v73 = v3;
  if (v19 <= v18 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v67 = v15;
      v65 = v13;
      v66 = v12;
      sub_1D87FF910();
    }

    else
    {
      if (v19 > v18)
      {
        sub_1D880AB30();
        goto LABEL_62;
      }

      v67 = v15;
      v65 = v13;
      v66 = v12;
      sub_1D880D500();
    }

    v20 = *v3;
    sub_1D8B16D20();
    sub_1D8B13240();
    sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    v21 = type metadata accessor for ActionPin(0);
    v22 = (a1 + v21[5]);
    v23 = v22[3];
    v78 = v22[2];
    v79 = v23;
    v25 = v22[1];
    v76 = *v22;
    v24 = v76.f64[0];
    v77 = v25;
    if (v76.f64[0] == 0.0)
    {
      v24 = 0.0;
    }

    MEMORY[0x1DA720250](*&v24);
    v26 = v76.f64[1];
    if (v76.f64[1] == 0.0)
    {
      v26 = 0.0;
    }

    MEMORY[0x1DA720250](*&v26);
    v27 = v77.f64[0];
    if (v77.f64[0] == 0.0)
    {
      v27 = 0.0;
    }

    MEMORY[0x1DA720250](*&v27);
    v28 = v77.f64[1];
    if (v77.f64[1] == 0.0)
    {
      v28 = 0.0;
    }

    MEMORY[0x1DA720250](*&v28);
    v29 = v78.f64[0];
    if (v78.f64[0] == 0.0)
    {
      v29 = 0.0;
    }

    MEMORY[0x1DA720250](*&v29);
    v30 = v78.f64[1];
    if (v78.f64[1] == 0.0)
    {
      v30 = 0.0;
    }

    MEMORY[0x1DA720250](*&v30);
    v31 = v79.f64[0];
    if (v79.f64[0] == 0.0)
    {
      v31 = 0.0;
    }

    MEMORY[0x1DA720250](*&v31);
    v32 = v79.f64[1];
    if (v79.f64[1] == 0.0)
    {
      v32 = 0.0;
    }

    MEMORY[0x1DA720250](*&v32);
    v33 = (a1 + v21[6]);
    v34 = v33[1];
    v75 = *v33;
    sub_1D8B15A60();
    v71 = *(a1 + v21[7]);
    sub_1D87CF3E8(v80, v71);
    v68 = *(a1 + v21[8]);
    sub_1D8B16D40();
    v69 = (a1 + *(v72 + 20));
    ActionPin.Pill.hash(into:)(v80);
    v35 = sub_1D8B16D80();
    v36 = -1 << *(v20 + 32);
    a2 = v35 & ~v36;
    if ((*(v20 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v63 = v9;
      v64 = v7;
      v37 = ~v36;
      v38 = *(v74 + 72);
      v70 += 6;
      do
      {
        sub_1D881BDC4(*(v20 + 48) + v38 * a2, v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        if ((sub_1D8B13200() & 1) == 0 || (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v17[v21[5]], v76), vceqq_f64(*&v17[v21[5] + 16], v77)), vuzp1q_s32(vceqq_f64(*&v17[v21[5] + 32], v78), vceqq_f64(*&v17[v21[5] + 48], v79))))) & 1) == 0)
        {
          goto LABEL_27;
        }

        v39 = &v17[v21[6]];
        v40 = *v39 == v75 && *(v39 + 1) == v34;
        if (!v40 && (sub_1D8B16BA0() & 1) == 0)
        {
          goto LABEL_27;
        }

        if ((sub_1D88E245C(*&v17[v21[7]], v71) & 1) == 0 || v68 != v17[v21[8]])
        {
          goto LABEL_27;
        }

        v41 = &v17[*(v72 + 20)];
        v42 = *v41 == *v69 && *(v41 + 1) == v69[1];
        if (!v42 && (sub_1D8B16BA0() & 1) == 0 || (*(v41 + 2) != v69[2] || *(v41 + 3) != v69[3]) && (sub_1D8B16BA0() & 1) == 0)
        {
          goto LABEL_27;
        }

        if ((*(v41 + 4) != v69[4] || *(v41 + 5) != v69[5]) && (sub_1D8B16BA0() & 1) == 0)
        {
          goto LABEL_27;
        }

        v43 = *(v41 + 7);
        v44 = v69[7];
        if (v43)
        {
          if (!v44 || (*(v41 + 6) != v69[6] || v43 != v44) && (sub_1D8B16BA0() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v44)
        {
          goto LABEL_27;
        }

        if (*(v41 + 8) == v69[8])
        {
          v61 = *(type metadata accessor for ActionPin.Pill(0) + 36);
          v62 = *(v65 + 48);
          v60 = type metadata accessor for ActionPin.Pill.Source;
          v45 = v61 + v41;
          v46 = v67;
          sub_1D881BDC4(v45, v67, type metadata accessor for ActionPin.Pill.Source);
          sub_1D881BDC4(v61 + v69, v46 + v62, v60);
          v47 = *v70;
          v67 = v46;
          v48 = v46;
          v49 = v64;
          v61 = v47;
          if (v47(v48, 1, v64) == 1)
          {
            if (v61(&v67[v62], 1, v49) == 1)
            {
              goto LABEL_65;
            }

            goto LABEL_59;
          }

          v50 = v67;
          sub_1D881BDC4(v67, v66, type metadata accessor for ActionPin.Pill.Source);
          v51 = (v50 + v62);
          v52 = v62;
          if (v61(v51, 1, v64) == 1)
          {
            sub_1D881BD44(v66, type metadata accessor for BuiltInAction);
LABEL_59:
            sub_1D87A14E4(v67, &qword_1ECA63E58);
            goto LABEL_27;
          }

          v53 = &v67[v52];
          v54 = v63;
          sub_1D881BFE4(v53, v63, type metadata accessor for BuiltInAction);
          LODWORD(v62) = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v66, v54);
          sub_1D881BD44(v54, type metadata accessor for BuiltInAction);
          sub_1D881BD44(v66, type metadata accessor for BuiltInAction);
          if (v62)
          {
            goto LABEL_65;
          }

          sub_1D881BD44(v67, type metadata accessor for ActionPin.Pill.Source);
        }

LABEL_27:
        sub_1D881BD44(v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        a2 = (a2 + 1) & v37;
      }

      while (((*(v20 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_62:
  v55 = *v73;
  *(*v73 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v55 + 48) + *(v74 + 72) * a2, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
  v57 = *(v55 + 16);
  v58 = __OFADD__(v57, 1);
  v59 = v57 + 1;
  if (v58)
  {
    __break(1u);
LABEL_65:
    sub_1D881BD44(v67, type metadata accessor for ActionPin.Pill.Source);
    sub_1D881BD44(v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    result = sub_1D8B16C20();
    __break(1u);
  }

  else
  {
    *(v55 + 16) = v59;
  }

  return result;
}

uint64_t sub_1D8804E7C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FA0);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v41 - v7;
  v9 = type metadata accessor for BuiltInAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v45 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v47 = &v41 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  v21 = *(*v4 + 16);
  v22 = *(*v4 + 24);
  v43 = v4;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v42 = v18;
      sub_1D87FFB18();
    }

    else
    {
      if (v22 > v21)
      {
        sub_1D880AD3C();
        goto LABEL_21;
      }

      v42 = v18;
      sub_1D880D6CC();
    }

    v52 = *v4;
    sub_1D8B16D20();
    sub_1D87A0E38(v54, v20, &qword_1ECA63188);
    v24 = *(v10 + 48);
    v23 = v10 + 48;
    v51 = v24;
    if (v24(v20, 1, v9) == 1)
    {
      sub_1D8B16D40();
    }

    else
    {
      v25 = v20;
      v26 = v46;
      sub_1D881BFE4(v25, v46, type metadata accessor for BuiltInAction);
      sub_1D8B16D40();
      BuiltInAction.hash(into:)(v55);
      sub_1D881BD44(v26, type metadata accessor for BuiltInAction);
    }

    v27 = sub_1D8B16D80();
    v28 = -1 << *(v52 + 32);
    a2 = v27 & ~v28;
    v50 = v52 + 56;
    if ((*(v52 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v49 = ~v28;
      v48 = *(v45 + 72);
      v29 = v47;
      v44 = v23;
      do
      {
        sub_1D87A0E38(*(v52 + 48) + v48 * a2, v29, &qword_1ECA63188);
        v34 = *(v53 + 48);
        sub_1D87A0E38(v29, v8, &qword_1ECA63188);
        sub_1D87A0E38(v54, &v8[v34], &qword_1ECA63188);
        v35 = v51;
        if (v51(v8, 1, v9) == 1)
        {
          sub_1D87A14E4(v29, &qword_1ECA63188);
          if (v35(&v8[v34], 1, v9) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1D87A0E38(v8, v15, &qword_1ECA63188);
          if (v35(&v8[v34], 1, v9) != 1)
          {
            v30 = v15;
            v31 = v46;
            sub_1D881BFE4(&v8[v34], v46, type metadata accessor for BuiltInAction);
            v32 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v30, v31);
            v33 = v31;
            v15 = v30;
            sub_1D881BD44(v33, type metadata accessor for BuiltInAction);
            v29 = v47;
            sub_1D87A14E4(v47, &qword_1ECA63188);
            sub_1D881BD44(v15, type metadata accessor for BuiltInAction);
            sub_1D87A14E4(v8, &qword_1ECA63188);
            if (v32)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          v29 = v47;
          sub_1D87A14E4(v47, &qword_1ECA63188);
          sub_1D881BD44(v15, type metadata accessor for BuiltInAction);
        }

        sub_1D87A14E4(v8, &qword_1ECA63FA0);
LABEL_14:
        a2 = (a2 + 1) & v49;
      }

      while (((*(v50 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v36 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881F6FC(v54, *(v36 + 48) + *(v45 + 72) * a2, &qword_1ECA63188);
  v38 = *(v36 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
LABEL_24:
    sub_1D87A14E4(v8, &qword_1ECA63188);
LABEL_25:
    result = sub_1D8B16C20();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v40;
  }

  return result;
}

uint64_t sub_1D880544C(uint64_t a1, unint64_t a2, char a3)
{
  v64 = a1;
  v57 = sub_1D8B13240();
  v7 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v63 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v45 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v45 - v15;
  v54 = type metadata accessor for CVBundle(0);
  v51 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v48 = v3;
  if (v19 <= v18 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D87FFF94();
    }

    else
    {
      if (v19 > v18)
      {
        sub_1D880AF64();
        goto LABEL_33;
      }

      sub_1D880DB04();
    }

    v20 = *v3;
    sub_1D8B16D20();
    v21 = v64;
    sub_1D891CA54(v67);
    v22 = v54;
    v47 = *(v21 + v54[5]);
    sub_1D87CF97C(v67, v47);
    v46 = *(v21 + v22[6]);
    sub_1D87CF97C(v67, v46);
    v45 = *(v21 + v22[7]);
    sub_1D893983C(v67, v45);
    v23 = sub_1D8B16D80();
    v60 = v20 + 56;
    v61 = v20;
    v24 = -1 << *(v20 + 32);
    a2 = v23 & ~v24;
    if ((*(v20 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v59 = ~v24;
      v58 = *(v51 + 72);
      v56 = (v7 + 8);
      v49 = (v7 + 32);
      v4 = v55;
      v50 = v10;
      do
      {
        sub_1D881BDC4(*(v61 + 48) + v58 * a2, v4, type metadata accessor for CVBundle);
        v25 = *(v62 + 48);
        sub_1D881BDC4(v4, v16, type metadata accessor for CVBundle.BundleType);
        sub_1D881BDC4(v64, &v16[v25], type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D881BDC4(v16, v63, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            (*v56)(v63, v57);
            goto LABEL_11;
          }

          v26 = v63;
          v27 = v52;
          v28 = v57;
          (*v49)(v52, &v16[v25], v57);
          v29 = sub_1D8B13200();
          v30 = *v56;
          v31 = v27;
          v4 = v55;
          (*v56)(v31, v28);
          v32 = v28;
          v10 = v50;
          v30(v26, v32);
          if ((v29 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_1D881BDC4(v16, v65, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D881BD44(v65, type metadata accessor for CVTrackSnapshot);
LABEL_11:
            sub_1D87A14E4(v16, &qword_1ECA63DA8);
            goto LABEL_12;
          }

          sub_1D881BFE4(&v16[v25], v10, type metadata accessor for CVTrackSnapshot);
          if ((sub_1D8B13200() & 1) == 0 || (v33 = v53[5], v34 = *(v65 + v33), v66 = *&v10[v33], *&v67[0] = v34, , , LOBYTE(v34) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v67, &v66), , , (v34 & 1) == 0) || (v35 = v53[6], v36 = *(v65 + v35), v66 = *&v10[v35], *&v67[0] = v36, , , LOBYTE(v36) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v67, &v66), , , (v36 & 1) == 0) || *(v65 + v53[7]) != v10[v53[7]] || *(v65 + v53[8]) != *&v10[v53[8]] || *(v65 + v53[9]) != *&v10[v53[9]])
          {
            sub_1D881BD44(v10, type metadata accessor for CVTrackSnapshot);
LABEL_31:
            sub_1D881BD44(v65, type metadata accessor for CVTrackSnapshot);
LABEL_32:
            sub_1D881BD44(v16, type metadata accessor for CVBundle.BundleType);
            goto LABEL_12;
          }

          v37 = v53[10];
          v38 = *(v65 + v37);
          v39 = v10[v37];
          sub_1D881BD44(v10, type metadata accessor for CVTrackSnapshot);
          if (v38 != v39)
          {
            goto LABEL_31;
          }

          sub_1D881BD44(v65, type metadata accessor for CVTrackSnapshot);
        }

        sub_1D881BD44(v16, type metadata accessor for CVBundle.BundleType);
        if (sub_1D88E4444(*(v4 + v54[5]), v47) & 1) != 0 && (sub_1D88E4444(*(v4 + v54[6]), v46) & 1) != 0 && (sub_1D8854A60(*(v4 + v54[7]), v45))
        {
          goto LABEL_36;
        }

LABEL_12:
        sub_1D881BD44(v4, type metadata accessor for CVBundle);
        a2 = (a2 + 1) & v59;
      }

      while (((*(v60 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_33:
  v40 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(v64, *(v40 + 48) + *(v51 + 72) * a2, type metadata accessor for CVBundle);
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
LABEL_36:
    sub_1D881BD44(v4, type metadata accessor for CVBundle);
    result = sub_1D8B16C20();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

uint64_t sub_1D8805CE8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v128);
  v9 = v112 - v8;
  v138 = type metadata accessor for TextDetectorResult(0);
  v129 = *(v138 - 1);
  v10 = MEMORY[0x1EEE9AC00](v138);
  v140 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v112 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D20);
  MEMORY[0x1EEE9AC00](v137);
  v15 = v112 - v14;
  v16 = type metadata accessor for DetectionRequest.Annotation(0);
  v127 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v131 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v132 = v112 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v130 = (v112 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v141 = v112 - v23;
  v24 = *(*v4 + 16);
  v25 = *(*v4 + 24);
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D8800260();
    }

    else
    {
      if (v25 > v24)
      {
        sub_1D880B170();
        goto LABEL_130;
      }

      sub_1D880DDA4();
    }

    v26 = *v4;
    sub_1D8B16D20();
    DetectionRequest.Annotation.hash(into:)(v142);
    v27 = sub_1D8B16D80();
    v135 = v26 + 56;
    v136 = v26;
    v28 = -1 << *(v26 + 32);
    a2 = v27 & ~v28;
    if ((*(v26 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v133 = ~v28;
      v134 = *(v127 + 72);
      v118 = "";
      v121 = "textComposition.OpenEndedSchema";
      v120 = "ucturedExtraction.addToCalendar";
      v112[1] = "sualIntelligenceCamera";
      v113 = "IntelligenceCamera.ImageSearch";
      v112[2] = "gs.AppleIntelligence";
      v119 = v16;
      v139 = v13;
      v116 = a1;
      v115 = v4;
      v114 = v9;
      while (1)
      {
        v29 = v141;
        sub_1D881BDC4(*(v136 + 48) + v134 * a2, v141, type metadata accessor for DetectionRequest.Annotation);
        v30 = *(v137 + 48);
        sub_1D881BDC4(v29, v15, type metadata accessor for DetectionRequest.Annotation);
        sub_1D881BDC4(a1, &v15[v30], type metadata accessor for DetectionRequest.Annotation);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          break;
        }

        v48 = v130;
        sub_1D881BDC4(v15, v130, type metadata accessor for DetectionRequest.Annotation);
        v49 = *v48;
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);

LABEL_11:
          sub_1D87A14E4(v15, &qword_1ECA63D20);
          goto LABEL_12;
        }

        v57 = *&v15[v30];
        v58 = *(v49 + 16);
        if (v58 == *(v57 + 16))
        {
          if (!v58 || v49 == v57)
          {
            goto LABEL_136;
          }

          v59 = 0;
          v60 = (*(v129 + 80) + 32) & ~*(v129 + 80);
          v125 = v49 + v60;
          v124 = v57 + v60;
          v123 = v49;
          v122 = v57;
          v117 = v58;
          while (v59 < *(v49 + 16))
          {
            v61 = *(v129 + 72) * v59;
            sub_1D881BDC4(v125 + v61, v13, type metadata accessor for TextDetectorResult);
            if (v59 >= *(v57 + 16))
            {
              goto LABEL_133;
            }

            v126 = v59;
            sub_1D881BDC4(v124 + v61, v140, type metadata accessor for TextDetectorResult);
            if ((sub_1D8B13200() & 1) == 0)
            {
              goto LABEL_104;
            }

            if (*&v139[v138[5]] != *(v140 + v138[5]))
            {
              goto LABEL_104;
            }

            v62 = v138[6];
            if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v139[v62], *(v140 + v62)), vceqq_f64(*&v139[v62 + 16], *(v140 + v62 + 16))), vuzp1q_s32(vceqq_f64(*&v139[v62 + 32], *(v140 + v62 + 32)), vceqq_f64(*&v139[v62 + 48], *(v140 + v62 + 48)))))) & 1) == 0)
            {
              goto LABEL_104;
            }

            v63 = v138[7];
            v64 = &v139[v63];
            v65 = *&v139[v63 + 8];
            v66 = (v140 + v63);
            if ((*v64 != *v66 || v65 != v66[1]) && (sub_1D8B16BA0() & 1) == 0)
            {
              goto LABEL_104;
            }

            if (*&v139[v138[8]] != *(v140 + v138[8]))
            {
              goto LABEL_104;
            }

            if (*&v139[v138[9]] != *(v140 + v138[9]))
            {
              goto LABEL_104;
            }

            if ((sub_1D894DBC4(*&v139[v138[10]], *(v140 + v138[10])) & 1) == 0)
            {
              goto LABEL_104;
            }

            v67 = v138[11];
            v68 = *&v139[v67];
            v69 = *(v140 + v67);
            v70 = *(v68 + 16);
            if (v70 != *(v69 + 16))
            {
              goto LABEL_104;
            }

            if (v70 && v68 != v69)
            {
              v71 = 0;
              while (1)
              {
                v72 = (v68 + v71);
                v73 = (v69 + v71);
                if (*(v68 + v71 + 32) != *(v69 + v71 + 32))
                {
                  break;
                }

                v74 = v72[7];
                v75 = v72[8];
                v76 = v73[7];
                v77 = v73[8];
                v78 = v72[5] == v73[5] && v72[6] == v73[6];
                if (!v78 && (sub_1D8B16BA0() & 1) == 0)
                {
                  break;
                }

                v79 = v74 == v76 && v75 == v77;
                if (!v79 && (sub_1D8B16BA0() & 1) == 0)
                {
                  break;
                }

                v71 += 40;
                if (!--v70)
                {
                  goto LABEL_88;
                }
              }

LABEL_104:
              sub_1D881BD44(v140, type metadata accessor for TextDetectorResult);
              v13 = v139;
              sub_1D881BD44(v139, type metadata accessor for TextDetectorResult);
              a1 = v116;
              v4 = v115;
              v9 = v114;
              goto LABEL_105;
            }

LABEL_88:
            v80 = v138[12];
            v81 = &v139[v80];
            v82 = *v81;
            v83 = v140 + v80;
            v84 = *v83;
            if (*v81)
            {
              if (!v84)
              {
                goto LABEL_104;
              }

              v86 = *(v81 + 1);
              v85 = *(v81 + 2);
              v88 = *(v83 + 8);
              v87 = *(v83 + 16);
              sub_1D881F764(0, &qword_1EE0E36A0);
              v89 = v84;
              v90 = v82;
              v91 = sub_1D8B16400();

              if ((v91 & 1) == 0 || v86 != v88 || v85 != v87)
              {
                goto LABEL_104;
              }
            }

            else if (v84)
            {
              goto LABEL_104;
            }

            v13 = v139;
            v92 = v138[13];
            v93 = *&v139[v92];
            v94 = *&v139[v92 + 8];
            v95 = (v140 + v92);
            if (v93 == *v95 && v94 == v95[1])
            {
              sub_1D881BD44(v140, type metadata accessor for TextDetectorResult);
              sub_1D881BD44(v13, type metadata accessor for TextDetectorResult);
              v49 = v123;
              v57 = v122;
              v96 = v117;
            }

            else
            {
              v97 = sub_1D8B16BA0();
              sub_1D881BD44(v140, type metadata accessor for TextDetectorResult);
              sub_1D881BD44(v13, type metadata accessor for TextDetectorResult);
              a1 = v116;
              v4 = v115;
              v9 = v114;
              v49 = v123;
              v57 = v122;
              v96 = v117;
              if ((v97 & 1) == 0)
              {
                goto LABEL_105;
              }
            }

            v59 = v126 + 1;
            if (v126 + 1 == v96)
            {
              goto LABEL_136;
            }
          }

          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

LABEL_105:
        sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);

        sub_1D881BD44(v15, type metadata accessor for DetectionRequest.Annotation);
LABEL_12:
        a2 = (a2 + 1) & v133;
        if (((*(v135 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_130;
        }
      }

      v32 = v132;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D881BDC4(v15, v132, type metadata accessor for DetectionRequest.Annotation);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D881F6FC(&v15[v30], v9, &qword_1ECA67750);
          if ((sub_1D8B13200() & 1) == 0)
          {
            goto LABEL_54;
          }

          if (*(v32 + v128[9]) != *&v9[v128[9]])
          {
            goto LABEL_54;
          }

          v33 = v128[10];
          if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v32 + v33), *&v9[v33]), vceqq_f64(*(v32 + v33 + 16), *&v9[v33 + 16])), vuzp1q_s32(vceqq_f64(*(v32 + v33 + 32), *&v9[v33 + 32]), vceqq_f64(*(v32 + v33 + 48), *&v9[v33 + 48]))))) & 1) == 0)
          {
            goto LABEL_54;
          }

          v34 = v128[11];
          v35 = *(v32 + v34);
          v36 = *&v9[v34];
          v37 = *(v35 + 16);
          if (v37 != *(v36 + 16))
          {
            goto LABEL_54;
          }

          if (v37 && v35 != v36)
          {
            v38 = (v35 + 40);
            v39 = (v36 + 40);
            while (*(v38 - 1) == *(v39 - 1) && *v38 == *v39)
            {
              v38 += 4;
              v39 += 4;
              if (!--v37)
              {
                goto LABEL_26;
              }
            }

            goto LABEL_54;
          }

LABEL_26:
          v40 = v128[12];
          v41 = *(v32 + v40);
          v42 = *&v9[v40];
          v43 = *(v41 + 16);
          if (v43 != *(v42 + 16))
          {
            goto LABEL_54;
          }

          if (v43)
          {
            v44 = v41 == v42;
          }

          else
          {
            v44 = 1;
          }

          if (!v44)
          {
            v45 = (v41 + 32);
            v46 = (v42 + 32);
            while (v43)
            {
              if (*v45 != *v46)
              {
                goto LABEL_54;
              }

              ++v45;
              ++v46;
              if (!--v43)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_135;
          }

LABEL_35:
          if (*(v32 + v128[13]) == *&v9[v128[13]] && *(v32 + v128[14]) == *&v9[v128[14]])
          {
            v47 = sub_1D88E31C4(*(v32 + v128[15]), *&v9[v128[15]]);
            sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);
            if (v47)
            {
              sub_1D87A14E4(v9, &qword_1ECA67750);
              sub_1D87A14E4(v132, &qword_1ECA67750);
              goto LABEL_138;
            }
          }

          else
          {
LABEL_54:
            sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);
          }

          sub_1D87A14E4(v9, &qword_1ECA67750);
          sub_1D87A14E4(v132, &qword_1ECA67750);
          sub_1D881BD44(v15, type metadata accessor for DetectionRequest.Annotation);
          goto LABEL_12;
        }

        sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);
        sub_1D87A14E4(v32, &qword_1ECA67750);
        goto LABEL_11;
      }

      v50 = v131;
      sub_1D881BDC4(v15, v131, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);
        goto LABEL_11;
      }

      v51 = *v50;
      if (v51 > 2)
      {
        if (v51 == 3)
        {
          v55 = 0xD00000000000002ELL;
          v98 = &v143;
        }

        else if (v51 == 4)
        {
          v55 = 0xD000000000000024;
          v98 = &v145;
        }

        else
        {
          v55 = 0xD00000000000002CLL;
          v98 = &v144;
        }

        v56 = *(v98 - 32);
      }

      else
      {
        v52 = 0xD00000000000003FLL;
        if (v51 != 1)
        {
          v52 = 0xD000000000000026;
        }

        v53 = v121;
        if (v51 != 1)
        {
          v53 = v120;
        }

        v54 = v51 == 0;
        if (*v50)
        {
          v55 = v52;
        }

        else
        {
          v55 = 0xD00000000000001FLL;
        }

        v56 = v118;
        if (!v54)
        {
          v56 = v53;
        }
      }

      v99 = v15[v30];
      if (v99 > 2)
      {
        if (v99 != 3)
        {
          v100 = v99 == 4;
          if (v99 == 4)
          {
            v101 = 0xD000000000000024;
          }

          else
          {
            v101 = 0xD00000000000002CLL;
          }

          v102 = v113;
          v103 = &v144;
LABEL_120:
          v104 = *(v103 - 32);
          if (!v100)
          {
            v102 = v104;
          }

          goto LABEL_126;
        }

        v101 = 0xD00000000000002ELL;
        v105 = &v143;
      }

      else
      {
        if (v15[v30])
        {
          v100 = v99 == 1;
          if (v99 == 1)
          {
            v101 = 0xD00000000000003FLL;
          }

          else
          {
            v101 = 0xD000000000000026;
          }

          v102 = v121;
          v103 = &v147;
          goto LABEL_120;
        }

        v101 = 0xD00000000000001FLL;
        v105 = &v146;
      }

      v102 = *(v105 - 32);
LABEL_126:
      if (v55 == v101 && (v56 | 0x8000000000000000) == (v102 | 0x8000000000000000))
      {

        sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);
        goto LABEL_138;
      }

      v106 = sub_1D8B16BA0();

      sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);
      if (v106)
      {
        goto LABEL_138;
      }

      sub_1D881BD44(v15, type metadata accessor for DetectionRequest.Annotation);
      v13 = v139;
      goto LABEL_12;
    }
  }

LABEL_130:
  v107 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v107 + 48) + *(v127 + 72) * a2, type metadata accessor for DetectionRequest.Annotation);
  v109 = *(v107 + 16);
  v110 = __OFADD__(v109, 1);
  v111 = v109 + 1;
  if (v110)
  {
LABEL_134:
    __break(1u);
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    sub_1D881BD44(v141, type metadata accessor for DetectionRequest.Annotation);

LABEL_138:
    sub_1D881BD44(v15, type metadata accessor for DetectionRequest.Annotation);
    result = sub_1D8B16C20();
    __break(1u);
  }

  else
  {
    *(v107 + 16) = v111;
  }

  return result;
}

uint64_t sub_1D8806C9C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D8B15270();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8800568();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D880BF24(MEMORY[0x1E69E0220], &qword_1ECA63EE0);
      goto LABEL_12;
    }

    sub_1D880E07C();
  }

  v12 = *v3;
  sub_1D881BBCC(&qword_1EE0E3A80, MEMORY[0x1E69E0220]);
  v13 = sub_1D8B15790();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D881BBCC(&qword_1EE0E3A78, MEMORY[0x1E69E0220]);
      v21 = sub_1D8B158C0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8806F64(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ProcessorState(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1D88008C4();
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D880B37C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1D880E398();
  }

  v15 = *v4;
  sub_1D8B16D20();
  sub_1D8A36918(v27);
  v16 = sub_1D8B16D80();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1D881BDC4(*(v15 + 48) + v19 * a2, v12, type metadata accessor for ProcessorState);
      v20 = sub_1D8A4D460(v12, a1);
      sub_1D881BD44(v12, type metadata accessor for ProcessorState);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for ProcessorState);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D88071A8(unsigned __int8 *a1, unint64_t a2, char a3)
{
  v7 = sub_1D8B13240();
  v71 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for DetectionRequest.Originator(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v74 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v73 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v64 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v82);
  v20 = &v64 - v19;
  v78 = type metadata accessor for DetectionRequest(0);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v83 = a1;
  v75 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D8800BCC();
    }

    else
    {
      if (v24 > v23)
      {
        sub_1D880B588();
        goto LABEL_48;
      }

      sub_1D880E670();
    }

    v25 = *v3;
    sub_1D8B16D20();
    MEMORY[0x1DA720210](*a1);
    v26 = v78;
    v81 = *(v78 + 20);
    DetectionRequest.Originator.hash(into:)(v86);
    v72 = *&a1[v26[6]];
    sub_1D8818BD0(v86, v72);
    v27 = &a1[v26[7]];
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    sub_1D88911A0(*v27, v29, v30, v31);
    v32 = v26[8];
    v33 = *&a1[v32];
    v34 = 0;
    if (v33 != 0.0)
    {
      v34 = *&a1[v32];
    }

    MEMORY[0x1DA720250](v34);
    v35 = sub_1D8B16D80();
    v36 = v25 + 56;
    v84 = v25 + 56;
    v85 = v25;
    v37 = -1 << *(v25 + 32);
    a2 = v35 & ~v37;
    if ((*(v36 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v67 = v12;
      v68 = v10;
      v70 = v7;
      v38 = ~v37;
      v39 = *a1;
      v40 = *(v77 + 72);
      v69 = (v71 + 8);
      v65 = (v71 + 32);
      v66 = v13;
      v80 = v40;
      v79 = v39;
      while (1)
      {
        sub_1D881BDC4(*(v85 + 48) + v40 * a2, v22, type metadata accessor for DetectionRequest);
        if (*v22 != v39)
        {
          goto LABEL_15;
        }

        v41 = v38;
        v42 = &v20[*(v82 + 48)];
        sub_1D881BDC4(&v22[v26[5]], v20, type metadata accessor for DetectionRequest.Originator);
        sub_1D881BDC4(&v83[v81], v42, type metadata accessor for DetectionRequest.Originator);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          break;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v47 = v73;
          sub_1D881BDC4(v20, v73, type metadata accessor for DetectionRequest.Originator);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            (*v69)(v47, v70);
LABEL_13:
            sub_1D87A14E4(v20, &unk_1ECA64FB0);
LABEL_14:
            v38 = v41;
            v39 = v79;
            v40 = v80;
            goto LABEL_15;
          }

          v48 = *v65;
          v49 = v67;
          v50 = v47;
          v51 = v70;
          (*v65)(v67, v50, v70);
          v52 = v68;
          v48(v68, v42, v51);
          LODWORD(v71) = sub_1D8B13200();
          v53 = *v69;
          v54 = v52;
          v26 = v78;
          (*v69)(v54, v51);
          v53(v49, v51);
          sub_1D881BD44(v20, type metadata accessor for DetectionRequest.Originator);
          v38 = v41;
          v39 = v79;
          v40 = v80;
          if ((v71 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (EnumCaseMultiPayload != 3)
          {
            if (swift_getEnumCaseMultiPayload() != 4)
            {
              goto LABEL_13;
            }

LABEL_39:
            sub_1D881BD44(v20, type metadata accessor for DetectionRequest.Originator);
            v38 = v41;
            v39 = v79;
            v40 = v80;
            goto LABEL_40;
          }

          v44 = v74;
          sub_1D881BDC4(v20, v74, type metadata accessor for DetectionRequest.Originator);
          v45 = *v44;
          if (swift_getEnumCaseMultiPayload() != 3)
          {

            v26 = v78;
            goto LABEL_13;
          }

          v46 = sub_1D894FA18(v45, *v42);

          sub_1D881BD44(v20, type metadata accessor for DetectionRequest.Originator);
          v26 = v78;
          v38 = v41;
          v39 = v79;
          v40 = v80;
          if ((v46 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

LABEL_40:
        if (sub_1D894CAAC(*&v22[v26[6]], v72))
        {
          v87.origin.x = v28;
          v87.origin.y = v29;
          v87.size.width = v30;
          v87.size.height = v31;
          if (CGRectEqualToRect(*&v22[v26[7]], v87) && *&v22[v26[8]] == v33)
          {
            goto LABEL_51;
          }
        }

LABEL_15:
        sub_1D881BD44(v22, type metadata accessor for DetectionRequest);
        a2 = (a2 + 1) & v38;
        if (((*(v84 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (EnumCaseMultiPayload)
      {
        v55 = v76;
        sub_1D881BDC4(v20, v76, type metadata accessor for DetectionRequest.Originator);
        v56 = *v55;
        v26 = v78;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_13;
        }

        v57 = *v42;
        v58 = *(v42 + 4);
        if (*(v76 + 4))
        {
          if (*(v76 + 4) != 1)
          {
            sub_1D881BD44(v20, type metadata accessor for DetectionRequest.Originator);
            v38 = v41;
            v39 = v79;
            v40 = v80;
            if (v57 != 0.0 || v58 != 2)
            {
              goto LABEL_15;
            }

            goto LABEL_40;
          }

          if (v58 != 1)
          {
            goto LABEL_44;
          }
        }

        else if (v58)
        {
          goto LABEL_44;
        }

        if (v56 != v57)
        {
LABEL_44:
          sub_1D881BD44(v20, type metadata accessor for DetectionRequest.Originator);
          goto LABEL_14;
        }
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_13;
        }

        sub_1D881BD44(v42, type metadata accessor for DetectionRequest.Originator);
      }

      goto LABEL_39;
    }
  }

LABEL_48:
  v59 = *v75;
  *(*v75 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(v83, *(v59 + 48) + *(v77 + 72) * a2, type metadata accessor for DetectionRequest);
  v61 = *(v59 + 16);
  v62 = __OFADD__(v61, 1);
  v63 = v61 + 1;
  if (v62)
  {
    __break(1u);
LABEL_51:
    sub_1D881BD44(v22, type metadata accessor for DetectionRequest);
    result = sub_1D8B16C20();
    __break(1u);
  }

  else
  {
    *(v59 + 16) = v63;
  }

  return result;
}

uint64_t sub_1D8807AE4(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8801534(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1D880B9DC(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_1D880EF34(v6 + 1, a4);
  }

  v9 = *v4;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v5);
  result = sub_1D8B16D80();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8807C54(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8800F3C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D880BF24(MEMORY[0x1E69695A8], &qword_1ECA63D50);
      goto LABEL_12;
    }

    sub_1D880E9B0();
  }

  v12 = *v3;
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  v13 = sub_1D8B15790();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D881BBCC(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
      v21 = sub_1D8B158C0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8807F1C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for TextDetectorResult(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v66 = v8;
  v67 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1D8801298();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D880B7D0();
      goto LABEL_50;
    }

    sub_1D880ECCC();
  }

  v13 = *v3;
  sub_1D8B16D20();
  TextDetectorResult.hash(into:)(v68);
  v14 = sub_1D8B16D80();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_1D881BDC4(*(v13 + 48) + v17 * a2, v10, type metadata accessor for TextDetectorResult);
      if ((sub_1D8B13200() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (*&v10[v7[5]] != *(a1 + v7[5]))
      {
        goto LABEL_11;
      }

      v18 = v7[6];
      if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v10[v18], *(a1 + v18)), vceqq_f64(*&v10[v18 + 16], *(a1 + v18 + 16))), vuzp1q_s32(vceqq_f64(*&v10[v18 + 32], *(a1 + v18 + 32)), vceqq_f64(*&v10[v18 + 48], *(a1 + v18 + 48)))))) & 1) == 0)
      {
        goto LABEL_11;
      }

      v19 = v7[7];
      v20 = *&v10[v19];
      v21 = *&v10[v19 + 8];
      v22 = (a1 + v19);
      v23 = v20 == *v22 && v21 == v22[1];
      if (!v23 && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (*&v10[v7[8]] != *(a1 + v7[8]))
      {
        goto LABEL_11;
      }

      if (*&v10[v7[9]] != *(a1 + v7[9]))
      {
        goto LABEL_11;
      }

      if ((sub_1D894DBC4(*&v10[v7[10]], *(a1 + v7[10])) & 1) == 0)
      {
        goto LABEL_11;
      }

      v24 = v7[11];
      v25 = *&v10[v24];
      v64 = *(a1 + v24);
      v65 = v25;
      v26 = *(v25 + 2);
      if (v26 != *(v64 + 2))
      {
        goto LABEL_11;
      }

      if (v26 && v65 != v64)
      {
        v27 = 0;
        do
        {
          v28 = &v65[v27];
          v29 = &v64[v27];
          if (*&v65[v27 + 32] != *&v64[v27 + 32])
          {
            goto LABEL_11;
          }

          v30 = *(v28 + 5);
          v31 = *(v28 + 6);
          v33 = *(v28 + 7);
          v32 = *(v28 + 8);
          v34 = *(v29 + 5);
          v35 = *(v29 + 6);
          v37 = *(v29 + 7);
          v36 = *(v29 + 8);
          if (v30 != v34 || v31 != v35)
          {
            v62 = v32;
            v63 = v33;
            v60 = v36;
            v61 = v37;
            v39 = sub_1D8B16BA0();
            v36 = v60;
            v37 = v61;
            v32 = v62;
            v33 = v63;
            if ((v39 & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v40 = v33 == v37 && v32 == v36;
          if (!v40 && (sub_1D8B16BA0() & 1) == 0)
          {
            goto LABEL_11;
          }

          v27 += 40;
        }

        while (--v26);
      }

      v41 = v7[12];
      v42 = &v10[v41];
      v43 = *&v10[v41];
      v44 = a1 + v41;
      v45 = *v44;
      if (v43)
      {
        if (!v45)
        {
          goto LABEL_11;
        }

        v46 = *(v42 + 1);
        v47 = *(v42 + 2);
        v62 = *(v44 + 8);
        v63 = v46;
        v60 = *(v44 + 16);
        v61 = v47;
        v65 = sub_1D881F764(0, &qword_1EE0E36A0);
        v64 = v45;
        v48 = v43;
        v49 = sub_1D8B16400();

        if ((v49 & 1) == 0 || v63 != v62 || v61 != v60)
        {
          goto LABEL_11;
        }
      }

      else if (v45)
      {
        goto LABEL_11;
      }

      v50 = v7[13];
      v51 = *&v10[v50];
      v52 = *&v10[v50 + 8];
      v53 = (a1 + v50);
      if (v51 == *v53 && v52 == v53[1] || (sub_1D8B16BA0() & 1) != 0)
      {
        sub_1D881BD44(v10, type metadata accessor for TextDetectorResult);
        sub_1D8B16C20();
        __break(1u);
        break;
      }

LABEL_11:
      sub_1D881BD44(v10, type metadata accessor for TextDetectorResult);
      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v54 = *v67;
  *(*v67 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v54 + 48) + *(v66 + 72) * a2, type metadata accessor for TextDetectorResult);
  v56 = *(v54 + 16);
  v57 = __OFADD__(v56, 1);
  v58 = v56 + 1;
  if (v57)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    *(v54 + 16) = v58;
  }

  return result;
}

uint64_t sub_1D88083D4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D8B152F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D880177C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D880BF24(MEMORY[0x1E69E0248], &qword_1ECA63EC0);
      goto LABEL_12;
    }

    sub_1D880F14C();
  }

  v12 = *v3;
  sub_1D881BBCC(&qword_1EE0E3A70, MEMORY[0x1E69E0248]);
  v13 = sub_1D8B15790();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D881BBCC(&qword_1EE0E3A68, MEMORY[0x1E69E0248]);
      v21 = sub_1D8B158C0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D880869C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D8B15240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8801AD8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D880BF24(MEMORY[0x1E69E01E8], &qword_1ECA63EC8);
      goto LABEL_12;
    }

    sub_1D880F468();
  }

  v12 = *v3;
  sub_1D881BBCC(&qword_1EE0E3A90, MEMORY[0x1E69E01E8]);
  v13 = sub_1D8B15790();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D881BBCC(&qword_1EE0E3A88, MEMORY[0x1E69E01E8]);
      v21 = sub_1D8B158C0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8808964(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CVTrackSnapshot(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v30 = v9;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D8801E34();
    }

    else
    {
      if (v13 > v12)
      {
        sub_1D880BB0C();
        goto LABEL_20;
      }

      sub_1D880F784();
    }

    v14 = *v4;
    sub_1D8B16D20();
    CVTrackSnapshot.hash(into:)(v32);
    v15 = sub_1D8B16D80();
    v16 = -1 << *(v14 + 32);
    a2 = v15 & ~v16;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v18 = *(v9 + 72);
      do
      {
        sub_1D881BDC4(*(v14 + 48) + v18 * a2, v11, type metadata accessor for CVTrackSnapshot);
        if (sub_1D8B13200() & 1) != 0 && (v19 = v8[5], v20 = *&v11[v19], v31 = *(a1 + v19), *&v32[0] = v20, , , LOBYTE(v20) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v32, &v31), , , (v20) && (v21 = v8[6], v22 = *&v11[v21], v31 = *(a1 + v21), *&v32[0] = v22, , , LOBYTE(v22) = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v32, &v31), , , (v22) && v11[v8[7]] == *(a1 + v8[7]) && *&v11[v8[8]] == *(a1 + v8[8]) && *&v11[v8[9]] == *(a1 + v8[9]))
        {
          v23 = v11[v8[10]];
          sub_1D881BD44(v11, type metadata accessor for CVTrackSnapshot);
          if (v23 == *(a1 + v8[10]))
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1D881BD44(v11, type metadata accessor for CVTrackSnapshot);
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v24 + 48) + *(v30 + 72) * a2, type metadata accessor for CVTrackSnapshot);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_23:
    result = sub_1D8B16C20();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_1D8808CB4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D8B13990();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D88020D0();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D880BF24(MEMORY[0x1E69E03C0], &qword_1ECA63E98);
      goto LABEL_12;
    }

    sub_1D880F9EC();
  }

  v12 = *v3;
  sub_1D881BBCC(&qword_1ECA63E88, MEMORY[0x1E69E03C0]);
  v13 = sub_1D8B15790();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D881BBCC(&qword_1ECA63E90, MEMORY[0x1E69E03C0]);
      v21 = sub_1D8B158C0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8808F7C(uint64_t a1, unint64_t a2, char a3)
{
  v65 = a1;
  v59 = sub_1D8B13240();
  v6 = *(v59 - 8);
  v7 = MEMORY[0x1EEE9AC00](v59);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v50 - v12;
  v14 = type metadata accessor for DetectionRequest.Originator(0);
  v56 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v58 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = &v50 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v60 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v54 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D880242C();
    }

    else
    {
      if (v24 > v23)
      {
        sub_1D880BD18();
        goto LABEL_38;
      }

      sub_1D880FD08();
    }

    v25 = *v3;
    sub_1D8B16D20();
    DetectionRequest.Originator.hash(into:)(v66);
    v3 = v66;
    v26 = sub_1D8B16D80();
    v63 = v25;
    v64 = v25 + 56;
    v27 = -1 << *(v25 + 32);
    a2 = v26 & ~v27;
    v28 = *(v25 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2;
    v29 = v55;
    if (v28)
    {
      v52 = v9;
      v62 = ~v27;
      v61 = *(v56 + 72);
      v53 = (v6 + 8);
      v51 = (v6 + 32);
      do
      {
        sub_1D881BDC4(*(v63 + 48) + v61 * a2, v22, type metadata accessor for DetectionRequest.Originator);
        v3 = &v13[*(v29 + 48)];
        sub_1D881BDC4(v22, v13, type metadata accessor for DetectionRequest.Originator);
        sub_1D881BDC4(v65, v3, type metadata accessor for DetectionRequest.Originator);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (!EnumCaseMultiPayload)
          {
            sub_1D881BD44(v22, type metadata accessor for DetectionRequest.Originator);
            if (!swift_getEnumCaseMultiPayload())
            {
              goto LABEL_41;
            }

            goto LABEL_11;
          }

          sub_1D881BD44(v22, type metadata accessor for DetectionRequest.Originator);
          v42 = v60;
          sub_1D881BDC4(v13, v60, type metadata accessor for DetectionRequest.Originator);
          v43 = *v42;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_11;
          }

          v44 = *v3;
          v3 = *(v3 + 4);
          if (!*(v60 + 4))
          {
            if (v3)
            {
LABEL_34:
              sub_1D881BD44(v13, type metadata accessor for DetectionRequest.Originator);
              goto LABEL_12;
            }

LABEL_33:
            if (v43 == v44)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

          if (*(v60 + 4) == 1)
          {
            if (v3 != 1)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

          sub_1D881BD44(v13, type metadata accessor for DetectionRequest.Originator);
          if (v44 == 0.0 && v3 == 2)
          {
            goto LABEL_43;
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v34 = v57;
          sub_1D881BDC4(v13, v57, type metadata accessor for DetectionRequest.Originator);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            sub_1D881BD44(v22, type metadata accessor for DetectionRequest.Originator);
            (*v53)(v34, v59);
LABEL_11:
            sub_1D87A14E4(v13, &unk_1ECA64FB0);
            goto LABEL_12;
          }

          v35 = v34;
          v36 = *v51;
          v37 = v59;
          (*v51)(v11, v35, v59);
          v38 = v11;
          v39 = v52;
          v36(v52, v3, v37);
          v3 = sub_1D8B13200();
          v40 = *v53;
          v41 = v39;
          v11 = v38;
          v29 = v55;
          (*v53)(v41, v37);
          v40(v11, v37);
          sub_1D881BD44(v22, type metadata accessor for DetectionRequest.Originator);
          sub_1D881BD44(v13, type metadata accessor for DetectionRequest.Originator);
          if (v3)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (EnumCaseMultiPayload != 3)
          {
            sub_1D881BD44(v22, type metadata accessor for DetectionRequest.Originator);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              goto LABEL_42;
            }

            goto LABEL_11;
          }

          v31 = v58;
          sub_1D881BDC4(v13, v58, type metadata accessor for DetectionRequest.Originator);
          v32 = *v31;
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            sub_1D881BD44(v22, type metadata accessor for DetectionRequest.Originator);

            goto LABEL_11;
          }

          v33 = sub_1D894FA18(v32, *v3);

          v3 = type metadata accessor for DetectionRequest.Originator;
          sub_1D881BD44(v22, type metadata accessor for DetectionRequest.Originator);
          sub_1D881BD44(v13, type metadata accessor for DetectionRequest.Originator);
          if (v33)
          {
            goto LABEL_43;
          }
        }

LABEL_12:
        a2 = (a2 + 1) & v62;
      }

      while (((*(v64 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_38:
  v45 = *v54;
  *(*v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(v65, *(v45 + 48) + *(v56 + 72) * a2, type metadata accessor for DetectionRequest.Originator);
  v47 = *(v45 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
LABEL_41:
    sub_1D881BD44(v3, type metadata accessor for DetectionRequest.Originator);
LABEL_42:
    sub_1D881BD44(v13, type metadata accessor for DetectionRequest.Originator);
LABEL_43:
    result = sub_1D8B16C20();
    __break(1u);
  }

  else
  {
    *(v45 + 16) = v49;
  }

  return result;
}

uint64_t sub_1D8809718(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D8B13AD0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8802734();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D880BF24(MEMORY[0x1E69E03D8], &qword_1ECA63DD0);
      goto LABEL_12;
    }

    sub_1D880FFE0();
  }

  v12 = *v3;
  sub_1D881BBCC(&qword_1ECA63170, MEMORY[0x1E69E03D8]);
  v13 = sub_1D8B15790();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D881BBCC(&qword_1ECA64FD0, MEMORY[0x1E69E03D8]);
      v21 = sub_1D8B158C0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D88099E0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8802A90();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D880C15C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D88102FC();
  }

  v8 = *v3;
  result = sub_1D8B16D10();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8809B00(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8802CB4();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D880C29C();
      goto LABEL_12;
    }

    sub_1D88104EC();
  }

  v9 = *v3;
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  result = sub_1D8B16D80();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CVTrackedDetection(0);
    do
    {

      v12 = sub_1D8B13200();

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

unint64_t sub_1D8809CDC(unint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v19 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_1D8802F5C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D880C3EC();
      goto LABEL_13;
    }

    sub_1D8810774();
  }

  v9 = *v3;
  v18 = v6;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v17);
  result = sub_1D8B16D80();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (1)
    {
      *&v17[0] = *(*(v9 + 48) + 8 * a2);

      v12 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v17, &v19);

      if (v12)
      {
        goto LABEL_16;
      }

      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        v6 = v19;
        break;
      }
    }
  }

LABEL_13:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_16:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

unint64_t sub_1D8809E5C(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1D88031B0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1D880C540();
      result = v7;
      goto LABEL_12;
    }

    sub_1D88109A0();
  }

  v8 = *v3;
  v9 = sub_1D8B16D10();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D8B16C20();
  __break(1u);
  return result;
}

uint64_t sub_1D8809F88(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    sub_1D88033E4();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D880C680();
      goto LABEL_20;
    }

    sub_1D8810BA0();
  }

  v14 = *v4;
  sub_1D8B16D20();
  v15.f64[0] = *(a1 + 16);
  v16 = *(a1 + 24);
  *v53 = *(a1 + 25);
  *&v53[3] = *(a1 + 28);
  *&v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  *v56 = *(a1 + 41);
  *&v56[3] = *(a1 + 44);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v48 = *a1;
  v50 = v48;
  v49 = v15;
  v51 = v15.f64[0];
  v47 = v16;
  v52 = v16;
  v42 = v17;
  v54 = v17;
  v46 = v18;
  v55 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60 = v22;
  CameraSourceFrameMetadata.hash(into:)();
  v45 = *(v8 + 20);
  sub_1D8A36918(v61);
  v44 = *(a1 + *(v8 + 24));
  MEMORY[0x1DA720210]();
  v23 = sub_1D8B16D80();
  v24 = v14 + 56;
  v25 = -1 << *(v14 + 32);
  a2 = v23 & ~v25;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = ~v25;
    v27 = *(v9 + 72);
    v28.f64[0] = v49.f64[0];
    *&v28.f64[1] = v42;
    v49 = v28;
    v43 = v14;
    do
    {
      sub_1D881BDC4(*(v14 + 48) + v27 * a2, v11, type metadata accessor for TrackManager.TrackedProcessorState);
      v29.f64[0] = *(v11 + 2);
      v29.f64[1] = *(v11 + 4);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*v11, v48), vceqq_f64(v29, v49))))) & 1) != 0 || ((v11[24] ^ v47) & 1) != 0 || ((v11[40] ^ v46) & 1) != 0 || (v62.origin.x = v19, v62.origin.y = v20, v62.size.width = v21, v62.size.height = v22, !CGRectEqualToRect(*(v11 + 48), v62)) || !sub_1D8A4D460(&v11[*(v8 + 20)], a1 + v45))
      {
        sub_1D881BD44(v11, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      else
      {
        v30 = *(v8 + 24);
        v31 = v8;
        v32 = v9;
        v33 = a1;
        v34 = v4;
        v35 = v11[v30];
        sub_1D881BD44(v11, type metadata accessor for TrackManager.TrackedProcessorState);
        v36 = v35 == v44;
        v4 = v34;
        a1 = v33;
        v9 = v32;
        v8 = v31;
        v14 = v43;
        if (v36)
        {
          sub_1D8B16C20();
          __break(1u);
          break;
        }
      }

      a2 = (a2 + 1) & v26;
    }

    while (((*(v24 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_20:
  v37 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D881BFE4(a1, *(v37 + 48) + *(v9 + 72) * a2, type metadata accessor for TrackManager.TrackedProcessorState);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

void *sub_1D880A39C()
{
  v1 = v0;
  v2 = type metadata accessor for BuiltInAction(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FF0);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for BuiltInAction);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for BuiltInAction);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880A5BC()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F40);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for BundleClassification.ClassificationType);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for BundleClassification.ClassificationType);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880A7C8()
{
  v1 = v0;
  v2 = type metadata accessor for ActionPin(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E78);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for ActionPin);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for ActionPin);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880A9D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DB8);
  v2 = *v0;
  v3 = sub_1D8B166B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D880AB30()
{
  v1 = v0;
  v2 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E68);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880AD3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FA8);
  v5 = *v0;
  v6 = sub_1D8B166B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v21 = v1;
    result = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 56);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v22 + 72) * (v17 | (v11 << 6));
        sub_1D87A0E38(*(v5 + 48) + v20, v4, &qword_1ECA63188);
        result = sub_1D881F6FC(v4, *(v7 + 48) + v20, &qword_1ECA63188);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v21;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D880AF64()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DB0);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for CVBundle);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for CVBundle);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880B170()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest.Annotation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D28);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for DetectionRequest.Annotation);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for DetectionRequest.Annotation);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880B37C()
{
  v1 = v0;
  v2 = type metadata accessor for ProcessorState(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E30);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for ProcessorState);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for ProcessorState);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880B588()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E20);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for DetectionRequest);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for DetectionRequest);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880B7D0()
{
  v1 = v0;
  v2 = type metadata accessor for TextDetectorResult(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EB8);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for TextDetectorResult);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for TextDetectorResult);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}