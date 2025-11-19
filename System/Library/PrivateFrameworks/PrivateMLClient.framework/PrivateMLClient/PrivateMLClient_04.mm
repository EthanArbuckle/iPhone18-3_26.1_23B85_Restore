uint64_t sub_21CFCE91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  sub_21CF7F198(a1 + v13, v8, &qword_27CE46380, &qword_21D02CB28);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE46380, &qword_21D02CB28);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  __break(1u);
  return result;
}

uint64_t sub_21CFCEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  sub_21CF7F198(a1 + v13, v8, &qword_27CE46380, &qword_21D02CB28);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE46380, &qword_21D02CB28);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    sub_21CFFCB6C(&qword_27CE45D58, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  __break(1u);
  return result;
}

uint64_t sub_21CFCEDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  v7 = (a1 + *a5);
  result = swift_beginAccess();
  if ((*(v7 + 9) & 1) == 0)
  {
    v9 = *v7;
    v10 = v7[1] & 1;
    a6(result);
    return sub_21D021F44();
  }

  return result;
}

uint64_t sub_21CFCEE90(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v151 = *(v4 - 8);
  v5 = *(v151 + 64);
  MEMORY[0x28223BE20](v4);
  v148 = &v144[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463B8, &qword_21D02CB58);
  v7 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v9 = &v144[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v149 = &v144[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v153 = &v144[-v14];
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  v156 = *(v15 - 8);
  v157 = v15;
  v16 = *(v156 + 64);
  MEMORY[0x28223BE20](v15);
  v152 = &v144[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463C0, &qword_21D02CB60);
  v18 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v158 = &v144[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46390, &qword_21D02CB30);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v154 = &v144[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v160 = &v144[-v24];
  v25 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v163 = *(v25 - 8);
  v164 = v25;
  v26 = *(v163 + 64);
  MEMORY[0x28223BE20](v25);
  v159 = &v144[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463C8, &qword_21D02CB68);
  v28 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v165 = &v144[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v161 = &v144[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v166 = &v144[-v34];
  v35 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  v169 = *(v35 - 8);
  v36 = *(v169 + 64);
  MEMORY[0x28223BE20](v35);
  v167 = &v144[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463D0, &qword_21D02CB70);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v171 = &v144[-v40];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v168 = &v144[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43);
  v46 = &v144[-v45];
  swift_beginAccess();
  v47 = a1[2];
  v48 = a1[3];
  swift_beginAccess();
  v49 = a2[3];
  if (v48)
  {
    if (!v49 || (v47 != a2[2] || v48 != v49) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v146 = v9;
  v147 = v4;
  swift_beginAccess();
  v50 = a1[4];
  v51 = a1[5];
  v52 = a1;
  swift_beginAccess();
  v54 = a2[4];
  v53 = a2[5];
  v170 = a2;
  if (v51 >> 60 == 15)
  {
    if (v53 >> 60 == 15)
    {

      sub_21CF9EDB8(v50, v51);
      sub_21CF9EDB8(v54, v53);
      sub_21CF94FCC(v50, v51);
      goto LABEL_13;
    }

    sub_21CF9EDB8(v50, v51);
    sub_21CF9EDB8(v54, v53);
    goto LABEL_17;
  }

  sub_21CF9EDB8(v50, v51);
  sub_21CF9EDB8(v54, v53);
  if (v53 >> 60 == 15)
  {
LABEL_17:
    sub_21CF94FCC(v50, v51);
    sub_21CF94FCC(v54, v53);
    return 0;
  }

  sub_21CF9EDB8(v50, v51);
  sub_21CF9EDB8(v54, v53);
  v145 = sub_21D0035E0(v50, v51, v54, v53);
  sub_21CF94FCC(v54, v53);
  sub_21CF94FCC(v50, v51);
  sub_21CF94FCC(v54, v53);
  sub_21CF94FCC(v50, v51);
  if ((v145 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_13:
  v55 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF7F198(v52 + v55, v46, &qword_27CE452B0, &qword_21D023670);
  v56 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v57 = *(v38 + 48);
  v58 = v171;
  sub_21CF7F198(v46, v171, &qword_27CE452B0, &qword_21D023670);
  v59 = v170 + v56;
  v60 = v170;
  v61 = v58;
  sub_21CF7F198(v59, &v58[v57], &qword_27CE452B0, &qword_21D023670);
  v62 = *(v169 + 48);
  v63 = v62(v58, 1, v35);
  v64 = v52;
  if (v63 == 1)
  {
    sub_21CF7F200(v46, &qword_27CE452B0, &qword_21D023670);
    v65 = v62((v61 + v57), 1, v35);
    v66 = v147;
    if (v65 == 1)
    {
      sub_21CF7F200(v61, &qword_27CE452B0, &qword_21D023670);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v67 = v168;
  sub_21CF7F198(v61, v168, &qword_27CE452B0, &qword_21D023670);
  v68 = v62((v61 + v57), 1, v35);
  v69 = v147;
  if (v68 == 1)
  {
    sub_21CF7F200(v46, &qword_27CE452B0, &qword_21D023670);
    sub_21D000B58(v67, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
LABEL_20:
    v70 = &qword_27CE463D0;
    v71 = &qword_21D02CB70;
    v72 = v61;
LABEL_21:
    sub_21CF7F200(v72, v70, v71);
LABEL_52:

    return 0;
  }

  v73 = v67;
  v74 = v167;
  sub_21D000BB8(v61 + v57, v167, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v75 = *(v35 + 20);
  v76 = *&v73[v75];
  v77 = *&v74[v75];
  if (v76 != v77)
  {

    v78 = sub_21CFC6054(v76, v77);

    if ((v78 & 1) == 0)
    {
      sub_21D000B58(v74, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      sub_21CF7F200(v46, &qword_27CE452B0, &qword_21D023670);
      sub_21D000B58(v168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      v72 = v171;
      v70 = &qword_27CE452B0;
      v71 = &qword_21D023670;
      goto LABEL_21;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  v79 = v64;
  v80 = v69;
  v81 = v168;
  v82 = sub_21D022574();
  sub_21D000B58(v74, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  sub_21CF7F200(v46, &qword_27CE452B0, &qword_21D023670);
  v83 = v81;
  v66 = v80;
  v64 = v79;
  v60 = v170;
  sub_21D000B58(v83, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  sub_21CF7F200(v171, &qword_27CE452B0, &qword_21D023670);
  if ((v82 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  v84 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
  swift_beginAccess();
  v85 = *(v64 + v84);
  v86 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
  swift_beginAccess();
  if ((sub_21D0021AC(v85, *(v60 + v86)) & 1) == 0)
  {
    goto LABEL_52;
  }

  v87 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  v88 = *(v64 + v87);
  v89 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  v90 = *(v60 + v89);
  if (v88 == 2)
  {
    v91 = v166;
    if (v90 != 2)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v91 = v166;
    if (v90 == 2 || ((v88 ^ v90) & 1) != 0)
    {
      goto LABEL_52;
    }
  }

  v92 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  sub_21CF7F198(v64 + v92, v91, &qword_27CE45290, &qword_21D023650);
  v93 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  v94 = *(v162 + 48);
  v95 = v165;
  sub_21CF7F198(v91, v165, &qword_27CE45290, &qword_21D023650);
  sub_21CF7F198(v60 + v93, &v95[v94], &qword_27CE45290, &qword_21D023650);
  v96 = v164;
  v97 = *(v163 + 48);
  if (v97(v95, 1, v164) == 1)
  {
    sub_21CF7F200(v91, &qword_27CE45290, &qword_21D023650);
    if (v97(&v95[v94], 1, v96) == 1)
    {
      sub_21CF7F200(v95, &qword_27CE45290, &qword_21D023650);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v98 = v161;
  sub_21CF7F198(v95, v161, &qword_27CE45290, &qword_21D023650);
  if (v97(&v95[v94], 1, v96) == 1)
  {
    sub_21CF7F200(v166, &qword_27CE45290, &qword_21D023650);
    sub_21D000B58(v98, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
LABEL_38:
    v70 = &qword_27CE463C8;
    v71 = &qword_21D02CB68;
    v72 = v95;
    goto LABEL_21;
  }

  v99 = &v95[v94];
  v100 = v159;
  sub_21D000BB8(v99, v159, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  v101 = sub_21D006C84(v98, v100);
  sub_21D000B58(v100, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  sub_21CF7F200(v166, &qword_27CE45290, &qword_21D023650);
  sub_21D000B58(v98, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  sub_21CF7F200(v95, &qword_27CE45290, &qword_21D023650);
  if ((v101 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_40:
  v102 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
  swift_beginAccess();
  v103 = *(v64 + v102);
  v104 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
  swift_beginAccess();
  v105 = *(v60 + v104);

  v106 = sub_21D002450(v103, v105);

  if ((v106 & 1) == 0)
  {
    goto LABEL_52;
  }

  v107 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  v108 = v160;
  sub_21CF7F198(v64 + v107, v160, &qword_27CE46390, &qword_21D02CB30);
  v109 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  v110 = *(v155 + 48);
  v111 = v158;
  sub_21CF7F198(v108, v158, &qword_27CE46390, &qword_21D02CB30);
  sub_21CF7F198(v60 + v109, &v111[v110], &qword_27CE46390, &qword_21D02CB30);
  v112 = v157;
  v113 = *(v156 + 48);
  if (v113(v111, 1, v157) == 1)
  {
    sub_21CF7F200(v108, &qword_27CE46390, &qword_21D02CB30);
    if (v113(&v111[v110], 1, v112) == 1)
    {
      sub_21CF7F200(v111, &qword_27CE46390, &qword_21D02CB30);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v114 = v154;
  sub_21CF7F198(v111, v154, &qword_27CE46390, &qword_21D02CB30);
  if (v113(&v111[v110], 1, v112) == 1)
  {
    sub_21CF7F200(v160, &qword_27CE46390, &qword_21D02CB30);
    sub_21D000B58(v114, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
LABEL_46:
    v70 = &qword_27CE463C0;
    v71 = &qword_21D02CB60;
    v72 = v111;
    goto LABEL_21;
  }

  v115 = &v111[v110];
  v116 = v152;
  sub_21D000BB8(v115, v152, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  v117 = sub_21D0080E8(v114, v116);
  sub_21D000B58(v116, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CF7F200(v160, &qword_27CE46390, &qword_21D02CB30);
  sub_21D000B58(v114, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CF7F200(v111, &qword_27CE46390, &qword_21D02CB30);
  if ((v117 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_48:
  v118 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
  swift_beginAccess();
  v119 = *(v64 + v118);
  v120 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
  swift_beginAccess();
  v121 = *(v60 + v120);

  v122 = sub_21D002ADC(v119, v121);

  if ((v122 & 1) == 0)
  {
    goto LABEL_52;
  }

  v123 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v124 = v153;
  sub_21CF7F198(v64 + v123, v153, &qword_27CE46380, &qword_21D02CB28);
  v125 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v126 = *(v150 + 48);
  v127 = v146;
  sub_21CF7F198(v124, v146, &qword_27CE46380, &qword_21D02CB28);
  v128 = v60 + v125;
  v129 = v127;
  sub_21CF7F198(v128, v127 + v126, &qword_27CE46380, &qword_21D02CB28);
  v130 = *(v151 + 48);
  if (v130(v127, 1, v66) == 1)
  {
    sub_21CF7F200(v124, &qword_27CE46380, &qword_21D02CB28);
    if (v130(v127 + v126, 1, v66) == 1)
    {
      sub_21CF7F200(v127, &qword_27CE46380, &qword_21D02CB28);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v132 = v127;
  v133 = v149;
  sub_21CF7F198(v132, v149, &qword_27CE46380, &qword_21D02CB28);
  if (v130(v129 + v126, 1, v66) == 1)
  {
    sub_21CF7F200(v153, &qword_27CE46380, &qword_21D02CB28);
    sub_21D000B58(v133, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
LABEL_56:
    v70 = &qword_27CE463B8;
    v71 = &qword_21D02CB58;
    v72 = v129;
    goto LABEL_21;
  }

  v134 = v129 + v126;
  v135 = v148;
  sub_21D000BB8(v134, v148, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  v136 = sub_21D0078F4(v133, v135);
  sub_21D000B58(v135, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  sub_21CF7F200(v153, &qword_27CE46380, &qword_21D02CB28);
  sub_21D000B58(v133, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  sub_21CF7F200(v129, &qword_27CE46380, &qword_21D02CB28);
  if ((v136 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_58:
  v137 = (v64 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode);
  swift_beginAccess();
  v138 = *v137;
  v139 = *(v137 + 9);

  v140 = v170 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode;
  swift_beginAccess();
  v141 = *v140;
  v142 = v140[8];
  v143 = v140[9];

  if (v139)
  {
    if ((v143 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v143)
    {
      return 0;
    }

    if (v142)
    {
      if (v141 > 1)
      {
        if (v141 == 2)
        {
          if (v138 != 2)
          {
            return 0;
          }
        }

        else if (v138 != 3)
        {
          return 0;
        }
      }

      else if (v141)
      {
        if (v138 != 1)
        {
          return 0;
        }
      }

      else if (v138)
      {
        return 0;
      }
    }

    else if (v138 != v141)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21CFD0284(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46378, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD0324(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121C430, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD0390()
{
  sub_21CFFCB6C(qword_28121C430, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest);

  return sub_21D021EF4();
}

uint64_t sub_21CFD0450()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53898);
  __swift_project_value_buffer(v0, qword_27CE53898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SINGLE_SHOT";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INITIATE_CHAT";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MULTIPLE_INFERENCES";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD06E0()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812212A8);
  __swift_project_value_buffer(v0, qword_2812212A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "position";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD08A8()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_21CFD0954();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0) + 24);
      sub_21D021E54();
    }
  }

  return result;
}

uint64_t sub_21CFD0954()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0) + 20);
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  sub_21CFFCB6C(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  return sub_21D021E84();
}

uint64_t sub_21CFD0A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD0AA4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter, 2, MEMORY[0x277D21860]);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD0AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452E0, &qword_21D0236A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  sub_21CF7F198(a1 + *(v14 + 20), v8, &qword_27CE452E0, &qword_21D0236A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE452E0, &qword_21D0236A0);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  sub_21CFFCB6C(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
}

uint64_t sub_21CFD0CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D021CE4();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_21CFD0DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46438, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD0E40(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD0EAC()
{
  sub_21CFFCB6C(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);

  return sub_21D021EF4();
}

uint64_t sub_21CFD0F2C()
{
  if (qword_27CE44F28 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE538B0;
  v2 = *algn_27CE538B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0x6C6169636570532ELL, 0xED00006E656B6F54);

  qword_27CE538C0 = v1;
  *algn_27CE538C8 = v2;
  return result;
}

uint64_t sub_21CFD107C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46440, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD111C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD1188()
{
  sub_21CFFCB6C(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);

  return sub_21D021EF4();
}

uint64_t sub_21CFD1260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x223D3A110](a2, a3);
  *a4 = 0xD00000000000002BLL;
  *a5 = 0x800000021D02EA80;
  return result;
}

uint64_t sub_21CFD12CC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE538E0);
  __swift_project_value_buffer(v0, qword_27CE538E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image_data";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "position";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD14A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_21CFD154C(v5, a1, a2, a3);
    }

    else if (result == 5)
    {
      v11 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0) + 24);
      sub_21D021E54();
    }
  }

  return result;
}

uint64_t sub_21CFD154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45AC8, &qword_21D026570);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46450, &qword_21D02CBD8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_21CF7F198(v49, v13, &qword_27CE45AC8, &qword_21D026570);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_21CF7F200(v13, &qword_27CE45AC8, &qword_21D026570);
    v30 = v44;
  }

  else
  {
    sub_21D000BB8(v13, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    sub_21D000BB8(v21, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    sub_21CF7F200(v27, &qword_27CE46450, &qword_21D02CBD8);
    v31 = v42;
    sub_21D000BB8(v19, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    sub_21D000BB8(v31, v27, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  v32 = v45;
  sub_21D021E84();
  v33 = v43;
  if (v32)
  {
    return sub_21CF7F200(v27, &qword_27CE46450, &qword_21D02CBD8);
  }

  sub_21CF7F198(v27, v43, &qword_27CE46450, &qword_21D02CBD8);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_21CF7F200(v27, &qword_27CE46450, &qword_21D02CBD8);
    return sub_21CF7F200(v33, &qword_27CE46450, &qword_21D02CBD8);
  }

  else
  {
    v35 = v40;
    sub_21D000BB8(v33, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    if (v29 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v27, &qword_27CE46450, &qword_21D02CBD8);
    v36 = v49;
    sub_21CF7F200(v49, &qword_27CE45AC8, &qword_21D026570);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_21CFD1A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD1B54(v3, a1, a2, a3);
  if (!v4)
  {
    sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment, 5, MEMORY[0x277D21860]);
    v9 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD1B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45AC8, &qword_21D026570);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45AC8, &qword_21D026570);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45AC8, &qword_21D026570);
  }

  sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  sub_21D021FE4();
  return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
}

uint64_t sub_21CFD1D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v13 = (a1 + *(result + 24));
  if ((v13[1] & 1) == 0)
  {
    return a7(*v13, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21CFD1DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  result = sub_21D021CE4();
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t (*sub_21CFD1E9C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_21CFD1EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46448, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD1F90(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE46118, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD1FFC()
{
  sub_21CFFCB6C(&qword_27CE46118, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);

  return sub_21D021EF4();
}

uint64_t sub_21CFD207C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE538F8);
  __swift_project_value_buffer(v0, qword_27CE538F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0262A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "next_token_response";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "final_response";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "status_response";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inference_environment_response";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "inference_complete_response";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "next_media_response";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD2348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_21CFD359C(v5, a1, a2, a3);
          break;
        case 5:
          sub_21CFD3B58(v5, a1, a2, a3);
          break;
        case 7:
          sub_21CFD4114(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_21CFD2474(v5, a1, a2, a3);
          break;
        case 2:
          sub_21CFD2A24(v5, a1, a2, a3);
          break;
        case 3:
          sub_21CFD2FE0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_21CFD2474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46298, &qword_21D02CA90);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455F8, &qword_21D0246F0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455F8, &qword_21D0246F0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v33 = v48;
    }

    else
    {
      sub_21CF7F200(v28, &qword_27CE46298, &qword_21D02CA90);
      v35 = v43;
      sub_21D000BB8(v20, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_21CFFCB6C(qword_28121BA18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46298, &qword_21D02CA90);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46298, &qword_21D02CA90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46298, &qword_21D02CA90);
    return sub_21CF7F200(v36, &qword_27CE46298, &qword_21D02CA90);
  }

  else
  {
    v39 = v44;
    sub_21D000BB8(v36, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46298, &qword_21D02CA90);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462A0, &qword_21D02CA98);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455F8, &qword_21D0246F0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455F8, &qword_21D0246F0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v28, &qword_27CE462A0, &qword_21D02CA98);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(qword_28121BD68, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE462A0, &qword_21D02CA98);
  }

  sub_21CF7F198(v28, v36, &qword_27CE462A0, &qword_21D02CA98);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE462A0, &qword_21D02CA98);
    return sub_21CF7F200(v36, &qword_27CE462A0, &qword_21D02CA98);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE462A0, &qword_21D02CA98);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD2FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462A8, &qword_21D02CAA0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455F8, &qword_21D0246F0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455F8, &qword_21D0246F0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v28, &qword_27CE462A8, &qword_21D02CAA0);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE46008, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE462A8, &qword_21D02CAA0);
  }

  sub_21CF7F198(v28, v36, &qword_27CE462A8, &qword_21D02CAA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE462A8, &qword_21D02CAA0);
    return sub_21CF7F200(v36, &qword_27CE462A8, &qword_21D02CAA0);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE462A8, &qword_21D02CAA0);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462B0, &qword_21D02CAA8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455F8, &qword_21D0246F0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455F8, &qword_21D0246F0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21CF7F200(v28, &qword_27CE462B0, &qword_21D02CAA8);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(qword_28121B968, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE462B0, &qword_21D02CAA8);
  }

  sub_21CF7F198(v28, v36, &qword_27CE462B0, &qword_21D02CAA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE462B0, &qword_21D02CAA8);
    return sub_21CF7F200(v36, &qword_27CE462B0, &qword_21D02CAA8);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE462B0, &qword_21D02CAA8);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD3B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462B8, &qword_21D02CAB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455F8, &qword_21D0246F0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455F8, &qword_21D0246F0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21CF7F200(v28, &qword_27CE462B8, &qword_21D02CAB0);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(qword_28121B8C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE462B8, &qword_21D02CAB0);
  }

  sub_21CF7F198(v28, v36, &qword_27CE462B8, &qword_21D02CAB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE462B8, &qword_21D02CAB0);
    return sub_21CF7F200(v36, &qword_27CE462B8, &qword_21D02CAB0);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE462B8, &qword_21D02CAB0);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD4114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462C0, &qword_21D02CAB8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455F8, &qword_21D0246F0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455F8, &qword_21D0246F0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_21CF7F200(v28, &qword_27CE462C0, &qword_21D02CAB8);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE460C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE462C0, &qword_21D02CAB8);
  }

  sub_21CF7F198(v28, v36, &qword_27CE462C0, &qword_21D02CAB8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE462C0, &qword_21D02CAB8);
    return sub_21CF7F200(v36, &qword_27CE462C0, &qword_21D02CAB8);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE462C0, &qword_21D02CAB8);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD46D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_21CF7F198(v3, &v16 - v10, &qword_27CE455F8, &qword_21D0246F0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_21CFD4F90(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_21CFD51C8(v3, a1, a2, a3);
    }

    else
    {
      sub_21CFD5400(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CFD4B20(v3, a1, a2, a3);
    }

    else
    {
      sub_21CFD4D58(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_21CFD48EC(v3, a1, a2, a3);
  }

  result = sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  if (!v4)
  {
LABEL_14:
    v15 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD48EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455F8, &qword_21D0246F0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455F8, &qword_21D0246F0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    sub_21CFFCB6C(qword_28121BA18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  __break(1u);
  return result;
}

uint64_t sub_21CFD4B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455F8, &qword_21D0246F0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455F8, &qword_21D0246F0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    sub_21CFFCB6C(qword_28121BD68, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  __break(1u);
  return result;
}

uint64_t sub_21CFD4D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455F8, &qword_21D0246F0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455F8, &qword_21D0246F0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    sub_21CFFCB6C(&qword_27CE46008, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  __break(1u);
  return result;
}

uint64_t sub_21CFD4F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455F8, &qword_21D0246F0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455F8, &qword_21D0246F0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
    sub_21CFFCB6C(qword_28121B968, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  __break(1u);
  return result;
}

uint64_t sub_21CFD51C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455F8, &qword_21D0246F0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455F8, &qword_21D0246F0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
    sub_21CFFCB6C(qword_28121B8C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  __break(1u);
  return result;
}

uint64_t sub_21CFD5400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455F8, &qword_21D0246F0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455F8, &qword_21D0246F0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    sub_21CFFCB6C(&qword_27CE460C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  __break(1u);
  return result;
}

uint64_t sub_21CFD569C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46290, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD573C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121B828, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD57A8()
{
  sub_21CFFCB6C(qword_28121B828, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);

  return sub_21D021EF4();
}

uint64_t sub_21CFD5828()
{
  result = MEMORY[0x223D3A110](0xD00000000000001DLL, 0x800000021D02E510);
  qword_27CE53910 = 0xD00000000000002CLL;
  *algn_27CE53918 = 0x800000021D02E4E0;
  return result;
}

uint64_t sub_21CFD58BC()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_21CFD5930();
    }
  }

  return result;
}

uint64_t sub_21CFD5930()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0) + 20);
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  sub_21CFFCB6C(qword_28121DF00, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  return sub_21D021E84();
}

uint64_t sub_21CFD5A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD5A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0);
  sub_21CF7F198(a1 + *(v14 + 20), v8, &qword_27CE455F0, &unk_21D026C00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE455F0, &unk_21D026C00);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21CFFCB6C(qword_28121DF00, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
}

uint64_t sub_21CFD5C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D021CE4();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_21CFD5D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE462C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD5DE4(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121B968, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD5E50()
{
  sub_21CFFCB6C(qword_28121B968, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);

  return sub_21D021EF4();
}

uint64_t sub_21CFD5ED0()
{
  result = MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02EC90);
  qword_27CE53938 = 0xD00000000000002CLL;
  unk_27CE53940 = 0x800000021D02E4E0;
  return result;
}

uint64_t sub_21CFD5F44()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53948);
  __swift_project_value_buffer(v0, qword_27CE53948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "DEPRECATED_sentence";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "DEPRECATED_inference_environment_info";
  *(v13 + 1) = 37;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "token_padding";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD6198()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_21CFD6284();
      }

      else if (result == 4)
      {
        v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0) + 32);
LABEL_3:
        v0 = 0;
        sub_21D021E44();
      }
    }

    else
    {
      if (result == 1)
      {
        v1 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0) + 20);
        goto LABEL_3;
      }

      if (result == 2)
      {
        v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0) + 24);
        goto LABEL_3;
      }
    }
  }
}

uint64_t sub_21CFD6284()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0) + 28);
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  sub_21CFFCB6C(qword_28121DF00, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  return sub_21D021E84();
}

uint64_t sub_21CFD6338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
  if (!v4)
  {
    sub_21CFDA0E4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    sub_21CFD6498(v3, a1, a2, a3);
    sub_21CFE56F8(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFD6498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  sub_21CF7F198(a1 + *(v14 + 28), v8, &qword_27CE455F0, &unk_21D026C00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE455F0, &unk_21D026C00);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21CFFCB6C(qword_28121DF00, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
}

uint64_t sub_21CFD66B8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D021CE4();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v10 = (a2 + a1[8]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_21CFD67A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE464F0, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD6844(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121BA18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD68B0()
{
  sub_21CFFCB6C(qword_28121BA18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);

  return sub_21D021EF4();
}

uint64_t sub_21CFD6930()
{
  result = MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02ED10);
  qword_27CE53960 = 0xD00000000000002CLL;
  *algn_27CE53968 = 0x800000021D02E4E0;
  return result;
}

uint64_t sub_21CFD69A4()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53970);
  __swift_project_value_buffer(v0, qword_27CE53970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunk";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD6BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45540, &qword_21D024228);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463A0, &qword_21D02CB40);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45540, &qword_21D024228);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45540, &qword_21D024228);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
      v33 = v48;
    }

    else
    {
      sub_21CF7F200(v28, &qword_27CE463A0, &qword_21D02CB40);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE463A0, &qword_21D02CB40);
  }

  sub_21CF7F198(v28, v36, &qword_27CE463A0, &qword_21D02CB40);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE463A0, &qword_21D02CB40);
    return sub_21CF7F200(v36, &qword_27CE463A0, &qword_21D02CB40);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE463A0, &qword_21D02CB40);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45540, &qword_21D024228);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD7168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45540, &qword_21D024228);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463A8, &qword_21D02CB48);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45540, &qword_21D024228);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45540, &qword_21D024228);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v28, &qword_27CE463A8, &qword_21D02CB48);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE463A8, &qword_21D02CB48);
  }

  sub_21CF7F198(v28, v36, &qword_27CE463A8, &qword_21D02CB48);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE463A8, &qword_21D02CB48);
    return sub_21CF7F200(v36, &qword_27CE463A8, &qword_21D02CB48);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE463A8, &qword_21D02CB48);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45540, &qword_21D024228);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD7724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45540, &qword_21D024228);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_21CF7F198(v3, &v15 - v10, &qword_27CE45540, &qword_21D024228);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CFD7AEC(v3, a1, a2, a3);
  }

  else
  {
    sub_21CFD78B4(v3, a1, a2, a3);
  }

  result = sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD78B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45540, &qword_21D024228);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45540, &qword_21D024228);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45540, &qword_21D024228);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  __break(1u);
  return result;
}

uint64_t sub_21CFD7AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45540, &qword_21D024228);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45540, &qword_21D024228);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45540, &qword_21D024228);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  __break(1u);
  return result;
}

uint64_t sub_21CFD7D3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return sub_21D021CE4();
}

uint64_t sub_21CFD7DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE464F8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD7E90(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE460C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD7EFC()
{
  sub_21CFFCB6C(&qword_27CE460C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);

  return sub_21D021EF4();
}

uint64_t sub_21CFD7F7C()
{
  result = MEMORY[0x223D3A110](0xD00000000000001ALL, 0x800000021D02ED30);
  qword_27CE53988 = 0xD00000000000002CLL;
  unk_27CE53990 = 0x800000021D02E4E0;
  return result;
}

uint64_t sub_21CFD803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = *(a4(0) + 20);
      sub_21D021E44();
    }
  }

  return result;
}

uint64_t sub_21CFD8124(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46500, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD81C4(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121B8C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD8230()
{
  sub_21CFFCB6C(qword_28121B8C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);

  return sub_21D021EF4();
}

uint64_t sub_21CFD830C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE539C0);
  __swift_project_value_buffer(v0, qword_27CE539C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0262A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sentence";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "debug_info";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "output_token_limit_reached";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "encountered_stop_token";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "encountered_stop_sequence";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "finished_first_token";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD85E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_21CFD8D8C(v5, a1, a2, a3);
          break;
        case 5:
          sub_21CFD9348(v5, a1, a2, a3);
          break;
        case 6:
          sub_21CFD9904(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0) + 24);
          sub_21D021E44();
          break;
        case 2:
          sub_21CFD8728();
          break;
        case 3:
          sub_21CFD87DC(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_21CFD8728()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0) + 28);
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0);
  sub_21CFFCB6C(qword_28121BE10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
  return sub_21D021E84();
}

uint64_t sub_21CFD87DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46510, &qword_21D02CC90);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455E0, &qword_21D0246C8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455E0, &qword_21D0246C8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      v33 = v48;
    }

    else
    {
      sub_21CF7F200(v28, &qword_27CE46510, &qword_21D02CC90);
      v35 = v43;
      sub_21D000BB8(v20, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE46078, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46510, &qword_21D02CC90);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46510, &qword_21D02CC90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46510, &qword_21D02CC90);
    return sub_21CF7F200(v36, &qword_27CE46510, &qword_21D02CC90);
  }

  else
  {
    v39 = v44;
    sub_21D000BB8(v36, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46510, &qword_21D02CC90);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455E0, &qword_21D0246C8);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD8D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46518, &qword_21D02CC98);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455E0, &qword_21D0246C8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455E0, &qword_21D0246C8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v28, &qword_27CE46518, &qword_21D02CC98);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(qword_28121C240, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46518, &qword_21D02CC98);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46518, &qword_21D02CC98);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46518, &qword_21D02CC98);
    return sub_21CF7F200(v36, &qword_27CE46518, &qword_21D02CC98);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46518, &qword_21D02CC98);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455E0, &qword_21D0246C8);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46520, &qword_21D02CCA0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455E0, &qword_21D0246C8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455E0, &qword_21D0246C8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v28, &qword_27CE46520, &qword_21D02CCA0);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE46058, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46520, &qword_21D02CCA0);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46520, &qword_21D02CCA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46520, &qword_21D02CCA0);
    return sub_21CF7F200(v36, &qword_27CE46520, &qword_21D02CCA0);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46520, &qword_21D02CCA0);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455E0, &qword_21D0246C8);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD9904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46528, &qword_21D02CCA8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE455E0, &qword_21D0246C8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE455E0, &qword_21D0246C8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21CF7F200(v28, &qword_27CE46528, &qword_21D02CCA8);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE46028, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46528, &qword_21D02CCA8);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46528, &qword_21D02CCA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46528, &qword_21D02CCA8);
    return sub_21CF7F200(v36, &qword_27CE46528, &qword_21D02CCA8);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46528, &qword_21D02CCA8);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE455E0, &qword_21D0246C8);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFD9EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  result = sub_21CFDA0E4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
  if (!v4)
  {
    sub_21CFDA168(v3, a1, a2, a3);
    sub_21CF7F198(v3, v11, &qword_27CE455E0, &qword_21D0246C8);
    v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_21CFDA7F0(v3, a1, a2, a3);
        }

        else
        {
          sub_21CFDAA28(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_21CFDA5B8(v3, a1, a2, a3);
      }

      else
      {
        sub_21CFDA384(v3, a1, a2, a3);
      }

      sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    }

    v15 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFDA0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFDA168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  sub_21CF7F198(a1 + *(v14 + 28), v8, &qword_27CE455E8, &unk_21D0246D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE455E8, &unk_21D0246D0);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
  sub_21CFFCB6C(qword_28121BE10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
}

uint64_t sub_21CFDA384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455E0, &qword_21D0246C8);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455E0, &qword_21D0246C8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
    sub_21CFFCB6C(&qword_27CE46078, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  __break(1u);
  return result;
}

uint64_t sub_21CFDA5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455E0, &qword_21D0246C8);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455E0, &qword_21D0246C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
    sub_21CFFCB6C(qword_28121C240, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  __break(1u);
  return result;
}

uint64_t sub_21CFDA7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455E0, &qword_21D0246C8);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455E0, &qword_21D0246C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
    sub_21CFFCB6C(&qword_27CE46058, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  __break(1u);
  return result;
}

uint64_t sub_21CFDAA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455E0, &qword_21D0246C8);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE455E0, &qword_21D0246C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
    sub_21CFFCB6C(&qword_27CE46028, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  __break(1u);
  return result;
}

uint64_t sub_21CFDAC64@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + a1[5];
  sub_21D021CE4();
  v6 = a1[6];
  v7 = a1[7];
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v7, 1, 1, v9);
}

uint64_t sub_21CFDAD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46508, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFDAE24(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121BD68, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFDAE90()
{
  sub_21CFFCB6C(qword_28121BD68, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);

  return sub_21D021EF4();
}

uint64_t sub_21CFDAF0C()
{
  if (qword_27CE44F90 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE539B0;
  v2 = *algn_27CE539B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0x6E4967756265442ELL, 0xEA00000000006F66);

  qword_27CE539D8 = v1;
  unk_27CE539E0 = v2;
  return result;
}

uint64_t sub_21CFDAFB4()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE539E8);
  __swift_project_value_buffer(v0, qword_27CE539E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21D0262B0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "DEPRECATED_harness";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_21D021FF4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "DEPRECATED_model_name";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "perf_metrics";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "inference_environment_info";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "speculative_decoding_metrics";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "inference_metrics";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "constrained_decoding_metrics";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v7();
  return sub_21D022004();
}

uint64_t sub_21CFDB2B4()
{
  v0 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v4 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceEnvironmentInfo;
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__constrainedDecodingMetrics;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  result = (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  qword_28121BFC0 = v3;
  return result;
}

uint64_t sub_21CFDB460(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46498, &qword_21D02CC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45230, &qword_21D02CC30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45250, &qword_21D02CC40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v45 - v17;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v19 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
  v20 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceEnvironmentInfo;
  v22 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  v24 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  v46 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  v26 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__constrainedDecodingMetrics;
  v47 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__constrainedDecodingMetrics;
  v28 = type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  swift_beginAccess();
  v29 = a1[2];
  v30 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v29;
  *(v1 + 24) = v30;
  swift_beginAccess();
  v31 = a1[4];
  v32 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v31;
  *(v1 + 40) = v32;
  v33 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
  swift_beginAccess();
  sub_21CF7F198(a1 + v33, v18, &qword_27CE45248, &unk_21D023560);
  swift_beginAccess();

  sub_21CF8F4D4(v18, v1 + v19, &qword_27CE45248, &unk_21D023560);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceEnvironmentInfo;
  swift_beginAccess();
  v35 = v48;
  sub_21CF7F198(a1 + v34, v48, &qword_27CE455F0, &unk_21D026C00);
  swift_beginAccess();
  sub_21CF8F4D4(v35, v1 + v21, &qword_27CE455F0, &unk_21D026C00);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  swift_beginAccess();
  v37 = v49;
  sub_21CF7F198(a1 + v36, v49, &qword_27CE45250, &qword_21D02CC40);
  swift_beginAccess();
  sub_21CF8F4D4(v37, v1 + v23, &qword_27CE45250, &qword_21D02CC40);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  swift_beginAccess();
  v39 = v50;
  sub_21CF7F198(a1 + v38, v50, &qword_27CE45230, &qword_21D02CC30);
  v40 = v46;
  swift_beginAccess();
  sub_21CF8F4D4(v39, v1 + v40, &qword_27CE45230, &qword_21D02CC30);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__constrainedDecodingMetrics;
  swift_beginAccess();
  v42 = v51;
  sub_21CF7F198(a1 + v41, v51, &qword_27CE46498, &qword_21D02CC20);

  v43 = v47;
  swift_beginAccess();
  sub_21CF8F4D4(v42, v1 + v43, &qword_27CE46498, &qword_21D02CC20);
  swift_endAccess();
  return v1;
}

uint64_t sub_21CFDBAB4()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_21CF7F200(v0 + OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics, &qword_27CE45248, &unk_21D023560);
  sub_21CF7F200(v0 + OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceEnvironmentInfo, &qword_27CE455F0, &unk_21D026C00);
  sub_21CF7F200(v0 + OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics, &qword_27CE45250, &qword_21D02CC40);
  sub_21CF7F200(v0 + OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics, &qword_27CE45230, &qword_21D02CC30);
  sub_21CF7F200(v0 + OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__constrainedDecodingMetrics, &qword_27CE46498, &qword_21D02CC20);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21CFDBBE0()
{
  sub_21CFC4EC8(319, qword_28121CCC0, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_21CFC4EC8(319, qword_28121DEA0, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_21CFC4EC8(319, qword_28121B720, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_21CFC4EC8(319, qword_28121DDD8, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_21CFC4EC8(319, &qword_27CE45A48, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics, MEMORY[0x277D83D88]);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21CFDBF20()
{
  sub_21CFE0580(319, &qword_27CE45A60, MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFDC078()
{
  sub_21CFC4EC8(319, &qword_28121B3F8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFDC1F8()
{
  sub_21CFC4EC8(319, &qword_27CE45A70, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B3B8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CFE0580(319, &qword_28121B100, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21CFDC3C0()
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_21CFDC4D0()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_27CE45A98, &type metadata for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TokenStatus, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_27CE45AA0, &type metadata for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics.PreviousTokenType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CFDC674()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_27CE45A98, &type metadata for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TokenStatus, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B3B8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFDC7C8()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B3B8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CFDC8E0()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B3A8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFDCA68()
{
  sub_21CFC4EC8(319, &qword_27CE45AE0, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CFDCB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_228Tm);
}

uint64_t sub_21CFDCBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_229Tm);
}

uint64_t __swift_get_extra_inhabitant_index_228Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    return ((*(a1 + 8) >> 29) >> 31) & (((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3);
  }

  v7 = sub_21D021CF4();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C0, &unk_21D023680);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void *__swift_store_extra_inhabitant_index_229Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 1)
  {
    *result = 0;
    result[1] = (((~a2 & 2) != 0) | ((2 * ~a2) & 3)) << 60;
  }

  else
  {
    v8 = sub_21D021CF4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C0, &unk_21D023680);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_21CFDCF04()
{
  sub_21CFE0580(319, &qword_27CE45B08, &type metadata for Apple_Cloudml_Inference_Tie_ImageData.OneOf_Representative, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFC4EC8(319, &qword_27CE45B10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CFDD020(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21CFDD074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

void sub_21CFDD11C()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_27CE45B28, &type metadata for Apple_Cloudml_Inference_Tie_ImageMetadata.ImageFormat, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFDD31C()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFC4EC8(319, qword_28121C540, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CFDD454(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_21D021CF4();
  if (v7 <= 0x3F)
  {
    sub_21CFE0580(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CFDD628()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B108, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121E0A0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CFE0580(319, &qword_28121B3B8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CFDD7AC()
{
  sub_21CFC4EC8(319, &qword_27CE45B70, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B108, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CFE0580(319, &qword_28121B100, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21CFDD9A8()
{
  result = sub_21D021CF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21CFDDAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_371Tm);
}

uint64_t sub_21CFDDB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_372Tm);
}

uint64_t sub_21CFDDBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_21CFDDCA0()
{
  sub_21CFC4EC8(319, &qword_28121B3F0, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21CFC4EC8(319, &qword_28121B3E0, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21D021CF4();
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFDDE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_21D021CF4();
  if (v11 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      a7(319, a4, a5, a6);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CFDE0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21CFDE210()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CFDE33C()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_27CE45BB8, &type metadata for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions.TokenizeMode, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CFDE460()
{
  sub_21CFE0580(319, &qword_28121B3D8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21CFC4EC8(319, qword_28121CF20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21D021CF4();
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CFE0580(319, &qword_28121B3A8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_21CFE0580(319, &qword_28121B3B0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_21CFE0580(319, &qword_28121B3B8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_21CFC4EC8(319, qword_28121D310, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints, MEMORY[0x277D83D88]);
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

uint64_t sub_21CFDE7A0()
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_21CFDE92C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_21CFE0580(319, a4, a5, MEMORY[0x277D83D88]);
  if (v5 <= 0x3F)
  {
    sub_21D021CF4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_509Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_21D021CF4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_510Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21D021CF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CFDEC68()
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21CFDEDE8()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CFDEEB0()
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_275Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_21D021CF4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_276Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_21D021CF4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_21CFDF2A0()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFC4EC8(319, qword_28121DEA0, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CFDF37C()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFC4EC8(319, qword_28121E040, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFC4EC8(319, qword_28121DF60, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_371Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21D021CF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_372Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21D021CF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_21CFDF650()
{
  sub_21CFE0580(319, &qword_28121B3C8, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B3D8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21D021CF4();
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CFE0580(319, &qword_28121DFC0, &type metadata for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt.Source, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CFDF7E4()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CFC4EC8(319, qword_28121DEA0, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_266Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
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

uint64_t __swift_store_extra_inhabitant_index_267Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
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

uint64_t sub_21CFDFAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_21D021CF4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21D021CF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21D021CF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_21CFDFCB0()
{
  sub_21CFC4EC8(319, &qword_27CE45BF0, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B0E0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFDFE04()
{
  sub_21CFC4EC8(319, qword_28121C168, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFC4EC8(319, qword_28121BDC8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21CFDFFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  result = a4(319);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      result = a6(319);
      if (v13 <= 0x3F)
      {
        result = a7(319);
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_251Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
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

uint64_t __swift_store_extra_inhabitant_index_252Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
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

void sub_21CFE03BC()
{
  sub_21CFC4EC8(319, &qword_28121BBE0, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21D021CF4();
    if (v1 <= 0x3F)
    {
      sub_21CFE0580(319, qword_28121BB68, &type metadata for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.Status, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CFE0580(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CFE0580(319, &qword_28121B108, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21CFE0580(319, &qword_28121B3B8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21CFE0580(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21CFE05E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_167Tm_8);
}

uint64_t sub_21CFE0658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_168Tm_8);
}

void sub_21CFE0700()
{
  sub_21D021CF4();
  if (v0 <= 0x3F)
  {
    sub_21CFE0580(319, &qword_28121B108, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_219Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_21D021CF4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_220Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_21D021CF4();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void sub_21CFE09FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_21CFC4EC8(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_21D021CF4();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21CFE0ADC()
{
  result = qword_27CE45C30;
  if (!qword_27CE45C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C30);
  }

  return result;
}

unint64_t sub_21CFE0B34()
{
  result = qword_27CE45C38;
  if (!qword_27CE45C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C38);
  }

  return result;
}

unint64_t sub_21CFE0B8C()
{
  result = qword_27CE45C40;
  if (!qword_27CE45C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C40);
  }

  return result;
}

unint64_t sub_21CFE0BE4()
{
  result = qword_28121DFD0;
  if (!qword_28121DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DFD0);
  }

  return result;
}

unint64_t sub_21CFE0C3C()
{
  result = qword_28121DFD8;
  if (!qword_28121DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DFD8);
  }

  return result;
}

unint64_t sub_21CFE0C94()
{
  result = qword_28121DFC8;
  if (!qword_28121DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DFC8);
  }

  return result;
}

unint64_t sub_21CFE0CEC()
{
  result = qword_27CE45C48;
  if (!qword_27CE45C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C48);
  }

  return result;
}

unint64_t sub_21CFE0D44()
{
  result = qword_27CE45C50;
  if (!qword_27CE45C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C50);
  }

  return result;
}

unint64_t sub_21CFE0D9C()
{
  result = qword_27CE45C58;
  if (!qword_27CE45C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C58);
  }

  return result;
}

unint64_t sub_21CFE0DF4()
{
  result = qword_27CE45C60;
  if (!qword_27CE45C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C60);
  }

  return result;
}

unint64_t sub_21CFE0E4C()
{
  result = qword_27CE45C68;
  if (!qword_27CE45C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C68);
  }

  return result;
}

unint64_t sub_21CFE0EA4()
{
  result = qword_27CE45C70;
  if (!qword_27CE45C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C70);
  }

  return result;
}

unint64_t sub_21CFE0EFC()
{
  result = qword_27CE45C78;
  if (!qword_27CE45C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C78);
  }

  return result;
}

unint64_t sub_21CFE0F54()
{
  result = qword_27CE45C80;
  if (!qword_27CE45C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C80);
  }

  return result;
}

unint64_t sub_21CFE0FAC()
{
  result = qword_27CE45C88;
  if (!qword_27CE45C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C88);
  }

  return result;
}

unint64_t sub_21CFE1004()
{
  result = qword_27CE45C90;
  if (!qword_27CE45C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C90);
  }

  return result;
}

unint64_t sub_21CFE105C()
{
  result = qword_27CE45C98;
  if (!qword_27CE45C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45C98);
  }

  return result;
}

unint64_t sub_21CFE10B4()
{
  result = qword_27CE45CA0;
  if (!qword_27CE45CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CA0);
  }

  return result;
}

unint64_t sub_21CFE110C()
{
  result = qword_27CE45CA8;
  if (!qword_27CE45CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CA8);
  }

  return result;
}

unint64_t sub_21CFE1164()
{
  result = qword_27CE45CB0;
  if (!qword_27CE45CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CB0);
  }

  return result;
}

unint64_t sub_21CFE11BC()
{
  result = qword_27CE45CB8;
  if (!qword_27CE45CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CB8);
  }

  return result;
}

unint64_t sub_21CFE1214()
{
  result = qword_27CE45CC0;
  if (!qword_27CE45CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CC0);
  }

  return result;
}

unint64_t sub_21CFE126C()
{
  result = qword_27CE45CC8;
  if (!qword_27CE45CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CC8);
  }

  return result;
}

unint64_t sub_21CFE12C4()
{
  result = qword_27CE45CD0;
  if (!qword_27CE45CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CD0);
  }

  return result;
}

unint64_t sub_21CFE131C()
{
  result = qword_27CE45CD8;
  if (!qword_27CE45CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CD8);
  }

  return result;
}

unint64_t sub_21CFE1374()
{
  result = qword_27CE45CE0;
  if (!qword_27CE45CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CE0);
  }

  return result;
}

unint64_t sub_21CFE13CC()
{
  result = qword_27CE45CE8;
  if (!qword_27CE45CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45CE8);
  }

  return result;
}

uint64_t sub_21CFE1488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_21CFE1558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_21CFE16C4();
          break;
        case 2:
          sub_21CFE1748(a2, a1, a3, a4, MEMORY[0x277D217D0]);
          break;
        case 3:
          sub_21CFE17D4();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_21CFE1A68();
      }

      else if (result == 7)
      {
        sub_21CFE1B44();
      }
    }

    else if (result == 4)
    {
      sub_21CFE18B0();
    }

    else
    {
      sub_21CFE198C();
    }
  }

  return result;
}

uint64_t sub_21CFE16C4()
{
  swift_beginAccess();
  sub_21D021E44();
  return swift_endAccess();
}

uint64_t sub_21CFE1748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2 + 32, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21CFE17D4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  sub_21CFFCB6C(qword_28121CD10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFE18B0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  sub_21CFFCB6C(qword_28121DF00, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFE198C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  sub_21CFFCB6C(qword_28121B788, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFE1A68()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  sub_21CFFCB6C(qword_28121DE40, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFE1B44()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  sub_21CFFCB6C(&qword_27CE45FA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFE1C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21CFE1D28(a1);
  if (!v4)
  {
    sub_21CFE1DC4(a1);
    sub_21CFE1E60(a1, a2, a3, a4);
    sub_21CFE2088(a1, a2, a3, a4);
    sub_21CFE22B0(a1, a2, a3, a4);
    sub_21CFE24D8(a1, a2, a3, a4);
    return sub_21CFE2700(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_21CFE1D28(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFE1DC4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFE1E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE45248, &unk_21D023560);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45248, &unk_21D023560);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
  sub_21CFFCB6C(qword_28121CD10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
}

uint64_t sub_21CFE2088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceEnvironmentInfo;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE455F0, &unk_21D026C00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE455F0, &unk_21D026C00);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21CFFCB6C(qword_28121DF00, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
}

uint64_t sub_21CFE22B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45250, &qword_21D02CC40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE45250, &qword_21D02CC40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45250, &qword_21D02CC40);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
  sub_21CFFCB6C(qword_28121B788, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
}

uint64_t sub_21CFE24D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45230, &qword_21D02CC30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE45230, &qword_21D02CC30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45230, &qword_21D02CC30);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  sub_21CFFCB6C(qword_28121DE40, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
}

uint64_t sub_21CFE2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46498, &qword_21D02CC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__constrainedDecodingMetrics;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE46498, &qword_21D02CC20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE46498, &qword_21D02CC20);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
  sub_21CFFCB6C(&qword_27CE45FA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
}

BOOL sub_21CFE2928(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  v140 = *(v4 - 8);
  v141 = v4;
  v5 = *(v140 + 64);
  MEMORY[0x28223BE20](v4);
  v136 = (&v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46490, &qword_21D02CC18);
  v7 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v142 = &v134 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46498, &qword_21D02CC20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v137 = (&v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v149 = &v134 - v13;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v146 = *(v14 - 8);
  v147 = v14;
  v15 = *(v146 + 64);
  MEMORY[0x28223BE20](v14);
  v138 = (&v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464A0, &qword_21D02CC28);
  v17 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v148 = &v134 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45230, &qword_21D02CC30);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v143 = (&v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v156 = &v134 - v23;
  v24 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v153 = *(v24 - 8);
  v154 = v24;
  v25 = *(v153 + 64);
  MEMORY[0x28223BE20](v24);
  v144 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464A8, &qword_21D02CC38);
  v27 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v155 = &v134 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45250, &qword_21D02CC40);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v163 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v164 = &v134 - v33;
  v34 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v160 = *(v34 - 8);
  v161 = v34;
  v35 = *(v160 + 64);
  MEMORY[0x28223BE20](v34);
  v151 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46468, &qword_21D02CBF0);
  v37 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v162 = &v134 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v157 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v165 = &v134 - v43;
  v44 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v166 = *(v44 - 8);
  v45 = *(v166 + 64);
  MEMORY[0x28223BE20](v44);
  v158 = (&v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464B0, &unk_21D02CC48);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v134 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v55 = (&v134 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v53);
  v57 = &v134 - v56;
  swift_beginAccess();
  v58 = a1;
  v60 = *(a1 + 16);
  v59 = *(a1 + 24);
  swift_beginAccess();
  v61 = a2[3];
  if (v59)
  {
    if (!v61 || (v60 != a2[2] || v59 != v61) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  swift_beginAccess();
  v62 = *(v58 + 32);
  v63 = *(v58 + 40);
  swift_beginAccess();
  v64 = a2[5];
  if (v63)
  {
    if (!v64 || (v62 != a2[4] || v63 != v64) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v150 = a2;
  v65 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
  swift_beginAccess();
  v134 = v58;
  sub_21CF7F198(v58 + v65, v57, &qword_27CE45248, &unk_21D023560);
  v66 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
  swift_beginAccess();
  v67 = *(v47 + 48);
  sub_21CF7F198(v57, v50, &qword_27CE45248, &unk_21D023560);
  v135 = v67;
  sub_21CF7F198(v150 + v66, &v50[v67], &qword_27CE45248, &unk_21D023560);
  v68 = *(v166 + 48);
  if (v68(v50, 1, v44) == 1)
  {
    v58 = v134;

    sub_21CF7F200(v57, &qword_27CE45248, &unk_21D023560);
    if (v68(&v50[v135], 1, v44) == 1)
    {
      sub_21CF7F200(v50, &qword_27CE45248, &unk_21D023560);
      goto LABEL_22;
    }

LABEL_20:
    sub_21CF7F200(v50, &qword_27CE464B0, &unk_21D02CC48);

LABEL_45:

    return 0;
  }

  sub_21CF7F198(v50, v55, &qword_27CE45248, &unk_21D023560);
  v69 = v135;
  if (v68(&v50[v135], 1, v44) == 1)
  {

    sub_21CF7F200(v57, &qword_27CE45248, &unk_21D023560);
    sub_21D000B58(v55, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    goto LABEL_20;
  }

  v70 = &v50[v69];
  v71 = v158;
  sub_21D000BB8(v70, v158, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

  v72 = sub_21D009350(v55, v71);
  sub_21D000B58(v71, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
  sub_21CF7F200(v57, &qword_27CE45248, &unk_21D023560);
  sub_21D000B58(v55, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
  sub_21CF7F200(v50, &qword_27CE45248, &unk_21D023560);
  if ((v72 & 1) == 0)
  {
LABEL_44:

    goto LABEL_45;
  }

LABEL_22:
  v73 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceEnvironmentInfo;
  swift_beginAccess();
  v74 = v165;
  sub_21CF7F198(v58 + v73, v165, &qword_27CE455F0, &unk_21D026C00);
  v75 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceEnvironmentInfo;
  swift_beginAccess();
  v76 = *(v159 + 48);
  v77 = v162;
  sub_21CF7F198(v74, v162, &qword_27CE455F0, &unk_21D026C00);
  sub_21CF7F198(v150 + v75, v77 + v76, &qword_27CE455F0, &unk_21D026C00);
  v78 = v161;
  v79 = *(v160 + 48);
  if (v79(v77, 1, v161) == 1)
  {
    sub_21CF7F200(v74, &qword_27CE455F0, &unk_21D026C00);
    v80 = v79(v77 + v76, 1, v78);
    v82 = v163;
    v81 = v164;
    if (v80 == 1)
    {
      sub_21CF7F200(v77, &qword_27CE455F0, &unk_21D026C00);
      goto LABEL_29;
    }

LABEL_27:
    v86 = &qword_27CE46468;
    v87 = &qword_21D02CBF0;
    v88 = v77;
LABEL_43:
    sub_21CF7F200(v88, v86, v87);
    goto LABEL_44;
  }

  v83 = v157;
  sub_21CF7F198(v77, v157, &qword_27CE455F0, &unk_21D026C00);
  v84 = v79(v77 + v76, 1, v78);
  v85 = v163;
  v81 = v164;
  if (v84 == 1)
  {
    sub_21CF7F200(v165, &qword_27CE455F0, &unk_21D026C00);
    sub_21D000B58(v83, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
    goto LABEL_27;
  }

  v89 = v77 + v76;
  v90 = v151;
  sub_21D000BB8(v89, v151, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  LODWORD(v166) = sub_21D00D9DC(v83, v90);
  sub_21D000B58(v90, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21CF7F200(v165, &qword_27CE455F0, &unk_21D026C00);
  sub_21D000B58(v83, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21CF7F200(v77, &qword_27CE455F0, &unk_21D026C00);
  v82 = v85;
  if ((v166 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_29:
  v91 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  swift_beginAccess();
  sub_21CF7F198(v58 + v91, v81, &qword_27CE45250, &qword_21D02CC40);
  v92 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  v93 = v150;
  swift_beginAccess();
  v94 = *(v152 + 48);
  v95 = v81;
  v96 = v81;
  v97 = v155;
  sub_21CF7F198(v95, v155, &qword_27CE45250, &qword_21D02CC40);
  v98 = v97;
  sub_21CF7F198(v93 + v92, v97 + v94, &qword_27CE45250, &qword_21D02CC40);
  v99 = v154;
  v100 = *(v153 + 48);
  if (v100(v97, 1, v154) == 1)
  {
    sub_21CF7F200(v96, &qword_27CE45250, &qword_21D02CC40);
    v101 = v100(v97 + v94, 1, v99);
    v102 = v156;
    if (v101 == 1)
    {
      sub_21CF7F200(v97, &qword_27CE45250, &qword_21D02CC40);
      goto LABEL_36;
    }

LABEL_34:
    v86 = &qword_27CE464A8;
    v87 = &qword_21D02CC38;
LABEL_42:
    v88 = v98;
    goto LABEL_43;
  }

  sub_21CF7F198(v97, v82, &qword_27CE45250, &qword_21D02CC40);
  v103 = v100(v97 + v94, 1, v99);
  v102 = v156;
  if (v103 == 1)
  {
    sub_21CF7F200(v164, &qword_27CE45250, &qword_21D02CC40);
    sub_21D000B58(v82, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
    goto LABEL_34;
  }

  v104 = v97 + v94;
  v105 = v144;
  sub_21D000BB8(v104, v144, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
  v106 = sub_21D0062C4(v82, v105);
  sub_21D000B58(v105, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
  sub_21CF7F200(v164, &qword_27CE45250, &qword_21D02CC40);
  sub_21D000B58(v82, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
  sub_21CF7F200(v97, &qword_27CE45250, &qword_21D02CC40);
  if ((v106 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_36:
  v107 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  swift_beginAccess();
  sub_21CF7F198(v58 + v107, v102, &qword_27CE45230, &qword_21D02CC30);
  v108 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  v109 = v102;
  v110 = v150;
  swift_beginAccess();
  v111 = *(v145 + 48);
  v112 = v148;
  sub_21CF7F198(v109, v148, &qword_27CE45230, &qword_21D02CC30);
  v98 = v112;
  sub_21CF7F198(v110 + v108, v112 + v111, &qword_27CE45230, &qword_21D02CC30);
  v113 = v147;
  v114 = *(v146 + 48);
  if (v114(v112, 1, v147) == 1)
  {
    sub_21CF7F200(v109, &qword_27CE45230, &qword_21D02CC30);
    v115 = v114(v112 + v111, 1, v113);
    v116 = v149;
    if (v115 == 1)
    {
      sub_21CF7F200(v112, &qword_27CE45230, &qword_21D02CC30);
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  v117 = v143;
  sub_21CF7F198(v112, v143, &qword_27CE45230, &qword_21D02CC30);
  v118 = v114(v112 + v111, 1, v113);
  v116 = v149;
  if (v118 == 1)
  {
    sub_21CF7F200(v156, &qword_27CE45230, &qword_21D02CC30);
    sub_21D000B58(v117, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
LABEL_41:
    v86 = &qword_27CE464A0;
    v87 = &qword_21D02CC28;
    goto LABEL_42;
  }

  v120 = v112 + v111;
  v121 = v138;
  sub_21D000BB8(v120, v138, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  v122 = sub_21D00D7BC(v117, v121);
  sub_21D000B58(v121, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  sub_21CF7F200(v156, &qword_27CE45230, &qword_21D02CC30);
  sub_21D000B58(v117, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  sub_21CF7F200(v112, &qword_27CE45230, &qword_21D02CC30);
  if ((v122 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_48:
  v123 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__constrainedDecodingMetrics;
  swift_beginAccess();
  sub_21CF7F198(v58 + v123, v116, &qword_27CE46498, &qword_21D02CC20);
  v124 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__constrainedDecodingMetrics;
  v125 = v150;
  swift_beginAccess();
  v126 = *(v139 + 48);
  v127 = v142;
  sub_21CF7F198(v116, v142, &qword_27CE46498, &qword_21D02CC20);
  sub_21CF7F198(v125 + v124, v127 + v126, &qword_27CE46498, &qword_21D02CC20);
  v128 = v141;
  v129 = *(v140 + 48);
  if (v129(v127, 1, v141) != 1)
  {
    v130 = v137;
    sub_21CF7F198(v127, v137, &qword_27CE46498, &qword_21D02CC20);
    if (v129(v127 + v126, 1, v128) == 1)
    {

      sub_21CF7F200(v149, &qword_27CE46498, &qword_21D02CC20);
      sub_21D000B58(v130, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
      goto LABEL_54;
    }

    v131 = v127 + v126;
    v132 = v136;
    sub_21D000BB8(v131, v136, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
    v133 = sub_21D003748(v130, v132);

    sub_21D000B58(v132, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
    sub_21CF7F200(v149, &qword_27CE46498, &qword_21D02CC20);
    sub_21D000B58(v130, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
    sub_21CF7F200(v127, &qword_27CE46498, &qword_21D02CC20);
    return (v133 & 1) != 0;
  }

  sub_21CF7F200(v116, &qword_27CE46498, &qword_21D02CC20);
  if (v129(v127 + v126, 1, v128) != 1)
  {
LABEL_54:
    sub_21CF7F200(v127, &qword_27CE46490, &qword_21D02CC18);
    return 0;
  }

  sub_21CF7F200(v127, &qword_27CE46498, &qword_21D02CC20);
  return 1;
}

uint64_t sub_21CFE3CC0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  sub_21D021CE4();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_21CFE3D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46530, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE3E04(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121BE10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE3E70()
{
  sub_21CFFCB6C(qword_28121BE10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);

  return sub_21D021EF4();
}

uint64_t sub_21CFE3F30()
{
  if (qword_27CE44F90 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE539B0;
  v2 = *algn_27CE539B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0xD000000000000018, 0x800000021D02EE90);

  qword_27CE53A00 = v1;
  *algn_27CE53A08 = v2;
  return result;
}

uint64_t sub_21CFE400C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46538, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE40AC(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE46078, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE4118()
{
  sub_21CFFCB6C(&qword_27CE46078, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);

  return sub_21D021EF4();
}

uint64_t sub_21CFE4194()
{
  if (qword_27CE44F90 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE539B0;
  v2 = *algn_27CE539B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0xD000000000000018, 0x800000021D02EEB0);

  qword_27CE53A28 = v1;
  unk_27CE53A30 = v2;
  return result;
}

uint64_t sub_21CFE42B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_21CFD641C(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFE4338(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46540, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE43D8(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE46058, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE4444()
{
  sub_21CFFCB6C(&qword_27CE46058, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);

  return sub_21D021EF4();
}

uint64_t sub_21CFE44F0()
{
  if (qword_27CE44F90 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE539B0;
  v2 = *algn_27CE539B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0xD000000000000015, 0x800000021D02EEE0);

  qword_27CE53A50 = v1;
  *algn_27CE53A58 = v2;
  return result;
}

uint64_t sub_21CFE45CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46548, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE466C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121C240, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE46D8()
{
  sub_21CFFCB6C(qword_28121C240, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);

  return sub_21D021EF4();
}

uint64_t sub_21CFE4754()
{
  if (qword_27CE44F90 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE539B0;
  v2 = *algn_27CE539B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0xD00000000000001ELL, 0x800000021D02EF00);

  qword_27CE53A78 = v1;
  unk_27CE53A80 = v2;
  return result;
}

uint64_t sub_21CFE4830(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46550, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE48D0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE46028, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE493C()
{
  sub_21CFFCB6C(&qword_27CE46028, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);

  return sub_21D021EF4();
}

uint64_t sub_21CFE49E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x223D3A110](a2, a3);
  *a4 = 0xD00000000000002CLL;
  *a5 = 0x800000021D02E4E0;
  return result;
}

uint64_t sub_21CFE4A54()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53AB0);
  __swift_project_value_buffer(v0, qword_27CE53AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0262A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status_message";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "status_domain";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "status_code";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "token_limit_reached";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "trigger_radar_on_client";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFE4D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21D021D74();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v14 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0) + 36);
            sub_21D021DF4();
            break;
          case 5:
            sub_21CFE4F58(v5, a1, a2, a3);
            break;
          case 6:
            v13 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0) + 40);
            sub_21D021D94();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_21CFE4ED0(a1, v5, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse, sub_21D00F008);
            goto LABEL_5;
          case 2:
            v11 = v4;
            v15 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0) + 28);
            break;
          case 3:
            v11 = v4;
            v12 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0) + 32);
            break;
          default:
            goto LABEL_5;
        }

        v4 = v11;
        sub_21D021E44();
      }

LABEL_5:
      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFE4ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 24);
  a6();
  return sub_21D021DA4();
}

uint64_t sub_21CFE4F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46568, &qword_21D02CCB0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_21CF7F198(v49, v13, &qword_27CE455D8, &qword_21D0246C0);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_21CF7F200(v13, &qword_27CE455D8, &qword_21D0246C0);
    v30 = v44;
  }

  else
  {
    sub_21D000BB8(v13, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
    sub_21D000BB8(v21, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
    sub_21CF7F200(v27, &qword_27CE46568, &qword_21D02CCB0);
    v31 = v42;
    sub_21D000BB8(v19, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
    sub_21D000BB8(v31, v27, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_21CFFCB6C(&qword_27CE45FE8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  v32 = v45;
  sub_21D021E84();
  v33 = v43;
  if (v32)
  {
    return sub_21CF7F200(v27, &qword_27CE46568, &qword_21D02CCB0);
  }

  sub_21CF7F198(v27, v43, &qword_27CE46568, &qword_21D02CCB0);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_21CF7F200(v27, &qword_27CE46568, &qword_21D02CCB0);
    return sub_21CF7F200(v33, &qword_27CE46568, &qword_21D02CCB0);
  }

  else
  {
    v35 = v40;
    sub_21D000BB8(v33, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
    if (v29 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v27, &qword_27CE46568, &qword_21D02CCB0);
    v36 = v49;
    sub_21CF7F200(v49, &qword_27CE455D8, &qword_21D0246C0);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_21CFE54A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFE5638(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse, sub_21D00F008);
  if (!v4)
  {
    sub_21CFEF57C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    sub_21CFE56F8(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    sub_21CFCA59C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse, 4, MEMORY[0x277D21848]);
    sub_21CFE577C(v3, a1, a2, a3);
    sub_21CFEBD54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    v9 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFE5638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  result = a5(0);
  v10 = (a1 + *(result + 24));
  if ((*(v10 + 9) & 1) == 0)
  {
    v11 = *v10;
    v12 = v10[1] & 1;
    a6(result, v9);
    return sub_21D021F44();
  }

  return result;
}

uint64_t sub_21CFE56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFE577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE455D8, &qword_21D0246C0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE455D8, &qword_21D0246C0);
  }

  sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  sub_21CFFCB6C(&qword_27CE45FE8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  sub_21D021FE4();
  return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
}

uint64_t sub_21CFE597C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + a1[5];
  result = sub_21D021CE4();
  v7 = a1[7];
  v8 = a2 + a1[6];
  *(v8 + 8) = 256;
  *v8 = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[9];
  v11 = (a2 + a1[8]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a2 + a1[10]) = 2;
  return result;
}

uint64_t sub_21CFE5A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46558, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE5B30(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE46008, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE5B9C()
{
  sub_21CFFCB6C(&qword_27CE46008, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);

  return sub_21D021EF4();
}

uint64_t sub_21CFE5C1C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53AC8);
  __swift_project_value_buffer(v0, qword_27CE53AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OK";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ERROR";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFE5E4C()
{
  if (qword_27CE44FF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE53AA0;
  v2 = *algn_27CE53AA8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02EFA0);

  qword_27CE53AE0 = v1;
  *algn_27CE53AE8 = v2;
  return result;
}

uint64_t sub_21CFE5EF4()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53AF0);
  __swift_project_value_buffer(v0, qword_27CE53AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "max_tokens";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "allowed_max_tokens";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "input_tokens_count";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "context_length";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFE6144()
{
  result = sub_21D021D74();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0) + 24);
      }

      v0 = v3;
      sub_21D021DF4();
LABEL_13:
      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFE6230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFCA484(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached, MEMORY[0x277D21848]);
  if (!v4)
  {
    sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached, 2, MEMORY[0x277D21848]);
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached, 3, MEMORY[0x277D21848]);
    sub_21CFE6378(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached, MEMORY[0x277D21848]);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFE6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 32));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 4, a3, a4);
  }

  return result;
}

uint64_t sub_21CFE6400@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_21CFE64BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46570, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE655C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45FE8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE65C8()
{
  sub_21CFFCB6C(&qword_27CE45FE8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);

  return sub_21D021EF4();
}

uint64_t sub_21CFE6648()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53B08);
  __swift_project_value_buffer(v0, qword_27CE53B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metric_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metric_nanos";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "child_metrics";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFE685C()
{
  result = sub_21D021D74();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
          sub_21CFFCB6C(qword_28121CD10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          sub_21D021E74();
          break;
        case 2:
          v3 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0) + 28);
          sub_21D021E64();
          break;
        case 1:
          v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0) + 24);
          sub_21D021E44();
          break;
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFE69A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21CFDA0E4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
  if (!v4)
  {
    sub_21CFE7E88(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
      sub_21CFFCB6C(qword_28121CD10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      sub_21D021FD4();
    }

    v11 = v5 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFE6AE8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = sub_21D021CE4();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t sub_21CFE6B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46578, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE6C2C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121CD10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE6C98()
{
  sub_21CFFCB6C(qword_28121CD10, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

  return sub_21D021EF4();
}

uint64_t sub_21CFE6D14()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53B20);
  __swift_project_value_buffer(v0, qword_27CE53B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "speculative_decoding_acceptance_rate";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "draft_model_inference_call_count";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "target_model_inference_call_count";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "draft_output_token_count";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "target_output_token_count";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "draft_model_total_inference_latency_millis";
  *(v18 + 1) = 42;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "target_model_total_inference_latency_millis";
  *(v20 + 1) = 43;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "draft_steps";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFE7064()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          v10 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0) + 44);
          goto LABEL_22;
        }

        if (result == 8)
        {
          v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0) + 48);
          goto LABEL_3;
        }
      }

      else
      {
        if (result == 5)
        {
          v1 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0) + 36);
          goto LABEL_3;
        }

        v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0) + 40);
LABEL_22:
        v0 = 0;
        sub_21D021E64();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0) + 28);
      }

      else
      {
        v6 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0) + 32);
      }

LABEL_3:
      v0 = 0;
      sub_21D021E54();
    }

    else if (result == 1)
    {
      v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0) + 20);
      sub_21D021DE4();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_21CFE71F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFE7400(v3);
  if (!v4)
  {
    sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics, 2, MEMORY[0x277D21860]);
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics, 3, MEMORY[0x277D21860]);
    sub_21CFE6378(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics, MEMORY[0x277D21860]);
    sub_21CFCA59C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics, 5, MEMORY[0x277D21860]);
    sub_21CFE7F0C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
    sub_21CFE8BD4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics, 7, MEMORY[0x277D21868]);
    sub_21CFE8008(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFE7400(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021F64();
  }

  return result;
}

uint64_t sub_21CFE747C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1[12];
  v15 = a2 + a1[11];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a2 + v14;
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t sub_21CFE7564(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46580, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE7604(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121B788, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE7670()
{
  sub_21CFFCB6C(qword_28121B788, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);

  return sub_21D021EF4();
}

uint64_t sub_21CFE76F0()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53B38);
  __swift_project_value_buffer(v0, qword_27CE53B38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0262D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cd_mask_creation_total_latency_millis";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cd_user_facing_mask_total_latency_millis";
  *(v10 + 8) = 40;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "possible_dtr_generated_dtr_millis";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "possible_dtr_generated_mask_millis";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "not_possible_dtr_generated_mask_millis";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "possible_dtr_generated_dtr_count";
  *(v18 + 1) = 32;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "possible_dtr_generated_mask_count";
  *(v20 + 1) = 33;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "not_possible_dtr_generated_mask_count";
  *(v22 + 1) = 37;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v2 + v1[14];
  *(v5 + 8 * v2) = 9;
  *v23 = "deterministic_tokens_count";
  *(v23 + 8) = 26;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "deterministic_token_runs";
  *(v25 + 1) = 24;
  v25[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFE7AB8()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 5)
    {
      if (result <= 7)
      {
        if (result == 6)
        {
          v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 44);
        }

        else
        {
          v6 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 48);
        }

LABEL_26:
        v0 = 0;
        sub_21D021E54();
      }

      else
      {
        switch(result)
        {
          case 8:
            v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 52);
            goto LABEL_26;
          case 9:
            v11 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 56);
            goto LABEL_26;
          case 10:
            sub_21D021E24();
            break;
        }
      }
    }

    else if (result <= 2)
    {
      if (result == 1)
      {
        v1 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 24);
        goto LABEL_3;
      }

      if (result == 2)
      {
        v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 28);
        goto LABEL_3;
      }
    }

    else
    {
      if (result == 3)
      {
        v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 32);
      }

      else if (result == 4)
      {
        v10 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 36);
      }

      else
      {
        v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 40);
      }

LABEL_3:
      v0 = 0;
      sub_21D021E64();
    }
  }
}

uint64_t sub_21CFE7C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFEBCD0(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
  if (!v4)
  {
    sub_21CFE7E88(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
    sub_21CFE8B40(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics, 3, MEMORY[0x277D21868]);
    sub_21CFE8C68(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
    sub_21CFE7F0C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
    sub_21CFE7F90(v3);
    sub_21CFE8008(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
    sub_21CFEAA7C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);
    sub_21CFE808C(v3);
    if (*(*v3 + 16))
    {
      sub_21D021F24();
    }

    v9 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFE7E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFE7F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFE7F90(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFE8008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFE808C(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFE8104@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = sub_21D021CE4();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[8] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[8] = 1;
  v12 = a1[11];
  v13 = a2 + a1[10];
  *v13 = 0;
  v13[8] = 1;
  v14 = a2 + v12;
  *v14 = 0;
  v14[4] = 1;
  v15 = a1[13];
  v16 = a2 + a1[12];
  *v16 = 0;
  v16[4] = 1;
  v17 = a2 + v15;
  *v17 = 0;
  v17[4] = 1;
  v18 = a2 + a1[14];
  *v18 = 0;
  v18[4] = 1;
  return result;
}

uint64_t sub_21CFE8210(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46588, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE82B0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45FA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE831C()
{
  sub_21CFFCB6C(&qword_27CE45FA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics);

  return sub_21D021EF4();
}

uint64_t sub_21CFE839C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53B50);
  __swift_project_value_buffer(v0, qword_27CE53B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21D0262C0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "input_tokens_count";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "output_tokens_count";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "inference_only_total_latency_millis";
  *(v11 + 1) = 35;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "metallm_total_mesh_latency_millis";
  *(v13 + 1) = 33;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "metallm_total_gpu_latency_millis";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "token_level_inference_metrics";
  *(v17 + 1) = 29;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 4;
  *v19 = "cd_mask_creation_total_latency_millis";
  *(v19 + 1) = 37;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "cd_user_facing_mask_total_latency_millis";
  *(v21 + 1) = 40;
  v21[16] = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFE86E8()
{
  result = sub_21D021D74();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          v6 = v0;
          if (result == 5)
          {
            v11 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0) + 36);
          }

          else
          {
            v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0);
          sub_21CFFCB6C(qword_28121DD78, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
          sub_21D021E74();
        }

        else if (result == 8)
        {
          v6 = v0;
          v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0) + 48);
LABEL_5:
          v0 = v6;
          sub_21D021E64();
        }
      }

      else
      {
        if (result > 2)
        {
          v6 = v0;
          if (result == 3)
          {
            v3 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0) + 32);
          }

          else
          {
            v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0) + 44);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v4 = v0;
          v10 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0) + 24);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v4 = v0;
          v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0) + 28);
        }

        v0 = v4;
        sub_21D021E54();
      }

LABEL_6:
      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFE88D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics, 1, MEMORY[0x277D21860]);
  if (!v4)
  {
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics, 2, MEMORY[0x277D21860]);
    sub_21CFE8B40(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics, 3, MEMORY[0x277D21868]);
    sub_21CFE8BD4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics, 4, MEMORY[0x277D21868]);
    sub_21CFE8C68(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
    sub_21CFE7F0C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0);
      sub_21CFFCB6C(qword_28121DD78, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
      sub_21D021FD4();
    }

    sub_21CFE8CEC(v5);
    v11 = v5 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFE8B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v13 = a1 + *(result + 32);
  if ((*(v13 + 8) & 1) == 0)
  {
    return a7(*v13, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21CFE8BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v13 = a1 + *(result + 44);
  if ((*(v13 + 8) & 1) == 0)
  {
    return a7(*v13, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21CFE8C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFE8CEC(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFE8D68@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = sub_21D021CE4();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  v10[8] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[8] = 1;
  v12 = a1[11];
  v13 = a2 + a1[10];
  *v13 = 0;
  v13[8] = 1;
  v14 = a2 + v12;
  *v14 = 0;
  v14[8] = 1;
  v15 = a2 + a1[12];
  *v15 = 0;
  v15[8] = 1;
  return result;
}

uint64_t sub_21CFE8E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46590, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFE8EF8(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121DE40, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFE8F64()
{
  sub_21CFFCB6C(qword_28121DE40, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);

  return sub_21D021EF4();
}

uint64_t sub_21CFE8FE0()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53B68);
  __swift_project_value_buffer(v0, qword_27CE53B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21D0262E0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 2;
  *v5 = "is_verified_draft_token";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "inference_only_latency_nanos";
  *(v9 + 8) = 28;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "cd_mask_creation_latency_nanos";
  *(v11 + 1) = 30;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "metallm_mesh_latency_nanos";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "metallm_gpu_latency_nanos";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "cd_user_facing_mask_latency_nanos";
  *(v17 + 1) = 33;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 1;
  *v19 = "token_index";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timeline_index";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "target_token_metrics";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "draft_token_metrics";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "deterministic_token_metrics";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFE93E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          v15 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 48);
LABEL_24:
          v4 = 0;
          sub_21D021E54();
        }

        else if (result == 2)
        {
          v14 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 24);
          sub_21D021D94();
        }
      }

      else
      {
        if (result == 3)
        {
          v17 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 28);
        }

        else if (result == 4)
        {
          v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 32);
        }

        else
        {
          v13 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 36);
        }

LABEL_3:
        v4 = 0;
        sub_21D021E64();
      }
    }

    else if (result > 9)
    {
      switch(result)
      {
        case 10:
          sub_21CFE95F8(v5, a1, a2, a3);
          break;
        case 11:
          sub_21CFE9BA8(v5, a1, a2, a3);
          break;
        case 12:
          sub_21CFEA164(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 6:
          v18 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 40);
          goto LABEL_3;
        case 7:
          v16 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 44);
          sub_21D021E04();
          break;
        case 8:
          v12 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 52);
          goto LABEL_24;
      }
    }
  }
}

uint64_t sub_21CFE95F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE465A0, &qword_21D02CCB8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45A68, &unk_21D026440);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45A68, &unk_21D026440);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
      v33 = v48;
    }

    else
    {
      sub_21CF7F200(v28, &qword_27CE465A0, &qword_21D02CCB8);
      v35 = v43;
      sub_21D000BB8(v20, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45F68, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE465A0, &qword_21D02CCB8);
  }

  sub_21CF7F198(v28, v36, &qword_27CE465A0, &qword_21D02CCB8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE465A0, &qword_21D02CCB8);
    return sub_21CF7F200(v36, &qword_27CE465A0, &qword_21D02CCB8);
  }

  else
  {
    v39 = v44;
    sub_21D000BB8(v36, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE465A0, &qword_21D02CCB8);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45A68, &unk_21D026440);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFE9BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE465A8, &qword_21D02CCC0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45A68, &unk_21D026440);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45A68, &unk_21D026440);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v28, &qword_27CE465A8, &qword_21D02CCC0);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45F48, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE465A8, &qword_21D02CCC0);
  }

  sub_21CF7F198(v28, v36, &qword_27CE465A8, &qword_21D02CCC0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE465A8, &qword_21D02CCC0);
    return sub_21CF7F200(v36, &qword_27CE465A8, &qword_21D02CCC0);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE465A8, &qword_21D02CCC0);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45A68, &unk_21D026440);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFEA164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE465B0, &qword_21D02CCC8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45A68, &unk_21D026440);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45A68, &unk_21D026440);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v28, &qword_27CE465B0, &qword_21D02CCC8);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45F28, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE465B0, &qword_21D02CCC8);
  }

  sub_21CF7F198(v28, v36, &qword_27CE465B0, &qword_21D02CCC8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE465B0, &qword_21D02CCC8);
    return sub_21CF7F200(v36, &qword_27CE465B0, &qword_21D02CCC8);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE465B0, &qword_21D02CCC8);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45A68, &unk_21D026440);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFEA720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  result = sub_21CFE8008(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
  if (!v4)
  {
    sub_21CFF815C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
    sub_21CFE7E88(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
    sub_21CFE8B40(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics, 4, MEMORY[0x277D21868]);
    sub_21CFE8C68(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
    sub_21CFE7F0C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
    sub_21CFE8BD4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics, 7, MEMORY[0x277D21850]);
    sub_21CFEAA7C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
    sub_21CF7F198(v3, v11, &qword_27CE45A68, &unk_21D026440);
    v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_21CFEAD2C(v3, a1, a2, a3);
        }

        else
        {
          sub_21CFEAF64(v3, a1, a2, a3);
        }
      }

      else
      {
        sub_21CFEAAF8(v3, a1, a2, a3);
      }

      sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    }

    v15 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFEAA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 52));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFEAAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45A68, &unk_21D026440);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45A68, &unk_21D026440);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
    sub_21CFFCB6C(&qword_27CE45F68, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  __break(1u);
  return result;
}

uint64_t sub_21CFEAD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45A68, &unk_21D026440);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45A68, &unk_21D026440);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
    sub_21CFFCB6C(&qword_27CE45F48, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  __break(1u);
  return result;
}

uint64_t sub_21CFEAF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45A68, &unk_21D026440);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45A68, &unk_21D026440);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
    sub_21CFFCB6C(&qword_27CE45F28, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  __break(1u);
  return result;
}

uint64_t sub_21CFEB1A0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + a1[5];
  result = sub_21D021CE4();
  v7 = a1[7];
  *(a2 + a1[6]) = 2;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1[9];
  v10 = a2 + a1[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1[11];
  v13 = a2 + a1[10];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + v12;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1[13];
  v16 = a2 + a1[12];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a2 + v15;
  *v17 = 0;
  *(v17 + 4) = 1;
  return result;
}

uint64_t sub_21CFEB2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46598, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFEB374(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121DD78, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFEB3E0()
{
  sub_21CFFCB6C(qword_28121DD78, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);

  return sub_21D021EF4();
}

uint64_t sub_21CFEB460()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53B80);
  __swift_project_value_buffer(v0, qword_27CE53B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ACCEPTED";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "REJECTED";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFEB690()
{
  result = MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02F660);
  qword_27CE53B98 = 0xD000000000000036;
  unk_27CE53BA0 = 0x800000021D02F4D0;
  return result;
}

uint64_t sub_21CFEB704()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53BA8);
  __swift_project_value_buffer(v0, qword_27CE53BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21D0262A0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "inference_only_latency_nanos";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_21D021FF4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "metallm_mesh_latency_nanos";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "metallm_gpu_latency_nanos";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "cd_mask_latency_nanos";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cd_user_facing_mask_latency_nanos";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "cd_mask_blocked_for_potential_dtr";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v7();
  return sub_21D022004();
}

uint64_t sub_21CFEB9C8()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0) + 36);
LABEL_3:
          v0 = 0;
          sub_21D021E64();
          break;
        case 6:
          v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0) + 40);
          sub_21D021D94();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0) + 24);
          goto LABEL_3;
        case 3:
          v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_21CFEBB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFEBC58(v3);
  if (!v4)
  {
    sub_21CFEBCD0(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
    sub_21CFE7E88(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
    sub_21CFE8B40(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics, 4, MEMORY[0x277D21868]);
    sub_21CFE8C68(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
    sub_21CFEBD54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFEBC58(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFEBCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFEBD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

uint64_t sub_21CFEBDD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *(v12 + 8) = 1;
  *v12 = 0;
  *(a2 + v11) = 2;
  return result;
}

uint64_t sub_21CFEBEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE465B8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFEBF48(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45F68, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFEBFB4()
{
  sub_21CFFCB6C(&qword_27CE45F68, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);

  return sub_21D021EF4();
}

uint64_t sub_21CFEC034()
{
  result = MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02F6D0);
  qword_27CE53BC0 = 0xD000000000000036;
  *algn_27CE53BC8 = 0x800000021D02F4D0;
  return result;
}

uint64_t sub_21CFEC0AC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53BD0);
  __swift_project_value_buffer(v0, qword_27CE53BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21D0262B0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "token_status";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_21D021FF4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "inference_only_latency_nanos";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "metallm_mesh_latency_nanos";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "metallm_gpu_latency_nanos";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cd_mask_latency_nanos";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "cd_user_facing_mask_latency_nanos";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "cd_mask_blocked_for_potential_dtr";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v7();
  return sub_21D022004();
}

uint64_t sub_21CFEC3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_21CFECDDC(a1, v5, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
          break;
        case 2:
          v16 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0) + 24);
          goto LABEL_3;
        case 3:
          v13 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0) + 40);
        goto LABEL_3;
      }

      if (result == 7)
      {
        v14 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0) + 44);
        sub_21D021D94();
      }
    }

    else
    {
      if (result == 4)
      {
        v15 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0) + 32);
      }

      else
      {
        v12 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0) + 36);
      }

LABEL_3:
      v4 = 0;
      sub_21D021E64();
    }
  }
}

uint64_t sub_21CFEC524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFED000(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
  if (!v4)
  {
    sub_21CFEBCD0(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
    sub_21CFE7E88(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
    sub_21CFE8B40(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics, 4, MEMORY[0x277D21868]);
    sub_21CFE8C68(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
    sub_21CFE7F0C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
    sub_21CFEC6AC(v3);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFEC6AC(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

uint64_t sub_21CFEC724@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 256;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a2 + a1[11]) = 2;
  return result;
}

uint64_t sub_21CFEC80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE465C0, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFEC8AC(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45F48, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFEC918()
{
  sub_21CFFCB6C(&qword_27CE45F48, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);

  return sub_21D021EF4();
}

uint64_t sub_21CFEC998()
{
  result = MEMORY[0x223D3A110](0xD00000000000001ALL, 0x800000021D02F6F0);
  qword_27CE53BE8 = 0xD000000000000036;
  unk_27CE53BF0 = 0x800000021D02F4D0;
  return result;
}

uint64_t sub_21CFECA0C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53BF8);
  __swift_project_value_buffer(v0, qword_27CE53BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026270;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token_status";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pro_rata_inference_only_latency_nanos";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previous_token_type";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "part_of_dtr_of_length";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "position_index_in_dtr_zero_indexed";
  *(v15 + 8) = 34;
  *(v15 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFECCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_21CFECDDC(a1, v5, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
      }

      else if (result == 2)
      {
        v12 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0) + 24);
        sub_21D021E64();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_21CFECE54();
          break;
        case 4:
          v13 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0) + 32);
LABEL_14:
          v4 = 0;
          sub_21D021E54();
          break;
        case 5:
          v11 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0) + 36);
          goto LABEL_14;
      }
    }
  }
}

uint64_t sub_21CFECDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  sub_21D00F05C();
  return sub_21D021DA4();
}

uint64_t sub_21CFECE54()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0) + 28);
  sub_21D00F0B0();
  return sub_21D021DA4();
}

uint64_t sub_21CFECEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFED000(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
  if (!v4)
  {
    sub_21CFEBCD0(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
    sub_21CFED0A8(v3);
    sub_21CFE6378(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics, MEMORY[0x277D21860]);
    sub_21CFCA59C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics, 5, MEMORY[0x277D21860]);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFED000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if ((*(v7 + 9) & 1) == 0)
  {
    v8 = *v7;
    v9 = v7[1] & 1;
    sub_21D00F05C();
    return sub_21D021F44();
  }

  return result;
}

uint64_t sub_21CFED0A8(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0);
  v3 = (a1 + *(result + 28));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_21D00F0B0();
    return sub_21D021F44();
  }

  return result;
}

uint64_t sub_21CFED14C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 256;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *(v9 + 8) = 256;
  *v9 = 0;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_21CFED21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE465D0, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFED2BC(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45F28, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFED328()
{
  sub_21CFFCB6C(&qword_27CE45F28, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);

  return sub_21D021EF4();
}

uint64_t sub_21CFED3A8()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53C10);
  __swift_project_value_buffer(v0, qword_27CE53C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TARGET";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "UNVERIFIED_DRAFT";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFED5DC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53C28);
  __swift_project_value_buffer(v0, qword_27CE53C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21D0262A0;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "base_model";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_21D021FF4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "adaptor";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v7();
  v10 = (v19 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "draft_model";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v7();
  v12 = (v19 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tokenizer";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v7();
  v14 = (v19 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cloudos_version";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v7();
  v16 = (v19 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "rendered_prompt";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v7();
  return sub_21D022004();
}

uint64_t sub_21CFED8AC()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_21CFEDC0C();
          break;
        case 5:
          v3 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 36);
          sub_21D021E44();
          break;
        case 6:
          sub_21CFEDCC0();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_21CFED9F0();
          break;
        case 2:
          sub_21CFEDAA4();
          break;
        case 3:
          sub_21CFEDB58();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_21CFED9F0()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 20);
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  return sub_21D021E84();
}

uint64_t sub_21CFEDAA4()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 24);
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  return sub_21D021E84();
}

uint64_t sub_21CFEDB58()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 28);
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  return sub_21D021E84();
}

uint64_t sub_21CFEDC0C()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 32);
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  return sub_21D021E84();
}

uint64_t sub_21CFEDCC0()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 40);
  type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  sub_21CFFCB6C(&qword_28121DFB8, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  return sub_21D021E84();
}

uint64_t sub_21CFEDD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFEDE58(v3, a1, a2, a3);
  if (!v4)
  {
    sub_21CFEE074(v3, a1, a2, a3);
    sub_21CFEE290(v3, a1, a2, a3);
    sub_21CFEE4AC(v3, a1, a2, a3);
    sub_21CFEFFD4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
    sub_21CFEE6C8(v3, a1, a2, a3);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFEDE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  sub_21CF7F198(a1 + *(v14 + 20), v8, &qword_27CE45208, &qword_21D023520);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45208, &qword_21D023520);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
}

uint64_t sub_21CFEE074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  sub_21CF7F198(a1 + *(v14 + 24), v8, &qword_27CE45208, &qword_21D023520);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45208, &qword_21D023520);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
}

uint64_t sub_21CFEE290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  sub_21CF7F198(a1 + *(v14 + 28), v8, &qword_27CE45208, &qword_21D023520);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45208, &qword_21D023520);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
}

uint64_t sub_21CFEE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  sub_21CF7F198(a1 + *(v14 + 32), v8, &qword_27CE45208, &qword_21D023520);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45208, &qword_21D023520);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
}

uint64_t sub_21CFEE6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  sub_21CF7F198(a1 + *(v14 + 40), v8, &qword_27CE45200, &qword_21D023518);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45200, &qword_21D023518);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  sub_21CFFCB6C(&qword_28121DFB8, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
}

uint64_t sub_21CFEE8E8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D021CE4();
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[6], 1, 1, v5);
  v6(a2 + a1[7], 1, 1, v5);
  v6(a2 + a1[8], 1, 1, v5);
  v7 = a1[9];
  v8 = a1[10];
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_21CFEEA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE465E0, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFEEB0C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121DF00, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFEEB78()
{
  sub_21CFFCB6C(qword_28121DF00, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);

  return sub_21D021EF4();
}

uint64_t sub_21CFEEC1C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53C50);
  __swift_project_value_buffer(v0, qword_27CE53C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFEEEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE465E8, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFEEF48(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFEEFB4()
{
  sub_21CFFCB6C(&qword_28121E090, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);

  return sub_21D021EF4();
}

uint64_t sub_21CFEF060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x223D3A110](a2, a3);
  *a4 = 0xD000000000000034;
  *a5 = 0x800000021D02F7D0;
  return result;
}

uint64_t sub_21CFEF0CC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53C78);
  __swift_project_value_buffer(v0, qword_27CE53C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "prompt";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "token_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "segments";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFEF31C()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_21D021DC4();
      }

      else if (result == 4)
      {
        sub_21D021E14();
      }
    }

    else if (result == 1)
    {
      v3 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0) + 28);
      sub_21D021E44();
    }

    else if (result == 2)
    {
      sub_21CFEF410();
    }
  }

  return result;
}

uint64_t sub_21CFEF410()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0) + 32);
  sub_21D00F104();
  return sub_21D021DA4();
}

uint64_t sub_21CFEF484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFEF57C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  if (!v4)
  {
    sub_21CFEF600(v3);
    if (*(*v3 + 16))
    {
      sub_21D021F14();
    }

    if (*(v3[1] + 16))
    {
      sub_21D021F84();
    }

    v6 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0) + 24);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFEF57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFEF600(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v3 = (a1 + *(result + 32));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_21D00F104();
    return sub_21D021F44();
  }

  return result;
}