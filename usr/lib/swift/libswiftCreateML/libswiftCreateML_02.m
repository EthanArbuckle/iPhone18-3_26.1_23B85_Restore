uint64_t destroy for MLHandPoseClassifier(void *a1, int *a2)
{
  v3 = a1;
  *a1;
  v4 = a1[1];

  v5 = type metadata accessor for MLHandActionClassifier(0);
  v6 = v3 + v5[7];
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v8 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v6, v8))
    {
      case 0u:
        v11 = type metadata accessor for URL(0);
        v87 = a2;
        v12 = *(*(v11 - 8) + 8);
        v12(v6);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        (v12)(&v6[v13[12]], v11);
        a2 = v87;
        *&v6[v13[16] + 8];
        *&v6[v13[20] + 8];
        *&v6[v13[24] + 8];
        v14 = v13[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 8))(v6, v9);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 2));
        *(v6 + 3);
        *(v6 + 5);
        v10 = *(v6 + 7);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 2));
        *(v6 + 3);
        *(v6 + 5);
        *(v6 + 7);
        v10 = *(v6 + 9);
        goto LABEL_10;
      case 5u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 8))(v6, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v6[v16[12] + 8];
        *&v6[v16[16] + 8];
        v14 = v16[20];
        goto LABEL_9;
      case 6u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 8))(v6, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v6[v18[12] + 8];
        *&v6[v18[16] + 8];
        *&v6[v18[20] + 8];
        v14 = v18[24];
LABEL_9:
        v10 = *&v6[v14 + 8];
LABEL_10:
        v10;
        break;
      default:
        break;
    }
  }

  v19 = v3 + v5[8];
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v19, v20);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v19;
      break;
    case 1:
      v88 = a2;
      v24 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v80 = v20;
      v25 = &v19[*(v24 + 20)];
      v79 = v5;
      v26 = type metadata accessor for DataFrame(0);
      v83 = v3;
      v27 = *(*(v26 - 8) + 8);
      v28 = v25;
      v20 = v80;
      v27(v28, v26);
      v29 = *(v24 + 24);
      a2 = v88;
      v30 = v26;
      v5 = v79;
      v27(&v19[v29], v30);
      v3 = v83;
      break;
    case 0:
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v19, v22) == 1)
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v31 = __swift_instantiateConcreteTypeFromMangledName(v23);
      (*(*(v31 - 8) + 8))(v19, v31);
      break;
  }

  v32 = v3 + v5[9];
  v33 = swift_getEnumCaseMultiPayload(v32, v20);
  switch(v33)
  {
    case 2:
      *v32;
      break;
    case 1:
      v89 = a2;
      v36 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v81 = v20;
      v37 = &v32[*(v36 + 20)];
      v38 = type metadata accessor for DataFrame(0);
      v84 = v3;
      v39 = *(*(v38 - 8) + 8);
      v40 = v37;
      v20 = v81;
      v39(v40, v38);
      v41 = *(v36 + 24);
      a2 = v89;
      v39(&v32[v41], v38);
      v3 = v84;
      break;
    case 0:
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v32, v34) == 1)
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledName(v35);
      (*(*(v42 - 8) + 8))(v32, v42);
      break;
  }

  v43 = v3 + a2[6];
  v44 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v43, v44) == 1)
  {
    v45 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v43, v45))
    {
      case 0u:
        v90 = a2;
        v48 = type metadata accessor for URL(0);
        v85 = v3;
        v49 = *(*(v48 - 8) + 8);
        v49(v43, v48);
        v50 = v20;
        v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v52 = v48;
        a2 = v90;
        v49(&v43[v51[12]], v52);
        v3 = v85;
        *&v43[v51[16] + 8];
        v53 = v51[20];
        goto LABEL_38;
      case 1u:
      case 2u:
        v46 = type metadata accessor for URL(0);
        (*(*(v46 - 8) + 8))(v43, v46);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v43, *(v43 + 2));
        *(v43 + 3);
        *(v43 + 5);
        v47 = *(v43 + 7);
        goto LABEL_39;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v43, *(v43 + 2));
        *(v43 + 3);
        v47 = *(v43 + 5);
        goto LABEL_39;
      case 5u:
        v54 = type metadata accessor for DataFrame(0);
        (*(*(v54 - 8) + 8))(v43, v54);
        v50 = v20;
        v55 = a2;
        v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v43[v56[12] + 8];
        *&v43[v56[16] + 8];
        v53 = v56[20];
        goto LABEL_37;
      case 6u:
        v57 = type metadata accessor for DataFrame(0);
        (*(*(v57 - 8) + 8))(v43, v57);
        v50 = v20;
        v55 = a2;
        v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&v43[*(v58 + 48) + 8];
        v53 = *(v58 + 64);
LABEL_37:
        a2 = v55;
LABEL_38:
        v20 = v50;
        v47 = *&v43[v53 + 8];
LABEL_39:
        v47;
        break;
      default:
        break;
    }
  }

  v59 = v3 + a2[7];
  v60 = swift_getEnumCaseMultiPayload(v59, v20);
  switch(v60)
  {
    case 2:
      *v59;
      break;
    case 1:
      v91 = a2;
      v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v82 = v20;
      v64 = &v59[*(v63 + 20)];
      v65 = type metadata accessor for DataFrame(0);
      v86 = v3;
      v66 = *(*(v65 - 8) + 8);
      v67 = v64;
      v20 = v82;
      v66(v67, v65);
      v68 = *(v63 + 24);
      a2 = v91;
      v66(&v59[v68], v65);
      v3 = v86;
      break;
    case 0:
      v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v59, v61) == 1)
      {
        v62 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v62 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v69 = __swift_instantiateConcreteTypeFromMangledName(v62);
      (*(*(v69 - 8) + 8))(v59, v69);
      break;
  }

  v70 = (v3 + a2[8]);
  result = swift_getEnumCaseMultiPayload(v70, v20);
  switch(result)
  {
    case 2:
      return *v70;
    case 1:
      v74 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v75 = v70 + *(v74 + 20);
      v76 = type metadata accessor for DataFrame(0);
      v77 = *(*(v76 - 8) + 8);
      v77(v75, v76);
      return (v77)(v70 + *(v74 + 24), v76);
    case 0:
      v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v70, v72) == 1)
      {
        v73 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v73 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v78 = __swift_instantiateConcreteTypeFromMangledName(v73);
      return (*(*(v78 - 8) + 8))(v70, v78);
  }

  return result;
}

void *initializeWithCopy for MLHandPoseClassifier(void *a1, void *a2, int *a3)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[2];
  a1[2] = v4;
  v154 = type metadata accessor for MLHandActionClassifier(0);
  v5 = v154[7];
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = v3;
  v9 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v8;

  v4;
  if (swift_getEnumCaseMultiPayload(v7, v9) == 1)
  {
    v10 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v10);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v159 = v10;
        v19 = type metadata accessor for URL(0);
        v166 = v9;
        v20 = *(*(v19 - 8) + 16);
        v20(v6, v7, v19);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v20(&v6[v21[12]], &v7[v21[12]], v19);
        v22 = v21[16];
        *&v6[v22] = *&v7[v22];
        v23 = *&v7[v22 + 8];
        *&v6[v22 + 8] = v23;
        v24 = v21[20];
        *&v6[v24] = *&v7[v24];
        v25 = *&v7[v24 + 8];
        *&v6[v24 + 8] = v25;
        v26 = v21[24];
        *&v6[v26] = *&v7[v26];
        v27 = *&v7[v26 + 8];
        *&v6[v26 + 8] = v27;
        v28 = v21[28];
        *&v6[v28] = *&v7[v28];
        v29 = *&v7[v28 + 8];
        *&v6[v28 + 8] = v29;
        v23;
        LOBYTE(v23) = v25;
        v10 = v159;
        v23;
        v30 = v27;
        v9 = v166;
        goto LABEL_10;
      case 1u:
      case 2u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 16))(v6, v7, v11);
        goto LABEL_14;
      case 3u:
        v160 = v10;
        v31 = *v7;
        v32 = v7[8];
        outlined copy of Result<_DataTable, Error>(*v7, v32);
        *v6 = v31;
        v6[8] = v32;
        *(v6 + 2) = *(v7 + 2);
        v33 = *(v7 + 3);
        *(v6 + 3) = v33;
        *(v6 + 4) = *(v7 + 4);
        v34 = *(v7 + 5);
        *(v6 + 5) = v34;
        *(v6 + 6) = *(v7 + 6);
        v29 = *(v7 + 7);
        *(v6 + 7) = v29;
        goto LABEL_9;
      case 4u:
        v158 = v10;
        v13 = *v7;
        v14 = v7[8];
        outlined copy of Result<_DataTable, Error>(*v7, v14);
        *v6 = v13;
        v6[8] = v14;
        *(v6 + 2) = *(v7 + 2);
        v15 = *(v7 + 3);
        *(v6 + 3) = v15;
        *(v6 + 4) = *(v7 + 4);
        v16 = *(v7 + 5);
        *(v6 + 5) = v16;
        *(v6 + 6) = *(v7 + 6);
        v17 = *(v7 + 7);
        *(v6 + 7) = v17;
        *(v6 + 8) = *(v7 + 8);
        v165 = v9;
        v18 = *(v7 + 9);
        *(v6 + 9) = v18;
        goto LABEL_12;
      case 5u:
        v35 = type metadata accessor for DataFrame(0);
        (*(*(v35 - 8) + 16))(v6, v7, v35);
        v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v37 = v36[12];
        *&v6[v37] = *&v7[v37];
        v33 = *&v7[v37 + 8];
        *&v6[v37 + 8] = v33;
        v38 = v36[16];
        *&v6[v38] = *&v7[v38];
        v160 = v10;
        v34 = *&v7[v38 + 8];
        *&v6[v38 + 8] = v34;
        v39 = v36[20];
        *&v6[v39] = *&v7[v39];
        v29 = *&v7[v39 + 8];
        *&v6[v39 + 8] = v29;
LABEL_9:
        v33;
        v30 = v34;
        v10 = v160;
LABEL_10:
        v30;
        v40 = v29;
        break;
      case 6u:
        v41 = type metadata accessor for DataFrame(0);
        (*(*(v41 - 8) + 16))(v6, v7, v41);
        v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v43 = v42[12];
        *&v6[v43] = *&v7[v43];
        v15 = *&v7[v43 + 8];
        *&v6[v43 + 8] = v15;
        v44 = v42[16];
        *&v6[v44] = *&v7[v44];
        v158 = v10;
        v16 = *&v7[v44 + 8];
        *&v6[v44 + 8] = v16;
        v45 = v42[20];
        *&v6[v45] = *&v7[v45];
        v17 = *&v7[v45 + 8];
        *&v6[v45 + 8] = v17;
        v46 = v42[24];
        *&v6[v46] = *&v7[v46];
        v165 = v9;
        v18 = *&v7[v46 + 8];
        *&v6[v46 + 8] = v18;
LABEL_12:
        v15;
        v47 = v16;
        v10 = v158;
        v47;
        v17;
        v40 = v18;
        v9 = v165;
        break;
    }

    v40;
LABEL_14:
    v12 = a2;
    swift_storeEnumTagMultiPayload(v6, v10, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(v6, v9, 1);
  }

  else
  {
    memcpy(v6, v7, *(*(v9 - 8) + 64));
    v12 = a2;
  }

  v48 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v6[v48[5]] = *&v7[v48[5]];
  *&v6[v48[6]] = *&v7[v48[6]];
  *&v6[v48[7]] = *&v7[v48[7]];
  *&v6[v48[8]] = *&v7[v48[8]];
  *&v6[v48[10]] = *&v7[v48[10]];
  v49 = v154[8];
  v50 = a1;
  v51 = (a1 + v49);
  v52 = (v12 + v49);
  v153 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v53 = swift_getEnumCaseMultiPayload(v52, v153);
  if (v53 == 2)
  {
    v60 = *v52;
    swift_errorRetain(v60);
    *v51 = v60;
  }

  else if (v53 == 1)
  {
    *v51 = *v52;
    v161 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v54 = v51;
    v55 = *(v161 + 20);
    v148 = v54 + v55;
    v56 = type metadata accessor for DataFrame(0);
    v57 = *(*(v56 - 8) + 16);
    v58 = v52 + v55;
    v51 = v54;
    v50 = a1;
    v57(v148, v58, v56);
    v59 = v56;
    v12 = a2;
    v57(v51 + *(v161 + 24), v52 + *(v161 + 24), v59);
    v53 = 1;
  }

  else
  {
    v61 = v51;
    v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v63 = swift_getEnumCaseMultiPayload(v52, v62);
    v64 = v63 == 1;
    v65 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v63 == 1)
    {
      v65 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v66 = __swift_instantiateConcreteTypeFromMangledName(v65);
    (*(*(v66 - 8) + 16))(v61, v52, v66);
    v67 = v62;
    v51 = v61;
    swift_storeEnumTagMultiPayload(v61, v67, v64);
    v50 = a1;
    v12 = a2;
  }

  swift_storeEnumTagMultiPayload(v51, v153, v53);
  v68 = v154[9];
  v69 = (v50 + v68);
  v70 = (v12 + v68);
  v71 = swift_getEnumCaseMultiPayload(v70, v153);
  v155 = v71;
  if (v71 == 2)
  {
    v78 = *v70;
    swift_errorRetain(v78);
    *v69 = v78;
  }

  else if (v71 == 1)
  {
    *v69 = *v70;
    v72 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v73 = *(v72 + 20);
    v162 = v69 + v73;
    v74 = type metadata accessor for DataFrame(0);
    v75 = v70 + v73;
    v76 = *(*(v74 - 8) + 16);
    v76(v162, v75, v74);
    v77 = v74;
    v12 = a2;
    v76(v69 + *(v72 + 24), v70 + *(v72 + 24), v77);
  }

  else
  {
    v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v80 = swift_getEnumCaseMultiPayload(v70, v79);
    v81 = v80 == 1;
    v82 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v80 == 1)
    {
      v82 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v83 = __swift_instantiateConcreteTypeFromMangledName(v82);
    (*(*(v83 - 8) + 16))(v69, v70, v83);
    swift_storeEnumTagMultiPayload(v69, v79, v81);
    v12 = a2;
  }

  swift_storeEnumTagMultiPayload(v69, v153, v155);
  v84 = a3[5];
  v85 = *(v12 + v84);
  *(a1 + v84) = v85;
  v86 = a3[6];
  v87 = a1 + v86;
  v88 = v12 + v86;
  v89 = v85;
  v90 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v89;
  if (swift_getEnumCaseMultiPayload(v88, v90) == 1)
  {
    v156 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    v163 = swift_getEnumCaseMultiPayload(v88, v156);
    switch(v163)
    {
      case 0u:
        v167 = v90;
        v96 = type metadata accessor for URL(0);
        v97 = *(*(v96 - 8) + 16);
        v97(v87, v88, v96);
        v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v97(&v87[v98[12]], &v88[v98[12]], v96);
        v99 = v98[16];
        *&v87[v99] = *&v88[v99];
        v94 = *&v88[v99 + 8];
        *&v87[v99 + 8] = v94;
        v100 = v98[20];
        v12 = a2;
        *&v87[v100] = *&v88[v100];
        goto LABEL_39;
      case 1u:
      case 2u:
        v91 = type metadata accessor for URL(0);
        (*(*(v91 - 8) + 16))(v87, v88, v91);
        goto LABEL_42;
      case 3u:
        v168 = v90;
        v101 = *v88;
        v102 = v88[8];
        outlined copy of Result<_DataTable, Error>(*v88, v102);
        *v87 = v101;
        v87[8] = v102;
        *(v87 + 2) = *(v88 + 2);
        v103 = *(v88 + 3);
        *(v87 + 3) = v103;
        *(v87 + 4) = *(v88 + 4);
        v104 = *(v88 + 5);
        *(v87 + 5) = v104;
        *(v87 + 6) = *(v88 + 6);
        v105 = *(v88 + 7);
        *(v87 + 7) = v105;
        goto LABEL_37;
      case 4u:
        v167 = v90;
        v92 = *v88;
        v93 = v88[8];
        outlined copy of Result<_DataTable, Error>(*v88, v93);
        *v87 = v92;
        v87[8] = v93;
        v12 = a2;
        *(v87 + 2) = *(v88 + 2);
        v94 = *(v88 + 3);
        *(v87 + 3) = v94;
        *(v87 + 4) = *(v88 + 4);
        v95 = *(v88 + 5);
        *(v87 + 5) = v95;
        goto LABEL_40;
      case 5u:
        v106 = type metadata accessor for DataFrame(0);
        (*(*(v106 - 8) + 16))(v87, v88, v106);
        v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v108 = v107[12];
        *&v87[v108] = *&v88[v108];
        v103 = *&v88[v108 + 8];
        *&v87[v108 + 8] = v103;
        v109 = v107[16];
        *&v87[v109] = *&v88[v109];
        v168 = v90;
        v104 = *&v88[v109 + 8];
        *&v87[v109 + 8] = v104;
        v110 = v107[20];
        *&v87[v110] = *&v88[v110];
        v105 = *&v88[v110 + 8];
        *&v87[v110 + 8] = v105;
LABEL_37:
        v103;
        v111 = v104;
        v90 = v168;
        v111;
        v112 = v105;
        v12 = a2;
        break;
      case 6u:
        v113 = type metadata accessor for DataFrame(0);
        (*(*(v113 - 8) + 16))(v87, v88, v113);
        v114 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v115 = *(v114 + 48);
        *&v87[v115] = *&v88[v115];
        v94 = *&v88[v115 + 8];
        *&v87[v115 + 8] = v94;
        v100 = *(v114 + 64);
        *&v87[v100] = *&v88[v100];
        v167 = v90;
LABEL_39:
        v95 = *&v88[v100 + 8];
        *&v87[v100 + 8] = v95;
LABEL_40:
        v94;
        v112 = v95;
        v90 = v167;
        break;
    }

    v112;
LABEL_42:
    swift_storeEnumTagMultiPayload(v87, v156, v163);
    swift_storeEnumTagMultiPayload(v87, v90, 1);
  }

  else
  {
    memcpy(v87, v88, *(*(v90 - 8) + 64));
  }

  v116 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *&v87[v116[5]] = *&v88[v116[5]];
  *&v87[v116[6]] = *&v88[v116[6]];
  *&v87[v116[7]] = *&v88[v116[7]];
  v117 = a3[7];
  v118 = (a1 + v117);
  v119 = (v12 + v117);
  v120 = swift_getEnumCaseMultiPayload(v119, v153);
  if (v120 == 2)
  {
    v126 = *v119;
    swift_errorRetain(v126);
    *v118 = v126;
  }

  else if (v120 == 1)
  {
    *v118 = *v119;
    v157 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v121 = *(v157 + 20);
    v164 = v118 + v121;
    v122 = type metadata accessor for DataFrame(0);
    v123 = v119 + v121;
    v124 = *(*(v122 - 8) + 16);
    v124(v164, v123, v122);
    v125 = v122;
    v12 = a2;
    v124(v118 + *(v157 + 24), v119 + *(v157 + 24), v125);
  }

  else
  {
    v127 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v128 = swift_getEnumCaseMultiPayload(v119, v127);
    v129 = v128 == 1;
    v130 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v128 == 1)
    {
      v130 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v131 = __swift_instantiateConcreteTypeFromMangledName(v130);
    (*(*(v131 - 8) + 16))(v118, v119, v131);
    swift_storeEnumTagMultiPayload(v118, v127, v129);
    v12 = a2;
  }

  swift_storeEnumTagMultiPayload(v118, v153, v120);
  v132 = a3[8];
  v133 = a1 + v132;
  v134 = (v12 + v132);
  v135 = swift_getEnumCaseMultiPayload(v134, v153);
  if (v135 == 2)
  {
    v141 = *v134;
    swift_errorRetain(*v134);
    *v133 = v141;
  }

  else if (v135 == 1)
  {
    *v133 = *v134;
    v170 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v136 = v134;
    v137 = *(v170 + 20);
    v150 = &v133[v137];
    v138 = type metadata accessor for DataFrame(0);
    v139 = &v136[v137];
    v140 = *(*(v138 - 8) + 16);
    v140(v150, v139, v138);
    v140(&v133[*(v170 + 24)], &v136[*(v170 + 24)], v138);
  }

  else
  {
    v142 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v143 = swift_getEnumCaseMultiPayload(v134, v142);
    v171 = v134;
    v144 = v143 == 1;
    v145 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v143 == 1)
    {
      v145 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v146 = __swift_instantiateConcreteTypeFromMangledName(v145);
    (*(*(v146 - 8) + 16))(v133, v171, v146);
    swift_storeEnumTagMultiPayload(v133, v142, v144);
  }

  swift_storeEnumTagMultiPayload(v133, v153, v135);
  return a1;
}

void *assignWithCopy for MLHandPoseClassifier(void *a1, void *a2, int *a3)
{
  v3 = a2;
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;
  v6;
  v7 = a1[1];
  a1[1] = a2[1];

  v8 = a2[2];
  v9 = a1[2];
  a1[2] = v8;
  v8;

  v10 = type metadata accessor for MLHandActionClassifier(0);
  v11 = *(v10 + 28);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v140 = v10;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v14 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v13, v14) == 1)
    {
      v138 = v14;
      v15 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v15);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v162 = type metadata accessor for URL(0);
          v21 = *(*(v162 - 8) + 16);
          v21(v12, v13, v162);
          v155 = v15;
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v21(&v12[v22[12]], &v13[v22[12]], v162);
          v3 = a2;
          v23 = v22[16];
          *&v12[v23] = *&v13[v23];
          v24 = *&v13[v23 + 8];
          *&v12[v23 + 8] = v24;
          v25 = v22[20];
          *&v12[v25] = *&v13[v25];
          v163 = *&v13[v25 + 8];
          *&v12[v25 + 8] = v163;
          v26 = v22[24];
          *&v12[v26] = *&v13[v26];
          v136 = *&v13[v26 + 8];
          *&v12[v26 + 8] = v136;
          v27 = v22[28];
          *&v12[v27] = *&v13[v27];
          goto LABEL_11;
        case 1u:
        case 2u:
          v16 = type metadata accessor for URL(0);
          (*(*(v16 - 8) + 16))(v12, v13, v16);
          goto LABEL_14;
        case 3u:
          v156 = v15;
          v28 = *v13;
          v164 = v13[8];
          outlined copy of Result<_DataTable, Error>(*v13, v164);
          *v12 = v28;
          v12[8] = v164;
          *(v12 + 2) = *(v13 + 2);
          v29 = *(v13 + 3);
          *(v12 + 3) = v29;
          *(v12 + 4) = *(v13 + 4);
          v30 = *(v13 + 5);
          *(v12 + 5) = v30;
          *(v12 + 6) = *(v13 + 6);
          v165 = *(v13 + 7);
          *(v12 + 7) = v165;
          v29;
          LOBYTE(v29) = v30;
          v15 = v156;
          v29;
          v20 = v165;
          goto LABEL_13;
        case 4u:
          v154 = v15;
          v17 = *v13;
          v160 = v13[8];
          outlined copy of Result<_DataTable, Error>(*v13, v160);
          *v12 = v17;
          v12[8] = v160;
          *(v12 + 2) = *(v13 + 2);
          v18 = *(v13 + 3);
          *(v12 + 3) = v18;
          *(v12 + 4) = *(v13 + 4);
          v19 = *(v13 + 5);
          *(v12 + 5) = v19;
          *(v12 + 6) = *(v13 + 6);
          v161 = *(v13 + 7);
          *(v12 + 7) = v161;
          *(v12 + 8) = *(v13 + 8);
          v135 = *(v13 + 9);
          *(v12 + 9) = v135;
          v18;
          LOBYTE(v18) = v19;
          v15 = v154;
          v18;
          v161;
          v20 = v135;
          goto LABEL_13;
        case 5u:
          v31 = type metadata accessor for DataFrame(0);
          (*(*(v31 - 8) + 16))(v12, v13, v31);
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v33 = v32[12];
          *&v12[v33] = *&v13[v33];
          v34 = *&v13[v33 + 8];
          *&v12[v33 + 8] = v34;
          v35 = v32[16];
          *&v12[v35] = *&v13[v35];
          v166 = *&v13[v35 + 8];
          *&v12[v35 + 8] = v166;
          v36 = v32[20];
          *&v12[v36] = *&v13[v36];
          v155 = v15;
          v37 = *&v13[v36 + 8];
          *&v12[v36 + 8] = v37;
          v34;
          v38 = v166;
          goto LABEL_12;
        case 6u:
          v39 = type metadata accessor for DataFrame(0);
          (*(*(v39 - 8) + 16))(v12, v13, v39);
          v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v41 = v40[12];
          *&v12[v41] = *&v13[v41];
          v24 = *&v13[v41 + 8];
          *&v12[v41 + 8] = v24;
          v42 = v40[16];
          *&v12[v42] = *&v13[v42];
          v163 = *&v13[v42 + 8];
          *&v12[v42 + 8] = v163;
          v43 = v40[20];
          *&v12[v43] = *&v13[v43];
          v136 = *&v13[v43 + 8];
          *&v12[v43 + 8] = v136;
          v27 = v40[24];
          *&v12[v27] = *&v13[v27];
          v155 = v15;
LABEL_11:
          v37 = *&v13[v27 + 8];
          *&v12[v27 + 8] = v37;
          v24;
          v163;
          v38 = v136;
LABEL_12:
          v38;
          v20 = v37;
          v15 = v155;
LABEL_13:
          v20;
LABEL_14:
          swift_storeEnumTagMultiPayload(v12, v15, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(v12, v138, 1);
          break;
      }
    }

    else
    {
      memcpy(v12, v13, *(*(v14 - 8) + 64));
    }

    v10 = v140;
  }

  v44 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v12[v44[5]] = *&v13[v44[5]];
  *&v12[v44[6]] = *&v13[v44[6]];
  *&v12[v44[7]] = *&v13[v44[7]];
  *&v12[v44[8]] = *&v13[v44[8]];
  *&v12[v44[10]] = *&v13[v44[10]];
  v139 = a1;
  if (a1 != v3)
  {
    v45 = *(v10 + 32);
    v46 = a1 + v45;
    v47 = v3 + v45;
    outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLClassifierMetrics.Contents);
    v146 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v48 = swift_getEnumCaseMultiPayload(v47, v146);
    if (v48 == 2)
    {
      v54 = *v47;
      swift_errorRetain(*v47);
      *v46 = v54;
      v3 = a2;
    }

    else if (v48 == 1)
    {
      *v46 = *v47;
      v157 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v49 = *(v157 + 20);
      v137 = &v46[v49];
      v50 = type metadata accessor for DataFrame(0);
      v51 = *(*(v50 - 8) + 16);
      v52 = &v47[v49];
      v3 = a2;
      v51(v137, v52, v50);
      v53 = v50;
      a1 = v139;
      v51(&v46[*(v157 + 24)], &v47[*(v157 + 24)], v53);
      v48 = 1;
    }

    else
    {
      v158 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v55 = swift_getEnumCaseMultiPayload(v47, v158);
      v56 = v55 == 1;
      v57 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v55 == 1)
      {
        v57 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v58 = __swift_instantiateConcreteTypeFromMangledName(v57);
      (*(*(v58 - 8) + 16))(v46, v47, v58);
      swift_storeEnumTagMultiPayload(v46, v158, v56);
      a1 = v139;
    }

    swift_storeEnumTagMultiPayload(v46, v146, v48);
    v59 = *(v140 + 36);
    v60 = a1 + v59;
    v61 = v3 + v59;
    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLClassifierMetrics.Contents);
    v62 = swift_getEnumCaseMultiPayload(v61, v146);
    if (v62 == 2)
    {
      v67 = *v61;
      swift_errorRetain(*v61);
      *v60 = v67;
    }

    else if (v62 == 1)
    {
      *v60 = *v61;
      v141 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v63 = *(v141 + 20);
      v167 = &v60[v63];
      v64 = type metadata accessor for DataFrame(0);
      v65 = *(*(v64 - 8) + 16);
      v66 = &v61[v63];
      a1 = v139;
      v65(v167, v66, v64);
      v65(&v60[*(v141 + 24)], &v61[*(v141 + 24)], v64);
      v62 = 1;
    }

    else
    {
      v142 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v68 = swift_getEnumCaseMultiPayload(v61, v142);
      v69 = v68 == 1;
      v70 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v68 == 1)
      {
        v70 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v71 = __swift_instantiateConcreteTypeFromMangledName(v70);
      (*(*(v71 - 8) + 16))(v60, v61, v71);
      swift_storeEnumTagMultiPayload(v60, v142, v69);
    }

    swift_storeEnumTagMultiPayload(v60, v146, v62);
    v3 = a2;
  }

  v72 = a3[5];
  v73 = *(v3 + v72);
  v74 = *(a1 + v72);
  *(a1 + v72) = v73;
  v73;
  v75 = v74;
  v76 = a2;

  v77 = a3[6];
  v78 = a1 + v77;
  v79 = a2 + v77;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v80 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v79, v80) == 1)
    {
      v143 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      v147 = swift_getEnumCaseMultiPayload(v79, v143);
      switch(v147)
      {
        case 0u:
          v86 = type metadata accessor for URL(0);
          v159 = *(*(v86 - 8) + 16);
          v159(v78, v79, v86);
          v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v159(&v78[v87[12]], &v79[v87[12]], v86);
          v88 = v87[16];
          *&v78[v88] = *&v79[v88];
          v84 = *&v79[v88 + 8];
          *&v78[v88 + 8] = v84;
          v89 = v87[20];
          a1 = v139;
          goto LABEL_43;
        case 1u:
        case 2u:
          v81 = type metadata accessor for URL(0);
          (*(*(v81 - 8) + 16))(v78, v79, v81);
          goto LABEL_46;
        case 3u:
          v90 = *v79;
          v91 = v79[8];
          outlined copy of Result<_DataTable, Error>(*v79, v91);
          *v78 = v90;
          v78[8] = v91;
          *(v78 + 2) = *(v79 + 2);
          v92 = *(v79 + 3);
          *(v78 + 3) = v92;
          *(v78 + 4) = *(v79 + 4);
          v93 = *(v79 + 5);
          *(v78 + 5) = v93;
          *(v78 + 6) = *(v79 + 6);
          v94 = *(v79 + 7);
          *(v78 + 7) = v94;
          goto LABEL_41;
        case 4u:
          v82 = *v79;
          v83 = v79[8];
          outlined copy of Result<_DataTable, Error>(*v79, v83);
          *v78 = v82;
          v78[8] = v83;
          a1 = v139;
          *(v78 + 2) = *(v79 + 2);
          v84 = *(v79 + 3);
          *(v78 + 3) = v84;
          *(v78 + 4) = *(v79 + 4);
          v85 = *(v79 + 5);
          *(v78 + 5) = v85;
          goto LABEL_44;
        case 5u:
          v95 = type metadata accessor for DataFrame(0);
          (*(*(v95 - 8) + 16))(v78, v79, v95);
          v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v97 = v96[12];
          *&v78[v97] = *&v79[v97];
          v92 = *&v79[v97 + 8];
          *&v78[v97 + 8] = v92;
          v98 = v96[16];
          *&v78[v98] = *&v79[v98];
          v93 = *&v79[v98 + 8];
          *&v78[v98 + 8] = v93;
          v99 = v96[20];
          *&v78[v99] = *&v79[v99];
          v94 = *&v79[v99 + 8];
          *&v78[v99 + 8] = v94;
LABEL_41:
          v92;
          v100 = v93;
          v76 = a2;
          v100;
          v101 = v94;
          a1 = v139;
          break;
        case 6u:
          v102 = type metadata accessor for DataFrame(0);
          (*(*(v102 - 8) + 16))(v78, v79, v102);
          v103 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v104 = *(v103 + 48);
          *&v78[v104] = *&v79[v104];
          v84 = *&v79[v104 + 8];
          *&v78[v104 + 8] = v84;
          v89 = *(v103 + 64);
LABEL_43:
          *&v78[v89] = *&v79[v89];
          v85 = *&v79[v89 + 8];
          *&v78[v89 + 8] = v85;
LABEL_44:
          v84;
          v101 = v85;
          v76 = a2;
          break;
      }

      v101;
LABEL_46:
      swift_storeEnumTagMultiPayload(v78, v143, v147);
      swift_storeEnumTagMultiPayload(v78, v80, 1);
    }

    else
    {
      memcpy(v78, v79, *(*(v80 - 8) + 64));
    }
  }

  v105 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *&v78[v105[5]] = *&v79[v105[5]];
  *&v78[v105[6]] = *&v79[v105[6]];
  *&v78[v105[7]] = *&v79[v105[7]];
  if (a1 != v76)
  {
    v106 = a3[7];
    v107 = a1 + v106;
    v108 = v76 + v106;
    outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLClassifierMetrics.Contents);
    v144 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v109 = swift_getEnumCaseMultiPayload(v108, v144);
    if (v109 == 2)
    {
      v114 = *v108;
      swift_errorRetain(*v108);
      *v107 = v114;
    }

    else if (v109 == 1)
    {
      *v107 = *v108;
      v148 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v110 = *(v148 + 20);
      v168 = &v107[v110];
      v111 = type metadata accessor for DataFrame(0);
      v112 = *(*(v111 - 8) + 16);
      v113 = &v108[v110];
      a1 = v139;
      v112(v168, v113, v111);
      v112(&v107[*(v148 + 24)], &v108[*(v148 + 24)], v111);
      v109 = 1;
    }

    else
    {
      v149 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v115 = swift_getEnumCaseMultiPayload(v108, v149);
      v116 = v115 == 1;
      v117 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v115 == 1)
      {
        v117 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v118 = __swift_instantiateConcreteTypeFromMangledName(v117);
      (*(*(v118 - 8) + 16))(v107, v108, v118);
      swift_storeEnumTagMultiPayload(v107, v149, v116);
    }

    swift_storeEnumTagMultiPayload(v107, v144, v109);
    v119 = a3[8];
    v120 = a1 + v119;
    v121 = a2 + v119;
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v119, type metadata accessor for MLClassifierMetrics.Contents);
    v122 = swift_getEnumCaseMultiPayload(v121, v144);
    if (v122 == 2)
    {
      v127 = *v121;
      swift_errorRetain(v127);
      *v120 = v127;
    }

    else if (v122 == 1)
    {
      *v120 = *v121;
      v152 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v123 = *(v152 + 20);
      v150 = &v120[v123];
      v124 = type metadata accessor for DataFrame(0);
      v125 = *(*(v124 - 8) + 16);
      v126 = &v121[v123];
      a1 = v139;
      v125(v150, v126, v124);
      v125(&v120[*(v152 + 24)], &v121[*(v152 + 24)], v124);
      v122 = 1;
    }

    else
    {
      v128 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v129 = swift_getEnumCaseMultiPayload(v121, v128);
      v153 = v121;
      v130 = v129 == 1;
      v131 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v129 == 1)
      {
        v131 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v132 = __swift_instantiateConcreteTypeFromMangledName(v131);
      (*(*(v132 - 8) + 16))(v120, v153, v132);
      swift_storeEnumTagMultiPayload(v120, v128, v130);
    }

    swift_storeEnumTagMultiPayload(v120, v144, v122);
  }

  return a1;
}

uint64_t initializeWithTake for MLHandPoseClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v127 = type metadata accessor for MLHandActionClassifier(0);
  v3 = *(v127 + 28);
  v4 = (a1 + v3);
  v5 = (a2 + v3);
  v6 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v5, v6) == 1)
  {
    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v5, v7))
    {
      case 0u:
        v120 = type metadata accessor for URL(0);
        v8 = *(*(v120 - 8) + 32);
        v8(v4, v5, v120);
        v125 = v7;
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v8(&v4[v9[12]], &v5[v9[12]], v120);
        *&v4[v9[16]] = *&v5[v9[16]];
        *&v4[v9[20]] = *&v5[v9[20]];
        *&v4[v9[24]] = *&v5[v9[24]];
        *&v4[v9[28]] = *&v5[v9[28]];
        v10 = v4;
        v11 = v125;
        v12 = 0;
        goto LABEL_11;
      case 1u:
        v14 = type metadata accessor for URL(0);
        (*(*(v14 - 8) + 32))(v4, v5, v14);
        v113 = 1;
        goto LABEL_10;
      case 2u:
        v13 = type metadata accessor for URL(0);
        (*(*(v13 - 8) + 32))(v4, v5, v13);
        v113 = 2;
        goto LABEL_10;
      case 5u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(v4, v5, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v4[v16[12]] = *&v5[v16[12]];
        *&v4[v16[16]] = *&v5[v16[16]];
        *&v4[v16[20]] = *&v5[v16[20]];
        v113 = 5;
        goto LABEL_10;
      case 6u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 32))(v4, v5, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v4[v18[12]] = *&v5[v18[12]];
        *&v4[v18[16]] = *&v5[v18[16]];
        *&v4[v18[20]] = *&v5[v18[20]];
        *&v4[v18[24]] = *&v5[v18[24]];
        v113 = 6;
LABEL_10:
        v12 = v113;
        v10 = v4;
        v11 = v7;
LABEL_11:
        swift_storeEnumTagMultiPayload(v10, v11, v12);
        break;
      default:
        memcpy(v4, v5, *(*(v7 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v4, v6, 1);
  }

  else
  {
    memcpy(v4, v5, *(*(v6 - 8) + 64));
  }

  v19 = v127;
  v20 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v4[v20[5]] = *&v5[v20[5]];
  *&v4[v20[6]] = *&v5[v20[6]];
  *&v4[v20[7]] = *&v5[v20[7]];
  *&v4[v20[8]] = *&v5[v20[8]];
  *&v4[v20[10]] = *&v5[v20[10]];
  v21 = *(v127 + 32);
  v22 = (a1 + v21);
  v23 = a2;
  v24 = (a2 + v21);
  v25 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v24, v25);
  v126 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    *v22 = *v24;
    v121 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v37 = *(v121 + 20);
    v115 = &v22[v37];
    v38 = type metadata accessor for DataFrame(0);
    v39 = *(*(v38 - 8) + 32);
    v40 = &v24[v37];
    v25 = v126;
    v39(v115, v40, v38);
    v41 = v38;
    v19 = v127;
    v39(&v22[*(v121 + 24)], &v24[*(v121 + 24)], v41);
    v23 = a2;
    v36 = 1;
    v34 = v22;
    v35 = v126;
LABEL_19:
    swift_storeEnumTagMultiPayload(v34, v35, v36);
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v28 = swift_getEnumCaseMultiPayload(v24, v27);
    v29 = v28 == 1;
    v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v28 == 1)
    {
      v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
    (*(*(v31 - 8) + 32))(v22, v24, v31);
    v32 = v27;
    v25 = v126;
    v33 = v29;
    v23 = a2;
    swift_storeEnumTagMultiPayload(v22, v32, v33);
    v34 = v22;
    v35 = v126;
    v36 = 0;
    goto LABEL_19;
  }

  memcpy(v22, v24, *(*(v25 - 8) + 64));
LABEL_21:
  v42 = *(v19 + 36);
  v43 = (a1 + v42);
  v44 = (v23 + v42);
  v45 = swift_getEnumCaseMultiPayload(v44, v25);
  if (v45 == 1)
  {
    *v43 = *v44;
    v128 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v54 = *(v128 + 20);
    v122 = &v43[v54];
    v55 = type metadata accessor for DataFrame(0);
    v56 = *(*(v55 - 8) + 32);
    v57 = &v44[v54];
    v23 = a2;
    v56(v122, v57, v55);
    v56(&v43[*(v128 + 24)], &v44[*(v128 + 24)], v55);
    v53 = 1;
    v51 = v43;
    v52 = v126;
LABEL_27:
    swift_storeEnumTagMultiPayload(v51, v52, v53);
    goto LABEL_29;
  }

  if (!v45)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v47 = swift_getEnumCaseMultiPayload(v44, v46);
    v48 = v47 == 1;
    v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
    (*(*(v50 - 8) + 32))(v43, v44, v50);
    swift_storeEnumTagMultiPayload(v43, v46, v48);
    v51 = v43;
    v52 = v126;
    v53 = 0;
    goto LABEL_27;
  }

  memcpy(v43, v44, *(*(v25 - 8) + 64));
LABEL_29:
  v58 = a3;
  *(a1 + *(a3 + 20)) = *(v23 + *(a3 + 20));
  v59 = *(a3 + 24);
  v60 = (a1 + v59);
  v61 = (v23 + v59);
  v62 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v61, v62) == 1)
  {
    v129 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v61, v129))
    {
      case 0u:
        v63 = type metadata accessor for URL(0);
        v123 = *(*(v63 - 8) + 32);
        v123(v60, v61, v63);
        v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v65 = v63;
        v58 = a3;
        v123(&v60[v64[12]], &v61[v64[12]], v65);
        *&v60[v64[16]] = *&v61[v64[16]];
        v66 = v64[20];
        v23 = a2;
        *&v60[v66] = *&v61[v66];
        v67 = v60;
        v68 = v129;
        v69 = 0;
        goto LABEL_39;
      case 1u:
        v71 = type metadata accessor for URL(0);
        (*(*(v71 - 8) + 32))(v60, v61, v71);
        v114 = 1;
        goto LABEL_38;
      case 2u:
        v70 = type metadata accessor for URL(0);
        (*(*(v70 - 8) + 32))(v60, v61, v70);
        v114 = 2;
        goto LABEL_38;
      case 5u:
        v72 = type metadata accessor for DataFrame(0);
        (*(*(v72 - 8) + 32))(v60, v61, v72);
        v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v60[v73[12]] = *&v61[v73[12]];
        *&v60[v73[16]] = *&v61[v73[16]];
        *&v60[v73[20]] = *&v61[v73[20]];
        v114 = 5;
        goto LABEL_38;
      case 6u:
        v74 = type metadata accessor for DataFrame(0);
        (*(*(v74 - 8) + 32))(v60, v61, v74);
        v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&v60[*(v75 + 48)] = *&v61[*(v75 + 48)];
        *&v60[*(v75 + 64)] = *&v61[*(v75 + 64)];
        v114 = 6;
LABEL_38:
        v69 = v114;
        v67 = v60;
        v68 = v129;
LABEL_39:
        swift_storeEnumTagMultiPayload(v67, v68, v69);
        break;
      default:
        memcpy(v60, v61, *(*(v129 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v60, v62, 1);
  }

  else
  {
    memcpy(v60, v61, *(*(v62 - 8) + 64));
  }

  v76 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *&v60[v76[5]] = *&v61[v76[5]];
  *&v60[v76[6]] = *&v61[v76[6]];
  *&v60[v76[7]] = *&v61[v76[7]];
  v77 = *(v58 + 28);
  v78 = (a1 + v77);
  v79 = (v23 + v77);
  v80 = v126;
  v81 = swift_getEnumCaseMultiPayload(v79, v126);
  if (v81 == 1)
  {
    *v78 = *v79;
    v130 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v92 = *(v130 + 20);
    v124 = &v78[v92];
    v93 = type metadata accessor for DataFrame(0);
    v94 = *(*(v93 - 8) + 32);
    v95 = &v79[v92];
    v23 = a2;
    v94(v124, v95, v93);
    v96 = v93;
    v80 = v126;
    v94(&v78[*(v130 + 24)], &v79[*(v130 + 24)], v96);
    v58 = a3;
    v91 = 1;
    v89 = v78;
    v90 = v126;
LABEL_47:
    swift_storeEnumTagMultiPayload(v89, v90, v91);
    goto LABEL_49;
  }

  if (!v81)
  {
    v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v83 = swift_getEnumCaseMultiPayload(v79, v82);
    v84 = v83 == 1;
    v85 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v83 == 1)
    {
      v85 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v86 = __swift_instantiateConcreteTypeFromMangledName(v85);
    (*(*(v86 - 8) + 32))(v78, v79, v86);
    v87 = v82;
    v80 = v126;
    v88 = v84;
    v58 = a3;
    swift_storeEnumTagMultiPayload(v78, v87, v88);
    v89 = v78;
    v90 = v126;
    v91 = 0;
    goto LABEL_47;
  }

  memcpy(v78, v79, *(*(v126 - 8) + 64));
LABEL_49:
  v97 = *(v58 + 32);
  v98 = (a1 + v97);
  v99 = (v97 + v23);
  v100 = swift_getEnumCaseMultiPayload(v99, v80);
  if (v100 == 1)
  {
    *v98 = *v99;
    v118 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v109 = *(v118 + 20);
    v110 = type metadata accessor for DataFrame(0);
    v111 = *(*(v110 - 8) + 32);
    v111(&v98[v109], &v99[v109], v110);
    v111(&v98[*(v118 + 24)], &v99[*(v118 + 24)], v110);
    v108 = 1;
    v106 = v98;
    v107 = v126;
  }

  else
  {
    if (v100)
    {
      memcpy(v98, v99, *(*(v80 - 8) + 64));
      return a1;
    }

    v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v102 = swift_getEnumCaseMultiPayload(v99, v101);
    v103 = v102 == 1;
    v104 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v102 == 1)
    {
      v104 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v105 = __swift_instantiateConcreteTypeFromMangledName(v104);
    (*(*(v105 - 8) + 32))(v98, v99, v105);
    swift_storeEnumTagMultiPayload(v98, v101, v103);
    v106 = v98;
    v107 = v80;
    v108 = 0;
  }

  swift_storeEnumTagMultiPayload(v106, v107, v108);
  return a1;
}

void *assignWithTake for MLHandPoseClassifier(void *a1, void *a2, int *a3)
{
  v3 = a2;
  v5 = *a1;
  *a1 = *a2;
  v5;
  v6 = a1[1];
  a1[1] = a2[1];

  v7 = a1[2];
  a1[2] = a2[2];

  v135 = type metadata accessor for MLHandActionClassifier(0);
  v8 = v135[7];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v124 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v11 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v10, v11) == 1)
    {
      v131 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v10, v131))
      {
        case 0u:
          v120 = type metadata accessor for URL(0);
          v12 = *(*(v120 - 8) + 32);
          v12(v9, v10, v120);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v12(&v9[v13[12]], &v10[v13[12]], v120);
          v3 = a2;
          *&v9[v13[16]] = *&v10[v13[16]];
          *&v9[v13[20]] = *&v10[v13[20]];
          *&v9[v13[24]] = *&v10[v13[24]];
          *&v9[v13[28]] = *&v10[v13[28]];
          v14 = v9;
          v15 = v131;
          v16 = 0;
          goto LABEL_12;
        case 1u:
          v18 = type metadata accessor for URL(0);
          (*(*(v18 - 8) + 32))(v9, v10, v18);
          v115 = 1;
          goto LABEL_11;
        case 2u:
          v17 = type metadata accessor for URL(0);
          (*(*(v17 - 8) + 32))(v9, v10, v17);
          v115 = 2;
          goto LABEL_11;
        case 5u:
          v19 = type metadata accessor for DataFrame(0);
          (*(*(v19 - 8) + 32))(v9, v10, v19);
          v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v9[v20[12]] = *&v10[v20[12]];
          *&v9[v20[16]] = *&v10[v20[16]];
          *&v9[v20[20]] = *&v10[v20[20]];
          v115 = 5;
          goto LABEL_11;
        case 6u:
          v21 = type metadata accessor for DataFrame(0);
          (*(*(v21 - 8) + 32))(v9, v10, v21);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v9[v22[12]] = *&v10[v22[12]];
          *&v9[v22[16]] = *&v10[v22[16]];
          *&v9[v22[20]] = *&v10[v22[20]];
          *&v9[v22[24]] = *&v10[v22[24]];
          v115 = 6;
LABEL_11:
          v16 = v115;
          v14 = v9;
          v15 = v131;
LABEL_12:
          swift_storeEnumTagMultiPayload(v14, v15, v16);
          break;
        default:
          memcpy(v9, v10, *(*(v131 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v9, v11, 1);
    }

    else
    {
      memcpy(v9, v10, *(*(v11 - 8) + 64));
    }
  }

  v23 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v9[v23[5]] = *&v10[v23[5]];
  *&v9[v23[6]] = *&v10[v23[6]];
  *&v9[v23[7]] = *&v10[v23[7]];
  *&v9[v23[8]] = *&v10[v23[8]];
  *&v9[v23[10]] = *&v10[v23[10]];
  if (v124 == v3)
  {
    goto LABEL_31;
  }

  v24 = v135[8];
  v25 = v124 + v24;
  v26 = v3 + v24;
  outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLClassifierMetrics.Contents);
  v27 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v27);
  v132 = v27;
  if (EnumCaseMultiPayload == 1)
  {
    *v25 = *v26;
    v121 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v37 = *(v121 + 20);
    v117 = &v25[v37];
    v126 = v3;
    v38 = type metadata accessor for DataFrame(0);
    v39 = *(*(v38 - 8) + 32);
    v40 = &v26[v37];
    v27 = v132;
    v39(v117, v40, v38);
    v41 = v38;
    v3 = v126;
    v39(&v25[*(v121 + 24)], &v26[*(v121 + 24)], v41);
    v36 = 1;
    v34 = v25;
    v35 = v132;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v25, v26, *(*(v27 - 8) + 64));
      goto LABEL_23;
    }

    v125 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v29 = swift_getEnumCaseMultiPayload(v26, v125);
    v30 = v29 == 1;
    v31 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v29 == 1)
    {
      v31 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledName(v31);
    (*(*(v32 - 8) + 32))(v25, v26, v32);
    v33 = v30;
    v27 = v132;
    swift_storeEnumTagMultiPayload(v25, v125, v33);
    v34 = v25;
    v35 = v132;
    v36 = 0;
  }

  swift_storeEnumTagMultiPayload(v34, v35, v36);
LABEL_23:
  v42 = v135[9];
  v43 = v124 + v42;
  v44 = v3 + v42;
  outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLClassifierMetrics.Contents);
  v45 = swift_getEnumCaseMultiPayload(v44, v27);
  if (v45 == 1)
  {
    *v43 = *v44;
    v137 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v55 = *(v137 + 20);
    v56 = &v43[v55];
    v127 = v3;
    v57 = type metadata accessor for DataFrame(0);
    v58 = &v44[v55];
    v59 = *(*(v57 - 8) + 32);
    v59(v56, v58, v57);
    v60 = v57;
    v3 = v127;
    v59(&v43[*(v137 + 24)], &v44[*(v137 + 24)], v60);
    v54 = 1;
    v52 = v43;
    v53 = v132;
LABEL_29:
    swift_storeEnumTagMultiPayload(v52, v53, v54);
    goto LABEL_31;
  }

  if (!v45)
  {
    v136 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v46 = swift_getEnumCaseMultiPayload(v44, v136);
    v47 = v3;
    v48 = v46 == 1;
    v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v46 == 1)
    {
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
    (*(*(v50 - 8) + 32))(v43, v44, v50);
    v51 = v48;
    v3 = v47;
    swift_storeEnumTagMultiPayload(v43, v136, v51);
    v52 = v43;
    v53 = v132;
    v54 = 0;
    goto LABEL_29;
  }

  memcpy(v43, v44, *(*(v27 - 8) + 64));
LABEL_31:
  v61 = a3[5];
  v62 = *(v124 + v61);
  *(v124 + v61) = *(v3 + v61);

  v63 = a3[6];
  v64 = v124 + v63;
  v65 = v3 + v63;
  if (v124 != v3)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v66 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v65, v66) == 1)
    {
      v138 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v65, v138))
      {
        case 0u:
          v122 = type metadata accessor for URL(0);
          v133 = *(*(v122 - 8) + 32);
          v133(v64, v65, v122);
          v128 = v3;
          v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v133(&v64[v67[12]], &v65[v67[12]], v122);
          *&v64[v67[16]] = *&v65[v67[16]];
          v68 = v67[20];
          v3 = v128;
          *&v64[v68] = *&v65[v68];
          v69 = v64;
          v70 = v138;
          v71 = 0;
          goto LABEL_42;
        case 1u:
          v73 = type metadata accessor for URL(0);
          (*(*(v73 - 8) + 32))(v64, v65, v73);
          v116 = 1;
          goto LABEL_41;
        case 2u:
          v72 = type metadata accessor for URL(0);
          (*(*(v72 - 8) + 32))(v64, v65, v72);
          v116 = 2;
          goto LABEL_41;
        case 5u:
          v74 = type metadata accessor for DataFrame(0);
          (*(*(v74 - 8) + 32))(v64, v65, v74);
          v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v64[v75[12]] = *&v65[v75[12]];
          *&v64[v75[16]] = *&v65[v75[16]];
          *&v64[v75[20]] = *&v65[v75[20]];
          v116 = 5;
          goto LABEL_41;
        case 6u:
          v76 = type metadata accessor for DataFrame(0);
          (*(*(v76 - 8) + 32))(v64, v65, v76);
          v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          *&v64[*(v77 + 48)] = *&v65[*(v77 + 48)];
          *&v64[*(v77 + 64)] = *&v65[*(v77 + 64)];
          v116 = 6;
LABEL_41:
          v71 = v116;
          v69 = v64;
          v70 = v138;
LABEL_42:
          swift_storeEnumTagMultiPayload(v69, v70, v71);
          break;
        default:
          memcpy(v64, v65, *(*(v138 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v64, v66, 1);
    }

    else
    {
      memcpy(v64, v65, *(*(v66 - 8) + 64));
    }
  }

  v78 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *&v64[v78[5]] = *&v65[v78[5]];
  *&v64[v78[6]] = *&v65[v78[6]];
  *&v64[v78[7]] = *&v65[v78[7]];
  if (v124 == v3)
  {
    return v124;
  }

  v79 = a3[7];
  v80 = v124 + v79;
  v81 = v3 + v79;
  outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLClassifierMetrics.Contents);
  v82 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v83 = swift_getEnumCaseMultiPayload(v81, v82);
  v139 = v82;
  if (v83 == 1)
  {
    *v80 = *v81;
    v134 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v93 = *(v134 + 20);
    v123 = &v80[v93];
    v130 = v3;
    v94 = type metadata accessor for DataFrame(0);
    v95 = *(*(v94 - 8) + 32);
    v96 = &v81[v93];
    v82 = v139;
    v95(v123, v96, v94);
    v97 = v94;
    v3 = v130;
    v95(&v80[*(v134 + 24)], &v81[*(v134 + 24)], v97);
    v92 = 1;
    v90 = v80;
    v91 = v139;
  }

  else
  {
    if (v83)
    {
      memcpy(v80, v81, *(*(v82 - 8) + 64));
      goto LABEL_53;
    }

    v129 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v84 = swift_getEnumCaseMultiPayload(v81, v129);
    v85 = v3;
    v86 = v84 == 1;
    v87 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v84 == 1)
    {
      v87 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v88 = __swift_instantiateConcreteTypeFromMangledName(v87);
    (*(*(v88 - 8) + 32))(v80, v81, v88);
    v89 = v86;
    v3 = v85;
    v82 = v139;
    swift_storeEnumTagMultiPayload(v80, v129, v89);
    v90 = v80;
    v91 = v139;
    v92 = 0;
  }

  swift_storeEnumTagMultiPayload(v90, v91, v92);
LABEL_53:
  v98 = a3[8];
  v99 = v124 + v98;
  v100 = v3 + v98;
  outlined destroy of MLActivityClassifier.ModelParameters(v124 + v98, type metadata accessor for MLClassifierMetrics.Contents);
  v101 = swift_getEnumCaseMultiPayload(v100, v82);
  if (v101 == 1)
  {
    *v99 = *v100;
    v119 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v111 = *(v119 + 20);
    v112 = type metadata accessor for DataFrame(0);
    v113 = *(*(v112 - 8) + 32);
    v113(&v99[v111], &v100[v111], v112);
    v113(&v99[*(v119 + 24)], &v100[*(v119 + 24)], v112);
    v110 = 1;
    v108 = v99;
    v109 = v139;
  }

  else
  {
    if (v101)
    {
      memcpy(v99, v100, *(*(v82 - 8) + 64));
      return v124;
    }

    v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v103 = swift_getEnumCaseMultiPayload(v100, v102);
    v104 = v100;
    v105 = v103 == 1;
    v106 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v103 == 1)
    {
      v106 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v107 = __swift_instantiateConcreteTypeFromMangledName(v106);
    (*(*(v107 - 8) + 32))(v99, v104, v107);
    swift_storeEnumTagMultiPayload(v99, v102, v105);
    v108 = v99;
    v109 = v139;
    v110 = 0;
  }

  swift_storeEnumTagMultiPayload(v108, v109, v110);
  return v124;
}

uint64_t sub_27341(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLHandActionClassifier(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v7 = a3[6];
    }

    else
    {
      v5 = type metadata accessor for MLClassifierMetrics(0);
      v7 = a3[7];
    }

    v4 = v7 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + a3[5]) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[5]) >> 1) + 1;
  }

  return result;
}

uint64_t sub_273F3(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLHandActionClassifier(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = a4[5];
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v9 = a4[6];
    }

    else
    {
      v7 = type metadata accessor for MLClassifierMetrics(0);
      v9 = a4[7];
    }

    v6 = v9 + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLHandPoseClassifier(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier(319);
  if (v2 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    v5[1] = &value witness table for Builtin.UnknownObject + 64;
    result = type metadata accessor for MLHandPoseClassifier.ModelParameters(319);
    if (v3 <= 0x3F)
    {
      v5[2] = *(result - 8) + 64;
      result = type metadata accessor for MLClassifierMetrics.Contents(319);
      if (v4 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        v7 = v6;
        swift_initStructMetadata(a1, 256, 5, v5, a1 + 16);
        return 0;
      }
    }
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v5 <= 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    v8 = swift_allocObject(v7, 8 * v5 + 32, 7);
    v9 = (_swift_stdlib_malloc_size(v8) - 32);
    v8[2] = v5;
    v8[3] = 2 * (v9 / 8) + 1;
  }

  if (v4 == a3)
  {
    BUG();
  }

  v10 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  swift_arrayInitWithCopy(v8 + 4, a2 + 8 * a3, v5, v10);
  return v8;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v5 <= 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v8 = swift_allocObject(v7, 8 * v5 + 32, 7);
    v9 = (_swift_stdlib_malloc_size(v8) - 32);
    v8[2] = v5;
    v8[3] = 2 * (v9 / 8);
  }

  if (v4 == a3)
  {
    BUG();
  }

  memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
  return v8;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = a2;
  if (v5 <= 0)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>);
    v9 = *(type metadata accessor for NeuralNetwork.Layer(0) - 8);
    v17 = *(v9 + 72);
    v10 = *(v9 + 80);
    v11 = (v10 + 32) & ~v10;
    v12 = swift_allocObject(v8, v11 + v5 * v17, v10 | 7);
    v13 = _swift_stdlib_malloc_size(v12);
    if (!v17)
    {
      BUG();
    }

    v14 = v13 - v11;
    if (__OFSUB__(-v14, 1) && v17 == -1)
    {
      BUG();
    }

    v12[2] = v5;
    v12[3] = 2 * (v14 / v17);
    v7 = a2;
  }

  if (v4 == a3)
  {
    BUG();
  }

  v15 = type metadata accessor for NeuralNetwork.Layer(0);
  swift_arrayInitWithCopy(v12 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), *(*(v15 - 8) + 72) * a3 + v7, v5, v15);
  return v12;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v5 <= 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Interaction>);
    v8 = swift_allocObject(v7, 16 * v5 + 32, 7);
    v9 = (_swift_stdlib_malloc_size(v8) - 32);
    v8[2] = v5;
    v8[3] = 2 * (v9 / 16);
  }

  if (v4 == a3)
  {
    BUG();
  }

  memcpy(v8 + 4, (16 * a3 + a2), 16 * v5);
  return v8;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v5 <= 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v8 = swift_allocObject(v7, 8 * v5 + 32, 7);
    v9 = (_swift_stdlib_malloc_size(v8) - 32);
    v8[2] = v5;
    v8[3] = 2 * (v9 / 8);
  }

  if (v4 == a3)
  {
    BUG();
  }

  memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
  return v8;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = a2;
  if (v5 <= 0)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<URL, String>>);
    v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8);
    v17 = *(v9 + 72);
    v10 = *(v9 + 80);
    v11 = (v10 + 32) & ~v10;
    v12 = swift_allocObject(v8, v11 + v5 * v17, v10 | 7);
    v13 = _swift_stdlib_malloc_size(v12);
    if (!v17)
    {
      BUG();
    }

    v14 = v13 - v11;
    if (__OFSUB__(-v14, 1) && v17 == -1)
    {
      BUG();
    }

    v12[2] = v5;
    v12[3] = 2 * (v14 / v17);
    v7 = a2;
  }

  if (v4 == a3)
  {
    BUG();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  swift_arrayInitWithCopy(v12 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), *(*(v15 - 8) + 72) * a3 + v7, v5, v15);
  return v12;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *a1, uint64_t a2)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, &demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, &demangling cache variable for type metadata for _ContiguousArrayStorage<UInt64>);
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *__src, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a2 <= 0)
  {
    v6 = 8 * a2;
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
    v4 = swift_allocObject(v3, 8 * a2 + 32, 7);
    v5 = (_swift_stdlib_malloc_size(v4) - 32);
    v4[2] = a2;
    v4[3] = 2 * (v5 / 8);
    v6 = 8 * a2;
  }

  memcpy(v4 + 4, __src, v6);
  return v4;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *__src, uint64_t a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a2 <= 0)
  {
    v5 = 4 * a2;
    v3 = _swiftEmptyArrayStorage;
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Float>);
    v3 = swift_allocObject(v2, 4 * a2 + 32, 7);
    v4 = (_swift_stdlib_malloc_size(v3) - 32);
    v3[2] = a2;
    v3[3] = 2 * (v4 / 4);
    v5 = 4 * a2;
  }

  memcpy(v3 + 4, __src, v5);
  return v3;
}

void *_s10Algorithms23ChunksOfCountCollectionV5_base06_chunkD0ACyxGx_SitcfCs10ArraySliceVySSG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (a5 <= 0)
  {
    v8 = v7 <= 0;
    v9 = v7 > a5;
  }

  else
  {
    v8 = v7 >= 0;
    v9 = v7 < a5;
  }

  if (!v9 || !v8)
  {
    v6 = a5 + a3;
    if (__OFADD__(a5, a3))
    {
      BUG();
    }
  }

  *result = a1;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = v6;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(a4 + 32);
  v6 = ~(-1 << -v5);
  if (-v5 >= 64)
  {
    v6 = -1;
  }

  v7 = a4 + 56;
  v8 = *(a4 + 56) & v6;
  if (!a2)
  {
    v11 = 0;
    a3 = 0;
    goto LABEL_35;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_35;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v9 = (63 - v5) >> 6;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = v10;
    if (__OFADD__(1, v10++))
    {
      BUG();
    }

    if (v8)
    {
      goto LABEL_20;
    }

    v14 = v11 + 1;
    if (__OFADD__(1, v11))
    {
      BUG();
    }

    if (v14 >= v9)
    {
      goto LABEL_34;
    }

    v8 = *(v7 + 8 * v14);
    if (v8)
    {
      ++v11;
      goto LABEL_20;
    }

    v11 += 2;
    if (v14 + 1 >= v9)
    {
      v11 = v14;
      goto LABEL_34;
    }

    v8 = *(v7 + 8 * v14 + 8);
    if (!v8)
    {
      v15 = v14 + 2;
      if (v14 + 2 >= v9)
      {
        goto LABEL_34;
      }

      v8 = *(v7 + 8 * v14 + 16);
      if (v8)
      {
        goto LABEL_17;
      }

      v11 = v14 + 3;
      if (v14 + 3 >= v9)
      {
        goto LABEL_36;
      }

      v8 = *(v7 + 8 * v14 + 24);
      if (!v8)
      {
        v15 = v14 + 4;
        if (v14 + 4 >= v9)
        {
          goto LABEL_34;
        }

        v8 = *(v7 + 8 * v14 + 32);
        if (v8)
        {
          goto LABEL_17;
        }

        v11 = v14 + 5;
        if (v14 + 5 >= v9)
        {
LABEL_36:
          v11 = v15;
          goto LABEL_34;
        }

        v8 = *(v7 + 8 * v14 + 40);
        if (!v8)
        {
          break;
        }
      }
    }

LABEL_20:
    _BitScanForward64(&v16, v8);
    v8 &= v8 - 1;
    *a2++ = *(*(a4 + 48) + ((v11 << 9) | (8 * v16)));
    if (v10 == a3)
    {
      goto LABEL_35;
    }
  }

  v15 = v14 + 6;
  if (v14 + 6 >= v9)
  {
    goto LABEL_34;
  }

  v8 = *(v7 + 8 * v14 + 48);
  if (v8)
  {
LABEL_17:
    v11 = v15;
    goto LABEL_20;
  }

  while (1)
  {
    v11 = v15 + 1;
    if (v15 + 1 >= v9)
    {
      break;
    }

    v8 = *(a4 + 8 * v15++ + 64);
    if (v8)
    {
      goto LABEL_20;
    }
  }

  v11 = v9 - 1;
LABEL_34:
  v8 = 0;
  a3 = v12;
LABEL_35:
  *a1 = a4;
  a1[1] = v7;
  a1[2] = ~v5;
  a1[3] = v11;
  a1[4] = v8;
  return a3;
}

{
  v5 = -1 << *(a4 + 32);
  v6 = ~(-1 << -v5);
  if (-v5 >= 64)
  {
    v6 = -1;
  }

  v21 = a4 + 56;
  v7 = *(a4 + 56) & v6;
  v19 = v5;
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
    goto LABEL_38;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_38;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v8 = a2;
  v23 = a1;
  v22 = (63 - v5) >> 6;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (v9 >= a3)
    {
      BUG();
    }

    v11 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (!v7)
    {
      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      if (v12 >= v22)
      {
        goto LABEL_36;
      }

      v7 = *(v21 + 8 * v12);
      if (v7)
      {
        ++v10;
        goto LABEL_21;
      }

      v10 += 2;
      if (v12 + 1 >= v22)
      {
        v10 = v12;
        goto LABEL_36;
      }

      v7 = *(v21 + 8 * v12 + 8);
      if (!v7)
      {
        v13 = v12 + 2;
        if (v12 + 2 >= v22)
        {
          goto LABEL_36;
        }

        v7 = *(v21 + 8 * v12 + 16);
        if (v7)
        {
          goto LABEL_18;
        }

        v10 = v12 + 3;
        if (v12 + 3 >= v22)
        {
          goto LABEL_39;
        }

        v7 = *(v21 + 8 * v12 + 24);
        if (!v7)
        {
          v13 = v12 + 4;
          if (v12 + 4 >= v22)
          {
            goto LABEL_36;
          }

          v7 = *(v21 + 8 * v12 + 32);
          if (v7)
          {
            goto LABEL_18;
          }

          v10 = v12 + 5;
          if (v12 + 5 >= v22)
          {
LABEL_39:
            v10 = v13;
            goto LABEL_36;
          }

          v7 = *(v21 + 8 * v12 + 40);
          if (!v7)
          {
            break;
          }
        }
      }
    }

LABEL_21:
    _BitScanForward64(&v14, v7);
    v7 &= v7 - 1;
    v15 = *(a4 + 48);
    v16 = (v10 << 10) | (16 * v14);
    v17 = *(v15 + v16 + 8);
    *v8 = *(v15 + v16);
    v8[1] = v17;
    if (v11 == a3)
    {
      v17;
      goto LABEL_37;
    }

    v8 += 2;
    v17;
    v9 = v11;
  }

  v13 = v12 + 6;
  if (v12 + 6 >= v22)
  {
    goto LABEL_36;
  }

  v7 = *(v21 + 8 * v12 + 48);
  if (v7)
  {
LABEL_18:
    v10 = v13;
    goto LABEL_21;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (v13 + 1 >= v22)
    {
      break;
    }

    v7 = *(a4 + 8 * v13++ + 64);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v10 = v22 - 1;
LABEL_36:
  v7 = 0;
  a3 = v9;
LABEL_37:
  a1 = v23;
LABEL_38:
  *a1 = a4;
  a1[1] = v21;
  a1[2] = ~v19;
  a1[3] = v10;
  a1[4] = v7;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v7 = a2;
  if (!CMLDictionary.size.getter())
  {
    v5 = 0;
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v17 = 1;
  v5 = 0;
  v16 = v6;
  while (1)
  {
    v15 = v7;
    v8 = v5;
    v9 = CMLDictionary.keyAndValue(at:)(v5);
    v11 = v10;
    v5 = specialized RandomAccessCollection<>.index(after:)(v8);
    *v15 = v9;
    v15[1] = v11;
    v6 = v16;
    if (v16 == v17)
    {
      break;
    }

    if (__OFADD__(1, v17))
    {
      BUG();
    }

    ++v17;
    v12 = v5;
    v7 = v15 + 2;
    v13 = v5 == CMLDictionary.size.getter();
    v5 = v12;
    if (v13)
    {
      v6 = v17 - 1;
      break;
    }
  }

  v4 = a1;
LABEL_14:
  *v4 = v3;
  v4[1] = v5;
  return v6;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  a4;
  v6 = specialized Dictionary.startIndex.getter(v4);
  v8 = v7;
  v44 = v9;
  v4;
  if (!a2)
  {
    a3 = 0;
    v28 = a1;
    v10 = v6;
LABEL_19:
    v29 = v44;
    goto LABEL_21;
  }

  v10 = v6;
  if (!a3)
  {
    v28 = a1;
    goto LABEL_19;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v37 = a2;
  v41 = v4 + 64;
  v11 = 0;
  v12 = 0;
  v40 = v4;
  v35 = a3;
  while (1)
  {
    v13 = __OFADD__(1, v12);
    v14 = v12 + 1;
    if (v13)
    {
      BUG();
    }

    if (v44)
    {
      BUG();
    }

    v15 = *(v4 + 36);
    v16 = 1 << *(v4 + 32);
    if (v15 != v8)
    {
      BUG();
    }

    if (v10 == v16)
    {
      break;
    }

    if (v10 < 0 || v10 >= v16)
    {
      BUG();
    }

    v32 = v8;
    v17 = v10 >> 6;
    v18 = *(v41 + 8 * (v10 >> 6));
    v19 = 1 << v10;
    if (!_bittest64(&v18, v10))
    {
      BUG();
    }

    v38 = v15;
    v33 = v14;
    v20 = *(v40 + 48);
    v21 = *(v40 + 56);
    v22 = *(v20 + 24 * v10);
    v23 = *(v20 + 24 * v10 + 8);
    v24 = *(v20 + 24 * v10 + 16);
    v36 = *(v21 + 24 * v10);
    v39 = *(v21 + 24 * v10 + 8);
    v43 = *(v21 + 24 * v10 + 16);
    v31 = v10;
    outlined copy of MLDataValue(v36, v39, v43);
    v42 = v24;
    outlined copy of MLDataValue(v22, v23, v24);
    outlined copy of MLDataValue(v36, v39, v43);
    outlined copy of MLDataValue(v22, v23, v24);
    v34 = v22;
    outlined consume of MLDataValue(v22, v23, v24);
    outlined consume of MLDataValue(v36, v39, v43);
    v25 = *(v40 + 32);
    if (v31 >= -(-1 << v25))
    {
      BUG();
    }

    if ((v19 & *(v41 + 8 * v17)) == 0)
    {
      BUG();
    }

    v4 = v40;
    if (*(v40 + 36) != v38)
    {
      BUG();
    }

    v26 = _HashTable.occupiedBucket(after:)(v31, v41, ~(-1 << v25));
    v27 = *(v40 + 36);
    v44 = 0;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v31, v32, 0);
    *v37 = v34;
    *(v37 + 8) = v23;
    *(v37 + 16) = v42;
    *(v37 + 24) = v36;
    *(v37 + 32) = v39;
    *(v37 + 40) = v43;
    v37 += 48;
    v12 = v33;
    v11 = v33;
    v10 = v26;
    v8 = v27;
    a3 = v35;
    if (v33 == v35)
    {
      v10 = v26;
      v8 = v27;
      v28 = a1;
      v29 = 0;
      goto LABEL_21;
    }
  }

  v29 = 0;
  a3 = v11;
  v28 = a1;
LABEL_21:
  *v28 = v4;
  *(v28 + 8) = v10;
  *(v28 + 16) = v8;
  *(v28 + 24) = v29 & 1;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  result = 0;
  v86 = a1;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v8 = a2;
      if (CMLSequence.size.getter())
      {
        v9 = 1;
        v10 = 0;
        v11 = 0.0;
        v85 = a3;
        v88 = a4;
        do
        {
          v84 = v9;
          v82 = v10;
          v12 = CMLSequence.value(at:)(v10);
          if (v11 != 0.0)
          {
            v72 = "CreateML/SequenceType.swift";
            v73 = 27;
            v70 = 36;
            v71 = *&v11;
            goto LABEL_68;
          }

          v13 = v12;
          v14 = CMLFeatureValue.type.getter();
          v83 = v8;
          switch(v14)
          {
            case 0:
              v15 = *(v13 + 16);

              v96 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v15));
              v13, 2;
              object = 0;
              v17 = 0;
              goto LABEL_47;
            case 1:
              v61 = *(v13 + 16);

              specialized handling<A, B>(_:_:)(v61);
              v94 = a5;
              v13, 2;
              a5 = v94;
              v96 = v94;
              v17 = 1;
              goto LABEL_44;
            case 2:

              v55 = CMLFeatureValue.stringValue()();
              v96 = *&v55._countAndFlagsBits;
              if (v56)
              {
                v56;

                BUG();
              }

              object = v55._object;
              v13, 2;
              v17 = 2;
              goto LABEL_47;
            case 3:
              v57 = *(v13 + 16);

              v58 = specialized handling<A, B>(_:_:)(v57);
              if (!v58)
              {
                BUG();
              }

              v59 = type metadata accessor for CMLSequence();
              v60 = swift_allocObject(v59, 25, 7);
              *(v60 + 16) = v58;
              v96 = *&v60;
              *(v60 + 24) = 1;
              v13, 2;
              v17 = 3;
              goto LABEL_46;
            case 4:
              v18 = *(v13 + 16);
              v89 = v13;

              v19 = specialized handling<A, B>(_:_:)(v18);
              if (!v19)
              {
                BUG();
              }

              v87 = type metadata accessor for CMLDictionary();
              *&v20 = COERCE_DOUBLE(swift_initStackObject(v87, v77));
              *(v20 + 16) = v19;
              v90 = _swiftEmptyDictionarySingleton;
              swift_retain_n(v20, 2);
              v21 = 0;
              v96 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
              v94 = *&v20;
              break;
            case 5:

              v17 = 6;
              v96 = 0.0;
              goto LABEL_44;
            case 6:

              MLDataValue.MultiArrayType.init(from:)(v13);
              v96 = *&v92;
              if (!v92)
              {
                BUG();
              }

              v17 = 5;
LABEL_44:
              object = 0;
              goto LABEL_47;
          }

          while (v21 != CMLDictionary.size.getter())
          {
            CMLDictionary.keyAndValue(at:)(v21);
            v23 = v22;
            v21 = specialized RandomAccessCollection<>.index(after:)(v21);
            v24 = CMLFeatureValue.stringValue()();
            if (v25)
            {
              v25;

              *&v20 = v94;
            }

            else
            {
              v91 = v24;

              switch(CMLFeatureValue.type.getter())
              {
                case 0u:
                  v26 = *(v23 + 16);

                  countAndFlagsBits = specialized handling<A, B>(_:_:)(v26);
                  JUMPOUT(0x2877ALL);
                case 1u:
                  v35 = *(v23 + 16);

                  specialized handling<A, B>(_:_:)(v35);
                  countAndFlagsBits = *&a5;
                  JUMPOUT(0x2890ALL);
                case 2u:

                  countAndFlagsBits = CMLFeatureValue.stringValue()()._countAndFlagsBits;
                  if (!v30)
                  {
                    JUMPOUT(0x2886ALL);
                  }

                  v30;

                  BUG();
                case 3u:
                  v31 = *(v23 + 16);

                  v32 = specialized handling<A, B>(_:_:)(v31);
                  if (v32)
                  {
                    v33 = type metadata accessor for CMLSequence();
                    v34 = swift_allocObject(v33, 25, 7);
                    v34[2] = v32;
                    countAndFlagsBits = v34;
                    JUMPOUT(0x288CFLL);
                  }

                  BUG();
                case 4u:
                  v27 = *(v23 + 16);

                  v28 = specialized handling<A, B>(_:_:)(v27);
                  if (v28)
                  {
                    v29 = swift_allocObject(v87, 24, 7);
                    *(v29 + 16) = v28;
                    v80[0] = v29;
                    v80[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                    v80[2] = 0;
                    v80[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                    v80[4] = 0;
                    v80[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                    v80[6] = 0;
                    _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v80);
                    JUMPOUT(0x2882ELL);
                  }

                  BUG();
                case 5u:

                  v23, 2;
                  v36 = 6;
                  countAndFlagsBits = 0;
                  break;
                case 6u:

                  MLDataValue.MultiArrayType.init(from:)(v23);
                  countAndFlagsBits = v92;
                  if (!v92)
                  {
                    BUG();
                  }

                  v23, 2;
                  v36 = 5;
                  break;
              }

              v97 = 0;
              v92 = v91;
              LOBYTE(v93) = 2;
              v37 = v96;
              specialized __RawDictionaryStorage.find<A>(_:)(v91, 2, a5);
              v40 = (v39 & 1) == 0;
              v41 = __OFADD__(*(*&v37 + 16), v40);
              v42 = *(*&v37 + 16) + v40;
              if (v41)
              {
                BUG();
              }

              v43 = v39;
              if (*(*&v37 + 24) < v42)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, 1u);
                v44 = v91;
                specialized __RawDictionaryStorage.find<A>(_:)(v91, 2, a5);
                LOBYTE(v46) = v46 & 1;
                v47 = v43;
                if ((v43 & 1) != v46)
                {
                  LOBYTE(v47) = v43 & 1;
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, *(&v44 + 1), v46, v47, v45);
                  BUG();
                }
              }

              v48 = v97;
              if (v43)
              {
                v74 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                swift_willThrow();
                v81 = v74;
                swift_errorRetain(v74);
                v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v81, v75, &type metadata for _MergeError, 0))
                {
                  v78 = 0;
                  v79 = 0xE000000000000000;
                  _StringGuts.grow(_:)(30);
                  v76._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                  v76._countAndFlagsBits = 0xD00000000000001BLL;
                  String.append(_:)(v76);
                  _print_unlocked<A, B>(_:_:)(&v92, &v78, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                  v76._countAndFlagsBits = 39;
                  v76._object = 0xE100000000000000;
                  String.append(_:)(v76);
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v78, v79, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                  BUG();
                }

                outlined consume of MLDataValue(countAndFlagsBits, v97, v36);
                outlined consume of MLDataValue(v92, *(&v92 + 1), v93);

                v81;
                v72 = "Swift/Dictionary.swift";
                v73 = 22;
                v70 = 489;
                v71 = v74;
LABEL_68:
                swift_unexpectedError(v71, v72, v73, 1, v70);
                BUG();
              }

              v49 = v90;
              v90[(v38 >> 6) + 8] |= 1 << v38;
              v50 = v49[6];
              v51 = 24 * v38;
              *(v50 + v51) = v91;
              *(v50 + v51 + 16) = 2;
              v52 = v49[7];
              *(v52 + v51) = countAndFlagsBits;
              *(v52 + v51 + 8) = v48;
              *(v52 + v51 + 16) = v36;
              v53 = v49[2];
              v41 = __OFADD__(1, v53);
              v54 = v53 + 1;
              if (v41)
              {
                BUG();
              }

              v96 = *&v49;
              v49[2] = v54;
              *&v20 = v94;
            }
          }

          v89, 2;
          v20, 3;
          v17 = 4;
LABEL_46:
          object = 0;
          a4 = v88;
LABEL_47:
          if (v82 >= CMLSequence.size.getter())
          {
            BUG();
          }

          v62 = v83;
          *v83 = v96;
          v62[1] = object;
          *(v62 + 16) = v17;
          v63 = v62;
          result = v85;
          if (v84 == v85)
          {
            break;
          }

          v64 = v84 + 1;
          if (__OFADD__(1, v84))
          {
            BUG();
          }

          v94 = 0.0;
          v65 = a4;
          v66 = v84;
          v67 = CMLSequence.size.getter();
          v8 = v63 + 3;
          result = v66;
          v10 = v66;
          v68 = v66 == v67;
          a4 = v65;
          v11 = v94;
          v9 = v64;
        }

        while (!v68);
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      result = 0;
    }
  }

  v69 = v86;
  *v86 = a4;
  v69[1] = result;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a4;
  v19 = a3;
  v21 = a5 & 1;
  v14 = a5 & 1;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v6 = 0;
      v20 = a5;
      v17 = a5;
      v18 = a4;
      v7 = 0;
      while (1)
      {
        if (__OFADD__(1, v7++))
        {
          BUG();
        }

        *&v15 = v5;
        BYTE8(v15) = v21;
        outlined copy of Result<_DataTable, Error>(v5, v17);
        v9 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(v5, v21);
        if (v6 == v9)
        {
          break;
        }

        MLDataTable.Rows.subscript.getter(v6);
        v18 = a4;
        v20 = v14;
        outlined copy of Result<_DataTable, Error>(a4, v14);
        v10 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(a4, v14 & 1);
        if (v6 >= v10)
        {
          BUG();
        }

        *a2 = v15;
        *(a2 + 16) = v16;
        a2 += 24;
        v5 = a4;
        v6 = v7;
        if (v7 == v19)
        {
          v5 = a4;
          goto LABEL_12;
        }
      }

      v5 = v18;
      v19 = v6;
LABEL_12:
      a5 = v20;
    }
  }

  else
  {
    v19 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = a5 & 1;
  result = v19;
  *(a1 + 16) = v19;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v9 = 0;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v10 = 0;
      v11 = 0;
      v39 = a4;
      v36 = a3;
      while (1)
      {
        v12 = __OFADD__(1, v11);
        v13 = v11 + 1;
        if (v12)
        {
          BUG();
        }

        v40 = v10;
        v34 = v13;
        v33 = a2;

        v7;
        swift_retain_n(v6, 2);
        v14 = CMLSequence.size.getter();
        v32 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);

        v15 = CMLSequence.size.getter();
        v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);

        if (v16 < 0)
        {
          BUG();
        }

        v17 = CMLSequence.size.getter();
        v18 = specialized RandomAccessCollection<>.distance(from:to:)(0, v17);
        v7;
        a4 = v39;

        v6;
        if (v32 < 0 || v18 < v32)
        {
          BUG();
        }

        v9 = v40;
        if (v40 == v32)
        {
          break;
        }

        CMLSequence.value(at:)(v40);
        v19 = CMLFeatureValue.stringValue()();
        if (v20)
        {
          v20;

          _StringGuts.grow(_:)(37);
          0xE000000000000000;
          v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          object = v26._object;
          String.append(_:)(v26);
          object;
          v28._countAndFlagsBits = 46;
          v28._object = 0xE100000000000000;
          String.append(_:)(v28);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, "able.ColumnNames.swift" + 0x8000000000000000, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
          BUG();
        }

        countAndFlagsBits = v19._countAndFlagsBits;
        v23 = v19._object;

        v24 = CMLSequence.value(at:)(v40);
        MLDataValue.init(_:)(v24, v21);

        v23;
        outlined copy of MLDataValue(v29, v30, v31);
        v23;
        outlined consume of MLDataValue(v29, v30, v31);
        *v33 = countAndFlagsBits;
        *(v33 + 8) = v23;
        *(v33 + 16) = v29;
        *(v33 + 24) = v30;
        *(v33 + 32) = v31;
        v6 = a6;
        a2 = v33 + 40;
        v11 = v34;
        v10 = v34;
        a3 = v36;
        v7 = a5;
        a4 = v39;
        if (v34 == v36)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v9 = a3;
    }
  }

  *a1 = a4;
  a1[1] = v7;
  a1[2] = v6;
  a1[3] = v9;
  return v9;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v22 = a2;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v7 = CMLSequence.size.getter();
      v8 = 0;
      v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);

      if (v9)
      {
        v10 = 1;
        while (1)
        {
          v21 = v10;
          v20 = v10 - 1;
          v11 = CMLSequence.value(at:)(v10 - 1);
          MLDataValue.init(_:)(v11, a5);
          outlined copy of MLDataValue(v17, v18, v19);
          outlined consume of MLDataValue(v17, v18, v19);

          v12 = CMLSequence.size.getter();
          v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v12);

          if (v20 >= v13)
          {
            BUG();
          }

          *v22 = v17;
          *(v22 + 8) = v18;
          *(v22 + 16) = v19;
          if (a3 == v21)
          {
            break;
          }

          if (__OFADD__(1, v21))
          {
            BUG();
          }

          v14 = CMLSequence.size.getter();
          v15 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);

          v22 += 24;
          v10 = v21 + 1;
          if (v21 == v15)
          {
            v8 = v21;
            goto LABEL_14;
          }
        }

        v8 = a3;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v28 = a1;

      v6 = CMLSequence.size.getter();
      v7 = 0;
      v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

      if (v8)
      {
        v9 = 1;
        v27 = a4;
        v24 = a3;
        while (1)
        {
          v23 = v9;
          v10 = v9 - 1;
          CMLSequence.value(at:)(v9 - 1);
          v26 = v10;
          v11 = CMLFeatureValue.stringValue()();
          if (v12)
          {

            v12;
            _StringGuts.grow(_:)(37);
            0xE000000000000000;
            v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
            object = v20._object;
            String.append(_:)(v20);
            object;
            v22._countAndFlagsBits = 46;
            v22._object = 0xE100000000000000;
            String.append(_:)(v22);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, "able.ColumnNames.swift" + 0x8000000000000000, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
            BUG();
          }

          countAndFlagsBits = v11._countAndFlagsBits;
          v14 = v11._object;

          v15 = CMLSequence.size.getter();
          v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);

          if (v26 >= v16)
          {
            BUG();
          }

          *v25 = countAndFlagsBits;
          v25[1] = v14;
          if (v24 == v23)
          {
            break;
          }

          if (__OFADD__(1, v23))
          {
            BUG();
          }

          a4 = v27;

          v17 = CMLSequence.size.getter();
          v18 = specialized RandomAccessCollection<>.distance(from:to:)(0, v17);

          v25 += 2;
          v9 = v23 + 1;
          if (v23 == v18)
          {
            v7 = v23;
            goto LABEL_15;
          }
        }

        v7 = v24;
        a4 = v27;
LABEL_15:
        a1 = v28;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = a4;
  a1[1] = v7;
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v92 = type metadata accessor for Date(0);
  v80 = *(v92 - 8);
  v8 = *(v80 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v93 = v73;
  v91 = type metadata accessor for DataFrame.Rows(0);
  v78 = *(v91 - 8);
  v11 = *(v78 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v87 = v73;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v86 = v73;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v79 = v73;
  v81 = type metadata accessor for DataFrame(0);
  v82 = *(v81 - 8);
  v18 = *(v82 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v94 = v73;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v83 = v73;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v84 = v73;
  v89 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v25 = *(*(v89 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = v73;
  v29 = v3;
  v100 = v73;
  outlined init with take of MLClassifierMetrics(v3, v73, type metadata accessor for MLActivityClassifier.DataBatcher);
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v96 = a1;
      v98 = 0;
      v95 = *(v89 + 48);
      v32 = 0;
      v85 = a3;
      while (1)
      {
        if (v32 >= a3)
        {
          BUG();
        }

        v90 = v32;
        v33 = __OFADD__(1, v32);
        v34 = v32 + 1;
        if (v33)
        {
          BUG();
        }

        v77 = v34;
        v76 = a2;
        v35 = v100;
        v36 = *&v100[v95];
        v37 = v79;
        DataFrame.rows.getter(v29, v28, v30, v31);
        v38 = DataFrame.Rows.count.getter();
        v39 = *(v78 + 8);
        v39(v37, v91);
        v97 = v36;
        if (v36 >= v38)
        {
          a1 = v96;
          v7 = v90;
          goto LABEL_33;
        }

        v88 = v39;
        v40 = v93;
        Date.init()(v37);
        v99 = Date.timeIntervalSince1970.getter(v37);
        v41 = *(v80 + 8);
        v41(v40, v92);
        v42 = v99 * 1000.0;
        if (COERCE__INT64(fabs(v99 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          BUG();
        }

        if (v42 <= -9.223372036854778e18)
        {
          BUG();
        }

        if (v42 >= 9.223372036854776e18)
        {
          BUG();
        }

        v43 = *(v35 + *(v89 + 32));
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
        if (swift_dynamicCastMetatype(v43, v44))
        {
          v47 = v97 + 1;
          v48 = v86;
          DataFrame.rows.getter(v43, v44, v45, v46);
          v49 = DataFrame.Rows.count.getter();
          v50 = v48;
          v51 = v100;
          v88(v50, v91);
          if (v49 < v47)
          {
            v47 = v49;
          }

          *&v51[v95] = v47;
          v52 = v93;
          Date.init()(v50);
          v99 = Date.timeIntervalSince1970.getter(v50);
          v41(v52, v92);
          v53 = v99 * 1000.0;
          if (COERCE__INT64(fabs(v99 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            BUG();
          }

          if (v53 <= -9.223372036854778e18)
          {
            BUG();
          }

          if (v53 >= 9.223372036854776e18)
          {
            BUG();
          }

          v54 = v98;
          _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSd_Tt3g5(v97, 1, v53);
        }

        else
        {
          v55 = v43;
          v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
          if (!swift_dynamicCastMetatype(v43, v56))
          {
            v74 = 0;
            v75 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);
            v75;
            v74 = 0xD000000000000016;
            v75 = "ityClassifier+Batching.swift" + 0x8000000000000000;
            v71._countAndFlagsBits = _typeName(_:qualified:)(v43, 0);
            object = v71._object;
            String.append(_:)(v71);
            object;
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v74, v75, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 348, 0);
            BUG();
          }

          v59 = v97 + 1;
          v60 = v87;
          DataFrame.rows.getter(v55, v56, v57, v58);
          v61 = DataFrame.Rows.count.getter();
          v88(v60, v91);
          if (v61 < v59)
          {
            v59 = v61;
          }

          *(v35 + v95) = v59;
          v62 = v93;
          Date.init()(v60);
          v99 = Date.timeIntervalSince1970.getter(v60);
          v41(v62, v92);
          v63 = v99 * 1000.0;
          if (COERCE__INT64(fabs(v99 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            BUG();
          }

          if (v63 <= -9.223372036854778e18)
          {
            BUG();
          }

          if (v63 >= 9.223372036854776e18)
          {
            BUG();
          }

          v54 = v98;
          _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSf_Tt3g5(v97, 1, v63);
        }

        if (v54)
        {
          v54;
          a1 = v96;
          v7 = v90;
          goto LABEL_32;
        }

        v98 = 0;
        v64 = v82;
        v65 = *(v82 + 32);
        v66 = v83;
        v67 = v81;
        v65(v83, v94, v81);
        v68 = v84;
        v65(v84, v66, v67);
        v69 = v76;
        v29 = v76;
        v28 = v68;
        v65(v76, v68, v67);
        a3 = v85;
        v32 = v77;
        if (v77 == v85)
        {
          break;
        }

        a2 = *(v64 + 72) + v69;
      }

      v7 = v85;
      a1 = v96;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_32:
  v35 = v100;
LABEL_33:
  outlined init with take of MLClassifierMetrics(v35, a1, type metadata accessor for MLActivityClassifier.DataBatcher);
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v10 = a3;
  if (!CMLSequence.size.getter())
  {
    v5 = 0;
LABEL_13:
    a3 = 0;
    goto LABEL_14;
  }

  v6 = 1;
  v5 = 0;
  while (1)
  {
    v7 = CMLSequence.value(at:)(v5);
    v5 = specialized RandomAccessCollection<>.index(after:)(v5);
    *(a2 + 8 * v6 - 8) = v7;
    a3 = v10;
    if (v10 == v6)
    {
      break;
    }

    if (__OFADD__(1, v6++))
    {
      BUG();
    }

    if (v5 == CMLSequence.size.getter())
    {
      a3 = v6 - 1;
      break;
    }
  }

  v4 = a1;
LABEL_14:
  *v4 = v3;
  v4[1] = v5;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
LABEL_6:
    v5 = a4;
    goto LABEL_7;
  }

  if (a3 < 0)
  {
    BUG();
  }

  if (a5 == a4)
  {
LABEL_5:
    a3 = 0;
    goto LABEL_6;
  }

  if (a5 < a4)
  {
    BUG();
  }

  if (a5 <= a4)
  {
    BUG();
  }

  *a2 = a4;
  if (a3 == 1)
  {
    v5 = a4 + 1;
  }

  else
  {
    v7 = 1;
    v8 = 1;
    while (1)
    {
      if (__OFADD__(1, v8++))
      {
        BUG();
      }

      if (!(v7 + a4 - a5))
      {
        break;
      }

      if (a4 + v7 >= a5)
      {
        BUG();
      }

      a2[v7] = a4 + v7;
      v7 = v8;
      if (v8 == a3)
      {
        v5 = a4 + v8;
        goto LABEL_7;
      }
    }

    v5 = a5;
    a3 = a5 - a4;
  }

LABEL_7:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v5;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a2)
  {
    result = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  if (a3 < 0)
  {
    BUG();
  }

  result = a4;
  if (!a4)
  {
    goto LABEL_13;
  }

  if (a4 <= 0)
  {
    BUG();
  }

  *a2 = a5;
  if (a3 == 1)
  {
LABEL_11:
    result = a3;
    goto LABEL_13;
  }

  v6 = 1;
  v7 = 1;
  while (1)
  {
    if (__OFADD__(1, v7++))
    {
      BUG();
    }

    if (a4 == v6)
    {
      break;
    }

    a2[v6] = a5;
    v6 = v7;
    if (v7 == a3)
    {
      goto LABEL_11;
    }
  }

  result = a4;
LABEL_13:
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(a4 + 32);
  v6 = ~(-1 << -v5);
  if (-v5 >= 64)
  {
    v6 = -1;
  }

  v23 = a4 + 56;
  v7 = *(a4 + 56) & v6;
  v21 = v5;
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
    goto LABEL_38;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_38;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v8 = a2;
  v25 = a1;
  v24 = (63 - v5) >> 6;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (v9 >= a3)
    {
      BUG();
    }

    v11 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (!v7)
    {
      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      if (v12 >= v24)
      {
        goto LABEL_36;
      }

      v7 = *(v23 + 8 * v12);
      if (v7)
      {
        ++v10;
        goto LABEL_21;
      }

      v10 += 2;
      if (v12 + 1 >= v24)
      {
        v10 = v12;
        goto LABEL_36;
      }

      v7 = *(v23 + 8 * v12 + 8);
      if (!v7)
      {
        v13 = v12 + 2;
        if (v12 + 2 >= v24)
        {
          goto LABEL_36;
        }

        v7 = *(v23 + 8 * v12 + 16);
        if (v7)
        {
          goto LABEL_18;
        }

        v10 = v12 + 3;
        if (v12 + 3 >= v24)
        {
          goto LABEL_39;
        }

        v7 = *(v23 + 8 * v12 + 24);
        if (!v7)
        {
          v13 = v12 + 4;
          if (v12 + 4 >= v24)
          {
            goto LABEL_36;
          }

          v7 = *(v23 + 8 * v12 + 32);
          if (v7)
          {
            goto LABEL_18;
          }

          v10 = v12 + 5;
          if (v12 + 5 >= v24)
          {
LABEL_39:
            v10 = v13;
            goto LABEL_36;
          }

          v7 = *(v23 + 8 * v12 + 40);
          if (!v7)
          {
            break;
          }
        }
      }
    }

LABEL_21:
    _BitScanForward64(&v14, v7);
    v7 &= v7 - 1;
    v15 = v14 | (v10 << 6);
    v16 = *(a4 + 48);
    v15 *= 24;
    v17 = *(v16 + v15);
    v18 = *(v16 + v15 + 8);
    v19 = *(v16 + v15 + 16);
    *v8 = v17;
    *(v8 + 8) = v18;
    *(v8 + 16) = v19;
    if (v11 == a3)
    {
      outlined copy of MLRecommender.Identifier(v17, v18, v19);
      goto LABEL_37;
    }

    v8 += 24;
    outlined copy of MLRecommender.Identifier(v17, v18, v19);
    v9 = v11;
  }

  v13 = v12 + 6;
  if (v12 + 6 >= v24)
  {
    goto LABEL_36;
  }

  v7 = *(v23 + 8 * v12 + 48);
  if (v7)
  {
LABEL_18:
    v10 = v13;
    goto LABEL_21;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (v13 + 1 >= v24)
    {
      break;
    }

    v7 = *(a4 + 8 * v13++ + 64);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v10 = v24 - 1;
LABEL_36:
  v7 = 0;
  a3 = v9;
LABEL_37:
  a1 = v25;
LABEL_38:
  *a1 = a4;
  a1[1] = v23;
  a1[2] = ~v21;
  a1[3] = v10;
  a1[4] = v7;
  return a3;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v18 = -1 << *(a4 + 32);
  v5 = ~(-1 << -v18);
  if (-v18 >= 64)
  {
    v5 = -1;
  }

  v20 = a4 + 64;
  v6 = *(a4 + 64) & v5;
  if (!a2)
  {
    i = 0;
    v4 = 0;
    goto LABEL_47;
  }

  if (!a3)
  {
    i = 0;
    goto LABEL_47;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v7 = a2;
  v22 = a1;
  v21 = (63 - v18) >> 6;
  v8 = 0;
  for (i = 0; ; i = v11)
  {
    if (v8 >= v4)
    {
      BUG();
    }

    v10 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v6)
    {
LABEL_10:
      v11 = i;
      goto LABEL_22;
    }

    v12 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v12 >= v21)
    {
      goto LABEL_45;
    }

    v6 = *(v20 + 8 * v12);
    if (v6)
    {
      v11 = i + 1;
      goto LABEL_22;
    }

    v11 = i + 2;
    if (i + 2 >= v21)
    {
      ++i;
      goto LABEL_45;
    }

    v6 = *(v20 + 8 * v12 + 8);
    if (!v6)
    {
      v13 = i + 3;
      if (i + 3 >= v21)
      {
        goto LABEL_39;
      }

      v6 = *(v20 + 8 * v12 + 16);
      if (v6)
      {
        goto LABEL_19;
      }

      v11 = i + 4;
      if (i + 4 >= v21)
      {
        goto LABEL_40;
      }

      v6 = *(v20 + 8 * v12 + 24);
      if (!v6)
      {
        v13 = i + 5;
        if (i + 5 >= v21)
        {
LABEL_39:
          i = v11;
          goto LABEL_45;
        }

        v6 = *(v20 + 8 * v12 + 32);
        if (v6)
        {
LABEL_19:
          v11 = v13;
          goto LABEL_22;
        }

        if (i + 6 >= v21)
        {
LABEL_40:
          i = v13;
          goto LABEL_45;
        }

        v6 = *(v20 + 8 * v12 + 40);
        if (v6)
        {
          v11 = i + 6;
          goto LABEL_22;
        }

        v11 = i + 7;
        if (i + 7 >= v21)
        {
          i += 6;
          goto LABEL_45;
        }

        v6 = *(v20 + 8 * v12 + 48);
        if (!v6)
        {
          break;
        }
      }
    }

LABEL_22:
    _BitScanForward64(&v14, v6);
    v6 &= v6 - 1;
    v15 = *(*(a4 + 56) + ((v11 << 9) | (8 * v14)));
    *v7 = v15;
    if (v10 == v4)
    {
      v15;
      i = v11;
      goto LABEL_46;
    }

    ++v7;
    v15;
    v8 = v10;
  }

  v16 = i + 8;
  while (v16 < v21)
  {
    v6 = *(a4 + 8 * v16++ + 64);
    if (v6)
    {
      i = v16 - 1;
      goto LABEL_10;
    }
  }

  i = v21 - 1;
LABEL_45:
  v6 = 0;
  v4 = v8;
LABEL_46:
  a1 = v22;
LABEL_47:
  *a1 = a4;
  a1[1] = v20;
  a1[2] = ~v18;
  a1[3] = i;
  a1[4] = v6;
  return v4;
}

{
  v4 = a3;
  v20 = -1 << *(a4 + 32);
  v5 = ~(-1 << -v20);
  if (-v20 >= 64)
  {
    v5 = -1;
  }

  v22 = a4 + 64;
  v6 = *(a4 + 64) & v5;
  if (!a2)
  {
    i = 0;
    v4 = 0;
    goto LABEL_47;
  }

  if (!a3)
  {
    i = 0;
    goto LABEL_47;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v7 = a2;
  v24 = a1;
  v23 = (63 - v20) >> 6;
  v8 = 0;
  for (i = 0; ; i = v11)
  {
    if (v8 >= v4)
    {
      BUG();
    }

    v10 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v6)
    {
LABEL_10:
      v11 = i;
      goto LABEL_22;
    }

    v12 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v12 >= v23)
    {
      goto LABEL_45;
    }

    v6 = *(v22 + 8 * v12);
    if (v6)
    {
      v11 = i + 1;
      goto LABEL_22;
    }

    v11 = i + 2;
    if (i + 2 >= v23)
    {
      ++i;
      goto LABEL_45;
    }

    v6 = *(v22 + 8 * v12 + 8);
    if (!v6)
    {
      v13 = i + 3;
      if (i + 3 >= v23)
      {
        goto LABEL_39;
      }

      v6 = *(v22 + 8 * v12 + 16);
      if (v6)
      {
        goto LABEL_19;
      }

      v11 = i + 4;
      if (i + 4 >= v23)
      {
        goto LABEL_40;
      }

      v6 = *(v22 + 8 * v12 + 24);
      if (!v6)
      {
        v13 = i + 5;
        if (i + 5 >= v23)
        {
LABEL_39:
          i = v11;
          goto LABEL_45;
        }

        v6 = *(v22 + 8 * v12 + 32);
        if (v6)
        {
LABEL_19:
          v11 = v13;
          goto LABEL_22;
        }

        if (i + 6 >= v23)
        {
LABEL_40:
          i = v13;
          goto LABEL_45;
        }

        v6 = *(v22 + 8 * v12 + 40);
        if (v6)
        {
          v11 = i + 6;
          goto LABEL_22;
        }

        v11 = i + 7;
        if (i + 7 >= v23)
        {
          i += 6;
          goto LABEL_45;
        }

        v6 = *(v22 + 8 * v12 + 48);
        if (!v6)
        {
          break;
        }
      }
    }

LABEL_22:
    _BitScanForward64(&v14, v6);
    v6 &= v6 - 1;
    v15 = *(a4 + 48);
    v16 = (v11 << 10) | (16 * v14);
    v17 = *(v15 + v16 + 8);
    *v7 = *(v15 + v16);
    v7[1] = v17;
    if (v10 == v4)
    {
      v17;
      i = v11;
      goto LABEL_46;
    }

    v7 += 2;
    v17;
    v8 = v10;
  }

  v18 = i + 8;
  while (v18 < v23)
  {
    v6 = *(a4 + 8 * v18++ + 64);
    if (v6)
    {
      i = v18 - 1;
      goto LABEL_10;
    }
  }

  i = v23 - 1;
LABEL_45:
  v6 = 0;
  v4 = v8;
LABEL_46:
  a1 = v24;
LABEL_47:
  *a1 = a4;
  a1[1] = v22;
  a1[2] = ~v20;
  a1[3] = i;
  a1[4] = v6;
  return v4;
}

unint64_t specialized ChunksOfCountCollection.count.getter()
{
  v1 = v0[3] >> 1;
  v2 = __OFSUB__(v1, v0[2]);
  v3 = v1 - v0[2];
  if (v2)
  {
    BUG();
  }

  v4 = v0[4];
  if (!v4)
  {
    BUG();
  }

  if (!(v3 ^ 0x8000000000000000 | ~v4))
  {
    BUG();
  }

  v6 = v3 % v4;
  v5 = v3 / v4;
  v7 = (v6 > 0) | (v6 >> 63);
  v2 = __OFADD__(v5, v7);
  v8 = v5 + v7;
  if (v2)
  {
    BUG();
  }

  return v8;
}

uint64_t specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  result = specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(*a1, a1[1], a2, a4);
  if (!v5)
  {
    *v6 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(uint64_t *a1, uint64_t a2)
{
  return specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(a1, *(v2 + 16), a2, &demangling cache variable for type metadata for [Double]);
}

{
  return specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(a1, *(v2 + 16), a2, &demangling cache variable for type metadata for [Float]);
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v7 = __swift_allocate_boxed_opaque_existential_0(&v10);
  (*(*(a4 - 8) + 32))(v7, a2, a4);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return outlined init with take of TabularRegressionTask(&v10, v8 + 40 * a1 + 32);
}

uint64_t outlined assign with copy of MLClassifierMetrics(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v2 - 8) + 24))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for String?);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v1);
    lazy protocol witness table cache variable for type String? and conformance <A> A? = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.column(name:)partial apply(uint64_t a1)
{
  return partial apply for closure #1 in CMLTable.column(name:)(a1);
}

{
  return partial apply for closure #1 in CMLTable.column(name:)(a1);
}

uint64_t closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply(void *a1)
{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return _s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0(a1);
}

{
  return _s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

void *initializeBufferWithCopyOfBuffer for MLBoostedTreeClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *__src;
    *v3 = *__src;
    v3 = (v10 + ((v5 + 16) & ~v5));

    return v3;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for DataFrame(0);
    (*(*(v11 - 8) + 16))(__dst, __src, v11);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return v3;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *__src;
    v9 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v9);
    *__dst = v8;
    __dst[8] = v9;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return v3;
  }

  return memcpy(__dst, __src, *(v4 + 64));
}

uint64_t destroy for MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    v3 = type metadata accessor for DataFrame(0);
    return (*(*(v3 - 8) + 8))(a1, v3);
  }

  else if (result == 1)
  {
    return outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  }

  return result;
}

_BYTE *initializeWithCopy for MLBoostedTreeClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

_BYTE *assignWithCopy for MLBoostedTreeClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLBoostedTreeClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLBoostedTreeClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *initializeWithTake for MLBoostedTreeClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for DataFrame(0);
  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

void *assignWithTake for MLBoostedTreeClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    (swift_initEnumMetadataMultiPayload)(a1, 256, 3);
    return 0;
  }

  return result;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.ValidationData.asTable()(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledName(uint64_t *a1)
{
  result = *a1;
  if (*a1 < 0)
  {
    v2 = *a1;
    result = swift_getTypeByMangledNameInContext2(a1 + result, -(result >> 32), 0, 0);
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of DataFrame.Slice?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

NSURL *BlobsFile.init(data:)(uint64_t a1, unint64_t a2, double a3, __m128 a4, __m128 a5, __m128 a6)
{
  v8 = v7;
  v9 = a1;
  v66 = v6;
  outlined copy of Data._Representation(a1, a2);
  v10 = static BlobsFile.isShort(_:)(a1, a2);
  v74 = a2;
  v11 = a2 >> 62;
  v12 = a2 >> 62;
  if ((v10 & 1) == 0)
  {
    v75 = v7;
    v72 = v11;
    switch(v11)
    {
      case 0:
        v15 = a1 >> 8;
        v16 = a1 >> 16;
        v17 = a1 & 0xFF000000;
        v18 = HIDWORD(a1);
        v19 = a1 >> 40;
        v20 = HIWORD(a1);
        v21 = HIBYTE(a1);
        v22 = 0;
        v23 = v74;
        LOBYTE(v24) = v9;
        break;
      case 1:
        if (a1 >> 32 >= a1)
        {
          outlined copy of Data._Representation(a1, v74);
          if (__DataStorage._bytes.getter())
          {
            __DataStorage._offset.getter();
            JUMPOUT(0x2B748);
          }

          __DataStorage._length.getter();
          BUG();
        }

        BUG();
      case 2:
        v27 = *(a1 + 16);

        v28 = (__DataStorage._bytes.getter)(v74 & 0x3FFFFFFFFFFFFFFFLL);
        if (v28)
        {
          v29 = v28;
          v30 = __DataStorage._offset.getter();
          v31 = __OFSUB__(v27, v30);
          v32 = v27 - v30;
          if (v31)
          {
            BUG();
          }

          v33 = (v29 + v32);
        }

        else
        {
          v33 = 0;
        }

        __DataStorage._length.getter();
        if (!v33)
        {
          BUG();
        }

        v44 = v33->i32[0];
        LODWORD(v18) = v33->i32[1];
        v73 = v33->u64[1];
        v68 = v33[1];
        v69 = v33[2];
        v70 = v33[3];
        v24 = v44;

        a6 = v70;
        a5 = v69;
        a4 = v68;
        LODWORD(v15) = v24 >> 8;
        LODWORD(v16) = HIWORD(v24);
        v17 = v24 & 0xFF000000;
        LODWORD(v19) = v18 >> 8;
        LODWORD(v20) = WORD1(v18);
        LODWORD(v21) = BYTE3(v18);
        v23 = v73;
        v22 = v73 & 0xFFFF000000000000;
        break;
      case 3:
        v23 = 0;
        v22 = 0;
        LOBYTE(v18) = 0;
        LOWORD(v19) = 0;
        LOBYTE(v20) = 0;
        LODWORD(v21) = 0;
        LOBYTE(v24) = 0;
        LOWORD(v15) = 0;
        LOBYTE(v16) = 0;
        v17 = 0;
        break;
    }

    v71 = (v16 << 16) | (v15 << 8) | v17 | v24;
    v85 = v71;
    v86 = (v21 << 24) | (v20 << 16) | (v19 << 8) | v18;
    v45 = v22 | v23 & 0xFFFFFFFFFFFFLL;
    v87 = v45;
    v88 = a4;
    v89 = a5;
    v90 = a6;
    v77 = a4;
    v78 = a5;
    v79 = a6;
    *&v76 = __PAIR64__(v86, v71);
    *(&v76 + 1) = v45;
    if (v86 == 2)
    {
      v68 = a4;
      v69 = a5;
      v70 = a6;
      switch(v72)
      {
        case 0:
          *&v92 = v9;
          DWORD2(v92) = v74;
          WORD6(v92) = WORD2(v74);
          closure #1 in static BlobsFile.readMetadata(from:header:)(&v92, &v92 + BYTE6(v74), &v85, v9, v74);
          if (v75)
          {
            outlined consume of Data._Representation(v9, v74);
            outlined consume of Data._Representation(v9, v74);
            outlined consume of Data._Representation(v9, v74);
            goto LABEL_50;
          }

          v75 = 0;
          v35 = v74;
          outlined consume of Data._Representation(v9, v74);
          outlined consume of Data._Representation(v9, v74);
          v59 = *v91;
          goto LABEL_62;
        case 1:
          v73 = v65;
          v67 = v9;
          if (v9 >> 32 < v9)
          {
            BUG();
          }

          v35 = v74;
          v72 = v74 & 0x3FFFFFFFFFFFFFFFLL;
          outlined copy of Data._Representation(v9, v74);
          v55 = v75;
          v56 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v67, v9 >> 32, v72, &v85, v9, v35, closure #1 in static BlobsFile.readMetadata(from:header:));
          v75 = v55;
          if (v55)
          {
            goto LABEL_49;
          }

          v59 = v56;
          goto LABEL_62;
        case 2:
          v73 = v65;
          v35 = v74;
          v49 = v74 & 0x3FFFFFFFFFFFFFFFLL;
          v72 = *(v9 + 16);
          v67 = *(v9 + 24);
          outlined copy of Data._Representation(v9, v74);

          v50 = v49;
          v51 = v75;
          v52 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v72, v67, v50, &v85, v9, v35, closure #1 in static BlobsFile.readMetadata(from:header:));
          v75 = v51;
          if (!v51)
          {
            v63 = v52;

            v59 = v63;
            goto LABEL_62;
          }

LABEL_44:

LABEL_49:
          outlined consume of Data._Representation(v9, v35);
          goto LABEL_50;
        case 3:
          v73 = v65;
          *(&v92 + 6) = 0;
          *&v92 = 0;
          v53 = v74;
          v54 = v75;
          closure #1 in static BlobsFile.readMetadata(from:header:)(&v92, &v92, &v85, v9, v74);
          if (!v54)
          {
            v75 = 0;
            outlined consume of Data._Representation(v9, v53);
            outlined consume of Data._Representation(v9, v53);
            v59 = *v91;
            v35 = v53;
LABEL_62:
            v60 = v68;
            v61 = v69;
            v62 = v70;
            goto LABEL_63;
          }

          outlined consume of Data._Representation(v9, v53);
          outlined consume of Data._Representation(v9, v53);
          outlined consume of Data._Representation(v9, v53);
LABEL_50:
          v48 = v74;
          break;
      }

      goto LABEL_51;
    }

LABEL_42:
    v46 = lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError();
    swift_allocError(&type metadata for BlobsFileError, v46, 0, 0);
    *v47 = 0;
    swift_willThrow(&type metadata for BlobsFileError, v46);
    v48 = v74;
    outlined consume of Data._Representation(v9, v74);
LABEL_51:
    *&v92 = v9;
    *(&v92 + 1) = v48;
    v93 = v76;
    v94 = v77;
    v95 = v78;
    v96 = v79;
    v97 = _swiftEmptyArrayStorage;
    outlined release of BlobsFile(&v92);
    return __stack_chk_guard;
  }

  switch(v11)
  {
    case 0:
      v13 = HIDWORD(a1);
      v14 = a1;
      break;
    case 1:
      v72 = v11;
      v75 = v7;
      if (a1 >> 32 < a1)
      {
        BUG();
      }

      specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1);
      if (v75)
      {
        outlined consume of Data._Representation(a1, v74);
        BUG();
      }

      v8 = 0;
      v14 = v80;
      LODWORD(v13) = v81;
      outlined consume of Data._Representation(a1, v74);
      goto LABEL_17;
    case 2:
      v72 = v11;
      v75 = v7;
      v25 = *(a1 + 16);
      v26 = *(a1 + 24);

      specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v25);
      if (v7)
      {

        BUG();
      }

      v8 = 0;
      LODWORD(v13) = v83;
      v14 = v82;

LABEL_17:
      v12 = v72;
      break;
    case 3:
      v14 = 0;
      LODWORD(v13) = 0;
      break;
  }

  *&v84[0] = __PAIR64__(v13, v14);
  memset(v84 + 8, 0, 56);
  v76 = __PAIR64__(v13, v14);
  v77 = v84[1];
  v78 = v84[2];
  v79 = 0uLL;
  if (v13 != 2)
  {
    goto LABEL_42;
  }

  v73 = v65;
  switch(v12)
  {
    case 0:
      *&v92 = a1;
      v34 = v74;
      DWORD2(v92) = v74;
      WORD6(v92) = WORD2(v74);
      closure #1 in static BlobsFile.readShortMetadata(from:header:)(&v92, &v92 + BYTE6(v74), v84, a1, v74);
      outlined consume of Data._Representation(a1, v34);
      v72 = a1;
      outlined consume of Data._Representation(a1, v34);
      if (v8)
      {
        goto LABEL_30;
      }

      v75 = 0;
      v71 = v14;
      v59 = *v91;
      v60 = 0;
      v45 = 0;
      v61 = 0;
      v62 = 0;
      v35 = v74;
      v9 = v72;
      break;
    case 1:
      v71 = v14;
      v75 = v8;
      if (a1 >> 32 < a1)
      {
        BUG();
      }

      v35 = v74;
      v72 = v74 & 0x3FFFFFFFFFFFFFFFLL;
      outlined copy of Data._Representation(a1, v74);
      v42 = v75;
      v43 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, a1 >> 32, v72, v84, a1, v35, closure #1 in static BlobsFile.readShortMetadata(from:header:));
      v75 = v42;
      if (v42)
      {
        goto LABEL_49;
      }

      v59 = v43;
      goto LABEL_60;
    case 2:
      v71 = v14;
      v75 = v8;
      v35 = v74;
      v36 = v74 & 0x3FFFFFFFFFFFFFFFLL;
      v72 = *(a1 + 16);
      v37 = *(a1 + 24);
      outlined copy of Data._Representation(a1, v74);

      v38 = v36;
      v39 = v75;
      v40 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v72, v37, v38, v84, a1, v35, closure #1 in static BlobsFile.readShortMetadata(from:header:));
      v75 = v39;
      if (v39)
      {
        goto LABEL_44;
      }

      v58 = v40;

      v59 = v58;
LABEL_60:
      v60 = 0;
      v45 = 0;
      v61 = 0;
      v62 = 0;
      break;
    case 3:
      *(&v92 + 6) = 0;
      *&v92 = 0;
      v41 = v74;
      closure #1 in static BlobsFile.readShortMetadata(from:header:)(&v92, &v92, v84, a1, v74);
      if (v8)
      {
        outlined consume of Data._Representation(a1, v41);
        outlined consume of Data._Representation(a1, v41);
LABEL_30:
        JUMPOUT(0x2B84FLL);
      }

      v75 = 0;
      v71 = v14;
      outlined consume of Data._Representation(a1, v41);
      outlined consume of Data._Representation(a1, v41);
      v59 = *v91;
      v60 = 0;
      v45 = 0;
      v61 = 0;
      v62 = 0;
      v35 = v41;
      break;
  }

LABEL_63:
  *v91 = v9;
  *&v91[8] = v35;
  *&v91[16] = v71;
  *&v91[20] = 2;
  *&v91[24] = v45;
  *&v91[32] = v60;
  *&v91[48] = v61;
  *&v91[64] = v62;
  *&v91[80] = v59;
  v64 = v59;
  outlined retain of BlobsFile(v91);
  outlined consume of Data._Representation(v9, v35);
  *&v92 = v9;
  *(&v92 + 1) = v35;
  v93 = v76;
  v94 = v77;
  v95 = v78;
  v96 = v79;
  v97 = v64;
  outlined release of BlobsFile(&v92);
  qmemcpy(v66, v91, 0x58uLL);
  return __stack_chk_guard;
}

uint64_t static BlobsFile.isShort(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  switch(a2 >> 62)
  {
    case 0uLL:
      v4 = BYTE6(a2);
      goto LABEL_6;
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        BUG();
      }

      v4 = v4;
      goto LABEL_6;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = __OFSUB__(v5, *(a1 + 16));
      v4 = v5 - *(a1 + 16);
      if (v6)
      {
        BUG();
      }

LABEL_6:
      LOBYTE(v2) = 1;
      if (v4 == 40)
      {
        return v2;
      }

      if (v3 == 2)
      {
        v8 = *(a1 + 24);
        v6 = __OFSUB__(v8, *(a1 + 16));
        v7 = v8 - *(a1 + 16);
        if (v6)
        {
          BUG();
        }
      }

      else if (v3 == 1)
      {
        LODWORD(v7) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          BUG();
        }

        v7 = v7;
      }

      else
      {
        v7 = BYTE6(a2);
      }

      if (v7 == 64)
      {
        return 0;
      }

      if (v3 == 2)
      {
        v10 = *(a1 + 24);
        v6 = __OFSUB__(v10, *(a1 + 16));
        v9 = v10 - *(a1 + 16);
        if (v6)
        {
          BUG();
        }
      }

      else if (v3 == 1)
      {
        LODWORD(v9) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          BUG();
        }

        v9 = v9;
      }

      else
      {
        v9 = BYTE6(a2);
      }

      if (v9 < 68)
      {
        return 0;
      }

      else if (v3 == 2)
      {
        v12 = *(a1 + 16);
        v13 = *(a1 + 24);

        LOBYTE(v14) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v12);
        v2 = v14;
      }

      else
      {
        if (a1 >> 32 < a1)
        {
          BUG();
        }

        LOBYTE(v15) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1);
        v2 = v15;
        outlined consume of Data._Representation(a1, a2);
      }

      return v2;
    case 3uLL:
      return 0;
  }
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  result = a2 >> 62;
  if (a2 >> 62 != 1)
  {
    if (result != 2)
    {
      return result;
    }

    a1;
  }

  return a2 & 0x3FFFFFFFFFFFFFFFLL;
}

uint64_t lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError()
{
  result = lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError;
  if (!lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for BlobsFileError, &type metadata for BlobsFileError);
    lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError;
  if (!lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for BlobsFileError, &type metadata for BlobsFileError);
    lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError = result;
  }

  return result;
}

uint64_t closure #1 in static BlobsFile.readMetadata(from:header:)(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v6 = BYTE6(a5);
  v36 = v5;
  v8 = *a3;
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0, _swiftEmptyArrayStorage);
  if (!v8)
  {
LABEL_20:
    result = v36;
    *v36 = v9;
    return result;
  }

  v10 = v8;
  v11 = __OFSUB__(HIDWORD(a4), a4);
  v12 = HIDWORD(a4) - a4;
  v13 = v6;
  v14 = 64;
  v15 = a4;
  v16 = a1;
  while (2)
  {
    v17 = v14 + 64;
    if (__OFADD__(64, v14))
    {
      BUG();
    }

    v18 = v13;
    switch(v13)
    {
      case 0:
        goto LABEL_8;
      case 1:
        v18 = v12;
        if (v11)
        {
          BUG();
        }

        goto LABEL_8;
      case 2:
        v19 = *(v15 + 24);
        v20 = __OFSUB__(v19, *(v15 + 16));
        v18 = v19 - *(v15 + 16);
        if (v20)
        {
          BUG();
        }

LABEL_8:
        if (v17 >= v18)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      case 3:
        if (v17 >= 0)
        {
          goto LABEL_21;
        }

LABEL_11:
        if (!v16)
        {
          BUG();
        }

        v21 = *(v16 + v14 + 4);
        v22 = *(v16 + v14 + 8);
        v35 = *(v16 + v14 + 48);
        v34 = *(v16 + v14 + 32);
        v33 = *(v16 + v14 + 16);
        if (*(v16 + v14) == -559038737)
        {
          v23 = *(v9 + 2);
          v24 = v23 + 1;
          if (*(v9 + 3) >> 1 <= v23)
          {
            v37 = v10;
            v40 = v11;
            v38 = v12;
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v9 + 3) >= 2uLL, v24, 1, v9);
            v24 = v23 + 1;
            v12 = v38;
            v11 = v40;
            v10 = v37;
            v16 = a1;
            v9 = v29;
          }

          *(v9 + 2) = v24;
          v25 = v23 << 6;
          *&v9[v25 + 32] = -559038737;
          *&v9[v25 + 36] = v21;
          *&v9[v25 + 40] = v22;
          *&v9[v25 + 48] = v33;
          *&v9[v25 + 64] = v34;
          *&v9[v25 + 80] = v35;
          if (v22 < 0)
          {
            BUG();
          }

          v26 = v22 - 1;
          if (((v26 / 64 - 0x1FFFFFFFFFFFFFFLL) >> 58) < 0x3F)
          {
            BUG();
          }

          v27 = (v26 / 64) << 6;
          v20 = __OFSUB__(v27, -128);
          v28 = v27 + 128;
          if (v20)
          {
            BUG();
          }

          v20 = __OFADD__(v28, v14);
          v14 += v28;
          if (v20)
          {
            BUG();
          }

          if (!--v10)
          {
            goto LABEL_20;
          }

          continue;
        }

LABEL_21:
        v9;
        v31 = lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError();
        swift_allocError(&type metadata for BlobsFileError, v31, 0, 0);
        *v32 = 1;
        return swift_willThrow(&type metadata for BlobsFileError, v31);
    }
  }
}

uint64_t closure #1 in static BlobsFile.readShortMetadata(from:header:)(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, unint64_t a5)
{
  v37 = v6;
  v43 = a1;
  v38 = v5;
  v9 = *a3;
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0, _swiftEmptyArrayStorage);
  if (!v9)
  {
LABEL_20:
    result = v38;
    *v38 = v10;
    return result;
  }

  v11 = v9;
  v12 = __OFSUB__(HIDWORD(a4), a4);
  v13 = HIDWORD(a4) - a4;
  v14 = BYTE6(a5);
  v15 = 40;
  v36 = a5 >> 62;
  v16 = 0;
  v17 = a4;
  v18 = v43;
  while (2)
  {
    v19 = v15 + 56;
    if (__OFADD__(56, v15))
    {
      BUG();
    }

    v20 = v14;
    switch(v14)
    {
      case 0:
        goto LABEL_8;
      case 1:
        v20 = v13;
        if (v12)
        {
          BUG();
        }

        goto LABEL_8;
      case 2:
        v21 = *(v17 + 24);
        v22 = __OFSUB__(v21, *(v17 + 16));
        v20 = v21 - *(v17 + 16);
        if (v22)
        {
          BUG();
        }

LABEL_8:
        if (v19 >= v20)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      case 3:
        if (v19 >= 0)
        {
          goto LABEL_21;
        }

LABEL_11:
        if (!v18)
        {
          BUG();
        }

        if (*(v18 + v15) == -559038737)
        {
          v23 = *(v18 + v15 + 4);
          v24 = _mm_loadu_si128((v18 + v15 + 8));
          v25 = *(v10 + 2);
          v26 = *(v10 + 3);
          if (v26 >> 1 <= v25)
          {
            v39 = v17;
            v40 = v11;
            v44 = v12;
            v41 = v13;
            v42 = v14;
            v35 = v24;
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 >= 2, v25 + 1, 1, v10);
            v24 = _mm_load_si128(&v35);
            v16 = 0;
            v14 = v42;
            v13 = v41;
            v12 = v44;
            LODWORD(v11) = v40;
            v18 = v43;
            v17 = v39;
            v10 = v31;
          }

          *(v10 + 2) = v25 + 1;
          v27 = v25 << 6;
          *&v10[v27 + 32] = -559038737;
          *&v10[v27 + 36] = v23;
          *&v10[v27 + 40] = v24;
          *&v10[v27 + 88] = 0;
          *&v10[v27 + 56] = v16;
          *&v10[v27 + 72] = v16;
          if (v24.i64[0] < 0)
          {
            BUG();
          }

          v28 = (v24.i64[0] - 1) / 8;
          if (((v28 - 0xFFFFFFFFFFFFFFFLL) >> 61) < 7)
          {
            BUG();
          }

          v29 = 8 * v28;
          v22 = __OFADD__(64, v29);
          v30 = v29 + 64;
          if (v22)
          {
            BUG();
          }

          v22 = __OFADD__(v30, v15);
          v15 += v30;
          if (v22)
          {
            BUG();
          }

          v11 = (v11 - 1);
          if (!v11)
          {
            goto LABEL_20;
          }

          continue;
        }

LABEL_21:
        v10;
        v33 = lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError();
        swift_allocError(&type metadata for BlobsFileError, v33, 0, 0);
        *v34 = 1;
        return swift_willThrow(&type metadata for BlobsFileError, v33);
    }
  }
}

BOOL specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1)
{
  v1 = __DataStorage._bytes.getter();
  if (v1)
  {
    v2 = v1;
    v3 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v3))
    {
      BUG();
    }

    v4 = v2 + a1 - v3;
  }

  else
  {
    v4 = 0;
  }

  __DataStorage._length.getter();
  if (!v4)
  {
    BUG();
  }

  return *(v4 + 64) != -559038737 && *(v4 + 40) == -559038737;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1)
{
  v2 = v1;
  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    v4 = v3;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v5))
    {
      BUG();
    }

    v6 = v4 + a1 - v5;
  }

  else
  {
    v6 = 0;
  }

  __DataStorage._length.getter();
  if (!v6)
  {
    BUG();
  }

  result = *v6;
  *v2 = *v6;
  *(v2 + 8) = *(v6 + 8);
  *(v2 + 24) = *(v6 + 24);
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = a1;
    if (__OFSUB__(a1, v10))
    {
      BUG();
    }

    v12 = v9 + a1 - v10;
  }

  else
  {
    v11 = a1;
    v12 = 0;
  }

  v13 = a2 - v11;
  if (__OFSUB__(a2, v11))
  {
    BUG();
  }

  v14 = __DataStorage._length.getter();
  if (v14 < v13)
  {
    v13 = v14;
  }

  v15 = v12 + v13;
  if (!v12)
  {
    v15 = 0;
  }

  a7(v12, v15, a4, a5, a6);
  result = outlined consume of Data._Representation(a5, a6);
  if (!v7)
  {
    return v17;
  }

  return result;
}

uint64_t *outlined retain of BlobsFile(uint64_t *a1)
{
  v1 = a1[10];
  outlined copy of Data._Representation(*a1, a1[1]);
  v1;
  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Si5label_So12MLMultiArrayC9keypointstsAE_pTg50108_s8CreateML22MLHandActionClassifierV36makeLabeledKeypointsSequenceFeatures4from11classLabelsSaySi5label_So12ef30C9keypointstGAA11MLDataTableV_T24SSGtKFZSiAG_AiJtSiKXEfU_0I2ML0yZ0VSaySSGTf1cn_n(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v31 = v5;
  v29 = a4;
  v22 = a1;
  v7 = *(a1 + 16);
  if (v7)
  {
    v28 = _swiftEmptyArrayStorage;
    v8 = 0;
    v24 = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v10 = _swiftEmptyArrayStorage;
    v30 = a3;
    v27 = a3 & 1;
    v11 = v31;
    v23 = a2;
    while (1)
    {
      v20 = *(v22 + 8 * v8 + 32);
      closure #1 in static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(&v20, a2, v27, v29, &v21, a5);
      if (v11)
      {
        break;
      }

      v12 = v18;
      v13 = v19;
      v28 = v10;
      v14 = v10[2];
      v15 = v10[3];
      if (v15 >> 1 <= v14)
      {
        v26 = v19;
        v25 = v18;
        v31 = 0;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v14 + 1, 1);
        v13 = v26;
        v12 = v25;
        v11 = v31;
        v10 = v28;
      }

      ++v8;
      v10[2] = v14 + 1;
      v16 = 2 * v14;
      v10[v16 + 4] = v12;
      v10[v16 + 5] = v13;
      a2 = v23;
      if (v24 == v8)
      {
        v31 = v11;
        outlined consume of Result<_DataTable, Error>(v23, v30);
        goto LABEL_10;
      }
    }

    outlined consume of Result<_DataTable, Error>(a2, v30);
    v29;
  }

  else
  {
    outlined consume of Result<_DataTable, Error>(a2, a3);
    v10 = _swiftEmptyArrayStorage;
LABEL_10:
    v29;
  }

  return v10;
}

void *static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 8) & 1;
  v8 = *a1;
  outlined copy of Result<_DataTable, Error>(*a1, *(a1 + 8));
  v4._countAndFlagsBits = 0x5F6E6F6973736573;
  v4._object = 0xEA00000000006469;
  MLDataTable.subscript.getter(v4);
  outlined consume of Result<_DataTable, Error>(v8, v3);
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v9, v10);
  if (v3 || (outlined copy of Result<_DataTable, Error>(v8, 0), _UntypedColumn.type.getter(), outlined consume of Result<_DataTable, Error>(v8, 0), v9))
  {
    outlined consume of Result<_DataTable, Error>(v8, v3);
    BUG();
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5(v8, 0, a3);
  outlined copy of Result<_DataTable, Error>(v8, v3);
  a2;
  ML22MLHandActionClassifierV36makeLabeledKeypointsSequenceFeatures4from11classLabelsSaySi5label_So12ef30C9keypointstGAA11MLDataTableV_T24SSGtKFZSiAG_AiJtSiKXEfU_0I2ML0yZ0VSaySSGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Si5label_So12MLMultiArrayC9keypointstsAE_pTg50108_s8CreateML22MLHandActionClassifierV36makeLabeledKeypointsSequenceFeatures4from11classLabelsSaySi5label_So12ef30C9keypointstGAA11MLDataTableV_T24SSGtKFZSiAG_AiJtSiKXEfU_0I2ML0yZ0VSaySSGTf1cn_n(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5, v8, v3, a2, a3);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5;
  return ML22MLHandActionClassifierV36makeLabeledKeypointsSequenceFeatures4from11classLabelsSaySi5label_So12ef30C9keypointstGAA11MLDataTableV_T24SSGtKFZSiAG_AiJtSiKXEfU_0I2ML0yZ0VSaySSGTf1cn_n;
}

uint64_t closure #1 in static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, double a6)
{
  v61 = a4;
  v55 = v6;
  v65 = a5;
  *&v64 = v7;
  v8 = *a1;
  v60 = a2;
  *&v56 = a2;
  LODWORD(v69) = a3;
  v9 = a3 & 1;
  BYTE8(v56) = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v10._countAndFlagsBits = 0x5F6E6F6973736573;
  v10._object = 0xEA00000000006469;
  MLDataTable.subscript.getter(v10);
  outlined consume of Result<_DataTable, Error>(v56, SBYTE8(v56));
  v66 = v70;
  v67 = v71;
  v58 = &type metadata for Int;
  v59 = &protocol witness table for Int;
  *&v56 = v8;
  static MLUntypedColumn.== infix(_:_:)(&v66, &v56);
  outlined consume of Result<_DataTable, Error>(v66, v67);
  __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  *&v56 = v60;
  BYTE8(v56) = v9;
  v70 = v52;
  v71 = v53;
  outlined copy of Result<_DataTable, Error>(v60, v69);
  MLDataTable.subscript.getter(&v70);
  outlined consume of Result<_DataTable, Error>(v70, v71);
  outlined consume of Result<_DataTable, Error>(v56, SBYTE8(v56));
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v12 = swift_allocObject(v11, 56, 7);
  v12[2].super.super.isa = (&dword_0 + 3);
  v12[3].super.super.isa = (&dword_4 + 3);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v12[4].super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v12[5].super.super.isa = NSNumber.init(integerLiteral:)(3).super.super.isa;
  v12[6].super.super.isa = NSNumber.init(integerLiteral:)(21).super.super.isa;
  v13 = v64;
  static _VideoUtilities.reformatKeypointsDataTable(table:featureColumn:keypointsShape:)(&v72, 0x746E696F7079656BLL, 0xE900000000000073, v12);
  if (v13)
  {
    v12;
    outlined consume of Result<_DataTable, Error>(v72, v73);
    result = v65;
    *v65 = v13;
    return result;
  }

  *&v64 = 0;
  v12;
  v15 = v72;
  v16 = v73;
  *&v56 = v72;
  BYTE8(v56) = v73;
  v17._countAndFlagsBits = 0x6C6562616CLL;
  v17._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v17);
  if (v53)
  {
    outlined consume of Result<_DataTable, Error>(v52, 1);
LABEL_9:
    v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v26 = swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
    *v28 = 0xD000000000000023;
    *(v28 + 8) = "+DataHandling.swift" + 0x8000000000000000;
    *(v28 + 16) = 0;
    *(v28 + 32) = 0;
    *(v28 + 48) = 0;
    goto LABEL_10;
  }

  v63 = v15;

  _UntypedColumn.valueAtIndex(index:)(0, a6);
  outlined consume of Result<_DataTable, Error>(v52, 0);
  outlined consume of Result<_DataTable, Error>(v52, 0);
  v18 = v56;
  if (v57 != 2)
  {
    outlined consume of MLDataValue(v56, *(&v56 + 1), v57);
    goto LABEL_9;
  }

  v19 = v61;
  v20 = specialized Collection<>.firstIndex(of:)(v56, v61);
  if (v21)
  {
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    *(&v56 + 1);
    *&v56 = 0xD000000000000017;
    *(&v56 + 1) = "l column name label" + 0x8000000000000000;
    String.append(_:)(v18);
    outlined consume of MLDataValue(v18._countAndFlagsBits, v18._object, 2);
    v22._object = 0xE400000000000000;
    v22._countAndFlagsBits = 544106784;
    String.append(_:)(v22);
    v23._countAndFlagsBits = Array.description.getter(v19, &type metadata for String);
    object = v23._object;
    String.append(_:)(v23);
    object;
    v64 = v56;
    v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v26 = swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
    *v27 = v64;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 0;
LABEL_10:
    swift_willThrow(&type metadata for MLCreateError, v25);
    outlined consume of Result<_DataTable, Error>(v72, v73);
    result = v65;
    *v65 = v26;
    return result;
  }

  v51 = v20;
  outlined consume of MLDataValue(v18._countAndFlagsBits, v18._object, 2);
  v29 = v63;
  v70 = v63;
  v71 = v16;
  *&v56 = v63;
  BYTE8(v56) = v16;
  outlined copy of Result<_DataTable, Error>(v63, v16);
  outlined copy of Result<_DataTable, Error>(v29, v16);
  v30 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v56, SBYTE8(v56));
  v31 = specialized RandomAccessCollection<>.distance(from:to:)(0, v30, v29, v16);
  if (v31)
  {
    v68 = v16;
    v66 = _swiftEmptyArrayStorage;
    v62 = v31;
    specialized ContiguousArray.reserveCapacity(_:)(v31);
    if (v62 < 0)
    {
      BUG();
    }

    v32 = 0;
    v33 = 0;
    while (1)
    {
      v60 = v33 + 1;
      if (__OFADD__(1, v33))
      {
        BUG();
      }

      v61 = v32;
      MLDataTable.Rows.subscript.getter(v32);
      v34 = *(&v56 + 1);
      v35 = v57;
      v36 = *(*(&v56 + 1) + 16) == 0;
      v69 = v56;
      if (v36)
      {
        break;
      }

      v34;

      v37 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E696F7079656BLL, 0xE900000000000073);
      if ((v38 & 1) == 0)
      {

        v34;

        break;
      }

      v39 = *(*(v34 + 56) + 8 * v37);

      v40 = v64;
      v41 = CMLSequence.value(at:)(v39);
      if (v40)
      {
        swift_unexpectedError(v40, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
        BUG();
      }

      MLDataValue.init(_:)(v41, a6);
      v34;
      v42 = v69;

      v35;
      if (v54 != 5)
      {
        outlined consume of MLDataValue(v52, v53, v54);
        break;
      }

      *&v64 = 0;

      v34;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v42);
      v43 = v66[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v43);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v43);
      (specialized ContiguousArray._endMutation())(v43);
      *&v56 = v70;
      BYTE8(v56) = v71;
      outlined copy of Result<_DataTable, Error>(v70, v71);
      v44 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v56, SBYTE8(v56));
      if (v61 >= v44)
      {
        BUG();
      }

      v33 = v60;
      v32 = v60;
      v45 = v55;
      if (v60 == v62)
      {
        outlined consume of Result<_DataTable, Error>(v63, v68);
        v46 = v66;
        goto LABEL_23;
      }
    }

    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v49 = swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v50 = 0xD00000000000002BLL;
    *(v50 + 8) = "No matching label name " + 0x8000000000000000;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v48);

    v34;

    outlined consume of Result<_DataTable, Error>(v63, v68);
    *v65 = v49;
    return outlined consume of Result<_DataTable, Error>(v72, v73);
  }

  else
  {
    outlined consume of Result<_DataTable, Error>(v29, v16);
    v46 = _swiftEmptyArrayStorage;
    v45 = v55;
LABEL_23:
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v47 = @nonobjc MLMultiArray.__allocating_init(concatenating:axis:dataType:)(v46, 0, 65600);
    *v45 = v51;
    v45[1] = v47;
    return outlined consume of Result<_DataTable, Error>(v72, v73);
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(__int128 a1, uint64_t a2)
{
  v9 = *(a2 + 16);
  if (!v9)
  {
    return 0;
  }

  v3 = 0;
  if (a1 != *(a2 + 32) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(a2 + 32), *(a2 + 40), a1, *(&a1 + 1), 0) & 1) == 0)
  {
    v4 = (a2 + 56);
    v5 = 1;
    v3 = 0;
    while (v9 != v5)
    {
      v6 = v5;
      ++v3;
      if (a1 == *(v4 - 1))
      {
        return v3;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v4 - 1), *v4, a1, *(&a1 + 1), 0);
      v5 = v6 + 1;
      v4 += 2;
      if (v7)
      {
        return v6;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (*(a2 + 32) == a1)
    {
      return 0;
    }

    v4 = v2 - 1;
    v5 = 0;
    while (v4 != v5)
    {
      result = v5 + 1;
      if (*(a2 + 8 * v5++ + 40) == a1)
      {
        return result;
      }
    }
  }

  return 0;
}

unint64_t specialized Collection<>.firstIndex(of:)(__int128 a1, uint64_t a2, unint64_t a3)
{
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 4 * v5;
  for (i = 15; ; i = String.index(after:)(i, a2, a3))
  {
    if (i >> 14 == v10)
    {
      return 0;
    }

    *&v7 = String.subscript.getter(i, a2, a3);
    v8 = *(&v7 + 1);
    if (a1 == v7)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, *(&v7 + 1), a1, *(&a1 + 1), 0);
    v8, v8;
    if (v11)
    {
      return i;
    }
  }

  *(&v7 + 1), a1 ^ v7;
  return i;
}

id @nonobjc MLMultiArray.__allocating_init(concatenating:axis:dataType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [ObjCClassFromMetadata multiArrayByConcatenatingMultiArrays:isa alongAxis:a2 dataType:a3];
  v7 = v6;

  return v7;
}

void *static MLHandActionClassifier.prepareDataset(classLabels:trainingFeatures:validationFeatures:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v54 = v7;
  v46 = a6;
  v51 = a2;
  v50 = a1;
  v49 = type metadata accessor for LearningPhase(0);
  v56 = *(v49 - 8);
  v11 = v56[8];
  v12 = alloca(v11);
  v13 = alloca(v11);
  v47 = &v39;
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v14 = *(v48 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v52 = &v39;
  v18 = *a4;
  v19 = *(a4 + 8);
  v39 = *a5;
  LOBYTE(v55) = *(a5 + 8);
  v44 = v18;
  v45 = v19;
  v20 = v54;
  result = static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(&v44, a3, a7);
  if (!v20)
  {
    v54 = 0;
    v53 = v14;
    v40 = a3;
    v22 = *(a3 + 16);
    v23 = result;
    v24 = v47;
    v25 = v49;
    v43 = v56[13];
    v43(v47, enum case for LearningPhase.training(_:), v49);
    v41 = v22;
    _s8CreateML22MLHandActionClassifierV11makeDataset4from16classLabelsCount10parameters13learningPhase14NeuralNetworks0G0VySaySi5label_So12MLMultiArrayC9keypointstGAI10DataSampleVyAI6TensorVATGGx_SiAC15ModelParametersVAI08LearningN0OtSkRzSiAL_AnOt7ElementRtzlFZAP_Tt4g5(v23, v22, v46, v24);
    v42 = v56[1];
    v42(v24, v25);
    v23;
    v26 = 1;
    v27 = v52;
    if (v55 != 0xFF)
    {
      v28 = v39;
      v44 = v39;
      v29 = v55;
      LOBYTE(v55) = v55 & 1;
      v45 = v55;
      outlined copy of Result<_DataTable, Error>(v39, v29);
      outlined copy of Result<_DataTable, Error>(v28, v29);
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v56 = MLDataTable.size.getter();
      v30 = v28;
      outlined consume of Result<_DataTable, Error>(v44, v45);
      outlined consume of MLDataTable?(v28, v29);
      if (v56)
      {
        LODWORD(v56) = v29;
        v44 = v28;
        v45 = v55;
        v31 = v54;
        v32 = static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(&v44, v40, a7);
        v54 = v31;
        v33 = v28;
        v34 = v50;
        if (v31)
        {
          (*(v53 + 8))(v52, v48);
          return outlined consume of MLDataTable?(v28, v56);
        }

        v55 = v32;
        v38 = v47;
        v43(v47, enum case for LearningPhase.inference(_:), v49);
        v35 = v51;
        _s8CreateML22MLHandActionClassifierV11makeDataset4from16classLabelsCount10parameters13learningPhase14NeuralNetworks0G0VySaySi5label_So12MLMultiArrayC9keypointstGAI10DataSampleVyAI6TensorVATGGx_SiAC15ModelParametersVAI08LearningN0OtSkRzSiAL_AnOt7ElementRtzlFZAP_Tt4g5(v55, v41, v46, v38);
        outlined consume of MLDataTable?(v33, v56);
        v42(v38, v49);
        v55;
        v26 = 0;
        v27 = v52;
        goto LABEL_8;
      }

      v26 = 1;
      outlined consume of MLDataTable?(v30, v29);
    }

    v35 = v51;
    v34 = v50;
LABEL_8:
    v36 = v27;
    v37 = v48;
    (*(v53 + 32))(v34, v36, v48);
    return __swift_storeEnumTagSinglePayload(v35, v26, 1, v37);
  }

  return result;
}

uint64_t _s8CreateML22MLHandActionClassifierV11makeDataset4from16classLabelsCount10parameters13learningPhase14NeuralNetworks0G0VySaySi5label_So12MLMultiArrayC9keypointstGAI10DataSampleVyAI6TensorVATGGx_SiAC15ModelParametersVAI08LearningN0OtSkRzSiAL_AnOt7ElementRtzlFZAP_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v44 = a2;
  v36 = a1;
  v31[1] = v4;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>.PrefetchMode);
  v34 = *(v33 - 8);
  v5 = *(v34 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = v29;
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v40 = *(v8 - 8);
  v37 = *(v40 + 64);
  v9 = alloca(v37);
  v10 = alloca(v37);
  v41 = v29;
  v11 = type metadata accessor for LearningPhase(0);
  v12 = *(v11 - 8);
  v43 = v11;
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v42 = v29;
  v31[0] = a1;
  v16 = v39;
  v32 = *(v39 + *(v8 + 20));
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  (*(v12 + 16))(v29, v38, v11);
  outlined init with copy of MLHandActionClassifier.ModelParameters(v16, v29);
  v17 = *(v12 + 80);
  v18 = ~*(v12 + 80) & (v17 + 16);
  v19 = *(v40 + 80);
  v20 = ~v19 & (v18 + v19 + v13);
  v21 = (v37 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject(&unk_38F2E0, v21 + 8, v19 | v17 | 7);
  (*(v12 + 32))(v22 + v18, v42, v43);
  outlined init with take of MLHandActionClassifier.ModelParameters(v41, v22 + v20);
  *(v22 + v21) = v44;
  v23 = v35;
  (*(v34 + 104))(v35, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v33);
  v36;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(label: Int, keypoints: MLMultiArray)]);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  v25 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [(label: Int, keypoints: MLMultiArray)] and conformance [A], &demangling cache variable for type metadata for [(label: Int, keypoints: MLMultiArray)], &protocol conformance descriptor for [A]);
  v26 = lazy protocol witness table accessor for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>();
  v27 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance DataSample<A, B>, &demangling cache variable for type metadata for DataSample<Tensor, Tensor>, &protocol conformance descriptor for DataSample<A, B>);
  return Dataset.init(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(v31, v32, v29, 0, v23, partial apply for closure #1 in static MLHandActionClassifier.makeDataset<A>(from:classLabelsCount:parameters:learningPhase:), v22, v44, v24, v25, v26, v27);
}

uint64_t closure #1 in static MLHandActionClassifier.makeDataset<A>(from:classLabelsCount:parameters:learningPhase:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v77 = a4;
  v94 = a3;
  v90 = a2;
  v79 = v6;
  v81 = type metadata accessor for ScalarType(0);
  v82 = *(v81 - 8);
  v7 = *(v82 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v80 = v76;
  v10 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v83 = v76;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v87 = v76;
  v89 = type metadata accessor for Tensor(0);
  v92 = *(v89 - 8);
  v16 = *(v92 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v88 = v76;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v93 = v76;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v85 = v76;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v86 = v76;
  v25 = type metadata accessor for LearningPhase(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v78 = *a1;
  v30 = a1[1];
  (*(v26 + 104))(v76, enum case for LearningPhase.training(_:), v25);
  v31 = lazy protocol witness table accessor for type LearningPhase and conformance LearningPhase();
  v91 = v30;
  dispatch thunk of RawRepresentable.rawValue.getter(v25, v31);
  dispatch thunk of RawRepresentable.rawValue.getter(v25, v31);
  v32 = v84;
  v33 = v76[2];
  (*(v26 + 8))(v76, v25);
  if (v32 == v33)
  {
    v34 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    v35 = v94;
    v84 = *(v94 + *(v34 + 32));
    v36 = v91;
    v37 = static MLHandActionClassifier.dataAugmentation(_:options:)(v91, &v84);

    v38 = v37;
    v39 = v35;
  }

  else
  {
    v38 = v91;
    v39 = v94;
  }

  v94 = *(v39 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28));
  v40 = [v38 shape];
  v41 = v40;
  v42 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v41, v42);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v43 & 0xC000000000000003) == 0, v43);
  if ((v43 & 0xC000000000000003) != 0)
  {
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v43);
  }

  else
  {
    v44 = *(v43 + 32);
  }

  v45 = v44;
  v43;
  v90 = Int.init(truncating:)(v45);

  v91 = v38;
  v46 = MLMultiArray.cast(to:)(&loc_10020);
  v47 = type metadata accessor for ComputeDevice(0);
  v48 = v87;
  __swift_storeEnumTagSinglePayload(v87, 1, 1, v47);
  v49 = v86;
  Tensor.init(_:device:)(v46, v48, a5, a6);
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v47);
  Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v78, v77, v48, 1.0, 0.0);
  v50 = v94;
  v51 = v90;
  if (v90 < v94)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v53 = swift_allocObject(v52, 56, 7);
    v53[2] = 3;
    v53[3] = 6;
    v54 = __OFSUB__(v50, v51);
    v55 = v50 - v51;
    if (v54)
    {
      BUG();
    }

    v53[4] = v55;
    v53[5] = 3;
    v53[6] = 21;
    v56 = v83;
    TensorShape.init(_:)(v53, COERCE_DOUBLE(1065353216), 0.0);
    v57 = v80;
    (*(v82 + 104))(v80, enum case for ScalarType.float32(_:), v81);
    v58 = v87;
    __swift_storeEnumTagSinglePayload(v87, 1, 1, v47);
    v59 = v93;
    Tensor.init(zeros:scalarType:on:)(v56, v57, v58);
    v60 = v88;
    Tensor.concatenated(with:alongAxis:)(v59, 0);
    v61 = v92;
    v62 = *(v92 + 8);
    v63 = v59;
    v64 = v89;
    v62(v63, v89);
LABEL_14:
    v62(v49, v64);
    (*(v61 + 32))(v49, v60, v64);
    goto LABEL_15;
  }

  v64 = v89;
  v61 = v92;
  if (v90 > v94)
  {
    v65 = v90 - v94;
    if (__OFSUB__(v90, v94))
    {
      BUG();
    }

    if (v65 < 0)
    {
      BUG();
    }

    if (!v65)
    {
      BUG();
    }

    v66 = specialized RandomNumberGenerator.next<A>(upperBound:)(v65);
    v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v68 = swift_allocObject(v67, 56, 7);
    *(v68 + 16) = 3;
    *(v68 + 24) = 6;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = swift_allocObject(v67, 56, 7);
    v69[2] = 3;
    v69[3] = 6;
    v69[4] = v94;
    v69[5] = 3;
    v64 = v89;
    v69[6] = 21;
    Tensor.slice(lowerBounds:sizes:)(v68, v69);
    v68;
    v69;
    v61 = v92;
    v62 = *(v92 + 8);
    v60 = v93;
    goto LABEL_14;
  }

LABEL_15:
  v70 = *(v61 + 16);
  v71 = v93;
  v70(v93, v49, v64);
  v72 = v88;
  v73 = v85;
  v70(v88, v85, v64);
  DataSample.init(features:labels:)(v71, v72, v64, v64);

  v74 = *(v92 + 8);
  v74(v73, v64);
  return (v74)(v86, v64);
}

id static MLHandActionClassifier.dataAugmentation(_:options:)(id a1, uint64_t *a2)
{
  v5 = v2;
  v5 = *a2;
  switch(static MLHandActionClassifier.chooseAugmentationOption(_:)(&v5))
  {
    case 1:
      v3 = specialized RandomNumberGenerator.next<A>(upperBound:)(4uLL);
      result = static MLHandActionClassifier.horizontalFlip(_:caseSelected:)(a1, v3);
      break;
    case 2:
      result = static MLHandActionClassifier.randomMove(_:)(a1);
      break;
    case 3:
      result = static MLHandActionClassifier.randomShift(_:)(a1);
      break;
    case 4:
      result = static MLHandActionClassifier.randomScale(_:)(a1);
      break;
    case 5:
      result = static MLHandActionClassifier.timeInterpolate(_:)(a1);
      break;
    case 6:
      result = static MLHandActionClassifier.frameDrop(_:)(a1);
      break;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t static MLHandActionClassifier.chooseAugmentationOption(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v2, v14);
  v4 = inited;
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = 0;
  if (v1)
  {
    v5 = 2;
    v2 = 1;
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
    v4[2] = 2;
    v4[5] = 1;
  }

  else
  {
    v5 = 1;
  }

  if ((v1 & 2) != 0)
  {
    if (v4[3] >> 1 <= v5)
    {
      v2 = v4[3] >= 2uLL;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v5 + 1, 1, v4);
    }

    v4[2] = v5 + 1;
    v4[v5 + 4] = 2;
  }

  if ((v1 & 4) != 0)
  {
    v6 = v4[2];
    if (v4[3] >> 1 <= v6)
    {
      v2 = v4[3] >= 2uLL;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    v4[v6 + 4] = 3;
  }

  if ((v1 & 8) != 0)
  {
    v7 = v4[2];
    if (v4[3] >> 1 <= v7)
    {
      v2 = v4[3] >= 2uLL;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v7 + 1, 1, v4);
    }

    v4[2] = v7 + 1;
    v4[v7 + 4] = 4;
  }

  if ((v1 & 0x10) != 0)
  {
    v8 = v4[2];
    if (v4[3] >> 1 <= v8)
    {
      v2 = v4[3] >= 2uLL;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v8 + 1, 1, v4);
    }

    v4[2] = v8 + 1;
    v4[v8 + 4] = 5;
  }

  if ((v1 & 0x20) != 0)
  {
    v9 = v4[2];
    if (v4[3] >> 1 <= v9)
    {
      v2 = v4[3] >= 2uLL;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v9 + 1, 1, v4);
    }

    v4[2] = v9 + 1;
    v4[v9 + 4] = 6;
  }

  v10 = specialized Collection.randomElement<A>(using:)(v2, v4);
  v12 = v11;
  v4;
  result = 0;
  if ((v12 & 1) == 0)
  {
    return v10;
  }

  return result;
}

id static MLHandActionClassifier.horizontalFlip(_:caseSelected:)(id a1, uint64_t a2)
{
  v2 = [a1 shape];
  v3 = v2;
  v87 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v3, v87);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000003) == 0, v4);
  if ((v4 & 0xC000000000000003) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;
  v4;
  v83 = [v6 integerValue];

  v7 = [a1 shape];
  v8 = v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v8, v87);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, (v9 & 0xC000000000000003) == 0, v9);
  if ((v9 & 0xC000000000000003) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v9);
  }

  else
  {
    v10 = *(v9 + 48);
  }

  v11 = v10;
  v9;
  v82 = [v11 integerValue];

  v12 = [a1 shape];
  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v13, v87);

  objc_allocWithZone(MLMultiArray);
  v15 = @nonobjc MLMultiArray.init(shape:dataType:)(v14, 65600);
  v16 = v15;
  __dst = UnsafeMutableBufferPointer.init(_:)(v16, &type metadata for Double);
  v18 = v17;
  v86 = a1;
  v19 = UnsafeMutableBufferPointer.init(_:)(v86, &type metadata for Double);
  v81 = v16;
  if (v20 && v18)
  {
    if (v20 < v18)
    {
      v18 = v20;
    }

    memcpy(__dst, v19, 8 * v18);
  }

  if (a2 != 3)
  {
    if (v83 < 0)
    {
      BUG();
    }

    if (v83)
    {
      for (i = 0; i != v83; ++i)
      {
        if (a2 == 1)
        {
          goto LABEL_32;
        }

        if (v82 < 0)
        {
          BUG();
        }

        if (v82)
        {
          for (j = 0; j != v82; ++j)
          {
            v22 = [v86 strides];
            v23 = v22;
            v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v23, v87);

            if ((v24 & 0xC000000000000003) != 0)
            {
              v25 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v24);
            }

            else
            {
              if (!*(&dword_10 + (v24 & 0xFFFFFFFFFFFFF8)))
              {
                BUG();
              }

              v25 = *(v24 + 32);
            }

            v26 = v25;
            v24;
            v27 = [v26 integerValue];

            v29 = v27;
            v28 = i * v27;
            if (!is_mul_ok(i, v29))
            {
              BUG();
            }

            v30 = [v86 strides];
            v31 = v30;
            v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v31, v87);

            if ((v32 & 0xC000000000000003) != 0)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v32);
            }

            else
            {
              if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFF8)) < 3uLL)
              {
                BUG();
              }

              v33 = *(v32 + 48);
            }

            v34 = v33;
            v32;
            v35 = [v34 integerValue];

            v37 = v35;
            v36 = j * v35;
            if (!is_mul_ok(j, v37))
            {
              BUG();
            }

            v38 = __OFADD__(v36, v28);
            v39 = v36 + v28;
            if (v38)
            {
              BUG();
            }

            *(__dst + v39) = 1.0 - *(__dst + v39);
          }
        }

        if (a2)
        {
LABEL_32:
          v40 = 0;
          do
          {
            v41 = *(&outlined read-only object #8 of static MLHandActionClassifier.horizontalFlip(_:caseSelected:) + v40 + 4);
            v41;
            v42 = [v86 strides];
            v43 = v42;
            v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v43, v87);

            if ((v44 & 0xC000000000000003) != 0)
            {
              v45 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v44);
            }

            else
            {
              if (!*(&dword_10 + (v44 & 0xFFFFFFFFFFFFF8)))
              {
                BUG();
              }

              v45 = *(v44 + 32);
            }

            v46 = v45;
            v44;
            v47 = [v46 integerValue];

            v49 = v47;
            v48 = i * v47;
            if (!is_mul_ok(i, v49))
            {
              BUG();
            }

            if (!v41[2])
            {
              BUG();
            }

            v80 = v40;
            v50 = v41[4];
            v51 = [v86 strides];
            v52 = v51;
            v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v52, v87);

            if ((v53 & 0xC000000000000003) != 0)
            {
              v54 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v53);
            }

            else
            {
              if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFF8)) < 3uLL)
              {
                BUG();
              }

              v54 = *(v53 + 48);
            }

            v55 = v54;
            v53;
            v56 = [v55 integerValue];

            v58 = v50;
            v57 = v56 * v50;
            if (!is_mul_ok(v56, v58))
            {
              BUG();
            }

            v38 = __OFADD__(v57, v48);
            v59 = v57 + v48;
            if (v38)
            {
              BUG();
            }

            v60 = [v86 strides];
            v61 = v60;
            v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v61, v87);

            if ((v62 & 0xC000000000000003) != 0)
            {
              v63 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v62);
            }

            else
            {
              if (!*(&dword_10 + (v62 & 0xFFFFFFFFFFFFF8)))
              {
                BUG();
              }

              v63 = *(v62 + 32);
            }

            v64 = v63;
            v62;
            v65 = [v64 integerValue];

            v67 = v65;
            v66 = i * v65;
            if (!is_mul_ok(i, v67))
            {
              BUG();
            }

            if (v41[2] < 2uLL)
            {
              BUG();
            }

            v68 = v41[5];
            v41;
            v69 = [v86 strides];
            v70 = v69;
            v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v70, v87);

            if ((v71 & 0xC000000000000003) != 0)
            {
              v72 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v71);
            }

            else
            {
              if (*(&dword_10 + (v71 & 0xFFFFFFFFFFFFF8)) < 3uLL)
              {
                BUG();
              }

              v72 = *(v71 + 48);
            }

            v73 = v72;
            v71;
            v74 = [v73 integerValue];

            v76 = v68;
            v75 = v74 * v68;
            if (!is_mul_ok(v74, v76))
            {
              BUG();
            }

            v38 = __OFADD__(v75, v66);
            v77 = v75 + v66;
            if (v38)
            {
              BUG();
            }

            v40 = v80 + 1;
            v78 = *(__dst + v59);
            *(__dst + v59) = *(__dst + v77);
            *(__dst + v77) = v78;
          }

          while (v80 != 7);
        }
      }
    }
  }

  return v81;
}

id static MLHandActionClassifier.randomMove(_:)(id a1)
{
  v1 = [a1 shape];
  v2 = v1;
  v95 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v2, v95);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000003) == 0, v3);
  if ((v3 & 0xC000000000000003) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v3;
  v98 = [v5 integerValue];

  v6 = [a1 shape];
  v7 = v6;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v95);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, (v8 & 0xC000000000000003) == 0, v8);
  v88 = a1;
  if ((v8 & 0xC000000000000003) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v8);
  }

  else
  {
    v9 = *(v8 + 48);
  }

  v10 = v9;
  v8;
  v89 = [v10 integerValue];

  specialized MutableCollection<>.shuffle<A>(using:)();
  v90 = specialized MutableCollection.subscript.getter(0, 1, &outlined read-only object #0 of static MLHandActionClassifier.randomMove(_:));
  v107 = v11;
  v108 = v12;
  v14 = v13;

  specialized MutableCollection<>.shuffle<A>(using:)();
  v91 = specialized MutableCollection.subscript.getter(0, 1, &outlined read-only object #1 of static MLHandActionClassifier.randomMove(_:));
  v99 = v15;
  v104 = v16;
  v105 = v17;

  specialized MutableCollection<>.shuffle<A>(using:)();
  v92 = specialized MutableCollection.subscript.getter(0, 1, &outlined read-only object #2 of static MLHandActionClassifier.randomMove(_:));
  v103 = v18;
  v102 = v19;
  v100 = v20;

  v106 = &outlined read-only object #2 of static MLHandActionClassifier.randomMove(_:);
  specialized MutableCollection<>.shuffle<A>(using:)();
  v93 = specialized MutableCollection.subscript.getter(0, 1, &outlined read-only object #2 of static MLHandActionClassifier.randomMove(_:));
  v22 = v21;
  v101 = v23;
  v25 = v24;

  v26 = v98;
  if (v98 == &dword_0 + 1)
  {
    v27 = v25;
    v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Float>);
    v29 = swift_allocObject(v28, 36, 7);
    *(v29 + 16) = 1;
    *(v29 + 24) = 2;
    if (v108 > 0 || v14 < 2)
    {
      BUG();
    }

    v30 = (*v107 * 3.1415925) / 180.0;
    v108 = v29;
    *(v29 + 32) = v30;
    v31 = swift_allocObject(v28, 36, 7);
    *(v31 + 16) = 1;
    v107 = v31;
    *(v31 + 24) = 2;
    if (v104 > 0 || v105 < 2)
    {
      BUG();
    }

    v107[8] = *v99;
    v32 = swift_allocObject(v28, 36, 7);
    *(v32 + 16) = 1;
    *(v32 + 24) = 2;
    if (v102 > 0 || v100 < 2)
    {
      BUG();
    }

    v33 = v32;
    *(v32 + 32) = *v103;
    v106 = v32;
    v34 = swift_allocObject(v28, 36, 7);
    *(v34 + 2) = 1;
    *(v34 + 3) = 2;
    if (v101 > 0 || v27 < 2)
    {
      BUG();
    }

    v102 = v33;
    v34[8] = *v22;
  }

  else
  {
    if (v108 > 0 || v14 < 2)
    {
      BUG();
    }

    if (v14 < 4)
    {
      BUG();
    }

    v35 = specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(v98, *v107, v107[1]);
    v36 = *(v35 + 2);
    if (v36)
    {
      *&v94 = v25;
      v107 = v22;
      v106 = _swiftEmptyArrayStorage;
      v37 = 0;
      v108 = v35;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
      v38 = _swiftEmptyArrayStorage;
      v39 = _swiftEmptyArrayStorage[2];
      do
      {
        v40 = v35[v37 + 8];
        v106 = v38;
        v41 = v38[3];
        if (v41 >> 1 <= v39)
        {
          v96 = v40;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 >= 2, v39 + 1, 1);
          v35 = v108;
          v38 = v106;
        }

        ++v37;
        v38[2] = v39 + 1;
        *(v38 + v39++ + 8) = (v40 * 3.1415925) / 180.0;
      }

      while (v36 != v37);
      v35;
      v42 = v38;
      v26 = v98;
      v22 = v107;
      v25 = v94;
    }

    else
    {
      v35;
      v42 = _swiftEmptyArrayStorage;
    }

    if (v104 > 0 || v105 < 2)
    {
      BUG();
    }

    if (v105 < 4)
    {
      BUG();
    }

    v108 = v42;
    v107 = specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(v26, *v99, v99[1]);
    if (v102 > 0 || v100 < 2)
    {
      BUG();
    }

    if (v100 < 4)
    {
      BUG();
    }

    v43 = specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(v26, *v103, v103[1]);
    v106 = v43;
    if (v101 > 0 || v25 < 2)
    {
      BUG();
    }

    if (v25 < 4)
    {
      BUG();
    }

    v102 = v43;
    v34 = specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(v26, *v22, v22[1]);
  }

  v100 = v34;
  v87 = v34;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<[[Float]]>);
  inited = swift_initStackObject(v44, v86);
  inited[2] = 2;
  v104 = inited;
  inited[3] = 4;
  v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<[Float]>);
  v46 = swift_allocObject(v105, 48, 7);
  *(v46 + 2) = 2;
  *(v46 + 3) = 4;
  v47 = cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(v108, &cosf);
  v48 = v107;
  v107;
  v49 = 0;
  MLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(v47, v48);
  v47;
  v48;
  v99 = v46;
  *(v46 + 4) = MLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n;
  v51 = cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(v108, &sinf);
  v52 = *(v51 + 2);
  if (v52)
  {
    v101 = 0;
    v97 = _swiftEmptyArrayStorage;
    v53 = 0;
    v103 = v51;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
    v54 = v103;
    v55 = v97;
    v56 = v97[2];
    do
    {
      v57 = LODWORD(v54[v53 + 8]);
      v97 = v55;
      v58 = v55[3];
      if (v58 >> 1 <= v56)
      {
        v94 = v57;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 >= 2, v56 + 1, 1);
        LODWORD(v57) = v94;
        v54 = v103;
        v55 = v97;
      }

      ++v53;
      v55[2] = v56 + 1;
      *(v55 + v56++ + 8) = -*&v57;
    }

    while (v52 != v53);
    v54;
    v49 = v101;
  }

  else
  {
    v51;
    v55 = _swiftEmptyArrayStorage;
  }

  v59 = v107;
  v107;
  v55;
  v60 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(v55, v59);
  v59;
  swift_bridgeObjectRelease_n(v55, 2);
  v61 = v99;
  *(v99 + 5) = v60;
  v104[4] = v61;
  v62 = swift_allocObject(v105, 48, 7);
  v62[2] = 2;
  v62[3] = 4;
  v63 = v108;
  v64 = cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(v108, &sinf);
  v59;
  v105 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(v64, v59);
  v64;
  v59;
  v62[4] = v105;
  v65 = cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(v63, &cosf);
  v63;
  v59;
  v65;
  v66 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(v65, v59);
  swift_bridgeObjectRelease_n(v59, 2);
  swift_bridgeObjectRelease_n(v65, 2);
  v62[5] = v66;
  v104[5] = v62;
  v67 = v88;
  v68 = [v88 shape];
  v69 = v68;
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v69, v95);

  objc_allocWithZone(MLMultiArray);
  v71 = @nonobjc MLMultiArray.init(shape:dataType:)(v70, 65600);
  v108 = v49;
  if (v49)
  {
    v84 = 260;
    v85 = v108;
    goto LABEL_63;
  }

  v72 = v71;
  v73 = [v72 dataPointer];
  v74 = v67;
  v75 = [v74 dataPointer];
  v76 = [v74 count];
  if (((v76 - 0x1000000000000000) >> 61) < 7)
  {
    BUG();
  }

  memcpy(v73, v75, 8 * v76);
  v77 = v72;
  v78 = v108;
  v79 = UnsafeMutableBufferPointer.init(_:)(v77, &type metadata for Double);
  if (v78)
  {
    v84 = 221;
    v85 = v78;
LABEL_63:
    swift_unexpectedError(v85, "CreateML/_MLHandActionClassifier+DataHandling.swift", 51, 1, v84);
    BUG();
  }

  v81 = v74;
  v82 = v104;
  closure #3 in static MLHandActionClassifier.randomMove(_:)(v79, v80, v98, v89, v81, v104, &v106, &v87);
  v102;
  v100;
  v82;
  swift_unknownObjectRelease(v90);
  swift_unknownObjectRelease(v91);
  swift_unknownObjectRelease(v92);
  swift_unknownObjectRelease(v93);
  return v77;
}

id static MLHandActionClassifier.randomShift(_:)(id a1)
{
  *&v64 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(-0.1, 0.1);
  *&v65 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(-0.1, 0.1);
  v1 = [a1 shape];
  v2 = v1;
  v72 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v2, v72);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000003) == 0, v3);
  if ((v3 & 0xC000000000000003) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v3;
  v68 = [v5 integerValue];

  v6 = [a1 shape];
  v7 = v6;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v72);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, (v8 & 0xC000000000000003) == 0, v8);
  if ((v8 & 0xC000000000000003) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v8);
  }

  else
  {
    v9 = *(v8 + 48);
  }

  v10 = v9;
  v8;
  v69 = [v10 integerValue];

  v11 = [a1 shape];
  v12 = v11;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v12, v72);

  objc_allocWithZone(MLMultiArray);
  v14 = @nonobjc MLMultiArray.init(shape:dataType:)(v13, 65600);
  v15 = v14;
  __dst = UnsafeMutableBufferPointer.init(_:)(v15, &type metadata for Double);
  v17 = v16;
  v71 = a1;
  v18 = UnsafeMutableBufferPointer.init(_:)(v71, &type metadata for Double);
  if (v19 && v17)
  {
    if (v19 < v17)
    {
      v17 = v19;
    }

    memcpy(__dst, v18, 8 * v17);
  }

  if (v68 < 0)
  {
    BUG();
  }

  v66 = v15;
  if (v68)
  {
    if (v69 < 0)
    {
      BUG();
    }

    for (i = 0; i != v68; ++i)
    {
      if (v69)
      {
        for (j = 0; j != v69; ++j)
        {
          v21 = [v71 strides];
          v22 = v21;
          v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v22, v72);

          if ((v23 & 0xC000000000000003) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v23);
          }

          else
          {
            if (!*(&dword_10 + (v23 & 0xFFFFFFFFFFFFF8)))
            {
              BUG();
            }

            v24 = *(v23 + 32);
          }

          v25 = v24;
          v23;
          v26 = [v25 integerValue];

          v28 = v26;
          v27 = i * v26;
          if (!is_mul_ok(i, v28))
          {
            BUG();
          }

          v29 = [v71 strides];
          v30 = v29;
          v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v30, v72);

          if ((v31 & 0xC000000000000003) != 0)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v31);
          }

          else
          {
            if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFF8)) < 3uLL)
            {
              BUG();
            }

            v32 = *(v31 + 48);
          }

          v33 = v32;
          v31;
          v34 = [v33 integerValue];

          v36 = v34;
          v35 = j * v34;
          if (!is_mul_ok(j, v36))
          {
            BUG();
          }

          v37 = __OFADD__(v35, v27);
          v38 = v35 + v27;
          if (v37)
          {
            BUG();
          }

          v39 = [v71 strides];
          v40 = v39;
          v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v40, v72);

          if ((v41 & 0xC000000000000003) != 0)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v41);
          }

          else
          {
            if (!*(&dword_10 + (v41 & 0xFFFFFFFFFFFFF8)))
            {
              BUG();
            }

            v42 = *(v41 + 32);
          }

          v43 = v42;
          v41;
          v44 = [v43 integerValue];

          v46 = v44;
          v45 = i * v44;
          if (!is_mul_ok(i, v46))
          {
            BUG();
          }

          v47 = [v71 strides];
          v48 = v47;
          v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v48, v72);

          if ((v49 & 0xC000000000000003) != 0)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v49);
          }

          else
          {
            if (*(&dword_10 + (v49 & 0xFFFFFFFFFFFFF8)) < 2uLL)
            {
              BUG();
            }

            v50 = *(v49 + 40);
          }

          v51 = v50;
          v49;
          v52 = [v51 integerValue];

          v37 = __OFADD__(v52, v45);
          v53 = &v52[v45];
          if (v37)
          {
            BUG();
          }

          v54 = [v71 strides];
          v55 = v54;
          v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v55, v72);

          if ((v56 & 0xC000000000000003) != 0)
          {
            v57 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v56);
          }

          else
          {
            if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFF8)) < 3uLL)
            {
              BUG();
            }

            v57 = *(v56 + 48);
          }

          v58 = v57;
          v56;
          v59 = [v58 integerValue];

          v61 = v59;
          v60 = j * v59;
          if (!is_mul_ok(j, v61))
          {
            BUG();
          }

          v37 = __OFADD__(v60, v53);
          v62 = &v53[v60];
          if (v37)
          {
            BUG();
          }

          *(__dst + v38) = *(__dst + v38) + v64;
          *(__dst + v62) = *(__dst + v62) + v65;
        }
      }
    }
  }

  return v66;
}

id static MLHandActionClassifier.randomScale(_:)(id a1)
{
  *&v64 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.8, 1.2);
  v1 = [a1 shape];
  v2 = v1;
  v71 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v2, v71);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000003) == 0, v3);
  if ((v3 & 0xC000000000000003) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v3;
  v67 = [v5 integerValue];

  v6 = [a1 shape];
  v7 = v6;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v71);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, (v8 & 0xC000000000000003) == 0, v8);
  if ((v8 & 0xC000000000000003) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v8);
  }

  else
  {
    v9 = *(v8 + 48);
  }

  v10 = v9;
  v8;
  v68 = [v10 integerValue];

  v11 = [a1 shape];
  v12 = v11;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v12, v71);

  objc_allocWithZone(MLMultiArray);
  v14 = @nonobjc MLMultiArray.init(shape:dataType:)(v13, 65600);
  v15 = v14;
  __dst = UnsafeMutableBufferPointer.init(_:)(v15, &type metadata for Double);
  v17 = v16;
  v70 = a1;
  v18 = UnsafeMutableBufferPointer.init(_:)(v70, &type metadata for Double);
  if (v19 && v17)
  {
    if (v19 < v17)
    {
      v17 = v19;
    }

    memcpy(__dst, v18, 8 * v17);
  }

  if (v67 < 0)
  {
    BUG();
  }

  v65 = v15;
  if (v67)
  {
    if (v68 < 0)
    {
      BUG();
    }

    for (i = 0; i != v67; ++i)
    {
      if (v68)
      {
        for (j = 0; j != v68; ++j)
        {
          v21 = [v70 strides];
          v22 = v21;
          v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v22, v71);

          if ((v23 & 0xC000000000000003) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v23);
          }

          else
          {
            if (!*(&dword_10 + (v23 & 0xFFFFFFFFFFFFF8)))
            {
              BUG();
            }

            v24 = *(v23 + 32);
          }

          v25 = v24;
          v23;
          v26 = [v25 integerValue];

          v28 = v26;
          v27 = i * v26;
          if (!is_mul_ok(i, v28))
          {
            BUG();
          }

          v29 = [v70 strides];
          v30 = v29;
          v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v30, v71);

          if ((v31 & 0xC000000000000003) != 0)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v31);
          }

          else
          {
            if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFF8)) < 3uLL)
            {
              BUG();
            }

            v32 = *(v31 + 48);
          }

          v33 = v32;
          v31;
          v34 = [v33 integerValue];

          v36 = v34;
          v35 = j * v34;
          if (!is_mul_ok(j, v36))
          {
            BUG();
          }

          v37 = __OFADD__(v35, v27);
          v38 = v35 + v27;
          if (v37)
          {
            BUG();
          }

          v39 = [v70 strides];
          v40 = v39;
          v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v40, v71);

          if ((v41 & 0xC000000000000003) != 0)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v41);
          }

          else
          {
            if (!*(&dword_10 + (v41 & 0xFFFFFFFFFFFFF8)))
            {
              BUG();
            }

            v42 = *(v41 + 32);
          }

          v43 = v42;
          v41;
          v44 = [v43 integerValue];

          v46 = v44;
          v45 = i * v44;
          if (!is_mul_ok(i, v46))
          {
            BUG();
          }

          v47 = [v70 strides];
          v48 = v47;
          v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v48, v71);

          if ((v49 & 0xC000000000000003) != 0)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v49);
          }

          else
          {
            if (*(&dword_10 + (v49 & 0xFFFFFFFFFFFFF8)) < 2uLL)
            {
              BUG();
            }

            v50 = *(v49 + 40);
          }

          v51 = v50;
          v49;
          v52 = [v51 integerValue];

          v37 = __OFADD__(v52, v45);
          v53 = &v52[v45];
          if (v37)
          {
            BUG();
          }

          v54 = [v70 strides];
          v55 = v54;
          v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v55, v71);

          if ((v56 & 0xC000000000000003) != 0)
          {
            v57 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v56);
          }

          else
          {
            if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFF8)) < 3uLL)
            {
              BUG();
            }

            v57 = *(v56 + 48);
          }

          v58 = v57;
          v56;
          v59 = [v58 integerValue];

          v61 = v59;
          v60 = j * v59;
          if (!is_mul_ok(j, v61))
          {
            BUG();
          }

          v37 = __OFADD__(v60, v53);
          v62 = &v53[v60];
          if (v37)
          {
            BUG();
          }

          *(__dst + v38) = *(__dst + v38) * v64;
          *(__dst + v62) = *(__dst + v62) * v64;
        }
      }
    }
  }

  return v65;
}

id static MLHandActionClassifier.timeInterpolate(_:)(id a1)
{
  *&v69 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 0.2);
  *&v62 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 1.0);
  v1 = [a1 shape];
  v2 = v1;
  v65 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v2, v65);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000003) == 0, v3);
  if ((v3 & 0xC000000000000003) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v3;
  v68 = [v5 integerValue];

  v6 = [a1 shape];
  v7 = v6;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v65);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, (v8 & 0xC000000000000003) == 0, v8);
  if ((v8 & 0xC000000000000003) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v8);
  }

  else
  {
    v9 = *(v8 + 40);
  }

  v10 = v9;
  v8;
  v11 = [v10 integerValue];

  v12 = [a1 shape];
  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v13, v65);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, (v14 & 0xC000000000000003) == 0, v14);
  if ((v14 & 0xC000000000000003) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v14);
  }

  else
  {
    v15 = *(v14 + 48);
  }

  v16 = v15;
  v14;
  v17 = [v16 integerValue];

  v18 = v17 * v11;
  if (!is_mul_ok(v17, v11))
  {
    BUG();
  }

  v19 = v69 * v68;
  if (COERCE__INT64(fabs(v19)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v19 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v19 >= 9.223372036854776e18)
  {
    BUG();
  }

  v20 = v19;
  v21 = MLMultiArray.doubleArray()();
  v64 = v21;
  if (v19)
  {
    if (!v18)
    {
      BUG();
    }

    v67 = v18;
    do
    {
      v22 = v64;
      v23 = v64[2] / v18;
      if (v23 <= 0)
      {
        BUG();
      }

      v24 = v64[2] / v18;
      if (v23 == 1)
      {
        BUG();
      }

      v59 = v20;
      v25 = v23 - 1;
      v66 = 0;
      swift_stdlib_random(&v66, 8);
      v26 = (v66 * v25) >> 64;
      v68 = v64;
      if (v25 > v66 * v25 && (1 - v24) % v25 > v66 * v25)
      {
        v27 = (1 - v24) % v25;
        do
        {
          v66 = 0;
          swift_stdlib_random(&v66, 8);
        }

        while (v27 > v66 * v25);
        v26 = (v66 * v25) >> 64;
        v22 = v68;
      }

      v28 = v26 + 1;
      v29 = v67 * (v26 + 1);
      if (!is_mul_ok(v67, v26 + 1))
      {
        BUG();
      }

      v31 = v26;
      v30 = v67 * v26;
      if (!is_mul_ok(v67, v31))
      {
        BUG();
      }

      v32 = v67 + v29;
      if (__OFADD__(v67, v29))
      {
        BUG();
      }

      v33 = v67;
      if (v32 < v29)
      {
        BUG();
      }

      if (v29 < 0)
      {
        BUG();
      }

      v34 = v22[2];
      if (v34 < v29 || v34 < v32)
      {
        BUG();
      }

      v60 = v28;
      v69 = COERCE_DOUBLE(type metadata accessor for __ContiguousArrayStorageBase(0));
      v22;
      swift_unknownObjectRetain_n(v22, 2);
      v35 = swift_dynamicCastClass(v22, *&v69);
      if (!v35)
      {
        v22;
        v35 = _swiftEmptyArrayStorage;
      }

      v63 = (v22 + 4);
      v36 = v35[2];

      if (v36 == v33)
      {
        v37 = v68;
        v38 = swift_dynamicCastClass(v68, *&v69);
        v39 = v67;
        if (!v38)
        {
          v37;
          v38 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v37 = v68;
        v68;
        v38 = specialized _copyCollectionToContiguousArray<A>(_:)(v37, v63, v29, 2 * v32 + 1);
        v39 = v67;
      }

      v37;
      v40 = v39 + v30;
      if (__OFADD__(v39, v30))
      {
        BUG();
      }

      if (v40 < v30)
      {
        BUG();
      }

      if (v30 < 0)
      {
        BUG();
      }

      v41 = *(v37 + 16);
      if (v41 < v30 || v41 < v40)
      {
        BUG();
      }

      v61 = v38;
      v37;
      swift_unknownObjectRetain_n(v37, 2);
      v42 = swift_dynamicCastClass(v37, *&v69);
      if (!v42)
      {
        v37;
        v42 = _swiftEmptyArrayStorage;
      }

      v43 = v37;
      v44 = v42[2];

      if (v44 == v39)
      {
        v45 = v43;
        v46 = swift_dynamicCastClass(v43, *&v69);
        v18 = v67;
        if (!v46)
        {
          v45;
          v46 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v45 = v43;
        v43;
        v46 = specialized _copyCollectionToContiguousArray<A>(_:)(v43, v63, v30, 2 * v40 + 1);
        v18 = v67;
      }

      v45;
      v47 = static MLHandActionClassifier.generatePaddedFrame(lastFrame:currentFrame:frameLen:displaceScaleFactor:)(v46, v61, v18, v62);

      specialized Array.replaceSubrange<A>(_:with:)(v60, v60, v47);
      v20 = v59 - 1;
    }

    while (v59 > 1);
    v48 = v64;
  }

  else
  {
    v48 = v21;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v50 = swift_allocObject(v49, 56, 7);
  *(v50 + 16) = 3;
  *(v50 + 24) = 7;
  if (!v18)
  {
    BUG();
  }

  v51 = v50;
  v52 = v48[2] / v18;
  v53 = objc_allocWithZone(NSNumber);
  v51[4].super.super.isa = [v53 initWithInteger:v52];
  v51[5].super.super.isa = NSNumber.init(integerLiteral:)(3).super.super.isa;
  v51[6].super.super.isa = NSNumber.init(integerLiteral:)(21).super.super.isa;
  v54 = [a1 strides];
  v55 = v54;
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v55, v65);

  if (!swift_isUniquelyReferenced_nonNull_native(v48))
  {
    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2], 0, v48);
  }

  objc_allocWithZone(MLMultiArray);
  v57 = @nonobjc MLMultiArray.init(dataPointer:shape:dataType:strides:deallocator:)((v48 + 4), v51, 65600, v56, 0, 0);
  v48;
  return v57;
}

id static MLHandActionClassifier.frameDrop(_:)(id a1)
{
  v53 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 0.2);
  v1 = [a1 shape];
  v2 = v1;
  v50 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v2, v50);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000003) == 0, v3);
  if ((v3 & 0xC000000000000003) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v3;
  v6 = [v5 integerValue];

  v7 = [a1 shape];
  v8 = v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v8, v50);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, (v9 & 0xC000000000000003) == 0, v9);
  v47 = v6;
  if ((v9 & 0xC000000000000003) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v9);
  }

  else
  {
    v10 = *(v9 + 40);
  }

  v11 = v10;
  v9;
  v12 = [v11 integerValue];

  v13 = [a1 shape];
  v14 = v13;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v14, v50);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, (v15 & 0xC000000000000003) == 0, v15);
  if ((v15 & 0xC000000000000003) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v15);
  }

  else
  {
    v16 = *(v15 + 48);
  }

  v17 = v16;
  v15;
  v18 = [v17 integerValue];

  v19 = v18 * v12;
  if (!is_mul_ok(v18, v12))
  {
    BUG();
  }

  v20 = *&v53 * v47;
  if (COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v20 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v20 >= 9.223372036854776e18)
  {
    BUG();
  }

  v21 = v20;
  v22 = MLMultiArray.doubleArray()();
  if (v20)
  {
    if (!v19)
    {
      BUG();
    }

    v49 = v19;
    do
    {
      v23 = v22[2] / v19;
      if (v23 < 0)
      {
        BUG();
      }

      if (!v23)
      {
        BUG();
      }

      v24 = v22[2] / v19;
      v48 = v21;
      v53 = v22;
      v52 = 0;
      swift_stdlib_random(&v52, 8);
      v25 = (v52 * v24) >> 64;
      if (v24 <= v52 * v24)
      {
        v26 = v53;
      }

      else
      {
        v26 = v53;
        if (-v24 % v24 > v52 * v24)
        {
          do
          {
            v52 = 0;
            swift_stdlib_random(&v52, 8);
          }

          while (-v24 % v24 > v52 * v24);
          v25 = (v52 * v24) >> 64;
          v26 = v53;
          v19 = v49;
        }
      }

      v27 = v19 + v25;
      if (__OFADD__(v19, v25))
      {
        BUG();
      }

      v28 = -v19;
      if (v25 > v27)
      {
        BUG();
      }

      v29 = v26[2];
      if (v29 < v27)
      {
        BUG();
      }

      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        BUG();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v26);
      v22 = v53;
      if (!isUniquelyReferenced_nonNull_native || v53[3] >> 1 < v30)
      {
        if (v29 > v30)
        {
          v30 = v29;
        }

        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 1, v53);
      }

      v19 = v49;
      if (v25 != v27)
      {
        v32 = &v22[v25 + 4];
        v33 = v22;
        memmove(v32, &v22[v27 + 4], 8 * (v22[2] - v27));
        v34 = __OFADD__(v33[2], v28);
        v35 = v33[2] + v28;
        if (v34)
        {
          BUG();
        }

        v22 = v33;
        v33[2] = v35;
      }

      v21 = v48 - 1;
    }

    while (v48 > 1);
  }

  v36 = v22;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v38 = swift_allocObject(v37, 56, 7);
  *(v38 + 16) = 3;
  *(v38 + 24) = 7;
  if (!v19)
  {
    BUG();
  }

  v39 = v38;
  v40 = v36[2] / v19;
  v41 = objc_allocWithZone(NSNumber);
  v39[4].super.super.isa = [v41 initWithInteger:v40];
  v39[5].super.super.isa = NSNumber.init(integerLiteral:)(3).super.super.isa;
  v39[6].super.super.isa = NSNumber.init(integerLiteral:)(21).super.super.isa;
  v42 = [a1 strides];
  v43 = v42;
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v43, v50);

  if (!swift_isUniquelyReferenced_nonNull_native(v36))
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2], 0, v36);
  }

  objc_allocWithZone(MLMultiArray);
  v45 = @nonobjc MLMultiArray.init(dataPointer:shape:dataType:strides:deallocator:)((v36 + 4), v39, 65600, v44, 0, 0);
  v36;
  return v45;
}

void *specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(uint64_t a1, float a2, float a3)
{
  v7 = a2;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v8 = (a3 - a2) / (a1 - 1);
  if (a1 < 0)
  {
    BUG();
  }

  v3 = alloca(32);
  v4 = alloca(32);
  v9 = &v7;
  v10 = &v8;
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sfs5NeverOTg5(partial apply for specialized closure #1 in linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:), &v6, 0, a1);
}

void *cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(uint64_t a1, float (*a2)(double))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = _swiftEmptyArrayStorage[2];
    do
    {
      *&v5 = *(a1 + 4 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v4)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v4 + 1, 1);
        *&v5 = LODWORD(v5);
      }

      ++v3;
      v6 = a2(v5);
      _swiftEmptyArrayStorage[2] = v4 + 1;
      *(&_swiftEmptyArrayStorage[4] + v4++) = v6;
    }

    while (v2 != v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized MutableCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(1, a2);
  v4 = a2 + 1;
  if (v3)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  v6 = *(a3 + 16);
  if (v6 < a1 || v6 < v4)
  {
    BUG();
  }

  if (v4 < 0)
  {
    BUG();
  }

  a3;
  return a3;
}

uint64_t specialized MutableCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < a1)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  a2;
  return a2;
}

void closure #3 in static MLHandActionClassifier.randomMove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (a3)
  {
    if (a4 < 0)
    {
      BUG();
    }

    v8 = a5;
    for (i = 0; i != a3; ++i)
    {
      if (a4)
      {
        if (a6[2] < 2uLL)
        {
          BUG();
        }

        v10 = 0;
        v69 = i;
        v62 = a6[4];
        v63 = a6[5];
        do
        {
          v70 = v10;
          v11 = [v8 strides];
          v12 = v11;
          v72 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v12, v72);

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000003) == 0, v13);
          if ((v13 & 0xC000000000000003) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v13);
          }

          else
          {
            v14 = *(v13 + 32);
          }

          v15 = v14;
          v13;
          v16 = [v15 integerValue];

          v18 = v16;
          v17 = v69 * v16;
          if (!is_mul_ok(v69, v18))
          {
            BUG();
          }

          v19 = [v8 strides];
          v20 = v19;
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v20, v72);
          (objc_release)(v20);
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, (v21 & 0xC000000000000003) == 0, v21);
          if ((v21 & 0xC000000000000003) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v21);
          }

          else
          {
            v22 = *(v21 + 48);
          }

          v23 = v22;
          v21;
          v24 = [v23 integerValue];

          v26 = v24;
          v25 = v70 * v24;
          if (!is_mul_ok(v70, v26))
          {
            BUG();
          }

          v67 = v25 + v17;
          if (__OFADD__(v25, v17))
          {
            BUG();
          }

          v27 = [v8 strides];
          v28 = v27;
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v28, v72);

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v29 & 0xC000000000000003) == 0, v29);
          if ((v29 & 0xC000000000000003) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v29);
          }

          else
          {
            v30 = *(v29 + 32);
          }

          v31 = v30;
          v29;
          v32 = [v31 integerValue];

          v34 = v32;
          v33 = v69 * v32;
          if (!is_mul_ok(v69, v34))
          {
            BUG();
          }

          v35 = [v8 strides];
          v36 = v35;
          v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v36, v72);

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, (v37 & 0xC000000000000003) == 0, v37);
          if ((v37 & 0xC000000000000003) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v37);
          }

          else
          {
            v38 = *(v37 + 40);
          }

          v39 = v38;
          v37;
          v40 = [v39 integerValue];

          v41 = __OFADD__(v40, v33);
          v42 = &v40[v33];
          if (v41)
          {
            BUG();
          }

          v43 = [a5 strides];
          v44 = v43;
          v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v44, v72);

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, (v45 & 0xC000000000000003) == 0, v45);
          if ((v45 & 0xC000000000000003) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v45);
          }

          else
          {
            v46 = *(v45 + 48);
          }

          v47 = v46;
          v45;
          v48 = [v47 integerValue];

          v50 = v48;
          v49 = v70 * v48;
          if (!is_mul_ok(v70, v50))
          {
            BUG();
          }

          v41 = __OFADD__(v49, v42);
          v51 = &v42[v49];
          if (v41)
          {
            BUG();
          }

          v52 = v62[2];
          if (!v52)
          {
            BUG();
          }

          v53 = v62[4];
          i = v69;
          if (v69 >= *(v53 + 16))
          {
            BUG();
          }

          if (v52 == 1)
          {
            BUG();
          }

          v54 = v62[5];
          if (v69 >= *(v54 + 16))
          {
            BUG();
          }

          if (v69 >= *(*a7 + 16))
          {
            BUG();
          }

          v55 = v63[2];
          if (!v55)
          {
            BUG();
          }

          v56 = v63[4];
          if (v69 >= *(v56 + 16))
          {
            BUG();
          }

          if (v55 == 1)
          {
            BUG();
          }

          v57 = v63[5];
          if (v69 >= *(v57 + 16))
          {
            BUG();
          }

          if (v69 >= *(*a8 + 16))
          {
            BUG();
          }

          v58 = *(a1 + 8 * v67);
          v59 = *(a1 + 8 * v51);
          v10 = v70 + 1;
          v60 = ((*(v54 + 4 * v69 + 32) * v59) + (*(v53 + 4 * v69 + 32) * v58)) + *(*a7 + 4 * v69 + 32);
          v61 = ((v59 * *(v57 + 4 * v69 + 32)) + (v58 * *(v56 + 4 * v69 + 32))) + *(*a8 + 4 * v69 + 32);
          *(a1 + 8 * v67) = v60;
          *(a1 + 8 * v51) = v61;
          v8 = a5;
        }

        while (a4 != v70 + 1);
      }
    }
  }
}

uint64_t MLMultiArray.doubleArray()()
{
  v4 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  MLMultiArray.withUnsafeBytes<A>(_:)(partial apply for closure #1 in MLMultiArray.doubleArray(), v3, v1);
  return v5;
}

void *static MLHandActionClassifier.generatePaddedFrame(lastFrame:currentFrame:frameLen:displaceScaleFactor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (!a3)
  {
    return _swiftEmptyArrayStorage;
  }

  if (*(a1 + 16) < a3)
  {
    BUG();
  }

  if (*(a2 + 16) < a3)
  {
    BUG();
  }

  v5 = 0;
  v11 = a2;
  v10 = a4;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = result[2];
  do
  {
    v8 = *(a1 + 8 * v5 + 32);
    v9 = *(a2 + 8 * v5 + 32);
    if (result[3] >> 1 <= v7)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v7 + 1, 1, result);
      a2 = v11;
      a4 = v10;
    }

    ++v5;
    result[2] = v7 + 1;
    *&result[v7++ + 4] = (v9 - v8) * a4 + v8;
  }

  while (a3 != v5);
  return result;
}

float *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v25 = v2;
  v26 = *(a2 + 16);
  if (v26 < v2)
  {
    v2 = *(a2 + 16);
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v28 = v2;
  if (v2)
  {
    a1;
    a2;
    v4 = 0;
    v5 = 1;
    v6 = v25;
    v7 = v26;
    v8 = v28;
    do
    {
      if (v6 == v4)
      {
        BUG();
      }

      if (v7 == v4)
      {
        BUG();
      }

      v9 = *(a1 + 4 * v4 + 32);
      v10 = *(a2 + 4 * v4 + 32);
      v29 = v3;
      v11 = *(v3 + 2);
      v12 = *(v3 + 3);
      v13 = v11 + 1;
      if (v12 >> 1 <= v11)
      {
        v14 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, v5);
        v13 = v11 + 1;
        v5 = v14;
        v8 = v28;
        v7 = v26;
        v6 = v25;
        v3 = v29;
      }

      ++v4;
      *(v3 + 2) = v13;
      v3[v11 + 8] = v9 * v10;
    }

    while (v8 != v4);
  }

  else
  {
    a1;
    a2;
    v6 = v25;
    v7 = v26;
    v8 = 0;
  }

  v15 = a1;
  v16 = a2;
  while (v6 != v8)
  {
    if (v6 <= v8)
    {
      BUG();
    }

    v17 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v7 == v8)
    {
      break;
    }

    if (v7 <= v8)
    {
      BUG();
    }

    v18 = *(v15 + 4 * v8 + 32);
    v19 = *(v16 + 4 * v8 + 32);
    v20 = *(v3 + 2);
    v21 = v20 + 1;
    if (*(v3 + 3) >> 1 <= v20)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 3) >= 2uLL, v21, 1);
      v7 = v26;
      v6 = v25;
      v16 = a2;
      v15 = a1;
    }

    *(v3 + 2) = v21;
    v3[v20 + 8] = v18 * v19;
    v8 = v17;
  }

  v22 = v15;
  v16;
  v22;
  return v3;
}

void *closure #1 in MLMultiArray.doubleArray()(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    BUG();
  }

  v4 = v3;
  v5 = [a3 count];
  result = specialized _copyCollectionToContiguousArray<A>(_:)(a1, v5);
  *v4 = result;
  return result;
}

uint64_t outlined init with copy of MLHandActionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t sub_31A5E()
{
  v1 = v0;
  v2 = type metadata accessor for LearningPhase(0);
  v3 = *(v2 - 8);
  v22 = *(v3 + 80);
  v4 = ~*(v3 + 80) & (v22 + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8);
  v23 = *(v6 + 80);
  v7 = ~v23 & (v23 + v5);
  v24 = *(v6 + 64);
  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + v7;
  v9 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v1 + v7, v9) == 1)
  {
    v10 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v1 + v7, v10))
    {
      case 0u:
        v13 = type metadata accessor for URL(0);
        v14 = *(*(v13 - 8) + 8);
        v14(v1 + v7);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        (v14)(v8 + v15[12], v13);
        *(v8 + v15[16] + 8);
        *(v8 + v15[20] + 8);
        *(v8 + v15[24] + 8);
        v16 = v15[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 8))(v1 + v7, v11);
        return swift_deallocObject(v1, ((v24 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | 7);
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v8, *(v8 + 8));
        *(v8 + 24);
        *(v8 + 40);
        v12 = *(v8 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v8, *(v8 + 8));
        *(v8 + 24);
        *(v8 + 40);
        *(v8 + 56);
        v12 = *(v8 + 72);
        goto LABEL_10;
      case 5u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 8))(v1 + v7, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v8 + v18[12] + 8);
        *(v8 + v18[16] + 8);
        v16 = v18[20];
        goto LABEL_9;
      case 6u:
        v19 = type metadata accessor for DataFrame(0);
        (*(*(v19 - 8) + 8))(v1 + v7, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v8 + v20[12] + 8);
        *(v8 + v20[16] + 8);
        *(v8 + v20[20] + 8);
        v16 = v20[24];
LABEL_9:
        v12 = *(v8 + v16 + 8);
LABEL_10:
        v12;
        break;
      default:
        return swift_deallocObject(v1, ((v24 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | 7);
    }
  }

  return swift_deallocObject(v1, ((v24 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | 7);
}

uint64_t outlined init with take of MLHandActionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t partial apply for closure #1 in static MLHandActionClassifier.makeDataset<A>(from:classLabelsCount:parameters:learningPhase:)(uint64_t *a1, double a2, double a3)
{
  v4 = *(type metadata accessor for LearningPhase(0) - 8);
  v5 = ~*(v4 + 80) & (*(v4 + 80) + 16);
  v6 = v5 + *(v4 + 64);
  v7 = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8);
  v8 = (*(v7 + 80) + v6) & ~*(v7 + 80);
  return closure #1 in static MLHandActionClassifier.makeDataset<A>(from:classLabelsCount:parameters:learningPhase:)(a1, v3 + v5, v3 + v8, *(v3 + ((v8 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t lazy protocol witness table accessor for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>()
{
  result = lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>;
  if (!lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> DataSample<A, B>, v1);
    lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B> = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LearningPhase and conformance LearningPhase()
{
  result = lazy protocol witness table cache variable for type LearningPhase and conformance LearningPhase;
  if (!lazy protocol witness table cache variable for type LearningPhase and conformance LearningPhase)
  {
    v1 = type metadata accessor for LearningPhase(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for LearningPhase, v1);
    lazy protocol witness table cache variable for type LearningPhase and conformance LearningPhase = result;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v3;
  v2(a2);
  return v3;
}

id @nonobjc MLMultiArray.init(dataPointer:shape:dataType:strides:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v17 = v6;
  v8 = 0;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a2;
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  a4;
  if (a5)
  {
    aBlock[4] = a5;
    v22 = a6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
    aBlock[3] = &block_descriptor;
    v8 = _Block_copy(aBlock);
    v22;
  }

  aBlock[0] = 0;
  v10 = [v17 initWithDataPointer:a1 shape:isa dataType:a3 strides:v9.super.isa deallocator:v8 error:?];
  _Block_release(v8);

  v11 = v9.super.isa;
  v12 = v10;

  v13 = aBlock[0];
  if (v12)
  {
    aBlock[0];
  }

  else
  {
    v14 = aBlock[0];
    _convertNSErrorToError(_:)(v13);

    swift_willThrow();
  }

  return v12;
}

uint64_t specialized Collection.randomElement<A>(using:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = specialized RandomNumberGenerator.next<A>(upperBound:)(*(a2 + 16));
  if (v3 >= v2)
  {
    BUG();
  }

  return *(a2 + 8 * v3 + 32);
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t a1)
{
  if (!a1)
  {
    BUG();
  }

  v3[0] = 0;
  swift_stdlib_random(v3, 8);
  v1 = (v3[0] * a1) >> 64;
  if (v3[0] * a1 < a1 && -a1 % a1 > v3[0] * a1)
  {
    do
    {
      v3[0] = 0;
      swift_stdlib_random(v3, 8);
    }

    while (-a1 % a1 > v3[0] * a1);
    return (v3[0] * a1) >> 64;
  }

  return v1;
}

{
  if (!a1)
  {
    BUG();
  }

  v2 = *v1;
  v3 = a1 * MersenneTwisterGenerator.next()();
  v4 = *(&v3 + 1);
  if (v3 < a1 && -a1 % a1 > v3)
  {
    do
    {
      v5 = a1 * MersenneTwisterGenerator.next()();
    }

    while (-a1 % a1 > v5);
    return *(&v5 + 1);
  }

  return v4;
}

void specialized MutableCollection<>.shuffle<A>(using:)()
{
  v11 = v0;
  v1 = *v0;
  v2 = v1[2];
  if (v2 >= 2)
  {
    v10 = v2 - 2;
    v3 = 0;
    do
    {
      v14[0] = 0;
      swift_stdlib_random(v14, 8);
      v4 = (v14[0] * v2) >> 64;
      if (v2 > v14[0] * v2 && -v2 % v2 > v14[0] * v2)
      {
        do
        {
          v14[0] = 0;
          swift_stdlib_random(v14, 8);
        }

        while (-v2 % v2 > v14[0] * v2);
        v4 = (v14[0] * v2) >> 64;
      }

      v5 = __OFADD__(v3, v4);
      v6 = v3 + v4;
      if (v5)
      {
        BUG();
      }

      if (v3 != v6)
      {
        v7 = v1[2];
        if (v3 >= v7)
        {
          BUG();
        }

        if (v6 >= v7)
        {
          BUG();
        }

        v12 = *(v1 + v3 + 8);
        v13 = *(v1 + v6 + 8);
        if (!swift_isUniquelyReferenced_nonNull_native(v1))
        {
          v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
        }

        v8 = v1[2];
        if (v3 >= v8)
        {
          BUG();
        }

        *(v1 + v3 + 8) = v13;
        if (v6 >= v8)
        {
          BUG();
        }

        *(v1 + v6 + 8) = v12;
        *v11 = v1;
      }

      --v2;
    }

    while (v3++ != v10);
  }
}

{
  v22 = v0;
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 2)
  {
    v3 = 0;
    v25 = v2 - 2;
    do
    {
      v28[0] = 0;
      swift_stdlib_random(v28, 8);
      v4 = (v28[0] * v2) >> 64;
      if (v2 > v28[0] * v2 && -v2 % v2 > v28[0] * v2)
      {
        do
        {
          v28[0] = 0;
          swift_stdlib_random(v28, 8);
        }

        while (-v2 % v2 > v28[0] * v2);
        v4 = (v28[0] * v2) >> 64;
      }

      v5 = __OFADD__(v3, v4);
      v6 = v3 + v4;
      if (v5)
      {
        BUG();
      }

      if (v3 == v6)
      {
        v7 = v25;
      }

      else
      {
        v8 = v1[2];
        if (v3 >= v8)
        {
          BUG();
        }

        if (v6 >= v8)
        {
          BUG();
        }

        v26 = v3;
        v9 = 4 * v3;
        v18 = v1[v9 + 4];
        v20 = v1[v9 + 6];
        v24 = v1[v9 + 7];
        v10 = 4 * v6;
        v16 = v1[4 * v6 + 4];
        v27 = v1[4 * v6 + 5];
        v17 = v1[4 * v6 + 6];
        v23 = v1[4 * v6 + 7];
        v19 = v1[v9 + 5];
        v19;
        v24;
        v27;
        v23;
        if (!swift_isUniquelyReferenced_nonNull_native(v1))
        {
          v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
        }

        if (v26 >= v1[2])
        {
          BUG();
        }

        v21 = v1[v9 + 5];
        v11 = v1[v9 + 7];
        v1[v9 + 4] = v16;
        v1[v9 + 5] = v27;
        v1[v9 + 6] = v17;
        v1[v9 + 7] = v23;
        v11;
        v21;
        if (v6 >= v1[2])
        {
          BUG();
        }

        v12 = v1 + 4;
        v13 = v1[v10 + 5];
        v14 = v1[v10 + 7];
        v12[v10] = v18;
        v12[v10 + 1] = v19;
        v12[v10 + 2] = v20;
        v12[v10 + 3] = v24;
        v14;
        v13;
        *v22 = v1;
        v7 = v25;
        v3 = v26;
      }

      --v2;
    }

    while (v3++ != v7);
  }
}