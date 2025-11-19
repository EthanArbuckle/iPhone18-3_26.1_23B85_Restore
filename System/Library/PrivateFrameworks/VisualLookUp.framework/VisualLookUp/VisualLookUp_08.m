uint64_t sub_1D9A21174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
      return v18 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
      v16 = *v10;
      if (*(v10 + 8) == 1)
      {
        v16 = qword_1D9C8A470[v16];
      }

      v17 = *v6;
      if (*(v6 + 8))
      {
        switch(v17)
        {
          case 1:
            if (v16 != 1)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 2:
            if (v16 != 11)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 3:
            if (v16 != 2)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 4:
            if (v16 != 3)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 5:
            if (v16 != 4)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 6:
            if (v16 != 5)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 7:
            if (v16 != 14)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 8:
            if (v16 != 6)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 9:
            if (v16 != 7)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 10:
            if (v16 != 8)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 11:
            if (v16 != 9)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 12:
            if (v16 != 12)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 13:
            if (v16 != 13)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 14:
            if (v16 != 15)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 15:
            if (v16 != 10)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 16:
            if (v16 != 16)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 17:
            if (v16 != 17)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 18:
            if (v16 != 18)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 19:
            if (v16 != 19)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 20:
            if (v16 != 20)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          case 21:
            if (v16 != 21)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
          default:
            if (v16)
            {
              goto LABEL_57;
            }

            goto LABEL_12;
        }
      }

      if (v16 != v17)
      {
        break;
      }

LABEL_12:
      if (v10[3] != v6[3])
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v18 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_57:
    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D9A214E4(uint64_t a1, uint64_t a2)
{
  v129 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v4 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v101 - v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E48);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v101 - v9;
  v134 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  v130 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v101 - v13);
  v133 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v15 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v124 = (&v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v122 = (&v101 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v123 = (&v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v125 = (&v101 - v22);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E50);
  MEMORY[0x1EEE9AC00](v132);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101 - v26;
  v28 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v135 = (&v101 - v34);
  v35 = *(a1 + 16);
  if (v35 != *(a2 + 16))
  {
    goto LABEL_75;
  }

  if (!v35 || a1 == a2)
  {
    v93 = 1;
    return v93 & 1;
  }

  v119 = v32;
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = a1 + v36;
  v114 = a2 + v36;
  v38 = 0;
  v39 = (v15 + 48);
  v111 = (v4 + 48);
  v40 = *(v33 + 72);
  v41 = v135;
  v115 = (v15 + 48);
  v131 = v30;
  v118 = v35;
  v103 = v37;
  v102 = v40;
  v110 = v8;
  v112 = v24;
  v121 = v11;
  while (1)
  {
    v42 = v40 * v38;
    result = sub_1D9A31B30(v37 + v40 * v38, v41, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
    if (v38 == v118)
    {
      goto LABEL_79;
    }

    v113 = v38;
    sub_1D9A31B30(v114 + v42, v30, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
    v44 = *(v119 + 36);
    v45 = *(v132 + 48);
    sub_1D99AB100(v41 + v44, v27, &qword_1ECB51248);
    sub_1D99AB100(&v30[v44], &v27[v45], &qword_1ECB51248);
    v46 = *v39;
    v47 = v133;
    v48 = (*v39)(v27, 1, v133);
    v117 = v46;
    if (v48 != 1)
    {
      v51 = v125;
      sub_1D99AB100(v27, v125, &qword_1ECB51248);
      if (v46(&v27[v45], 1, v47) == 1)
      {
        sub_1D9A31B98(v51, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
LABEL_65:
        v95 = &qword_1ECB51E50;
      }

      else
      {
        v52 = v122;
        sub_1D9A31AC8(&v27[v45], v122, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
        if (*v51 == *v52 && v51[1] == v52[1] && v51[2] == v52[2] && v51[3] == v52[3])
        {
          sub_1D9C7D3CC();
          sub_1D9A31A70();
          v53 = sub_1D9C7DC2C();
          sub_1D9A31B98(v52, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          v39 = v115;
          sub_1D9A31B98(v51, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          result = sub_1D99A6AE0(v27, &qword_1ECB51248);
          v49 = v121;
          v50 = v112;
          if ((v53 & 1) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_15;
        }

        sub_1D9A31B98(v52, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
        sub_1D9A31B98(v51, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
        v95 = &qword_1ECB51248;
      }

      v96 = v27;
      goto LABEL_73;
    }

    if (v46(&v27[v45], 1, v47) != 1)
    {
      goto LABEL_65;
    }

    result = sub_1D99A6AE0(v27, &qword_1ECB51248);
    v49 = v121;
    v50 = v112;
LABEL_15:
    v54 = *v135;
    v55 = *v131;
    v56 = *(*v135 + 16);
    if (v56 != *(*v131 + 16))
    {
      goto LABEL_74;
    }

    if (v56 && v54 != v55)
    {
      break;
    }

LABEL_50:
    if (v135[2] != *(v131 + 2) || (sub_1D9A1F940(*(v135 + 2), *(v131 + 2)) & 1) == 0 || (sub_1D9A1FE80(*(v135 + 3), *(v131 + 3)) & 1) == 0)
    {
      goto LABEL_74;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v41 = v135;
    v30 = v131;
    v93 = sub_1D9C7DC2C();
    sub_1D9A31B98(v30, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
    sub_1D9A31B98(v41, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
    if (v93)
    {
      v38 = v113 + 1;
      v37 = v103;
      v40 = v102;
      if (v113 + 1 != v118)
      {
        continue;
      }
    }

    return v93 & 1;
  }

  v57 = 0;
  v58 = (*(v130 + 80) + 32) & ~*(v130 + 80);
  v109 = v54 + v58;
  v108 = v55 + v58;
  v120 = v14;
  v107 = v27;
  v106 = v54;
  v105 = v55;
  v104 = v56;
  while (1)
  {
    if (v57 >= *(v54 + 16))
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      return result;
    }

    v59 = v57;
    v60 = *(v130 + 72) * v57;
    result = sub_1D9A31B30(v109 + v60, v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    v61 = *(v55 + 16);
    v116 = v59;
    if (v59 >= v61)
    {
      goto LABEL_78;
    }

    sub_1D9A31B30(v108 + v60, v49, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    if (*v14 != *v49)
    {
LABEL_62:
      sub_1D9A31B98(v49, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      v94 = v14;
      goto LABEL_63;
    }

    v62 = *(v134 + 28);
    v63 = *(v132 + 48);
    sub_1D99AB100(v14 + v62, v50, &qword_1ECB51248);
    v64 = v49 + v62;
    v65 = v117;
    sub_1D99AB100(v64, v50 + v63, &qword_1ECB51248);
    v66 = v133;
    if (v65(v50, 1, v133) == 1)
    {
      if (v65((v50 + v63), 1, v66) == 1)
      {
        sub_1D99A6AE0(v50, &qword_1ECB51248);
        v49 = v121;
        goto LABEL_31;
      }

      sub_1D9A31B98(v121, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      v97 = v120;
      v98 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult;
LABEL_69:
      sub_1D9A31B98(v97, v98);
      v95 = &qword_1ECB51E50;
      v96 = v50;
      goto LABEL_73;
    }

    v67 = v123;
    sub_1D99AB100(v50, v123, &qword_1ECB51248);
    v68 = v65((v50 + v63), 1, v66);
    v69 = v124;
    if (v68 == 1)
    {
      sub_1D9A31B98(v121, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      sub_1D9A31B98(v120, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      v98 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect;
      v97 = v67;
      goto LABEL_69;
    }

    sub_1D9A31AC8(v50 + v63, v124, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    v49 = v121;
    if (*v67 != *v69 || v67[1] != v69[1] || v67[2] != v69[2] || v67[3] != v69[3])
    {
      sub_1D9A31B98(v69, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      sub_1D9A31B98(v67, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      sub_1D99A6AE0(v50, &qword_1ECB51248);
LABEL_61:
      sub_1D9A31B98(v49, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      v94 = v120;
      goto LABEL_63;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v70 = sub_1D9C7DC2C();
    sub_1D9A31B98(v69, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    sub_1D9A31B98(v67, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    sub_1D99A6AE0(v50, &qword_1ECB51248);
    if ((v70 & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_31:
    v71 = v50;
    v72 = v110;
    v73 = *(v134 + 32);
    v74 = v127;
    v75 = *(v126 + 48);
    sub_1D99AB100(v120 + v73, v127, &qword_1ECB51240);
    sub_1D99AB100(v49 + v73, v74 + v75, &qword_1ECB51240);
    v76 = *v111;
    v77 = v129;
    if ((*v111)(v74, 1, v129) != 1)
    {
      break;
    }

    if (v76(v74 + v75, 1, v77) != 1)
    {
      sub_1D9A31B98(v49, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      v99 = v120;
      v100 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult;
      goto LABEL_72;
    }

    sub_1D99A6AE0(v74, &qword_1ECB51240);
    v78 = v120;
    v27 = v107;
LABEL_47:
    v14 = v78;
    if (*(v78 + 4) != *(v49 + 4))
    {
      goto LABEL_62;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v92 = sub_1D9C7DC2C();
    sub_1D9A31B98(v49, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    result = sub_1D9A31B98(v78, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    v39 = v115;
    v54 = v106;
    v55 = v105;
    if ((v92 & 1) == 0)
    {
      goto LABEL_74;
    }

    v57 = v116 + 1;
    if (v116 + 1 == v104)
    {
      goto LABEL_50;
    }
  }

  sub_1D99AB100(v74, v72, &qword_1ECB51240);
  if (v76(v74 + v75, 1, v77) != 1)
  {
    v79 = v74 + v75;
    v80 = v128;
    sub_1D9A31AC8(v79, v128, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    v81 = *v72;
    v82 = *v80;
    v83 = *(*v72 + 16);
    v84 = v72;
    v85 = v120;
    v86 = v71;
    v27 = v107;
    if (v83 != *(*v80 + 16))
    {
      goto LABEL_57;
    }

    if (v83 && v81 != v82)
    {
      v87 = (v81 + 32);
      v88 = (v82 + 32);
      while (*v87 == *v88)
      {
        ++v87;
        ++v88;
        if (!--v83)
        {
          goto LABEL_41;
        }
      }

LABEL_57:
      sub_1D9A31B98(v128, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      sub_1D9A31B98(v72, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      sub_1D99A6AE0(v74, &qword_1ECB51240);
      v78 = v85;
LABEL_58:
      sub_1D9A31B98(v49, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      v94 = v78;
LABEL_63:
      sub_1D9A31B98(v94, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      goto LABEL_74;
    }

LABEL_41:
    v89 = v72[1] == *(v128 + 8) && v72[2] == *(v128 + 16);
    if (!v89 && (sub_1D9C7E7DC() & 1) == 0)
    {
      goto LABEL_57;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v90 = v128;
    v91 = sub_1D9C7DC2C();
    sub_1D9A31B98(v90, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    sub_1D9A31B98(v84, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    sub_1D99A6AE0(v74, &qword_1ECB51240);
    v78 = v85;
    v50 = v86;
    if ((v91 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_47;
  }

  sub_1D9A31B98(v49, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
  sub_1D9A31B98(v120, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
  v100 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode;
  v99 = v72;
LABEL_72:
  sub_1D9A31B98(v99, v100);
  v95 = &qword_1ECB51E48;
  v96 = v127;
LABEL_73:
  sub_1D99A6AE0(v96, v95);
LABEL_74:
  sub_1D9A31B98(v131, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
  sub_1D9A31B98(v135, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
LABEL_75:
  v93 = 0;
  return v93 & 1;
}

uint64_t sub_1D9A22554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_Polygon(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  while (1)
  {
    result = sub_1D9A31B30(v14 + v16 * v12, v10, type metadata accessor for Argos_Protos_Queryflow_Polygon);
    if (v12 == v11)
    {
      break;
    }

    result = sub_1D9A31B30(v15 + v16 * v12, v6, type metadata accessor for Argos_Protos_Queryflow_Polygon);
    v18 = *v10;
    v19 = *v6;
    v20 = *(*v10 + 16);
    if (v20 != *(*v6 + 16))
    {
LABEL_19:
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_Polygon);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_Polygon);
      goto LABEL_20;
    }

    if (v20)
    {
      v21 = v18 == v19;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v18 + 32);
      v23 = (v19 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_19;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v24 = sub_1D9C7DC2C();
    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_Polygon);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_Polygon);
    if ((v24 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A227B8(uint64_t result, uint64_t a2)
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

uint64_t sub_1D9A22814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      if (*v10 != *v6 || v10[1] != v6[1])
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v16 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1D9A22A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);
      sub_1D9A31B30(v14, v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v6[v16];
      if (v17 != v18)
      {

        v19 = sub_1D9A9CD50(v17, v18);

        if (!v19)
        {
          break;
        }
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      if ((sub_1D9C7DC2C() & 1) == 0)
      {
        break;
      }

      sub_1D9A31B98(v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);
      sub_1D9A31B98(v10, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_1D9A31B98(v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);
    sub_1D9A31B98(v10, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);
  }

  return 0;
}

uint64_t sub_1D9A22C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);
      if (*v10 != *v6 || v10[1] != v6[1])
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v16 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1D9A22EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);
      if (*v10 != *v6)
      {
        break;
      }

      v16 = *(v10 + 1) == *(v6 + 1) && *(v10 + 2) == *(v6 + 2);
      if (!v16 && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v17 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1D9A230F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition(0);
  v5 = *(v4 - 8);
  v144 = v4;
  v145 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v116 - v9);
  v11 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v129 = &v116 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v128 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v136 = &v116 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30);
  MEMORY[0x1EEE9AC00](v137);
  v133 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v116 - v23;
  v146 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v24 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v132 = (&v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v134 = (&v116 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v138 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v142 = &v116 - v31;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E38);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v140 = &v116 - v34;
  v143 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  MEMORY[0x1EEE9AC00](v143);
  v36 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v116 - v39;
  v41 = *(a1 + 16);
  if (v41 != *(a2 + 16))
  {
LABEL_94:
    v111 = 0;
    return v111 & 1;
  }

  if (!v41 || a1 == a2)
  {
    v111 = 1;
    return v111 & 1;
  }

  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = a1 + v42;
  v44 = a2 + v42;
  v127 = (v24 + 48);
  v121 = (v12 + 48);
  v45 = *(v38 + 72);
  v130 = &v116 - v39;
  v131 = v36;
  v123 = v11;
  v117 = v14;
  v46 = 0;
  v126 = v41;
  v120 = a1 + v42;
  v119 = v44;
  v118 = v45;
  v124 = v10;
  while (1)
  {
    result = sub_1D9A31B30(v43 + v45 * v46, v40, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
    if (v46 == v126)
    {
      goto LABEL_98;
    }

    sub_1D9A31B30(v44 + v45 * v46, v36, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
    v48 = *(v143 + 24);
    v49 = v140;
    v50 = *(v141 + 48);
    sub_1D99AB100(&v40[v48], v140, &qword_1ECB510D0);
    sub_1D99AB100(&v36[v48], v49 + v50, &qword_1ECB510D0);
    v51 = *v127;
    v52 = v146;
    v53 = (*v127)(v49, 1, v146);
    v122 = v46;
    v125 = v51;
    if (v53 == 1)
    {
      if (v51(v49 + v50, 1, v52) != 1)
      {
        goto LABEL_81;
      }

      sub_1D99A6AE0(v49, &qword_1ECB510D0);
      v54 = v124;
      goto LABEL_35;
    }

    v55 = v142;
    sub_1D99AB100(v49, v142, &qword_1ECB510D0);
    if (v51(v49 + v50, 1, v52) == 1)
    {
      sub_1D9A31B98(v55, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
LABEL_81:
      v114 = &qword_1ECB51E38;
      v115 = v49;
      goto LABEL_92;
    }

    v56 = v134;
    sub_1D9A31AC8(v49 + v50, v134, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    v57 = *v55;
    v58 = *v56;
    v59 = *(*v55 + 16);
    v61 = v135;
    v60 = v136;
    v54 = v124;
    if (v59 != *(*v56 + 16))
    {
      goto LABEL_87;
    }

    if (v59 && v57 != v58)
    {
      v62 = (v57 + 40);
      v63 = (v58 + 40);
      while (1)
      {
        v64 = *(v62 - 1) == *(v63 - 1) && *v62 == *v63;
        if (!v64 && (sub_1D9C7E7DC() & 1) == 0)
        {
          break;
        }

        v62 += 2;
        v63 += 2;
        if (!--v59)
        {
          goto LABEL_21;
        }
      }

LABEL_87:
      sub_1D9A31B98(v56, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      sub_1D9A31B98(v142, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      v114 = &qword_1ECB510D0;
      v115 = v140;
LABEL_92:
      sub_1D99A6AE0(v115, v114);
LABEL_93:
      sub_1D9A31B98(v131, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
      sub_1D9A31B98(v130, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
      goto LABEL_94;
    }

LABEL_21:
    if (*(v142 + 8) != v56[2] || *(v142 + 12) != v56[3])
    {
      goto LABEL_87;
    }

    v65 = *(v146 + 32);
    v66 = *(v137 + 48);
    sub_1D99AB100(v142 + v65, v61, &qword_1ECB510C8);
    sub_1D99AB100(v56 + v65, v61 + v66, &qword_1ECB510C8);
    v67 = *v121;
    v68 = v123;
    if ((*v121)(v61, 1, v123) == 1)
    {
      if (v67(v61 + v66, 1, v68) != 1)
      {
        goto LABEL_85;
      }

      sub_1D99A6AE0(v61, &qword_1ECB510C8);
      goto LABEL_34;
    }

    sub_1D99AB100(v61, v60, &qword_1ECB510C8);
    if (v67(v61 + v66, 1, v68) == 1)
    {
      sub_1D9A31B98(v60, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_85:
      v112 = &qword_1ECB51E30;
      goto LABEL_86;
    }

    v69 = v129;
    sub_1D9A31AC8(v61 + v66, v129, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    if ((*v60 != *v69 || *(v60 + 8) != *(v69 + 8)) && (sub_1D9C7E7DC() & 1) == 0 || *(v60 + 16) != *(v69 + 16) || *(v60 + 20) != *(v69 + 20) || *(v60 + 21) != *(v69 + 21))
    {
      sub_1D9A31B98(v69, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9A31B98(v60, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v112 = &qword_1ECB510C8;
LABEL_86:
      sub_1D99A6AE0(v61, v112);
      goto LABEL_87;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v70 = sub_1D9C7DC2C();
    sub_1D9A31B98(v69, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    sub_1D9A31B98(v60, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    sub_1D99A6AE0(v61, &qword_1ECB510C8);
    if ((v70 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_34:
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v71 = v142;
    v72 = sub_1D9C7DC2C();
    sub_1D9A31B98(v56, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    sub_1D9A31B98(v71, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    sub_1D99A6AE0(v140, &qword_1ECB510D0);
    if ((v72 & 1) == 0)
    {
      goto LABEL_93;
    }

LABEL_35:
    v73 = *(v143 + 28);
    v74 = *(v141 + 48);
    v75 = v139;
    sub_1D99AB100(&v130[v73], v139, &qword_1ECB510D0);
    sub_1D99AB100(&v131[v73], v75 + v74, &qword_1ECB510D0);
    v76 = v146;
    v77 = v125;
    if (v125(v75, 1, v146) == 1)
    {
      if (v77(v75 + v74, 1, v76) != 1)
      {
        goto LABEL_83;
      }

      result = sub_1D99A6AE0(v75, &qword_1ECB510D0);
      goto LABEL_64;
    }

    v116 = v7;
    v78 = v138;
    sub_1D99AB100(v75, v138, &qword_1ECB510D0);
    v79 = v77(v75 + v74, 1, v76);
    v80 = v123;
    if (v79 == 1)
    {
      sub_1D9A31B98(v78, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
LABEL_83:
      v114 = &qword_1ECB51E38;
      v115 = v75;
      goto LABEL_92;
    }

    v81 = v132;
    sub_1D9A31AC8(v75 + v74, v132, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    v82 = *v78;
    v83 = *v81;
    v84 = *(*v78 + 16);
    v85 = v117;
    v86 = v133;
    v87 = &qword_1ECB510C8;
    v88 = v78;
    if (v84 != *(*v81 + 16))
    {
      goto LABEL_91;
    }

    if (v84 && v82 != v83)
    {
      v89 = (v82 + 40);
      v90 = (v83 + 40);
      while (1)
      {
        if (*(v89 - 1) != *(v90 - 1) || *v89 != *v90)
        {
          v92 = v87;
          v93 = sub_1D9C7E7DC();
          v87 = v92;
          if ((v93 & 1) == 0)
          {
            break;
          }
        }

        v89 += 2;
        v90 += 2;
        if (!--v84)
        {
          goto LABEL_50;
        }
      }

LABEL_91:
      sub_1D9A31B98(v81, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      sub_1D9A31B98(v88, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      v114 = &qword_1ECB510D0;
      v115 = v139;
      goto LABEL_92;
    }

LABEL_50:
    if (*(v88 + 8) != v81[2] || *(v88 + 12) != v81[3])
    {
      goto LABEL_91;
    }

    v94 = *(v146 + 32);
    v95 = *(v137 + 48);
    v96 = v87;
    sub_1D99AB100(v88 + v94, v86, v87);
    sub_1D99AB100(v81 + v94, v86 + v95, v96);
    v97 = *v121;
    if ((*v121)(v86, 1, v80) == 1)
    {
      v98 = v97(v86 + v95, 1, v80);
      v88 = v138;
      if (v98 != 1)
      {
        goto LABEL_89;
      }

      sub_1D99A6AE0(v86, v96);
      v7 = v116;
      goto LABEL_63;
    }

    v99 = v128;
    sub_1D99AB100(v86, v128, v96);
    if (v97(v86 + v95, 1, v80) == 1)
    {
      sub_1D9A31B98(v99, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v88 = v138;
LABEL_89:
      v113 = &qword_1ECB51E30;
      goto LABEL_90;
    }

    sub_1D9A31AC8(v86 + v95, v85, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    v88 = v138;
    if ((*v99 != *v85 || *(v99 + 8) != *(v85 + 8)) && (sub_1D9C7E7DC() & 1) == 0 || *(v99 + 16) != *(v85 + 16) || *(v99 + 20) != *(v85 + 20) || *(v99 + 21) != *(v85 + 21))
    {
      sub_1D9A31B98(v85, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9A31B98(v99, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v113 = &qword_1ECB510C8;
LABEL_90:
      sub_1D99A6AE0(v86, v113);
      goto LABEL_91;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v100 = sub_1D9C7DC2C();
    sub_1D9A31B98(v85, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    sub_1D9A31B98(v99, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    sub_1D99A6AE0(v86, &qword_1ECB510C8);
    v7 = v116;
    if ((v100 & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_63:
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v101 = sub_1D9C7DC2C();
    sub_1D9A31B98(v81, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    sub_1D9A31B98(v88, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    result = sub_1D99A6AE0(v139, &qword_1ECB510D0);
    if ((v101 & 1) == 0)
    {
      goto LABEL_93;
    }

LABEL_64:
    v102 = *v130;
    v103 = *v131;
    v104 = *(*v130 + 16);
    if (v104 != *(*v131 + 16))
    {
      goto LABEL_93;
    }

    if (v104 && v102 != v103)
    {
      break;
    }

LABEL_73:
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v40 = v130;
    v36 = v131;
    v111 = sub_1D9C7DC2C();
    sub_1D9A31B98(v36, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
    sub_1D9A31B98(v40, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
    if (v111)
    {
      v46 = v122 + 1;
      v43 = v120;
      v44 = v119;
      v45 = v118;
      if (v122 + 1 != v126)
      {
        continue;
      }
    }

    return v111 & 1;
  }

  v105 = 0;
  v106 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v107 = v102 + v106;
  v108 = v103 + v106;
  while (v105 < *(v102 + 16))
  {
    v109 = *(v145 + 72) * v105;
    result = sub_1D9A31B30(v107 + v109, v54, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
    if (v105 >= *(v103 + 16))
    {
      goto LABEL_97;
    }

    sub_1D9A31B30(v108 + v109, v7, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
    if (*v54 != *v7)
    {
      sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
      sub_1D9A31B98(v54, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
      goto LABEL_93;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v110 = sub_1D9C7DC2C();
    sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
    result = sub_1D9A31B98(v54, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
    if ((v110 & 1) == 0)
    {
      goto LABEL_93;
    }

    if (v104 == ++v105)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_1D9A242E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_25:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
      v16 = *v10 == *v6 && *(v10 + 1) == *(v6 + 1);
      if (!v16 && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      v17 = *(v10 + 2) == *(v6 + 2) && *(v10 + 3) == *(v6 + 3);
      if (!v17 && (sub_1D9C7E7DC() & 1) == 0 || (*(v10 + 4) != *(v6 + 4) || *(v10 + 5) != *(v6 + 5)) && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      if (*(v10 + 12) != *(v6 + 12) || *(v10 + 13) != *(v6 + 13))
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v18 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
    goto LABEL_25;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D9A24574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
      v16 = *v10 == *v6 && *(v10 + 1) == *(v6 + 1);
      if (!v16 && (sub_1D9C7E7DC() & 1) == 0 || *(v10 + 4) != *(v6 + 4))
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v17 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1D9A247B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
      if (*v10 != *v6)
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v16 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1D9A249D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v33 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_26:
    v32 = 0;
    return v32 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v19 = 0;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = a1 + v20;
  v36 = v11;
  v37 = a2 + v20;
  v22 = *(v15 + 72);
  v34 = a1 + v20;
  v35 = v18;
  v33 = v22;
  while (1)
  {
    v23 = v22 * v19;
    result = sub_1D9A31B30(v21 + v22 * v19, v17, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);
    if (v19 == v18)
    {
      break;
    }

    v38 = v19;
    sub_1D9A31B30(v37 + v23, v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);
    if ((sub_1D9A2534C(*v17, *v13) & 1) == 0 || (result = sub_1D9A1ECA4(v17[1], v13[1]), (result & 1) == 0) || (v25 = v17[2], v26 = v13[2], v27 = *(v25 + 16), v27 != *(v26 + 16)))
    {
LABEL_25:
      sub_1D9A31B98(v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);
      sub_1D9A31B98(v17, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);
      goto LABEL_26;
    }

    if (v27 && v25 != v26)
    {
      v28 = 0;
      v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v39 = v26 + v29;
      v40 = v25 + v29;
      while (v28 < *(v25 + 16))
      {
        v30 = *(v42 + 72) * v28;
        result = sub_1D9A31B30(v40 + v30, v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_29;
        }

        sub_1D9A31B30(v39 + v30, v7, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
        if ((*v10 != *v7 || *(v10 + 1) != *(v7 + 1)) && (sub_1D9C7E7DC() & 1) == 0 || *(v10 + 4) != *(v7 + 4))
        {
          sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
          sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
          goto LABEL_25;
        }

        sub_1D9C7D3CC();
        sub_1D9A31A70();
        v31 = sub_1D9C7DC2C();
        sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
        result = sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
        if ((v31 & 1) == 0)
        {
          goto LABEL_25;
        }

        if (v27 == ++v28)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

LABEL_20:
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v32 = sub_1D9C7DC2C();
    sub_1D9A31B98(v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);
    sub_1D9A31B98(v17, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);
    if (v32)
    {
      v19 = v38 + 1;
      v21 = v34;
      v18 = v35;
      v22 = v33;
      if (v38 + 1 != v35)
      {
        continue;
      }
    }

    return v32 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A24E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_41:
    v33 = 0;
    return v33 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v20 = 0;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = a1 + v21;
  v37 = v15;
  v38 = a2 + v21;
  v23 = *(v16 + 72);
  v35 = v22;
  v36 = v19;
  v34 = v23;
  while (1)
  {
    result = sub_1D9A31B30(v22 + v23 * v20, v18, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
    if (v20 == v19)
    {
      break;
    }

    v39 = v20;
    sub_1D9A31B30(v38 + v23 * v20, v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
    result = *v18;
    if (*v18 != *v13 || *(v18 + 1) != *(v13 + 1))
    {
      result = sub_1D9C7E7DC();
      if ((result & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v26 = *(v18 + 2);
    v27 = *(v13 + 2);
    v28 = *(v26 + 16);
    if (v28 != *(v27 + 16))
    {
      goto LABEL_40;
    }

    if (v28 && v26 != v27)
    {
      v29 = 0;
      v30 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v40 = v27 + v30;
      v41 = v26 + v30;
      while (v29 < *(v26 + 16))
      {
        v31 = *(v43 + 72) * v29;
        result = sub_1D9A31B30(v41 + v31, v10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_44;
        }

        sub_1D9A31B30(v40 + v31, v7, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
        if ((*v10 != *v7 || *(v10 + 1) != *(v7 + 1)) && (sub_1D9C7E7DC() & 1) == 0 || (*(v10 + 2) != *(v7 + 2) || *(v10 + 3) != *(v7 + 3)) && (sub_1D9C7E7DC() & 1) == 0 || *(v10 + 8) != *(v7 + 8) || v10[36] != v7[36])
        {
          sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
          sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
          goto LABEL_40;
        }

        sub_1D9C7D3CC();
        sub_1D9A31A70();
        v32 = sub_1D9C7DC2C();
        sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
        result = sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
        if ((v32 & 1) == 0)
        {
          goto LABEL_40;
        }

        if (v28 == ++v29)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      break;
    }

LABEL_27:
    if ((*(v18 + 3) != *(v13 + 3) || *(v18 + 4) != *(v13 + 4)) && (sub_1D9C7E7DC() & 1) == 0 || v18[40] != v13[40] || (*(v18 + 6) != *(v13 + 6) || *(v18 + 7) != *(v13 + 7)) && (sub_1D9C7E7DC() & 1) == 0 || v18[64] != v13[64])
    {
LABEL_40:
      sub_1D9A31B98(v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
      sub_1D9A31B98(v18, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
      goto LABEL_41;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v33 = sub_1D9C7DC2C();
    sub_1D9A31B98(v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
    sub_1D9A31B98(v18, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
    if (v33)
    {
      v20 = v39 + 1;
      v22 = v35;
      v19 = v36;
      v23 = v34;
      if (v39 + 1 != v36)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A2534C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_22:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      v16 = *v10 == *v6 && *(v10 + 1) == *(v6 + 1);
      if (!v16 && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      v17 = *(v10 + 2) == *(v6 + 2) && *(v10 + 3) == *(v6 + 3);
      if (!v17 && (sub_1D9C7E7DC() & 1) == 0 || *(v10 + 8) != *(v6 + 8) || v10[36] != v6[36])
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v18 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
    goto LABEL_22;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D9A255BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
      v16 = *v10 == *v6 && *(v10 + 1) == *(v6 + 1);
      if (!v16 && (sub_1D9C7E7DC() & 1) == 0 || *(v10 + 4) != *(v6 + 4))
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v17 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1D9A257FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_35:
    v26 = 0;
    return v26 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1D9A31B30(v28 + v15 * v12, v10, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);
    if (v12 == v11)
    {
      break;
    }

    result = sub_1D9A31B30(v14 + v15 * v12, v6, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);
    v17 = *v10;
    v18 = *v6;
    v19 = *(*v10 + 16);
    if (v19 != *(*v6 + 16))
    {
      goto LABEL_34;
    }

    if (v19)
    {
      v20 = v17 == v18;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v23 = (v17 + 40);
      v24 = (v18 + 40);
      while (v19)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1D9C7E7DC();
          if ((result & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v19)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    v21 = *(v10 + 1);
    v22 = *(v6 + 1);
    if (v10[16])
    {
      v21 = v21 != 0;
    }

    if (v6[16] == 1)
    {
      if (v22)
      {
        if (v21 != 1)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        goto LABEL_34;
      }
    }

    else if (v21 != v22)
    {
      goto LABEL_34;
    }

    if (*(v10 + 5) != *(v6 + 5))
    {
LABEL_34:
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);
      goto LABEL_35;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v26 = sub_1D9C7DC2C();
    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);
    if ((v26 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A25ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_23:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
      sub_1D9A31B30(v14, v6, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
      v16 = *v10 == *v6 && v10[1] == v6[1];
      if (!v16 && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v6[2] && v10[3] == v6[3];
      if (!v17 && (sub_1D9C7E7DC() & 1) == 0 || (v10[4] != v6[4] || v10[5] != v6[5]) && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v18 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
      sub_1D9A31B98(v10, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
    sub_1D9A31B98(v10, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
    goto LABEL_23;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D9A25D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E20);
  MEMORY[0x1EEE9AC00](v56);
  v63 = &v50 - v11;
  v64 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
  v57 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = &v50 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E28);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v50 - v15;
  v16 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v50 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_32:
    v46 = 0;
    return v46 & 1;
  }

  if (v23 && a1 != a2)
  {
    v50 = v7;
    v51 = v10;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = a2 + v24;
    v57 += 6;
    v58 = &v50 - v21;
    v52 = v4;
    v53 = (v5 + 48);
    v54 = *(v20 + 72);
    v55 = v16;
    v27 = v60;
    v59 = v18;
    while (1)
    {
      sub_1D9A31B30(v25, v22, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
      sub_1D9A31B30(v26, v18, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
      v28 = *v22 == *v18 && v22[1] == v18[1];
      if (!v28 && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      v29 = *(v16 + 24);
      v30 = *(v62 + 48);
      sub_1D99AB100(v22 + v29, v27, &qword_1ECB512B8);
      sub_1D99AB100(v18 + v29, v27 + v30, &qword_1ECB512B8);
      v31 = *v57;
      v32 = v64;
      if ((*v57)(v27, 1, v64) == 1)
      {
        if (v31(v27 + v30, 1, v32) != 1)
        {
          goto LABEL_25;
        }

        sub_1D99A6AE0(v27, &qword_1ECB512B8);
        v16 = v55;
        v22 = v58;
        v18 = v59;
      }

      else
      {
        sub_1D99AB100(v27, v65, &qword_1ECB512B8);
        if (v31(v27 + v30, 1, v32) == 1)
        {
          sub_1D9A31B98(v65, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
LABEL_25:
          sub_1D99A6AE0(v27, &qword_1ECB51E28);
          v22 = v58;
          v18 = v59;
          break;
        }

        v33 = v61;
        sub_1D9A31AC8(v27 + v30, v61, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
        v34 = *(v56 + 48);
        v35 = v63;
        sub_1D99AB100(v65, v63, &qword_1ECB51E18);
        sub_1D99AB100(v33, v35 + v34, &qword_1ECB51E18);
        v36 = *v53;
        v37 = v35;
        v38 = v52;
        if ((*v53)(v37, 1, v52) == 1)
        {
          if (v36(v63 + v34, 1, v38) != 1)
          {
            v47 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig;
            v48 = v61;
LABEL_28:
            sub_1D9A31B98(v48, v47);
            v27 = v60;
            sub_1D99A6AE0(v63, &qword_1ECB51E20);
LABEL_30:
            v22 = v58;
            v18 = v59;
            sub_1D9A31B98(v65, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
            sub_1D99A6AE0(v27, &qword_1ECB512B8);
            break;
          }

          sub_1D99A6AE0(v63, &qword_1ECB51E18);
          v27 = v60;
        }

        else
        {
          v39 = v63;
          v40 = v51;
          sub_1D99AB100(v63, v51, &qword_1ECB51E18);
          if (v36(v39 + v34, 1, v38) == 1)
          {
            sub_1D9A31B98(v61, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
            v47 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config;
            v48 = v40;
            goto LABEL_28;
          }

          v41 = v50;
          sub_1D9A31AC8(v39 + v34, v50, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
          v42 = sub_1D9A36BCC(v40, v41);
          sub_1D9A31B98(v41, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
          sub_1D9A31B98(v40, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
          sub_1D99A6AE0(v39, &qword_1ECB51E18);
          v27 = v60;
          if ((v42 & 1) == 0)
          {
            sub_1D9A31B98(v61, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
            goto LABEL_30;
          }
        }

        sub_1D9C7D3CC();
        sub_1D9A31A70();
        v43 = v65;
        v44 = v61;
        v45 = sub_1D9C7DC2C();
        sub_1D9A31B98(v44, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
        sub_1D9A31B98(v43, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
        sub_1D99A6AE0(v27, &qword_1ECB512B8);
        v16 = v55;
        v22 = v58;
        v18 = v59;
        if ((v45 & 1) == 0)
        {
          break;
        }
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v46 = sub_1D9C7DC2C();
      sub_1D9A31B98(v18, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
      sub_1D9A31B98(v22, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
      if (v46)
      {
        v26 += v54;
        v25 += v54;
        if (--v23)
        {
          continue;
        }
      }

      return v46 & 1;
    }

    sub_1D9A31B98(v18, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
    sub_1D9A31B98(v22, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
    goto LABEL_32;
  }

  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D9A265FC(uint64_t result, uint64_t a2)
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

uint64_t sub_1D9A26658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility(0);
  v7 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v114 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v108 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E60);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v108 - v12;
  v122 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  MEMORY[0x1EEE9AC00](v122);
  v129 = (&v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E68);
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v108 - v14;
  v128 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
  v136 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v118 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v130 = (&v108 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v126 = &v108 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E70);
  MEMORY[0x1EEE9AC00](v127);
  v23 = &v108 - v22;
  v137 = type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
  v24 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v132 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518E0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v108 - v27;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E78);
  MEMORY[0x1EEE9AC00](v133);
  v30 = &v108 - v29;
  v138 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  MEMORY[0x1EEE9AC00](v138);
  v131 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v108 - v34);
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
LABEL_79:
    v99 = 0;
    return v99 & 1;
  }

  if (!v36 || a1 == a2)
  {
    v99 = 1;
    return v99 & 1;
  }

  v37 = *(a1 + 16);
  v113 = v23;
  v110 = v11;
  v108 = v6;
  v38 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v39 = a1 + v38;
  v40 = a2 + v38;
  v41 = (v24 + 48);
  v111 = (v136 + 48);
  v109 = (v7 + 48);
  v119 = *(v33 + 72);
  v120 = (v24 + 48);
  v134 = v28;
  v42 = v37;
  v43 = v131;
  v112 = v30;
  while (1)
  {
    v136 = v39;
    result = sub_1D9A31B30(v39, v35, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    if (!v42)
    {
      break;
    }

    sub_1D9A31B30(v40, v43, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v45 = *v35 == *v43 && v35[1] == v43[1];
    if (!v45 && (sub_1D9C7E7DC() & 1) == 0)
    {
      goto LABEL_78;
    }

    v46 = v35[2] == v43[2] && v35[3] == v43[3];
    if (!v46 && (sub_1D9C7E7DC() & 1) == 0)
    {
      goto LABEL_78;
    }

    v135 = v42;
    v47 = v41;
    v48 = *(v138 + 28);
    v49 = *(v133 + 48);
    sub_1D99AB100(v35 + v48, v30, &qword_1ECB518E0);
    sub_1D99AB100(v43 + v48, &v30[v49], &qword_1ECB518E0);
    v50 = *v47;
    v51 = v137;
    if ((*v47)(v30, 1, v137) == 1)
    {
      if (v50(&v30[v49], 1, v51) != 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v52 = v134;
      sub_1D99AB100(v30, v134, &qword_1ECB518E0);
      if (v50(&v30[v49], 1, v51) == 1)
      {
        sub_1D9A31B98(v52, type metadata accessor for Argos_Protos_MLModel_FeatureType);
        v43 = v131;
LABEL_63:
        v100 = &qword_1ECB51E78;
        goto LABEL_77;
      }

      v117 = v40;
      v53 = v132;
      sub_1D9A31AC8(&v30[v49], v132, type metadata accessor for Argos_Protos_MLModel_FeatureType);
      v54 = *(v127 + 48);
      v55 = v113;
      sub_1D99AB100(v52, v113, &qword_1ECB510A8);
      sub_1D99AB100(v53, v55 + v54, &qword_1ECB510A8);
      v56 = *v111;
      v57 = v128;
      if ((*v111)(v55, 1, v128) == 1)
      {
        v58 = v52;
        v59 = v56(v55 + v54, 1, v57);
        v30 = v112;
        v40 = v117;
        v43 = v131;
        v60 = v137;
        if (v59 != 1)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v61 = v126;
        sub_1D99AB100(v55, v126, &qword_1ECB510A8);
        v62 = v56(v55 + v54, 1, v57);
        v43 = v131;
        if (v62 == 1)
        {
          sub_1D9A31B98(v61, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
          v58 = v134;
          v30 = v112;
LABEL_65:
          v101 = &qword_1ECB51E70;
          v102 = v55;
          goto LABEL_74;
        }

        v63 = v125;
        sub_1D9A31AC8(v55 + v54, v125, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        v64 = v124;
        v65 = *(v123 + 48);
        sub_1D9A31B30(v61, v124, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        v66 = v64;
        sub_1D9A31B30(v63, v64 + v65, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = v64;
          v68 = v118;
          sub_1D9A31B30(v67, v118, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v40 = v117;
          if (EnumCaseMultiPayload != 1)
          {
            v103 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType;
            v104 = v68;
LABEL_68:
            sub_1D9A31B98(v104, v103);
            v58 = v134;
            v30 = v112;
            sub_1D99A6AE0(v66, &qword_1ECB51E68);
            goto LABEL_72;
          }

          v70 = v108;
          sub_1D9A31AC8(v66 + v65, v108, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
          v71 = sub_1D9B4B92C(v68, v70);
          v72 = v68;
          v73 = v66;
          v74 = v71;
          v75 = v125;
          sub_1D9A31B98(v70, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
          sub_1D9A31B98(v72, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType);
          v58 = v134;
          v30 = v112;
          if ((v74 & 1) == 0)
          {
            sub_1D9A31B98(v73, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
            v105 = v126;
            v106 = v113;
            v107 = v75;
            goto LABEL_73;
          }
        }

        else
        {
          v76 = v130;
          sub_1D9A31B30(v64, v130, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
          v77 = swift_getEnumCaseMultiPayload();
          v40 = v117;
          v78 = v109;
          if (v77 == 1)
          {
            v103 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType;
            v104 = v76;
            goto LABEL_68;
          }

          v79 = v129;
          sub_1D9A31AC8(v64 + v65, v129, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
          v45 = *v76 == *v79;
          v58 = v134;
          v30 = v112;
          if (!v45 || v130[1] != v129[1])
          {
            goto LABEL_71;
          }

          v80 = *(v122 + 24);
          v81 = *(v115 + 48);
          v82 = v116;
          sub_1D99AB100(v130 + v80, v116, &qword_1ECB51E58);
          sub_1D99AB100(v129 + v80, v82 + v81, &qword_1ECB51E58);
          v83 = *v78;
          if ((*v78)(v82, 1, v121) == 1)
          {
            v45 = v83(v82 + v81, 1, v121) == 1;
            v84 = v82;
            if (!v45)
            {
              goto LABEL_70;
            }

            sub_1D99A6AE0(v82, &qword_1ECB51E58);
            v85 = v122;
            v58 = v134;
          }

          else
          {
            v86 = v110;
            sub_1D99AB100(v82, v110, &qword_1ECB51E58);
            if (v83(v82 + v81, 1, v121) == 1)
            {
              sub_1D9A31B98(v86, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
              v84 = v82;
LABEL_70:
              sub_1D99A6AE0(v84, &qword_1ECB51E60);
              v58 = v134;
LABEL_71:
              sub_1D9A31B98(v129, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
              sub_1D9A31B98(v130, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
              sub_1D9A31B98(v124, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
LABEL_72:
              v107 = v125;
              v105 = v126;
              v106 = v113;
LABEL_73:
              sub_1D9A31B98(v107, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
              sub_1D9A31B98(v105, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
              v101 = &qword_1ECB510A8;
              v102 = v106;
LABEL_74:
              sub_1D99A6AE0(v102, v101);
              v95 = v132;
LABEL_75:
              sub_1D9A31B98(v95, type metadata accessor for Argos_Protos_MLModel_FeatureType);
LABEL_76:
              sub_1D9A31B98(v58, type metadata accessor for Argos_Protos_MLModel_FeatureType);
              v100 = &qword_1ECB518E0;
LABEL_77:
              sub_1D99A6AE0(v30, v100);
LABEL_78:
              sub_1D9A31B98(v43, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
              sub_1D9A31B98(v35, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
              goto LABEL_79;
            }

            v87 = v114;
            sub_1D9A31AC8(v82 + v81, v114, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
            v88 = sub_1D9B46878(v110, v87);
            sub_1D9A31B98(v87, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
            sub_1D9A31B98(v110, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType.OneOf_SizeFlexibility);
            sub_1D99A6AE0(v82, &qword_1ECB51E58);
            v85 = v122;
            v58 = v134;
            if ((v88 & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          v89 = *(v85 + 28);
          v90 = v130 + v89;
          v91 = *(v130 + v89);
          if (!v91)
          {
            goto LABEL_71;
          }

          v92 = v129 + v89;
          v93 = *v92;
          if (!*v92)
          {
            goto LABEL_71;
          }

          v94 = v92[8];
          if (v90[8])
          {
            v91 *= 10;
          }

          if (v94 == 1)
          {
            if (v93 == 1)
            {
              if (v91 != 10)
              {
                goto LABEL_71;
              }
            }

            else if (v93 == 2)
            {
              if (v91 != 20)
              {
                goto LABEL_71;
              }
            }

            else if (v91 != 30)
            {
              goto LABEL_71;
            }
          }

          else if (v91 != v93)
          {
            goto LABEL_71;
          }

          sub_1D9C7D3CC();
          sub_1D9A31A70();
          if ((sub_1D9C7DC2C() & 1) == 0)
          {
            goto LABEL_71;
          }

          sub_1D9A31B98(v129, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
          sub_1D9A31B98(v130, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
          v73 = v124;
          v75 = v125;
        }

        sub_1D9A31B98(v73, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        sub_1D9A31B98(v75, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        sub_1D9A31B98(v126, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        v55 = v113;
        v60 = v137;
      }

      sub_1D99A6AE0(v55, &qword_1ECB510A8);
      v95 = v132;
      if (*(v58 + *(v60 + 20)) != *(v132 + *(v60 + 20)))
      {
        goto LABEL_75;
      }

      v96 = v132;
      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v97 = sub_1D9C7DC2C();
      v98 = v96;
      v58 = v134;
      sub_1D9A31B98(v98, type metadata accessor for Argos_Protos_MLModel_FeatureType);
      if ((v97 & 1) == 0)
      {
        goto LABEL_76;
      }

      sub_1D9A31B98(v58, type metadata accessor for Argos_Protos_MLModel_FeatureType);
    }

    sub_1D99A6AE0(v30, &qword_1ECB518E0);
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v99 = sub_1D9C7DC2C();
    sub_1D9A31B98(v43, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    sub_1D9A31B98(v35, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    if (v99)
    {
      v42 = v135 - 1;
      v41 = v120;
      v40 += v119;
      v39 = v136 + v119;
      if (v135 != 1)
      {
        continue;
      }
    }

    return v99 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A27714(uint64_t result, uint64_t a2)
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

uint64_t sub_1D9A27770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  while (1)
  {
    result = sub_1D9A31B30(v14 + v16 * v12, v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape);
    if (v12 == v11)
    {
      break;
    }

    result = sub_1D9A31B30(v15 + v16 * v12, v6, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape);
    v18 = *v10;
    v19 = *v6;
    v20 = *(*v10 + 16);
    if (v20 != *(*v6 + 16))
    {
LABEL_19:
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape);
      goto LABEL_20;
    }

    if (v20)
    {
      v21 = v18 == v19;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v18 + 32);
      v23 = (v19 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_19;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v24 = sub_1D9C7DC2C();
    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_MLModel_ArrayFeatureType.Shape);
    if ((v24 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A27A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_27:
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1D9A31B30(v26 + v15 * v12, v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);
    if (v12 == v11)
    {
      break;
    }

    result = sub_1D9A31B30(v14 + v15 * v12, v6, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);
    v17 = *v10;
    v18 = *v6;
    v19 = *(*v10 + 16);
    if (v19 != *(*v6 + 16))
    {
      goto LABEL_26;
    }

    if (v19)
    {
      v20 = v17 == v18;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v22 = (v17 + 40);
      v23 = (v18 + 40);
      while (v19)
      {
        result = *(v22 - 1);
        if (result != *(v23 - 1) || *v22 != *v23)
        {
          result = sub_1D9C7E7DC();
          if ((result & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v22 += 2;
        v23 += 2;
        if (!--v19)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    if (v10[2] != v6[2] || v10[3] != v6[3] || v10[4] != v6[4] || v10[5] != v6[5])
    {
LABEL_26:
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);
      goto LABEL_27;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v21 = sub_1D9C7DC2C();
    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);
    if ((v21 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A27D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v23 = a3(0);
  MEMORY[0x1EEE9AC00](v23);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v22 - v13);
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  if (v15 && a1 != a2)
  {
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v12 + 72);
    while (1)
    {
      sub_1D9A31B30(v17, v14, a5);
      sub_1D9A31B30(v18, v10, a5);
      if (*v14 != *v10 || v14[1] != v10[1])
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v20 = sub_1D9C7DC2C();
      sub_1D9A31B98(v10, a4);
      sub_1D9A31B98(v14, a4);
      if (v20)
      {
        v18 += v19;
        v17 += v19;
        if (--v15)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1D9A31B98(v10, a4);
    sub_1D9A31B98(v14, a4);
    goto LABEL_12;
  }

  v20 = 1;
  return v20 & 1;
}

void sub_1D9A27F14(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for ObjectKnowledge();
  v4 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v68 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51A10);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v68 - v9;
  v92 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v10 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16) || !v16 || a1 == a2)
  {
    return;
  }

  v17 = 0;
  v73 = a1 + 32;
  v72 = a2 + 32;
  v69 = 0x80000001D9CA2950;
  v68 = 0x80000001D9CA2910;
  v82 = (v4 + 48);
  v70 = v16;
  do
  {
    if (v17 == v16)
    {
      goto LABEL_119;
    }

    v18 = v73 + 56 * v17;
    v19 = *(v18 + 32);
    v76 = *(v18 + 40);
    v20 = *(v18 + 48);
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    v24 = *v18;
    v23 = *(v18 + 8);
    v74 = v17;
    v25 = v72 + 56 * v17;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v30 = *(v25 + 32);
    v75 = *(v25 + 40);
    v31 = *(v25 + 48);

    v77 = v20;

    v78 = v31;

    v93.origin.x = v24;
    v93.origin.y = v23;
    v93.size.width = v22;
    v93.size.height = v21;
    v94.origin.x = v26;
    v94.origin.y = v27;
    v94.size.width = v28;
    v94.size.height = v29;
    if (!CGRectEqualToRect(v93, v94) || (v32 = *(v19 + 16), v32 != *(v30 + 16)))
    {
LABEL_115:

      return;
    }

    if (v32 && v19 != v30)
    {
      v33 = 0;
      v34 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v85 = v30 + v34;
      v86 = v19 + v34;
      v83 = v19;
      v84 = v30;
      v80 = v10;
      v81 = v8;
      v79 = v32;
      while (1)
      {
        if (v33 >= *(v19 + 16))
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          return;
        }

        v35 = *(v10 + 72) * v33;
        sub_1D9A31B30(v86 + v35, v15, type metadata accessor for RegionSearchResult.ResultItem);
        if (v33 >= *(v30 + 16))
        {
          goto LABEL_118;
        }

        v88 = v33 + 1;
        sub_1D9A31B30(v85 + v35, v12, type metadata accessor for RegionSearchResult.ResultItem);
        v36 = 0xE300000000000000;
        v37 = 7631457;
        switch(*v15)
        {
          case 1:
            v36 = 0xE600000000000000;
            v37 = 0x65727574616ELL;
            break;
          case 2:
            v36 = 0xE800000000000000;
            v37 = 0x6B72616D646E616CLL;
            break;
          case 3:
            v37 = 0x4C6C61727574616ELL;
            v36 = 0xEF6B72616D646E61;
            break;
          case 4:
            v36 = 0xE500000000000000;
            v37 = 0x616964656DLL;
            break;
          case 5:
            v36 = 0xE400000000000000;
            v37 = 1802465122;
            break;
          case 6:
            v36 = 0xE500000000000000;
            v37 = 0x6D75626C61;
            break;
          case 7:
            v36 = 0xE400000000000000;
            v37 = 1937006947;
            break;
          case 8:
            v36 = 0xE400000000000000;
            v37 = 1936158564;
            break;
          case 9:
            v36 = 0xE700000000000000;
            v38 = 1835626081;
            goto LABEL_32;
          case 10:
            v36 = 0xE500000000000000;
            v37 = 0x7364726962;
            break;
          case 11:
            v36 = 0xE700000000000000;
            v37 = 0x73746365736E69;
            break;
          case 12:
            v36 = 0xE800000000000000;
            v37 = 0x73656C6974706572;
            break;
          case 13:
            v36 = 0xE700000000000000;
            v38 = 1835884909;
LABEL_32:
            v37 = v38 | 0x736C6100000000;
            break;
          case 14:
            v37 = 0xD000000000000010;
            v36 = v68;
            break;
          case 15:
            v36 = 0xE700000000000000;
            v37 = 0x6C657261707061;
            break;
          case 16:
            v37 = 0x726F737365636361;
            v36 = 0xEB00000000736569;
            break;
          case 17:
            v36 = 0xE400000000000000;
            v37 = 1685024614;
            break;
          case 18:
            v37 = 0x6F726665726F7473;
            v36 = 0xEA0000000000746ELL;
            break;
          case 19:
            v39 = 1852270963;
            goto LABEL_39;
          case 20:
            v37 = 0xD000000000000011;
            v36 = v69;
            break;
          case 21:
            v39 = 1869903201;
LABEL_39:
            v37 = v39 | 0x626D795300000000;
            v36 = 0xEA00000000006C6FLL;
            break;
          case 22:
            v37 = 0x676F4C646E617262;
            v36 = 0xEF6C6F626D79536FLL;
            break;
          case 23:
            v36 = 0xE700000000000000;
            v37 = 0x65646F63726162;
            break;
          case 24:
            v37 = 0x727574706C756373;
            v36 = 0xE900000000000065;
            break;
          case 25:
            v36 = 0xE700000000000000;
            v37 = 0x656E696C796B73;
            break;
          case 26:
            v36 = 0xE800000000000000;
            v37 = 0x44327463656A626FLL;
            break;
          default:
            break;
        }

        v40 = 0xE300000000000000;
        v41 = 7631457;
        switch(*v12)
        {
          case 1:
            v40 = 0xE600000000000000;
            v41 = 0x65727574616ELL;
            break;
          case 2:
            v40 = 0xE800000000000000;
            v41 = 0x6B72616D646E616CLL;
            break;
          case 3:
            v41 = 0x4C6C61727574616ELL;
            v40 = 0xEF6B72616D646E61;
            break;
          case 4:
            v40 = 0xE500000000000000;
            v41 = 0x616964656DLL;
            break;
          case 5:
            v40 = 0xE400000000000000;
            v41 = 1802465122;
            break;
          case 6:
            v40 = 0xE500000000000000;
            v41 = 0x6D75626C61;
            break;
          case 7:
            v40 = 0xE400000000000000;
            v41 = 1937006947;
            break;
          case 8:
            v40 = 0xE400000000000000;
            v41 = 1936158564;
            break;
          case 9:
            v40 = 0xE700000000000000;
            v42 = 1835626081;
            goto LABEL_61;
          case 10:
            v40 = 0xE500000000000000;
            v41 = 0x7364726962;
            break;
          case 11:
            v40 = 0xE700000000000000;
            v41 = 0x73746365736E69;
            break;
          case 12:
            v40 = 0xE800000000000000;
            v41 = 0x73656C6974706572;
            break;
          case 13:
            v40 = 0xE700000000000000;
            v42 = 1835884909;
LABEL_61:
            v41 = v42 | 0x736C6100000000;
            break;
          case 14:
            v41 = 0xD000000000000010;
            v40 = v68;
            break;
          case 15:
            v40 = 0xE700000000000000;
            v41 = 0x6C657261707061;
            break;
          case 16:
            v41 = 0x726F737365636361;
            v40 = 0xEB00000000736569;
            break;
          case 17:
            v40 = 0xE400000000000000;
            v41 = 1685024614;
            break;
          case 18:
            v41 = 0x6F726665726F7473;
            v40 = 0xEA0000000000746ELL;
            break;
          case 19:
            v43 = 1852270963;
            goto LABEL_68;
          case 20:
            v41 = 0xD000000000000011;
            v40 = v69;
            break;
          case 21:
            v43 = 1869903201;
LABEL_68:
            v41 = v43 | 0x626D795300000000;
            v40 = 0xEA00000000006C6FLL;
            break;
          case 22:
            v41 = 0x676F4C646E617262;
            v40 = 0xEF6C6F626D79536FLL;
            break;
          case 23:
            v40 = 0xE700000000000000;
            v41 = 0x65646F63726162;
            break;
          case 24:
            v41 = 0x727574706C756373;
            v40 = 0xE900000000000065;
            break;
          case 25:
            v40 = 0xE700000000000000;
            v41 = 0x656E696C796B73;
            break;
          case 26:
            v40 = 0xE800000000000000;
            v41 = 0x44327463656A626FLL;
            break;
          default:
            break;
        }

        if (v37 == v41 && v36 == v40)
        {
        }

        else
        {
          v44 = sub_1D9C7E7DC();

          if ((v44 & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        if ((*(v15 + 1) != *(v12 + 1) || *(v15 + 2) != *(v12 + 2)) && (sub_1D9C7E7DC() & 1) == 0)
        {
          goto LABEL_114;
        }

        v46 = *(v15 + 3);
        v45 = *(v15 + 4);
        v48 = *(v15 + 5);
        v47 = *(v15 + 6);
        v49 = *(v12 + 3);
        v50 = *(v12 + 4);
        v52 = *(v12 + 5);
        v51 = *(v12 + 6);
        if (!v45)
        {
          break;
        }

        if (!v50)
        {
          sub_1D99FE1B4(*(v15 + 3), *(v15 + 4));
          sub_1D99FE1B4(v49, 0);
          sub_1D99FE1B4(v46, v45);

LABEL_111:
          sub_1D99FEF84(v46, v45);
          v66 = v49;
          v67 = v50;
          goto LABEL_113;
        }

        if ((v46 != v49 || v45 != v50) && (sub_1D9C7E7DC() & 1) == 0)
        {
          sub_1D99FE1B4(v46, v45);
          sub_1D99FE1B4(v49, v50);
          sub_1D99FE1B4(v46, v45);
          sub_1D99FEF84(v49, v50);

          v66 = v46;
          v67 = v45;
LABEL_113:
          sub_1D99FEF84(v66, v67);
LABEL_114:
          sub_1D9A31B98(v12, type metadata accessor for RegionSearchResult.ResultItem);
          sub_1D9A31B98(v15, type metadata accessor for RegionSearchResult.ResultItem);
          goto LABEL_115;
        }

        if (v48 == v52 && v47 == v51)
        {
          sub_1D99FE1B4(v46, v45);
          sub_1D99FE1B4(v49, v50);
          sub_1D99FE1B4(v46, v45);
          sub_1D99FEF84(v49, v50);

LABEL_88:
          sub_1D99FEF84(v46, v45);
          v19 = v83;
          v30 = v84;
          v8 = v81;
          goto LABEL_90;
        }

        v71 = sub_1D9C7E7DC();
        sub_1D99FE1B4(v46, v45);
        sub_1D99FE1B4(v49, v50);
        sub_1D99FE1B4(v46, v45);
        sub_1D99FEF84(v49, v50);

        sub_1D99FEF84(v46, v45);
        v19 = v83;
        v30 = v84;
        v8 = v81;
        if ((v71 & 1) == 0)
        {
          goto LABEL_114;
        }

LABEL_90:
        v53 = *(v92 + 28);
        v54 = v90;
        v55 = *(v89 + 48);
        sub_1D99AB100(&v15[v53], v90, &qword_1ECB51510);
        sub_1D99AB100(&v12[v53], v54 + v55, &qword_1ECB51510);
        v56 = *v82;
        v57 = v91;
        if ((*v82)(v54, 1, v91) == 1)
        {
          if (v56(v54 + v55, 1, v57) != 1)
          {
            goto LABEL_109;
          }

          sub_1D99A6AE0(v54, &qword_1ECB51510);
        }

        else
        {
          sub_1D99AB100(v54, v8, &qword_1ECB51510);
          if (v56(v54 + v55, 1, v57) == 1)
          {
            sub_1D9A31B98(v8, type metadata accessor for ObjectKnowledge);
LABEL_109:
            sub_1D99A6AE0(v54, &qword_1ECB51A10);
            goto LABEL_114;
          }

          v58 = v54 + v55;
          v59 = v87;
          sub_1D9A31AC8(v58, v87, type metadata accessor for ObjectKnowledge);
          v60 = static ObjectKnowledge.== infix(_:_:)(v8, v59);
          sub_1D9A31B98(v59, type metadata accessor for ObjectKnowledge);
          sub_1D9A31B98(v8, type metadata accessor for ObjectKnowledge);
          sub_1D99A6AE0(v54, &qword_1ECB51510);
          if ((v60 & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        v61 = *(v92 + 32);
        v62 = *&v15[v61];
        v63 = *&v12[v61];
        sub_1D9A31B98(v12, type metadata accessor for RegionSearchResult.ResultItem);
        sub_1D9A31B98(v15, type metadata accessor for RegionSearchResult.ResultItem);
        if (v62 != v63)
        {
          goto LABEL_115;
        }

        v33 = v88;
        v10 = v80;
        if (v79 == v88)
        {
          goto LABEL_97;
        }
      }

      sub_1D99FE1B4(*(v15 + 3), 0);
      if (v50)
      {
        sub_1D99FE1B4(v49, v50);
        goto LABEL_111;
      }

      sub_1D99FE1B4(v49, 0);
      v45 = 0;
      goto LABEL_88;
    }

LABEL_97:
    if (v76 == v75 && v77 == v78)
    {
    }

    else
    {
      v65 = sub_1D9C7E7DC();

      if ((v65 & 1) == 0)
      {
        return;
      }
    }

    v17 = v74 + 1;
    v16 = v70;
  }

  while (v74 + 1 != v70);
}

BOOL sub_1D9A28E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegionSearchResult.ResultItem(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1D9A31B30(v13, v10, type metadata accessor for RegionSearchResult.ResultItem);
        sub_1D9A31B30(v14, v6, type metadata accessor for RegionSearchResult.ResultItem);
        v16 = static RegionSearchResult.ResultItem.== infix(_:_:)(v10, v6);
        sub_1D9A31B98(v6, type metadata accessor for RegionSearchResult.ResultItem);
        sub_1D9A31B98(v10, type metadata accessor for RegionSearchResult.ResultItem);
        if (!v16)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    return 0;
  }

  return v16;
}

uint64_t sub_1D9A2901C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1D9C7E7DC();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D9A290D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 8)
    {
      v5 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v16 = v3[4];
      v17 = v3[3];
      v8 = *i;
      v9 = i[1];
      v10 = i[2];
      v11 = i[3];
      v14 = i[4];
      v15 = v3[5];
      v13 = i[5];
      if ((*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1)) && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      if ((v5 != v8 || v6 != v9) && (sub_1D9C7E7DC() & 1) == 0 || (v7 != v10 || v17 != v11) && (sub_1D9C7E7DC() & 1) == 0 || (v16 != v14 || v15 != v13) && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      v3 += 8;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9A29230(uint64_t a1, uint64_t a2)
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

  v101 = v2;
  v102 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v9 = v5[5];
    v86 = v5[4];
    v87 = v9;
    v10 = v5[5];
    v88[0] = v5[6];
    *(v88 + 9) = *(v5 + 105);
    v11 = v5[1];
    v83[0] = *v5;
    v83[1] = v11;
    v12 = v5[3];
    v14 = *v5;
    v13 = v5[1];
    v84 = v5[2];
    v85 = v12;
    v15 = *v6;
    v16 = v6[1];
    v17 = v6[3];
    v91 = v6[2];
    v92 = v17;
    v18 = v6[1];
    v19 = v6[2];
    v20 = *v6;
    v89 = v15;
    v90 = v18;
    *(v95 + 9) = *(v6 + 105);
    v21 = v6[5];
    v95[0] = v6[6];
    v22 = v6[3];
    v23 = v6[5];
    v93 = v6[4];
    v94 = v23;
    v24 = v5[3];
    v96[2] = v5[2];
    v96[3] = v24;
    v25 = v5[1];
    v96[0] = *v5;
    v96[1] = v25;
    *(v97 + 9) = *(v5 + 105);
    v26 = v5[6];
    v27 = v5[4];
    v96[5] = v5[5];
    v97[0] = v26;
    v96[4] = v27;
    v97[4] = v19;
    v97[5] = v22;
    v97[2] = v20;
    v97[3] = v16;
    *(v98 + 9) = *(v6 + 105);
    v28 = v6[6];
    v97[7] = v21;
    v98[0] = v28;
    v97[6] = v93;
    v99[2] = v84;
    v99[3] = v8;
    v99[0] = v14;
    v99[1] = v13;
    v29 = v5[6];
    *(v100 + 9) = *(v5 + 105);
    v99[5] = v10;
    v100[0] = v29;
    v99[4] = v86;
    v30 = sub_1D9A30414(v99);
    if (v30)
    {
      if (v30 == 1)
      {
        faiss::NormalizationTransform::~NormalizationTransform(v99);
        v33 = *v31;
        v32 = v31[1];
        v34 = v31[2];
        v35 = v31[3];
        v36 = v31[4];
        v37 = v31[5];
        v38 = v31[6];
        v70 = v31[7];
        v80 = v93;
        v81 = v94;
        v82[0] = v95[0];
        *(v82 + 9) = *(v95 + 9);
        v78 = v91;
        v79 = v92;
        v76 = v89;
        v77 = v90;
        if (sub_1D9A30414(&v76) != 1 || ((v66 = v38, v67 = i, faiss::NormalizationTransform::~NormalizationTransform(&v76), v41 = v39[2], v40 = v39[3], v68 = v39[5], v69 = v39[4], v64 = v39[7], v65 = v39[6], v33 != *v39) || v32 != v39[1]) && (sub_1D9C7E7DC() & 1) == 0 || (v34 != v41 || v35 != v40) && (sub_1D9C7E7DC() & 1) == 0 || (v36 != v69 || v37 != v68) && (sub_1D9C7E7DC() & 1) == 0)
        {
LABEL_37:
          sub_1D9A31BF8(&v89, v75);
          sub_1D9A31BF8(v83, v75);
          sub_1D99A6AE0(v96, &qword_1ECB51E80);
          return 0;
        }

        if (v66 == v65 && v70 == v64)
        {
          sub_1D9A31BF8(&v89, v75);
          sub_1D9A31BF8(v83, v75);
          sub_1D99A6AE0(v96, &qword_1ECB51E80);
          i = v67;
        }

        else
        {
          v62 = sub_1D9C7E7DC();
          sub_1D9A31BF8(&v89, v75);
          sub_1D9A31BF8(v83, v75);
          sub_1D99A6AE0(v96, &qword_1ECB51E80);
          i = v67;
          if ((v62 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        faiss::NormalizationTransform::~NormalizationTransform(v99);
        v52 = v51;
        v80 = v93;
        v81 = v94;
        v82[0] = v95[0];
        *(v82 + 9) = *(v95 + 9);
        v76 = v89;
        v77 = v90;
        v78 = v91;
        v79 = v92;
        if (sub_1D9A30414(&v76) != 2)
        {
          goto LABEL_37;
        }

        faiss::NormalizationTransform::~NormalizationTransform(&v76);
        v53 = *(v52 + 80);
        v73[4] = *(v52 + 64);
        v73[5] = v53;
        v73[6] = *(v52 + 96);
        v74 = *(v52 + 112);
        v54 = *(v52 + 16);
        v73[0] = *v52;
        v73[1] = v54;
        v55 = *(v52 + 48);
        v73[2] = *(v52 + 32);
        v73[3] = v55;
        v57 = *(v56 + 80);
        v71[4] = *(v56 + 64);
        v71[5] = v57;
        v71[6] = *(v56 + 96);
        v72 = *(v56 + 112);
        v58 = *(v56 + 16);
        v71[0] = *v56;
        v71[1] = v58;
        v59 = *(v56 + 48);
        v71[2] = *(v56 + 32);
        v71[3] = v59;
        v60 = _s12VisualLookUp6EntityO4BookV2eeoiySbAE_AEtFZ_0(v73, v71);
        sub_1D9A31BF8(&v89, v75);
        sub_1D9A31BF8(v83, v75);
        sub_1D99A6AE0(v96, &qword_1ECB51E80);
        if (!v60)
        {
          return 0;
        }
      }
    }

    else
    {
      v42 = i;
      faiss::NormalizationTransform::~NormalizationTransform(v99);
      v44 = *v43;
      v45 = v43[1];
      v46 = v43[2];
      v47 = v43[3];
      v80 = v93;
      v81 = v94;
      v82[0] = v95[0];
      *(v82 + 9) = *(v95 + 9);
      v76 = v89;
      v77 = v90;
      v78 = v91;
      v79 = v92;
      if (sub_1D9A30414(&v76))
      {
        goto LABEL_37;
      }

      faiss::NormalizationTransform::~NormalizationTransform(&v76);
      v50 = v48[2];
      v49 = v48[3];
      if ((v44 != *v48 || v45 != v48[1]) && (sub_1D9C7E7DC() & 1) == 0)
      {
        goto LABEL_37;
      }

      if (v46 == v50 && v47 == v49)
      {
        sub_1D9A31BF8(&v89, v75);
        sub_1D9A31BF8(v83, v75);
        sub_1D99A6AE0(v96, &qword_1ECB51E80);
        i = v42;
      }

      else
      {
        v61 = sub_1D9C7E7DC();
        sub_1D9A31BF8(&v89, v75);
        sub_1D9A31BF8(v83, v75);
        sub_1D99A6AE0(v96, &qword_1ECB51E80);
        i = v42;
        if ((v61 & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (!i)
    {
      break;
    }

    v5 += 8;
    v6 += 8;
  }

  return 1;
}

uint64_t sub_1D9A29790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v48 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v51 = v6;
  v52 = a2 + v13;
  v53 = *(v8 + 72);
  v54 = a1 + v13;
  v49 = v11;
  v50 = (&v48 - v9);
  while (1)
  {
    v14 = v53 * v12;
    result = sub_1D9A31B30(v54 + v53 * v12, v10, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v12 == v11)
    {
      break;
    }

    result = sub_1D9A31B30(v52 + v14, v6, type metadata accessor for VisualUnderstanding.ImageRegion);
    width = v10[1].size.width;
    v17 = v6[1].size.width;
    v18 = *(*&width + 16);
    if (v18 != *(*&v17 + 16))
    {
LABEL_24:
      sub_1D9A31B98(v6, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9A31B98(v10, type metadata accessor for VisualUnderstanding.ImageRegion);
      return 0;
    }

    v55 = v12;
    if (v18)
    {
      v19 = *&width == *&v17;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      if (!*(*&width + 16))
      {
LABEL_21:
        __break(1u);
        return 1;
      }

      v21 = 0;
      v22 = (*&width + 32);
      v23 = (*&v17 + 32);
      v24 = v18 - 1;
      while (1)
      {
        v25 = v22[1];
        v75[0] = *v22;
        v75[1] = v25;
        v26 = v22[2];
        v27 = v22[3];
        v28 = v22[5];
        v75[4] = v22[4];
        v75[5] = v28;
        v75[2] = v26;
        v75[3] = v27;
        v29 = v22[6];
        v30 = v22[7];
        v31 = v22[8];
        *(v76 + 13) = *(v22 + 141);
        v75[7] = v30;
        v76[0] = v31;
        v75[6] = v29;
        v32 = v22[7];
        v72 = v22[6];
        v73 = v32;
        v74[0] = v22[8];
        *(v74 + 13) = *(v22 + 141);
        v33 = v22[3];
        v68 = v22[2];
        v69 = v33;
        v34 = v22[5];
        v70 = v22[4];
        v71 = v34;
        v35 = v22[1];
        v66 = *v22;
        v67 = v35;
        if (v21 >= *(*&v17 + 16))
        {
          break;
        }

        v36 = v23[1];
        v77[0] = *v23;
        v77[1] = v36;
        v37 = v23[2];
        v38 = v23[3];
        v39 = v23[5];
        v77[4] = v23[4];
        v77[5] = v39;
        v77[2] = v37;
        v77[3] = v38;
        v40 = v23[6];
        v41 = v23[7];
        v42 = v23[8];
        *(v78 + 13) = *(v23 + 141);
        v77[7] = v41;
        v78[0] = v42;
        v77[6] = v40;
        v43 = v23[7];
        v63 = v23[6];
        v64 = v43;
        v65[0] = v23[8];
        *(v65 + 13) = *(v23 + 141);
        v44 = v23[3];
        v59 = v23[2];
        v60 = v44;
        v45 = v23[5];
        v61 = v23[4];
        v62 = v45;
        v46 = v23[1];
        v57 = *v23;
        v58 = v46;
        sub_1D99AE054(v75, v56);
        sub_1D99AE054(v77, v56);
        v47 = _s12VisualLookUp0A13UnderstandingV10DomainInfoV2eeoiySbAE_AEtFZ_0(&v66, &v57);
        v79[6] = v63;
        v79[7] = v64;
        v80[0] = v65[0];
        *(v80 + 13) = *(v65 + 13);
        v79[2] = v59;
        v79[3] = v60;
        v79[4] = v61;
        v79[5] = v62;
        v79[0] = v57;
        v79[1] = v58;
        sub_1D99AE0B0(v79);
        v81[6] = v72;
        v81[7] = v73;
        v82[0] = v74[0];
        *(v82 + 13) = *(v74 + 13);
        v81[2] = v68;
        v81[3] = v69;
        v81[4] = v70;
        v81[5] = v71;
        v81[0] = v66;
        v81[1] = v67;
        result = sub_1D99AE0B0(v81);
        if ((v47 & 1) == 0)
        {
          v10 = v50;
          v6 = v51;
          goto LABEL_24;
        }

        if (v24 == v21)
        {
          goto LABEL_12;
        }

        v23 += 10;
        v22 += 10;
        if (++v21 >= *(*&width + 16))
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    v10 = v50;
    v6 = v51;
    v20 = CGRectEqualToRect(*v50, *v51);
    sub_1D9A31B98(v6, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9A31B98(v10, type metadata accessor for VisualUnderstanding.ImageRegion);
    result = v20;
    if (v20)
    {
      v12 = v55 + 1;
      v11 = v49;
      if (v55 + 1 != v49)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A29B98(uint64_t a1, uint64_t a2)
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
        v11 = sub_1D9C7E7DC();
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

uint64_t sub_1D9A29C6C(uint64_t a1, uint64_t a2)
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

  v65 = v2;
  v66 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[5];
    v50 = v5[6];
    v51 = v8;
    v10 = v5[7];
    v52[0] = v5[8];
    *(v52 + 13) = *(v5 + 141);
    v11 = v5[3];
    v12 = v5[1];
    v46 = v5[2];
    v47 = v11;
    v13 = v5[3];
    v14 = v5[5];
    v48 = v5[4];
    v49 = v14;
    v15 = v5[1];
    v45[0] = *v5;
    v45[1] = v15;
    v42 = v50;
    v43 = v10;
    v44[0] = v5[8];
    *(v44 + 13) = *(v5 + 141);
    v38 = v46;
    v39 = v13;
    v40 = v48;
    v41 = v9;
    v36 = v45[0];
    v37 = v12;
    v16 = v6[7];
    v17 = v6[5];
    v58 = v6[6];
    v59 = v16;
    v18 = v6[7];
    v60[0] = v6[8];
    *(v60 + 13) = *(v6 + 141);
    v19 = v6[3];
    v20 = v6[1];
    v54 = v6[2];
    v55 = v19;
    v21 = v6[3];
    v22 = v6[5];
    v56 = v6[4];
    v57 = v22;
    v23 = v6[1];
    v53[0] = *v6;
    v53[1] = v23;
    v33 = v58;
    v34 = v18;
    v35[0] = v6[8];
    *(v35 + 13) = *(v6 + 141);
    v29 = v54;
    v30 = v21;
    v31 = v56;
    v32 = v17;
    v27 = v53[0];
    v28 = v20;
    sub_1D99AE054(v45, v26);
    sub_1D99AE054(v53, v26);
    v24 = _s12VisualLookUp0A13UnderstandingV10DomainInfoV2eeoiySbAE_AEtFZ_0(&v36, &v27);
    v61[6] = v33;
    v61[7] = v34;
    v62[0] = v35[0];
    *(v62 + 13) = *(v35 + 13);
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_1D99AE0B0(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64[0] = v44[0];
    *(v64 + 13) = *(v44 + 13);
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_1D99AE0B0(v63);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

uint64_t sub_1D9A29E74(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 == a2[2])
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a2 + 4;
    v22 = a1 + 4;
    v4 = a1[4];
    v5 = a2[4];
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = a1 + 6;
      v8 = a1 + 5;
      v9 = a2 + 6;
      v10 = a2 + 5;
      for (i = 1; ; ++i)
      {
        v12 = *v8;
        v13 = *v7;
        v14 = *v9;
        v15 = *v10;

        if (v6)
        {
          if (v4 != v5)
          {
            break;
          }
        }

LABEL_11:
        if (v12 == v15 && v13 == v14)
        {
        }

        else
        {
          v18 = sub_1D9C7E7DC();

          if ((v18 & 1) == 0)
          {
            return 0;
          }
        }

        if (i == v2)
        {
          return 1;
        }

        v19 = &v22[3 * i];
        v4 = *v19;
        v20 = &v3[3 * i];
        v5 = *v20;
        v6 = *(*v19 + 16);
        if (v6 != *(*v20 + 16))
        {
          return 0;
        }

        v7 = v19 + 2;
        v8 = v19 + 1;
        v9 = v20 + 2;
        v10 = v20 + 1;
      }

      v16 = 32;
      while (*(v4 + v16) == *(v5 + v16))
      {
        v16 += 4;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D9A2A058(uint64_t result, uint64_t a2)
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
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    result = *v6;
    v7 = v6[1];
    v8 = v6[2];
    v9 = (v5 + 24 * v3);
    v10 = v9[2];
    if (result != *v9 || v7 != v9[1])
    {
      result = sub_1D9C7E7DC();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(v8 + 16);
    if (v12 != *(v10 + 16))
    {
      return 0;
    }

    if (v12)
    {
      v13 = v8 == v10;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = (v10 + 48);
      v15 = (v8 + 48);
      while (v12)
      {
        result = *(v15 - 2);
        v16 = *v15;
        v17 = *v14;
        if (result == *(v14 - 2) && *(v15 - 1) == *(v14 - 1))
        {
          if (v16 != v17)
          {
            return 0;
          }
        }

        else
        {
          v19 = sub_1D9C7E7DC();
          result = 0;
          if ((v19 & 1) == 0 || v16 != v17)
          {
            return result;
          }
        }

        v14 += 6;
        v15 += 6;
        if (!--v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
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

BOOL sub_1D9A2A1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 48);
      v7 = *(a1 + v5 + 52);
      v8 = *(a1 + v5 + 56);
      v9 = *(a1 + v5 + 64);
      v10 = *(a1 + v5 + 72);
      v11 = *(a1 + v5 + 80);
      v12 = *(a2 + v5 + 48);
      v13 = *(a2 + v5 + 52);
      v14 = *(a2 + v5 + 56);
      v15 = *(a2 + v5 + 64);
      v16 = *(a2 + v5 + 72);
      v17 = *(a2 + v5 + 80);
      if (*(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40))
      {
        if (v6 != v12 || v7 != v13)
        {
          return 0;
        }
      }

      else
      {
        v24 = *(a2 + v5 + 72);
        v25 = *(a2 + v5 + 80);
        v19 = sub_1D9C7E7DC();
        result = 0;
        if ((v19 & 1) == 0)
        {
          return result;
        }

        v21 = v6 == v12 && v7 == v13;
        v16 = v24;
        v17 = v25;
        if (!v21)
        {
          return result;
        }
      }

      v26.origin.x = v8;
      v26.origin.y = v9;
      v26.size.width = v10;
      v26.size.height = v11;
      v22 = v14;
      v23 = v15;
      result = CGRectEqualToRect(v26, *(&v16 - 2));
      if (!result)
      {
        return result;
      }

      v5 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_1D9A2A2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 48);
      v7 = *(a1 + v5 + 56);
      v8 = *(a1 + v5 + 64);
      v9 = *(a1 + v5 + 72);
      v10 = *(a1 + v5 + 80);
      v11 = *(a2 + v5 + 48);
      v12 = *(a2 + v5 + 56);
      v13 = *(a2 + v5 + 64);
      v14 = *(a2 + v5 + 72);
      v15 = *(a2 + v5 + 80);
      if (*(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40))
      {
        if (v6 != v11)
        {
          return 0;
        }
      }

      else
      {
        v20 = *(a2 + v5 + 72);
        v21 = *(a2 + v5 + 80);
        v16 = sub_1D9C7E7DC();
        result = 0;
        if ((v16 & 1) == 0)
        {
          return result;
        }

        v14 = v20;
        v15 = v21;
        if (v6 != v11)
        {
          return result;
        }
      }

      v22.origin.x = v7;
      v22.origin.y = v8;
      v22.size.width = v9;
      v22.size.height = v10;
      v18 = v12;
      v19 = v13;
      result = CGRectEqualToRect(v22, *(&v14 - 2));
      if (!result)
      {
        return result;
      }

      v5 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D9A2A3F0(uint64_t a1, uint64_t a2)
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

  v24 = v2;
  v25 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 16);
    *v20 = *v5;
    *&v20[16] = v8;
    v9 = *(v5 + 48);
    v21.origin = *(v5 + 32);
    v21.size = v9;
    v10 = *(v6 + 16);
    *v22 = *v6;
    *&v22[16] = v10;
    v11 = *(v6 + 48);
    v23.origin = *(v6 + 32);
    v23.size = v11;
    v12 = sub_1D9C7DC7C();
    v14 = v13;
    if (v12 == sub_1D9C7DC7C() && v14 == v15)
    {
      sub_1D99DEC94(v20, v19);
      sub_1D99DEC94(v22, v19);
    }

    else
    {
      v16 = sub_1D9C7E7DC();
      sub_1D99DEC94(v20, v19);
      sub_1D99DEC94(v22, v19);

      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*&v20[8] != *&v22[8] && (sub_1D9C7E7DC() & 1) == 0 || *&v20[24] != *&v22[24])
    {
LABEL_17:
      sub_1D99DECF0(v22);
      sub_1D99DECF0(v20);
      return 0;
    }

    v17 = CGRectEqualToRect(v21, v23);
    sub_1D99DECF0(v22);
    sub_1D99DECF0(v20);
    if (!v17)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 64;
    v5 += 64;
  }

  return 1;
}

uint64_t sub_1D9A2A5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E40);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v40 - v10;
  v45 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_36;
  }

  if (!v17 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v47 = &v40 - v16;
  v43 = v13;
  v44 = v4;
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = (v5 + 48);
  v22 = *(v15 + 72);
  v40 = v9;
  v41 = v22;
  v23 = v45;
  while (1)
  {
    v24 = v47;
    sub_1D9A31B30(v19, v47, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
    sub_1D9A31B30(v20, v13, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
    v25 = *(v46 + 48);
    sub_1D99AB100(v24, v11, &qword_1ECB51100);
    sub_1D99AB100(v13, &v11[v25], &qword_1ECB51100);
    v26 = *v21;
    v27 = v44;
    if ((*v21)(v11, 1, v44) != 1)
    {
      break;
    }

    if (v26(&v11[v25], 1, v27) != 1)
    {
      goto LABEL_34;
    }

    sub_1D99A6AE0(v11, &qword_1ECB51100);
    v13 = v43;
    v28 = v47;
LABEL_10:
    v34 = *(v23 + 20);
    v35 = *(v28 + v34);
    v36 = &v13[v34];
    v37 = *&v13[v34];
    if (v36[8] == 1)
    {
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          if (v35 != 3)
          {
            goto LABEL_35;
          }
        }

        else if (v37 == 4)
        {
          if (v35 != 4)
          {
            goto LABEL_35;
          }
        }

        else if (v35 != 5)
        {
          goto LABEL_35;
        }
      }

      else if (v37)
      {
        if (v37 == 1)
        {
          if (v35 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (v35 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v35)
      {
        goto LABEL_35;
      }
    }

    else if (v35 != v37)
    {
      goto LABEL_35;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v38 = sub_1D9C7DC2C();
    sub_1D9A31B98(v13, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
    sub_1D9A31B98(v28, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
    if (v38)
    {
      v20 += v41;
      v19 += v41;
      if (--v17)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  v29 = v40;
  sub_1D99AB100(v11, v40, &qword_1ECB51100);
  if (v26(&v11[v25], 1, v27) != 1)
  {
    v30 = v21;
    v31 = v42;
    sub_1D9A31AC8(&v11[v25], v42, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v32 = sub_1D9BBDC98(v29, v31);
    v33 = v31;
    v21 = v30;
    sub_1D9A31B98(v33, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9A31B98(v29, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D99A6AE0(v11, &qword_1ECB51100);
    v23 = v45;
    v13 = v43;
    v28 = v47;
    if ((v32 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  sub_1D9A31B98(v29, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
LABEL_34:
  sub_1D99A6AE0(v11, &qword_1ECB51E40);
  v13 = v43;
  v28 = v47;
LABEL_35:
  sub_1D9A31B98(v13, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
  sub_1D9A31B98(v28, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
LABEL_36:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1D9A2AB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9A2ABEC(uint64_t a1)
{
  v2 = sub_1D9A2AE08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A2AC28(uint64_t a1)
{
  v2 = sub_1D9A2AE08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A2AE08();

  sub_1D9C7E96C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C20);
  sub_1D9A2F11C(&qword_1ECB51C28, sub_1D9A2AE5C);
  sub_1D9C7E74C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9A2AE08()
{
  result = qword_1ECB51C18;
  if (!qword_1ECB51C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51C18);
  }

  return result;
}

unint64_t sub_1D9A2AE5C()
{
  result = qword_1ECB51C30;
  if (!qword_1ECB51C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51C30);
  }

  return result;
}

uint64_t EntityResult.hashValue.getter()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A2EDFC(v3, v1);
  return sub_1D9C7E93C();
}

uint64_t EntityResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A2AE08();
  sub_1D9C7E95C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C20);
    sub_1D9A2F11C(&qword_1ECB51C40, sub_1D9A2F194);
    sub_1D9C7E65C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9A2B0EC()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A2EDFC(v3, v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9A2B13C()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A2EDFC(v3, v1);
  return sub_1D9C7E93C();
}

uint64_t Entity.Generic.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Entity.Generic.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Entity.Generic.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9C7E7DC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9C7E7DC();
    }
  }

  return result;
}

uint64_t sub_1D9A2B284()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D9A2B2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9C7E7DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9C7E7DC();

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

uint64_t sub_1D9A2B380(uint64_t a1)
{
  v2 = sub_1D9A2F1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A2B3BC(uint64_t a1)
{
  v2 = sub_1D9A2F1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Entity.Generic.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A2F1E8();
  sub_1D9C7E96C();
  v12 = 0;
  v8 = v10[3];
  sub_1D9C7E6EC();
  if (!v8)
  {
    v11 = 1;
    sub_1D9C7E6EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Entity.Generic.hash(into:)()
{
  sub_1D9C7DD6C();

  return sub_1D9C7DD6C();
}

uint64_t Entity.Generic.hashValue.getter()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t Entity.Generic.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A2F1E8();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = 0;
  v9 = sub_1D9C7E5FC();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D9C7E5FC();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t Entity.Album.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Entity.Album.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Entity.Album.adamId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Entity.Album.artistName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D9A2B938()
{
  v1 = 0x656C746974;
  v2 = 0x64496D616461;
  if (*v0 != 2)
  {
    v2 = 0x614E747369747261;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_1D9A2B9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9A31578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9A2B9CC(uint64_t a1)
{
  v2 = sub_1D9A2FE60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A2BA08(uint64_t a1)
{
  v2 = sub_1D9A2FE60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Entity.Album.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A2FE60();
  sub_1D9C7E96C();
  v16 = 0;
  v10 = v12[7];
  sub_1D9C7E6EC();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1D9C7E6EC();
  v14 = 2;
  sub_1D9C7E6EC();
  v13 = 3;
  sub_1D9C7E6EC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Entity.Album.hash(into:)()
{
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();

  return sub_1D9C7DD6C();
}

uint64_t Entity.Album.hashValue.getter()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t Entity.Album.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A2FE60();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1D9C7E5FC();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1D9C7E5FC();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1D9C7E5FC();
  v25 = v13;
  v33 = 3;
  v14 = sub_1D9C7E5FC();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1D9A2FEB4(&v28, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1D9A2FEEC(v32);
}

uint64_t sub_1D9A2C088()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9A2C128()
{
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();

  return sub_1D9C7DD6C();
}

uint64_t sub_1D9A2C1B0()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t Entity.Book.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Entity.Book.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Entity.Book.adamId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Entity.Book.seriesTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Entity.Book.author.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Entity.Book.genre.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Entity.Book.url.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1D9A2C3A8()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 7107189;
  if (v1 != 6)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x726F68747561;
  if (v1 != 4)
  {
    v4 = 0x65726E6567;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64496D616461;
  if (v1 != 2)
  {
    v5 = 0x6954736569726573;
  }

  if (*v0)
  {
    v2 = 25705;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9A2C494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9A316D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9A2C4C8(uint64_t a1)
{
  v2 = sub_1D9A2FF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A2C504(uint64_t a1)
{
  v2 = sub_1D9A2FF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Entity.Book.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = v1[2];
  v19[10] = v1[3];
  v19[11] = v7;
  v8 = v1[4];
  v19[8] = v1[5];
  v19[9] = v8;
  v9 = v1[6];
  v19[6] = v1[7];
  v19[7] = v9;
  v10 = v1[9];
  v19[3] = v1[8];
  v19[4] = v10;
  v11 = v1[11];
  v19[1] = v1[10];
  v19[2] = v11;
  v12 = v1[13];
  v19[5] = v1[12];
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D9A2FF1C();
  sub_1D9C7E96C();
  v28 = 0;
  v17 = v20;
  sub_1D9C7E6EC();
  if (!v17)
  {
    v20 = v12;
    v27 = 1;
    sub_1D9C7E6EC();
    v26 = 2;
    sub_1D9C7E6EC();
    v25 = 3;
    sub_1D9C7E6EC();
    v24 = 4;
    sub_1D9C7E6EC();
    v23 = 5;
    sub_1D9C7E6EC();
    v22 = 6;
    sub_1D9C7E6EC();
    v21 = 7;
    sub_1D9C7E70C();
  }

  return (*(v4 + 8))(v6, v16);
}

uint64_t Entity.Book.hash(into:)()
{
  v1 = *(v0 + 112);
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1DA73EB00](*&v2);
}

uint64_t Entity.Book.hashValue.getter()
{
  sub_1D9C7E8DC();
  Entity.Book.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t Entity.Book.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A2FF1C();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v57[0]) = 0;
  v9 = sub_1D9C7E5FC();
  v48 = v10;
  LOBYTE(v57[0]) = 1;
  v11 = sub_1D9C7E5FC();
  v47 = v12;
  v45 = v11;
  LOBYTE(v57[0]) = 2;
  v44 = sub_1D9C7E5FC();
  v46 = v13;
  LOBYTE(v57[0]) = 3;
  v42 = sub_1D9C7E5FC();
  v15 = v14;
  LOBYTE(v57[0]) = 4;
  v16 = sub_1D9C7E5FC();
  v43 = v17;
  v38 = v16;
  LOBYTE(v57[0]) = 5;
  v41 = 0;
  v37 = sub_1D9C7E5FC();
  v40 = v18;
  LOBYTE(v57[0]) = 6;
  v19 = sub_1D9C7E5FC();
  v39 = v20;
  v36 = v19;
  v58 = 7;
  sub_1D9C7E61C();
  v22 = v21;
  (*(v6 + 8))(v8, v5);
  *&v49 = v9;
  v23 = v48;
  *(&v49 + 1) = v48;
  *&v50 = v45;
  v24 = v47;
  *(&v50 + 1) = v47;
  *&v51 = v44;
  v25 = v46;
  *(&v51 + 1) = v46;
  *&v52 = v42;
  v35 = v15;
  *(&v52 + 1) = v15;
  *&v53 = v38;
  v26 = v43;
  *(&v53 + 1) = v43;
  *&v54 = v37;
  *(&v54 + 1) = v40;
  v27 = v36;
  *&v55 = v36;
  *(&v55 + 1) = v39;
  v56 = v22;
  v28 = v49;
  v29 = v50;
  v30 = v52;
  *(a2 + 32) = v51;
  *(a2 + 48) = v30;
  *a2 = v28;
  *(a2 + 16) = v29;
  v31 = v53;
  v32 = v54;
  v33 = v55;
  *(a2 + 112) = v56;
  *(a2 + 80) = v32;
  *(a2 + 96) = v33;
  *(a2 + 64) = v31;
  sub_1D9A2FF70(&v49, v57);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v57[0] = v9;
  v57[1] = v23;
  v57[2] = v45;
  v57[3] = v24;
  v57[4] = v44;
  v57[5] = v25;
  v57[6] = v42;
  v57[7] = v35;
  v57[8] = v38;
  v57[9] = v26;
  v57[10] = v37;
  v57[11] = v40;
  v57[12] = v27;
  v57[13] = v39;
  v57[14] = v22;
  return sub_1D9A2FFA8(v57);
}

uint64_t sub_1D9A2CF5C()
{
  sub_1D9C7E8DC();
  Entity.Book.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9A2CFA0()
{
  sub_1D9C7E8DC();
  Entity.Book.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9A2CFEC(uint64_t a1)
{
  v2 = sub_1D9A304C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A2D028(uint64_t a1)
{
  v2 = sub_1D9A304C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9A2D064(uint64_t a1)
{
  v2 = sub_1D9A3041C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A2D0A0(uint64_t a1)
{
  v2 = sub_1D9A3041C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9A2D0DC()
{
  v1 = 0x6D75626C61;
  if (*v0 != 1)
  {
    v1 = 1802465122;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636972656E6567;
  }
}

uint64_t sub_1D9A2D12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9A3195C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9A2D154(uint64_t a1)
{
  v2 = sub_1D9A303C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A2D190(uint64_t a1)
{
  v2 = sub_1D9A303C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9A2D1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9A2D24C(uint64_t a1)
{
  v2 = sub_1D9A3056C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A2D288(uint64_t a1)
{
  v2 = sub_1D9A3056C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Entity.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C98);
  v46 = *(v4 - 8);
  *&v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51CA0);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51CA8);
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51CB0);
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A303C0();
  sub_1D9C7E96C();
  v15 = v2[5];
  v58[4] = v2[4];
  v58[5] = v15;
  v59[0] = v2[6];
  *(v59 + 9) = *(v2 + 105);
  v16 = v2[1];
  v58[0] = *v2;
  v58[1] = v16;
  v17 = v2[3];
  v58[2] = v2[2];
  v58[3] = v17;
  v18 = sub_1D9A30414(v58);
  if (v18)
  {
    if (v18 == 1)
    {
      faiss::NormalizationTransform::~NormalizationTransform(v58);
      v20 = v19;
      LOBYTE(v50) = 1;
      sub_1D9A304C4();
      v21 = v49;
      sub_1D9C7E6AC();
      v22 = *v20;
      v23 = v20[1];
      v24 = v20[3];
      v52 = v20[2];
      v53 = v24;
      v50 = v22;
      v51 = v23;
      sub_1D9A30518();
      v25 = v44;
      sub_1D9C7E74C();
      (*(v43 + 8))(v8, v25);
    }

    else
    {
      faiss::NormalizationTransform::~NormalizationTransform(v58);
      v32 = v31;
      LOBYTE(v50) = 2;
      sub_1D9A3041C();
      v33 = v45;
      v21 = v49;
      sub_1D9C7E6AC();
      v34 = *v32;
      v35 = v32[1];
      v36 = v32[3];
      v52 = v32[2];
      v53 = v36;
      v50 = v34;
      v51 = v35;
      v37 = v32[4];
      v38 = v32[5];
      v39 = v32[6];
      v57 = *(v32 + 14);
      v55 = v38;
      v56 = v39;
      v54 = v37;
      sub_1D9A30470();
      v40 = v47;
      sub_1D9C7E74C();
      (*(v46 + 8))(v33, v40);
    }

    return (*(v48 + 8))(v14, v21);
  }

  else
  {
    faiss::NormalizationTransform::~NormalizationTransform(v58);
    v47 = *v26;
    v27 = *(v26 + 2);
    v28 = *(v26 + 3);
    LOBYTE(v50) = 0;
    sub_1D9A3056C();
    v29 = v49;
    sub_1D9C7E6AC();
    v50 = v47;
    *&v51 = v27;
    *(&v51 + 1) = v28;
    sub_1D9A305C0();
    sub_1D9C7E74C();
    (*(v42 + 8))(v11, v9);
    return (*(v48 + 8))(v14, v29);
  }
}

uint64_t Entity.hash(into:)()
{
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v7[0] = v0[6];
  *(v7 + 9) = *(v0 + 105);
  v2 = v0[1];
  v6[0] = *v0;
  v6[1] = v2;
  v3 = v0[3];
  v6[2] = v0[2];
  v6[3] = v3;
  v4 = sub_1D9A30414(v6);
  if (v4)
  {
    if (v4 == 1)
    {
      faiss::NormalizationTransform::~NormalizationTransform(v6);
      MEMORY[0x1DA73EAC0](1);
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      return sub_1D9C7DD6C();
    }

    else
    {
      faiss::NormalizationTransform::~NormalizationTransform(v6);
      MEMORY[0x1DA73EAC0](2);
      return Entity.Book.hash(into:)();
    }
  }

  else
  {
    faiss::NormalizationTransform::~NormalizationTransform(v6);
    MEMORY[0x1DA73EAC0](0);
    sub_1D9C7DD6C();
    return sub_1D9C7DD6C();
  }
}

uint64_t Entity.hashValue.getter()
{
  sub_1D9C7E8DC();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v7[0] = v0[6];
  *(v7 + 9) = *(v0 + 105);
  v2 = v0[1];
  v6[0] = *v0;
  v6[1] = v2;
  v3 = v0[3];
  v6[2] = v0[2];
  v6[3] = v3;
  v4 = sub_1D9A30414(v6);
  if (v4)
  {
    if (v4 == 1)
    {
      faiss::NormalizationTransform::~NormalizationTransform(v6);
      MEMORY[0x1DA73EAC0](1);
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
    }

    else
    {
      faiss::NormalizationTransform::~NormalizationTransform(v6);
      MEMORY[0x1DA73EAC0](2);
      Entity.Book.hash(into:)();
    }
  }

  else
  {
    faiss::NormalizationTransform::~NormalizationTransform(v6);
    MEMORY[0x1DA73EAC0](0);
    sub_1D9C7DD6C();
    sub_1D9C7DD6C();
  }

  return sub_1D9C7E93C();
}

uint64_t Entity.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51CF0);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51CF8);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51D00);
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51D08);
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D9A303C0();
  v14 = v46;
  sub_1D9C7E95C();
  if (!v14)
  {
    v15 = v7;
    v16 = v44;
    v46 = v10;
    v17 = sub_1D9C7E69C();
    v18 = *(v17 + 16);
    if (!v18 || ((v19 = *(v17 + 32), v18 == 1) ? (v20 = v19 == 3) : (v20 = 1), v20))
    {
      v21 = sub_1D9C7E46C();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51D10);
      *v23 = &type metadata for Entity;
      v24 = v46;
      sub_1D9C7E59C();
      sub_1D9C7E45C();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v45 + 8))(v12, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v17 + 32))
      {
        v38 = v17;
        if (v19 == 1)
        {
          LOBYTE(v47) = 1;
          sub_1D9A304C4();
          v26 = v6;
          v27 = v46;
          sub_1D9C7E58C();
          v28 = v43;
          v29 = v45;
          sub_1D9A30674();
          v32 = v41;
          sub_1D9C7E65C();
          (*(v40 + 8))(v26, v32);
          (*(v29 + 8))(v12, v27);
          swift_unknownObjectRelease();
          v47 = v54;
          v48 = v55;
          v49 = v56;
          v50 = v57;
          sub_1D9A306C8(&v47);
        }

        else
        {
          LOBYTE(v47) = 2;
          sub_1D9A3041C();
          v30 = v46;
          sub_1D9C7E58C();
          v28 = v43;
          v31 = v45;
          sub_1D9A30614();
          v33 = v39;
          sub_1D9C7E65C();
          (*(v42 + 8))(v16, v33);
          (*(v31 + 8))(v12, v30);
          swift_unknownObjectRelease();
          v51 = v58;
          v52 = v59;
          v53[0] = v60;
          *&v53[1] = v61;
          v47 = v54;
          v48 = v55;
          v49 = v56;
          v50 = v57;
          sub_1D9A30668(&v47);
        }

        v66 = v51;
        v67 = v52;
        v68[0] = v53[0];
        *(v68 + 9) = *(v53 + 9);
        v62 = v47;
        v63 = v48;
        v64 = v49;
        v65 = v50;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_1D9A3056C();
        sub_1D9C7E58C();
        sub_1D9A306D4();
        sub_1D9C7E65C();
        (*(v38 + 8))(v9, v15);
        (*(v45 + 8))(v12, v46);
        swift_unknownObjectRelease();
        v47 = v54;
        v48 = v55;
        sub_1D9A30728(&v47);
        v66 = v51;
        v67 = v52;
        v68[0] = v53[0];
        *(v68 + 9) = *(v53 + 9);
        v62 = v47;
        v63 = v48;
        v64 = v49;
        v65 = v50;
        v28 = v43;
      }

      v34 = v67;
      v28[4] = v66;
      v28[5] = v34;
      v28[6] = v68[0];
      *(v28 + 105) = *(v68 + 9);
      v35 = v63;
      *v28 = v62;
      v28[1] = v35;
      v36 = v65;
      v28[2] = v64;
      v28[3] = v36;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v69);
}

uint64_t sub_1D9A2E25C()
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

uint64_t sub_1D9A2E2C8()
{
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v7[0] = v0[6];
  *(v7 + 9) = *(v0 + 105);
  v2 = v0[1];
  v6[0] = *v0;
  v6[1] = v2;
  v3 = v0[3];
  v6[2] = v0[2];
  v6[3] = v3;
  v4 = sub_1D9A30414(v6);
  if (v4)
  {
    if (v4 == 1)
    {
      faiss::NormalizationTransform::~NormalizationTransform(v6);
      MEMORY[0x1DA73EAC0](1);
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      return sub_1D9C7DD6C();
    }

    else
    {
      faiss::NormalizationTransform::~NormalizationTransform(v6);
      MEMORY[0x1DA73EAC0](2);
      return Entity.Book.hash(into:)();
    }
  }

  else
  {
    faiss::NormalizationTransform::~NormalizationTransform(v6);
    MEMORY[0x1DA73EAC0](0);
    sub_1D9C7DD6C();
    return sub_1D9C7DD6C();
  }
}

uint64_t sub_1D9A2E440()
{
  sub_1D9C7E8DC();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v7[0] = v0[6];
  *(v7 + 9) = *(v0 + 105);
  v2 = v0[1];
  v6[0] = *v0;
  v6[1] = v2;
  v3 = v0[3];
  v6[2] = v0[2];
  v6[3] = v3;
  v4 = sub_1D9A30414(v6);
  if (v4)
  {
    if (v4 == 1)
    {
      faiss::NormalizationTransform::~NormalizationTransform(v6);
      MEMORY[0x1DA73EAC0](1);
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
    }

    else
    {
      faiss::NormalizationTransform::~NormalizationTransform(v6);
      MEMORY[0x1DA73EAC0](2);
      Entity.Book.hash(into:)();
    }
  }

  else
  {
    faiss::NormalizationTransform::~NormalizationTransform(v6);
    MEMORY[0x1DA73EAC0](0);
    sub_1D9C7DD6C();
    sub_1D9C7DD6C();
  }

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A2E5C8(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v4);
  if (v4)
  {
    v6 = a2 + 80;
    do
    {
      v7 = *(v6 - 48);
      v8 = *(v6 - 40);
      v9 = *(v6 - 32);
      v10 = *(v6 - 24);
      v11 = *(v6 - 16);
      v6 += 56;

      v16.origin.x = v7;
      v16.origin.y = v8;
      v16.size.width = v9;
      v16.size.height = v10;
      MinX = CGRectGetMinX(v16);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      v17.origin.x = v7;
      v17.origin.y = v8;
      v17.size.width = v9;
      v17.size.height = v10;
      MaxX = CGRectGetMaxX(v17);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      v18.origin.x = v7;
      v18.origin.y = v8;
      v18.size.width = v9;
      v18.size.height = v10;
      MinY = CGRectGetMinY(v18);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      v19.origin.x = v7;
      v19.origin.y = v8;
      v19.size.width = v9;
      v19.size.height = v10;
      MaxY = CGRectGetMaxY(v19);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);
      sub_1D9A2E710(a1, v11);
      sub_1D9C7DD6C();

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D9A2E710(__int128 *a1, uint64_t a2)
{
  v26 = type metadata accessor for ObjectKnowledge();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v21 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v14, v11);
  if (v14)
  {
    v16 = *(v9 + 28);
    v24 = *(v9 + 32);
    v25 = v16;
    v17 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);
    v20[0] = 0x80000001D9CA2910;
    v20[1] = 0x80000001D9CA2950;
    v22 = (v4 + 48);
    v23 = v18;
    do
    {
      sub_1D9A31B30(v17, v13, type metadata accessor for RegionSearchResult.ResultItem);
      sub_1D9C7DD6C();

      sub_1D9C7DD6C();
      if (*(v13 + 4))
      {
        sub_1D9C7E8FC();
        sub_1D9C7DD6C();
        sub_1D9C7DD6C();
      }

      else
      {
        sub_1D9C7E8FC();
      }

      sub_1D99AB100(&v13[v25], v8, &qword_1ECB51510);
      if ((*v22)(v8, 1, v26) == 1)
      {
        sub_1D9C7E8FC();
      }

      else
      {
        v19 = v21;
        sub_1D9A31AC8(v8, v21, type metadata accessor for ObjectKnowledge);
        sub_1D9C7E8FC();
        ObjectKnowledge.hash(into:)(a1);
        sub_1D9A31B98(v19, type metadata accessor for ObjectKnowledge);
      }

      sub_1D9C7E91C();
      result = sub_1D9A31B98(v13, type metadata accessor for RegionSearchResult.ResultItem);
      v17 += v23;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1D9A2ED00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v5 += 24;

      sub_1D9C7DD6C();
      sub_1D9C7E91C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9A2ED94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_1D9C7E91C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9A2EDFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[5];
      v25 = v5[4];
      v26 = v6;
      v27[0] = v5[6];
      v7 = v27[0];
      *(v27 + 9) = *(v5 + 105);
      v8 = v5[1];
      v21 = *v5;
      v22 = v8;
      v9 = v5[3];
      v23 = v5[2];
      v24 = v9;
      *(v29 + 9) = *(v27 + 9);
      v28[5] = v6;
      v29[0] = v7;
      v28[3] = v9;
      v28[4] = v25;
      v28[1] = v8;
      v28[2] = v23;
      v28[0] = v21;
      v10 = sub_1D9A30414(v28);
      if (v10)
      {
        if (v10 == 1)
        {
          faiss::NormalizationTransform::~NormalizationTransform(v28);
          MEMORY[0x1DA73EAC0](1);
          sub_1D9A31BF8(&v21, &v14);

          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
        }

        else
        {
          faiss::NormalizationTransform::~NormalizationTransform(v28);
          v12 = *(v11 + 112);
          MEMORY[0x1DA73EAC0](2);
          v18 = v25;
          v19 = v26;
          v20[0] = v27[0];
          *(v20 + 9) = *(v27 + 9);
          v14 = v21;
          v15 = v22;
          v16 = v23;
          v17 = v24;
          faiss::NormalizationTransform::~NormalizationTransform(&v14);

          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
          sub_1D9C7DD6C();
          if (v12 == 0.0)
          {
            v13 = 0.0;
          }

          else
          {
            v13 = v12;
          }

          MEMORY[0x1DA73EB00](*&v13);
        }
      }

      else
      {
        faiss::NormalizationTransform::~NormalizationTransform(v28);
        MEMORY[0x1DA73EAC0](0);
        v18 = v25;
        v19 = v26;
        v20[0] = v27[0];
        *(v20 + 9) = *(v27 + 9);
        v14 = v21;
        v15 = v22;
        v16 = v23;
        v17 = v24;
        faiss::NormalizationTransform::~NormalizationTransform(&v14);

        sub_1D9C7DD6C();
        sub_1D9C7DD6C();
      }

      result = sub_1D9A31C30(&v21);
      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9A2F11C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51C20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9A2F194()
{
  result = qword_1ECB51C48;
  if (!qword_1ECB51C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51C48);
  }

  return result;
}

unint64_t sub_1D9A2F1E8()
{
  result = qword_1ECB51C58;
  if (!qword_1ECB51C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51C58);
  }

  return result;
}

uint64_t sub_1D9A2F23C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = *(a2 + 32 + 24 * i + 16);

      sub_1D9C7DD6C();
      MEMORY[0x1DA73EAC0](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v6 + 48;
        do
        {
          v8 += 24;

          sub_1D9C7DD6C();
          sub_1D9C7E91C();

          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

uint64_t sub_1D9A2F34C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = *v7;
      MEMORY[0x1DA73EAC0](*(*v7 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v8 + 32;
        do
        {
          v10 += 4;
          sub_1D9C7E91C();
          --v9;
        }

        while (v9);
      }

      ++v5;

      sub_1D9C7DD6C();
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1D9A2F438(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = v5[2];
      v7 = v5[3];
      v8 = v5[4];
      v9 = v5[5];

      sub_1D9C7DD6C();
      sub_1D9C7E91C();
      sub_1D9C7E91C();
      v14.origin.x = v6;
      v14.origin.y = v7;
      v14.size.width = v8;
      v14.size.height = v9;
      MinX = CGRectGetMinX(v14);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      v15.origin.x = v6;
      v15.origin.y = v7;
      v15.size.width = v8;
      v15.size.height = v9;
      MaxX = CGRectGetMaxX(v15);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      v16.origin.x = v6;
      v16.origin.y = v7;
      v16.size.width = v8;
      v16.size.height = v9;
      MinY = CGRectGetMinY(v16);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      v17.origin.x = v6;
      v17.origin.y = v7;
      v17.size.width = v8;
      v17.size.height = v9;
      MaxY = CGRectGetMaxY(v17);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);

      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9A2F590(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    v5 = (a2 + 80);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_1D9C7DD6C();
      sub_1D9C7E91C();
      v14.origin.x = v6;
      v14.origin.y = v7;
      v14.size.width = v8;
      v14.size.height = v9;
      MinX = CGRectGetMinX(v14);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      v15.origin.x = v6;
      v15.origin.y = v7;
      v15.size.width = v8;
      v15.size.height = v9;
      MaxX = CGRectGetMaxX(v15);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      v16.origin.x = v6;
      v16.origin.y = v7;
      v16.size.width = v8;
      v16.size.height = v9;
      MinY = CGRectGetMinY(v16);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      v17.origin.x = v6;
      v17.origin.y = v7;
      v17.size.width = v8;
      v17.size.height = v9;
      MaxY = CGRectGetMaxY(v17);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);

      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9A2F6DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {

      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();
      sub_1D9C7DD6C();

      v5 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9A2F7DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 4;
      v7 = v8;

      sub_1D9C7DD6C();
      if (v6 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x1DA73EB00](*&v9);
      MEMORY[0x1DA73EB00](*&v7);

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9A2F87C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA73EAC0](v8, v5);
  if (v8)
  {
    v10 = 0;
    v36 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1D9A31B30(v36 + v11 * v10, v7, type metadata accessor for VisualUnderstanding.ImageRegion);
      v12 = *v7;
      v13 = v7[1];
      v14 = v7[2];
      v15 = v7[3];
      v50.origin.x = *v7;
      v50.origin.y = v13;
      v50.size.width = v14;
      v50.size.height = v15;
      MinX = CGRectGetMinX(v50);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      v51.origin.x = v12;
      v51.origin.y = v13;
      v51.size.width = v14;
      v51.size.height = v15;
      MaxX = CGRectGetMaxX(v51);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      v52.origin.x = v12;
      v52.origin.y = v13;
      v52.size.width = v14;
      v52.size.height = v15;
      MinY = CGRectGetMinY(v52);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      v53.origin.x = v12;
      v53.origin.y = v13;
      v53.size.width = v14;
      v53.size.height = v15;
      MaxY = CGRectGetMaxY(v53);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);
      v20 = *(v7 + 6);
      MEMORY[0x1DA73EAC0](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = (v20 + 32);
        do
        {
          v23 = v22[1];
          v37[0] = *v22;
          v37[1] = v23;
          v24 = v22[2];
          v25 = v22[3];
          v26 = v22[5];
          v37[4] = v22[4];
          v37[5] = v26;
          v37[2] = v24;
          v37[3] = v25;
          v27 = v22[6];
          v28 = v22[7];
          v29 = v22[8];
          *(v38 + 13) = *(v22 + 141);
          v37[7] = v28;
          v38[0] = v29;
          v37[6] = v27;
          v30 = v22[7];
          v47 = v22[6];
          v48 = v30;
          v49[0] = v22[8];
          *(v49 + 13) = *(v22 + 141);
          v31 = v22[3];
          v43 = v22[2];
          v44 = v31;
          v32 = v22[5];
          v45 = v22[4];
          v46 = v32;
          v33 = *v22;
          v34 = v22[1];
          v22 += 10;
          v41 = v33;
          v42 = v34;
          sub_1D99AE054(v37, v39);
          VisualUnderstanding.DomainInfo.hash(into:)();
          v39[6] = v47;
          v39[7] = v48;
          v40[0] = v49[0];
          *(v40 + 13) = *(v49 + 13);
          v39[2] = v43;
          v39[3] = v44;
          v39[4] = v45;
          v39[5] = v46;
          v39[0] = v41;
          v39[1] = v42;
          sub_1D99AE0B0(v39);
          --v21;
        }

        while (v21);
      }

      ++v10;
      result = sub_1D9A31B98(v7, type metadata accessor for VisualUnderstanding.ImageRegion);
    }

    while (v10 != v8);
  }

  return result;
}

BOOL _s12VisualLookUp6EntityO4BookV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v27 = *(a1 + 56);
  v28 = *(a1 + 48);
  v25 = *(a1 + 72);
  v26 = *(a1 + 64);
  v21 = *(a1 + 88);
  v22 = *(a1 + 80);
  v17 = *(a1 + 104);
  v18 = *(a1 + 96);
  v6 = *(a1 + 112);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v23 = *(a2 + 72);
  v24 = *(a2 + 64);
  v19 = *(a2 + 88);
  v20 = *(a2 + 80);
  v15 = *(a2 + 104);
  v16 = *(a2 + 96);
  v13 = *(a2 + 112);
  return (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1D9C7E7DC() & 1) != 0) && (v2 == v7 && v3 == v8 || (sub_1D9C7E7DC() & 1) != 0) && (v4 == v10 && v5 == v9 || (sub_1D9C7E7DC() & 1) != 0) && (v28 == v12 && v27 == v11 || (sub_1D9C7E7DC() & 1) != 0) && (v26 == v24 && v25 == v23 || (sub_1D9C7E7DC() & 1) != 0) && (v22 == v20 && v21 == v19 || (sub_1D9C7E7DC() & 1) != 0) && (v18 == v16 && v17 == v15 || (sub_1D9C7E7DC() & 1) != 0) && v6 == v13;
}

uint64_t _s12VisualLookUp6EntityO5AlbumV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D9C7E7DC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1D9C7E7DC() & 1) == 0 || (v3 != v8 || v5 != v9) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v11 && v14 == v10)
  {
    return 1;
  }

  return sub_1D9C7E7DC();
}

unint64_t sub_1D9A2FE60()
{
  result = qword_1ECB51C70;
  if (!qword_1ECB51C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51C70);
  }

  return result;
}

unint64_t sub_1D9A2FF1C()
{
  result = qword_1ECB51C88;
  if (!qword_1ECB51C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51C88);
  }

  return result;
}

uint64_t _s12VisualLookUp6EntityO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v80 = a1[4];
  v81 = v3;
  v4 = a1[5];
  v82[0] = a1[6];
  *(v82 + 9) = *(a1 + 105);
  v5 = a1[1];
  v77[0] = *a1;
  v77[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v78 = a1[2];
  v79 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v85 = a2[2];
  v86 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v83 = v9;
  v84 = v12;
  *(v89 + 9) = *(a2 + 105);
  v15 = a2[5];
  v89[0] = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v87 = a2[4];
  v88 = v17;
  v18 = a1[3];
  v90[2] = a1[2];
  v90[3] = v18;
  v19 = a1[1];
  v90[0] = *a1;
  v90[1] = v19;
  *(v91 + 9) = *(a1 + 105);
  v20 = a1[5];
  v90[4] = a1[4];
  v90[5] = v20;
  v91[3] = v10;
  v91[4] = v13;
  v91[0] = a1[6];
  v91[2] = v14;
  *(v92 + 9) = *(a2 + 105);
  v21 = a2[6];
  v91[7] = v15;
  v92[0] = v21;
  v91[5] = v16;
  v91[6] = v87;
  v93[2] = v78;
  v93[3] = v2;
  v93[0] = v8;
  v93[1] = v7;
  v22 = a1[6];
  *&v94[9] = *(a1 + 105);
  v93[5] = v4;
  *v94 = v22;
  v93[4] = v80;
  v23 = sub_1D9A30414(v93);
  if (v23)
  {
    if (v23 == 1)
    {
      faiss::NormalizationTransform::~NormalizationTransform(v93);
      v25 = v24;
      v74 = v87;
      v75 = v88;
      v76[0] = v89[0];
      *(v76 + 9) = *(v89 + 9);
      v70 = v83;
      v71 = v84;
      v72 = v85;
      v73 = v86;
      if (sub_1D9A30414(&v70) == 1)
      {
        faiss::NormalizationTransform::~NormalizationTransform(&v70);
        v26 = v25[1];
        v62 = *v25;
        v63 = v26;
        v27 = v25[3];
        v64 = v25[2];
        v65 = v27;
        v29 = v28[1];
        v54 = *v28;
        v55 = v29;
        v30 = v28[3];
        v56 = v28[2];
        v57 = v30;
        v31 = _s12VisualLookUp6EntityO5AlbumV2eeoiySbAE_AEtFZ_0(&v62, &v54);
LABEL_14:
        v40 = v31;
        sub_1D9A31BF8(&v83, v53);
        sub_1D9A31BF8(v77, v53);
        sub_1D99A6AE0(v90, &qword_1ECB51E80);
        return v40 & 1;
      }
    }

    else
    {
      faiss::NormalizationTransform::~NormalizationTransform(v93);
      v42 = v41;
      v74 = v87;
      v75 = v88;
      v76[0] = v89[0];
      *(v76 + 9) = *(v89 + 9);
      v70 = v83;
      v71 = v84;
      v72 = v85;
      v73 = v86;
      if (sub_1D9A30414(&v70) == 2)
      {
        faiss::NormalizationTransform::~NormalizationTransform(&v70);
        v43 = v42[5];
        v66 = v42[4];
        v67 = v43;
        v68 = v42[6];
        v69 = *(v42 + 14);
        v44 = v42[1];
        v62 = *v42;
        v63 = v44;
        v45 = v42[3];
        v64 = v42[2];
        v65 = v45;
        v47 = v46[5];
        v58 = v46[4];
        v59 = v47;
        v60 = v46[6];
        v61 = *(v46 + 14);
        v48 = v46[1];
        v54 = *v46;
        v55 = v48;
        v49 = v46[3];
        v56 = v46[2];
        v57 = v49;
        v31 = _s12VisualLookUp6EntityO4BookV2eeoiySbAE_AEtFZ_0(&v62, &v54);
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  faiss::NormalizationTransform::~NormalizationTransform(v93);
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  v74 = v87;
  v75 = v88;
  v76[0] = v89[0];
  *(v76 + 9) = *(v89 + 9);
  v70 = v83;
  v71 = v84;
  v72 = v85;
  v73 = v86;
  if (sub_1D9A30414(&v70))
  {
LABEL_15:
    sub_1D9A31BF8(&v83, &v70);
    v50 = &v70;
LABEL_16:
    sub_1D9A31BF8(v77, v50);
    sub_1D99A6AE0(v90, &qword_1ECB51E80);
LABEL_17:
    v40 = 0;
    return v40 & 1;
  }

  faiss::NormalizationTransform::~NormalizationTransform(&v70);
  v38 = v37[2];
  v39 = v37[3];
  if ((v33 != *v37 || v34 != v37[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    sub_1D9A31BF8(&v83, v53);
    v50 = v53;
    goto LABEL_16;
  }

  if (v35 != v38 || v36 != v39)
  {
    v52 = sub_1D9C7E7DC();
    sub_1D9A31BF8(&v83, v53);
    sub_1D9A31BF8(v77, v53);
    sub_1D99A6AE0(v90, &qword_1ECB51E80);
    if (v52)
    {
      v40 = 1;
      return v40 & 1;
    }

    goto LABEL_17;
  }

  sub_1D9A31BF8(&v83, v53);
  sub_1D9A31BF8(v77, v53);
  sub_1D99A6AE0(v90, &qword_1ECB51E80);
  v40 = 1;
  return v40 & 1;
}

unint64_t sub_1D9A303C0()
{
  result = qword_1ECB51CB8;
  if (!qword_1ECB51CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51CB8);
  }

  return result;
}

unint64_t sub_1D9A3041C()
{
  result = qword_1ECB51CC0;
  if (!qword_1ECB51CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51CC0);
  }

  return result;
}

unint64_t sub_1D9A30470()
{
  result = qword_1ECB51CC8;
  if (!qword_1ECB51CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51CC8);
  }

  return result;
}

unint64_t sub_1D9A304C4()
{
  result = qword_1ECB51CD0;
  if (!qword_1ECB51CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51CD0);
  }

  return result;
}

unint64_t sub_1D9A30518()
{
  result = qword_1ECB51CD8;
  if (!qword_1ECB51CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51CD8);
  }

  return result;
}

unint64_t sub_1D9A3056C()
{
  result = qword_1ECB51CE0;
  if (!qword_1ECB51CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51CE0);
  }

  return result;
}

unint64_t sub_1D9A305C0()
{
  result = qword_1ECB51CE8;
  if (!qword_1ECB51CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51CE8);
  }

  return result;
}

unint64_t sub_1D9A30614()
{
  result = qword_1ECB51D18;
  if (!qword_1ECB51D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D18);
  }

  return result;
}

unint64_t sub_1D9A30674()
{
  result = qword_1ECB51D20;
  if (!qword_1ECB51D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D20);
  }

  return result;
}

unint64_t sub_1D9A306D4()
{
  result = qword_1ECB51D28;
  if (!qword_1ECB51D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D28);
  }

  return result;
}

unint64_t sub_1D9A30734()
{
  result = qword_1ECB51D30;
  if (!qword_1ECB51D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D30);
  }

  return result;
}

unint64_t sub_1D9A3078C()
{
  result = qword_1ECB51D38;
  if (!qword_1ECB51D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D38);
  }

  return result;
}

unint64_t sub_1D9A307E4()
{
  result = qword_1ECB51D40;
  if (!qword_1ECB51D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D40);
  }

  return result;
}

unint64_t sub_1D9A3083C()
{
  result = qword_1ECB51D48;
  if (!qword_1ECB51D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D48);
  }

  return result;
}

unint64_t sub_1D9A30894()
{
  result = qword_1ECB51D50;
  if (!qword_1ECB51D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D50);
  }

  return result;
}

uint64_t sub_1D9A308E8(uint64_t *a1, int a2)
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

uint64_t sub_1D9A30930(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D9A309B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_1D9A309FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D9A30AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1D9A30B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.Book.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Entity.Book.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9A30D3C()
{
  result = qword_1ECB51D58;
  if (!qword_1ECB51D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D58);
  }

  return result;
}

unint64_t sub_1D9A30D94()
{
  result = qword_1ECB51D60;
  if (!qword_1ECB51D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D60);
  }

  return result;
}

unint64_t sub_1D9A30DEC()
{
  result = qword_1ECB51D68;
  if (!qword_1ECB51D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D68);
  }

  return result;
}

unint64_t sub_1D9A30E44()
{
  result = qword_1ECB51D70;
  if (!qword_1ECB51D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D70);
  }

  return result;
}

unint64_t sub_1D9A30E9C()
{
  result = qword_1ECB51D78;
  if (!qword_1ECB51D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D78);
  }

  return result;
}

unint64_t sub_1D9A30EF4()
{
  result = qword_1ECB51D80;
  if (!qword_1ECB51D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D80);
  }

  return result;
}

unint64_t sub_1D9A30F4C()
{
  result = qword_1ECB51D88;
  if (!qword_1ECB51D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D88);
  }

  return result;
}

unint64_t sub_1D9A30FA4()
{
  result = qword_1ECB51D90;
  if (!qword_1ECB51D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D90);
  }

  return result;
}

unint64_t sub_1D9A30FFC()
{
  result = qword_1ECB51D98;
  if (!qword_1ECB51D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51D98);
  }

  return result;
}

unint64_t sub_1D9A31054()
{
  result = qword_1ECB51DA0;
  if (!qword_1ECB51DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DA0);
  }

  return result;
}

unint64_t sub_1D9A310AC()
{
  result = qword_1ECB51DA8;
  if (!qword_1ECB51DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DA8);
  }

  return result;
}

unint64_t sub_1D9A31104()
{
  result = qword_1ECB51DB0;
  if (!qword_1ECB51DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DB0);
  }

  return result;
}

unint64_t sub_1D9A3115C()
{
  result = qword_1ECB51DB8;
  if (!qword_1ECB51DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DB8);
  }

  return result;
}

unint64_t sub_1D9A311B4()
{
  result = qword_1ECB51DC0;
  if (!qword_1ECB51DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DC0);
  }

  return result;
}

unint64_t sub_1D9A3120C()
{
  result = qword_1ECB51DC8;
  if (!qword_1ECB51DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DC8);
  }

  return result;
}

unint64_t sub_1D9A31264()
{
  result = qword_1ECB51DD0;
  if (!qword_1ECB51DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DD0);
  }

  return result;
}

unint64_t sub_1D9A312BC()
{
  result = qword_1ECB51DD8;
  if (!qword_1ECB51DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DD8);
  }

  return result;
}

unint64_t sub_1D9A31314()
{
  result = qword_1ECB51DE0;
  if (!qword_1ECB51DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DE0);
  }

  return result;
}

unint64_t sub_1D9A3136C()
{
  result = qword_1ECB51DE8;
  if (!qword_1ECB51DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DE8);
  }

  return result;
}

unint64_t sub_1D9A313C4()
{
  result = qword_1ECB51DF0;
  if (!qword_1ECB51DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DF0);
  }

  return result;
}

unint64_t sub_1D9A3141C()
{
  result = qword_1ECB51DF8;
  if (!qword_1ECB51DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51DF8);
  }

  return result;
}

unint64_t sub_1D9A31474()
{
  result = qword_1ECB51E00;
  if (!qword_1ECB51E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51E00);
  }

  return result;
}

unint64_t sub_1D9A314CC()
{
  result = qword_1ECB51E08;
  if (!qword_1ECB51E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51E08);
  }

  return result;
}

unint64_t sub_1D9A31524()
{
  result = qword_1ECB51E10;
  if (!qword_1ECB51E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51E10);
  }

  return result;
}

uint64_t sub_1D9A31578(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496D616461 && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

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

uint64_t sub_1D9A316D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496D616461 && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954736569726573 && a2 == 0xEB00000000656C74 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xED00006574614464)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D9A3195C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802465122 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

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

unint64_t sub_1D9A31A70()
{
  result = qword_1ECB51088;
  if (!qword_1ECB51088)
  {
    sub_1D9C7D3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51088);
  }

  return result;
}

uint64_t sub_1D9A31AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A31B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A31B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D9A31CD0()
{
  sub_1D9A32424(319, &qword_1EDD2C5F8);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9A31E30(319, qword_1EDD2E2F8, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9A31E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9A31EDC()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D9A31E30(319, qword_1EDD2DEE8, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9A3201C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1D9A31E30(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9A3211C()
{
  result = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D9A3220C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_1D9A32424(319, a4);
  if (v4 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D9C7D3CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_9Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9C7D3CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D9A32424(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D9C7DBAC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D9A32484()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41BC8);
  __swift_project_value_buffer(v0, qword_1EDD41BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "object_detector_thresholds";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coarse_classifier_thresholds";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "domain_prediction_net_thresholds";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "domain_signals_caching_config";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A326CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1D9A32868();
        }

        else if (result == 4)
        {
          sub_1D9A328EC();
        }
      }

      else if (result == 1)
      {
        sub_1D9A35934(a1, v5, a2, a3, MEMORY[0x1E69AAB98]);
      }

      else if (result == 2)
      {
        sub_1D9A327E4();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A327E4()
{
  sub_1D9C7D39C();
  sub_1D9C7D37C();
  return sub_1D9C7D4BC();
}

uint64_t sub_1D9A32868()
{
  sub_1D9C7D39C();
  sub_1D9C7D37C();
  return sub_1D9C7D4BC();
}

uint64_t sub_1D9A328EC()
{
  type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
  sub_1D9A35E80(&qword_1EDD2E340, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A329A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    sub_1D9C7D39C();
    sub_1D9C7D37C();
    result = sub_1D9C7D6EC();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    sub_1D9C7D39C();
    sub_1D9C7D37C();
    v10 = v5;
    result = sub_1D9C7D6EC();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v10 = v5;
  }

  if (!*(v3[2] + 16) || (sub_1D9C7D39C(), sub_1D9C7D37C(), result = sub_1D9C7D6EC(), !v10))
  {
    result = sub_1D9A32B40(v3, a1, a2, a3);
    if (!v10)
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A32B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  sub_1D99AB100(a1 + *(v12 + 32), v7, &qword_1ECB512B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB512B0);
  }

  sub_1D9A37528(v7, v11, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
  sub_1D9A35E80(&qword_1EDD2E340, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
  sub_1D9C7D80C();
  return sub_1D9A374C8(v11, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
}

uint64_t sub_1D9A32D5C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
  a2[1] = sub_1D9A441B8(v4);
  a2[2] = sub_1D9A441B8(v4);
  sub_1D9C7D3BC();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1D9A32E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A35E80(&qword_1ECB51EE8, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A32EFC(uint64_t a1)
{
  v2 = sub_1D9A35E80(&unk_1EDD2F410, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A32F68()
{
  sub_1D9A35E80(&unk_1EDD2F410, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A33000()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
        sub_1D9A35E80(&qword_1EDD2E3F0, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A330E0()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0), sub_1D9A35E80(&qword_1EDD2E3F0, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig), result = sub_1D9C7D7FC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A33210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A35E80(&qword_1ECB51F00, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A332B0(uint64_t a1)
{
  v2 = sub_1D9A35E80(&qword_1EDD2E340, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A3331C()
{
  sub_1D9A35E80(&qword_1EDD2E340, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A333B0()
{
  result = MEMORY[0x1DA73DF90](0x6F436C65646F4D2ELL, 0xEC0000006769666ELL);
  qword_1ECB70ED0 = 0xD000000000000031;
  *algn_1ECB70ED8 = 0x80000001D9CA5B20;
  return result;
}

uint64_t sub_1D9A33424()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD419B8);
  __swift_project_value_buffer(v0, qword_1EDD419B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_urn";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "label_converter_config";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A335F0()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D5CC();
    }

    else if (result == 3)
    {
      sub_1D9A33680();
    }
  }

  return result;
}

uint64_t sub_1D9A33680()
{
  type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
  sub_1D9A35E80(&unk_1EDD2DF30, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A33734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D9C7D7CC(), !v4))
  {
    result = sub_1D9A337E0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A337E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  sub_1D99AB100(a1 + *(v12 + 24), v7, &qword_1ECB512B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB512B8);
  }

  sub_1D9A37528(v7, v11, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  sub_1D9A35E80(&unk_1EDD2DF30, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  sub_1D9C7D80C();
  return sub_1D9A374C8(v11, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
}

uint64_t sub_1D9A339FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1D9C7D3BC();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9A33ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A35E80(&qword_1ECB51F08, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A33B7C(uint64_t a1)
{
  v2 = sub_1D9A35E80(&qword_1EDD2E3F0, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A33BE8()
{
  sub_1D9A35E80(&qword_1EDD2E3F0, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A33C68()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41940);
  __swift_project_value_buffer(v0, qword_1EDD41940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "qid_converter_config";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sign_symbol_converter_config";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A33E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9A33EC4(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_1D9A34480(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D9A33EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F18);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51E18);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51E18);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9A37528(v12, v19, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
    sub_1D9A37528(v19, v16, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9A374C8(v16, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
      v30 = v45;
    }

    else
    {
      sub_1D99A6AE0(v25, &qword_1ECB51F18);
      v32 = v41;
      sub_1D9A37528(v16, v41, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
      sub_1D9A37528(v32, v25, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1D9A35E80(&unk_1EDD2E090, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB51F18);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB51F18);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB51F18);
    return sub_1D99A6AE0(v33, &qword_1ECB51F18);
  }

  else
  {
    v36 = v40;
    sub_1D9A37528(v33, v40, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB51F18);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51E18);
    sub_1D9A37528(v36, v37, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9A34480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F20);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51E18);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51E18);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9A37528(v12, v19, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
    sub_1D9A37528(v19, v16, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D99A6AE0(v25, &qword_1ECB51F20);
      v32 = v41;
      sub_1D9A37528(v16, v41, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
      sub_1D9A37528(v32, v25, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9A374C8(v16, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9A35E80(&unk_1EDD2E140, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB51F20);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB51F20);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB51F20);
    return sub_1D99A6AE0(v33, &qword_1ECB51F20);
  }

  else
  {
    v36 = v40;
    sub_1D9A37528(v33, v40, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB51F20);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51E18);
    sub_1D9A37528(v36, v37, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9A34A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1D99AB100(v3, &v13 - v9, &qword_1ECB51E18);
  v11 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9A34E04(v3, a1, a2, a3);
  }

  else
  {
    sub_1D9A34BCC(v3, a1, a2, a3);
  }

  result = sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A34BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51E18);
  v11 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51E18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9A37528(v7, v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
    sub_1D9A35E80(&unk_1EDD2E090, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
    sub_1D9C7D80C();
    return sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
  }

  result = sub_1D9A374C8(v7, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t sub_1D9A34E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51E18);
  v11 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51E18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9A37528(v7, v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
    sub_1D9A35E80(&unk_1EDD2E140, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
    sub_1D9C7D80C();
    return sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
  }

  result = sub_1D9A374C8(v7, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t sub_1D9A35040@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A350FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A35E80(&qword_1ECB51F10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A3519C(uint64_t a1)
{
  v2 = sub_1D9A35E80(&unk_1EDD2DF30, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A35208()
{
  sub_1D9A35E80(&unk_1EDD2DF30, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A35288()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000013, 0x80000001D9CA5C10);
  qword_1ECB70EE0 = 0xD000000000000032;
  *algn_1ECB70EE8 = 0x80000001D9CA5B90;
  return result;
}

uint64_t sub_1D9A35314()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1D9C7D39C();
        sub_1D9C7D4BC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A353D0()
{
  if (!*(*v0 + 16) || (sub_1D9C7D39C(), result = sub_1D9C7D6EC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A354F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A35E80(&qword_1ECB51F28, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A35594(uint64_t a1)
{
  v2 = sub_1D9A35E80(&unk_1EDD2E090, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A35600()
{
  sub_1D9A35E80(&unk_1EDD2E090, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A35694()
{
  result = MEMORY[0x1DA73DF90](0xD00000000000001ALL, 0x80000001D9CA5C40);
  qword_1ECB70EF0 = 0xD000000000000032;
  *algn_1ECB70EF8 = 0x80000001D9CA5B90;
  return result;
}

uint64_t sub_1D9A35720(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D9C85660;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = sub_1D9C7D81C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A3588C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1D9A35934(a1, v5, a2, a3, MEMORY[0x1E69AABB0]);
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A35934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_1D9C7D39C();
  a5(0);
  return sub_1D9C7D4BC();
}

uint64_t sub_1D9A359C8()
{
  if (!*(*v0 + 16) || (sub_1D9C7D39C(), sub_1D9C7D38C(), result = sub_1D9C7D6EC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A35B14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  v4 = *a4;

  return v4;
}

uint64_t sub_1D9A35BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A35E80(&qword_1ECB51F30, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A35C44(uint64_t a1)
{
  v2 = sub_1D9A35E80(&unk_1EDD2E140, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A35CB0()
{
  sub_1D9A35E80(&unk_1EDD2E140, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A35D44(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A35E80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9A364F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D99AB100(a1, &v20 - v12, &qword_1ECB51E18);
  sub_1D99AB100(a2, &v13[v15], &qword_1ECB51E18);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB51E18);
LABEL_9:
      type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
      sub_1D9C7D3CC();
      sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB51E18);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB51E20);
    goto LABEL_7;
  }

  sub_1D9A37528(&v13[v15], v7, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  v18 = sub_1D9A36BCC(v10, v7);
  sub_1D9A374C8(v7, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  sub_1D99A6AE0(v13, &qword_1ECB51E18);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9A3683C(void *a1, void *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E28);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v7;
  v22 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB512B8);
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB512B8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB512B8);
LABEL_12:
      sub_1D9C7D3CC();
      sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB512B8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
LABEL_9:
    sub_1D99A6AE0(v13, &qword_1ECB51E28);
    goto LABEL_10;
  }

  v18 = v21;
  sub_1D9A37528(&v13[v15], v21, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  v19 = sub_1D9A364F8(v10, v18);
  sub_1D9A374C8(v18, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  sub_1D99A6AE0(v13, &qword_1ECB512B8);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9A36BCC(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig(0);
  MEMORY[0x1EEE9AC00](v28);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51EF8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v19 = *(v18 + 56);
  sub_1D9A37464(a1, &v27 - v16);
  sub_1D9A37464(a2, &v17[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9A37464(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9A37528(&v17[v19], v5, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
      if (sub_1D9A0097C(*v11, *v5))
      {
        sub_1D9C7D3CC();
        sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
        if (sub_1D9C7DC2C())
        {
          v20 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig;
          sub_1D9A374C8(v5, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
          v21 = v11;
LABEL_13:
          sub_1D9A374C8(v21, v20);
          sub_1D9A374C8(v17, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
          return 1;
        }
      }

      v25 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig;
      sub_1D9A374C8(v5, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
      v26 = v11;
LABEL_16:
      sub_1D9A374C8(v26, v25);
      sub_1D9A374C8(v17, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
      return 0;
    }

    v22 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig;
    v23 = v11;
  }

  else
  {
    sub_1D9A37464(v17, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D9A37528(&v17[v19], v8, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
      if (sub_1D9A007D8(*v14, *v8))
      {
        sub_1D9C7D3CC();
        sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
        if (sub_1D9C7DC2C())
        {
          v20 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig;
          sub_1D9A374C8(v8, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
          v21 = v14;
          goto LABEL_13;
        }
      }

      v25 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig;
      sub_1D9A374C8(v8, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
      v26 = v14;
      goto LABEL_16;
    }

    v22 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig;
    v23 = v14;
  }

  sub_1D9A374C8(v23, v22);
  sub_1D99A6AE0(v17, &qword_1ECB51EF8);
  return 0;
}