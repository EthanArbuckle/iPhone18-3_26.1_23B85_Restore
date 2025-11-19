uint64_t destroy for MLHandActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a1, v4))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v8 = *(*(v7 - 8) + 8);
      v8(a1, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v8(a1 + v9[12], v7);
      v2 = a2;
      *(a1 + v9[16] + 8);
      *(a1 + v9[20] + 8);
      *(a1 + v9[24] + 8);
      v10 = v9[28];
      goto LABEL_8;
    case 1u:
    case 2u:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      break;
    case 3u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      v6 = *(a1 + 56);
      goto LABEL_9;
    case 4u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      *(a1 + 56);
      v6 = *(a1 + 72);
      goto LABEL_9;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 8))(a1, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(a1 + v12[12] + 8);
      *(a1 + v12[16] + 8);
      v10 = v12[20];
      goto LABEL_8;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 8))(a1, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(a1 + v14[12] + 8);
      *(a1 + v14[16] + 8);
      *(a1 + v14[20] + 8);
      v10 = v14[24];
LABEL_8:
      v6 = *(a1 + v10 + 8);
LABEL_9:
      v6;
      break;
    default:
      break;
  }

  v15 = *(v2 + 20) + a1;
  v16 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(v15, v16);
  if (result == 1)
  {
    result = swift_getEnumCaseMultiPayload(v15, v4);
    switch(result)
    {
      case 0:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 8);
        v20(v15, v19);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v20(v15 + v21[12], v19);
        *(v15 + v21[16] + 8);
        *(v15 + v21[20] + 8);
        *(v15 + v21[24] + 8);
        v22 = v21[28];
        goto LABEL_19;
      case 1:
      case 2:
        v18 = type metadata accessor for URL(0);
        return (*(*(v18 - 8) + 8))(v15, v18);
      case 3:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        *(v15 + 40);
        return *(v15 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        *(v15 + 40);
        *(v15 + 56);
        return *(v15 + 72);
      case 5:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 8))(v15, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v15 + v24[12] + 8);
        *(v15 + v24[16] + 8);
        v22 = v24[20];
        goto LABEL_19;
      case 6:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 8))(v15, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v15 + v26[12] + 8);
        *(v15 + v26[16] + 8);
        *(v15 + v26[20] + 8);
        v22 = v26[24];
LABEL_19:
        result = *(v15 + v22 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLHandActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v97 = v5;
  switch(swift_getEnumCaseMultiPayload(a2, v5))
  {
    case 0u:
      v6 = type metadata accessor for URL(0);
      v7 = *(*(v6 - 8) + 16);
      v7(a1, a2, v6);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v7(a1 + v8[12], a2 + v8[12], v6);
      v9 = v8[16];
      *(a1 + v9) = *(a2 + v9);
      v10 = *(a2 + v9 + 8);
      *(a1 + v9 + 8) = v10;
      v11 = v8[20];
      *(a1 + v11) = *(a2 + v11);
      v12 = *(a2 + v11 + 8);
      *(a1 + v11 + 8) = v12;
      v13 = v8[24];
      *(a1 + v13) = *(a2 + v13);
      v14 = *(a2 + v13 + 8);
      *(a1 + v13 + 8) = v14;
      v15 = v8[28];
      *(a1 + v15) = *(a2 + v15);
      v16 = *(a2 + v15 + 8);
      *(a1 + v15 + 8) = v16;
      v10;
      v12;
      v14;
      v16;
      v17 = a1;
      v18 = v97;
      v19 = 0;
      break;
    case 1u:
      v32 = type metadata accessor for URL(0);
      (*(*(v32 - 8) + 16))(a1, a2, v32);
      v91 = 1;
      goto LABEL_8;
    case 2u:
      v26 = type metadata accessor for URL(0);
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v91 = 2;
      goto LABEL_8;
    case 3u:
      v27 = *a2;
      v28 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v28);
      *a1 = v27;
      *(a1 + 8) = v28;
      *(a1 + 16) = *(a2 + 16);
      v29 = *(a2 + 24);
      *(a1 + 24) = v29;
      *(a1 + 32) = *(a2 + 32);
      v30 = *(a2 + 40);
      *(a1 + 40) = v30;
      *(a1 + 48) = *(a2 + 48);
      v31 = *(a2 + 56);
      *(a1 + 56) = v31;
      v29;
      v30;
      v31;
      v91 = 3;
      goto LABEL_8;
    case 4u:
      v20 = *a2;
      v21 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v21);
      *a1 = v20;
      *(a1 + 8) = v21;
      *(a1 + 16) = *(a2 + 16);
      v22 = *(a2 + 24);
      *(a1 + 24) = v22;
      *(a1 + 32) = *(a2 + 32);
      v23 = *(a2 + 40);
      *(a1 + 40) = v23;
      *(a1 + 48) = *(a2 + 48);
      v24 = *(a2 + 56);
      *(a1 + 56) = v24;
      *(a1 + 64) = *(a2 + 64);
      v25 = *(a2 + 72);
      *(a1 + 72) = v25;
      v22;
      v23;
      v24;
      v25;
      v90 = 4;
      goto LABEL_10;
    case 5u:
      v33 = type metadata accessor for DataFrame(0);
      (*(*(v33 - 8) + 16))(a1, a2, v33);
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v35 = v34[12];
      *(a1 + v35) = *(a2 + v35);
      v36 = *(a2 + v35 + 8);
      *(a1 + v35 + 8) = v36;
      v37 = v34[16];
      *(a1 + v37) = *(a2 + v37);
      v38 = *(a2 + v37 + 8);
      *(a1 + v37 + 8) = v38;
      v39 = v34[20];
      *(a1 + v39) = *(a2 + v39);
      v40 = *(a2 + v39 + 8);
      *(a1 + v39 + 8) = v40;
      v36;
      v38;
      v40;
      v91 = 5;
LABEL_8:
      v19 = v91;
      v17 = a1;
      v18 = v5;
      break;
    case 6u:
      v41 = type metadata accessor for DataFrame(0);
      (*(*(v41 - 8) + 16))(a1, a2, v41);
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v43 = v42[12];
      *(a1 + v43) = *(a2 + v43);
      v44 = *(a2 + v43 + 8);
      *(a1 + v43 + 8) = v44;
      v45 = v42[16];
      *(a1 + v45) = *(a2 + v45);
      v46 = *(a2 + v45 + 8);
      *(a1 + v45 + 8) = v46;
      v47 = v42[20];
      *(a1 + v47) = *(a2 + v47);
      v48 = *(a2 + v47 + 8);
      *(a1 + v47 + 8) = v48;
      v49 = v42[24];
      *(a1 + v49) = *(a2 + v49);
      v50 = *(a2 + v49 + 8);
      *(a1 + v49 + 8) = v50;
      v44;
      v46;
      v48;
      v50;
      v90 = 6;
LABEL_10:
      v19 = v90;
      v17 = a1;
      v18 = v97;
      break;
  }

  swift_storeEnumTagMultiPayload(v17, v18, v19);
  v51 = a3[5];
  v52 = (a1 + v51);
  v53 = a2 + v51;
  v54 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v53, v54) == 1)
  {
    v93 = v54;
    switch(swift_getEnumCaseMultiPayload(v53, v97))
    {
      case 0u:
        v95 = type metadata accessor for URL(0);
        v98 = *(*(v95 - 8) + 16);
        v98(v52, v53, v95);
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v98(&v52[v55[12]], v53 + v55[12], v95);
        v56 = v55[16];
        *&v52[v56] = *(v53 + v56);
        v57 = *(v53 + v56 + 8);
        *&v52[v56 + 8] = v57;
        v58 = v55[20];
        *&v52[v58] = *(v53 + v58);
        v99 = *(v53 + v58 + 8);
        *&v52[v58 + 8] = v99;
        v59 = v55[24];
        *&v52[v59] = *(v53 + v59);
        v96 = *(v53 + v59 + 8);
        *&v52[v59 + 8] = v96;
        v60 = v55[28];
        *&v52[v60] = *(v53 + v60);
        v61 = *(v53 + v60 + 8);
        *&v52[v60 + 8] = v61;
        v57;
        v99;
        v96;
        v61;
        JUMPOUT(0x767B7);
      case 1u:
        type metadata accessor for URL(0);
        JUMPOUT(0x768FCLL);
      case 2u:
        v64 = type metadata accessor for URL(0);
        (*(*(v64 - 8) + 16))(v52, v53, v64);
        v69 = 2;
        v70 = v52;
        v71 = v97;
        goto LABEL_25;
      case 3u:
        v65 = *v53;
        v101 = *(v53 + 8);
        outlined copy of Result<_DataTable, Error>(*v53, v101);
        *v52 = v65;
        v52[8] = v101;
        *(v52 + 2) = *(v53 + 16);
        v66 = *(v53 + 24);
        *(v52 + 3) = v66;
        *(v52 + 4) = *(v53 + 32);
        v67 = *(v53 + 40);
        *(v52 + 5) = v67;
        *(v52 + 6) = *(v53 + 48);
        v68 = *(v53 + 56);
        *(v52 + 7) = v68;
        v66;
        v67;
        v68;
        v92 = 3;
        goto LABEL_24;
      case 4u:
        v62 = *v53;
        v100 = *(v53 + 8);
        outlined copy of Result<_DataTable, Error>(*v53, v100);
        *v52 = v62;
        v52[8] = v100;
        *(v52 + 2) = *(v53 + 16);
        v63 = *(v53 + 24);
        *(v52 + 3) = v63;
        *(v52 + 4) = *(v53 + 32);
        *(v52 + 5) = *(v53 + 40);
        *(v52 + 6) = *(v53 + 48);
        *(v52 + 7) = *(v53 + 56);
        *(v52 + 8) = *(v53 + 64);
        *(v52 + 9) = *(v53 + 72);
        v63;
        JUMPOUT(0x76848);
      case 5u:
        v72 = type metadata accessor for DataFrame(0);
        (*(*(v72 - 8) + 16))(v52, v53, v72);
        v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v74 = v73[12];
        *&v52[v74] = *(v53 + v74);
        v75 = *(v53 + v74 + 8);
        *&v52[v74 + 8] = v75;
        v76 = v73[16];
        *&v52[v76] = *(v53 + v76);
        v77 = *(v53 + v76 + 8);
        *&v52[v76 + 8] = v77;
        v78 = v73[20];
        *&v52[v78] = *(v53 + v78);
        v79 = *(v53 + v78 + 8);
        *&v52[v78 + 8] = v79;
        v75;
        v77;
        v79;
        v92 = 5;
        goto LABEL_24;
      case 6u:
        v80 = type metadata accessor for DataFrame(0);
        (*(*(v80 - 8) + 16))(v52, v53, v80);
        v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v82 = v81[12];
        *&v52[v82] = *(v53 + v82);
        v83 = *(v53 + v82 + 8);
        *&v52[v82 + 8] = v83;
        v84 = v81[16];
        *&v52[v84] = *(v53 + v84);
        v102 = *(v53 + v84 + 8);
        *&v52[v84 + 8] = v102;
        v85 = v81[20];
        *&v52[v85] = *(v53 + v85);
        v86 = *(v53 + v85 + 8);
        *&v52[v85 + 8] = v86;
        v87 = v81[24];
        *&v52[v87] = *(v53 + v87);
        v88 = *(v53 + v87 + 8);
        *&v52[v87 + 8] = v88;
        v83;
        v102;
        v86;
        v88;
        v92 = 6;
LABEL_24:
        v69 = v92;
        v70 = v52;
        v71 = v97;
LABEL_25:
        swift_storeEnumTagMultiPayload(v70, v71, v69);
        swift_storeEnumTagMultiPayload(v52, v93, 1);
        break;
    }
  }

  else
  {
    memcpy(v52, v53, *(*(v54 - 8) + 64));
  }

  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandActionClassifier.DataSource);
    v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v6);
    v80 = a3;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v77 = type metadata accessor for URL(0);
        v15 = *(*(v77 - 8) + 16);
        v15(a1, a2, v77);
        v82 = v6;
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v15(a1 + v16[12], a2 + v16[12], v77);
        v17 = v16[16];
        *(a1 + v17) = *(a2 + v17);
        v18 = *(a2 + v17 + 8);
        *(a1 + v17 + 8) = v18;
        v19 = v16[20];
        *(a1 + v19) = *(a2 + v19);
        v20 = *(a2 + v19 + 8);
        *(a1 + v19 + 8) = v20;
        v21 = v16[24];
        *(a1 + v21) = *(a2 + v21);
        v22 = *(a2 + v21 + 8);
        *(a1 + v21 + 8) = v22;
        v23 = v16[28];
        *(a1 + v23) = *(a2 + v23);
        v24 = *(a2 + v23 + 8);
        *(a1 + v23 + 8) = v24;
        v18;
        v20;
        v22;
        v14 = v24;
        v6 = v82;
        goto LABEL_10;
      case 1u:
      case 2u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        goto LABEL_12;
      case 3u:
        v25 = v6;
        v26 = *a2;
        v27 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v27);
        *a1 = v26;
        *(a1 + 8) = v27;
        *(a1 + 16) = *(a2 + 16);
        v28 = *(a2 + 24);
        *(a1 + 24) = v28;
        *(a1 + 32) = *(a2 + 32);
        v29 = *(a2 + 40);
        *(a1 + 40) = v29;
        *(a1 + 48) = *(a2 + 48);
        v30 = *(a2 + 56);
        *(a1 + 56) = v30;
        goto LABEL_8;
      case 4u:
        v8 = v6;
        v9 = *a2;
        v10 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v10);
        *a1 = v9;
        *(a1 + 8) = v10;
        *(a1 + 16) = *(a2 + 16);
        v11 = *(a2 + 24);
        *(a1 + 24) = v11;
        *(a1 + 32) = *(a2 + 32);
        v12 = *(a2 + 40);
        *(a1 + 40) = v12;
        *(a1 + 48) = *(a2 + 48);
        v13 = *(a2 + 56);
        *(a1 + 56) = v13;
        *(a1 + 64) = *(a2 + 64);
        v81 = *(a2 + 72);
        *(a1 + 72) = v81;
        v11;
        LOBYTE(v11) = v12;
        v6 = v8;
        a3 = v80;
        v11;
        v13;
        v14 = v81;
        break;
      case 5u:
        v31 = type metadata accessor for DataFrame(0);
        (*(*(v31 - 8) + 16))(a1, a2, v31);
        v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v33 = v32[12];
        *(a1 + v33) = *(a2 + v33);
        v28 = *(a2 + v33 + 8);
        *(a1 + v33 + 8) = v28;
        v34 = v32[16];
        *(a1 + v34) = *(a2 + v34);
        v25 = v6;
        v29 = *(a2 + v34 + 8);
        *(a1 + v34 + 8) = v29;
        v35 = v32[20];
        *(a1 + v35) = *(a2 + v35);
        v30 = *(a2 + v35 + 8);
        *(a1 + v35 + 8) = v30;
LABEL_8:
        v28;
        v36 = v29;
        v6 = v25;
        a3 = v80;
        v36;
        v14 = v30;
        break;
      case 6u:
        v37 = type metadata accessor for DataFrame(0);
        (*(*(v37 - 8) + 16))(a1, a2, v37);
        v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v39 = v38[12];
        *(a1 + v39) = *(a2 + v39);
        v40 = *(a2 + v39 + 8);
        *(a1 + v39 + 8) = v40;
        v41 = v38[16];
        *(a1 + v41) = *(a2 + v41);
        v83 = *(a2 + v41 + 8);
        *(a1 + v41 + 8) = v83;
        v42 = v38[20];
        *(a1 + v42) = *(a2 + v42);
        v43 = *(a2 + v42 + 8);
        *(a1 + v42 + 8) = v43;
        v44 = v38[24];
        *(a1 + v44) = *(a2 + v44);
        v45 = v6;
        v46 = *(a2 + v44 + 8);
        *(a1 + v44 + 8) = v46;
        v40;
        v83;
        v43;
        v14 = v46;
        v6 = v45;
LABEL_10:
        a3 = v80;
        break;
    }

    v14;
LABEL_12:
    swift_storeEnumTagMultiPayload(a1, v6, EnumCaseMultiPayload);
    v47 = a3[5];
    v48 = (a1 + v47);
    v49 = a2 + v47;
    outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v50 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v49, v50) == 1)
    {
      v78 = v50;
      v84 = v6;
      v51 = swift_getEnumCaseMultiPayload(v49, v6);
      switch(v51)
      {
        case 0u:
          v86 = type metadata accessor for URL(0);
          v90 = *(*(v86 - 8) + 16);
          v53 = v48;
          v90(v48, v49, v86);
          v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v90(&v53[v54[12]], v49 + v54[12], v86);
          v55 = v54[16];
          *&v53[v55] = *(v49 + v55);
          v56 = *(v49 + v55 + 8);
          *&v53[v55 + 8] = v56;
          v57 = v54[20];
          *&v53[v57] = *(v49 + v57);
          *&v53[v57 + 8] = *(v49 + v57 + 8);
          v58 = v54[24];
          *&v53[v58] = *(v49 + v58);
          *&v53[v58 + 8] = *(v49 + v58 + 8);
          v59 = v54[28];
          *&v53[v59] = *(v49 + v59);
          *&v53[v59 + 8] = *(v49 + v59 + 8);
          v56;
          JUMPOUT(0x77003);
        case 1u:
        case 2u:
          v52 = type metadata accessor for URL(0);
          (*(*(v52 - 8) + 16))(v48, v49, v52);
          JUMPOUT(0x76EB0);
        case 3u:
          v87 = *v49;
          v91 = *(v49 + 8);
          outlined copy of Result<_DataTable, Error>(*v49, v91);
          *v48 = v87;
          v48[8] = v91;
          *(v48 + 2) = *(v49 + 16);
          *(v48 + 3) = *(v49 + 24);
          *(v48 + 4) = *(v49 + 32);
          v60 = *(v49 + 40);
          JUMPOUT(0x77061);
        case 4u:
          v85 = *v49;
          v89 = *(v49 + 8);
          outlined copy of Result<_DataTable, Error>(*v49, v89);
          *v48 = v85;
          v48[8] = v89;
          *(v48 + 2) = *(v49 + 16);
          *(v48 + 3) = *(v49 + 24);
          *(v48 + 4) = *(v49 + 32);
          *(v48 + 5) = *(v49 + 40);
          *(v48 + 6) = *(v49 + 48);
          *(v48 + 7) = *(v49 + 56);
          *(v48 + 8) = *(v49 + 64);
          JUMPOUT(0x76F32);
        case 5u:
          v61 = type metadata accessor for DataFrame(0);
          v62 = v48;
          (*(*(v61 - 8) + 16))(v48, v49, v61);
          v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v64 = v63[12];
          *&v48[v64] = *(v49 + v64);
          v65 = *(v49 + v64 + 8);
          *&v48[v64 + 8] = v65;
          v66 = v63[16];
          *&v48[v66] = *(v49 + v66);
          v67 = *(v49 + v66 + 8);
          *&v62[v66 + 8] = v67;
          v68 = v63[20];
          *&v62[v68] = *(v49 + v68);
          v92 = v51;
          v69 = *(v49 + v68 + 8);
          *&v62[v68 + 8] = v69;
          break;
        case 6u:
          v70 = type metadata accessor for DataFrame(0);
          v62 = v48;
          (*(*(v70 - 8) + 16))(v48, v49, v70);
          v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v72 = v71[12];
          *&v48[v72] = *(v49 + v72);
          v65 = *(v49 + v72 + 8);
          *&v48[v72 + 8] = v65;
          v73 = v71[16];
          *&v48[v73] = *(v49 + v73);
          v88 = *(v49 + v73 + 8);
          *&v48[v73 + 8] = v88;
          v74 = v71[20];
          *&v48[v74] = *(v49 + v74);
          v67 = *(v49 + v74 + 8);
          *&v62[v74 + 8] = v67;
          v75 = v71[24];
          *&v62[v75] = *(v49 + v75);
          v92 = v51;
          v69 = *(v49 + v75 + 8);
          *&v62[v75 + 8] = v69;
          v65;
          LOBYTE(v65) = v88;
          break;
        case 7u:
          JUMPOUT(0x7722CLL);
      }

      v65;
      v67;
      v69;
      swift_storeEnumTagMultiPayload(v62, v84, v92);
      swift_storeEnumTagMultiPayload(v62, v78, 1);
    }

    else
    {
      memcpy(v48, v49, *(*(v50 - 8) + 64));
    }

    a3 = v80;
    v4 = a2;
  }

  *(a1 + a3[6]) = *(v4 + a3[6]);
  *(a1 + a3[7]) = *(v4 + a3[7]);
  *(a1 + a3[8]) = *(v4 + a3[8]);
  *(a1 + a3[9]) = *(v4 + a3[9]);
  *(a1 + a3[10]) = *(v4 + a3[10]);
  return a1;
}

char *initializeWithTake for MLHandActionClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v38 = v6;
  switch(swift_getEnumCaseMultiPayload(__src, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v39 = *(*(v7 - 8) + 32);
      v39(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v39(&__dst[v8[12]], &__src[v8[12]], v7);
      *&__dst[v8[16]] = *&__src[v8[16]];
      *&__dst[v8[20]] = *&__src[v8[20]];
      *&__dst[v8[24]] = *&__src[v8[24]];
      *&__dst[v8[28]] = *&__src[v8[28]];
      v9 = v38;
      v10 = 0;
      goto LABEL_9;
    case 1u:
      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v33 = 1;
      goto LABEL_8;
    case 2u:
      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v33 = 2;
      goto LABEL_8;
    case 5u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      v33 = 5;
      goto LABEL_8;
    case 6u:
      v15 = type metadata accessor for DataFrame(0);
      (*(*(v15 - 8) + 32))(__dst, __src, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v16[12]] = *&__src[v16[12]];
      *&__dst[v16[16]] = *&__src[v16[16]];
      *&__dst[v16[20]] = *&__src[v16[20]];
      *&__dst[v16[24]] = *&__src[v16[24]];
      v33 = 6;
LABEL_8:
      v10 = v33;
      v9 = v6;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v9, v10);
      break;
    default:
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
      break;
  }

  v40 = a3;
  v17 = a3[5];
  v18 = &__dst[v17];
  v19 = &__src[v17];
  v20 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
  {
    v35 = v20;
    switch(swift_getEnumCaseMultiPayload(v19, v38))
    {
      case 0u:
        v37 = type metadata accessor for URL(0);
        v36 = *(*(v37 - 8) + 32);
        v36(v18, v19, v37);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v36(&v18[v21[12]], &v19[v21[12]], v37);
        *&v18[v21[16]] = *&v19[v21[16]];
        *&v18[v21[20]] = *&v19[v21[20]];
        *&v18[v21[24]] = *&v19[v21[24]];
        *&v18[v21[28]] = *&v19[v21[28]];
        v22 = v18;
        v23 = v38;
        v24 = 0;
        goto LABEL_20;
      case 1u:
        v27 = type metadata accessor for URL(0);
        (*(*(v27 - 8) + 32))(v18, v19, v27);
        v34 = 1;
        goto LABEL_19;
      case 2u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 32))(v18, v19, v26);
        v34 = 2;
        goto LABEL_19;
      case 5u:
        v28 = type metadata accessor for DataFrame(0);
        (*(*(v28 - 8) + 32))(v18, v19, v28);
        v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v18[v29[12]] = *&v19[v29[12]];
        *&v18[v29[16]] = *&v19[v29[16]];
        *&v18[v29[20]] = *&v19[v29[20]];
        v34 = 5;
        goto LABEL_19;
      case 6u:
        v30 = type metadata accessor for DataFrame(0);
        (*(*(v30 - 8) + 32))(v18, v19, v30);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v18[v31[12]] = *&v19[v31[12]];
        *&v18[v31[16]] = *&v19[v31[16]];
        *&v18[v31[20]] = *&v19[v31[20]];
        *&v18[v31[24]] = *&v19[v31[24]];
        v34 = 6;
LABEL_19:
        v24 = v34;
        v22 = v18;
        v23 = v38;
LABEL_20:
        swift_storeEnumTagMultiPayload(v22, v23, v24);
        break;
      default:
        memcpy(v18, v19, *(*(v38 - 8) + 64));
        break;
    }

    v25 = v40;
    swift_storeEnumTagMultiPayload(v18, v35, 1);
  }

  else
  {
    memcpy(v18, v19, *(*(v20 - 8) + 64));
    v25 = v40;
  }

  *&__dst[v25[6]] = *&__src[v25[6]];
  *&__dst[v25[7]] = *&__src[v25[7]];
  *&__dst[v25[8]] = *&__src[v25[8]];
  *&__dst[v25[9]] = *&__src[v25[9]];
  *&__dst[v25[10]] = *&__src[v25[10]];
  return __dst;
}

char *assignWithTake for MLHandActionClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLHandActionClassifier.DataSource);
    v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    v40 = v6;
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v7 = type metadata accessor for URL(0);
        v38 = *(*(v7 - 8) + 32);
        v38(__dst, __src, v7);
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v38(&__dst[v8[12]], &__src[v8[12]], v7);
        *&__dst[v8[16]] = *&__src[v8[16]];
        *&__dst[v8[20]] = *&__src[v8[20]];
        *&__dst[v8[24]] = *&__src[v8[24]];
        *&__dst[v8[28]] = *&__src[v8[28]];
        v9 = v40;
        v10 = 0;
        goto LABEL_10;
      case 1u:
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v33 = 1;
        goto LABEL_9;
      case 2u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v33 = 2;
        goto LABEL_9;
      case 5u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        v33 = 5;
        goto LABEL_9;
      case 6u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(__dst, __src, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v16[12]] = *&__src[v16[12]];
        *&__dst[v16[16]] = *&__src[v16[16]];
        *&__dst[v16[20]] = *&__src[v16[20]];
        *&__dst[v16[24]] = *&__src[v16[24]];
        v33 = 6;
LABEL_9:
        v10 = v33;
        v9 = v6;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    v39 = a3;
    v17 = a3[5];
    v18 = &__dst[v17];
    v19 = &__src[v17];
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v20 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
    {
      v35 = v20;
      switch(swift_getEnumCaseMultiPayload(v19, v40))
      {
        case 0u:
          v36 = type metadata accessor for URL(0);
          v37 = *(*(v36 - 8) + 32);
          v21 = v18;
          v37(v18, v19, v36);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v37(&v21[v22[12]], &v19[v22[12]], v36);
          *&v21[v22[16]] = *&v19[v22[16]];
          *&v21[v22[20]] = *&v19[v22[20]];
          *&v21[v22[24]] = *&v19[v22[24]];
          *&v21[v22[28]] = *&v19[v22[28]];
          v23 = v21;
          v24 = v40;
          v25 = 0;
          goto LABEL_21;
        case 1u:
          v27 = type metadata accessor for URL(0);
          v21 = v18;
          (*(*(v27 - 8) + 32))(v18, v19, v27);
          v34 = 1;
          goto LABEL_20;
        case 2u:
          v26 = type metadata accessor for URL(0);
          v21 = v18;
          (*(*(v26 - 8) + 32))(v18, v19, v26);
          v34 = 2;
          goto LABEL_20;
        case 5u:
          v28 = type metadata accessor for DataFrame(0);
          v21 = v18;
          (*(*(v28 - 8) + 32))(v18, v19, v28);
          v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v18[v29[12]] = *&v19[v29[12]];
          *&v18[v29[16]] = *&v19[v29[16]];
          *&v18[v29[20]] = *&v19[v29[20]];
          v34 = 5;
          goto LABEL_20;
        case 6u:
          v30 = type metadata accessor for DataFrame(0);
          v21 = v18;
          (*(*(v30 - 8) + 32))(v18, v19, v30);
          v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v18[v31[12]] = *&v19[v31[12]];
          *&v18[v31[16]] = *&v19[v31[16]];
          *&v18[v31[20]] = *&v19[v31[20]];
          *&v18[v31[24]] = *&v19[v31[24]];
          v34 = 6;
LABEL_20:
          v25 = v34;
          v23 = v18;
          v24 = v40;
LABEL_21:
          swift_storeEnumTagMultiPayload(v23, v24, v25);
          break;
        default:
          v21 = v18;
          memcpy(v18, v19, *(*(v40 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v21, v35, 1);
    }

    else
    {
      memcpy(v18, v19, *(*(v20 - 8) + 64));
    }

    a3 = v39;
  }

  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[9]] = *&__src[a3[9]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

uint64_t sub_77BAD(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_77C14(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLHandActionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandActionClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLHandActionClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandActionClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLHandActionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &value witness table for Builtin.Int64 + 64;
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for Builtin.Int64 + 64;
      v4[6] = &value witness table for Builtin.Int64 + 64;
      v4[7] = &value witness table for () + 64;
      swift_initStructMetadata(a1, 256, 8, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

NSURL *MLHandActionClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v139 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v134 = &v119;
  v132 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v132 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v122 = &v119;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v133 = &v119;
  v129 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v12 = *(*(v129 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v135 = &v119;
  v121 = type metadata accessor for DataFrame(0);
  v120 = *(v121 - 8);
  v15 = *(v120 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v130 = &v119;
  v151 = type metadata accessor for URL(0);
  v147 = *(v151 - 8);
  v18 = *(v147 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v131 = &v119;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v140 = &v119;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v142 = &v119;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v27 = alloca(v18);
  v28 = alloca(v18);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v29 = Data.init(contentsOf:options:)(&v119, 0);
  v141 = v2;
  if (v2)
  {
    v31 = *(v147 + 8);
    v32 = v151;
    v31(a1, v151);
    v31(&v119, v32);
    v31(&v119, v32);
    return __stack_chk_guard;
  }

  v33 = v30;
  v150 = &v119;
  v145 = a1;
  v34 = v29;
  v148 = *(v147 + 8);
  v148(&v119, v151);
  v35 = objc_opt_self(NSPropertyListSerialization);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v144 = v33;
  v155[0] = 0;
  v37 = [v35 propertyListWithData:isa options:0 format:0 error:v155];
  v38 = v37;

  v39 = v155[0];
  if (!v38)
  {
    v63 = v39;
    _convertNSErrorToError(_:)(v39);

    swift_willThrow(v63, "propertyListWithData:options:format:error:");
    outlined consume of Data._Representation(v34, v144);
    v64 = v151;
    v65 = v148;
    v148(v145, v151);
    v65(v150, v64);
    return __stack_chk_guard;
  }

  v143 = v34;
  _bridgeAnyObjectToAny(_:)(v38);
  swift_unknownObjectRelease(v38);
  outlined init with copy of Any(v172, v155);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(__src, v155, &type metadata for Any + 8, v40, 6))
  {
    v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
    *v67 = 0xD000000000000037;
    *(v67 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v67 + 16) = 0;
    *(v67 + 32) = 0;
    *(v67 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v66);
    outlined consume of Data._Representation(v143, v144);
    v61 = v145;
    v59 = v151;
    v62 = v151;
    v60 = v148;
    goto LABEL_21;
  }

  v146 = &type metadata for Any + 8;
  v41 = *&__src[0];
  specialized Dictionary.subscript.getter(0x69735F6863746162, 0xEA0000000000657ALL, *&__src[0]);
  v42 = v148;
  if (!v156)
  {
    v41;
    outlined destroy of AnyColumn?(v155, &demangling cache variable for type metadata for Any?);
LABEL_24:
    v68 = v151;
LABEL_28:
    v69 = v150;
LABEL_29:
    v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
    *v71 = 0xD00000000000003FLL;
    *(v71 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v71 + 16) = 0;
    *(v71 + 32) = 0;
    *(v71 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v70);
    outlined consume of Data._Representation(v143, v144);
    v42(v145, v68);
    __swift_destroy_boxed_opaque_existential_1Tm(v172);
    v42(v69, v68);
    return __stack_chk_guard;
  }

  v149 = v41;
  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Int, 6))
  {
    v149;
    goto LABEL_24;
  }

  v43 = *&__src[0];
  v44 = v149;
  specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v149);
  if (!v156)
  {
    goto LABEL_25;
  }

  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Int, 6))
  {
LABEL_26:
    v149;
    goto LABEL_27;
  }

  v136 = v40;
  v45 = *&__src[0];
  v44 = v149;
  specialized Dictionary.subscript.getter(0x6D6172665F6D756ELL, 0xEA00000000007365, v149);
  if (!v156)
  {
LABEL_25:
    v44;
    outlined destroy of AnyColumn?(v155, &demangling cache variable for type metadata for Any?);
LABEL_27:
    v68 = v151;
    v42 = v148;
    goto LABEL_28;
  }

  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Int, 6))
  {
    goto LABEL_26;
  }

  v137 = *&__src[0];
  v44 = v149;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("Empty training input." + 0x8000000000000000), v149);
  if (!v156)
  {
    goto LABEL_25;
  }

  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Int, 6))
  {
    goto LABEL_26;
  }

  v123 = *&__src[0];
  v46 = v149;
  specialized Dictionary.subscript.getter(0x7246746567726174, 0xEF65746152656D61, v149);
  if (!v156)
  {
    v46;
    outlined destroy of AnyColumn?(v155, &demangling cache variable for type metadata for Any?);
LABEL_33:
    v68 = v151;
    v69 = v150;
    v42 = v148;
    goto LABEL_29;
  }

  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Double, 6))
  {
    v149;
    goto LABEL_33;
  }

  v47 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v48 = v47[6];
  v49 = v47[7];
  v138 = v47;
  v50 = v47[8];
  v124 = *&__src[0];
  v51 = v139;
  *(v139 + v48) = v43;
  v52 = v51;
  *(v51 + v49) = v45;
  *(v51 + v50) = v137;
  v53 = v142;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xE800000000000000, v149);
  if (!v171)
  {
    outlined destroy of AnyColumn?(v170, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v155, v170, v146, v136, 6))
  {
LABEL_35:
    v73 = v151;
    v74 = v140;
    (*(v147 + 16))(v140, v142, v151);
    LOBYTE(__src[0]) = 1;
    *(&__src[0] + 1) = 44;
    __src[1] = 0xE100000000000000;
    *&__src[2] = 0xE000000000000000;
    *(&__src[2] + 1) = 92;
    *&__src[3] = 0xE100000000000000;
    BYTE8(__src[3]) = 1;
    *&__src[4] = 34;
    *(&__src[4] + 1) = 0xE100000000000000;
    LOBYTE(__src[5]) = 1;
    *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    *&__src[6] = 10;
    *(&__src[6] + 1) = 0xE100000000000000;
    __src[7] = 0;
    LOBYTE(__src[8]) = 1;
    *(&__src[8] + 1) = 0;
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v155[0]) = 1;
    v155[1] = &stru_20 + 12;
    v155[2] = 0xE100000000000000;
    v156 = 0;
    v157 = 0xE000000000000000;
    v158 = 92;
    v159 = 0xE100000000000000;
    v160 = 1;
    v161 = 34;
    v162 = 0xE100000000000000;
    v163 = 1;
    v164 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v165 = 10;
    v166 = 0xE100000000000000;
    v167 = 0;
    v168 = 1;
    v169 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(v155, 0xE000000000000000);
    memcpy(__dst, __src, 0x90uLL);
    v75 = v141;
    MLDataTable.init(contentsOf:options:)(v74, __dst);
    if (v75)
    {
      outlined consume of Data._Representation(v143, v144);
      v149;
      v76 = v148;
      v148(v145, v73);
      v76(v142, v73);
      __swift_destroy_boxed_opaque_existential_1Tm(v172);
      v76(v150, v73);
      return __stack_chk_guard;
    }

    __dst[0] = __dst[18];
    LOBYTE(__dst[1]) = v153;
    DataFrame.init(_:)(__dst);
    v77 = DataFrame.columns.getter();
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v77);
    v141 = 0;
    v77;
    v79 = 0x7472617473;
    *(&v80 + 1) = 0xE500000000000000;
    *&v80 = 0x7472617473;
    v81 = specialized Sequence<>.contains(_:)(v80, MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
    if ((v81 & 1) == 0)
    {
      v79 = 0;
    }

    v140 = v79;
    v82 = 0;
    if (v81)
    {
      v82 = 0xE500000000000000;
    }

    v133 = v82;
    v83 = DataFrame.columns.getter();
    v84 = v141;
    v85 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v83);
    v141 = v84;
    v83;
    v86 = 6581861;
    *&v87 = 6581861;
    *(&v87 + 1) = 0xE300000000000000;
    v88 = specialized Sequence<>.contains(_:)(v87, v85);
    v85;
    v89 = 0;
    if ((v88 & 1) == 0)
    {
      v86 = 0;
    }

    v135 = v86;
    if (v88)
    {
      v89 = 0xE300000000000000;
    }

    v137 = v89;
    v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
    v128 = v90[12];
    v127 = v90[16];
    v126 = v90[20];
    v125 = v90[24];
    v91 = v139;
    v92 = v130;
    v93 = v121;
    v94 = v120;
    (*(v120 + 16))(v139, v130, v121);
    v95 = v128;
    *(v91 + v128) = 0x7461506F65646976;
    *(v91 + v95 + 8) = 0xE900000000000068;
    (*(v94 + 8))(v92, v93);
    v96 = v127;
    *(v91 + v127) = 0x6C6562616CLL;
    *(v91 + v96 + 8) = 0xE500000000000000;
    v97 = v126;
    *(v91 + v126) = v140;
    *(v91 + v97 + 8) = v133;
    v52 = v91;
    v98 = v125;
    *(v91 + v125) = v135;
    *(v91 + v98 + 8) = v137;
    swift_storeEnumTagMultiPayload(v91, v129, 6);
    goto LABEL_47;
  }

  v54 = v155[0];
  v55 = v131;
  (*(v147 + 16))(v131, v53, v151);
  v56 = v133;
  MLHandActionClassifier.DataSource.init(dictionary:tableFile:)(v54, v55);
  if (__swift_getEnumTagSinglePayload(v56, 1, v129) == 1)
  {
    v149;
    outlined destroy of AnyColumn?(v56, &demangling cache variable for type metadata for MLHandActionClassifier.DataSource?);
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    *v58 = 0xD000000000000035;
    *(v58 + 8) = "o load validation data." + 0x8000000000000000;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v57);
    outlined consume of Data._Representation(v143, v144);
    v59 = v151;
    v60 = v148;
    v148(v145, v151);
    v61 = v142;
    v62 = v59;
LABEL_21:
    v60(v61, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v172);
    v60(v150, v59);
    return __stack_chk_guard;
  }

  v99 = v56;
  v100 = v135;
  outlined init with take of MLClassifierMetrics(v99, v135, type metadata accessor for MLHandActionClassifier.DataSource);
  outlined init with take of MLClassifierMetrics(v100, v51, type metadata accessor for MLHandActionClassifier.DataSource);
LABEL_47:
  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v149);
  if (!v156)
  {
    outlined destroy of AnyColumn?(v155, &demangling cache variable for type metadata for Any?);
    goto LABEL_52;
  }

  if (!swift_dynamicCast(__src, v155, v146, v136, 6))
  {
LABEL_52:
    v107 = v138;
    swift_storeEnumTagMultiPayload(v52 + v138[5], v132, 2);
LABEL_53:
    v108 = v107[9];
    *(v52 + v107[10]) = v123;
    *(v52 + v108) = v124;
    v109 = v149;
    specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v149);
    v109;
    if (v156)
    {
      LODWORD(v110) = swift_dynamicCast(__src, v155, v146, v136, 6);
      if (v110)
      {
        v110 = MLHandActionClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(*&__src[0]);
        if (LOBYTE(v155[0]) != 1)
        {
          outlined consume of Data._Representation(v143, v144);
          v111 = v151;
          v112 = v148;
          v148(v145, v151);
          v112(v142, v111);
          __swift_destroy_boxed_opaque_existential_1Tm(v172);
          v112(v150, v111);
          return __stack_chk_guard;
        }
      }
    }

    else
    {
      v110 = outlined destroy of AnyColumn?(v155, &demangling cache variable for type metadata for Any?);
    }

    LOBYTE(v110) = 1;
    LODWORD(v147) = v110;
    v105 = "is missing training parameters.";
    v106 = v150;
    v104 = 0xD00000000000002DLL;
    goto LABEL_59;
  }

  v101 = *&__src[0];
  v102 = v131;
  (*(v147 + 16))(v131, v150, v151);
  v103 = v134;
  MLHandActionClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v101, v102);
  if (__swift_getEnumTagSinglePayload(v103, 1, v132) != 1)
  {
    v118 = v122;
    outlined init with take of MLClassifierMetrics(v134, v122, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v107 = v138;
    v52 = v139;
    outlined init with take of MLClassifierMetrics(v118, v139 + v138[5], type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    goto LABEL_53;
  }

  v149;
  outlined destroy of AnyColumn?(v134, &demangling cache variable for type metadata for MLHandActionClassifier.ModelParameters.ValidationData?);
  v104 = 0xD000000000000037;
  v105 = "ion Classification algorithm.";
  LODWORD(v147) = 0;
  v106 = v150;
LABEL_59:
  v113 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v113, 0, 0);
  *v114 = v104;
  *(v114 + 8) = v105 | 0x8000000000000000;
  *(v114 + 16) = 0;
  *(v114 + 32) = 0;
  *(v114 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v113);
  outlined consume of Data._Representation(v143, v144);
  v115 = v151;
  v116 = v148;
  v148(v145, v151);
  v116(v142, v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v172);
  v116(v106, v115);
  v117 = v139;
  outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLHandActionClassifier.DataSource);
  if (v147)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v138[5] + v117, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  }

  return __stack_chk_guard;
}

uint64_t MLHandActionClassifier.DataSource.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v3 = v2;
  v93 = type metadata accessor for URL(0);
  v4 = *(v93 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v87 = &v56;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (!*(a1 + 16))
  {
    a1;
LABEL_21:
    v20 = v94;
    v21 = v93;
LABEL_22:
    (*(v4 + 8))(v20, v21);
    goto LABEL_23;
  }

  v85 = &v56;
  v95 = v4;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {
    a1;
LABEL_20:
    v4 = v95;
    goto LABEL_21;
  }

  v91 = v10;
  outlined init with copy of Any(*(a1 + 56) + 32 * v14, &v58);
  v90 = &type metadata for Any + 8;
  if (!swift_dynamicCast(__src, &v58, &type metadata for Any + 8, &type metadata for String, 6))
  {
    a1;
    v10 = v91;
    goto LABEL_20;
  }

  v92 = v3;
  v16 = __src[0];
  if (*&__src[0] ^ 0x726F746365726964 | *(&__src[0] + 1) ^ 0xE900000000000079 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x726F746365726964, 0xE900000000000079, *&__src[0], *(&__src[0] + 1), 0) & 1) == 0)
  {
    if (!(v16 ^ 0xD000000000000013 | *(&v16 + 1) ^ (&aLabeledDirecto[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      *(&v16 + 1);
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      if (v61)
      {
        v24 = swift_dynamicCast(__src, &v58, v90, &type metadata for String, 6);
        v3 = v92;
        v10 = v91;
        v4 = v95;
        if (v24)
        {
          v25 = *(&__src[0] + 1);
          v26 = v85;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v25;
          (*(v4 + 8))(v94, v93);
          swift_storeEnumTagMultiPayload(v26, v10, 1);
LABEL_31:
          outlined init with take of MLClassifierMetrics(v26, v3, type metadata accessor for MLHandActionClassifier.DataSource);
          v22 = 0;
          return __swift_storeEnumTagSinglePayload(v3, v22, 1, v10);
        }

        goto LABEL_39;
      }

      outlined destroy of AnyColumn?(&v58, &demangling cache variable for type metadata for Any?);
      v3 = v92;
      v10 = v91;
LABEL_38:
      v4 = v95;
LABEL_39:
      v21 = v93;
      v20 = v94;
      goto LABEL_22;
    }

    if (!(v16 ^ 0x5F64656C6562616CLL | *(&v16 + 1) ^ 0xED000073656C6966) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      *(&v16 + 1);
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      v3 = v92;
      v10 = v91;
      if (v61)
      {
        v30 = swift_dynamicCast(__src, &v58, v90, &type metadata for String, 6);
        v4 = v95;
        if (v30)
        {
          v31 = *(&__src[0] + 1);
          v26 = v85;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v31;
          (*(v4 + 8))(v94, v93);
          swift_storeEnumTagMultiPayload(v26, v10, 2);
          goto LABEL_31;
        }

        goto LABEL_39;
      }

      outlined destroy of AnyColumn?(&v58, &demangling cache variable for type metadata for Any?);
      goto LABEL_38;
    }

    if (!(v16 ^ 0xD000000000000016 | *(&v16 + 1) ^ (&aLabeledKeypoin[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aLabeledKeypoin[-32] | 0x8000000000000000, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      *(&v16 + 1);
      (*(v95 + 16))(&v56, v94, v93);
      LOBYTE(__src[0]) = 1;
      *(&__src[0] + 1) = 44;
      __src[1] = 0xE100000000000000;
      *&__src[2] = 0xE000000000000000;
      *(&__src[2] + 1) = 92;
      *&__src[3] = 0xE100000000000000;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 34;
      *(&__src[4] + 1) = 0xE100000000000000;
      LOBYTE(__src[5]) = 1;
      *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&__src[6] = 10;
      *(&__src[6] + 1) = 0xE100000000000000;
      __src[7] = 0;
      LOBYTE(__src[8]) = 1;
      *(&__src[8] + 1) = 0;
      LOBYTE(__dst[0]) = 1;
      LOBYTE(v58) = 1;
      v59 = 44;
      v60 = 0xE100000000000000;
      v61 = 0;
      v62 = 0xE000000000000000;
      v63 = 92;
      v64 = 0xE100000000000000;
      v65 = 1;
      v66 = 34;
      v67 = 0xE100000000000000;
      v68 = 1;
      v69 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v70 = 10;
      v71 = 0xE100000000000000;
      v72 = 0;
      v73 = 1;
      v74 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v58, 0xE000000000000000);
      memcpy(__dst, __src, sizeof(__dst));
      MLDataTable.init(contentsOf:options:)(&v56, __dst);
      v83 = v88;
      LOBYTE(v84) = BYTE8(v88);
      static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v83, 0x746E696F7079656BLL, 0xE900000000000073);
      v10 = v91;
      specialized Dictionary.subscript.getter(0xD000000000000011, ("labeled_keypoints_data" + 0x8000000000000000), a1);
      v33 = v95;
      if (__dst[3])
      {
        if (swift_dynamicCast(&v88, __dst, v90, &type metadata for String, 6))
        {
          v34 = v88;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v88, __dst, v90, &type metadata for String, 6))
            {
              v35 = *(&v88 + 1);
              v87 = v88;
              specialized Dictionary.subscript.getter(0x5F65727574616566, 0xEE006E6D756C6F63, a1);
              a1;
              (*(v95 + 8))(v94, v93);
              if (__dst[3])
              {
                if (swift_dynamicCast(&v88, __dst, v90, &type metadata for String, 6))
                {
                  v36 = v88;
                  v89 = v84;
                  v26 = v85;
                  *v85 = v83;
                  *(v26 + 8) = v89;
                  *(v26 + 16) = v34;
                  *(v26 + 32) = v87;
                  *(v26 + 40) = v35;
                  *(v26 + 48) = v36;
                  v55 = 3;
LABEL_111:
                  v48 = v55;
                  v46 = v26;
                  v10 = v91;
                  v47 = v91;
LABEL_77:
                  swift_storeEnumTagMultiPayload(v46, v47, v48);
                  v3 = v92;
                  goto LABEL_31;
                }

                v35;
                *(&v34 + 1);
              }

              else
              {
                v35;
                *(&v34 + 1);
                outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
              }

              v3 = v92;
              v10 = v91;
LABEL_98:
              outlined consume of Result<_DataTable, Error>(v83, v84);
              goto LABEL_23;
            }

            a1;
            *(&v34 + 1);
          }

          else
          {
            a1;
            *(&v34 + 1);
            outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
          }

          v3 = v92;
          (*(v95 + 8))(v94, v93);
          goto LABEL_98;
        }

        a1;
      }

      else
      {
        a1;
        outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
      }

      v3 = v92;
      (*(v33 + 8))(v94, v93);
      goto LABEL_98;
    }

    v37 = &aLabeledVideoDa[-32] | 0x8000000000000000;
    v38 = v95;
    if (v16 ^ 0xD000000000000012 | v37 ^ *(&v16 + 1))
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, v37, v16, *(&v16 + 1), 0);
      *(&v16 + 1);
      if ((v49 & 1) == 0)
      {
        (*(v38 + 8))(v94, v93);
        a1;
        goto LABEL_52;
      }
    }

    else
    {
      *(&v16 + 1);
    }

    v50 = v87;
    (*(v38 + 16))(v87, v94, v93);
    LOBYTE(__src[0]) = 1;
    *(&__src[0] + 1) = 44;
    __src[1] = 0xE100000000000000;
    *&__src[2] = 0xE000000000000000;
    *(&__src[2] + 1) = 92;
    *&__src[3] = 0xE100000000000000;
    BYTE8(__src[3]) = 1;
    *&__src[4] = 34;
    *(&__src[4] + 1) = 0xE100000000000000;
    LOBYTE(__src[5]) = 1;
    *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    *&__src[6] = 10;
    *(&__src[6] + 1) = 0xE100000000000000;
    __src[7] = 0;
    LOBYTE(__src[8]) = 1;
    *(&__src[8] + 1) = 0;
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v58) = 1;
    v59 = 44;
    v60 = 0xE100000000000000;
    v61 = 0;
    v62 = 0xE000000000000000;
    v63 = 92;
    v64 = 0xE100000000000000;
    v65 = 1;
    v66 = 34;
    v67 = 0xE100000000000000;
    v68 = 1;
    v69 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v70 = 10;
    v71 = 0xE100000000000000;
    v72 = 0;
    v73 = 1;
    v74 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(&v58, 0xE000000000000000);
    memcpy(__dst, __src, sizeof(__dst));
    MLDataTable.init(contentsOf:options:)(v50, __dst);
    v51 = v88;
    v52 = BYTE8(v88);
    specialized Dictionary.subscript.getter(0x6F635F6F65646976, 0xEC0000006E6D756CLL, a1);
    if (__dst[3])
    {
      if (!swift_dynamicCast(&v88, __dst, v90, &type metadata for String, 6))
      {
        outlined consume of Result<_DataTable, Error>(v51, v52);
LABEL_102:
        a1;
        goto LABEL_51;
      }

      v87 = *(&v88 + 1);
      v80 = v88;
      specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
      if (__dst[3])
      {
        if (swift_dynamicCast(&v88, __dst, v90, &type metadata for String, 6))
        {
          v81 = v88;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v88, __dst, v90, &type metadata for String, 6))
            {
              v86 = v88;
              goto LABEL_105;
            }
          }

          else
          {
            outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
          }

          v86 = 0uLL;
LABEL_105:
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          a1;
          (*(v95 + 8))(v94, v93);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v88, __dst, v90, &type metadata for String, 6))
            {
              v54 = *(&v88 + 1);
              v53 = v88;
LABEL_110:
              LOBYTE(v88) = v52 & 1;
              v26 = v85;
              *v85 = v51;
              *(v26 + 8) = v88;
              *(v26 + 16) = v80;
              *(v26 + 24) = v87;
              *(v26 + 32) = v81;
              *(v26 + 48) = v86;
              *(v26 + 64) = v53;
              *(v26 + 72) = v54;
              v55 = 4;
              goto LABEL_111;
            }
          }

          else
          {
            outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
          }

          v53 = 0;
          v54 = 0;
          goto LABEL_110;
        }

        outlined consume of Result<_DataTable, Error>(v51, v52);
        a1;
        a1 = v87;
        goto LABEL_102;
      }

      outlined consume of Result<_DataTable, Error>(v51, v52);
      a1;
      a1 = v87;
    }

    else
    {
      outlined consume of Result<_DataTable, Error>(v51, v52);
    }

    a1;
    outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
LABEL_51:
    (*(v95 + 8))(v94, v93);
LABEL_52:
    v22 = 1;
    v3 = v92;
    v10 = v91;
    return __swift_storeEnumTagSinglePayload(v3, v22, 1, v10);
  }

  *(&v16 + 1);
  v3 = v92;
  specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
  v10 = v91;
  if (v61)
  {
    if (swift_dynamicCast(__src, &v58, v90, &type metadata for String, 6))
    {
      v17 = __src[0];
      specialized Dictionary.subscript.getter(0x697461746F6E6E61, 0xEF656C69665F6E6FLL, a1);
      if (v61)
      {
        if (swift_dynamicCast(__src, &v58, v90, &type metadata for String, 6))
        {
          v18 = *(&__src[0] + 1);
          v80 = *&__src[0];
          specialized Dictionary.subscript.getter(0x6F635F6F65646976, 0xEC0000006E6D756CLL, a1);
          if (v61)
          {
            v87 = v18;
            if (!swift_dynamicCast(__src, &v58, v90, &type metadata for String, 6))
            {
LABEL_56:
              a1;
              v87;
              *(&v17 + 1);
              goto LABEL_57;
            }

            v19 = *(&__src[0] + 1);
            *&v81 = *&__src[0];
            specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
            if (v61)
            {
              if (swift_dynamicCast(__src, &v58, v90, &type metadata for String, 6))
              {
                v86 = __src[0];
                specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
                if (v61)
                {
                  if (swift_dynamicCast(__src, &v58, v90, &type metadata for String, 6))
                  {
                    v82 = __src[0];
LABEL_70:
                    specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
                    a1;
                    *(&v81 + 1) = v19;
                    if (v61)
                    {
                      if (swift_dynamicCast(__src, &v58, v90, &type metadata for String, 6))
                      {
                        v40 = *(&__src[0] + 1);
                        v39 = *&__src[0];
                      }

                      else
                      {
                        v39 = 0;
                        v40 = 0;
                      }

                      v79 = v40;
                      v90 = v39;
                    }

                    else
                    {
                      outlined destroy of AnyColumn?(&v58, &demangling cache variable for type metadata for Any?);
                      v90 = 0;
                      v79 = 0;
                    }

                    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
                    v26 = v85;
                    v42 = v85 + v41[12];
                    v43 = v41[16];
                    v78 = v41[20];
                    v77 = v41[24];
                    v76 = v41[28];
                    URL.init(fileURLWithPath:)(v17, *(&v17 + 1));
                    *(&v17 + 1);
                    v44 = v87;
                    URL.init(fileURLWithPath:)(v80, v87);
                    v44;
                    (*(v95 + 8))(v94, v93);
                    *(v26 + v43) = v81;
                    *(v26 + v78) = v86;
                    *(v26 + v77) = v82;
                    v45 = v76;
                    *(v26 + v76) = v90;
                    *(v26 + v45 + 8) = v79;
                    v46 = v26;
                    v10 = v91;
                    v47 = v91;
                    v48 = 0;
                    goto LABEL_77;
                  }
                }

                else
                {
                  outlined destroy of AnyColumn?(&v58, &demangling cache variable for type metadata for Any?);
                }

                v82 = 0uLL;
                goto LABEL_70;
              }

              a1;
              a1 = v19;
              goto LABEL_56;
            }

            a1;
            v19;
            v32 = v87;
          }

          else
          {
            a1;
            v32 = v18;
          }

          v32;
          *(&v17 + 1);
          outlined destroy of AnyColumn?(&v58, &demangling cache variable for type metadata for Any?);
LABEL_57:
          v10 = v91;
          v28 = v94;
          v29 = v93;
          v27 = v95;
          goto LABEL_58;
        }

        a1;
        *(&v17 + 1);
      }

      else
      {
        a1;
        *(&v17 + 1);
        outlined destroy of AnyColumn?(&v58, &demangling cache variable for type metadata for Any?);
      }

      v27 = v95;
      v28 = v94;
      v29 = v93;
LABEL_58:
      (*(v27 + 8))(v28, v29);
      v22 = 1;
      v3 = v92;
      return __swift_storeEnumTagSinglePayload(v3, v22, 1, v10);
    }

    a1;
  }

  else
  {
    a1;
    outlined destroy of AnyColumn?(&v58, &demangling cache variable for type metadata for Any?);
  }

  (*(v95 + 8))(v94, v93);
LABEL_23:
  v22 = 1;
  return __swift_storeEnumTagSinglePayload(v3, v22, 1, v10);
}

uint64_t MLHandActionClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v52 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v47 = &v37;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v51 = v3;
  outlined init with copy of Any(*(a1 + 56) + 32 * v19, &v41);
  v49 = &type metadata for Any + 8;
  if (!swift_dynamicCast(&v45, &v41, &type metadata for Any + 8, &type metadata for String, 6))
  {
    v3 = v51;
    goto LABEL_9;
  }

  v21 = v46;
  if (v45 ^ 0x656E6F6E | v46 ^ 0xE400000000000000)
  {
    v48 = v45;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)(1701736302, 0xE400000000000000, v45, v46, 0) & 1) == 0)
    {
      if (!(v48 ^ 0x756F735F61746164 | v21 ^ 0xEB00000000656372) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x756F735F61746164, 0xEB00000000656372, v48, v21, 0) & 1) != 0)
      {
        v21;
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v27, 6))
          {
            v49 = v45;
            v28 = v39;
            (*(v5 + 16))(v39, v50, v4);
            v29 = v38;
            MLHandActionClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              outlined destroy of AnyColumn?(v30, &demangling cache variable for type metadata for MLHandActionClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLHandActionClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLHandActionClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          outlined destroy of AnyColumn?(&v41, &demangling cache variable for type metadata for Any?);
        }

        v3 = v51;
        (*(v5 + 8))(v50, v4);
        goto LABEL_10;
      }

      if (!(v48 ^ 0x74696C7073 | v21 ^ 0xE500000000000000))
      {
        v21;
        v3 = v51;
        goto LABEL_24;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)(0x74696C7073, 0xE500000000000000, v48, v21, 0);
      v21;
      v3 = v51;
      if (v31)
      {
LABEL_24:
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v32, 6))
          {
            MLSplitStrategy.init(dictionary:)(v45);
            (*(v5 + 8))(v50, v4);
            if (!v43)
            {
              v33 = v42;
              v24 = v47;
              *v47 = v41;
              *(v24 + 16) = v33;
              *(v24 + 17) = HIBYTE(v33) & 1;
              v22 = 0;
              goto LABEL_29;
            }

LABEL_10:
            v25 = 1;
LABEL_11:
            v23 = v52;
            return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
          }
        }

        else
        {
          outlined destroy of AnyColumn?(&v41, &demangling cache variable for type metadata for Any?);
        }

        v23 = v52;
        (*(v5 + 8))(v50, v4);
        v25 = 1;
        return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
      }

LABEL_9:
      (*(v5 + 8))(v50, v4);
      a1;
      goto LABEL_10;
    }
  }

  (*(v5 + 8))(v50, v4);
  a1;
  v21;
  v22 = 2;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

uint64_t MLHandActionClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x687469726F676C61, 0xE90000000000006DLL), (v4 & 1) == 0))
  {
    v10 = 0;
    v9 = 0;
    a1;
    goto LABEL_8;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, &v9);
  a1;
  if (!*(&v10 + 1))
  {
LABEL_8:
    result = outlined destroy of AnyColumn?(&v9, &demangling cache variable for type metadata for Any?);
    goto LABEL_9;
  }

  result = swift_dynamicCast(&v11, &v9, &type metadata for Any + 8, &type metadata for String, 6);
  if (!result)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v6 = v12;
  if (v11 ^ 0x6E6367 | v12 ^ 0xE300000000000000)
  {
    v7 = 0;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(7234407, 0xE300000000000000, v11, v12, 0);
    result = v6;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = v12;
  v7 = 0;
LABEL_10:
  *v2 = v7;
  return result;
}

NSURL *MLHandActionClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v58 = v1;
  v70 = a1;
  v3 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v65 = &v54;
  v61 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v61 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v62 = &v54;
  v76 = type metadata accessor for URL(0);
  v67 = *(v76 - 8);
  v9 = *(v67 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v69 = &v54;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v60 = &v54;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v59 = &v54;
  v66 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v16 = *(*(v66 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v68 = &v54;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v74 = &v54;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v21, v79);
  *(inited + 16) = 8;
  *(inited + 24) = 16;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v72 = v2;
  v23 = MLHandActionClassifier.DataSource.dictionary.getter();
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 72) = v75;
  *(inited + 48) = v23;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v24 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v63 = v2 + v24[5];
  v25 = v74;
  outlined init with copy of MLTrainingSessionParameters(v63, v74, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v57 = *&v72[v24[6]];
  v71 = *&v72[v24[7]];
  v56 = *&v72[v24[8]];
  v64 = v24[10];
  v55 = *&v72[v64];
  v73 = *&v72[v24[9]];
  *(v25 + *(v66 + 32)) = v55;
  v26 = MLHandActionClassifier.ModelParameters.ValidationData.dictionary.getter();
  outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v27 = v75;
  *(inited + 120) = v75;
  *(inited + 96) = v26;
  *(inited + 128) = 0x69735F6863746162;
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v57;
  *(inited + 176) = 0x6D6172665F6D756ELL;
  *(inited + 184) = 0xEA00000000007365;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v56;
  strcpy((inited + 224), "max_iterations");
  *(inited + 239) = -18;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v71;
  *(inited + 272) = 0xD000000000000014;
  *(inited + 280) = "Empty training input." + 0x8000000000000000;
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = v55;
  *(inited + 320) = 0x687469726F676C61;
  *(inited + 328) = 0xE90000000000006DLL;
  v28 = MLHandActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter();
  *(inited + 360) = v27;
  *(inited + 336) = v28;
  *(inited + 368) = 0x7246746567726174;
  *(inited + 376) = 0xEF65746152656D61;
  *(inited + 408) = &type metadata for Double;
  v29 = v73;
  *(inited + 384) = v73;
  v30 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v31 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v30;
  v77 = 0;
  v33 = [v31 dataWithPropertyList:isa format:200 options:0 error:&v77];
  v34 = v33;

  v35 = v77;
  if (v34)
  {
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v34);
    v38 = v37;

    v39 = v59;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    v40 = v58;
    Data.write(to:options:)(v39, 0, v36, v38);
    if (v40)
    {
      (*(v67 + 8))(v39, v76);
      v41 = v36;
      v42 = v38;
    }

    else
    {
      v75 = v36;
      v74 = v38;
      v73 = *(v67 + 8);
      *v29.i64 = v73(v39, v76);
      MLHandActionClassifier.DataSource.table.getter(v29);
      v44 = v78;
      if (v78 != -1)
      {
        v71 = v77;
        v78 &= 1u;
        v45 = v60;
        URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
        MLDataTable.write(to:)(v45);
        v73(v45, v76);
        outlined consume of MLDataTable?(v71, v44);
      }

      v46 = v68;
      outlined init with copy of MLTrainingSessionParameters(v63, v68, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      *(v46 + *(v66 + 32)) = *&v72[v64];
      v47 = v46;
      v48 = v62;
      outlined init with copy of MLTrainingSessionParameters(v47, v62, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      if (swift_getEnumCaseMultiPayload(v48, v61) == 1)
      {
        v49 = v65;
        outlined init with take of MLClassifierMetrics(v48, v65, type metadata accessor for MLHandActionClassifier.DataSource);
        MLHandActionClassifier.DataSource.table.getter(v29);
        outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLHandActionClassifier.DataSource);
        v50 = v78;
        v51 = v77;
      }

      else
      {
        v50 = -1;
        v51 = 0;
      }

      v52 = v69;
      outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      if (v50 != -1)
      {
        v77 = v51;
        v78 = v50 & 1;
        v72 = v51;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v52);
        v73(v52, v76);
        outlined consume of Data._Representation(v75, v74);
        outlined consume of MLDataTable?(v72, v50);
        return __stack_chk_guard;
      }

      v41 = v75;
      v42 = v74;
    }

    outlined consume of Data._Representation(v41, v42);
  }

  else
  {
    v43 = v35;
    _convertNSErrorToError(_:)(v35);

    swift_willThrow(v43, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

uint64_t MLHandActionClassifier.DataSource.dictionary.getter()
{
  v86 = type metadata accessor for URL(0);
  v85 = *(v86 - 8);
  v1 = *(v85 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = alloca(v1);
  v5 = alloca(v1);
  v84 = &v60;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v8 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(v0, &v60, type metadata accessor for MLHandActionClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v60, v8))
  {
    case 0u:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v13 = &v60 + v12[12];
      v77 = *(&v60 + v12[16]);
      v76 = *(&v60 + v12[20]);
      v14 = v12[24];
      v80 = *(&v60 + v14);
      v78 = *(&v60 + v14 + 8);
      v15 = v12[28];
      v79 = *(&v60 + v15);
      v82 = *(&v60 + v15 + 8);
      v16 = *(v85 + 32);
      v17 = v86;
      v16(&v60, &v60, v86);
      v16(v84, v13, v17);
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v19 = swift_allocObject(v18, 272, 7);
      *(v19 + 16) = 5;
      *(v19 + 24) = 10;
      *(v19 + 32) = 1684957547;
      *(v19 + 40) = 0xE400000000000000;
      *(v19 + 72) = &type metadata for String;
      *(v19 + 48) = 0x726F746365726964;
      *(v19 + 56) = 0xE900000000000079;
      *(v19 + 80) = 1752457584;
      *(v19 + 88) = 0xE400000000000000;
      v83 = &v60;
      v20 = URL.path.getter(v18);
      *(v19 + 120) = &type metadata for String;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 128) = 0x697461746F6E6E61;
      *(v19 + 136) = 0xEF656C69665F6E6FLL;
      *(v19 + 168) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v19 + 144));
      (*(v85 + 16))(boxed_opaque_existential_0, v84, v17);
      strcpy((v19 + 176), "video_column");
      *(v19 + 189) = 0;
      *(v19 + 190) = -5120;
      *(v19 + 216) = &type metadata for String;
      *(v19 + 192) = v77;
      strcpy((v19 + 224), "label_column");
      *(v19 + 237) = 0;
      *(v19 + 238) = -5120;
      *(v19 + 264) = &type metadata for String;
      *(v19 + 240) = v76;
      v23 = Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      if (v78)
      {
        v74 = &type metadata for String;
        *&v73 = v80;
        *(&v73 + 1) = v78;
        outlined init with take of Any(&v73, v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0xD000000000000011, ("labeled_video_data" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
        v23 = v81;
      }

      v25 = v85;
      v26 = v86;
      if (v82)
      {
        v74 = &type metadata for String;
        *&v73 = v79;
        *(&v73 + 1) = v82;
        outlined init with take of Any(&v73, v75);
        v27 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v27);
        v23 = v81;
      }

      v28 = *(v25 + 8);
      v28(v84, v26);
      v28(v83, v26);
      return v23;
    case 1u:
      v32 = v85;
      (*(v85 + 32))(&v60, &v60, v86);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v33, v72);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      v35 = "session_id_column" + 0x8000000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0xD000000000000013;
      goto LABEL_11;
    case 2u:
      v32 = v85;
      (*(v85 + 32))(&v60, &v60, v86);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v33, v71);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x5F64656C6562616CLL;
      v35 = 0xED000073656C6966;
LABEL_11:
      inited[7] = v35;
      inited[10] = 1752457584;
      inited[11] = 0xE400000000000000;
      v40 = URL.path.getter(v33);
      inited[15] = &type metadata for String;
      inited[12] = v40;
      inited[13] = v41;
      v23 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      (*(v32 + 8))(&v60, v86);
      return v23;
    case 3u:
      v36 = v62;
      v37 = v63;
      v38 = v64;
      v39 = v65;
      v86 = v66;
      v85 = v67;
      outlined consume of Result<_DataTable, Error>(v60, v61);
      goto LABEL_13;
    case 4u:
      v84 = v62;
      v29 = v63;
      v85 = v64;
      v30 = v65;
      v82 = v66;
      v31 = v67;
      v83 = v68;
      v86 = v69;
      outlined consume of Result<_DataTable, Error>(v60, v61);
      goto LABEL_15;
    case 5u:
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v43 = v42[12];
      v36 = *(&v60 + v43);
      v37 = *(&v60 + v43 + 8);
      v44 = v42[16];
      v38 = *(&v60 + v44);
      v39 = *(&v60 + v44 + 8);
      v45 = v42[20];
      v86 = *(&v60 + v45);
      v85 = *(&v60 + v45 + 8);
      v46 = type metadata accessor for DataFrame(0);
      (*(*(v46 - 8) + 8))(&v60, v46);
LABEL_13:
      v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v48 = swift_initStackObject(v47, &v60);
      *(v48 + 16) = 4;
      *(v48 + 24) = 8;
      *(v48 + 32) = 1684957547;
      *(v48 + 40) = 0xE400000000000000;
      *(v48 + 72) = &type metadata for String;
      *(v48 + 48) = 0xD000000000000016;
      *(v48 + 56) = "start_time_column" + 0x8000000000000000;
      *(v48 + 80) = 0xD000000000000011;
      *(v48 + 88) = "labeled_keypoints_data" + 0x8000000000000000;
      *(v48 + 120) = &type metadata for String;
      *(v48 + 96) = v36;
      *(v48 + 104) = v37;
      strcpy((v48 + 128), "label_column");
      *(v48 + 141) = 0;
      *(v48 + 142) = -5120;
      *(v48 + 168) = &type metadata for String;
      *(v48 + 144) = v38;
      *(v48 + 152) = v39;
      strcpy((v48 + 176), "feature_column");
      *(v48 + 191) = -18;
      *(v48 + 216) = &type metadata for String;
      *(v48 + 192) = v86;
      *(v48 + 200) = v85;
      v23 = Dictionary.init(dictionaryLiteral:)(v48, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      break;
    case 6u:
      v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v50 = v49[12];
      v84 = *(&v60 + v50);
      v29 = *(&v60 + v50 + 8);
      v51 = v49[16];
      v85 = *(&v60 + v51);
      v30 = *(&v60 + v51 + 8);
      v52 = v49[20];
      v82 = *(&v60 + v52);
      v31 = *(&v60 + v52 + 8);
      v53 = v49[24];
      v83 = *(&v60 + v53);
      v86 = *(&v60 + v53 + 8);
      v54 = type metadata accessor for DataFrame(0);
      (*(*(v54 - 8) + 8))(&v60, v54);
LABEL_15:
      v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v56 = swift_initStackObject(v55, v70);
      *(v56 + 16) = 3;
      *(v56 + 24) = 6;
      *(v56 + 32) = 1684957547;
      *(v56 + 40) = 0xE400000000000000;
      *(v56 + 72) = &type metadata for String;
      *(v56 + 48) = 0xD000000000000012;
      *(v56 + 56) = "augmentation_options" + 0x8000000000000000;
      strcpy((v56 + 80), "video_column");
      *(v56 + 93) = 0;
      *(v56 + 94) = -5120;
      *(v56 + 120) = &type metadata for String;
      *(v56 + 96) = v84;
      *(v56 + 104) = v29;
      strcpy((v56 + 128), "label_column");
      *(v56 + 141) = 0;
      *(v56 + 142) = -5120;
      *(v56 + 168) = &type metadata for String;
      *(v56 + 144) = v85;
      *(v56 + 152) = v30;
      v23 = Dictionary.init(dictionaryLiteral:)(v56, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      if (v31)
      {
        v74 = &type metadata for String;
        *&v73 = v82;
        *(&v73 + 1) = v31;
        outlined init with take of Any(&v73, v75);
        v57 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0xD000000000000011, ("labeled_video_data" + 0x8000000000000000), v57);
        v23 = v81;
      }

      if (v86)
      {
        v74 = &type metadata for String;
        *&v73 = v83;
        *(&v73 + 1) = v86;
        outlined init with take of Any(&v73, v75);
        v58 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v58);
        v23 = v81;
      }

      break;
  }

  return v23;
}

uint64_t MLHandActionClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v0, &v23, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v23, v4);
  if (!EnumCaseMultiPayload)
  {
    v13 = v24;
    v14 = v25;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v31 = v23;
    inited = swift_initStackObject(v15, &v23);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x74696C7073;
    inited[7] = 0xE500000000000000;
    inited[10] = 1635017060;
    inited[11] = 0xE400000000000000;
    v28 = v31;
    v29 = v13;
    v30 = v14;
    v17 = MLSplitStrategy.dictionary.getter();
    inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    inited[12] = v17;
    v18 = &type metadata for Any + 8;
    v19 = inited;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v21 = swift_initStackObject(v20, v27);
    v21[2] = 1;
    v21[3] = 2;
    v21[4] = 1684957547;
    v21[5] = 0xE400000000000000;
    v21[9] = &type metadata for String;
    v21[6] = 1701736302;
    v21[7] = 0xE400000000000000;
    v18 = &type metadata for Any + 8;
    v19 = v21;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLHandActionClassifier.DataSource);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v10 = swift_initStackObject(v9, v26);
  v10[2] = 2;
  v10[3] = 4;
  v10[4] = 1684957547;
  v10[5] = 0xE400000000000000;
  v10[9] = &type metadata for String;
  v10[6] = 0x756F735F61746164;
  v10[7] = 0xEB00000000656372;
  v10[10] = 1635017060;
  v10[11] = 0xE400000000000000;
  v11 = MLHandActionClassifier.DataSource.dictionary.getter();
  v10[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  v10[12] = v11;
  v12 = Dictionary.init(dictionaryLiteral:)(v10, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  outlined destroy of MLActivityClassifier.ModelParameters(&v23, type metadata accessor for MLHandActionClassifier.DataSource);
  return v12;
}

uint64_t MLHandActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v0, v3);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = 0x687469726F676C61;
  inited[5] = 0xE90000000000006DLL;
  inited[9] = &type metadata for String;
  inited[6] = 7234407;
  inited[7] = 0xE300000000000000;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

void *MLHandActionClassifier.DataSource.table.getter(__m128 a1)
{
  v89 = v2;
  v88 = v1;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v70 = &v69;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v85 = &v69;
  v84 = type metadata accessor for AnyColumn(0);
  v75 = *(v84 - 8);
  v9 = *(v75 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v78 = &v69;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v80 = &v69;
  v14 = type metadata accessor for DataFrame(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v82 = &v69;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v81 = &v69;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = alloca(v16);
  v24 = alloca(v16);
  v74 = &v69;
  v25 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  outlined init with copy of MLTrainingSessionParameters(v89, &v69, type metadata accessor for MLHandActionClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v69, v25))
  {
    case 0u:
      v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v36 = &v69 + v35[12];
      *(&v69 + v35[16] + 8);
      *(&v69 + v35[20] + 8);
      *(&v69 + v35[24] + 8);
      *(&v69 + v35[28] + 8);
      v37 = type metadata accessor for URL(0);
      v38 = *(*(v37 - 8) + 8);
      v38(v36, v37);
      v38(&v69, v37);
      goto LABEL_11;
    case 1u:
    case 2u:
      v29 = type metadata accessor for URL(0);
      (*(*(v29 - 8) + 8))(&v69, v29);
LABEL_11:
      result = v88;
      *v88 = 0;
      *(result + 8) = -1;
      return result;
    case 3u:
      v39 = v69;
      v40 = v70;
      v41 = v74;
      v42 = v76;
      v72;
      v41;
      v42;
      v86 = v39;
      v87 = v40 & 1;
      outlined copy of Result<_DataTable, Error>(v39, v40);
      static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v86, 0x746E696F7079656BLL, 0xE900000000000073);
      outlined consume of Result<_DataTable, Error>(v39, v40);
      goto LABEL_12;
    case 4u:
      v30 = v69;
      LOBYTE(v89) = v70;
      v31 = v74;
      v32 = v76;
      v33 = v78;
      v72;
      v31;
      v33;
      v32;
      result = v88;
      *v88 = v30;
      *(result + 8) = v89;
      return result;
    case 5u:
      v82 = &v69;
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v69 + v43[12] + 8);
      *(&v69 + v43[16] + 8);
      v44 = v43[20];
      v45 = *(&v69 + v44);
      v46 = *(&v69 + v44 + 8);
      v81 = v14;
      v89 = v15;
      (*(v15 + 32))(v74, &v69, v14);
      v47 = v80;
      v83 = v45;
      v48 = v46;
      v49 = v46;
      v50 = v74;
      DataFrame.subscript.getter(v45, v49);
      v51 = AnyColumn.wrappedElementType.getter();
      v52 = *(v75 + 8);
      v52(v47, v84);
      v79 = v48;
      if (v51 == &type metadata for String)
      {
        v71 = v52;
        v57 = v70;
        DataFrame.subscript.getter(v83, v48, &type metadata for String);
        Column<A>.parseAsJSONArrays()();
        (*(v76 + 8))(v57, v77);
        v58 = v84;
        __swift_storeEnumTagSinglePayload(v85, 0, 1, v84);
        v59 = v78;
        v60 = v58;
        v61 = v75;
        (*(v75 + 32))(v78, v85, v60);
        v62 = v59;
        v63 = v84;
        (*(v61 + 16))(v80, v62, v84);
        v48;
        DataFrame.subscript.setter(v80, v83, v48);
        v71(v78, v63);
      }

      v53 = v89;
      v64 = v82;
      v65 = v81;
      *a1.i64 = (*(v89 + 16))(v82, v50, v81);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v64, 0, a1);
      v86 = v72;
      v87 = v73;
      v66 = v79;
      static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v86, v83, v79);
      (*(v53 + 8))(v50, v65);
      v66;
      goto LABEL_12;
    case 6u:
      v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(&v69 + v54[12] + 8);
      *(&v69 + v54[16] + 8);
      *(&v69 + v54[20] + 8);
      *(&v69 + v54[24] + 8);
      v55 = v81;
      (*(v15 + 32))(v81, &v69, v14);
      v56 = v82;
      *a1.i64 = (*(v15 + 16))(v82, v55, v14);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v56, 0, a1);
      (*(v15 + 8))(v55, v14);
LABEL_12:
      result = v86;
      v67 = v87;
      v68 = v88;
      *v88 = v86;
      *(v68 + 8) = v67;
      return result;
  }
}

uint64_t outlined consume of MLDataTable?(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of Result<_DataTable, Error>(a1, a2);
  }

  return result;
}

void *outlined retain of MLDataTable.ParsingOptions(void *a1)
{
  v1 = a1[2];
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[9];
  v7 = a1[11];
  v6 = a1[13];
  a1[14];
  v1;
  v2;
  v3;
  v4;
  v7;
  v6;
  return a1;
}

uint64_t outlined destroy of AnyColumn?(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *assignWithCopy for MLDecisionTreeClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(__dst);
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

uint64_t type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLDecisionTreeClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLDecisionTreeClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLDecisionTreeClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_33F3C0;
  v5[1] = &unk_33F3D8;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.ValidationData.asTable()(__m128 a1)
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
  v10 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(v2, &v25);
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

uint64_t outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
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
  v20 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(v3, &v44);
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

void *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *v4 = *a2;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a3;
    v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    v82 = v6;
    v87 = v7;
    switch(swift_getEnumCaseMultiPayload(a2, v7))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        v9 = *(*(v8 - 8) + 16);
        v9(a1, a2, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v9(a1 + v10[12], a2 + v10[12], v8);
        v11 = v10[16];
        *(a1 + v11) = *(a2 + v11);
        v12 = *(a2 + v11 + 8);
        *(v4 + v11 + 8) = v12;
        v13 = v10[20];
        *(v4 + v13) = *(a2 + v13);
        v14 = *(a2 + v13 + 8);
        *(v4 + v13 + 8) = v14;
        v12;
        LOBYTE(v12) = v14;
        v6 = v82;
        v12;
        v15 = v4;
        v16 = v87;
        v17 = 0;
        break;
      case 1u:
        v31 = type metadata accessor for URL(0);
        (*(*(v31 - 8) + 16))(a1, a2, v31);
        v80 = 1;
        goto LABEL_12;
      case 2u:
        v24 = type metadata accessor for URL(0);
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v80 = 2;
        goto LABEL_12;
      case 3u:
        v25 = v6;
        v26 = *a2;
        v27 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v27);
        *a1 = v26;
        *(a1 + 8) = v27;
        *(a1 + 16) = *(a2 + 16);
        v28 = *(a2 + 24);
        v4[3] = v28;
        v4[4] = *(a2 + 32);
        v29 = *(a2 + 40);
        v4[5] = v29;
        v4[6] = *(a2 + 48);
        v30 = *(a2 + 56);
        v4[7] = v30;
        v28;
        LOBYTE(v28) = v29;
        v6 = v25;
        v28;
        v30;
        v79 = 3;
        goto LABEL_10;
      case 4u:
        v19 = v6;
        v20 = *a2;
        v21 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v21);
        *a1 = v20;
        *(a1 + 8) = v21;
        *(a1 + 16) = *(a2 + 16);
        v22 = *(a2 + 24);
        v4[3] = v22;
        v4[4] = *(a2 + 32);
        v23 = *(a2 + 40);
        v4[5] = v23;
        v22;
        LOBYTE(v22) = v23;
        v6 = v19;
        v22;
        v79 = 4;
        goto LABEL_10;
      case 5u:
        v32 = type metadata accessor for DataFrame(0);
        (*(*(v32 - 8) + 16))(a1, a2, v32);
        v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v34 = v33[12];
        *(a1 + v34) = *(a2 + v34);
        v35 = *(a2 + v34 + 8);
        *(v4 + v34 + 8) = v35;
        v36 = v33[16];
        *(v4 + v36) = *(a2 + v36);
        v37 = v6;
        v38 = *(a2 + v36 + 8);
        *(v4 + v36 + 8) = v38;
        v39 = v33[20];
        *(v4 + v39) = *(a2 + v39);
        v40 = *(a2 + v39 + 8);
        *(v4 + v39 + 8) = v40;
        v35;
        LOBYTE(v35) = v38;
        v6 = v37;
        v35;
        v40;
        v79 = 5;
LABEL_10:
        v17 = v79;
        v15 = v4;
        v16 = v87;
        break;
      case 6u:
        v41 = type metadata accessor for DataFrame(0);
        (*(*(v41 - 8) + 16))(a1, a2, v41);
        v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v43 = *(v42 + 48);
        *(a1 + v43) = *(a2 + v43);
        v44 = *(a2 + v43 + 8);
        *(v4 + v43 + 8) = v44;
        v45 = *(v42 + 64);
        *(v4 + v45) = *(a2 + v45);
        v46 = v6;
        v47 = *(a2 + v45 + 8);
        *(v4 + v45 + 8) = v47;
        v44;
        LOBYTE(v44) = v47;
        v6 = v46;
        v44;
        v80 = 6;
LABEL_12:
        v17 = v80;
        v15 = v4;
        v16 = v7;
        break;
    }

    swift_storeEnumTagMultiPayload(v15, v16, v17);
    v48 = v6[5];
    v49 = v4 + v48;
    v50 = a2 + v48;
    v51 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v50, v51) == 1)
    {
      v86 = v51;
      switch(swift_getEnumCaseMultiPayload(v50, v87))
      {
        case 0u:
          v83 = type metadata accessor for URL(0);
          v81 = *(*(v83 - 8) + 16);
          v81(v49, v50, v83);
          v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v81(&v49[v52[12]], v50 + v52[12], v83);
          v53 = v52[16];
          *&v49[v53] = *(v50 + v53);
          v54 = *(v50 + v53 + 8);
          *&v49[v53 + 8] = v54;
          v55 = v52[20];
          *&v49[v55] = *(v50 + v55);
          v56 = *(v50 + v55 + 8);
          *&v49[v55 + 8] = v56;
          v54;
          v56;
          JUMPOUT(0x7CC19);
        case 1u:
          v63 = type metadata accessor for URL(0);
          (*(*(v63 - 8) + 16))(v49, v50, v63);
          swift_storeEnumTagMultiPayload(v49, v87, 1);
          break;
        case 2u:
          v58 = type metadata accessor for URL(0);
          (*(*(v58 - 8) + 16))(v49, v50, v58);
          swift_storeEnumTagMultiPayload(v49, v87, 2);
          break;
        case 3u:
          v85 = *v50;
          v59 = *(v50 + 8);
          outlined copy of Result<_DataTable, Error>(*v50, v59);
          *v49 = v85;
          v49[8] = v59;
          *(v49 + 2) = *(v50 + 16);
          v60 = *(v50 + 24);
          *(v49 + 3) = v60;
          *(v49 + 4) = *(v50 + 32);
          v61 = *(v50 + 40);
          *(v49 + 5) = v61;
          *(v49 + 6) = *(v50 + 48);
          v62 = *(v50 + 56);
          *(v49 + 7) = v62;
          v60;
          v61;
          v62;
          swift_storeEnumTagMultiPayload(v49, v87, 3);
          break;
        case 4u:
          v84 = *v50;
          v57 = *(v50 + 8);
          outlined copy of Result<_DataTable, Error>(*v50, v57);
          *v49 = v84;
          v49[8] = v57;
          *(v49 + 2) = *(v50 + 16);
          *(v49 + 3) = *(v50 + 24);
          *(v49 + 4) = *(v50 + 32);
          JUMPOUT(0x7CC72);
        case 5u:
          v64 = type metadata accessor for DataFrame(0);
          (*(*(v64 - 8) + 16))(v49, v50, v64);
          v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v66 = v65[12];
          *&v49[v66] = *(v50 + v66);
          v67 = *(v50 + v66 + 8);
          *&v49[v66 + 8] = v67;
          v68 = v65[16];
          *&v49[v68] = *(v50 + v68);
          v69 = *(v50 + v68 + 8);
          *&v49[v68 + 8] = v69;
          v70 = v65[20];
          *&v49[v70] = *(v50 + v70);
          v71 = *(v50 + v70 + 8);
          *&v49[v70 + 8] = v71;
          v67;
          v69;
          v71;
          swift_storeEnumTagMultiPayload(v49, v87, 5);
          break;
        case 6u:
          v72 = type metadata accessor for DataFrame(0);
          (*(*(v72 - 8) + 16))(v49, v50, v72);
          v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v74 = *(v73 + 48);
          *&v49[v74] = *(v50 + v74);
          v75 = *(v50 + v74 + 8);
          *&v49[v74 + 8] = v75;
          v76 = *(v73 + 64);
          *&v49[v76] = *(v50 + v76);
          v77 = *(v50 + v76 + 8);
          *&v49[v76 + 8] = v77;
          v75;
          v77;
          swift_storeEnumTagMultiPayload(v49, v87, 6);
          break;
        case 7u:
          JUMPOUT(0x7CE8CLL);
      }

      swift_storeEnumTagMultiPayload(v49, v86, 1);
    }

    else
    {
      memcpy(v49, v50, *(*(v51 - 8) + 64));
    }

    *(v4 + v82[6]) = *(a2 + v82[6]);
    *(v4 + v82[7]) = *(a2 + v82[7]);
    *(v4 + v82[8]) = *(a2 + v82[8]);
  }

  return v4;
}

uint64_t destroy for MLHandPoseClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a1, v4))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v8 = *(*(v7 - 8) + 8);
      v8(a1, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v8(a1 + v9[12], v7);
      v2 = a2;
      *(a1 + v9[16] + 8);
      v10 = v9[20];
      goto LABEL_8;
    case 1u:
    case 2u:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      break;
    case 3u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      v6 = *(a1 + 56);
      goto LABEL_9;
    case 4u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      v6 = *(a1 + 40);
      goto LABEL_9;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 8))(a1, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(a1 + v12[12] + 8);
      *(a1 + v12[16] + 8);
      v10 = v12[20];
      goto LABEL_8;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 8))(a1, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *(a1 + *(v14 + 48) + 8);
      v10 = *(v14 + 64);
LABEL_8:
      v6 = *(a1 + v10 + 8);
LABEL_9:
      v6;
      break;
    default:
      break;
  }

  v15 = *(v2 + 20) + a1;
  v16 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(v15, v16);
  if (result == 1)
  {
    result = swift_getEnumCaseMultiPayload(v15, v4);
    switch(result)
    {
      case 0:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 8);
        v20(v15, v19);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v20(v15 + v21[12], v19);
        *(v15 + v21[16] + 8);
        v22 = v21[20];
        goto LABEL_19;
      case 1:
      case 2:
        v18 = type metadata accessor for URL(0);
        return (*(*(v18 - 8) + 8))(v15, v18);
      case 3:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        *(v15 + 40);
        return *(v15 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        return *(v15 + 40);
      case 5:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 8))(v15, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v15 + v24[12] + 8);
        *(v15 + v24[16] + 8);
        v22 = v24[20];
        goto LABEL_19;
      case 6:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 8))(v15, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(v15 + *(v26 + 48) + 8);
        v22 = *(v26 + 64);
LABEL_19:
        result = *(v15 + v22 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLHandPoseClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v84 = a3;
  v90 = v6;
  switch(swift_getEnumCaseMultiPayload(a2, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v8(a1 + v9[12], a2 + v9[12], v7);
      v10 = v9[16];
      *(a1 + v10) = *(a2 + v10);
      v11 = *(a2 + v10 + 8);
      *(a1 + v10 + 8) = v11;
      v12 = v9[20];
      *(a1 + v12) = *(a2 + v12);
      v13 = *(a2 + v12 + 8);
      *(a1 + v12 + 8) = v13;
      v11;
      LOBYTE(v11) = v13;
      a3 = v84;
      v11;
      v14 = a1;
      v15 = v90;
      v16 = v90;
      v17 = 0;
      break;
    case 1u:
      v30 = type metadata accessor for URL(0);
      (*(*(v30 - 8) + 16))(a1, a2, v30);
      v82 = 1;
      goto LABEL_10;
    case 2u:
      v23 = type metadata accessor for URL(0);
      (*(*(v23 - 8) + 16))(a1, a2, v23);
      v82 = 2;
      goto LABEL_10;
    case 3u:
      v24 = a3;
      v25 = *a2;
      v26 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v26);
      *a1 = v25;
      *(a1 + 8) = v26;
      *(a1 + 16) = *(a2 + 16);
      v27 = *(a2 + 24);
      *(a1 + 24) = v27;
      *(a1 + 32) = *(a2 + 32);
      v28 = *(a2 + 40);
      *(a1 + 40) = v28;
      *(a1 + 48) = *(a2 + 48);
      v29 = *(a2 + 56);
      *(a1 + 56) = v29;
      v27;
      LOBYTE(v27) = v28;
      a3 = v24;
      v27;
      v29;
      v81 = 3;
      goto LABEL_8;
    case 4u:
      v18 = a3;
      v19 = *a2;
      v20 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v20);
      *a1 = v19;
      *(a1 + 8) = v20;
      *(a1 + 16) = *(a2 + 16);
      v21 = *(a2 + 24);
      *(a1 + 24) = v21;
      *(a1 + 32) = *(a2 + 32);
      v22 = *(a2 + 40);
      *(a1 + 40) = v22;
      v21;
      LOBYTE(v21) = v22;
      a3 = v18;
      v21;
      v81 = 4;
      goto LABEL_8;
    case 5u:
      v31 = type metadata accessor for DataFrame(0);
      (*(*(v31 - 8) + 16))(a1, a2, v31);
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v33 = v32[12];
      *(a1 + v33) = *(a2 + v33);
      v34 = *(a2 + v33 + 8);
      *(a1 + v33 + 8) = v34;
      v35 = v32[16];
      *(a1 + v35) = *(a2 + v35);
      v36 = a3;
      v37 = *(a2 + v35 + 8);
      *(a1 + v35 + 8) = v37;
      v38 = v32[20];
      *(a1 + v38) = *(a2 + v38);
      v39 = *(a2 + v38 + 8);
      *(a1 + v38 + 8) = v39;
      v34;
      LOBYTE(v34) = v37;
      a3 = v36;
      v34;
      v39;
      v81 = 5;
LABEL_8:
      v17 = v81;
      v14 = a1;
      v15 = v90;
      v16 = v90;
      break;
    case 6u:
      v40 = type metadata accessor for DataFrame(0);
      (*(*(v40 - 8) + 16))(a1, a2, v40);
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v42 = *(v41 + 48);
      *(a1 + v42) = *(a2 + v42);
      v43 = *(a2 + v42 + 8);
      *(a1 + v42 + 8) = v43;
      v44 = *(v41 + 64);
      *(a1 + v44) = *(a2 + v44);
      v45 = a3;
      v46 = *(a2 + v44 + 8);
      *(a1 + v44 + 8) = v46;
      v43;
      LOBYTE(v43) = v46;
      a3 = v45;
      v43;
      v82 = 6;
LABEL_10:
      v17 = v82;
      v14 = a1;
      v16 = v6;
      v15 = v6;
      break;
  }

  swift_storeEnumTagMultiPayload(v14, v15, v17);
  v47 = a2;
  v48 = a3[5];
  v49 = a1 + v48;
  v85 = v47;
  v50 = v47 + v48;
  v51 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v50, v51) != 1)
  {
    JUMPOUT(0x7D5B7);
  }

  v89 = v51;
  switch(swift_getEnumCaseMultiPayload(v50, v16))
  {
    case 0u:
      v86 = type metadata accessor for URL(0);
      v52 = *(*(v86 - 8) + 16);
      v53 = v49;
      v52(v49, v50, v86);
      v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v52(v54[12] + v53, v50 + v54[12], v86);
      v55 = v54[16];
      *(v53 + v55) = *(v50 + v55);
      v56 = *(v50 + v55 + 8);
      *(v53 + v55 + 8) = v56;
      v57 = v54[20];
      *(v53 + v57) = *(v50 + v57);
      v58 = *(v50 + v57 + 8);
      *(v53 + v57 + 8) = v58;
      v56;
      v58;
      JUMPOUT(0x7D5B2);
    case 1u:
      JUMPOUT(0x7D6B7);
    case 2u:
      JUMPOUT(0x7D628);
    case 3u:
      v88 = *v50;
      v63 = *(v50 + 8);
      outlined copy of Result<_DataTable, Error>(*v50, v63);
      v60 = v49;
      *v49 = v88;
      *(v49 + 8) = v63;
      *(v49 + 16) = *(v50 + 16);
      v64 = *(v50 + 24);
      *(v49 + 24) = v64;
      *(v49 + 32) = *(v50 + 32);
      v65 = *(v50 + 40);
      v60[5] = v65;
      v60[6] = *(v50 + 48);
      v66 = *(v50 + 56);
      v60[7] = v66;
      v64;
      v65;
      v66;
      v72 = 3;
      v73 = v60;
      goto LABEL_23;
    case 4u:
      v87 = *v50;
      v59 = *(v50 + 8);
      outlined copy of Result<_DataTable, Error>(*v50, v59);
      v60 = v49;
      *v49 = v87;
      *(v49 + 8) = v59;
      *(v49 + 16) = *(v50 + 16);
      v61 = *(v50 + 24);
      *(v49 + 24) = v61;
      *(v49 + 32) = *(v50 + 32);
      v62 = *(v50 + 40);
      *(v49 + 40) = v62;
      v61;
      v62;
      v83 = 4;
      goto LABEL_22;
    case 5u:
      v67 = type metadata accessor for DataFrame(0);
      (*(*(v67 - 8) + 16))(v49, v50, v67);
      v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v69 = v68[12];
      *(v49 + v69) = *(v50 + v69);
      *(v49 + v69 + 8) = *(v50 + v69 + 8);
      v70 = v68[16];
      *(v49 + v70) = *(v50 + v70);
      *(v49 + v70 + 8) = *(v50 + v70 + 8);
      v71 = v68[20];
      *(v49 + v71) = *(v50 + v71);
      *(v49 + v71 + 8) = *(v50 + v71 + 8);
      JUMPOUT(0x7D73FLL);
    case 6u:
      v74 = type metadata accessor for DataFrame(0);
      v60 = v49;
      (*(*(v74 - 8) + 16))(v49, v50, v74);
      v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v76 = *(v75 + 48);
      *(v49 + v76) = *(v50 + v76);
      v77 = *(v50 + v76 + 8);
      *(v49 + v76 + 8) = v77;
      v78 = *(v75 + 64);
      *(v49 + v78) = *(v50 + v78);
      v79 = *(v50 + v78 + 8);
      *(v49 + v78 + 8) = v79;
      v77;
      v79;
      v83 = 6;
LABEL_22:
      v72 = v83;
      v73 = v49;
LABEL_23:
      swift_storeEnumTagMultiPayload(v73, v90, v72);
      swift_storeEnumTagMultiPayload(v60, v89, 1);
      *(a1 + v84[6]) = *(v85 + v84[6]);
      *(a1 + v84[7]) = *(v85 + v84[7]);
      *(a1 + v84[8]) = *(v85 + v84[8]);
      return a1;
  }
}

void *assignWithCopy for MLHandPoseClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v5 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandPoseClassifier.DataSource);
    v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v6);
    v68 = a3;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v66 = v6;
        v14 = type metadata accessor for URL(0);
        v70 = *(*(v14 - 8) + 16);
        v70(a1, a2, v14);
        v72 = EnumCaseMultiPayload;
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v16 = v14;
        v6 = v66;
        v70(a1 + v15[12], a2 + v15[12], v16);
        v17 = v15[16];
        *(a1 + v17) = *(a2 + v17);
        v12 = *(a2 + v17 + 8);
        *(v5 + v17 + 8) = v12;
        v18 = v15[20];
        *(v5 + v18) = *(a2 + v18);
        goto LABEL_10;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        goto LABEL_13;
      case 3u:
        v73 = EnumCaseMultiPayload;
        v19 = *a2;
        v20 = v6;
        v21 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v21);
        *a1 = v19;
        *(a1 + 8) = v21;
        *(a1 + 16) = *(a2 + 16);
        v22 = *(a2 + 24);
        v5[3] = v22;
        v5[4] = *(a2 + 32);
        v23 = *(a2 + 40);
        v5[5] = v23;
        v5[6] = *(a2 + 48);
        v24 = *(a2 + 56);
        v5[7] = v24;
        goto LABEL_8;
      case 4u:
        v72 = EnumCaseMultiPayload;
        v9 = *a2;
        v10 = v6;
        v11 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v11);
        *a1 = v9;
        *(a1 + 8) = v11;
        v6 = v10;
        a3 = v68;
        *(a1 + 16) = *(a2 + 16);
        v12 = *(a2 + 24);
        v5[3] = v12;
        v5[4] = *(a2 + 32);
        v13 = *(a2 + 40);
        v5[5] = v13;
        goto LABEL_11;
      case 5u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v27 = v26[12];
        *(a1 + v27) = *(a2 + v27);
        v22 = *(a2 + v27 + 8);
        *(v5 + v27 + 8) = v22;
        v28 = v26[16];
        *(v5 + v28) = *(a2 + v28);
        v73 = EnumCaseMultiPayload;
        v23 = *(a2 + v28 + 8);
        *(v5 + v28 + 8) = v23;
        v29 = v26[20];
        *(v5 + v29) = *(a2 + v29);
        v20 = v6;
        v24 = *(a2 + v29 + 8);
        *(v5 + v29 + 8) = v24;
LABEL_8:
        v22;
        v30 = v23;
        EnumCaseMultiPayload = v73;
        v30;
        v31 = v24;
        v6 = v20;
        a3 = v68;
        break;
      case 6u:
        v32 = type metadata accessor for DataFrame(0);
        (*(*(v32 - 8) + 16))(a1, a2, v32);
        v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v34 = *(v33 + 48);
        *(a1 + v34) = *(a2 + v34);
        v12 = *(a2 + v34 + 8);
        *(v5 + v34 + 8) = v12;
        v18 = *(v33 + 64);
        *(v5 + v18) = *(a2 + v18);
        v72 = EnumCaseMultiPayload;
LABEL_10:
        v13 = *(a2 + v18 + 8);
        *(v5 + v18 + 8) = v13;
LABEL_11:
        v12;
        v31 = v13;
        EnumCaseMultiPayload = v72;
        break;
    }

    v31;
LABEL_13:
    swift_storeEnumTagMultiPayload(v5, v6, EnumCaseMultiPayload);
    v35 = a3[5];
    v71 = v5;
    v36 = v5 + v35;
    v37 = a2 + v35;
    outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v38 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v37, v38) == 1)
    {
      v39 = v36;
      v69 = v38;
      v67 = v6;
      v65 = swift_getEnumCaseMultiPayload(v37, v6);
      switch(v65)
      {
        case 0u:
          v44 = type metadata accessor for URL(0);
          v41 = v39;
          v45 = v39;
          v46 = *(*(v44 - 8) + 16);
          v46(v45, v37, v44);
          v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v46(&v41[v47[12]], v37 + v47[12], v44);
          v48 = v47[16];
          *&v41[v48] = *(v37 + v48);
          v49 = *(v37 + v48 + 8);
          *&v41[v48 + 8] = v49;
          v50 = v47[20];
          *&v41[v50] = *(v37 + v50);
          v51 = *(v37 + v50 + 8);
          *&v41[v50 + 8] = v51;
          goto LABEL_24;
        case 1u:
        case 2u:
          v40 = type metadata accessor for URL(0);
          v41 = v36;
          (*(*(v40 - 8) + 16))(v36, v37, v40);
          goto LABEL_25;
        case 3u:
          v52 = *v37;
          v53 = *(v37 + 8);
          outlined copy of Result<_DataTable, Error>(*v37, v53);
          *v39 = v52;
          v39[8] = v53;
          *(v39 + 2) = *(v37 + 16);
          *(v39 + 3) = *(v37 + 24);
          *(v39 + 4) = *(v37 + 32);
          JUMPOUT(0x7DC80);
        case 4u:
          v42 = *v37;
          v43 = *(v37 + 8);
          outlined copy of Result<_DataTable, Error>(*v37, v43);
          *v39 = v42;
          v39[8] = v43;
          *(v39 + 2) = *(v37 + 16);
          JUMPOUT(0x7DBB1);
        case 5u:
          v54 = type metadata accessor for DataFrame(0);
          v41 = v36;
          (*(*(v54 - 8) + 16))(v36, v37, v54);
          v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v56 = v55[12];
          *&v36[v56] = *(v37 + v56);
          v49 = *(v37 + v56 + 8);
          *&v36[v56 + 8] = v49;
          v57 = v55[16];
          *&v36[v57] = *(v37 + v57);
          v58 = *(v37 + v57 + 8);
          *&v39[v57 + 8] = v58;
          v59 = v55[20];
          *&v39[v59] = *(v37 + v59);
          v51 = *(v37 + v59 + 8);
          *&v39[v59 + 8] = v51;
          v49;
          LOBYTE(v49) = v58;
          goto LABEL_24;
        case 6u:
          v60 = type metadata accessor for DataFrame(0);
          v41 = v36;
          (*(*(v60 - 8) + 16))(v36, v37, v60);
          v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v62 = *(v61 + 48);
          *&v36[v62] = *(v37 + v62);
          v49 = *(v37 + v62 + 8);
          *&v36[v62 + 8] = v49;
          v63 = *(v61 + 64);
          *&v36[v63] = *(v37 + v63);
          v51 = *(v37 + v63 + 8);
          *&v36[v63 + 8] = v51;
LABEL_24:
          v49;
          v51;
LABEL_25:
          v5 = v71;
          swift_storeEnumTagMultiPayload(v41, v67, v65);
          swift_storeEnumTagMultiPayload(v41, v69, 1);
          a3 = v68;
          v4 = a2;
          break;
        case 7u:
          JUMPOUT(0x7DDF0);
      }
    }

    else
    {
      memcpy(v36, v37, *(*(v38 - 8) + 64));
      a3 = v68;
      v5 = v71;
    }
  }

  *(v5 + a3[6]) = *(v4 + a3[6]);
  *(v5 + a3[7]) = *(v4 + a3[7]);
  *(v5 + a3[8]) = *(v4 + a3[8]);
  return v5;
}

char *initializeWithTake for MLHandPoseClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v36 = a3;
  v39 = v6;
  switch(swift_getEnumCaseMultiPayload(__src, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v37 = *(*(v7 - 8) + 32);
      v37(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v9 = v7;
      a3 = v36;
      v37(&__dst[v8[12]], &__src[v8[12]], v9);
      *&__dst[v8[16]] = *&__src[v8[16]];
      *&__dst[v8[20]] = *&__src[v8[20]];
      v10 = v6;
      v11 = 0;
      goto LABEL_9;
    case 1u:
      v13 = type metadata accessor for URL(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v32 = 1;
      goto LABEL_8;
    case 2u:
      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v32 = 2;
      goto LABEL_8;
    case 5u:
      v14 = type metadata accessor for DataFrame(0);
      (*(*(v14 - 8) + 32))(__dst, __src, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v15[12]] = *&__src[v15[12]];
      *&__dst[v15[16]] = *&__src[v15[16]];
      *&__dst[v15[20]] = *&__src[v15[20]];
      v32 = 5;
      goto LABEL_8;
    case 6u:
      v16 = type metadata accessor for DataFrame(0);
      (*(*(v16 - 8) + 32))(__dst, __src, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *&__dst[*(v17 + 48)] = *&__src[*(v17 + 48)];
      *&__dst[*(v17 + 64)] = *&__src[*(v17 + 64)];
      v32 = 6;
LABEL_8:
      v11 = v32;
      v10 = v6;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v10, v11);
      break;
    default:
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
      break;
  }

  v18 = a3[5];
  v19 = &__dst[v18];
  v20 = &__src[v18];
  v21 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v20, v21) == 1)
  {
    switch(swift_getEnumCaseMultiPayload(v20, v39))
    {
      case 0u:
        v34 = type metadata accessor for URL(0);
        v38 = *(*(v34 - 8) + 32);
        v38(v19, v20, v34);
        v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v38(&v19[v35[12]], &v20[v35[12]], v34);
        *&v19[v35[16]] = *&v20[v35[16]];
        *&v19[v35[20]] = *&v20[v35[20]];
        v22 = v19;
        v23 = v39;
        v24 = 0;
        goto LABEL_20;
      case 1u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 32))(v19, v20, v26);
        v33 = 1;
        goto LABEL_19;
      case 2u:
        v25 = type metadata accessor for URL(0);
        (*(*(v25 - 8) + 32))(v19, v20, v25);
        v33 = 2;
        goto LABEL_19;
      case 5u:
        v27 = type metadata accessor for DataFrame(0);
        (*(*(v27 - 8) + 32))(v19, v20, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v19[v28[12]] = *&v20[v28[12]];
        *&v19[v28[16]] = *&v20[v28[16]];
        *&v19[v28[20]] = *&v20[v28[20]];
        v33 = 5;
        goto LABEL_19;
      case 6u:
        v29 = type metadata accessor for DataFrame(0);
        (*(*(v29 - 8) + 32))(v19, v20, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&v19[*(v30 + 48)] = *&v20[*(v30 + 48)];
        *&v19[*(v30 + 64)] = *&v20[*(v30 + 64)];
        v33 = 6;
LABEL_19:
        v24 = v33;
        v22 = v19;
        v23 = v39;
LABEL_20:
        swift_storeEnumTagMultiPayload(v22, v23, v24);
        break;
      default:
        memcpy(v19, v20, *(*(v39 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v19, v21, 1);
  }

  else
  {
    memcpy(v19, v20, *(*(v21 - 8) + 64));
  }

  *&__dst[v36[6]] = *&__src[v36[6]];
  *&__dst[v36[7]] = *&__src[v36[7]];
  *&__dst[v36[8]] = *&__src[v36[8]];
  return __dst;
}

char *assignWithTake for MLHandPoseClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLHandPoseClassifier.DataSource);
    v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    v37 = v6;
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v7 = type metadata accessor for URL(0);
        v38 = *(*(v7 - 8) + 32);
        v38(__dst, __src, v7);
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v38(&__dst[v8[12]], &__src[v8[12]], v7);
        *&__dst[v8[16]] = *&__src[v8[16]];
        *&__dst[v8[20]] = *&__src[v8[20]];
        v9 = v37;
        v10 = 0;
        goto LABEL_10;
      case 1u:
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v32 = 1;
        goto LABEL_9;
      case 2u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v32 = 2;
        goto LABEL_9;
      case 5u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        v32 = 5;
        goto LABEL_9;
      case 6u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(__dst, __src, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&__dst[*(v16 + 48)] = *&__src[*(v16 + 48)];
        *&__dst[*(v16 + 64)] = *&__src[*(v16 + 64)];
        v32 = 6;
LABEL_9:
        v10 = v32;
        v9 = v6;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    v39 = a3;
    v17 = a3[5];
    v18 = &__dst[v17];
    v19 = &__src[v17];
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v20 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
    {
      v34 = v20;
      switch(swift_getEnumCaseMultiPayload(v19, v37))
      {
        case 0u:
          v35 = type metadata accessor for URL(0);
          v36 = *(*(v35 - 8) + 32);
          v36(v18, v19, v35);
          v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v36(&v18[v21[12]], &v19[v21[12]], v35);
          *&v18[v21[16]] = *&v19[v21[16]];
          *&v18[v21[20]] = *&v19[v21[20]];
          v22 = v18;
          v23 = v37;
          v24 = 0;
          goto LABEL_21;
        case 1u:
          v26 = type metadata accessor for URL(0);
          (*(*(v26 - 8) + 32))(v18, v19, v26);
          v33 = 1;
          goto LABEL_20;
        case 2u:
          v25 = type metadata accessor for URL(0);
          (*(*(v25 - 8) + 32))(v18, v19, v25);
          v33 = 2;
          goto LABEL_20;
        case 5u:
          v27 = type metadata accessor for DataFrame(0);
          (*(*(v27 - 8) + 32))(v18, v19, v27);
          v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v18[v28[12]] = *&v19[v28[12]];
          *&v18[v28[16]] = *&v19[v28[16]];
          *&v18[v28[20]] = *&v19[v28[20]];
          v33 = 5;
          goto LABEL_20;
        case 6u:
          v29 = type metadata accessor for DataFrame(0);
          (*(*(v29 - 8) + 32))(v18, v19, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          *&v18[*(v30 + 48)] = *&v19[*(v30 + 48)];
          *&v18[*(v30 + 64)] = *&v19[*(v30 + 64)];
          v33 = 6;
LABEL_20:
          v24 = v33;
          v22 = v18;
          v23 = v37;
LABEL_21:
          swift_storeEnumTagMultiPayload(v22, v23, v24);
          break;
        default:
          memcpy(v18, v19, *(*(v37 - 8) + 64));
          break;
      }

      a3 = v39;
      swift_storeEnumTagMultiPayload(v18, v34, 1);
    }

    else
    {
      memcpy(v18, v19, *(*(v20 - 8) + 64));
      a3 = v39;
    }
  }

  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  return __dst;
}

uint64_t sub_7E651(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_7E6B8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLHandPoseClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandPoseClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLHandPoseClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandPoseClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLHandPoseClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for MLHandPoseClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &value witness table for Builtin.Int64 + 64;
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for () + 64;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

NSURL *MLHandPoseClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v107 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v98 = &v94;
  v104 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v104 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v95 = &v94;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v96 = &v94;
  v101 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v12 = *(*(v101 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v97 = &v94;
  v117 = type metadata accessor for URL(0);
  v15 = *(v117 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v102 = &v94;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v100 = &v94;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v111 = &v94;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v25 = alloca(v16);
  v26 = alloca(v16);
  v118 = &v94;
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v27 = Data.init(contentsOf:options:)(&v94, 0);
  v109 = v2;
  if (v2)
  {
    v29 = v117;
    v30 = *(v15 + 8);
    v30(a1, v117);
    v30(&v94, v29);
LABEL_3:
    v31 = v118;
    v32 = v29;
LABEL_4:
    v30(v31, v32);
    return __stack_chk_guard;
  }

  v33 = v28;
  v103 = 0xD00000000000002BLL;
  v115 = a1;
  v105 = v15;
  v34 = v27;
  v113 = *(v15 + 8);
  v113(&v94, v117);
  v35 = objc_opt_self(NSPropertyListSerialization);
  v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v114 = v33;
  isa = v36.super.isa;
  v123[0] = 0;
  v38 = [v35 propertyListWithData:v36.super.isa options:0 format:0 error:v123];
  v39 = v38;

  v40 = v123[0];
  if (!v39)
  {
    v66 = v40;
    _convertNSErrorToError(_:)(v40);

    swift_willThrow(v66, "propertyListWithData:options:format:error:");
    outlined consume of Data._Representation(v34, v114);
    v67 = v117;
    v68 = v113;
    v113(v115, v117);
LABEL_19:
    v71 = v118;
LABEL_26:
    v68(v71, v67);
    return __stack_chk_guard;
  }

  v112 = v34;
  _bridgeAnyObjectToAny(_:)(v39);
  swift_unknownObjectRelease(v39);
  outlined init with copy of Any(v140, v123);
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(__src, v123, &type metadata for Any + 8, v41, 6))
  {
    v69 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v69, 0, 0);
    *v70 = 0xD000000000000037;
    *(v70 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v70 + 16) = 0;
    *(v70 + 32) = 0;
    *(v70 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v69);
    outlined consume of Data._Representation(v112, v114);
    v67 = v117;
    v68 = v113;
    v113(v115, v117);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    goto LABEL_19;
  }

  v106 = v41;
  v42 = *&__src[0];
  specialized Dictionary.subscript.getter(0x69735F6863746162, 0xEA0000000000657ALL, *&__src[0]);
  v43 = v118;
  if (!v124)
  {
    v42;
    _s11TabularData9AnyColumnVSgWOhTm_0(v123, &demangling cache variable for type metadata for Any?);
LABEL_25:
    v72 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v72, 0, 0);
    *v73 = 0xD00000000000003FLL;
    *(v73 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v73 + 16) = 0;
    *(v73 + 32) = 0;
    *(v73 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v72);
    outlined consume of Data._Representation(v112, v114);
    v67 = v117;
    v68 = v113;
    v113(v115, v117);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    v71 = v43;
    goto LABEL_26;
  }

  v116 = v42;
  if (!swift_dynamicCast(__src, v123, &type metadata for Any + 8, &type metadata for Int, 6))
  {
    v116;
    goto LABEL_25;
  }

  v110 = &type metadata for Any + 8;
  v44 = *&__src[0];
  v45 = v116;
  specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v116);
  if (!v124)
  {
    goto LABEL_22;
  }

  if (!swift_dynamicCast(__src, v123, v110, &type metadata for Int, 6))
  {
LABEL_23:
    v45;
    goto LABEL_24;
  }

  v46 = *&__src[0];
  specialized Dictionary.subscript.getter(0xD000000000000014, ("Empty training input." + 0x8000000000000000), v45);
  if (!v124)
  {
LABEL_22:
    v45;
    _s11TabularData9AnyColumnVSgWOhTm_0(v123, &demangling cache variable for type metadata for Any?);
LABEL_24:
    v43 = v118;
    goto LABEL_25;
  }

  if (!swift_dynamicCast(__src, v123, v110, &type metadata for Int, 6))
  {
    goto LABEL_23;
  }

  v47 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v48 = *(v47 + 24);
  v108 = v47;
  v49 = *(v47 + 28);
  v99 = *&__src[0];
  v50 = v107;
  *(v107 + v48) = v44;
  *(v50 + v49) = v46;
  v51 = v111;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xE800000000000000, v116);
  if (v139)
  {
    v52 = swift_dynamicCast(v123, v138, v110, v106, 6);
    v53 = v100;
    if (v52)
    {
      v54 = v123[0];
      v55 = v102;
      v56 = v51;
      v57 = v117;
      (*(v105 + 16))(v102, v56, v117);
      v58 = v54;
      v59 = v96;
      MLHandPoseClassifier.DataSource.init(dictionary:tableFile:)(v58, v55);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v101);
      v61 = v115;
      v62 = v107;
      if (EnumTagSinglePayload == 1)
      {
        v116;
        _s11TabularData9AnyColumnVSgWOhTm_0(v59, &demangling cache variable for type metadata for MLHandPoseClassifier.DataSource?);
        v63 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v63, 0, 0);
        *v64 = 0xD000000000000035;
        *(v64 + 8) = "o load validation data." + 0x8000000000000000;
        *(v64 + 16) = 0;
        *(v64 + 32) = 0;
        *(v64 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v63);
        outlined consume of Data._Representation(v112, v114);
        v65 = v113;
        v113(v61, v57);
        v65(v111, v57);
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
        v65(v118, v57);
        return __stack_chk_guard;
      }

      v78 = v97;
      outlined init with take of MLClassifierMetrics(v59, v97, type metadata accessor for MLHandPoseClassifier.DataSource);
      outlined init with take of MLClassifierMetrics(v78, v62, type metadata accessor for MLHandPoseClassifier.DataSource);
      goto LABEL_34;
    }

    v75 = v117;
  }

  else
  {
    _s11TabularData9AnyColumnVSgWOhTm_0(v138, &demangling cache variable for type metadata for Any?);
    v75 = v117;
    v53 = v100;
  }

  (*(v105 + 16))(v53, v111, v75);
  LOBYTE(__src[0]) = 1;
  *(&__src[0] + 1) = 44;
  __src[1] = 0xE100000000000000;
  *&__src[2] = 0xE000000000000000;
  *(&__src[2] + 1) = 92;
  *&__src[3] = 0xE100000000000000;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 34;
  *(&__src[4] + 1) = 0xE100000000000000;
  LOBYTE(__src[5]) = 1;
  *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  *&__src[6] = 10;
  *(&__src[6] + 1) = 0xE100000000000000;
  __src[7] = 0;
  LOBYTE(__src[8]) = 1;
  *(&__src[8] + 1) = 0;
  __dst[0] = 1;
  LOBYTE(v123[0]) = 1;
  v123[1] = &stru_20 + 12;
  v123[2] = 0xE100000000000000;
  v124 = 0;
  v125 = 0xE000000000000000;
  v126 = 92;
  v127 = 0xE100000000000000;
  v128 = 1;
  v129 = 34;
  v130 = 0xE100000000000000;
  v131 = 1;
  v132 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v133 = 10;
  v134 = 0xE100000000000000;
  v135 = 0;
  v136 = 1;
  v137 = 0;
  outlined retain of MLDataTable.ParsingOptions(__src);
  outlined release of MLDataTable.ParsingOptions(v123, 0xE000000000000000);
  memcpy(__dst, __src, sizeof(__dst));
  v76 = v109;
  MLDataTable.init(contentsOf:options:)(v53, __dst);
  v109 = v76;
  if (v76)
  {
    outlined consume of Data._Representation(v112, v114);
    v116;
    v30 = v113;
    v113(v115, v75);
    v30(v111, v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    v31 = v118;
    v32 = v75;
    goto LABEL_4;
  }

  v77 = v121;
  v62 = v107;
  *v107 = v120;
  *(v62 + 8) = v77;
  v62[2] = 0x7461506567616D69;
  v62[3] = 0xE900000000000068;
  v62[4] = 0x6C6562616CLL;
  v62[5] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload(v62, v101, 4);
LABEL_34:
  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v116);
  v79 = v95;
  v80 = v110;
  if (!v124)
  {
    _s11TabularData9AnyColumnVSgWOhTm_0(v123, &demangling cache variable for type metadata for Any?);
    goto LABEL_39;
  }

  if (!swift_dynamicCast(__src, v123, v110, v106, 6))
  {
LABEL_39:
    v87 = v108;
    swift_storeEnumTagMultiPayload(v62 + *(v108 + 20), v104, 2);
    goto LABEL_40;
  }

  v81 = *&__src[0];
  v82 = v102;
  (*(v105 + 16))(v102, v118, v117);
  v83 = v81;
  v84 = v98;
  MLHandPoseClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v83, v82);
  if (__swift_getEnumTagSinglePayload(v84, 1, v104) == 1)
  {
    v116;
    _s11TabularData9AnyColumnVSgWOhTm_0(v84, &demangling cache variable for type metadata for MLHandPoseClassifier.ModelParameters.ValidationData?);
    v103 += 12;
    v85 = "ion Classification algorithm.";
    v86 = 0;
    goto LABEL_46;
  }

  outlined init with take of MLClassifierMetrics(v84, v79, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v87 = v108;
  outlined init with take of MLClassifierMetrics(v79, v62 + *(v108 + 20), type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v80 = v110;
LABEL_40:
  *(v62 + *(v87 + 32)) = v99;
  v88 = v116;
  specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v116);
  v88;
  if (v124)
  {
    if (swift_dynamicCast(__src, v123, v80, v106, 6))
    {
      MLHandPoseClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(*&__src[0]);
      if (LOBYTE(v123[0]) != 1)
      {
        outlined consume of Data._Representation(v112, v114);
        v29 = v117;
        v30 = v113;
        v113(v115, v117);
        v30(v111, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
        goto LABEL_3;
      }
    }
  }

  else
  {
    _s11TabularData9AnyColumnVSgWOhTm_0(v123, &demangling cache variable for type metadata for Any?);
  }

  v86 = 1;
  v85 = "labeled_image_data";
LABEL_46:
  v89 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v89, 0, 0);
  *v90 = v103;
  *(v90 + 8) = v85 | 0x8000000000000000;
  *(v90 + 16) = 0;
  *(v90 + 32) = 0;
  *(v90 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v89);
  outlined consume of Data._Representation(v112, v114);
  v91 = v117;
  v92 = v113;
  v113(v115, v117);
  v92(v111, v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  v92(v118, v91);
  v93 = v107;
  outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (v86)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v93 + *(v108 + 20), type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  }

  return __stack_chk_guard;
}

uint64_t MLHandPoseClassifier.DataSource.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = v2;
  v83 = type metadata accessor for URL(0);
  v4 = *(v83 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v80 = &v51;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (!*(a1 + 16))
  {
    a1;
LABEL_20:
    v28 = v84;
    v29 = v83;
LABEL_21:
    (*(v4 + 8))(v28, v29);
    goto LABEL_22;
  }

  v77 = &v51;
  v86 = v4;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {
    a1;
LABEL_19:
    v4 = v86;
    goto LABEL_20;
  }

  v82 = v10;
  outlined init with copy of Any(*(a1 + 56) + 32 * v14, &v53);
  *&v78 = &type metadata for Any + 8;
  if (!swift_dynamicCast(__src, &v53, &type metadata for Any + 8, &type metadata for String, 6))
  {
    a1;
    v10 = v82;
    goto LABEL_19;
  }

  v85 = v3;
  v16 = __src[0];
  if (*&__src[0] ^ 0x726F746365726964 | *(&__src[0] + 1) ^ 0xE900000000000079 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x726F746365726964, 0xE900000000000079, *&__src[0], *(&__src[0] + 1), 0) & 1) == 0)
  {
    if (!(v16 ^ 0xD000000000000013 | *(&v16 + 1) ^ (&aLabeledDirecto[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      *(&v16 + 1);
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      if (v56)
      {
        v32 = swift_dynamicCast(__src, &v53, v78, &type metadata for String, 6);
        v3 = v85;
        v10 = v82;
        v4 = v86;
        if (v32)
        {
          v33 = *(&__src[0] + 1);
          v21 = v77;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v33;
          (*(v4 + 8))(v84, v83);
          swift_storeEnumTagMultiPayload(v21, v10, 1);
          goto LABEL_30;
        }

        goto LABEL_38;
      }

      _s11TabularData9AnyColumnVSgWOhTm_0(&v53, &demangling cache variable for type metadata for Any?);
      v3 = v85;
      v10 = v82;
      goto LABEL_37;
    }

    if (!(v16 ^ 0x5F64656C6562616CLL | *(&v16 + 1) ^ 0xED000073656C6966) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      *(&v16 + 1);
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      v3 = v85;
      v10 = v82;
      if (v56)
      {
        v34 = swift_dynamicCast(__src, &v53, v78, &type metadata for String, 6);
        v4 = v86;
        if (v34)
        {
          v35 = *(&__src[0] + 1);
          v21 = v77;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v35;
          (*(v4 + 8))(v84, v83);
          swift_storeEnumTagMultiPayload(v21, v10, 2);
          goto LABEL_30;
        }

        goto LABEL_38;
      }

      _s11TabularData9AnyColumnVSgWOhTm_0(&v53, &demangling cache variable for type metadata for Any?);
LABEL_37:
      v4 = v86;
LABEL_38:
      v29 = v83;
      v28 = v84;
      goto LABEL_21;
    }

    if (!(v16 ^ 0xD000000000000016 | *(&v16 + 1) ^ (&aLabeledKeypoin[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aLabeledKeypoin[-32] | 0x8000000000000000, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      *(&v16 + 1);
      (*(v86 + 16))(&v51, v84, v83);
      LOBYTE(__src[0]) = 1;
      *(&__src[0] + 1) = 44;
      __src[1] = 0xE100000000000000;
      *&__src[2] = 0xE000000000000000;
      *(&__src[2] + 1) = 92;
      *&__src[3] = 0xE100000000000000;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 34;
      *(&__src[4] + 1) = 0xE100000000000000;
      LOBYTE(__src[5]) = 1;
      *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&__src[6] = 10;
      *(&__src[6] + 1) = 0xE100000000000000;
      __src[7] = 0;
      LOBYTE(__src[8]) = 1;
      *(&__src[8] + 1) = 0;
      LOBYTE(__dst[0]) = 1;
      LOBYTE(v53) = 1;
      v54 = 44;
      v55 = 0xE100000000000000;
      v56 = 0;
      v57 = 0xE000000000000000;
      v58 = 92;
      v59 = 0xE100000000000000;
      v60 = 1;
      v61 = 34;
      v62 = 0xE100000000000000;
      v63 = 1;
      v64 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v65 = 10;
      v66 = 0xE100000000000000;
      v67 = 0;
      v68 = 1;
      v69 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v53, 0xE000000000000000);
      memcpy(__dst, __src, sizeof(__dst));
      MLDataTable.init(contentsOf:options:)(&v51, __dst);
      v75 = v79;
      LOBYTE(v76) = BYTE8(v79);
      static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v75, 0x746E696F7079656BLL, 0xE900000000000073);
      v10 = v82;
      specialized Dictionary.subscript.getter(0xD000000000000011, ("labeled_keypoints_data" + 0x8000000000000000), a1);
      v39 = v86;
      if (__dst[3])
      {
        if (swift_dynamicCast(&v79, __dst, v78, &type metadata for String, 6))
        {
          v40 = v79;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v79, __dst, v78, &type metadata for String, 6))
            {
              v41 = *(&v79 + 1);
              v80 = v79;
              specialized Dictionary.subscript.getter(0x5F65727574616566, 0xEE006E6D756C6F63, a1);
              a1;
              (*(v86 + 8))(v84, v83);
              if (__dst[3])
              {
                if (swift_dynamicCast(&v79, __dst, v78, &type metadata for String, 6))
                {
                  v42 = v79;
                  v81 = v76;
                  v21 = v77;
                  *v77 = v75;
                  *(v21 + 8) = v81;
                  *(v21 + 16) = v40;
                  *(v21 + 32) = v80;
                  *(v21 + 40) = v41;
                  *(v21 + 48) = v42;
                  v50 = 3;
LABEL_73:
                  v27 = v50;
                  v25 = v21;
                  v10 = v82;
                  v26 = v82;
                  goto LABEL_15;
                }

                v41;
                *(&v40 + 1);
              }

              else
              {
                v41;
                *(&v40 + 1);
                _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
              }

              v3 = v85;
              v10 = v82;
LABEL_87:
              outlined consume of Result<_DataTable, Error>(v75, v76);
              goto LABEL_22;
            }

            a1;
            *(&v40 + 1);
          }

          else
          {
            a1;
            *(&v40 + 1);
            _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
          }

          v3 = v85;
          (*(v86 + 8))(v84, v83);
          goto LABEL_87;
        }

        a1;
      }

      else
      {
        a1;
        _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
      }

      v3 = v85;
      (*(v39 + 8))(v84, v83);
      goto LABEL_87;
    }

    v43 = &aLabeledImageDa[-32] | 0x8000000000000000;
    v44 = v86;
    if (v16 - __PAIR128__(v43, 0xD000000000000012) == 0)
    {
      *(&v16 + 1);
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, v43, v16, *(&v16 + 1), 0);
      *(&v16 + 1);
      if ((v45 & 1) == 0)
      {
        (*(v44 + 8))(v84, v83);
        goto LABEL_78;
      }
    }

    v46 = v80;
    (*(v44 + 16))(v80, v84, v83);
    LOBYTE(__src[0]) = 1;
    *(&__src[0] + 1) = 44;
    __src[1] = 0xE100000000000000;
    *&__src[2] = 0xE000000000000000;
    *(&__src[2] + 1) = 92;
    *&__src[3] = 0xE100000000000000;
    BYTE8(__src[3]) = 1;
    *&__src[4] = 34;
    *(&__src[4] + 1) = 0xE100000000000000;
    LOBYTE(__src[5]) = 1;
    *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    *&__src[6] = 10;
    *(&__src[6] + 1) = 0xE100000000000000;
    __src[7] = 0;
    LOBYTE(__src[8]) = 1;
    *(&__src[8] + 1) = 0;
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v53) = 1;
    v54 = 44;
    v55 = 0xE100000000000000;
    v56 = 0;
    v57 = 0xE000000000000000;
    v58 = 92;
    v59 = 0xE100000000000000;
    v60 = 1;
    v61 = 34;
    v62 = 0xE100000000000000;
    v63 = 1;
    v64 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v65 = 10;
    v66 = 0xE100000000000000;
    v67 = 0;
    v68 = 1;
    v69 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(&v53, 0xE000000000000000);
    memcpy(__dst, __src, sizeof(__dst));
    MLDataTable.init(contentsOf:options:)(v46, __dst);
    v47 = v79;
    v48 = BYTE8(v79);
    specialized Dictionary.subscript.getter(0x6F635F6567616D69, 0xEC0000006E6D756CLL, a1);
    if (__dst[3])
    {
      if (swift_dynamicCast(&v79, __dst, v78, &type metadata for String, 6))
      {
        v80 = *(&v79 + 1);
        v74 = v79;
        specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
        a1;
        (*(v86 + 8))(v84, v83);
        if (!__dst[3])
        {
          outlined consume of Result<_DataTable, Error>(v47, v48);
          v80;
          _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
          goto LABEL_48;
        }

        if (swift_dynamicCast(&v79, __dst, v78, &type metadata for String, 6))
        {
          v49 = v79;
          v21 = v77;
          *v77 = v47;
          *(v21 + 8) = v48 & 1;
          *(v21 + 16) = v74;
          *(v21 + 24) = v80;
          *(v21 + 32) = v49;
          v50 = 4;
          goto LABEL_73;
        }

        outlined consume of Result<_DataTable, Error>(v47, v48);
        a1 = v80;
LABEL_78:
        a1;
        goto LABEL_48;
      }

      outlined consume of Result<_DataTable, Error>(v47, v48);
      a1;
    }

    else
    {
      outlined consume of Result<_DataTable, Error>(v47, v48);
      a1;
      _s11TabularData9AnyColumnVSgWOhTm_0(__dst, &demangling cache variable for type metadata for Any?);
    }

    v37 = v84;
    v38 = v83;
    v36 = v86;
LABEL_47:
    (*(v36 + 8))(v37, v38);
LABEL_48:
    v30 = 1;
    v3 = v85;
    goto LABEL_49;
  }

  *(&v16 + 1);
  v3 = v85;
  specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
  v10 = v82;
  if (v56)
  {
    if (swift_dynamicCast(__src, &v53, v78, &type metadata for String, 6))
    {
      v17 = __src[0];
      specialized Dictionary.subscript.getter(0x697461746F6E6E61, 0xEF656C69665F6E6FLL, a1);
      if (v56)
      {
        if (swift_dynamicCast(__src, &v53, v78, &type metadata for String, 6))
        {
          v18 = *(&__src[0] + 1);
          v74 = *&__src[0];
          specialized Dictionary.subscript.getter(0x6F635F6567616D69, 0xEC0000006E6D756CLL, a1);
          if (v56)
          {
            v80 = v18;
            if (swift_dynamicCast(__src, &v53, v78, &type metadata for String, 6))
            {
              v19 = *(&__src[0] + 1);
              v71 = *&__src[0];
              specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
              a1;
              if (v56)
              {
                if (swift_dynamicCast(__src, &v53, v78, &type metadata for String, 6))
                {
                  v78 = __src[0];
                  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
                  v21 = v77;
                  v22 = v77 + v20[12];
                  v72 = v19;
                  v23 = v20[16];
                  v73 = v20[20];
                  URL.init(fileURLWithPath:)(v17, *(&v17 + 1));
                  *(&v17 + 1);
                  v24 = v80;
                  URL.init(fileURLWithPath:)(v74, v80);
                  v24;
                  (*(v86 + 8))(v84, v83);
                  *(v21 + v23) = v71;
                  *(v21 + v23 + 8) = v72;
                  *(v21 + v73) = v78;
                  v25 = v21;
                  v10 = v82;
                  v26 = v82;
                  v27 = 0;
LABEL_15:
                  swift_storeEnumTagMultiPayload(v25, v26, v27);
                  v3 = v85;
LABEL_30:
                  outlined init with take of MLClassifierMetrics(v21, v3, type metadata accessor for MLHandPoseClassifier.DataSource);
                  v30 = 0;
                  return __swift_storeEnumTagSinglePayload(v3, v30, 1, v10);
                }

                v19;
                v80;
                *(&v17 + 1);
              }

              else
              {
                v19;
                v80;
                *(&v17 + 1);
                _s11TabularData9AnyColumnVSgWOhTm_0(&v53, &demangling cache variable for type metadata for Any?);
              }

              v3 = v85;
              goto LABEL_35;
            }

            a1;
            v80;
            *(&v17 + 1);
          }

          else
          {
            a1;
            v18;
            *(&v17 + 1);
            _s11TabularData9AnyColumnVSgWOhTm_0(&v53, &demangling cache variable for type metadata for Any?);
          }

          v36 = v86;
          v37 = v84;
          v38 = v83;
          goto LABEL_47;
        }

        a1;
        *(&v17 + 1);
      }

      else
      {
        a1;
        *(&v17 + 1);
        _s11TabularData9AnyColumnVSgWOhTm_0(&v53, &demangling cache variable for type metadata for Any?);
      }

LABEL_35:
      (*(v86 + 8))(v84, v83);
      v30 = 1;
LABEL_49:
      v10 = v82;
      return __swift_storeEnumTagSinglePayload(v3, v30, 1, v10);
    }

    a1;
  }

  else
  {
    a1;
    _s11TabularData9AnyColumnVSgWOhTm_0(&v53, &demangling cache variable for type metadata for Any?);
  }

  (*(v86 + 8))(v84, v83);
LABEL_22:
  v30 = 1;
  return __swift_storeEnumTagSinglePayload(v3, v30, 1, v10);
}

uint64_t MLHandPoseClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v52 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v47 = &v37;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v51 = v3;
  outlined init with copy of Any(*(a1 + 56) + 32 * v19, &v41);
  v49 = &type metadata for Any + 8;
  if (!swift_dynamicCast(&v45, &v41, &type metadata for Any + 8, &type metadata for String, 6))
  {
    v3 = v51;
    goto LABEL_9;
  }

  v21 = v46;
  if (v45 ^ 0x656E6F6E | v46 ^ 0xE400000000000000)
  {
    v48 = v45;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)(1701736302, 0xE400000000000000, v45, v46, 0) & 1) == 0)
    {
      if (!(v48 ^ 0x756F735F61746164 | v21 ^ 0xEB00000000656372) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x756F735F61746164, 0xEB00000000656372, v48, v21, 0) & 1) != 0)
      {
        v21;
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v27, 6))
          {
            v49 = v45;
            v28 = v39;
            (*(v5 + 16))(v39, v50, v4);
            v29 = v38;
            MLHandPoseClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              _s11TabularData9AnyColumnVSgWOhTm_0(v30, &demangling cache variable for type metadata for MLHandPoseClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLHandPoseClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLHandPoseClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          _s11TabularData9AnyColumnVSgWOhTm_0(&v41, &demangling cache variable for type metadata for Any?);
        }

        v3 = v51;
        (*(v5 + 8))(v50, v4);
        goto LABEL_10;
      }

      if (!(v48 ^ 0x74696C7073 | v21 ^ 0xE500000000000000))
      {
        v21;
        v3 = v51;
        goto LABEL_24;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)(0x74696C7073, 0xE500000000000000, v48, v21, 0);
      v21;
      v3 = v51;
      if (v31)
      {
LABEL_24:
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v32, 6))
          {
            MLSplitStrategy.init(dictionary:)(v45);
            (*(v5 + 8))(v50, v4);
            if (!v43)
            {
              v33 = v42;
              v24 = v47;
              *v47 = v41;
              *(v24 + 16) = v33;
              *(v24 + 17) = HIBYTE(v33) & 1;
              v22 = 0;
              goto LABEL_29;
            }

LABEL_10:
            v25 = 1;
LABEL_11:
            v23 = v52;
            return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
          }
        }

        else
        {
          _s11TabularData9AnyColumnVSgWOhTm_0(&v41, &demangling cache variable for type metadata for Any?);
        }

        v23 = v52;
        (*(v5 + 8))(v50, v4);
        v25 = 1;
        return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
      }

LABEL_9:
      (*(v5 + 8))(v50, v4);
      a1;
      goto LABEL_10;
    }
  }

  (*(v5 + 8))(v50, v4);
  a1;
  v21;
  v22 = 2;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

uint64_t MLHandPoseClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x687469726F676C61, 0xE90000000000006DLL), (v4 & 1) == 0))
  {
    v10 = 0;
    v9 = 0;
    a1;
    goto LABEL_8;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, &v9);
  a1;
  if (!*(&v10 + 1))
  {
LABEL_8:
    result = _s11TabularData9AnyColumnVSgWOhTm_0(&v9, &demangling cache variable for type metadata for Any?);
    goto LABEL_9;
  }

  result = swift_dynamicCast(&v11, &v9, &type metadata for Any + 8, &type metadata for String, 6);
  if (!result)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v6 = v12;
  if (v11 ^ 0x6E6367 | v12 ^ 0xE300000000000000)
  {
    v7 = 0;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(7234407, 0xE300000000000000, v11, v12, 0);
    result = v6;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = v12;
  v7 = 0;
LABEL_10:
  *v2 = v7;
  return result;
}

NSURL *MLHandPoseClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1, __m128 a2)
{
  v69 = v2;
  v4 = v3;
  v68 = a1;
  v5 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v63 = v56;
  v59 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v59 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v60 = v56;
  v74 = type metadata accessor for URL(0);
  v64 = *(v74 - 8);
  v11 = *(v64 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v67 = v56;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v58 = v56;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v57 = v56;
  v70 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v18 = *(*(v70 - 1) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v66 = v56;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v23, v77);
  *(inited + 16) = 6;
  *(inited + 24) = 12;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v25 = MLHandPoseClassifier.DataSource.dictionary.getter();
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 72) = v71;
  *(inited + 48) = v25;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v26 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v61 = v4 + v26[5];
  outlined init with copy of MLTrainingSessionParameters(v61, v56, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v73 = *(v4 + v26[6]);
  v72 = *(v4 + v26[7]);
  v27 = v26[8];
  v65 = v4;
  v62 = v27;
  v28 = *(v4 + v27);
  *&v56[v70[7]] = v28;
  v29 = MLHandPoseClassifier.ModelParameters.ValidationData.dictionary.getter();
  outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v30 = v71;
  *(inited + 120) = v71;
  *(inited + 96) = v29;
  *(inited + 128) = 0x69735F6863746162;
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v73;
  strcpy((inited + 176), "max_iterations");
  *(inited + 191) = -18;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v72;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = "Empty training input." + 0x8000000000000000;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v28;
  *(inited + 272) = 0x687469726F676C61;
  *(inited + 280) = 0xE90000000000006DLL;
  v31 = MLHandActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter();
  *(inited + 312) = v30;
  *(inited + 288) = v31;
  v32 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v33 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v32;
  v75 = 0;
  v35 = [v33 dataWithPropertyList:isa format:200 options:0 error:&v75];
  v36 = v35;

  v37 = v75;
  if (v36)
  {
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v36);
    v40 = v39;

    v41 = v57;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    v42 = v69;
    Data.write(to:options:)(v41, 0, v38, v40);
    if (v42)
    {
      (*(v64 + 8))(v41, v74);
      v43 = v38;
      v44 = v40;
    }

    else
    {
      v73 = v38;
      v72 = v40;
      v71 = *(v64 + 8);
      *a2.i64 = v71(v41, v74);
      MLHandPoseClassifier.DataSource.table.getter(a2);
      v46 = v76;
      if (v76 != -1)
      {
        v69 = v75;
        v76 &= 1u;
        v47 = v58;
        URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
        MLDataTable.write(to:)(v47);
        v71(v47, v74);
        outlined consume of MLDataTable?(v69, v46);
      }

      v48 = v66;
      outlined init with copy of MLTrainingSessionParameters(v61, v66, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      *(v48 + v70[7]) = *(v65 + v62);
      v49 = v48;
      v50 = v60;
      outlined init with copy of MLTrainingSessionParameters(v49, v60, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      if (swift_getEnumCaseMultiPayload(v50, v59) == 1)
      {
        v51 = v63;
        outlined init with take of MLClassifierMetrics(v50, v63, type metadata accessor for MLHandPoseClassifier.DataSource);
        MLHandPoseClassifier.DataSource.table.getter(a2);
        outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLHandPoseClassifier.DataSource);
        v52 = v76;
        v53 = v75;
      }

      else
      {
        v52 = -1;
        v53 = 0;
      }

      v54 = v67;
      outlined destroy of MLActivityClassifier.ModelParameters(v66, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      if (v52 != -1)
      {
        v75 = v53;
        v76 = v52 & 1;
        v70 = v53;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v54);
        v71(v54, v74);
        outlined consume of Data._Representation(v73, v72);
        outlined consume of MLDataTable?(v70, v52);
        return __stack_chk_guard;
      }

      v43 = v73;
      v44 = v72;
    }

    outlined consume of Data._Representation(v43, v44);
  }

  else
  {
    v45 = v37;
    _convertNSErrorToError(_:)(v37);

    swift_willThrow(v45, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

uint64_t MLHandPoseClassifier.DataSource.dictionary.getter()
{
  v1 = v0;
  v68 = type metadata accessor for URL(0);
  v2 = *(v68 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v67 = &v51;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v8 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(v1, &v51, type metadata accessor for MLHandPoseClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v51, v8))
  {
    case 0u:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v13 = &v51 + v12[12];
      v64 = *(&v51 + v12[16]);
      v63 = *(&v51 + v12[20]);
      v65 = v2;
      v14 = *(v2 + 32);
      v66 = &v51;
      v15 = v68;
      v14(&v51, &v51, v68);
      v14(v67, v13, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v16, &v51);
      *(inited + 16) = 5;
      *(inited + 24) = 10;
      *(inited + 32) = 1684957547;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = 0x726F746365726964;
      *(inited + 56) = 0xE900000000000079;
      *(inited + 80) = 1752457584;
      *(inited + 88) = 0xE400000000000000;
      v18 = URL.path.getter(v16);
      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v18;
      *(inited + 104) = v19;
      *(inited + 128) = 0x697461746F6E6E61;
      *(inited + 136) = 0xEF656C69665F6E6FLL;
      *(inited + 168) = v15;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
      v21 = v67;
      v22 = v65;
      (*(v65 + 16))(boxed_opaque_existential_0, v67, v15);
      strcpy((inited + 176), "image_column");
      *(inited + 189) = 0;
      *(inited + 190) = -5120;
      *(inited + 216) = &type metadata for String;
      *(inited + 192) = v64;
      strcpy((inited + 224), "label_column");
      *(inited + 237) = 0;
      *(inited + 238) = -5120;
      *(inited + 264) = &type metadata for String;
      *(inited + 240) = v63;
      v23 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      v24 = *(v22 + 8);
      v24(v21, v15);
      v24(v66, v15);
      return v23;
    case 1u:
      (*(v2 + 32))(&v51, &v51, v68);
      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v30 = swift_initStackObject(v29, v62);
      v30[2] = 2;
      v30[3] = 4;
      v30[4] = 1684957547;
      v30[5] = 0xE400000000000000;
      v31 = "session_id_column" + 0x8000000000000000;
      v30[9] = &type metadata for String;
      v30[6] = 0xD000000000000013;
      goto LABEL_7;
    case 2u:
      (*(v2 + 32))(&v51, &v51, v68);
      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v30 = swift_initStackObject(v29, v61);
      v30[2] = 2;
      v30[3] = 4;
      v30[4] = 1684957547;
      v30[5] = 0xE400000000000000;
      v30[9] = &type metadata for String;
      v30[6] = 0x5F64656C6562616CLL;
      v31 = 0xED000073656C6966;
LABEL_7:
      v30[7] = v31;
      v30[10] = 1752457584;
      v30[11] = 0xE400000000000000;
      v36 = URL.path.getter(v29);
      v30[15] = &type metadata for String;
      v30[12] = v36;
      v30[13] = v37;
      v23 = Dictionary.init(dictionaryLiteral:)(v30, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      (*(v2 + 8))(&v51, v68);
      return v23;
    case 3u:
      v32 = v53;
      v33 = v54;
      v34 = v55;
      v35 = v56;
      v68 = v57;
      v67 = v58;
      outlined consume of Result<_DataTable, Error>(v51, v52);
      goto LABEL_9;
    case 4u:
      v25 = v53;
      v26 = v54;
      v27 = v55;
      v28 = v56;
      outlined consume of Result<_DataTable, Error>(v51, v52);
      goto LABEL_11;
    case 5u:
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v39 = v38[12];
      v32 = *(&v51 + v39);
      v33 = *(&v51 + v39 + 8);
      v40 = v38[16];
      v34 = *(&v51 + v40);
      v35 = *(&v51 + v40 + 8);
      v41 = v38[20];
      v68 = *(&v51 + v41);
      v67 = *(&v51 + v41 + 8);
      v42 = type metadata accessor for DataFrame(0);
      (*(*(v42 - 8) + 8))(&v51, v42);
LABEL_9:
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v44 = swift_initStackObject(v43, v59);
      *(v44 + 16) = 4;
      *(v44 + 24) = 8;
      *(v44 + 32) = 1684957547;
      *(v44 + 40) = 0xE400000000000000;
      *(v44 + 72) = &type metadata for String;
      *(v44 + 48) = 0xD000000000000016;
      *(v44 + 56) = "start_time_column" + 0x8000000000000000;
      *(v44 + 80) = 0xD000000000000011;
      *(v44 + 88) = "labeled_keypoints_data" + 0x8000000000000000;
      *(v44 + 120) = &type metadata for String;
      *(v44 + 96) = v32;
      *(v44 + 104) = v33;
      strcpy((v44 + 128), "label_column");
      *(v44 + 141) = 0;
      *(v44 + 142) = -5120;
      *(v44 + 168) = &type metadata for String;
      *(v44 + 144) = v34;
      *(v44 + 152) = v35;
      strcpy((v44 + 176), "feature_column");
      *(v44 + 191) = -18;
      *(v44 + 216) = &type metadata for String;
      *(v44 + 192) = v68;
      *(v44 + 200) = v67;
      break;
    case 6u:
      v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v46 = *(v45 + 48);
      v25 = *(&v51 + v46);
      v26 = *(&v51 + v46 + 8);
      v47 = *(v45 + 64);
      v27 = *(&v51 + v47);
      v28 = *(&v51 + v47 + 8);
      v48 = type metadata accessor for DataFrame(0);
      (*(*(v48 - 8) + 8))(&v51, v48);
LABEL_11:
      v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v44 = swift_initStackObject(v49, v60);
      *(v44 + 16) = 3;
      *(v44 + 24) = 6;
      *(v44 + 32) = 1684957547;
      *(v44 + 40) = 0xE400000000000000;
      *(v44 + 72) = &type metadata for String;
      *(v44 + 48) = 0xD000000000000012;
      *(v44 + 56) = "o load training data." + 0x8000000000000000;
      strcpy((v44 + 80), "image_column");
      *(v44 + 93) = 0;
      *(v44 + 94) = -5120;
      *(v44 + 120) = &type metadata for String;
      *(v44 + 96) = v25;
      *(v44 + 104) = v26;
      strcpy((v44 + 128), "label_column");
      *(v44 + 141) = 0;
      *(v44 + 142) = -5120;
      *(v44 + 168) = &type metadata for String;
      *(v44 + 144) = v27;
      *(v44 + 152) = v28;
      break;
  }

  return Dictionary.init(dictionaryLiteral:)(v44, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t MLHandPoseClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v0, &v23, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v23, v4);
  if (!EnumCaseMultiPayload)
  {
    v13 = v24;
    v14 = v25;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v31 = v23;
    inited = swift_initStackObject(v15, &v23);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x74696C7073;
    inited[7] = 0xE500000000000000;
    inited[10] = 1635017060;
    inited[11] = 0xE400000000000000;
    v28 = v31;
    v29 = v13;
    v30 = v14;
    v17 = MLSplitStrategy.dictionary.getter();
    inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    inited[12] = v17;
    v18 = &type metadata for Any + 8;
    v19 = inited;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v21 = swift_initStackObject(v20, v27);
    v21[2] = 1;
    v21[3] = 2;
    v21[4] = 1684957547;
    v21[5] = 0xE400000000000000;
    v21[9] = &type metadata for String;
    v21[6] = 1701736302;
    v21[7] = 0xE400000000000000;
    v18 = &type metadata for Any + 8;
    v19 = v21;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLHandPoseClassifier.DataSource);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v10 = swift_initStackObject(v9, v26);
  v10[2] = 2;
  v10[3] = 4;
  v10[4] = 1684957547;
  v10[5] = 0xE400000000000000;
  v10[9] = &type metadata for String;
  v10[6] = 0x756F735F61746164;
  v10[7] = 0xEB00000000656372;
  v10[10] = 1635017060;
  v10[11] = 0xE400000000000000;
  v11 = MLHandPoseClassifier.DataSource.dictionary.getter();
  v10[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  v10[12] = v11;
  v12 = Dictionary.init(dictionaryLiteral:)(v10, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  outlined destroy of MLActivityClassifier.ModelParameters(&v23, type metadata accessor for MLHandPoseClassifier.DataSource);
  return v12;
}

void *MLHandPoseClassifier.DataSource.table.getter(__m128 a1)
{
  v85 = v2;
  v90 = v1;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v72 = &v70;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v82 = &v70;
  v71 = type metadata accessor for AnyColumn(0);
  v76 = *(v71 - 8);
  v10 = *(v76 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v78 = &v70;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v80 = &v70;
  v15 = type metadata accessor for DataFrame(0);
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v81 = &v70;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v87 = &v70;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = alloca(v16);
  v24 = alloca(v16);
  v86 = &v70;
  v25 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  outlined init with copy of MLTrainingSessionParameters(v85, &v70, type metadata accessor for MLHandPoseClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v70, v25))
  {
    case 0u:
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v35 = &v70 + v34[12];
      *(&v70 + v34[16] + 8);
      *(&v70 + v34[20] + 8);
      v36 = type metadata accessor for URL(0);
      v37 = *(*(v36 - 8) + 8);
      v37(v35, v36);
      v37(&v70, v36);
      goto LABEL_11;
    case 1u:
    case 2u:
      v29 = type metadata accessor for URL(0);
      (*(*(v29 - 8) + 8))(&v70, v29);
LABEL_11:
      result = v90;
      *v90 = 0;
      *(result + 8) = -1;
      return result;
    case 3u:
      v38 = v70;
      v39 = v71;
      v40 = v75;
      v41 = v77;
      v73;
      v40;
      v41;
      v88 = v38;
      v89 = v39 & 1;
      outlined copy of Result<_DataTable, Error>(v38, v39);
      static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v88, 0x746E696F7079656BLL, 0xE900000000000073);
      outlined consume of Result<_DataTable, Error>(v38, v39);
      goto LABEL_12;
    case 4u:
      v30 = v70;
      v31 = v71;
      v32 = v75;
      v73;
      v32;
      result = v90;
      *v90 = v30;
      *(result + 8) = v31;
      return result;
    case 5u:
      v81 = &v70;
      v79 = v3;
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v70 + v42[12] + 8);
      *(&v70 + v42[16] + 8);
      v43 = v42[20];
      v44 = *(&v70 + v43);
      v85 = *(&v70 + v43 + 8);
      v87 = v15;
      v45 = v15;
      v46 = v84;
      (*(v84 + 32))(v86, &v70, v45);
      v47 = v80;
      v83 = v44;
      v48 = v44;
      v49 = v85;
      DataFrame.subscript.getter(v48, v85);
      v50 = AnyColumn.wrappedElementType.getter();
      v51 = v47;
      v52 = *(v76 + 8);
      v53 = v71;
      v52(v51, v71);
      if (v50 == &type metadata for String)
      {
        v73 = v52;
        v61 = v72;
        DataFrame.subscript.getter(v83, v49, &type metadata for String);
        Column<A>.parseAsJSONArrays()();
        (*(v79 + 8))(v61, v77);
        v62 = v82;
        __swift_storeEnumTagSinglePayload(v82, 0, 1, v53);
        v63 = v78;
        v64 = v62;
        v65 = v76;
        (*(v76 + 32))(v78, v64, v53);
        (*(v65 + 16))(v80, v63, v53);
        v49;
        v55 = v86;
        DataFrame.subscript.setter(v80, v83, v49);
        v73(v78, v53);
        v56 = v87;
        v54 = v84;
      }

      else
      {
        v54 = v46;
        v55 = v86;
        v56 = v87;
      }

      v66 = v81;
      *a1.i64 = (*(v54 + 16))(v81, v55, v56);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v66, 0, a1);
      v88 = v74;
      v89 = v75;
      v67 = v85;
      static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v88, v83, v85);
      (*(v54 + 8))(v55, v56);
      v67;
      goto LABEL_12;
    case 6u:
      v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *(&v70 + *(v57 + 48) + 8);
      *(&v70 + *(v57 + 64) + 8);
      v58 = v87;
      v59 = v84;
      (*(v84 + 32))(v87, &v70, v15);
      v60 = v81;
      *a1.i64 = (*(v59 + 16))(v81, v58, v15);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v60, 0, a1);
      (*(v59 + 8))(v58, v15);
LABEL_12:
      result = v88;
      v68 = v89;
      v69 = v90;
      *v90 = v88;
      *(v69 + 8) = v68;
      return result;
    case 7u:
      JUMPOUT(0x8210CLL);
  }
}

uint64_t _s11TabularData9AnyColumnVSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MLObjectDetector.modelPredictions(from:)()
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNCoreMLModel, VNCoreMLModel_ptr);
  v2 = *(*v1 + 24);
  v3 = @nonobjc VNCoreMLModel.__allocating_init(for:)(v2);
  if (v0)
  {
    return v62;
  }

  v4 = v3;
  v5 = objc_allocWithZone(VNCoreMLRequest);
  v60 = v4;
  v6 = [v5 initWithModel:v4];
  v7 = objc_allocWithZone(VNSequenceRequestHandler);
  v61 = [v7 init];
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v9 = swift_allocObject(v8, 40, 7);
  v9[2] = 1;
  v9[3] = 3;
  v9[4] = v6;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
  v62 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = v9;
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  *&v63 = 0;
  v14 = "performRequests:onImageURL:error:";
  v15 = [v61 performRequests:isa onImageURL:v12 error:&v63];

  v16 = v63;
  if (!v15)
  {
    v49 = v63;
    _convertNSErrorToError(_:)(v16);
    v45 = v49;

    v47 = v60;
    v48 = v61;
    v17 = v62;
    goto LABEL_29;
  }

  v17 = v62;
  v18 = v62;
  v16;
  v19 = outlined bridged method (ob) of @objc VNRequest.results.getter(v18);
  if (!v19 || (v20 = v19, v21 = specialized _arrayConditionalCast<A, B>(_:)(v19), v20, !v21))
  {
    v45 = &type metadata for MLCreateError;
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    *v46 = 0xD000000000000046;
    *(v46 + 8) = "e Classification algorithm." + 0x8000000000000000;
    *(v46 + 16) = 0;
    *(v46 + 32) = 0;
    *(v46 + 48) = 0;
    v47 = v60;
    v48 = v61;
LABEL_29:
    swift_willThrow(v45, v14);

    return v62;
  }

  v57 = specialized Array._getCount()(v21);
  if (v57 < 0)
  {
    BUG();
  }

  v59 = v18;
  if (v57)
  {
    v62 = _swiftEmptyArrayStorage;
    v22 = 0;
    v58 = v21;
    do
    {
      if ((v21 & 0xC000000000000003) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)(v22, v21);
      }

      else
      {
        v23 = *(v21 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = [v23 labels];
      v26 = v25;

      v27 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNClassificationObservation, VNClassificationObservation_ptr);
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v26, v27);

      if ((v28 & 0xC000000000000003) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v28);
      }

      else
      {
        if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v29 = *(v28 + 32);
      }

      v30 = v29;
      v28;
      v31 = [v30 identifier];
      v32 = v31;

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)(v32);
      v56 = v33;

      v21 = v58;
      if ((v58 & 0xC000000000000003) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)(v22, v58);
      }

      else
      {
        v34 = *(v58 + 8 * v22 + 32);
      }

      v35 = v34;
      objc_msgSend_stret(&v63, v34, "boundingBox");
      v51 = v63;
      v36 = v64[0];
      v53 = *v64;

      if ((v58 & 0xC000000000000003) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)(v22, v58);
      }

      else
      {
        v37 = *(v58 + 8 * v22 + 32);
      }

      v42 = v37;
      [v37 confidence];

      if (!swift_isUniquelyReferenced_nonNull_native(v62))
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
      }

      v43 = v62[2];
      if (v62[3] >> 1 <= v43)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62[3] >= 2uLL, v43 + 1, 1, v62);
      }

      ++v22;
      v62[2] = v43 + 1;
      v44 = 7 * v43;
      v62[v44 + 4] = v55;
      v62[v44 + 5] = v56;
      *&v62[v44 + 6] = v52;
      *&v62[v44 + 8] = v54;
      *&v62[v44 + 10] = v36;
    }

    while (v57 != v22);
  }

  else
  {
    v62 = _swiftEmptyArrayStorage;
  }

  v21;
  return v62;
}

void *closure #1 in MLObjectDetector.predictions(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3;
  result = MLObjectDetector.modelPredictions(from:)();
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *v6 = result;
  }

  return result;
}

uint64_t MLCheckpoint.url.getter()
{
  v2 = v0;
  v3 = type metadata accessor for URL(0);
  return (*(*(v3 - 8) + 16))(v2, v1, v3);
}

char MLCheckpoint.phase.getter()
{
  v2 = v0;
  result = *(v1 + *(type metadata accessor for MLCheckpoint(0) + 20));
  *v2 = result;
  return result;
}

uint64_t type metadata accessor for MLCheckpoint(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLCheckpoint;
  if (!type metadata singleton initialization cache for MLCheckpoint)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLCheckpoint);
  }

  return result;
}

uint64_t MLCheckpoint.phase.setter(char *a1)
{
  v2 = *a1;
  result = *(type metadata accessor for MLCheckpoint(0) + 20);
  *(v1 + result) = v2;
  return result;
}

uint64_t MLCheckpoint.iteration.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLCheckpoint(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLCheckpoint.date.getter()
{
  v2 = v0;
  v3 = v1 + *(type metadata accessor for MLCheckpoint(0) + 28);
  v4 = type metadata accessor for Date(0);
  return (*(*(v4 - 8) + 16))(v2, v3, v4);
}

uint64_t MLCheckpoint.date.setter(uint64_t a1)
{
  v2 = v1 + *(type metadata accessor for MLCheckpoint(0) + 28);
  v3 = type metadata accessor for Date(0);
  return (*(*(v3 - 8) + 40))(v2, a1, v3);
}

uint64_t MLCheckpoint.metrics.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLCheckpoint(0) + 32);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

CreateML::MLCheckpoint::CodingKeys_optional __swiftcall MLCheckpoint.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  if (stringValue._countAndFlagsBits ^ 0x6C7275 | stringValue._object ^ 0xE300000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(7107189, 0xE300000000000000, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
  {
    if (stringValue._countAndFlagsBits ^ 0x6573616870 | stringValue._object ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6573616870, 0xE500000000000000, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
    {
      if (stringValue._countAndFlagsBits ^ 0x6F69746172657469 | stringValue._object ^ 0xE90000000000006ELL && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6F69746172657469, 0xE90000000000006ELL, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
      {
        if (stringValue._countAndFlagsBits ^ 0x65746164 | stringValue._object ^ 0xE400000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(1702125924, 0xE400000000000000, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
        {
          if (stringValue._countAndFlagsBits ^ 0x697274654D6C7275 | stringValue._object ^ 0xEA00000000007363 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x697274654D6C7275, 0xEA00000000007363, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
          {
            if (stringValue._countAndFlagsBits ^ 0x7363697274656DLL | stringValue._object ^ 0xE700000000000000)
            {
              v2 = _stringCompareWithSmolCheck(_:_:expecting:)(0x7363697274656DLL, 0xE700000000000000, stringValue._countAndFlagsBits, stringValue._object, 0);
              stringValue._object, 0xE700000000000000;
              return (6 - (v2 & 1));
            }

            else
            {
              stringValue._object, 0xE700000000000000;
              return 5;
            }
          }

          else
          {
            stringValue._object, 0xEA00000000007363;
            return 4;
          }
        }

        else
        {
          stringValue._object, 0xE400000000000000;
          return 3;
        }
      }

      else
      {
        stringValue._object, 0xE90000000000006ELL;
        return 2;
      }
    }

    else
    {
      stringValue._object, 0xE500000000000000;
      return 1;
    }
  }

  else
  {
    stringValue._object, 0xE300000000000000;
    return 0;
  }
}

uint64_t MLCheckpoint.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 7107189;
      break;
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x697274654D6C7275;
      break;
    case 5:
      result = 0x7363697274656DLL;
      break;
  }

  return result;
}

CreateML::MLCheckpoint::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance MLCheckpoint.CodingKeys(Swift::String a1)
{
  v2 = v1;
  result.value = MLCheckpoint.CodingKeys.init(stringValue:)(a1).value;
  v2->value = result.value;
  return result;
}

uint64_t MLCheckpoint.init(from:)(void *a1)
{
  v107 = v2;
  v90 = v1;
  v91 = type metadata accessor for Date(0);
  v92 = *(v91 - 8);
  v3 = *(v92 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v93 = &v88;
  v103 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MLCheckpoint.CodingKeys>);
  v100 = *(v103 - 8);
  v6 = *(v100 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v97 = &v88;
  v89 = type metadata accessor for CodingUserInfoKey(0);
  v95 = *(v89 - 8);
  v9 = *(v95 + 8);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v98 = &v88;
  v105 = type metadata accessor for URL(0);
  v106 = *(v105 - 8);
  v15 = *(v106 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v104 = &v88;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v99 = &v88;
  v96 = type metadata accessor for MLCheckpoint(0);
  v20 = *(*(v96 - 1) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v101 = &v88;
  v23 = a1[3];
  v24 = a1[4];
  v102 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v23);
  v25 = dispatch thunk of Decoder.userInfo.getter(v23, v24);
  if (one-time initialization token for sessionDirectory != -1)
  {
    swift_once(&one-time initialization token for sessionDirectory, one-time initialization function for sessionDirectory);
  }

  v26 = v89;
  v27 = __swift_project_value_buffer(v89, static CodingUserInfoKey.sessionDirectory);
  v28 = v95;
  (*(v95 + 2))(&v88, v27, v26);
  specialized Dictionary.subscript.getter(&v88, v25);
  v25;
  v28[1](&v88, v26);
  if (!v94[3])
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v94, &demangling cache variable for type metadata for Any?);
    v29 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v105);
LABEL_29:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for URL?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, "CreateML/MLCheckpoint.swift" + 0x8000000000000000, "CreateML/MLCheckpoint.swift", 27, 2, 69, 0);
    BUG();
  }

  v29 = v98;
  v95 = &type metadata for Any + 8;
  v30 = v105;
  v31 = swift_dynamicCast(v98, v94, &type metadata for Any + 8, v105, 6);
  __swift_storeEnumTagSinglePayload(v29, v31 ^ 1u, 1, v30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  v33 = v102;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_29;
  }

  (*(v106 + 32))(v99, v29, v30);
  v34 = v33;
  v35 = v33[3];
  v36 = v34[4];
  __swift_project_boxed_opaque_existential_0Tm(v34, v35);
  v37 = lazy protocol witness table accessor for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys();
  v38 = v107;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&type metadata for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys, v37, v35, v36);
  if (v38)
  {
    (*(v106 + 8))(v99, v105);
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  LOBYTE(v94[0]) = 0;
  v39 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)(v105, v94, v103, v105, v39);
  v107 = 0;
  v41 = objc_opt_self(NSFileManager);
  v42 = [v41 defaultManager];
  v43 = v42;
  URL.path.getter(v42);
  v45 = v44;
  v46 = String._bridgeToObjectiveC()();
  v45;
  LOBYTE(v45) = [v43 fileExistsAtPath:v46];

  if (v45)
  {
    v47 = v105;
    (*(v106 + 16))(v101, v104, v105);
  }

  else
  {
    v48 = URL.path.getter(v46);
    v50 = v49;
    URL.appendingPathComponent(_:)(v48, v49);
    v50;
    v47 = v105;
  }

  v108[0] = 1;
  v51 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
  v52 = v103;
  v53 = v97;
  v54 = v107;
  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for MLPhase, v108, v103, &type metadata for MLPhase, v51);
  if (v54)
  {
    v107 = v54;
    v55 = v47;
    v56 = *(v106 + 8);
    v56(v104, v55);
    v57 = v52;
    v58 = 0;
    (*(v100 + 8))(v53, v57);
    goto LABEL_13;
  }

  *(v101 + v96[5]) = v94[0];
  LOBYTE(v94[0]) = 2;
  v59 = KeyedDecodingContainer.decode(_:forKey:)(v94, v52);
  *(v101 + v96[6]) = v59;
  LOBYTE(v94[0]) = 3;
  v60 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v61 = v91;
  KeyedDecodingContainer.decode<A>(_:forKey:)(v91, v94, v103, v91, v60);
  v107 = 0;
  (*(v92 + 32))(v101 + v96[7], v93, v61);
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : Double]);
  v108[0] = 5;
  v65 = lazy protocol witness table accessor for type [MLProgress.Metric : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [MLProgress.Metric : Double] and conformance <> [A : B], lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  v66 = v103;
  v67 = v107;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(v64, v108, v103, v64, v65);
  if (v67)
  {
    v68 = v66;
    v107 = v67;
    v69 = v106;
LABEL_23:
    v56 = *(v69 + 8);
    v55 = v105;
    v56(v104, v105);
    (*(v100 + 8))(v53, v68);
    v58 = 1;
LABEL_13:
    v62 = v102;
    v56(v99, v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v63 = v101;
    result = (v56)(v101, v55);
    if (v58)
    {
      return (*(v92 + 8))(&v63[v96[7]], v91);
    }

    return result;
  }

  v70 = v94[0];
  if (v94[0])
  {
    v98 = specialized _NativeDictionary.mapValues<A>(_:)(v94[0]);
    v107 = 0;
    v70;
  }

  else
  {
    v71 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
    v98 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, v95, v71);
    v107 = 0;
  }

  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : URL]);
  v108[0] = 4;
  v73 = lazy protocol witness table accessor for type [MLProgress.Metric : URL] and conformance <> [A : B]();
  v74 = v103;
  v53 = v97;
  v75 = v107;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(v72, v108, v103, v72, v73);
  if (v75)
  {
    v107 = v75;
    v98;
    v69 = v106;
    v68 = v74;
    goto LABEL_23;
  }

  v76 = v94[0];
  if (v94[0])
  {
    v77 = alloca(24);
    v78 = alloca(32);
    v90 = v99;
    v79 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #2 in MLCheckpoint.init(from:), &v88, v94[0]);
    v76;
    v107 = specialized _NativeDictionary.mapValues<A>(_:)(v79);
  }

  else
  {
    v80 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
    v107 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, v95, v80);
  }

  v81 = v106;
  v82 = v98;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v98);
  v94[0] = v82;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v107, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v94);
  v107 = 0;
  v84 = v94[0];
  v85 = *(v81 + 8);
  v86 = v105;
  v85(v104, v105);
  (*(v100 + 8))(v97, v103);
  v87 = v101;
  *(v101 + v96[8]) = v84;
  v85(v99, v86);
  outlined init with copy of MLCheckpoint(v87, v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  return outlined destroy of MLCheckpoint(v87);
}

uint64_t closure #2 in MLCheckpoint.init(from:)()
{
  v0 = URL.path.getter();
  v2 = v1;
  v3 = v1;
  URL.appendingPathComponent(_:)(v0, v1);
  return v2, v3;
}

uint64_t MLCheckpoint.encode(to:)(void *a1)
{
  v81 = v1;
  v80 = v2;
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MLCheckpoint.CodingKeys>);
  v77 = *(v75 - 8);
  v3 = *(v77 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v73 = &v64;
  v69 = type metadata accessor for CodingUserInfoKey(0);
  v68 = *(v69 - 8);
  v6 = *(v68 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v71 = &v64;
  v78 = type metadata accessor for URL(0);
  v79 = *(v78 - 8);
  v12 = *(v79 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v76 = &v64;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v74 = &v64;
  v17 = a1[3];
  v18 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v17);
  v19 = dispatch thunk of Encoder.userInfo.getter(v17, v18);
  if (one-time initialization token for sessionDirectory != -1)
  {
    swift_once(&one-time initialization token for sessionDirectory, one-time initialization function for sessionDirectory);
  }

  v20 = v69;
  v21 = __swift_project_value_buffer(v69, static CodingUserInfoKey.sessionDirectory);
  v22 = v68;
  (*(v68 + 16))(&v64, v21, v20);
  specialized Dictionary.subscript.getter(&v64, v19);
  v19;
  (*(v22 + 8))(&v64, v20);
  if (!v72[3])
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for Any?);
    v23 = v71;
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v78);
LABEL_17:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, &demangling cache variable for type metadata for URL?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, " specify a session directory" + 0x8000000000000000, "CreateML/MLCheckpoint.swift", 27, 2, 104, 0);
    BUG();
  }

  v23 = v71;
  v24 = v78;
  v25 = swift_dynamicCast(v71, v72, &type metadata for Any + 8, v78, 6);
  __swift_storeEnumTagSinglePayload(v23, v25 ^ 1u, 1, v24);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    goto LABEL_17;
  }

  (*(v79 + 32))(v74, v23, v24);
  v26 = v67[3];
  v27 = v67[4];
  __swift_project_boxed_opaque_existential_0Tm(v67, v26);
  v28 = lazy protocol witness table accessor for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&type metadata for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys, v28, v26, v27);
  v29 = URL.path.getter(&type metadata for MLCheckpoint.CodingKeys);
  v31 = v30;
  v72[0] = v29;
  v72[1] = v30;
  v32 = URL.path.getter(&type metadata for MLCheckpoint.CodingKeys);
  v34 = v33;
  v65 = 0;
  v70[0] = v32;
  v70[1] = v33;
  v66 = 0xE000000000000000;
  v35 = lazy protocol witness table accessor for type String and conformance String();
  v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v70, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v35, v35, v35);
  v38 = v37;
  v39 = v31;
  v40 = v78;
  v39;
  v34;
  v41 = v76;
  URL.init(fileURLWithPath:)(v36, v38);
  v38;
  LOBYTE(v72[0]) = 0;
  v42 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v43 = v75;
  v44 = v81;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v41, v72, v75, v40, v42);
  v81 = v44;
  if (v44)
  {
    v45 = *(v79 + 8);
    v45(v41, v40);
    (*(v77 + 8))(v73, v43);
    return (v45)(v74, v40);
  }

  v79 = *(v79 + 8);
  (v79)(v41, v40);
  v76 = type metadata accessor for MLCheckpoint(0);
  LOBYTE(v72[0]) = *(v80 + v76[5]);
  LOBYTE(v70[0]) = 1;
  v47 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
  v48 = v73;
  v49 = v81;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v72, v70, v43, &type metadata for MLPhase, v47);
  if (v49)
  {
    (*(v77 + 8))(v48, v43);
    return (v79)(v74, v78);
  }

  v50 = *(v80 + v76[6]);
  LOBYTE(v72[0]) = 2;
  KeyedEncodingContainer.encode(_:forKey:)(v50, v72, v43);
  v51 = v80 + v76[7];
  LOBYTE(v72[0]) = 3;
  v81 = type metadata accessor for Date(0);
  v52 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)(v51, v72, v43, v81, v52);
  v81 = *(v80 + v76[8]);
  v53 = specialized Dictionary.compactMapValues<A>(_:)(v81);
  v80 = 0;
  v72[0] = v53;
  LOBYTE(v70[0]) = 5;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : Double]);
  v55 = lazy protocol witness table accessor for type [MLProgress.Metric : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [MLProgress.Metric : Double] and conformance <> [A : B], lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  v56 = v80;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v72, v70, v43, v54, v55);
  if (v56)
  {
    (*(v77 + 8))(v48, v75);
    v53;
    return (v79)(v74, v78);
  }

  v53;
  v57 = specialized Dictionary.compactMapValues<A>(_:)(v81);
  v58 = alloca(24);
  v59 = alloca(32);
  v66 = v74;
  v60 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #3 in MLCheckpoint.encode(to:), &v64, v57);
  v81 = 0;
  v57;
  v80 = v60;
  v72[0] = v60;
  LOBYTE(v70[0]) = 4;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : URL]);
  v62 = lazy protocol witness table accessor for type [MLProgress.Metric : URL] and conformance <> [A : B]();
  v63 = v81;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v72, v70, v75, v61, v62);
  if (v63)
  {
    (*(v77 + 8))(v48, v75);

    return (v79)(v74, v78);
  }

  (*(v77 + 8))(v48, v75);

  return (v79)(v74, v78);
}

uint64_t closure #3 in MLCheckpoint.encode(to:)(uint64_t a1)
{
  v14[5] = v1;
  v2 = URL.path.getter(a1);
  v4 = v3;
  v14[2] = v2;
  v14[3] = v3;
  v5 = URL.path.getter(a1);
  v7 = v6;
  v14[0] = 0;
  v13[0] = v5;
  v13[1] = v6;
  v14[1] = 0xE000000000000000;
  v8 = lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v13, v14, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v8, v8, v8);
  v11 = v10;
  v4;
  v7;
  URL.init(fileURLWithPath:)(v9, v11);
  return v11;
}

uint64_t one-time initialization function for sessionDirectory()
{
  v7[0] = v0;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for CodingUserInfoKey?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for CodingUserInfoKey(0);
  __swift_allocate_value_buffer(v4, static CodingUserInfoKey.sessionDirectory);
  v5 = __swift_project_value_buffer(v4, static CodingUserInfoKey.sessionDirectory);
  CodingUserInfoKey.init(rawValue:)(0xD000000000000010, " specify a session directory" + 0x8000000000000000);
  if (__swift_getEnumTagSinglePayload(v7, 1, v4) == 1)
  {
    BUG();
  }

  return (*(*(v4 - 8) + 32))(v5, v7, v4);
}

uint64_t lazy protocol witness table accessor for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys);
    lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys);
    lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys);
    lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCheckpoint.CodingKeys, &type metadata for MLCheckpoint.CodingKeys);
    lazy protocol witness table cache variable for type MLCheckpoint.CodingKeys and conformance MLCheckpoint.CodingKeys = result;
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v39 = a5;
  v40 = a4;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3);
  v36 = v28;
  v35 = v27[4];
  v34 = v27[3];
  v33 = v27[2];
  v38 = a1;
  a1;
  v37 = a3;
  v6 = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v6);
    if (!v32)
    {
      break;
    }

    v7 = v30;
    outlined init with take of Any(&v31, v29);
    v8 = *v39;
    v41 = v7;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(*(v8 + 16), v11);
    v13 = *(v8 + 16) + v11;
    if (v12)
    {
      BUG();
    }

    v14 = v9;
    if (*(v8 + 24) >= v13)
    {
      if ((v40 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLProgress.Metric, Any>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v15 = v40;
      v16 = v39;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, v40);
      v17 = *v16;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      LOBYTE(v20) = v20 & 1;
      if ((v14 & 1) != v20)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLProgress.Metric, v15, v20, v18, v19);
        BUG();
      }
    }

    if (v14)
    {
      v21 = *v39;
      outlined init with copy of Any(v29, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v22 = (*(v21 + 56) + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v6 = v27;
      v23 = outlined init with take of Any(v27, v22);
    }

    else
    {
      v24 = *v39;
      v24[(v10 >> 6) + 8] |= 1 << v10;
      *(v24[6] + v10) = v41;
      v6 = v29;
      outlined init with take of Any(v29, (v24[7] + 32 * v10));
      v25 = v24[2];
      v12 = __OFADD__(1, v25);
      v23 = (v25 + 1);
      if (v12)
      {
        BUG();
      }

      v24[2] = v23;
    }

    LOBYTE(v23) = 1;
    v40 = v23;
  }

  v38;

  outlined consume of [String : [Double]].Iterator._Variant(v33);
}

{
  v57 = a5;
  v49 = *(a1 + 16);
  if (!v49)
  {
    return a1;
  }

  v6 = a3;
  if (a2 == a3)
  {
    return a1;
  }

  if (a2 > a3)
  {
    BUG();
  }

  v58 = a4;
  v52 = v5;
  *v53 = *(a1 + 32);
  v8 = *(a1 + 48);
  a1;
  si128 = _mm_load_si128(v53);
  v10 = a2;
  v11 = (a1 + 72);
  v12 = 1;
  v56 = a1;
  v55 = v6;
  while (1)
  {
    if (v6 == v10)
    {
      BUG();
    }

    v47 = v12;
    v48 = v11;
    v46 = v10;
    v13 = v8;
    v43 = si128;
    v59 = v8 & 1;
    v44 = v8 & 1;
    v14 = *v57;
    *v53 = si128;
    epi64 = _mm_extract_epi64(si128, 1);
    outlined copy of MLRecommender.Identifier(si128.i64[0], epi64, v13);
    v54 = v13;
    v50 = si128.i64[0];
    v51 = epi64;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(si128.u64[0], epi64, v13 & 1);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(*(v14 + 16), v18);
    v20 = *(v14 + 16) + v18;
    if (v19)
    {
      BUG();
    }

    v21 = v16;
    if (*(v14 + 24) >= v20)
    {
      v6 = v55;
      v28 = *v53;
      v24 = v59;
      if ((v58 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, Int>);
        _NativeDictionary.copy()();
        v28 = *v53;
        v6 = v55;
      }
    }

    else
    {
      v22 = v57;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, v58);
      v23 = *v22;
      v24 = v59;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51, v59);
      LOBYTE(v27) = v27 & 1;
      if ((v21 & 1) != v27)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier, v51, v27, v25, v26);
        BUG();
      }

      v6 = v55;
      v28 = *v53;
    }

    if (v21)
    {
      break;
    }

    v29 = *v57;
    v30 = 1 << v17;
    v29[(v17 >> 6) + 8] |= 1 << v17;
    v31 = v29[6];
    v32 = 24 * v17;
    *(v31 + v32) = v28;
    *(v31 + v32 + 16) = v24;
    v33 = v46;
    *(v29[7] + 8 * v17) = v46;
    v34 = v29[2];
    v19 = __OFADD__(1, v34);
    v35 = v34 + 1;
    if (v19)
    {
      BUG();
    }

    v29[2] = v35;
    if (v49 == v47)
    {
      v39 = v56;
      return swift_bridgeObjectRelease_n(v39, 2);
    }

    if (v47 >= *(v56 + 16))
    {
      BUG();
    }

    v10 = v33 + 1;
    v12 = v47 + 1;
    v8 = v48->i8[0];
    si128 = _mm_loadu_si128(v48 - 1);
    v11 = (v48 + 24);
    LOBYTE(v30) = 1;
    v58 = v30;
    if (v6 == v10)
    {
      v39 = v56;
      return swift_bridgeObjectRelease_n(v39, 2);
    }
  }

  v36 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
  v45 = v36;
  swift_errorRetain(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v45, v37, &type metadata for _MergeError, 0))
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v40._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)(&v43, &v41, &type metadata for MLRecommender.Identifier, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v40._countAndFlagsBits = 39;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v41, v42, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v38 = v56;
  v56;
  outlined consume of MLRecommender.Identifier(v50, v51, v54);
  v38;
  return v45;
}

uint64_t outlined init with copy of MLCheckpoint(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLCheckpoint(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLCheckpoint(uint64_t a1)
{
  v1 = type metadata accessor for MLCheckpoint(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v47 = v3;
  v39[1] = a2;
  v40 = a1;
  v48 = 0;
  v5 = type metadata accessor for URL(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v41 = v39;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v46 = v39;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, URL>);
  v12 = static _DictionaryStorage.copy(original:)(a3);
  v13 = v5;
  v14 = 1 << *(a3 + 32);
  v15 = ~(-1 << v14);
  if (v14 >= 64)
  {
    v15 = -1;
  }

  v50 = a3;
  v16 = *(a3 + 64) & v15;
  v17 = v12;
  v18 = v6;
  v49 = (v14 + 63) >> 6;
  v43 = v12;
  v44 = v6;
  v45 = v5;
  while (1)
  {
    if (v16)
    {
      _BitScanForward64(&v19, v16);
      v42 = (v16 - 1) & v16;
      v20 = v19 | (v48 << 6);
      goto LABEL_17;
    }

    v21 = v48;
    v22 = v48 + 1;
    if (__OFADD__(1, v48))
    {
      BUG();
    }

    if (v22 >= v49)
    {
      return v17;
    }

    v23 = *(v50 + 8 * v22 + 64);
    if (!v23)
    {
      break;
    }

LABEL_16:
    _BitScanForward64(&v25, v23);
    v42 = v23 & (v23 - 1);
    v20 = v25 | (v22 << 6);
    v48 = v22;
LABEL_17:
    v26 = v46;
    v27 = *(v50 + 48);
    v28 = v20 * *(v18 + 72);
    (*(v18 + 16))(v46, v28 + *(v50 + 56), v13);
    v51 = *(v27 + v20);
    v29 = v47;
    v40(v26);
    v47 = v29;
    if (v29)
    {
      v17 = v43;

      (*(v44 + 8))(v26, v45);
      return v17;
    }

    v30 = v26;
    v31 = v45;
    v32 = v44;
    (*(v44 + 8))(v30, v45);
    v33 = v43;
    *(v43 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    *(*(v33 + 48) + v20) = v51;
    v34 = *(v33 + 56) + v28;
    v17 = v33;
    (*(v32 + 32))(v34, v41, v31);
    v35 = *(v17 + 16);
    v36 = __OFADD__(1, v35);
    v37 = v35 + 1;
    if (v36)
    {
      BUG();
    }

    v13 = v31;
    v18 = v32;
    *(v17 + 16) = v37;
    v16 = v42;
  }

  v24 = v48 + 2;
  if (v48 + 2 >= v49)
  {
    return v17;
  }

  v23 = *(v50 + 8 * v22 + 72);
  if (v23)
  {
    goto LABEL_15;
  }

  v24 = v48 + 3;
  if (v48 + 3 >= v49)
  {
    return v17;
  }

  v23 = *(v50 + 8 * v22 + 80);
  if (v23)
  {
    goto LABEL_15;
  }

  v24 = v48 + 4;
  if (v48 + 4 >= v49)
  {
    return v17;
  }

  v23 = *(v50 + 8 * v22 + 88);
  if (v23)
  {
LABEL_15:
    v22 = v24;
    goto LABEL_16;
  }

  while (v21 + 5 < v49)
  {
    v23 = *(v50 + 8 * v21++ + 104);
    if (v23)
    {
      v22 = v21 + 4;
      goto LABEL_16;
    }
  }

  return v17;
}

uint64_t lazy protocol witness table accessor for type MLPhase and conformance MLPhase()
{
  result = lazy protocol witness table cache variable for type MLPhase and conformance MLPhase;
  if (!lazy protocol witness table cache variable for type MLPhase and conformance MLPhase)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLPhase, &type metadata for MLPhase);
    lazy protocol witness table cache variable for type MLPhase and conformance MLPhase = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLPhase and conformance MLPhase;
  if (!lazy protocol witness table cache variable for type MLPhase and conformance MLPhase)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLPhase, &type metadata for MLPhase);
    lazy protocol witness table cache variable for type MLPhase and conformance MLPhase = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLPhase and conformance MLPhase;
  if (!lazy protocol witness table cache variable for type MLPhase and conformance MLPhase)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLPhase, &type metadata for MLPhase);
    lazy protocol witness table cache variable for type MLPhase and conformance MLPhase = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLPhase and conformance MLPhase;
  if (!lazy protocol witness table cache variable for type MLPhase and conformance MLPhase)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLPhase, &type metadata for MLPhase);
    lazy protocol witness table cache variable for type MLPhase and conformance MLPhase = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLCheckpoint(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
    v11;
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + a3[6]) = *(a2 + a3[6]);
    v7 = a3[7];
    v8 = type metadata accessor for Date(0);
    (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
    v9 = a3[8];
    v10 = *(a2 + v9);
    *(v3 + v9) = v10;
    v10;
  }

  return v3;
}

uint64_t destroy for MLCheckpoint(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  v4 = a1 + *(a2 + 28);
  v5 = type metadata accessor for Date(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  return *(a1 + *(a2 + 32)), v5;
}

uint64_t initializeWithCopy for MLCheckpoint(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v6 = a3[7];
  v7 = type metadata accessor for Date(0);
  (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  v8 = a3[8];
  v9 = *(a2 + v8);
  *(a1 + v8) = v9;
  v9;
  return a1;
}

uint64_t assignWithCopy for MLCheckpoint(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v7 = a3[7];
  v8 = type metadata accessor for Date(0);
  v9 = a2 + v7;
  (*(*(v8 - 8) + 24))(a1 + v7, v9, v8);
  v10 = a3[8];
  v11 = *(a2 + v10);
  v12 = *(a1 + v10);
  *(a1 + v10) = v11;
  v11;
  v12, v9;
  return a1;
}

uint64_t initializeWithTake for MLCheckpoint(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v5 = a3[7];
  v6 = type metadata accessor for Date(0);
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t assignWithTake for MLCheckpoint(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v7 = a3[7];
  v8 = type metadata accessor for Date(0);
  v9 = a2 + v7;
  (*(*(v8 - 8) + 40))(a1 + v7, v9, v8);
  v10 = a3[8];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);
  v11, v9;
  return a1;
}

uint64_t sub_85888(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for URL(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v6 = 0;
  v5 = type metadata accessor for Date(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 28) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if ((*(a1 + *(a3 + 32)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 32)) >> 1) + 1;
  }

  return v6;
}

uint64_t sub_85918(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for URL(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for Date(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 28) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 32);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLCheckpoint(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &unk_33F4A0;
    v4[2] = &value witness table for Builtin.Int64 + 64;
    result = type metadata accessor for Date(319);
    if (v3 <= 0x3F)
    {
      v4[3] = *(result - 8) + 64;
      v4[4] = &value witness table for Builtin.BridgeObject + 64;
      swift_initStructMetadata(a1, 256, 5, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

_BYTE *__swift_memcpy1_1(_BYTE *a1, _BYTE *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLCheckpoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFB)
    {
      goto LABEL_13;
    }

    v2 = a2 + 5;
    v3 = 1;
    if (v2 >= 0xFF00)
    {
      v3 = 2 * (v2 >= 0xFFFF00) + 2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = v3 == 2 ? *(a1 + 1) : a1[1];
    }

    if (v4)
    {
      v5 = *a1 + (v4 << 8) - 6;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 6;
      v8 = v6 < 6;
      v5 = -1;
      if (!v8)
      {
        v5 = v7;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MLCheckpoint.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFB)
  {
    v4 = a3 + 5;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFA)
  {
    v5 = a2 - 251;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 5;
        }

        break;
      case 5:
        JUMPOUT(0x85B58);
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLDecisionTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = &v17;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v17, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(&v17, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
    v10 = v21;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v19;
    v14 = v18;
    (*(v18 + 32))(v19, &v17, v2);
    v15 = v21;
    (*(v14 + 16))(v21, v13, v2);
    v20 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLDecisionTreeRegressor.ModelParameters.ValidationData.table.getter(a1);
  return outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLDecisionTreeRegressor.ModelParameters.validationData : MLDecisionTreeRegressor.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLDecisionTreeRegressor.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLDecisionTreeRegressor.ModelParameters.validationData : MLDecisionTreeRegressor.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13 + 1);
  if (v8 == 0xFF)
  {
    v13 = 0;
    v14 = 256;
  }

  else
  {
    v16 = v7;
    v9 = v8;
    v10 = v8 & 1;
    v17 = v10;
    v21 = v9;
    outlined copy of Result<_DataTable, Error>(v7, v9);
    v20 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v16, v17);
    if (v20)
    {
      *&v13 = v7;
      BYTE8(v13) = v10;
      v12 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v7, v21);
      v12 = 3;
    }

    v2 = v12;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLDecisionTreeRegressor.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLDecisionTreeRegressor.ModelParameters.validationData.getter(a2);
  return MLDecisionTreeRegressor.ModelParameters.validationData.modify;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t key path setter for MLDecisionTreeRegressor.ModelParameters.validation : MLDecisionTreeRegressor.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(a1, v6);
  return MLDecisionTreeRegressor.ModelParameters.validation.setter(v6);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLDecisionTreeRegressor.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLDecisionTreeRegressor.ModelParameters.validation.modify;
}

void MLDecisionTreeRegressor.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v8 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  if (a2)
  {
    outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(validation:maxDepth:minLossReduction:minChildWeight:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v14 = a3;
  v15 = a5;
  v16 = a4;
  v6 = v5;
  v7 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 32) = a2;
  *(v6 + 40) = v16;
  *(v6 + 48) = v15;
  *(v6 + 56) = v14;
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(a1, v13);
  v13[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v13, boxed_opaque_existential_0);
  outlined assign with take of Any?(v13, v6);
  return outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(a1);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(validationData:maxDepth:minLossReduction:minChildWeight:randomSeed:)(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = a3;
  v9 = v6;
  v10 = v7;
  return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v9);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDecisionTreeRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v18 = v15;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 48) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 56) = BoostedTreeConfiguration.randomSeed.getter();
  v17 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLDecisionTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    v11 = v18;
    swift_storeEnumTagMultiPayload(v18, v7, 3);
    if (__swift_getEnumTagSinglePayload(v15, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &demangling cache variable for type metadata for MLDecisionTreeRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v11 = v18;
    outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v15, v18);
  }

  v16[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLDecisionTreeRegressor.ModelParameters.ValidationData(v11, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for DataFrame?);
  v13 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.description.getter()
{
  v16._countAndFlagsBits = v0[4];
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v1._object;
  v3 = v1;
  String.append(_:)(v1);
  object, v3._object;
  v3._object = 0xE100000000000000;
  v3._countAndFlagsBits = 10;
  String.append(_:)(v3);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v3._object = "Max Iterations: " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v3);
  v15 = v0[5];
  Double.write<A>(to:)(&v16, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = v16;
  v5 = v16._object;
  String.append(_:)(v16);
  v5, v4._object;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v4._object = "Min Loss Reduction: " + 0x8000000000000000;
  v4._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v4);
  Double.write<A>(to:)(&v16, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v6 = v16;
  v7 = v16._object;
  String.append(_:)(v16);
  v7, v6._object;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v16._object, v6._object;
  strcpy(&v16, "Random Seed: ");
  HIWORD(v16._object) = -4864;
  v14 = v0[7];
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v9 = v8._object;
  v10 = v8;
  String.append(_:)(v8);
  v9, v10._object;
  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = v16;
  v12 = v16._object;
  String.append(_:)(v16);
  v12, v11._object;
  return 0x747065442078614DLL;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLDecisionTreeRegressor.ModelParameters.description.getter(a1);
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t initializeWithCopy for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    *(a1 + 24) = v2;
    (**(v2 - 8))(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
  }

  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  return a1;
}

uint64_t assignWithCopy for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v2)
    {
      *(a1 + 24) = v2;
      (**(v2 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
LABEL_8:
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = *(a2 + 7);
  return a1;
}

void __swift_assign_boxed_opaque_existential_0(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v8 = *(v3 - 8);
      if ((*(v8 + 82) & 2) != 0)
      {
        v10 = *a1;
        v11 = *a2;
        *a2;
        v10;
        *a1 = v11;
      }

      else
      {
        (*(v8 + 24))(a1, a2, a1[3]);
      }
    }

    else
    {
      a1[3] = v4;
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        v9 = *a1;
        if ((v7 & 0x20000) != 0)
        {
          v13 = *a2;
          *a1 = *a2;
          v13;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v4);
        }

        v9;
      }

      else
      {
        v16 = *(v4 - 8);
        v15 = v5;
        (*(v5 + 32))(v14, a1, v3);
        if ((v7 & 0x20000) != 0)
        {
          v12 = *a2;
          *a1 = *a2;
          v12;
        }

        else
        {
          (*(v16 + 16))(a1, a2, v4);
        }

        (*(v15 + 8))(v14, v3);
      }
    }
  }
}

uint64_t assignWithTake for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLDecisionTreeRegressor.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 64) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * a2;
    }
  }
}

void *MLModelMetadata.init(author:shortDescription:license:version:additional:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  v12[7] = a8;
  v12[8] = a9;
  qmemcpy(v9, v12, 0x48uLL);
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = a8;
  v11[8] = a9;
  outlined retain of MLModelMetadata(v12);
  return outlined release of MLModelMetadata(v11, &v13);
}

uint64_t MLModelMetadata.author.getter()
{
  v1 = *v0;
  v0[1];
  return v1;
}

uint64_t MLModelMetadata.author.setter(uint64_t a1, uint64_t a2)
{
  result = v2[1], a2;
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MLModelMetadata.shortDescription.getter()
{
  v1 = *(v0 + 16);
  *(v0 + 24);
  return v1;
}

uint64_t MLModelMetadata.shortDescription.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 24), a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLModelMetadata.license.getter()
{
  v1 = *(v0 + 32);
  *(v0 + 40);
  return v1;
}

uint64_t MLModelMetadata.license.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 40), a2;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MLModelMetadata.version.getter()
{
  v1 = *(v0 + 48);
  *(v0 + 56);
  return v1;
}

uint64_t MLModelMetadata.version.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 56), a2;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MLModelMetadata.additional.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 64), a2;
  *(v2 + 64) = a1;
  return result;
}

uint64_t destroy for MLModelMetadata(void *a1, uint64_t a2)
{
  a1[1], a2;
  a1[3], a2;
  a1[5], a2;
  a1[7], a2;
  return a1[8], a2;
}

void *initializeWithCopy for MLModelMetadata(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  a1[2] = a2[2];
  v4 = a2[3];
  a1[3] = v4;
  a1[4] = a2[4];
  v5 = a2[5];
  a1[5] = v5;
  a1[6] = a2[6];
  v6 = a2[7];
  a1[7] = v6;
  v7 = a2[8];
  a1[8] = v7;
  v3;
  v4;
  v5;
  v6;
  v7;
  return a1;
}

void *assignWithCopy for MLModelMetadata(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  v4 = a1[1];
  a1[1] = v3;
  v3;
  v4, a2;
  a1[2] = a2[2];
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;
  v5;
  v6, a2;
  a1[4] = a2[4];
  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v7;
  v8, a2;
  a1[6] = a2[6];
  v9 = a2[7];
  v10 = a1[7];
  a1[7] = v9;
  v9;
  v10, a2;
  v11 = a1[8];
  v12 = a2[8];
  a1[8] = v12;
  v12;
  v11, a2;
  return a1;
}

void *__swift_memcpy72_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x48uLL);
  return result;
}

void *assignWithTake for MLModelMetadata(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = *(a2 + 8);
  v3, a2;
  a1[2] = *(a2 + 16);
  v4 = a1[3];
  a1[3] = *(a2 + 24);
  v4, a2;
  a1[4] = *(a2 + 32);
  v5 = a1[5];
  a1[5] = *(a2 + 40);
  v5, a2;
  a1[6] = *(a2 + 48);
  a1[7], a2;
  v6 = a1[8];
  *(a1 + 7) = *(a2 + 56);
  v6, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLModelMetadata(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 8) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 8) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLModelMetadata(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 72) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = 2 * (a2 - 1);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TreeRegressor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
    v10;
  }

  else
  {
    *a1 = *a2;
    v5 = a2[1];
    a1[1] = v5;
    v6 = a2[2];
    a1[2] = v6;
    v13 = a2[3];
    a1[3] = v13;
    a1[4] = a2[4];
    v14 = a2[5];
    a1[5] = v14;
    v7 = *(a3 + 28);
    v12 = a1 + v7;
    v8 = a2 + v7;
    v9 = type metadata accessor for BaseTreeRegressor(0);
    v15 = *(*(v9 - 8) + 16);
    v5;
    v6;
    v13;
    v14;
    v15(v12, v8, v9);
  }

  return v3;
}

uint64_t destroy for TreeRegressor(void *a1, uint64_t a2)
{
  a1[1], a2;
  a1[2], a2;
  a1[3], a2;
  a1[5], a2;
  v2 = a1 + *(a2 + 28);
  v3 = type metadata accessor for BaseTreeRegressor(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

void *initializeWithCopy for TreeRegressor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;
  v10 = a2[3];
  a1[3] = v10;
  a1[4] = a2[4];
  v11 = a2[5];
  a1[5] = v11;
  v5 = *(a3 + 28);
  v9 = a1 + v5;
  v6 = a2 + v5;
  v7 = type metadata accessor for BaseTreeRegressor(0);
  v12 = *(*(v7 - 8) + 16);
  v3;
  v4;
  v10;
  v11;
  v12(v9, v6, v7);
  return a1;
}

void *assignWithCopy for TreeRegressor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6, a2;
  v7 = a2[2];
  v8 = a1[2];
  a1[2] = v7;
  v7;
  v8, a2;
  v9 = a2[3];
  v10 = a1[3];
  a1[3] = v9;
  v9;
  v10, a2;
  a1[4] = a2[4];
  v11 = a2[5];
  v12 = a1[5];
  a1[5] = v11;
  v11;
  v12, a2;
  v13 = *(a3 + 28);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = type metadata accessor for BaseTreeRegressor(0);
  (*(*(v16 - 8) + 24))(v14, v15, v16);
  return a1;
}

uint64_t initializeWithTake for TreeRegressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a3 + 28);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for BaseTreeRegressor(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

void *assignWithTake for TreeRegressor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5, a2;
  v6 = a1[2];
  a1[2] = a2[2];
  v6, a2;
  v7 = a1[3];
  a1[3] = a2[3];
  v7, a2;
  a1[4] = a2[4];
  v8 = a1[5];
  a1[5] = a2[5];
  v8, a2;
  v9 = *(a3 + 28);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for BaseTreeRegressor(0);
  (*(*(v12 - 8) + 40))(v10, v11, v12);
  return a1;
}

uint64_t sub_8748C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseTreeRegressor(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 28) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_87514(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseTreeRegressor(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 28) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for TreeRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for TreeRegressor;
  if (!type metadata singleton initialization cache for TreeRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for TreeRegressor);
  }

  return result;
}

uint64_t type metadata completion function for TreeRegressor(uint64_t a1)
{
  v3[0] = &unk_33F6A8;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_33F6C0;
  result = type metadata accessor for BaseTreeRegressor(319);
  if (v2 <= 0x3F)
  {
    v3[3] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 40);
    do
    {
      v6 = v1;
      v7 = *(v2 - 1);
      v3 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v3 + 1;
      v8 = *v2;
      *v2;
      if (v9 >> 1 <= v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v10, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v4 = 2 * v3;
      _swiftEmptyArrayStorage[v4 + 4] = v7;
      _swiftEmptyArrayStorage[v4 + 5] = v8;
      v2 += 4;
      v1 = v6 - 1;
    }

    while (v6 != 1);
  }

  return _swiftEmptyArrayStorage;
}

char specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)(*(a3 + 40));
  String.hash(into:)(&v15, a1);
  v5 = Hasher._finalize()();
  v6 = ~(-1 << *(a3 + 32));
  v7 = v6 & v5;
  v8 = *(a3 + 8 * ((v6 & v5) >> 6) + 56);
  if (_bittest64(&v8, v7))
  {
    v9 = *(a3 + 48);
    v10 = *(v9 + 16 * v7);
    v16 = v9;
    if (!(a1 ^ v10 | a2 ^ *(v9 + 16 * v7 + 8)) || (_stringCompareWithSmolCheck(_:_:expecting:)(v10, *(v9 + 16 * v7 + 8), a1, a2, 0) & 1) != 0)
    {
      return 1;
    }

    v12 = v6 & (v7 + 1);
    v13 = *(a3 + 8 * (v12 >> 6) + 56);
    if (_bittest64(&v13, v12))
    {
      while (a1 ^ *(v16 + 16 * v12) | a2 ^ *(v16 + 16 * v12 + 8) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v16 + 16 * v12), *(v16 + 16 * v12 + 8), a1, a2, 0) & 1) == 0)
      {
        v12 = v6 & (v12 + 1);
        v14 = *(a3 + 8 * (v12 >> 6) + 56);
        result = 0;
        if (!_bittest64(&v14, v12))
        {
          return result;
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = type metadata accessor for URL(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  if (*(a2 + 16))
  {
    v7 = *(a2 + 40);
    v8 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = a1;
    v9 = dispatch thunk of Hashable._rawHashValue(seed:)(v7, v3, v8);
    v16 = ~(-1 << *(a2 + 32));
    v10 = v16 & v9;
    v11 = *(a2 + 8 * ((v16 & v9) >> 6) + 56);
    if (_bittest64(&v11, v10))
    {
      v17 = *(v19 + 16);
      v18 = *(v19 + 72);
      do
      {
        v17(&v15, *(a2 + 48) + v10 * v18, v3);
        v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v2 = dispatch thunk of static Equatable.== infix(_:_:)(&v15, v15, v3, v12);
        (*(v19 + 8))(&v15, v3);
        if (v2)
        {
          break;
        }

        v10 = v16 & (v10 + 1);
        v13 = *(a2 + 8 * (v10 >> 6) + 56);
      }

      while (_bittest64(&v13, v10));
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t TreeRegressor.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ML16ColumnDescriptorVsAE_pTg5 = v5;
  v71 = a4;
  v72 = a3;
  v66 = a2;
  v89 = a1;
  v67 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v65 = v63;
  v81 = type metadata accessor for DataFrame(0);
  v83 = *(v81 - 8);
  v10 = *(v83 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v82 = v63;
  v75 = type metadata accessor for BaseTreeRegressorModel(0);
  v74 = *(v75 - 8);
  v13 = *(v74 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v73 = v63;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v76 = v63;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v70 = v63;
  v68 = type metadata accessor for AnyColumn(0);
  v91 = *(v68 - 8);
  v20 = v91[8];
  v21 = alloca(v20);
  v22 = alloca(v20);
  v69 = v63;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v84 = v63;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v88 = v63;
  v30 = v6[3];
  v79 = v6[4];
  v80 = v6;
  v87 = v6[5];
  v64 = v89;
  v30;
  v31 = ML16ColumnDescriptorVsAE_pTg5;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(closure #1 in FeatureVectorizer.fitted(to:)partial apply, v63, v30);
  result = v30;
  if (!v31)
  {
    v33 = v91;
    v86 = v24;
    v85 = v23;
    v34 = v87;
    v87;
    specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v89, 0, ML16ColumnDescriptorVsAE_pTg5, v79, v34, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5);
    v92 = 0;
    v35 = v80[1];
    v36 = v69;
    v78 = *v80;
    v77 = v35;
    DataFrame.subscript.getter(v78, v35);
    v37 = AnyColumn.convertedToFloats()();
    v38 = v33[1];
    (v38)(v36, v68);
    v89 = v37;
    if (!v37)
    {
      BUG();
    }

    v39 = v65;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v66, v65, &demangling cache variable for type metadata for DataFrame?);
    v40 = v81;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v81);
    v42 = v82;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for DataFrame?);
      v43 = v80 + *(type metadata accessor for TreeRegressor(0) + 28);
      v44 = v88;
      v45 = v92;
      BaseTreeRegressor.fitted(features:annotations:eventHandler:)(v88, v89, v72, v71);
      (*(v86 + 8))(v44, v85);
      v92 = v45;
      v46 = v74;
      v47 = v70;
      if (v45)
      {
        v87;
        ML16ColumnDescriptorVsAE_pTg5;
      }

      v51 = v73;
      v52 = v75;
    }

    else
    {
      v91 = v38;
      (*(v83 + 32))(v82, v39, v40);
      v48 = ML16ColumnDescriptorVsAE_pTg5;
      v49 = v87;
      v50 = v92;
      specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v42, 0, ML16ColumnDescriptorVsAE_pTg5, v79, v87, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5);
      if (v50)
      {
        v92 = v50;

        v49;
        v48;
        (*(v83 + 8))(v42, v40);
        return (*(v86 + 8))(v88, v85);
      }

      v53 = v69;
      DataFrame.subscript.getter(v78, v77);
      v54 = AnyColumn.convertedToFloats()();
      (v91)(v53, v68);
      v91 = v54;
      v55 = v54 == 0;
      v47 = v70;
      if (v55)
      {
        BUG();
      }

      v56 = v80 + *(type metadata accessor for TreeRegressor(0) + 28);
      BaseTreeRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(v88, v89, v84, v91, v72, v71);
      v92 = 0;
      v52 = v75;

      v57 = *(v86 + 8);
      v58 = v85;
      v57(v84, v85);
      (*(v83 + 8))(v82, v81);
      v57(v88, v58);
      v46 = v74;
      v51 = v76;
    }

    v59 = *(v46 + 32);
    v59(v47, v51, v52);
    v60 = type metadata accessor for TreeRegressorModel(0);
    v61 = v67;
    v59(v67 + *(v60 + 24), v47, v52);
    *v61 = v78;
    v62 = v77;
    v61[1] = v77;
    v61[2] = ML16ColumnDescriptorVsAE_pTg5;
    v61[3] = v79;
    v61[4] = v87;
    return v62;
  }

  return result;
}

uint64_t TreeRegressor.annotationColumnID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v2;
  return ColumnID.init(_:_:)(v1, v2, &type metadata for Float);
}

uint64_t TreeRegressor.annotationColumnID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Float>);
  v3 = ColumnID.name.getter(v2);
  v5 = v4;
  (*(*(v2 - 8) + 8))(a1, v2);
  result = v1[1];
  *v1 = v3;
  v1[1] = v5;
  return result;
}

uint64_t specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, a2, a3, a4, a5, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5);
}

{
  return specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, a2, a3, a4, a5, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSd_Tt0g5);
}

uint64_t specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void))
{
  v17 = a6;
  v24 = a2;
  v19 = a1;
  v18 = v6;
  v22 = type metadata accessor for DataFrame(0);
  v23 = *(v22 - 8);
  v8 = *(v23 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v20 = &v16;
  a3;
  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(a3);
  v21 = ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
  a3;
  v16 = ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v14 = v20;
  DataFrame.selecting<A>(columnNames:)(&v16, v12, v13);
  v21;
  v17(a3, v24);
  return (*(v23 + 8))(v14, v22);
}

uint64_t TreeRegressor.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v15 = v2;
  v3 = *(a1 + 32);
  v14 = a1;
  v12 = *(a1 + 16);
  v13 = v3;
  v4 = *(a2 + 24);
  v16 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer?);
  v6 = lazy protocol witness table accessor for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?();
  result = (dispatch thunk of EstimatorEncoder.encode<A>(_:))(&v12, v5, v6, v4, v16);
  if (!v2)
  {
    v8 = *(type metadata accessor for TreeRegressorModel(0) + 24) + v14;
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
    v9 = type metadata accessor for BaseTreeRegressorModel(0);
    v10 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseTreeRegressorModel and conformance BaseTreeRegressorModel, &type metadata accessor for BaseTreeRegressorModel, &protocol conformance descriptor for BaseTreeRegressorModel);
    return dispatch thunk of EstimatorEncoder.encode<A>(_:)(v8, v9, v10, v16, v15, v11, v12, *(&v12 + 1), v13);
  }

  return result;
}

uint64_t TreeRegressor.decode(from:)(uint64_t a1)
{
  v26 = v2;
  v21 = v3;
  v19 = v1;
  v24 = type metadata accessor for BaseTreeRegressorModel(0);
  v20 = *(v24 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v25 = v18;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
  v8 = *(a1 + 24);
  v27 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer and conformance FeatureVectorizer<A>.Transformer, &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v10 = v26;
  result = dispatch thunk of EstimatorDecoder.decode<A>(_:)(v7, v7, v9, v8, v27);
  if (!v10)
  {
    v26 = v18[0];
    v23 = v18[1];
    v27 = v18[2];
    v12 = *(a1 + 24);
    v22 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseTreeRegressorModel and conformance BaseTreeRegressorModel, &type metadata accessor for BaseTreeRegressorModel, &protocol conformance descriptor for BaseTreeRegressorModel);
    dispatch thunk of EstimatorDecoder.decode<A>(_:)(v24, v24, v13, v12, v22);
    v14 = *v21;
    v15 = v21[1];
    v16 = type metadata accessor for TreeRegressorModel(0);
    v17 = v19;
    (*(v20 + 32))(v19 + *(v16 + 24), v25, v24);
    *v17 = v14;
    v17[1] = v15;
    v17[2] = v26;
    v17[3] = v23;
    v17[4] = v27;
    return v15;
  }

  return result;
}

void (*protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance TreeRegressor(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0x28uLL);
  *a1 = v2;
  *v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Float>);
  v2[1] = v3;
  v4 = *(v3 - 8);
  v2[2] = v4;
  v5 = *(v4 + 64);
  v2[3] = malloc(v5);
  v2[4] = malloc(v5);
  TreeRegressor.annotationColumnID.getter();
  return protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance TreeRegressor;
}

void protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance TreeRegressor(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[2];
    v6 = *v2;
    v8 = v2[1];
    (*(v5 + 16))(v3, v4);
    TreeRegressor.annotationColumnID.setter(v3);
    (*(v5 + 8))(v4, v8);
  }

  else
  {
    v7 = *v2;
    TreeRegressor.annotationColumnID.setter((*a1)[4]);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t TreeRegressor.makeTransformer()()
{
  v2 = v0;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1 + *(type metadata accessor for TreeRegressor(0) + 28);
  v6 = v2 + *(type metadata accessor for TreeRegressorModel(0) + 24);
  v4;
  result = BaseTreeRegressor.makeTransformer()(v4);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  return result;
}

uint64_t TreeRegressor.update(_:with:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v39 = a2;
  v32 = type metadata accessor for AnyColumn(0);
  v31 = *(v32 - 8);
  v6 = *(v31 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v33 = &v30;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v36 = *(v37 - 8);
  v9 = *(v36 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = &v30;
  ML16ColumnDescriptorVsAE_pTg5 = a1[2];
  v38 = a1;
  if (ML16ColumnDescriptorVsAE_pTg5)
  {
    v41 = v5;
    v14 = v39;
    v15 = a1[3];
    v16 = a1[4];
  }

  else
  {
    v40 = &v30;
    v41 = &v30;
    v25 = v5;
    v26 = v5[2];
    v27 = alloca(24);
    v28 = alloca(32);
    v32 = v39;
    v26;
    ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), &v30, v26);
    result = v26;
    if (v4)
    {
      return result;
    }

    v14 = v39;
    v15 = 0xD000000000000013;
    v16 = "raining samples." + 0x8000000000000000;
    v29 = v38;
    v38[2] = ML16ColumnDescriptorVsAE_pTg5;
    v29[3] = 0xD000000000000013;
    v29[4] = "raining samples." + 0x8000000000000000;
    v41 = v25;
    v12 = v40;
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v14, 0, ML16ColumnDescriptorVsAE_pTg5, v15, v16, _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5);
  if (!v4)
  {
    v40 = v12;
    v18 = v41;
    v19 = v33;
    DataFrame.subscript.getter(*v41, v41[1]);
    v20 = AnyColumn.convertedToFloats()();
    (*(v31 + 8))(v19, v32);
    if (!v20)
    {
      BUG();
    }

    v21 = v20;
    v22 = v18 + *(type metadata accessor for TreeRegressor(0) + 28);
    v23 = type metadata accessor for TreeRegressorModel(0);
    v24 = v40;
    BaseTreeRegressor.update(_:features:annotations:eventHandler:)(v38 + *(v23 + 24), v40, v21, v35, v34);
    (*(v36 + 8))(v24, v37);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstract(uint64_t *a1)
{
  result = *a1;
  if (*a1 < 0)
  {
    v2 = *a1;
    result = swift_getTypeByMangledNameInContextInMetadataState2(255, a1 + result, -(result >> 32), 0, 0);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer?);
    lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer and conformance FeatureVectorizer<A>.Transformer, &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v1);
    lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer? and conformance <A> A? = result;
  }

  return result;
}

uint64_t _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5(uint64_t a1, int a2)
{
  LODWORD(v54) = a2;
  v42 = v2;
  v45 = type metadata accessor for AnyColumn(0);
  v46 = *(v45 - 8);
  v5 = *(v46 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v55 = &v38;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
  v8 = *(*(v43 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v40 = v4;
  v11 = a1;
  v12 = DataFrame.shape.getter();
  a1;
  v51 = &v38;
  _s8CreateML20FeatureMatrixBuilderV8rowCount18featureDescriptors12includesBiasACyxGSi_SayAA16ColumnDescriptorVGSbtcfCSf_Tt3g5(v12, a1, v54);
  v41 = *(a1 + 16);
  if (!v41)
  {
LABEL_18:
    v31 = v51;
    v32 = v51 + *(v43 + 44);
    v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
    (*(*(v33 - 8) + 16))(v42, v32, v33);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
  }

  v54 = v3;
  a1;
  v13 = 7;
  v14 = 0;
  v52 = a1;
  while (2)
  {
    v53 = *(v11 + 8 * v13 - 24);
    v15 = v13;
    v16 = *(v11 + 8 * v13 - 16);
    v17 = *(v11 + 8 * v15 - 8);
    v38 = v15;
    v18 = *(v11 + 8 * v15);
    v16;
    v44 = v17;
    outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v17, v18);
    v19 = v53;
    v53 = v16;
    DataFrame.subscript.getter(v19, v16);
    v20 = *v51;
    if (v14 >= *(*v51 + 16))
    {
      BUG();
    }

    v21 = v51[1];
    if (v14 >= *(v21 + 16))
    {
      BUG();
    }

    v22 = v38;
    v23 = *(v20 + 8 * v38 - 16);
    v24 = *(v20 + 8 * v38 - 8);
    v39 = v14;
    v25 = *(v21 + 8 * v14 + 32);
    v26 = *(v20 + 8 * v38);
    v48 = v18;
    switch(v26)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        v27 = v54;
        specialized FeatureMatrixBuilder.fillArray(from:size:column:)(v55, v24, v25);
        goto LABEL_7;
      case 4:
        v47 = v26;
        v50 = v23;
        v23;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v24, 4);
        v49 = v24;
        v30 = v54;
        specialized FeatureMatrixBuilder.fillCategorical(from:categories:column:)(v55, v24, v25);
        v54 = v30;
        if (!v30)
        {
          goto LABEL_14;
        }

        v35 = v18;
        v50;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v49, 4);
        goto LABEL_21;
      case 5:
        v47 = v26;
        v50 = v23;
        v23;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v24, 5);
        v49 = v24;
        v29 = v54;
        specialized FeatureMatrixBuilder.fillDictionary(from:descriptors:column:)(v55, v24, v25, specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:));
        v54 = v29;
        if (v29)
        {
          v35 = v18;
          v50;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v49, 5);
          goto LABEL_21;
        }

LABEL_14:
        v11 = v52;
        v28 = v55;
        v50;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v49, v47);
        goto LABEL_15;
      case 6:
        v27 = v54;
        if (v24)
        {
          specialized FeatureMatrixBuilder.fillFloat(from:column:)(v55, v25);
        }

        else
        {
          specialized FeatureMatrixBuilder.fillInteger(from:column:)(v55, v25);
        }

LABEL_7:
        v54 = v27;
        if (!v27)
        {
          v11 = v52;
          v28 = v55;
LABEL_15:
          v14 = v39 + 1;
          v53;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v44, v48);
          (*(v46 + 8))(v28, v45);
          v13 = v22 + 4;
          if (v41 == v14)
          {
            v11;
            goto LABEL_18;
          }

          continue;
        }

        v35 = v18;
LABEL_21:
        v36 = v52;
        v37 = v55;
        v53;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v44, v35);
        (*(v46 + 8))(v37, v45);
        v36;
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
    }
  }
}

uint64_t _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSd_Tt0g5(uint64_t a1, int a2)
{
  LODWORD(v54) = a2;
  v42 = v2;
  v45 = type metadata accessor for AnyColumn(0);
  v46 = *(v45 - 8);
  v5 = *(v46 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v55 = &v38;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
  v8 = *(*(v43 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v40 = v4;
  v11 = a1;
  v12 = DataFrame.shape.getter();
  a1;
  v51 = &v38;
  _s8CreateML20FeatureMatrixBuilderV8rowCount18featureDescriptors12includesBiasACyxGSi_SayAA16ColumnDescriptorVGSbtcfCSd_Tt3g5(v12, a1, v54);
  v41 = *(a1 + 16);
  if (!v41)
  {
LABEL_18:
    v31 = v51;
    v32 = v51 + *(v43 + 44);
    v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
    (*(*(v33 - 8) + 16))(v42, v32, v33);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
  }

  v54 = v3;
  a1;
  v13 = 7;
  v14 = 0;
  v52 = a1;
  while (2)
  {
    v53 = *(v11 + 8 * v13 - 24);
    v15 = v13;
    v16 = *(v11 + 8 * v13 - 16);
    v17 = *(v11 + 8 * v15 - 8);
    v38 = v15;
    v18 = *(v11 + 8 * v15);
    v16;
    v44 = v17;
    outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v17, v18);
    v19 = v53;
    v53 = v16;
    DataFrame.subscript.getter(v19, v16);
    v20 = *v51;
    if (v14 >= *(*v51 + 16))
    {
      BUG();
    }

    v21 = v51[1];
    if (v14 >= *(v21 + 16))
    {
      BUG();
    }

    v22 = v38;
    v23 = *(v20 + 8 * v38 - 16);
    v24 = *(v20 + 8 * v38 - 8);
    v39 = v14;
    v25 = *(v21 + 8 * v14 + 32);
    v26 = *(v20 + 8 * v38);
    v48 = v18;
    switch(v26)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        v27 = v54;
        specialized FeatureMatrixBuilder.fillArray(from:size:column:)(v55, v24, v25);
        goto LABEL_7;
      case 4:
        v47 = v26;
        v50 = v23;
        v23;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v24, 4);
        v49 = v24;
        v30 = v54;
        specialized FeatureMatrixBuilder.fillCategorical(from:categories:column:)(v55, v24, v25);
        v54 = v30;
        if (!v30)
        {
          goto LABEL_14;
        }

        v35 = v18;
        v50;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v49, 4);
        goto LABEL_21;
      case 5:
        v47 = v26;
        v50 = v23;
        v23;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v24, 5);
        v49 = v24;
        v29 = v54;
        specialized FeatureMatrixBuilder.fillDictionary(from:descriptors:column:)(v55, v24, v25, specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:));
        v54 = v29;
        if (v29)
        {
          v35 = v18;
          v50;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v49, 5);
          goto LABEL_21;
        }

LABEL_14:
        v11 = v52;
        v28 = v55;
        v50;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v49, v47);
        goto LABEL_15;
      case 6:
        v27 = v54;
        if (v24)
        {
          specialized FeatureMatrixBuilder.fillFloat(from:column:)(v55, v25);
        }

        else
        {
          specialized FeatureMatrixBuilder.fillInteger(from:column:)(v55, v25);
        }

LABEL_7:
        v54 = v27;
        if (!v27)
        {
          v11 = v52;
          v28 = v55;
LABEL_15:
          v14 = v39 + 1;
          v53;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v44, v48);
          (*(v46 + 8))(v28, v45);
          v13 = v22 + 4;
          if (v41 == v14)
          {
            v11;
            goto LABEL_18;
          }

          continue;
        }

        v35 = v18;
LABEL_21:
        v36 = v52;
        v37 = v55;
        v53;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v44, v35);
        (*(v46 + 8))(v37, v45);
        v36;
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
    }
  }
}