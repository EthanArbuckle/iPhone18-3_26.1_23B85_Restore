uint64_t sub_21DB32264(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 - 1) >= 2)
  {
    v2 = result;

    return v2;
  }

  return result;
}

char *initializeWithTake for TTRRemindersListViewModel.ListInfo(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRListType(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v9 = sub_21DBF6C1C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[7];
  v12 = a3[8];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v12] = a2[v12];
  v15 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  v16 = &a1[v15];
  v17 = &a2[v15];
  v18 = type metadata accessor for TTRRemindersListTip(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0);
    memcpy(v16, v17, *(*(v20 - 8) + 64));
  }

  else
  {
    *v16 = *v17;
    v21 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v22 = sub_21DBF8D7C();
    (*(*(v22 - 8) + 32))(&v16[v21], &v17[v21], v22);
    (*(v19 + 56))(v16, 0, 1, v18);
  }

  v23 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  a1[v23] = a2[v23];
  v24 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  a1[v24] = a2[v24];
  v25 = a3[16];
  a1[a3[15]] = a2[a3[15]];
  a1[v25] = a2[v25];
  v26 = a3[18];
  a1[a3[17]] = a2[a3[17]];
  a1[v26] = a2[v26];
  v27 = a3[20];
  a1[a3[19]] = a2[a3[19]];
  *&a1[v27] = *&a2[v27];
  v28 = a3[22];
  a1[a3[21]] = a2[a3[21]];
  *&a1[v28] = *&a2[v28];
  v29 = a3[24];
  a1[a3[23]] = a2[a3[23]];
  v30 = &a1[v29];
  v31 = &a2[v29];
  v32 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32))
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848);
    memcpy(v30, v31, *(*(v34 - 8) + 64));
  }

  else
  {
    v35 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v31, 1, v35))
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v30, v31, *(*(v37 - 8) + 64));
    }

    else
    {
      *v30 = *v31;
      v38 = *(v35 + 20);
      v39 = sub_21DBF6C1C();
      (*(*(v39 - 8) + 32))(&v30[v38], &v31[v38], v39);
      (*(v36 + 56))(v30, 0, 1, v35);
    }

    v40 = *(v32 + 20);
    v41 = &v30[v40];
    v42 = &v31[v40];
    *v41 = *v42;
    *(v41 + 2) = *(v42 + 2);
    (*(v33 + 56))(v30, 0, 1, v32);
  }

  v43 = a3[25];
  v44 = &a1[v43];
  v45 = &a2[v43];
  v46 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46))
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850);
    memcpy(v44, v45, *(*(v48 - 8) + 64));
  }

  else
  {
    v49 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v45, 1, v49))
    {
      v51 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v44, v45, *(*(v51 - 8) + 64));
    }

    else
    {
      v52 = sub_21DBF563C();
      (*(*(v52 - 8) + 32))(v44, v45, v52);
      v44[*(v49 + 20)] = v45[*(v49 + 20)];
      (*(v50 + 56))(v44, 0, 1, v49);
    }

    *&v44[*(v46 + 20)] = *&v45[*(v46 + 20)];
    (*(v47 + 56))(v44, 0, 1, v46);
  }

  v53 = a3[27];
  a1[a3[26]] = a2[a3[26]];
  a1[v53] = a2[v53];
  v54 = a3[29];
  a1[a3[28]] = a2[a3[28]];
  a1[v54] = a2[v54];
  v55 = a3[31];
  a1[a3[30]] = a2[a3[30]];
  v56 = &a1[v55];
  v57 = &a2[v55];
  *v56 = *v57;
  v56[2] = v57[2];
  a1[a3[32]] = a2[a3[32]];
  return a1;
}

char *assignWithTake for TTRRemindersListViewModel.ListInfo(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRListType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_21D107038(a1, type metadata accessor for TTRListType);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v13 = sub_21DBF6C1C();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v12 = *(v7 + 64);
LABEL_8:
      memcpy(a1, a2, v12);
      goto LABEL_14;
    }

    sub_21D107038(a1, type metadata accessor for TTRListType);
LABEL_7:
    v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0) - 8) + 64);
    goto LABEL_8;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v11 = sub_21DBF6C1C();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v14 = a3[5];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v18 = *v16;
  v17 = *(v16 + 1);
  *v15 = v18;
  *(v15 + 1) = v17;

  v19 = a3[6];
  v20 = *&a1[v19];
  *&a1[v19] = *&a2[v19];

  v21 = a3[7];
  v22 = a3[8];
  v23 = &a1[v21];
  v24 = &a2[v21];
  *v23 = *v24;
  v23[8] = v24[8];
  a1[v22] = a2[v22];
  v25 = a3[9];
  v26 = &a1[v25];
  v27 = &a2[v25];
  v29 = &a1[v25 + 8];
  v28 = *v29;
  if (*v29 == 3)
  {
LABEL_17:
    *v26 = *v27;
    goto LABEL_18;
  }

  v30 = *(v27 + 1);
  if (v30 == 3)
  {
    sub_21DB32264(v26);
    goto LABEL_17;
  }

  *v26 = *v27;
  *(v26 + 1) = v27[1];
  if ((v28 - 1) >= 2)
  {
    if ((v30 - 1) >= 2)
    {
      *v29 = v30;
    }

    else
    {
      sub_21DB32238(v29);
      *v29 = *(v27 + 1);
    }
  }

  else
  {
    *v29 = v30;
  }

LABEL_18:
  v31 = a3[10];
  v32 = &a1[v31];
  v33 = &a2[v31];
  v34 = type metadata accessor for TTRRemindersListTip(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(v32, 1, v34);
  v38 = v36(v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      *v32 = *v33;
      v39 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v40 = sub_21DBF8D7C();
      (*(*(v40 - 8) + 32))(&v32[v39], &v33[v39], v40);
      (*(v35 + 56))(v32, 0, 1, v34);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v38)
  {
    sub_21D107038(v32, type metadata accessor for TTRRemindersListTip);
LABEL_23:
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0);
    memcpy(v32, v33, *(*(v41 - 8) + 64));
    goto LABEL_24;
  }

  *v32 = *v33;
  v64 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v65 = sub_21DBF8D7C();
  (*(*(v65 - 8) + 40))(&v32[v64], &v33[v64], v65);
LABEL_24:
  v42 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  a1[v42] = a2[v42];
  v43 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  a1[v43] = a2[v43];
  v44 = a3[16];
  a1[a3[15]] = a2[a3[15]];
  a1[v44] = a2[v44];
  v45 = a3[18];
  a1[a3[17]] = a2[a3[17]];
  a1[v45] = a2[v45];
  v46 = a3[20];
  a1[a3[19]] = a2[a3[19]];
  *&a1[v46] = *&a2[v46];
  v47 = a3[22];
  a1[a3[21]] = a2[a3[21]];
  v48 = &a1[v47];
  v49 = &a2[v47];
  v51 = *v49;
  v50 = *(v49 + 1);
  *v48 = v51;
  *(v48 + 1) = v50;

  v52 = a3[24];
  a1[a3[23]] = a2[a3[23]];
  v53 = &a1[v52];
  v54 = &a2[v52];
  v55 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  v58 = v57(v53, 1, v55);
  v59 = v57(v54, 1, v55);
  if (v58)
  {
    if (!v59)
    {
      v60 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v54, 1, v60))
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(v53, v54, *(*(v62 - 8) + 64));
      }

      else
      {
        *v53 = *v54;
        v72 = *(v60 + 20);
        v73 = sub_21DBF6C1C();
        (*(*(v73 - 8) + 32))(&v53[v72], &v54[v72], v73);
        (*(v61 + 56))(v53, 0, 1, v60);
      }

      v74 = *(v55 + 20);
      v75 = &v53[v74];
      v76 = &v54[v74];
      *v75 = *v76;
      *(v75 + 2) = *(v76 + 2);
      (*(v56 + 56))(v53, 0, 1, v55);
      goto LABEL_51;
    }

LABEL_30:
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848);
    memcpy(v53, v54, *(*(v63 - 8) + 64));
    goto LABEL_51;
  }

  if (v59)
  {
    sub_21D107038(v53, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
    goto LABEL_30;
  }

  v66 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v111 = *(v66 - 8);
  v67 = *(v111 + 48);
  v68 = v67(v53, 1, v66);
  v69 = v67(v54, 1, v66);
  if (!v68)
  {
    if (!v69)
    {
      *v53 = *v54;

      v108 = *(v66 + 20);
      v109 = sub_21DBF6C1C();
      (*(*(v109 - 8) + 40))(&v53[v108], &v54[v108], v109);
      goto LABEL_45;
    }

    sub_21D107038(v53, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
    goto LABEL_44;
  }

  if (v69)
  {
LABEL_44:
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
    memcpy(v53, v54, *(*(v77 - 8) + 64));
    goto LABEL_45;
  }

  *v53 = *v54;
  v70 = *(v66 + 20);
  v71 = sub_21DBF6C1C();
  (*(*(v71 - 8) + 32))(&v53[v70], &v54[v70], v71);
  (*(v111 + 56))(v53, 0, 1, v66);
LABEL_45:
  v78 = *(v55 + 20);
  v79 = &v53[v78];
  v80 = &v54[v78];
  if (*(v79 + 1))
  {
    v81 = *(v80 + 1);
    if (v81)
    {
      *v79 = *v80;
      *(v79 + 1) = v81;

      v82 = *(v79 + 2);
      *(v79 + 2) = *(v80 + 2);

      goto LABEL_51;
    }

    sub_21D122250(v79);
  }

  *v79 = *v80;
  *(v79 + 2) = *(v80 + 2);
LABEL_51:
  v83 = a3[25];
  v84 = &a1[v83];
  v85 = &a2[v83];
  v86 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v87 = *(v86 - 8);
  v88 = *(v87 + 48);
  v89 = v88(v84, 1, v86);
  v90 = v88(v85, 1, v86);
  if (!v89)
  {
    if (v90)
    {
      sub_21D107038(v84, type metadata accessor for TTRTemplatePublicLinkData);
      goto LABEL_57;
    }

    v95 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v112 = *(v95 - 8);
    v96 = *(v112 + 48);
    v97 = v96(v84, 1, v95);
    v98 = v96(v85, 1, v95);
    if (v97)
    {
      if (!v98)
      {
        v99 = sub_21DBF563C();
        (*(*(v99 - 8) + 32))(v84, v85, v99);
        v84[*(v95 + 20)] = v85[*(v95 + 20)];
        (*(v112 + 56))(v84, 0, 1, v95);
LABEL_66:
        *&v84[*(v86 + 20)] = *&v85[*(v86 + 20)];
        goto LABEL_67;
      }
    }

    else
    {
      if (!v98)
      {
        v110 = sub_21DBF563C();
        (*(*(v110 - 8) + 40))(v84, v85, v110);
        v84[*(v95 + 20)] = v85[*(v95 + 20)];
        goto LABEL_66;
      }

      sub_21D107038(v84, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    }

    v101 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v84, v85, *(*(v101 - 8) + 64));
    goto LABEL_66;
  }

  if (v90)
  {
LABEL_57:
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850);
    memcpy(v84, v85, *(*(v94 - 8) + 64));
    goto LABEL_67;
  }

  v91 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v92 = *(v91 - 8);
  if ((*(v92 + 48))(v85, 1, v91))
  {
    v93 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v84, v85, *(*(v93 - 8) + 64));
  }

  else
  {
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 32))(v84, v85, v100);
    v84[*(v91 + 20)] = v85[*(v91 + 20)];
    (*(v92 + 56))(v84, 0, 1, v91);
  }

  *&v84[*(v86 + 20)] = *&v85[*(v86 + 20)];
  (*(v87 + 56))(v84, 0, 1, v86);
LABEL_67:
  v102 = a3[27];
  a1[a3[26]] = a2[a3[26]];
  a1[v102] = a2[v102];
  v103 = a3[29];
  a1[a3[28]] = a2[a3[28]];
  a1[v103] = a2[v103];
  v104 = a3[31];
  a1[a3[30]] = a2[a3[30]];
  v105 = &a1[v104];
  v106 = &a2[v104];
  *v105 = *v106;
  v105[1] = v106[1];
  v105[2] = v106[2];
  a1[a3[32]] = a2[a3[32]];
  return a1;
}

void sub_21DB33814()
{
  sub_21D0DBFB4(319, qword_280D16AB8, type metadata accessor for TTRListType);
  if (v0 <= 0x3F)
  {
    sub_21D0DBFB4(319, &qword_280D15E58, type metadata accessor for TTRRemindersListTip);
    if (v1 <= 0x3F)
    {
      sub_21D0DBFB4(319, qword_280D148D0, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
      if (v2 <= 0x3F)
      {
        sub_21D0DBFB4(319, qword_280D13ED8, type metadata accessor for TTRTemplatePublicLinkData);
        if (v3 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

void destroy for TTRRemindersListViewModel.ListSharingInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 - 1) >= 2)
  {
  }
}

uint64_t sub_21DB33A80(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 8);
  if ((v2 - 1) >= 2)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.ListSharingInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = v5 - 1;
  if ((v4 - 1) >= 2)
  {
    if (v6 >= 2)
    {
      *v3 = v5;
      v9 = v5;

      return a1;
    }

    sub_21DB32238((a1 + 8));
    v5 = *(a2 + 8);
    goto LABEL_6;
  }

  if (v6 < 2)
  {
LABEL_6:
    *v3 = v5;
    return a1;
  }

  *v3 = v5;
  v7 = v5;
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.ListSharingInfo(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 1) = *(a2 + 1);
  v3 = (result + 8);
  v2 = *(result + 8);
  v4 = *(a2 + 8);
  if ((v2 - 1) >= 2)
  {
    v5 = result;
    if ((v4 - 1) >= 2)
    {
      *v3 = v4;
    }

    else
    {
      sub_21DB32238((result + 8));
      *v3 = v4;
    }

    return v5;
  }

  else
  {
    *v3 = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.ListSharingInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.ListSharingInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void destroy for TTRRemindersListViewModel.ListSharingInfo.Status(void **a1)
{
  v1 = *a1;
  v2 = -1;
  if (v1 < 0xFFFFFFFF)
  {
    v2 = v1;
  }

  if (v2 - 1 < 0)
  {
  }
}

void **assignWithCopy for TTRRemindersListViewModel.ListSharingInfo.Status(void **result, void **a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = *result;
  }

  v5 = v4 - 1;
  v6 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  v7 = v3 - 1;
  if (v5 < 0)
  {
    if (v7 < 0)
    {
      *result = v6;
      v12 = result;
      v13 = v6;

      return v12;
    }

    else
    {
      v8 = result;

      result = v8;
      *v8 = *a2;
    }
  }

  else
  {
    *result = v6;
    if (v7 < 0)
    {
      v10 = result;
      v11 = v6;
      return v10;
    }
  }

  return result;
}

void **assignWithTake for TTRRemindersListViewModel.ListSharingInfo.Status(void **result, unint64_t *a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v3 = *result;
  }

  v4 = *a2;
  if (v3 - 1 < 0)
  {
    LODWORD(v5) = -1;
    if (v4 < 0xFFFFFFFF)
    {
      v5 = *a2;
    }

    if (v5 - 1 < 0)
    {
      *result = v4;
      v7 = result;

      return v7;
    }

    else
    {
      v6 = result;

      result = v6;
      *v6 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.ListSharingInfo.Status(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.ListSharingInfo.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_21DB33EA0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.DeleteCompletedMenuItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.DeleteCompletedMenuItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.DeleteCompletedMenuItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t sub_21DB34014()
{
  result = qword_27CE66930;
  if (!qword_27CE66930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66930);
  }

  return result;
}

unint64_t sub_21DB3406C()
{
  result = qword_280D14108;
  if (!qword_280D14108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14108);
  }

  return result;
}

unint64_t sub_21DB340C4()
{
  result = qword_280D14110;
  if (!qword_280D14110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14110);
  }

  return result;
}

uint64_t sub_21DB34118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D616ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_21DBFC64C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44497463656A626FLL && a2 == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DC77FF0 == a2 || (sub_21DBFC64C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL || (sub_21DBFC64C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6E6F6974636573 && a2 == 0xEB00000000737365 || (sub_21DBFC64C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021DC78010 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_21DBFC64C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_21DB34454(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

void sub_21DB34468(uint64_t a1, void *a2)
{
  if (a2 != 3)
  {
    sub_21DB34454(a2);
  }
}

id TTRListBadgeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t TTRListBadgeView.ColorInfo.localizedDescription.getter()
{
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    LOBYTE(v8) = *v0;
    v4 = TTRListType.PredefinedSmartListType.color.getter();
    v5 = [v4 accessibilityName];
  }

  else
  {
    v2 = *(v0 + 4);
    v3 = *(v0 + 5);
    if ((v1 & 1) == 0)
    {
      sub_21DBF8E0C();
      return v2;
    }

    v9 = *v0;
    v10 = v0[1];
    v11 = *(v0 + 4);
    LOBYTE(v12) = 1;
    v4 = TTRListColors.Color.nativeColor.getter();
    v5 = [v4 accessibilityName];
  }

  v6 = v5;

  v2 = sub_21DBFA16C();
  return v2;
}

void TTRListBadgeView.ActionBadgeParams.init(size:cornerRadius:margin:symbolSize:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void TTRListBadgeView.ShadowParams.init(offset:radius:opacity:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

RemindersUICore::TTRListBadgeView::LinearGradient __swiftcall TTRListBadgeView.LinearGradient.init(from:to:)(UIColor from, UIColor to)
{
  v2->super.isa = from.super.isa;
  v2[1].super.isa = to.super.isa;
  result.to = to;
  result.from = from;
  return result;
}

uint64_t static TTRListBadgeView.LinearGradient.== infix(_:_:)()
{
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C())
  {
    return sub_21DBFB63C() & 1;
  }

  else
  {
    return 0;
  }
}

id TTRListBadgeView.GradientSettings.lighteningGradient.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return sub_21D10EC0C(v2, v3);
}

id TTRListBadgeView.GradientSettings.darkeningGradient.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_21D10EC0C(v2, v3);
}

__n128 TTRListBadgeView.GradientSettings.init(lighteningGradient:lightenBlendMode:darkeningGradient:darkenBlendMode:)@<Q0>(_OWORD *a1@<X0>, int a2@<W1>, __n128 *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 16) = a2;
  result = *a3;
  *(a5 + 24) = *a3;
  *(a5 + 40) = a4;
  return result;
}

__n128 TTRListBadgeView.GradientSettings.init(gradient:blendMode:)@<Q0>(__n128 *a1@<X0>, unsigned __int32 a2@<W1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u32[0] = a2;
  a3[1].n128_u64[1] = 0;
  a3[2].n128_u64[0] = 0;
  a3[2].n128_u32[2] = 0;
  return result;
}

uint64_t TTRListBadgeView.BackgroundParams.gradientStyleOverride.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_21DB3A9B0(v2, v3, v4, v5, v6, v7);
}

__n128 TTRListBadgeView.BackgroundParams.gradientStyleOverride.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21D10E2C8(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

id TTRListBadgeView.BackgroundParams.gradientSettingsOverride.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_21D10F3DC(v2, v3, v4, v5, v6);
}

__n128 TTRListBadgeView.BackgroundParams.gradientSettingsOverride.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21D10EC4C(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  result = *a1;
  *(v1 + 72) = *(a1 + 16);
  *(v1 + 56) = result;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  return result;
}

__n128 TTRListBadgeView.BackgroundParams.init(gradientVisibilityOverride:gradientStyleOverride:hasBorder:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a4 + 56) = 1;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *a4 = a1;
  sub_21D10E2C8(3, 0, 0, 0, 0, 0);
  result = *a2;
  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = result;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 100) = a3;
  return result;
}

uint64_t TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)@<X0>(uint64_t result@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 12) = v4;
  return result;
}

uint64_t TTRListBadgeView.ImageContentMode.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRListBadgeView.SelectionParams.init(borderColor:borderWidth:borderSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

BOOL static TTRListBadgeView.SelectionParams.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_21D0D8CF0(0, &qword_280D17680);
  v6 = sub_21DBFB63C();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

BOOL sub_21DB34DF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_21D0D8CF0(0, &qword_280D17680);
  v6 = sub_21DBFB63C();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

__n128 sub_21DB34E78@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer) + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  result = *v2;
  v6 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

void (*sub_21DB34EAC(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer) + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 16);
  *v3 = *v4;
  *(v3 + 16) = v7;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  return sub_21DB34F40;
}

void sub_21DB34F40(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = *(*a1 + 40);
  v7[0] = **a1;
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v5;
  v8 = v6;
  sub_21D113874(v7);

  free(v1);
}

id sub_21DB34FB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = *(v3 + 48);
  *(a2 + 48) = v10;
  return sub_21DB3AD64(v4, v5, v6, v7, v8, v9, v10);
}

void sub_21DB35020(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  v8 = v6;
  sub_21DB3AD64(v7[0], v1, v2, v3, v4, v5, v6);
  sub_21D113E3C(v7);
}

id sub_21DB3507C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(v3 + 48);
  *(a1 + 48) = v10;
  return sub_21DB3AD64(v4, v5, v6, v7, v8, v9, v10);
}

void (*sub_21DB350E8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21DB35170;
}

void sub_21DB35170(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    v6 = *v5;
    v7 = v5[48];
    if (v7 < 0)
    {
      v8 = TTRListType.PredefinedSmartListType.color.getter();
      [v4 setTintColor_];
    }

    else
    {
      v9 = *(v5 + 1);
      v10 = *(v5 + 2);
      v11 = *(v5 + 3);
      v12 = *(v5 + 4);
      v13 = *(v5 + 5);
      sub_21D0FB960(v6, v9, v10, v11, v12, v13, v7 & 1);
      v8 = TTRListColors.Color.nativeColor.getter();
      [v4 setTintColor_];
      sub_21D113F88(v6, v9, v10, v11, v12, v13, v7);
    }
  }

  free(v3);
}

void (*sub_21DB35298(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView) image];
  return sub_21DB352FC;
}

void sub_21DB352FC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_21D112D3C(v2);
  }

  else
  {
    sub_21D112D3C(*a1);
  }
}

uint64_t sub_21DB35364(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();
  sub_21D1136D0(v5, v6);
}

uint64_t sub_21DB353F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_21D1136D0(v6, v7);
}

void (*sub_21DB35464(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_21DBF8E0C();
  return sub_21DB35504;
}

void sub_21DB35504(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21D1136D0(v9, v8);
  }

  else
  {
    sub_21D1136D0(v9, v8);
  }

  free(v2);
}

double sub_21DB35598()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DB355DC(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 font];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 fontWithSize_];
        [v6 setFont_];
      }
    }
  }
}

void (*sub_21DB356B0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21DB35744;
}

void sub_21DB35744(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (a2)
  {
    if (v6 != v3)
    {
      v7 = *(*(v2 + 32) + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
      if (v7)
      {
        v8 = v2;
        v9 = v7;
        v10 = [v9 font];
        if (!v10)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  else if (v6 != v3)
  {
    v11 = *(*(v2 + 32) + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
    if (v11)
    {
      v8 = v2;
      v9 = v11;
      v10 = [v9 font];
      if (!v10)
      {
LABEL_10:

        v2 = v8;
        goto LABEL_11;
      }

LABEL_9:
      v12 = v10;
      v13 = [v10 fontWithSize_];
      [v9 setFont_];

      goto LABEL_10;
    }
  }

LABEL_11:

  free(v2);
}

void *sub_21DB35860()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_21DB358AC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DB35948;
}

void sub_21DB35948(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_21D114670(v3);
  }

  else
  {
    sub_21D114670(*(*a1 + 24));
  }

  free(v2);
}

id sub_21DB359B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 12);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;

  return v4;
}

void sub_21DB35A28(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 12);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 12) = v4;
  v9 = v2;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  sub_21DB35AC8(&v10);
}

void sub_21DB35AC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 12);
  sub_21D0D8CF0(0, &qword_280D17680);
  v8 = v5;
  if ((sub_21DBFB63C() & 1) == 0)
  {

LABEL_6:
    sub_21D113134();
    return;
  }

  if (v6 != v2 || ((v3 ^ v7) & 1) != 0)
  {
    goto LABEL_6;
  }
}

id sub_21DB35BA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 12);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;

  return v4;
}

void sub_21DB35C10(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 12);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 12) = v4;
  sub_21D0D8CF0(0, &qword_280D17680);
  v9 = v2;
  if ((sub_21DBFB63C() & 1) == 0)
  {

LABEL_6:
    sub_21D113134();
    goto LABEL_7;
  }

  if (v3 != v7 || ((v8 ^ v4) & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

void (*sub_21DB35CEC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 12);
  *(v4 + 24) = *v6;
  v4 += 24;
  *(v4 + 8) = v8;
  *(v4 + 12) = v9;
  v10 = v7;
  return sub_21DB35D9C;
}

void sub_21DB35D9C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *v4;
  v6 = *(*a1 + 40) + *(*a1 + 48);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 36);
  v9 = *v6;
  v10 = *(v6 + 8);
  v20 = *(v6 + 12);
  *v6 = *v4;
  *(v6 + 8) = v7;
  *(v6 + 12) = v8;
  v11 = v3[5] + v3[6];
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 12);
  sub_21D0D8CF0(0, &qword_280D17680);
  v15 = v12;
  if (a2)
  {
    v16 = v5;
    v17 = sub_21DBFB63C();

    if (v17 & 1) == 0 || v13 != v10 || ((v20 ^ v14))
    {
      sub_21D113134();
    }

    v9 = *v4;
  }

  else
  {
    v18 = sub_21DBFB63C();

    if ((v18 & 1) == 0 || (v13 == v10 ? (v19 = v20 == v14) : (v19 = 0), !v19))
    {
      sub_21D113134();
    }
  }

  free(v3);
}

uint64_t sub_21DB35EE8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DB35F2C(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_21DB3797C();
}

uint64_t (*sub_21DB35F80(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DB35FE4;
}

id sub_21DB35FFC(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setTintAdjustmentMode_];
  }

  return result;
}

uint64_t sub_21DB36070()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21DB360B4(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setTintAdjustmentMode_];
  }

  return result;
}

void (*sub_21DB36128(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21DB361BC;
}

void sub_21DB361BC(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setTintAdjustmentMode_];
  }

  free(v1);
}

uint64_t sub_21DB36218@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 32);
  v16[1] = *(v3 + 16);
  v16[2] = v5;
  v16[0] = v4;
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  *&v17[13] = *(v3 + 93);
  v16[4] = v7;
  *v17 = v8;
  v16[3] = v6;
  v9 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v9;
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(a2 + 93) = *(v3 + 93);
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return sub_21DB3AD74(v16, &v15);
}

uint64_t sub_21DB362C0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16[0] = v5;
  *(v16 + 13) = *(v3 + 93);
  v6 = *(v16 + 13);
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 93) = v6;
  return sub_21DB3AD74(v12, &v11);
}

uint64_t sub_21DB3634C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v30 = *(v3 + 64);
  v31[0] = v4;
  *(v31 + 13) = *(v3 + 93);
  v5 = *(v3 + 16);
  v26 = *v3;
  v27 = v5;
  v6 = *(v3 + 48);
  v28 = *(v3 + 32);
  v29 = v6;
  v32[0] = v26;
  v32[1] = v5;
  v32[2] = v28;
  v32[3] = v6;
  v32[4] = v30;
  v33[0] = v4;
  *(v33 + 13) = *(v31 + 13);
  v7 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v7;
  *(v3 + 93) = *(a1 + 93);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_21DB3AD74(&v26, v39);
  sub_21DB3ADAC(v32);
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v37 = *(v3 + 64);
  v38[0] = v11;
  v12 = *(v3 + 16);
  v34[0] = *v3;
  v34[1] = v12;
  v13 = *(v3 + 48);
  v15 = *v3;
  v14 = *(v3 + 16);
  v35 = *(v3 + 32);
  v36 = v13;
  v16 = *(v3 + 80);
  v24 = v37;
  *v25 = v16;
  v20 = v15;
  v21 = v14;
  *(v38 + 13) = *(v3 + 93);
  *&v25[13] = *(v3 + 93);
  v22 = v35;
  v23 = v10;
  v18[4] = v30;
  v19[0] = v31[0];
  *(v19 + 13) = *(v31 + 13);
  v18[0] = v26;
  v18[1] = v27;
  v18[2] = v28;
  v18[3] = v29;
  sub_21DB3AD74(v34, v39);
  LOBYTE(v3) = _s15RemindersUICore16TTRListBadgeViewC16BackgroundParamsV2eeoiySbAE_AEtFZ_0(&v20, v18);
  v39[4] = v24;
  v40[0] = *v25;
  *(v40 + 13) = *&v25[13];
  v39[0] = v20;
  v39[1] = v21;
  v39[2] = v22;
  v39[3] = v23;
  sub_21DB3ADAC(v39);
  if ((v3 & 1) == 0)
  {
    sub_21D10EC98();
  }

  return sub_21DB3ADAC(&v26);
}

void (*sub_21DB364C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x228uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 544) = v1;
  v5 = (v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[2];
  *(v4 + 16) = v5[1];
  *(v4 + 32) = v7;
  *v4 = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  *(v4 + 93) = *(v5 + 93);
  *(v4 + 64) = v9;
  *(v4 + 80) = v10;
  *(v4 + 48) = v8;
  v12 = v5[4];
  v11 = v5[5];
  v13 = *(v5 + 93);
  *(v4 + 152) = v5[3];
  *(v4 + 197) = v13;
  *(v4 + 184) = v11;
  *(v4 + 168) = v12;
  v14 = *v5;
  v15 = v5[1];
  *(v4 + 136) = v5[2];
  *(v4 + 120) = v15;
  *(v4 + 104) = v14;
  sub_21DB3AD74(v4, v4 + 208);
  return sub_21DB365BC;
}

void sub_21DB365BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 184);
  if (a2)
  {
    *(v2 + 376) = *(v2 + 168);
    *(v2 + 392) = v4;
    *(v2 + 405) = *(v2 + 197);
    v5 = *(v2 + 120);
    *(v2 + 312) = *(v2 + 104);
    *(v2 + 328) = v5;
    *(v2 + 344) = *(v2 + 136);
    *(v2 + 360) = v3;
    v6 = *(v2 + 152);
    v7 = *(v2 + 184);
    v17 = *(v2 + 168);
    v18[0] = v7;
    *(v18 + 13) = *(v2 + 197);
    v8 = *(v2 + 120);
    v13 = *(v2 + 104);
    v14 = v8;
    v15 = *(v2 + 136);
    v16 = v6;
    sub_21DB3AD74(v2 + 312, v2 + 416);
    sub_21DB3634C(&v13);
    v9 = *(v2 + 152);
    v10 = *(v2 + 184);
    *(v2 + 272) = *(v2 + 168);
    *(v2 + 288) = v10;
    *(v2 + 301) = *(v2 + 197);
    v11 = *(v2 + 120);
    *(v2 + 208) = *(v2 + 104);
    *(v2 + 224) = v11;
    *(v2 + 240) = *(v2 + 136);
    *(v2 + 256) = v9;
    sub_21DB3ADAC(v2 + 208);
  }

  else
  {
    v17 = *(v2 + 168);
    v18[0] = v4;
    *(v18 + 13) = *(v2 + 197);
    v12 = *(v2 + 120);
    v13 = *(v2 + 104);
    v14 = v12;
    v15 = *(v2 + 136);
    v16 = v3;
    sub_21DB3634C(&v13);
  }

  free(v2);
}

void sub_21DB366E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams;
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  *(v4 + 32) = v3;
  sub_21DB36750();
}

void sub_21DB36750()
{
  v1 = &v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams];
  swift_beginAccess();
  if (v1[32])
  {
    v2 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer;
    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
    if (v3)
    {
      [v3 removeFromSuperlayer];
      v4 = *&v0[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v0[v2] = 0;
  }

  else
  {
    v5 = *(v1 + 2);
    v6 = *(v1 + 3);
    v8 = *v1;
    v7 = *(v1 + 1);
    v9 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
    if (v9)
    {
      v10 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
    }

    else
    {
      v10 = sub_21DB36884(v0);
      v9 = 0;
    }

    v11 = v9;
    v4 = v10;
    [v4 setShadowRadius_];
    [v4 setShadowOffset_];
    *&v12 = v6;
    [v4 setShadowOpacity_];

    v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v0 setNeedsLayout];
  }
}

id sub_21DB36884(char *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView.ShadowLayer()) init];
  [a1 bounds];
  [v2 setFrame_];

  v3 = *&a1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
  *&a1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer] = v2;
  v4 = v2;

  v5 = [a1 layer];
  [v5 insertSublayer:v4 atIndex:0];

  [a1 setNeedsLayout];
  return v4;
}

__n128 sub_21DB36958@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

void sub_21DB369B0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams;
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  *(v4 + 32) = v3;
  sub_21DB36750();
}

uint64_t (*sub_21DB36A14(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DB36A78;
}

uint64_t sub_21DB36A90(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_21DB36AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  swift_beginAccess();
  v4 = *v3;
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);

  return v4;
}

void sub_21DB36B40(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  swift_beginAccess();
  v6 = *v5;
  *v5 = v2;
  v7 = v2;
  v9 = v6;
  v8 = *(v5 + 8);
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v10 = v8;
  sub_21DB36BC8(&v9);
}

void sub_21DB36BC8(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams];
  swift_beginAccess();
  v7 = *v6;
  sub_21D0D8CF0(0, &qword_280D1B8F0);
  v8 = v7;
  v9 = v3;
  v10 = sub_21DBFB63C();

  if ((v10 & 1) == 0)
  {
    v2[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v2 setNeedsLayout];
  }

  if (v6[1] != v5 || v6[2] != v4)
  {
    [v2 setNeedsLayout];
  }
}

id sub_21DB36CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);

  return v4;
}

void sub_21DB36D28(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  swift_beginAccess();
  v6 = *v5;
  *v5 = v2;
  v8 = v6;
  v7 = *(v5 + 8);
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v9 = v7;
  sub_21DB36BC8(&v8);
}

void (*sub_21DB36DA8(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v4 = *v6;
  *(v4 + 8) = v8;
  v9 = v7;
  return sub_21DB36E50;
}

void sub_21DB36E50(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7] + (*a1)[6];
  v4 = **a1;
  v5 = *v3;
  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  v8 = *(*a1 + 1);
  *v3 = v4;
  *(v3 + 8) = v8;
  if (a2)
  {
    v9 = v4;
    v10 = v5;
    v11 = v7;
    v12 = v6;
    sub_21DB36BC8(&v10);
  }

  else
  {
    v10 = v5;
    v11 = v7;
    v12 = v6;
    sub_21DB36BC8(&v10);
  }

  free(v2);
}

id sub_21DB36EFC(_OWORD *a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v8;
  return sub_21DB36F64(v4, v5, v6, v7);
}

id sub_21DB36F64(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
  result = swift_beginAccess();
  v7.f64[0] = a1;
  v7.f64[1] = a2;
  v8.f64[0] = a3;
  v8.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v7), vceqq_f64(v5[1], v8)))) & 1) == 0)
  {
    [v4 bounds];
    v13 = sub_21D112FD8(v5->f64[0], v5->f64[1], v5[1].f64[0], v5[1].f64[1], v9, v10, v11, v12);
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView];
    if (v21)
    {
      [v21 setFrame_];
    }

    result = *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView];
    if (result)
    {
      return [result setFrame_];
    }
  }

  return result;
}

double sub_21DB37080()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset;
  swift_beginAccess();
  return *v1;
}

id sub_21DB370CC(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_21DB36F64(v10, v11, v12, v13);
}

void (*sub_21DB37144(uint64_t *a1))(_OWORD **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *v4 = *v6;
  v4[1] = v7;
  return sub_21DB371DC;
}

void sub_21DB371DC(_OWORD **a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 7) + *(*a1 + 8));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = (*a1)[1];
  *v2 = **a1;
  *(v2 + 1) = v7;
  sub_21DB36F64(v3, v4, v5, v6);

  free(v1);
}

id TTRListBadgeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRListBadgeView.init(coder:)(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo];
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_280D1BAC8;
  v4 = xmmword_280D1BAD8;
  v5 = xmmword_280D1BAE8;
  v6 = byte_280D1BAF8;
  *v2 = xmmword_280D1BAC8;
  *(v2 + 1) = v4;
  *(v2 + 2) = v5;
  v2[48] = v6;
  v7 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize] = 0x4030000000000000;
  v8 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams];
  v9 = objc_opt_self();
  sub_21D0FB960(v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6);
  *v8 = [v9 whiteColor];
  *(v8 + 2) = 0;
  v8[12] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget] = 0;
  v10 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams];
  *(v10 + 7) = 1;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 24) = 0;
  *v10 = 2;
  *(v10 + 1) = 3;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 12) = 0;
  sub_21D10E2C8(3, 0, 0, 0, 0, 0);
  v10[100] = 0;
  v11 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams];
  *v12 = [v9 tertiaryLabelColor];
  *(v12 + 8) = xmmword_21DC3F230;
  v13 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
  v14 = *(MEMORY[0x277D768C8] + 16);
  *v13 = *MEMORY[0x277D768C8];
  v13[1] = v14;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView] = 0;
  v15 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings];
  *v16 = 1;
  *(v16 + 10) = 0;
  *(v16 + 24) = 0u;
  *(v16 + 8) = 0u;
  v17 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings];
  *v17 = 1;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 10) = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
  v18 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName];
  *v18 = 0;
  v18[1] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue] = 0;
  v19 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate];
  v20 = type metadata accessor for TTRListBadgeView.BackgroundLayer();
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v21 = [objc_allocWithZone(v20) init];
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer] = v21;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for TTRListBadgeView();
  v22 = objc_msgSendSuper2(&v27, sel_initWithCoder_, a1);
  v23 = v22;
  if (v22)
  {
    v24 = v22;
    sub_21D10E5F0();
  }

  return v23;
}

void sub_21DB375DC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView;
  if (!*&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView])
  {
    [v0 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = &v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
    swift_beginAccess();
    v11 = sub_21D112FD8(*v10, v10[1], v10[2], v10[3], v3, v5, v7, v9);
    v15 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView.EmojiView()) initWithFrame_];
    v16 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
    swift_beginAccess();
    v17 = *&v0[v16];
    v18 = [v15 font];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 fontWithSize_];
      [v15 setFont_];
    }

    [v0 addSubview_];
    v21 = *&v0[v1];
    *&v0[v1] = v15;
    v22 = v15;

    sub_21D113250();
    v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v0 setNeedsLayout];
  }
}

id sub_21DB37790(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v5 = [v3 layer];
  [v5 setCornerRadius_];

  v6 = [v3 layer];
  [v6 setCornerCurve_];

  v7 = [objc_opt_self() configurationWithPointSize:5 weight:1 scale:v2];
  v8 = sub_21DBFA12C();
  v9 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v4 setImage_];
  v10 = [objc_opt_self() whiteColor];
  [v4 setTintColor_];

  [v4 setContentMode_];
  [v3 addSubview_];

  return v3;
}

void sub_21DB3797C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer;
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer];
  if (v0[v1] == 1)
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView.SelectionLayer()) init];
    v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer] + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v8 = &v4[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape];
    v9 = *(v5 + 16);
    *v8 = *v5;
    *(v8 + 1) = v9;
    *(v8 + 4) = v6;
    v8[40] = v7;
    v10 = [v0 layer];
    [v10 insertSublayer:v4 atIndex:0];

    v11 = *&v0[v2];
    *&v0[v2] = v4;
    v12 = v4;

    [v0 setNeedsLayout];
    v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v0 setNeedsLayout];
  }

  else
  {
    if (!v3)
    {
      return;
    }

    [v3 removeFromSuperlayer];
    v12 = *&v0[v2];
    *&v0[v2] = 0;
  }
}

uint64_t sub_21DB37AC8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();
}

uint64_t sub_21DB37BE8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21DB37C80(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21DB37D78()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21DB37E10(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21DB37EC0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 0;
  }

  v3 = (v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName);
  swift_beginAccess();
  v2 = *v3;
  v4 = v3[1];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
    swift_beginAccess();
    if (*(v0 + v5))
    {
      v6 = qword_280D1BAA8;
      sub_21DBF8E0C();
      if (v6 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
    }

    else
    {
      v7 = qword_280D16610;
      sub_21DBF8E0C();
      if (v7 != -1)
      {
        swift_once();
      }

      sub_21DBF8E0C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21DC08D00;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_21D17A884();
    *(v8 + 32) = v2;
    *(v8 + 40) = v4;
    v2 = sub_21DBFA17C();
  }

  return v2;
}

uint64_t sub_21DB38134()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for TTRListBadgeView();
  v1 = objc_msgSendSuper2(&v20, sel_accessibilityLabel);
  if (!v1)
  {
LABEL_10:
    v7 = MEMORY[0x277D84F90];
    v11 = sub_21DB37EC0();
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_21D210A84((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  v11 = sub_21DB37EC0();
  if (v12)
  {
LABEL_11:
    v13 = v11;
    v14 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_21D210A84((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
  }

LABEL_16:
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v18 = sub_21DBFA07C();

  return v18;
}

uint64_t sub_21DB383F4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  result = 0;
  if ((*(v0 + v1) & 1) == 0)
  {
    v3 = (v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo);
    swift_beginAccess();
    v4 = *(v3 + 48);
    if (v4 < 0)
    {
      LOBYTE(v9) = *v3;
      v5 = TTRListType.PredefinedSmartListType.color.getter();
      v6 = [v5 accessibilityName];
    }

    else
    {
      if ((v4 & 1) == 0)
      {
        v8 = *(v3 + 4);
        sub_21DBF8E0C();
        return v8;
      }

      v10 = *v3;
      v11 = v3[1];
      v12 = *(v3 + 4);
      v13 = *(v3 + 5);
      LOBYTE(v14) = 1;
      v5 = TTRListColors.Color.nativeColor.getter();
      v6 = [v5 accessibilityName];
    }

    v7 = v6;

    v8 = sub_21DBFA16C();
    return v8;
  }

  return result;
}

id sub_21DB3852C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_21DB385AC()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TTRListBadgeView();
  v1 = objc_msgSendSuper2(&v31, sel_accessibilityIdentifier);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_9:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v7 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_21D210A84((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
LABEL_10:
  v11 = [v0 accessibilityLabel];
  if (v11)
  {
    v12 = v11;
    v13 = sub_21DBFA16C();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
      }

      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v18 >= v17 >> 1)
      {
        v7 = sub_21D210A84((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 2) = v18 + 1;
      v19 = &v7[16 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v15;
    }

    else
    {
    }
  }

  v20 = [v0 accessibilityValue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_21DBFA16C();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      if (v27 >= v26 >> 1)
      {
        v7 = sub_21D210A84((v26 > 1), v27 + 1, 1, v7);
      }

      *(v7 + 2) = v27 + 1;
      v28 = &v7[16 * v27];
      *(v28 + 4) = v22;
      *(v28 + 5) = v24;
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v29 = sub_21DBFA07C();

  return v29;
}

void sub_21DB38864(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_21DBFA16C();
    v6 = a1;
    v7 = sub_21DBFA12C();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for TTRListBadgeView();
  objc_msgSendSuper2(&v9, *a4, v7);
}

char *sub_21DB38960()
{
  v1 = sub_21DB37EC0();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
  }

  else
  {
    v10 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
    swift_beginAccess();
    if (*(v0 + v10))
    {
      return MEMORY[0x277D84F90];
    }

    v11 = (v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo);
    swift_beginAccess();
    v12 = *(v11 + 48);
    if (v12 < 0)
    {
      LOBYTE(v17) = *v11;
      v13 = TTRListType.PredefinedSmartListType.color.getter();
      v14 = [v13 accessibilityName];
    }

    else
    {
      v3 = *(v11 + 4);
      v4 = *(v11 + 5);
      if ((v12 & 1) == 0)
      {
        sub_21DBF8E0C();
        goto LABEL_3;
      }

      v18 = *v11;
      v19 = v11[1];
      v20 = *(v11 + 4);
      LOBYTE(v21) = 1;
      v13 = TTRListColors.Color.nativeColor.getter();
      v14 = [v13 accessibilityName];
    }

    v15 = v14;

    v3 = sub_21DBFA16C();
    v4 = v16;
  }

LABEL_3:
  v5 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_21D210A84((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v4;
  return v5;
}

uint64_t sub_21DB38B90(uint64_t a1, uint64_t *a2)
{
  sub_21DB3ADDC(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  sub_21DB3AE4C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_21DB38BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  return sub_21DB3ADDC(v1 + v3, a1);
}

uint64_t sub_21DB38C4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  sub_21DB3AE4C(a1, v1 + v3);
  return swift_endAccess();
}

BOOL sub_21DB38D0C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  sub_21DB3ADDC(v0 + v1, &v6);
  v2 = v7;
  if (v7)
  {
    sub_21D0D0FD0(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 8))(v0, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_21DB3AEBC(&v6);
  }

  return v2 != 0;
}

id sub_21DB39388(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v8 = a5 + a6;
  v19 = CGRectInset(*&a1, -(a5 + a6), -(a5 + a6));
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  [v6 setFrame_];
  [v6 setBorderWidth_];
  v13 = *&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape];
  if (v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 40] && v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 40] != 1)
  {
    if (*&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 24] | *&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 32] | *&v13 | *&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 16] | *&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 8])
    {
      v15 = MEMORY[0x277CDA138];
      v14 = 0.0;
    }

    else
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v14 = CGRectGetWidth(v20) * 0.5;
      v15 = MEMORY[0x277CDA130];
    }
  }

  else
  {
    v14 = v8 + v13;
    v15 = MEMORY[0x277CDA138];
  }

  [v6 setCornerRadius_];
  v16 = *v15;

  return [v6 setCornerCurve_];
}

id sub_21DB39768(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[40] = 2;
  v4 = &v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings];
  *v4 = 1;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 38) = 0;
  *&v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_userInterfaceLayoutDirection] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_disableSublayerUpdates] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_21DBFC62C();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRListBadgeView.BackgroundLayer();
  v6 = objc_msgSendSuper2(&v8, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id sub_21DB398F8(uint64_t a1, int a2)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = objc_allocWithZone(type metadata accessor for TTRNoDefaultImplicitActionGradientLayer());
  v7 = v3;
  v8 = v5;
  v9 = [v6 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D20;
  v11 = v9;
  v12 = [v7 CGColor];
  type metadata accessor for CGColor(0);
  v14 = v13;
  *(v10 + 56) = v13;
  *(v10 + 32) = v12;
  v15 = [v8 CGColor];
  *(v10 + 88) = v14;
  *(v10 + 64) = v15;
  v16 = sub_21DBFA5DC();

  [v11 setColors_];

  [v11 setStartPoint_];
  [v11 setEndPoint_];

  v17 = v11;
  [v2 bounds];
  [v17 setFrame_];
  v18 = sub_21D6E3724(a2);
  [v17 setCompositingFilter_];

  [v2 addSublayer_];
  sub_21D0D9834(v3, v5);
  return v17;
}

void sub_21DB39AE4()
{
  sub_21D10EC4C(*(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings), *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 8), *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 16), *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 24), *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 32));
  MEMORY[0x223D46650](v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_fillLayer);
  MEMORY[0x223D46650](v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_lighteningLayer);
  MEMORY[0x223D46650](v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_darkeningLayer);
  MEMORY[0x223D46650](v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_customSmartListMaskLayer);

  JUMPOUT(0x223D46650);
}

id sub_21DB39B90(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s15RemindersUICore16TTRListBadgeViewC11ImageParamsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  sub_21D0D8CF0(0, &qword_280D17680);
  return sub_21DBFB63C() & (v2 == v4) & (v3 ^ v5 ^ 1);
}

BOOL _s15RemindersUICore16TTRListBadgeViewC16GradientSettingsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!*a1)
  {
    v19 = *(a2 + 40);
    v20 = *(a1 + 40);
    sub_21D10EC0C(0, v2);
    if (!v8)
    {
      sub_21D10EC0C(0, v7);
      sub_21D0D9834(0, v2);
      if (v4 != v9)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_21D10EC0C(v8, v7);
LABEL_10:
    sub_21D0D9834(v3, v2);
    v14 = v8;
    v15 = v7;
    goto LABEL_23;
  }

  if (!v8)
  {
    sub_21D10EC0C(*a1, v2);
    sub_21D10EC0C(0, v7);
    sub_21D10EC0C(v3, v2);

    goto LABEL_10;
  }

  v19 = *(a2 + 40);
  v20 = *(a1 + 40);
  v18 = *(a2 + 32);
  sub_21D0D8CF0(0, &qword_280D17680);
  sub_21D10EC0C(v3, v2);
  sub_21D10EC0C(v8, v7);
  sub_21D10EC0C(v3, v2);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    sub_21D0D9834(v8, v7);

    v14 = v3;
    v15 = v2;
    goto LABEL_23;
  }

  v12 = sub_21DBFB63C();
  sub_21D0D9834(v8, v7);

  sub_21D0D9834(v3, v2);
  result = 0;
  if (v12)
  {
    v10 = v18;
    if (v4 == v9)
    {
LABEL_13:
      if (v6)
      {
        if (v11)
        {
          sub_21D0D8CF0(0, &qword_280D17680);
          v16 = v10;
          sub_21D10EC0C(v6, v5);
          sub_21D10EC0C(v11, v10);
          sub_21D10EC0C(v6, v5);
          if (sub_21DBFB63C())
          {
            v17 = sub_21DBFB63C();
            sub_21D0D9834(v11, v16);

            sub_21D0D9834(v6, v5);
            if (v17)
            {
              return v20 == v19;
            }

            return 0;
          }

          sub_21D0D9834(v11, v10);

          v14 = v6;
          v15 = v5;
LABEL_23:
          sub_21D0D9834(v14, v15);
          return 0;
        }

        sub_21D10EC0C(v6, v5);
        sub_21D10EC0C(0, v10);
        sub_21D10EC0C(v6, v5);
      }

      else
      {
        sub_21D10EC0C(0, v5);
        if (!v11)
        {
          sub_21D10EC0C(0, v10);
          sub_21D0D9834(0, v5);
          return v20 == v19;
        }

        sub_21D10EC0C(v11, v10);
      }

      sub_21D0D9834(v6, v5);
      v14 = v11;
      v15 = v10;
      goto LABEL_23;
    }
  }

  return result;
}

BOOL _s15RemindersUICore16TTRListBadgeViewC16BackgroundParamsV13GradientStyleO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (*a1 == 1)
  {
    if (v9 != 1)
    {
      goto LABEL_8;
    }

    v16 = 1;
    v17 = *(a2 + 40);
    v18 = *(a2 + 8);
    sub_21DB3A9E8(1, *(a1 + 8), v5, v4, v6, v7, sub_21DB3D254);
    v19 = 1;
    v20 = v18;
    v21 = v11;
    v22 = v10;
    v23 = v12;
    v24 = v17;
LABEL_10:
    sub_21DB3A9E8(v19, v20, v21, v22, v23, v24, sub_21DB3D254);
    return v16;
  }

  if (v2 != 2)
  {
    if ((v9 - 1) < 2)
    {
      goto LABEL_8;
    }

    v50[0] = *a1;
    v50[1] = v3;
    v51 = v5;
    v52 = v4;
    v53 = v6;
    v54 = v7;
    v45[0] = v9;
    v45[1] = v8;
    v46 = v11;
    v47 = v10;
    v48 = v12;
    v49 = v13;
    v38 = v6;
    v39 = v11;
    v27 = v11;
    v36 = v12;
    v37 = v10;
    v28 = v10;
    v29 = v12;
    v30 = v6;
    v31 = v12;
    v32 = v13;
    v44 = v13;
    v33 = v7;
    v34 = v8;
    v42 = v8;
    sub_21DB3A9E8(v9, v8, v27, v28, v31, v32, sub_21D10EC0C);
    sub_21DB3A9E8(v2, v3, v5, v4, v30, v33, sub_21D10EC0C);
    sub_21DB3A9E8(v9, v34, v39, v37, v29, v44, sub_21D10EC0C);
    sub_21DB3A9E8(v2, v3, v5, v4, v38, v33, sub_21D10EC0C);
    v16 = _s15RemindersUICore16TTRListBadgeViewC16GradientSettingsV2eeoiySbAE_AEtFZ_0(v50, v45);
    sub_21DB3A9E8(v2, v3, v5, v4, v38, v33, sub_21DB3D254);
    sub_21DB3A9E8(v9, v42, v39, v37, v36, v44, sub_21DB3D254);
    sub_21DB3A9E8(v9, v42, v39, v37, v36, v44, sub_21DB3D254);
    v19 = v2;
    v20 = v3;
    v21 = v5;
    v22 = v4;
    v23 = v38;
    v24 = v33;
    goto LABEL_10;
  }

  if (v9 != 2)
  {
LABEL_8:
    v40 = *a2;
    v41 = *(a2 + 8);
    v25 = *(a1 + 32);
    v43 = *(a2 + 40);
    v26 = *(a1 + 40);
    sub_21DB3A9E8(*a2, v41, v11, v10, v12, v43, sub_21D10EC0C);
    sub_21DB3A9E8(v2, v3, v5, v4, v25, v26, sub_21D10EC0C);
    sub_21DB3A9E8(v2, v3, v5, v4, v25, v26, sub_21DB3D254);
    sub_21DB3A9E8(v40, v41, v11, v10, v12, v43, sub_21DB3D254);
    return 0;
  }

  v14 = *(a2 + 40);
  v15 = *(a2 + 8);
  sub_21DB3A9E8(2, *(a1 + 8), v5, v4, v6, v7, sub_21DB3D254);
  sub_21DB3A9E8(2, v15, v11, v10, v12, v14, sub_21DB3D254);
  return 1;
}

uint64_t _s15RemindersUICore16TTRListBadgeViewC16BackgroundParamsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 12);
  v10 = *(a1 + 7);
  v9 = *(a1 + 8);
  v12 = *(a1 + 9);
  v11 = *(a1 + 10);
  v13 = *(a1 + 11);
  v14 = *(a1 + 24);
  v15 = a1[100];
  v16 = *a2;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v20 = *(a2 + 3);
  v19 = *(a2 + 4);
  v21 = *(a2 + 5);
  v65 = *(a2 + 12);
  v22 = *(a2 + 8);
  v24 = *(a2 + 9);
  v23 = *(a2 + 10);
  v25 = *(a2 + 11);
  v26 = *(a2 + 24);
  v27 = a2[100];
  if (v2 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

LABEL_6:
    v61 = v10;
    v62 = *(a2 + 7);
    if (v4 == 3)
    {
      v58 = *(a2 + 8);
      v59 = v12;
      v51 = *(a2 + 9);
      v52 = *(a2 + 10);
      v53 = *(a2 + 11);
      v54 = *(a2 + 24);
      v49 = a2[100];
      v50 = v15;
      v55 = v9;
      v56 = v11;
      v57 = v13;
      v60 = v14;
      v64 = v8;
      sub_21DB3A9B0(3, v3, v6, v5, v7, v8);
      if (v17 == 3)
      {
        sub_21DB3A9B0(3, v18, v20, v19, v21, v65);
        sub_21D10E2C8(3, v3, v6, v5, v7, v64);
LABEL_14:
        if (v61 == 1)
        {
          v36 = v55;
          v35 = v56;
          v37 = v59;
          v38 = v57;
          sub_21D10F3DC(1, v55, v59, v56, v57);
          if (v62 == 1)
          {
            sub_21D10F3DC(1, v58, v51, v52, v53);
            sub_21D10EC4C(1, v55, v59, v56, v57);
            return v50 ^ v49 ^ 1u;
          }

          v42 = v58;
          v39 = v52;
          v40 = v53;
          sub_21D10F3DC(v62, v58, v51, v52, v53);
          v41 = 1;
          goto LABEL_20;
        }

        v35 = v56;
        v72 = v61;
        v73 = v55;
        v37 = v59;
        v74 = v59;
        v75 = v56;
        v38 = v57;
        v76 = v57;
        v77 = v60;
        if (v62 == 1)
        {
          v36 = v55;
          sub_21D10F3DC(v61, v55, v59, v56, v57);
          v39 = v52;
          v40 = v53;
          sub_21D10F3DC(1, v58, v51, v52, v53);
          sub_21D10F3DC(v61, v55, v59, v56, v57);
          sub_21D0D9834(v61, v55);
          sub_21D0D9834(v56, v57);
          v41 = v61;
          v42 = v58;
LABEL_20:
          sub_21D10EC4C(v41, v36, v37, v35, v38);
          sub_21D10EC4C(v62, v42, v51, v39, v40);
          return 0;
        }

        v66 = v62;
        v67 = v58;
        LODWORD(v68) = v51;
        v69 = v52;
        v70 = v53;
        v71 = v54;
        sub_21D10F3DC(v61, v55, v59, v56, v57);
        sub_21D10F3DC(v62, v58, v51, v52, v53);
        sub_21D10F3DC(v61, v55, v59, v56, v57);
        v43 = _s15RemindersUICore16TTRListBadgeViewC16GradientSettingsV2eeoiySbAE_AEtFZ_0(&v72, &v66);
        v44 = v69;
        v45 = v70;
        sub_21D0D9834(v66, v67);
        sub_21D0D9834(v44, v45);
        v46 = v75;
        v47 = v76;
        sub_21D0D9834(v72, v73);
        sub_21D0D9834(v46, v47);
        sub_21D10EC4C(v61, v55, v59, v56, v57);
        if (v43)
        {
          return v50 ^ v49 ^ 1u;
        }

        return 0;
      }

      v63 = v18;
      v31 = v18;
      v30 = v65;
      sub_21DB3A9B0(v17, v31, v20, v19, v21, v65);
    }

    else
    {
      v72 = v4;
      v73 = v3;
      v74 = v6;
      v75 = v5;
      v76 = v7;
      v77 = v8;
      if (v17 != 3)
      {
        v58 = v22;
        v59 = v12;
        v51 = v24;
        v52 = v23;
        v53 = v25;
        v54 = v26;
        v49 = v27;
        v50 = v15;
        v55 = v9;
        v56 = v11;
        v57 = v13;
        v60 = v14;
        v66 = v17;
        v67 = v18;
        v68 = v20;
        v69 = v19;
        v70 = v21;
        v71 = v65;
        v48 = v3;
        v32 = v3;
        v33 = v8;
        sub_21DB3A9B0(v4, v32, v6, v5, v7, v8);
        sub_21DB3A9B0(v17, v18, v20, v19, v21, v65);
        sub_21DB3A9B0(v4, v48, v6, v5, v7, v33);
        v34 = _s15RemindersUICore16TTRListBadgeViewC16BackgroundParamsV13GradientStyleO2eeoiySbAG_AGtFZ_0(&v72, &v66);
        sub_21DB3A9E8(v66, v67, v68, v69, v70, v71, sub_21DB3D254);
        sub_21DB3A9E8(v72, v73, v74, v75, v76, v77, sub_21DB3D254);
        sub_21D10E2C8(v4, v48, v6, v5, v7, v33);
        if (!v34)
        {
          return 0;
        }

        goto LABEL_14;
      }

      v64 = v8;
      sub_21DB3A9B0(v4, v3, v6, v5, v7, v8);
      v63 = v18;
      v29 = v18;
      v30 = v65;
      sub_21DB3A9B0(3, v29, v20, v19, v21, v65);
      sub_21DB3A9B0(v4, v3, v6, v5, v7, v64);
      sub_21DB3A9E8(v4, v3, v6, v5, v7, v64, sub_21DB3D254);
    }

    sub_21D10E2C8(v4, v3, v6, v5, v7, v64);
    sub_21D10E2C8(v17, v63, v20, v19, v21, v30);
    return 0;
  }

  result = 0;
  if (v16 != 2 && ((v16 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_21DB3A9B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 3)
  {
    return sub_21DB3A9E8(result, a2, a3, a4, a5, a6, sub_21D10EC0C);
  }

  return result;
}

uint64_t sub_21DB3A9E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if ((result - 1) >= 2)
  {
    a7();

    return (a7)(a4, a5);
  }

  return result;
}

BOOL _s15RemindersUICore16TTRListBadgeViewC9ColorInfoO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v44 = v2;
  v45 = v5;
  v43 = v6;
  if (v8 < 0)
  {
    v24 = *a1;
    if (v15 < 0)
    {
      v42 = *(a2 + 40);
      v25 = *(a2 + 32);
      v26 = *(a2 + 24);
      v27 = *(a2 + 16);
      v28 = *(a2 + 8);
      v29 = *a2;
      v30 = sub_21D11ED58(v3, v10);
      v31 = v7;
      v23 = v30;
      sub_21D113F88(v24, v44, v4, v45, v43, v31, v8);
      sub_21D113F88(v29, v28, v27, v26, v25, v42, v15);
      return v23;
    }

LABEL_7:
    v39 = v9;
    v34 = v10;
    sub_21DB3AD64(v10, v9, v11, v12, v14, v13, v15);
    sub_21D113F88(v24, v44, v4, v45, v43, v7, v8);
    sub_21D113F88(v34, v39, v11, v12, v14, v13, v15);
    return 0;
  }

  v40 = *(a2 + 16);
  if (v15 < 0)
  {
    v32 = *(a2 + 8);
    v33 = *a2;
    v24 = *a1;
    sub_21D0FB960(v3, v2, v4, *(a1 + 24), *(a1 + 32), v7, v8 & 1);
    v10 = v33;
    v9 = v32;
    v11 = v40;
    goto LABEL_7;
  }

  v48[0] = *a1;
  v48[1] = v2;
  v48[2] = v4;
  v48[3] = v5;
  v48[4] = v6;
  v48[5] = v7;
  v49 = v8 & 1;
  v46[0] = v10;
  v46[1] = v9;
  v46[2] = v11;
  v46[3] = v12;
  v46[4] = v14;
  v46[5] = v13;
  v47 = v15 & 1;
  v16 = v11;
  v17 = v4;
  v37 = v4;
  v41 = v13;
  v18 = v13;
  v19 = v9;
  v36 = v10;
  v20 = v3;
  sub_21DB3AD64(v10, v9, v16, v12, v14, v18, v15);
  sub_21DB3AD64(v20, v44, v17, v5, v6, v7, v8);
  sub_21DB3AD64(v20, v44, v17, v5, v6, v7, v8);
  sub_21DB3AD64(v36, v19, v40, v12, v14, v41, v15);
  v21 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(v48, v46);
  v22 = v7;
  v38 = v7;
  v23 = v21;
  sub_21D113F88(v20, v44, v37, v5, v6, v22, v8);
  sub_21D113F88(v36, v19, v40, v12, v14, v41, v15);
  sub_21D113F88(v36, v19, v40, v12, v14, v41, v15);
  sub_21D113F88(v20, v44, v37, v5, v6, v38, v8);
  return v23;
}

id sub_21DB3AD64(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0x80) == 0)
  {
    return sub_21D0FB960(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_21DB3ADDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DB3AE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66A48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DB3AEBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DB3AF28()
{
  result = qword_27CE66A50;
  if (!qword_27CE66A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66A50);
  }

  return result;
}

void destroy for TTRListBadgeView.BackgroundParams(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 - 1) >= 3)
  {
    if (v2)
    {
    }

    v3 = *(a1 + 32);
    if (v3)
    {
    }
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    if (v4 == 1)
    {
      return;
    }
  }

  v5 = *(a1 + 80);
  if (v5)
  {

    v6 = *(a1 + 88);
  }
}

uint64_t initializeWithCopy for TTRListBadgeView.BackgroundParams(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if ((v6 - 1) < 2)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    if (v6 == 3)
    {
LABEL_4:
      v7 = *(a2 + 24);
      *v4 = *v5;
      *(a1 + 24) = v7;
      *(a1 + 36) = *(a2 + 36);
      goto LABEL_11;
    }

    v8 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    v9 = v6;
    v10 = v8;
  }

  else
  {
    *v4 = *v5;
  }

  v11 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  if (v11)
  {
    v12 = *(a2 + 40);
    *(a1 + 32) = v11;
    *(a1 + 40) = v12;
    v13 = v11;
    v14 = v12;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_11:
  v15 = (a2 + 56);
  v16 = *(a2 + 56);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = *(a2 + 72);
      *(a1 + 56) = *v15;
      *(a1 + 72) = v17;
      *(a1 + 84) = *(a2 + 84);
      goto LABEL_20;
    }

    v18 = *(a2 + 64);
    *(a1 + 56) = v16;
    *(a1 + 64) = v18;
    v19 = v16;
    v20 = v18;
  }

  else
  {
    *(a1 + 56) = *v15;
  }

  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  if (v21)
  {
    v22 = *(a2 + 88);
    *(a1 + 80) = v21;
    *(a1 + 88) = v22;
    v23 = v21;
    v24 = v22;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_20:
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t assignWithCopy for TTRListBadgeView.BackgroundParams(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v5 != 3)
  {
    if (v6 == 3)
    {
      sub_21DB3C068(a1 + 8);
LABEL_8:
      v8 = *(v7 + 28);
      v9 = v7[1];
      *v4 = *v7;
      v4[1] = v9;
      *(v4 + 28) = v8;
      goto LABEL_21;
    }

    v10 = (v6 - 1);
    if ((v5 - 1) < 2)
    {
      if (v10 < 2)
      {
        goto LABEL_11;
      }

      if (v6)
      {
LABEL_15:
        *(a1 + 8) = v6;
        v13 = *(a2 + 16);
        *(a1 + 16) = v13;
        v14 = v6;
        v15 = v13;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
      sub_21DB3C038(a1 + 8);
      goto LABEL_8;
    }

    if (v5)
    {
      if (v6)
      {
        *(a1 + 8) = v6;
        v39 = v6;

        v40 = *(a2 + 16);
        v41 = *(a1 + 16);
        *(a1 + 16) = v40;
        v42 = v40;

        goto LABEL_54;
      }

      sub_21D640A9C((a1 + 8));
    }

    else if (v6)
    {
      *(a1 + 8) = v6;
      v52 = *(a2 + 16);
      *(a1 + 16) = v52;
      v53 = v6;
      v54 = v52;
      goto LABEL_54;
    }

    *v4 = *v7;
LABEL_54:
    v55 = *(a1 + 32);
    *(a1 + 24) = *(a2 + 24);
    v16 = *(a2 + 32);
    if (v55)
    {
      if (v16)
      {
        *(a1 + 32) = v16;
        v56 = v16;

        v57 = *(a2 + 40);
        v58 = *(a1 + 40);
        *(a1 + 40) = v57;
        v59 = v57;

        goto LABEL_20;
      }

      sub_21D640A9C((a1 + 32));
    }

    else if (v16)
    {
      goto LABEL_18;
    }

    *(a1 + 32) = *(a2 + 32);
    goto LABEL_20;
  }

  if ((v6 - 1) < 2)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    if (v6 != 3)
    {
      goto LABEL_15;
    }

LABEL_11:
    v11 = *v7;
    v12 = *(a2 + 24);
    *(a1 + 36) = *(a2 + 36);
    *v4 = v11;
    *(a1 + 24) = v12;
    goto LABEL_21;
  }

LABEL_16:
  *v4 = *v7;
LABEL_17:
  *(a1 + 24) = *(a2 + 24);
  v16 = *(a2 + 32);
  if (!v16)
  {
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_20;
  }

LABEL_18:
  *(a1 + 32) = v16;
  v17 = *(a2 + 40);
  *(a1 + 40) = v17;
  v18 = v16;
  v19 = v17;
LABEL_20:
  *(a1 + 48) = *(a2 + 48);
LABEL_21:
  v20 = (a1 + 56);
  v21 = *(a1 + 56);
  v23 = (a2 + 56);
  v22 = *(a2 + 56);
  if (v21 != 1)
  {
    if (v22 == 1)
    {
      sub_21DB3C038(a1 + 56);
      v26 = *(a2 + 84);
      v27 = *(a2 + 72);
      *v20 = *v23;
      *(a1 + 72) = v27;
      *(a1 + 84) = v26;
      goto LABEL_49;
    }

    if (v21)
    {
      if (v22)
      {
        *(a1 + 56) = v22;
        v28 = v22;

        v29 = *(a2 + 64);
        v30 = *(a1 + 64);
        *(a1 + 64) = v29;
        v31 = v29;

        goto LABEL_41;
      }

      sub_21D640A9C((a1 + 56));
    }

    else if (v22)
    {
      *(a1 + 56) = v22;
      v36 = *(a2 + 64);
      *(a1 + 64) = v36;
      v37 = v22;
      v38 = v36;
      goto LABEL_41;
    }

    *v20 = *v23;
LABEL_41:
    v43 = *(a1 + 80);
    *(a1 + 72) = *(a2 + 72);
    v35 = *(a2 + 80);
    if (v43)
    {
      if (v35)
      {
        *(a1 + 80) = v35;
        v44 = v35;

        v45 = *(a2 + 88);
        v46 = *(a1 + 88);
        *(a1 + 88) = v45;
        v47 = v45;

        goto LABEL_48;
      }

      sub_21D640A9C((a1 + 80));
    }

    else if (v35)
    {
      goto LABEL_45;
    }

    *(a1 + 80) = *(a2 + 80);
    goto LABEL_48;
  }

  if (!v22)
  {
    *v20 = *v23;
    goto LABEL_32;
  }

  if (v22 != 1)
  {
    *(a1 + 56) = v22;
    v32 = *(a2 + 64);
    *(a1 + 64) = v32;
    v33 = v22;
    v34 = v32;
LABEL_32:
    *(a1 + 72) = *(a2 + 72);
    v35 = *(a2 + 80);
    if (!v35)
    {
      *(a1 + 80) = *(a2 + 80);
LABEL_48:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_49;
    }

LABEL_45:
    *(a1 + 80) = v35;
    v48 = *(a2 + 88);
    *(a1 + 88) = v48;
    v49 = v35;
    v50 = v48;
    goto LABEL_48;
  }

  v24 = *v23;
  v25 = *(a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  *v20 = v24;
  *(a1 + 72) = v25;
LABEL_49:
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

__n128 __swift_memcpy101_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TTRListBadgeView.BackgroundParams(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v4 == 3)
  {
    goto LABEL_7;
  }

  if (v6 == 3)
  {
    sub_21DB3C068(a1 + 8);
LABEL_7:
    v8 = v7[1];
    *v5 = *v7;
    v5[1] = v8;
    *(v5 + 28) = *(v7 + 28);
    goto LABEL_8;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_7;
  }

  if ((v6 - 1) < 2)
  {
    sub_21DB3C038(a1 + 8);
    goto LABEL_7;
  }

  if (v4)
  {
    if (v6)
    {
      *(a1 + 8) = v6;

      v15 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);

      goto LABEL_29;
    }

    sub_21D640A9C((a1 + 8));
  }

  *v5 = *v7;
LABEL_29:
  v20 = *(a2 + 32);
  v21 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  if (!v21)
  {
LABEL_33:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_34;
  }

  if (!v20)
  {
    sub_21D640A9C((a1 + 32));
    goto LABEL_33;
  }

  *(a1 + 32) = v20;

  v22 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

LABEL_34:
  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v10 = (a1 + 56);
  v9 = *(a1 + 56);
  v12 = (a2 + 56);
  v11 = *(a2 + 56);
  if (v9 != 1)
  {
    if (v11 == 1)
    {
      sub_21DB3C038(a1 + 56);
      goto LABEL_11;
    }

    if (v9)
    {
      if (v11)
      {
        *(a1 + 56) = v11;

        v14 = *(a1 + 64);
        *(a1 + 64) = *(a2 + 64);

        goto LABEL_20;
      }

      sub_21D640A9C((a1 + 56));
    }

    *v10 = *v12;
LABEL_20:
    v16 = *(a2 + 80);
    v17 = *(a1 + 80);
    *(a1 + 72) = *(a2 + 72);
    if (v17)
    {
      if (v16)
      {
        *(a1 + 80) = v16;

        v18 = *(a1 + 88);
        *(a1 + 88) = *(a2 + 88);

LABEL_25:
        *(a1 + 96) = *(a2 + 96);
        goto LABEL_26;
      }

      sub_21D640A9C((a1 + 80));
    }

    *(a1 + 80) = *(a2 + 80);
    goto LABEL_25;
  }

LABEL_11:
  v13 = *(a2 + 72);
  *v10 = *v12;
  *(a1 + 72) = v13;
  *(a1 + 84) = *(a2 + 84);
LABEL_26:
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.BackgroundParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 101))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.BackgroundParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 101) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 101) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

void destroy for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t a1)
{
  v1 = *a1;
  LODWORD(v2) = -1;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    v2 = *a1;
  }

  if (v2 - 1 < 0)
  {
    if (v1)
    {
    }

    v4 = *(a1 + 24);
    if (v4)
    {

      v5 = *(a1 + 32);
    }
  }
}

uint64_t initializeWithCopy for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  LODWORD(v4) = -1;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v4 = *a2;
  }

  if (v4 - 1 < 0)
  {
    if (v3)
    {
      v6 = *(a2 + 8);
      *result = v3;
      *(result + 8) = v6;
      v7 = result;
      v8 = v3;
      v9 = v6;
      result = v7;
    }

    else
    {
      *result = *a2;
    }

    v10 = *(a2 + 24);
    *(result + 16) = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      *(result + 24) = v10;
      *(result + 32) = v11;
      v12 = result;
      v13 = v10;
      v14 = v11;
      result = v12;
    }

    else
    {
      *(result + 24) = *(a2 + 24);
    }

    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    *(result + 28) = *(a2 + 28);
  }

  return result;
}

uint64_t assignWithCopy for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  LODWORD(v5) = -1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v6) = -1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = v6 - 1;
  v8 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v5 = *a2;
  }

  v9 = v5 - 1;
  if (v7 < 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      if (v4)
      {
      }

      v13 = *(a1 + 24);
      if (v13)
      {
      }

      goto LABEL_15;
    }

    if (v4)
    {
      if (v8)
      {
        *a1 = v8;
        v16 = v8;

        v17 = *(a2 + 1);
        v18 = *(a1 + 8);
        *(a1 + 8) = v17;
        v19 = v17;

        goto LABEL_27;
      }

      sub_21D640A9C(a1);
    }

    else if (v8)
    {
      *a1 = v8;
      v24 = *(a2 + 1);
      *(a1 + 8) = v24;
      v25 = v8;
      v26 = v24;
      goto LABEL_27;
    }

    *a1 = *a2;
LABEL_27:
    v27 = *(a1 + 24);
    *(a1 + 16) = *(a2 + 4);
    v20 = *(a2 + 3);
    if (v27)
    {
      if (v20)
      {
        *(a1 + 24) = v20;
        v28 = v20;

        v29 = *(a2 + 4);
        v30 = *(a1 + 32);
        *(a1 + 32) = v29;
        v31 = v29;

        goto LABEL_34;
      }

      sub_21D640A9C((a1 + 24));
    }

    else if (v20)
    {
      goto LABEL_21;
    }

    *(a1 + 24) = *(a2 + 24);
    goto LABEL_34;
  }

  if (v9 < 0)
  {
    if (v8)
    {
      *a1 = v8;
      v10 = *(a2 + 1);
      *(a1 + 8) = v10;
      v11 = v8;
      v12 = v10;
    }

    else
    {
      *a1 = *a2;
    }

    *(a1 + 16) = *(a2 + 4);
    v20 = *(a2 + 3);
    if (!v20)
    {
      *(a1 + 24) = *(a2 + 24);
      goto LABEL_34;
    }

LABEL_21:
    *(a1 + 24) = v20;
    v21 = *(a2 + 4);
    *(a1 + 32) = v21;
    v22 = v20;
    v23 = v21;
LABEL_34:
    *(a1 + 40) = *(a2 + 10);
    return a1;
  }

LABEL_15:
  v14 = *a2;
  v15 = a2[1];
  *(a1 + 28) = *(a2 + 28);
  *a1 = v14;
  *(a1 + 16) = v15;
  return a1;
}

uint64_t assignWithTake for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  LODWORD(v5) = -1;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    v5 = *a1;
  }

  if (v5 - 1 >= 0)
  {
    goto LABEL_4;
  }

  v8 = *a2;
  LODWORD(v9) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v9 = *a2;
  }

  if (v9 - 1 < 0)
  {
    if (v4)
    {
      if (v8)
      {
        *a1 = v8;

        v11 = *(a1 + 8);
        *(a1 + 8) = a2[1];

        goto LABEL_18;
      }

      sub_21D640A9C(a1);
    }

    *a1 = *a2;
LABEL_18:
    v12 = a2[3];
    v13 = *(a1 + 24);
    *(a1 + 16) = *(a2 + 4);
    if (v13)
    {
      if (v12)
      {
        *(a1 + 24) = v12;

        v14 = *(a1 + 32);
        *(a1 + 32) = a2[4];

LABEL_23:
        *(a1 + 40) = *(a2 + 10);
        return a1;
      }

      sub_21D640A9C((a1 + 24));
    }

    *(a1 + 24) = *(a2 + 3);
    goto LABEL_23;
  }

  if (v4)
  {
  }

  v10 = *(a1 + 24);
  if (v10)
  {
  }

LABEL_4:
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 44))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 28) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_21DB3C864(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    v2 = a2 - 0x7FFFFFFF;
    *(result + 8) = 0u;
    *(result + 40) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t assignWithCopy for TTRListBadgeView.ImageParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t assignWithTake for TTRListBadgeView.ImageParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.ImageParams(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.ImageParams(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRListBadgeView.SelectionParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TTRListBadgeView.SelectionParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t initializeWithCopy for TTRListBadgeView.ColorInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21DB3AD64(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for TTRListBadgeView.ColorInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21DB3AD64(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_21D113F88(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t assignWithTake for TTRListBadgeView.ColorInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  sub_21D113F88(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.ColorInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 49))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 48) & 0x7E | (*(a1 + 48) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.ColorInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRListBadgeView.BackgroundLayer.GradientAndBorderSettings(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != 1)
  {
    if (v5 == 1)
    {
      sub_21DB3C038(a1);
      v8 = *(a2 + 28);
      v9 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 28) = v8;
      goto LABEL_26;
    }

    if (v4)
    {
      if (v5)
      {
        *a1 = v5;
        v10 = v5;

        v11 = *(a2 + 1);
        v12 = *(a1 + 8);
        *(a1 + 8) = v11;
        v13 = v11;

        goto LABEL_18;
      }

      sub_21D640A9C(a1);
    }

    else if (v5)
    {
      *a1 = v5;
      v18 = *(a2 + 1);
      *(a1 + 8) = v18;
      v19 = v5;
      v20 = v18;
      goto LABEL_18;
    }

    *a1 = *a2;
LABEL_18:
    v21 = *(a1 + 24);
    *(a1 + 16) = *(a2 + 4);
    v17 = *(a2 + 3);
    if (v21)
    {
      if (v17)
      {
        *(a1 + 24) = v17;
        v22 = v17;

        v23 = *(a2 + 4);
        v24 = *(a1 + 32);
        *(a1 + 32) = v23;
        v25 = v23;

        goto LABEL_25;
      }

      sub_21D640A9C((a1 + 24));
    }

    else if (v17)
    {
      goto LABEL_22;
    }

    *(a1 + 24) = *(a2 + 24);
    goto LABEL_25;
  }

  if (!v5)
  {
    *a1 = *a2;
    goto LABEL_12;
  }

  if (v5 != 1)
  {
    *a1 = v5;
    v14 = *(a2 + 1);
    *(a1 + 8) = v14;
    v15 = v5;
    v16 = v14;
LABEL_12:
    *(a1 + 16) = *(a2 + 4);
    v17 = *(a2 + 3);
    if (!v17)
    {
      *(a1 + 24) = *(a2 + 24);
LABEL_25:
      *(a1 + 40) = *(a2 + 10);
      goto LABEL_26;
    }

LABEL_22:
    *(a1 + 24) = v17;
    v26 = *(a2 + 4);
    *(a1 + 32) = v26;
    v27 = v17;
    v28 = v26;
    goto LABEL_25;
  }

  v6 = *a2;
  v7 = a2[1];
  *(a1 + 28) = *(a2 + 28);
  *a1 = v6;
  *(a1 + 16) = v7;
LABEL_26:
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  return a1;
}

__n128 __swift_memcpy46_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRListBadgeView.BackgroundLayer.GradientAndBorderSettings(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  if (*result != 1)
  {
    v5 = *a2;
    if (*a2 == 1)
    {
      v6 = result;
      sub_21DB3C038(result);
      result = v6;
      v7 = *(a2 + 1);
      *v6 = *a2;
      v6[1] = v7;
      *(v6 + 28) = *(a2 + 28);
      goto LABEL_16;
    }

    if (v3)
    {
      if (v5)
      {
        *result = v5;
        v8 = result;

        v9 = *(v8 + 8);
        *(v8 + 8) = a2[1];

        result = v8;
      }

      else
      {
        v10 = result;
        sub_21D640A9C(result);
        result = v10;
        *v10 = *a2;
      }
    }

    else
    {
      *result = *a2;
    }

    v11 = a2[3];
    v13 = (result + 24);
    v12 = *(result + 24);
    *(result + 16) = *(a2 + 4);
    if (v12)
    {
      if (v11)
      {
        *(result + 24) = v11;
        v14 = result;

        v15 = *(v14 + 32);
        *(v14 + 32) = a2[4];

        result = v14;
LABEL_15:
        *(result + 40) = *(a2 + 10);
        goto LABEL_16;
      }

      v16 = result;
      sub_21D640A9C((result + 24));
      result = v16;
    }

    *v13 = *(a2 + 3);
    goto LABEL_15;
  }

  v4 = *(a2 + 1);
  *result = *a2;
  *(result + 16) = v4;
  *(result + 28) = *(a2 + 28);
LABEL_16:
  *(result + 44) = *(a2 + 44);
  *(result + 45) = *(a2 + 45);
  return result;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.BackgroundLayer.GradientAndBorderSettings(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 46))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.BackgroundLayer.GradientAndBorderSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_21DB3D128()
{
  v1 = v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 40) = 2;
  v2 = v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings;
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 38) = 0;
  *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_userInterfaceLayoutDirection) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_21DBFC31C();
  __break(1u);
}

uint64_t TTRReminderProtocol.isReminderInTemplate.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = [v2 entityName];

  v4 = sub_21DBFA16C();
  v6 = v5;

  v7 = [objc_opt_self() cdEntityNameForSavedReminder];
  v8 = sub_21DBFA16C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21DBFC64C();
  }

  return v12 & 1;
}

id REMReminder.parentReminderID.getter()
{
  v1 = [v0 parentReminder];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 objectID];

  return v3;
}

unint64_t sub_21DB3D3F0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_21D0D8CF0(0, a3);
  result = sub_21DB3E97C(v5, a1, v5, a2);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v9 = result;
  v10 = sub_21DBFBD7C();
  result = v9;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223D44740](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_6:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t REMReminder.ttrList.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 list];
  result = sub_21D0D8CF0(0, &qword_280D17690);
  a1[3] = result;
  a1[4] = &protocol witness table for REMList;
  *a1 = v3;
  return result;
}

id REMReminderChangeItem.ttrList.getter@<X0>(void *a1@<X8>)
{
  result = [v1 listChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &unk_280D177F0);
    v5 = &protocol witness table for REMListChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t TTRReminderProtocol.isRecurringReminderThatCanAdvanceForward.getter(uint64_t a1, uint64_t a2)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21DBF5A2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = sub_21DBF5C4C();
  v64 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v56 - v17;
  v18 = sub_21DBF563C();
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x28223BE20](v18);
  v62 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v65 = &v56 - v25;
  if (((*(a2 + 64))(a1, a2, v24) & 1) != 0 || ((*(a2 + 120))(a1, a2) & 1) == 0 || (v59 = v7, v60 = v14, v58 = v5, v26 = *(a2 + 104), (v27 = v26(a1, a2)) == 0))
  {
    v37 = 0;
    return v37 & 1;
  }

  v28 = v27;
  v57 = v4;
  v29 = [v27 date];

  sub_21DBF55FC();
  (*(v66 + 32))(v65, v22, v67);
  v30 = v26(a1, a2);
  if (!v30)
  {
    v35 = v64;
    v33 = v60;
    (*(v64 + 56))(v13, 1, 1, v60);
    v39 = v57;
    v34 = v59;
    goto LABEL_12;
  }

  v31 = v30;
  v32 = [v30 timeZone];

  v34 = v59;
  v33 = v60;
  v35 = v64;
  if (v32)
  {
    sub_21DBF5C2C();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v39 = v57;
  (*(v35 + 56))(v10, v36, 1, v33);
  sub_21D605BAC(v10, v13);
  if ((*(v35 + 48))(v13, 1, v33) == 1)
  {
LABEL_12:
    v40 = [objc_opt_self() defaultTimeZone];
    v41 = v63;
    sub_21DBF5C2C();

    if ((*(v35 + 48))(v13, 1, v33) != 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE60DB0);
    }

    goto LABEL_15;
  }

  v41 = v63;
  (*(v35 + 32))(v63, v13, v33);
LABEL_15:
  if ((*(a2 + 136))(a1, a2))
  {
    sub_21D0D8CF0(0, &qword_280D177E8);
    v42 = sub_21DBFA5DC();
  }

  else
  {
    v42 = 0;
  }

  v43 = v65;
  v44 = objc_opt_self();
  v45 = sub_21DBF55BC();
  v46 = sub_21DBF5C0C();
  v68[0] = 0;
  [v44 repeatTypeForRecurrenceRules:v42 recurrenceDate:v45 recurrenceTimeZone:v46 getRepeatEnd:v68];

  v47 = v68[0];
  if (v68[0])
  {
    v48 = v62;
    sub_21DBF55FC();
    v49 = v47;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    (*(v35 + 16))(v61, v41, v33);
    sub_21DBF59FC();
    if (sub_21DBF59AC())
    {

      (*(v58 + 8))(v34, v39);
      v50 = *(v66 + 8);
      v51 = v48;
      v52 = v67;
      v50(v51, v67);
      (*(v35 + 8))(v41, v33);
      v50(v43, v52);

      v37 = 0;
    }

    else
    {
      v37 = sub_21DBF55CC();

      (*(v58 + 8))(v34, v39);
      v53 = v67;
      v54 = v48;
      v55 = *(v66 + 8);
      v55(v54, v67);
      (*(v35 + 8))(v41, v33);
      v55(v43, v53);
    }
  }

  else
  {
    (*(v35 + 8))(v41, v33);
    (*(v66 + 8))(v43, v67);
    v37 = 1;
  }

  return v37 & 1;
}

unint64_t TTRReminderProtocol.mostRelevantLocationRelatedTrigger()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = TTRReminderProtocol.mostRelevantAlarmLocationTrigger()(a1, a2);
  if (result)
  {
    *a3 = result;
    *(a3 + 8) = 0;
  }

  else
  {
    result = TTRReminderProtocol.mostRelevantVehicleTrigger()(a1, a2);
    if (result)
    {
      *a3 = result;
      v7 = 1;
    }

    else
    {
      *a3 = 0;
      v7 = -1;
    }

    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t TTRReminderProtocol.priorityLevel.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 88))();

  return REMReminderPriorityLevelForPriority();
}

id REMReminder.ttrHashtagContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 hashtagContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D0C228);
    v5 = &protocol witness table for REMReminderHashtagContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMReminder.ttrAttachmentContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 attachmentContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D17720);
    v5 = &protocol witness table for REMReminderAttachmentContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMReminder.ttrFlaggedContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 flaggedContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D17730);
    v5 = &protocol witness table for REMReminderFlaggedContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMReminder.ttrAssignmentContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 assignmentContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D17728);
    v5 = &protocol witness table for REMReminderAssignmentContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3DFB8()
{
  v1 = [*v0 parentReminder];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 objectID];

  return v3;
}

uint64_t sub_21DB3E01C(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4)
{
  v6 = [*v4 *a3];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_21D0D8CF0(0, a4);
  v8 = sub_21DBFA5EC();

  return v8;
}

id sub_21DB3E094()
{
  v1 = [*v0 store];

  return v1;
}

uint64_t sub_21DB3E0CC@<X0>(void *a1@<X8>)
{
  v3 = [*v1 list];
  result = sub_21D0D8CF0(0, &qword_280D17690);
  a1[3] = result;
  a1[4] = &protocol witness table for REMList;
  *a1 = v3;
  return result;
}

id sub_21DB3E130@<X0>(void *a1@<X8>)
{
  result = [*v1 attachmentContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D17720);
    v5 = &protocol witness table for REMReminderAttachmentContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3E1A4@<X0>(void *a1@<X8>)
{
  result = [*v1 flaggedContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D17730);
    v5 = &protocol witness table for REMReminderFlaggedContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3E218@<X0>(void *a1@<X8>)
{
  result = [*v1 assignmentContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D17728);
    v5 = &protocol witness table for REMReminderAssignmentContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3E28C@<X0>(void *a1@<X8>)
{
  result = [*v1 hashtagContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D0C228);
    v5 = &protocol witness table for REMReminderHashtagContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMReminderChangeItem.ttrAttachmentContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 attachmentContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D176D8);
    v5 = &protocol witness table for REMReminderAttachmentContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMReminderChangeItem.ttrFlaggedContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 flaggedContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D176E8);
    v5 = &protocol witness table for REMReminderFlaggedContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMReminderChangeItem.ttrAssignmentContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 assignmentContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D176E0);
    v5 = &protocol witness table for REMReminderAssignmentContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMReminderChangeItem.ttrHashtagContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 hashtagContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D0C218);
    v5 = &protocol witness table for REMReminderHashtagContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3E4D0()
{
  v1 = [*v0 parentReminderID];

  return v1;
}

uint64_t sub_21DB3E508()
{
  v1 = [*v0 titleAsString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t sub_21DB3E570@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

id sub_21DB3E63C@<X0>(void *a1@<X8>)
{
  result = [*v1 listChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &unk_280D177F0);
    v5 = &protocol witness table for REMListChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3E6B0@<X0>(void *a1@<X8>)
{
  result = [*v1 attachmentContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D176D8);
    v5 = &protocol witness table for REMReminderAttachmentContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3E724@<X0>(void *a1@<X8>)
{
  result = [*v1 flaggedContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D176E8);
    v5 = &protocol witness table for REMReminderFlaggedContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3E798@<X0>(void *a1@<X8>)
{
  result = [*v1 assignmentContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D176E0);
    v5 = &protocol witness table for REMReminderAssignmentContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21DB3E80C@<X0>(void *a1@<X8>)
{
  result = [*v1 hashtagContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D0C218);
    v5 = &protocol witness table for REMReminderHashtagContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_21DB3E880(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4)
{
  v6 = [*v4 *a3];
  sub_21D0D8CF0(0, a4);
  v7 = sub_21DBFA5EC();

  return v7;
}

uint64_t sub_21DB3E8EC(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = [*v6 *a3];
  sub_21D0D8CF0(0, a4);
  sub_21D19F2B8(a6, a4);
  v10 = sub_21DBFAAAC();

  return v10;
}

uint64_t sub_21DB3E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 80))(a2, a4);
  if (!v4)
  {
    return sub_21DBFA68C();
  }

  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64838);
  sub_21DB3F7F4();
  v5 = sub_21DBFA4EC();

  return v5;
}

uint64_t TTRReminderProtocol.dueDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v4 = sub_21DBF583C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF5A2C();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_21DBF509C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 96))(v23, a2, v16);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE58D60);
    v19 = sub_21DBF563C();
    return (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    (*(v5 + 104))(v7, *MEMORY[0x277CC9830], v4);
    sub_21DBF584C();
    (*(v5 + 8))(v7, v4);
    sub_21DBF597C();
    (*(v21 + 8))(v10, v22);
    return (*(v15 + 8))(v18, v14);
  }
}

void *TTRReminderProtocol.supportsHourlyRecurrence.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v5 = [v4 supportsHourlyRecurrence];

  if (!v5)
  {
    return 0;
  }

  result = (*(a2 + 104))(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = [result isAllDay];

    return (v8 ^ 1);
  }

  return result;
}

BOOL TTRReminderProtocol.isSubtask.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t TTRReminderProtocol.isReminderDueDateSameDayAsToday.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5A2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v43 - v12;
  v13 = sub_21DBF5C4C();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = &v43 - v16;
  v17 = sub_21DBF563C();
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v43 - v22;
  if ((*(a2 + 64))(a1, a2, v21) & 1) == 0 && ((*(a2 + 120))(a1, a2))
  {
    v45 = v7;
    v46 = v5;
    v44 = *(a2 + 104);
    v24 = v44(a1, a2);
    if (v24)
    {
      v25 = v24;
      v43 = v4;
      v26 = [v24 date];

      sub_21DBF55FC();
      v27 = v17;
      (*(v52 + 32))(v23, v19, v17);
      v28 = v44(a1, a2);
      if (v28)
      {
        v29 = v28;
        v30 = [v28 timeZone];

        v31 = v43;
        v32 = v45;
        v33 = v46;
        v35 = v50;
        v34 = v51;
        v36 = v49;
        if (v30)
        {
          sub_21DBF5C2C();

          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

        (*(v35 + 56))(v10, v37, 1, v34);
        v41 = v10;
        v40 = v47;
        sub_21D605BAC(v41, v47);
        if ((*(v35 + 48))(v40, 1, v34) != 1)
        {
          (*(v35 + 32))(v36, v40, v34);
LABEL_15:
          _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
          (*(v35 + 16))(v48, v36, v34);
          sub_21DBF59FC();
          v38 = sub_21DBF589C();
          (*(v33 + 8))(v32, v31);
          (*(v35 + 8))(v36, v34);
          (*(v52 + 8))(v23, v27);
          return v38 & 1;
        }
      }

      else
      {
        v35 = v50;
        v34 = v51;
        v40 = v47;
        (*(v50 + 56))(v47, 1, 1, v51);
        v31 = v43;
        v32 = v45;
        v33 = v46;
        v36 = v49;
      }

      v42 = [objc_opt_self() defaultTimeZone];
      sub_21DBF5C2C();

      if ((*(v35 + 48))(v40, 1, v34) != 1)
      {
        sub_21D0CF7E0(v40, &unk_27CE60DB0);
      }

      goto LABEL_15;
    }
  }

  v38 = 0;
  return v38 & 1;
}

uint64_t sub_21DB3F410@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  [*a1 trigger];
  sub_21D0D8CF0(0, &qword_280D17828);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

id Either<>.reminder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = 16;
  if (*(v2 + 8))
  {
    v4 = 24;
  }

  v5 = &protocol witness table for REMReminder;
  v6 = *(a1 + v4);
  if (*(v2 + 8))
  {
    v5 = &protocol witness table for REMReminderChangeItem;
  }

  a2[3] = v6;
  a2[4] = v5;
  *a2 = v3;
  return v3;
}

unint64_t sub_21DB3F7F4()
{
  result = qword_280D178B0;
  if (!qword_280D178B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE64838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D178B0);
  }

  return result;
}

uint64_t static TTRAccesibility.General.Announcements.moreOrFewerOptionsShown(isShowingMoreOptions:)(char a1)
{
  if (a1)
  {
    if (qword_27CE57188 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CE66AD0;
  }

  else
  {
    if (qword_27CE57190 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CE66AE0;
  }

  v2 = *v1;
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRAccesibility.RemindersList.Attribute.localizedString.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v1 == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v1 == 3)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_33;
  }

  if (*v0 <= 7u)
  {
    if (v1 == 5)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v1 == 6)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_33;
  }

  if (v1 == 8)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_33;
  }

  if (v1 == 9)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_33;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_33:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21DB40084()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D1AA30 = result;
  *algn_280D1AA38 = v1;
  return result;
}

uint64_t sub_21DB40164()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D1AA48 = result;
  *algn_280D1AA50 = v1;
  return result;
}

uint64_t sub_21DB40238()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D1B940 = result;
  unk_280D1B948 = v1;
  return result;
}

uint64_t sub_21DB4030C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66AA0 = result;
  *algn_27CE66AA8 = v1;
  return result;
}

uint64_t sub_21DB403EC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66AB0 = result;
  *algn_27CE66AB8 = v1;
  return result;
}

uint64_t sub_21DB404C0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66AC0 = result;
  *algn_27CE66AC8 = v1;
  return result;
}

uint64_t sub_21DB4059C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66AD0 = result;
  *algn_27CE66AD8 = v1;
  return result;
}

uint64_t sub_21DB40688()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66AE0 = result;
  *algn_27CE66AE8 = v1;
  return result;
}

uint64_t sub_21DB40774()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66AF0 = result;
  *algn_27CE66AF8 = v1;
  return result;
}

uint64_t sub_21DB40860()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B00 = result;
  *algn_27CE66B08 = v1;
  return result;
}

uint64_t sub_21DB4094C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B10 = result;
  *algn_27CE66B18 = v1;
  return result;
}

uint64_t sub_21DB40A38()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B20 = result;
  *algn_27CE66B28 = v1;
  return result;
}

uint64_t sub_21DB40B24()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B30 = result;
  *algn_27CE66B38 = v1;
  return result;
}

uint64_t sub_21DB40C10()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B40 = result;
  *algn_27CE66B48 = v1;
  return result;
}

uint64_t sub_21DB40CFC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B50 = result;
  *algn_27CE66B58 = v1;
  return result;
}

uint64_t sub_21DB40DE4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B60 = result;
  *algn_27CE66B68 = v1;
  return result;
}

uint64_t sub_21DB40ED0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B70 = result;
  *algn_27CE66B78 = v1;
  return result;
}

uint64_t sub_21DB40FB0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B80 = result;
  *algn_27CE66B88 = v1;
  return result;
}

uint64_t sub_21DB4108C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66B90 = result;
  *algn_27CE66B98 = v1;
  return result;
}

uint64_t sub_21DB41168()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66BA0 = result;
  *algn_27CE66BA8 = v1;
  return result;
}

uint64_t sub_21DB41248()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66BB0 = result;
  *algn_27CE66BB8 = v1;
  return result;
}

void sub_21DB41328()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE66BC0 = v1;
  *algn_27CE66BC8 = v3;
}

void sub_21DB41408()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE66BD0 = v1;
  *algn_27CE66BD8 = v3;
}

void sub_21DB414E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_280D1AA80 = v1;
  *algn_280D1AA88 = v3;
}

uint64_t sub_21DB415C8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66BE0 = result;
  *algn_27CE66BE8 = v1;
  return result;
}

void sub_21DB416B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE66BF0 = v1;
  *algn_27CE66BF8 = v3;
}

void sub_21DB41790()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_280D1AA68 = v1;
  unk_280D1AA70 = v3;
}

void sub_21DB41870()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE66C00 = v1;
  *algn_27CE66C08 = v3;
}

uint64_t sub_21DB41950()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16618 = result;
  unk_280D16620 = v1;
  return result;
}

uint64_t sub_21DB41A30()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66C10 = result;
  *algn_27CE66C18 = v1;
  return result;
}

uint64_t sub_21DB41B8C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66C30 = result;
  *algn_27CE66C38 = v1;
  return result;
}

uint64_t sub_21DB41C68()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66C40 = result;
  *algn_27CE66C48 = v1;
  return result;
}

uint64_t sub_21DB41D44()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D1AAB8 = result;
  unk_280D1AAC0 = v1;
  return result;
}

uint64_t sub_21DB41E30()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D1AAD0 = result;
  unk_280D1AAD8 = v1;
  return result;
}

uint64_t sub_21DB41F1C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66C50 = result;
  *algn_27CE66C58 = v1;
  return result;
}

uint64_t sub_21DB42008()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66C60 = result;
  *algn_27CE66C68 = v1;
  return result;
}

uint64_t sub_21DB420F4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D1AA98 = result;
  unk_280D1AAA0 = v1;
  return result;
}

uint64_t sub_21DB421E0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66C70 = result;
  *algn_27CE66C78 = v1;
  return result;
}

uint64_t sub_21DB422CC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66C80 = result;
  *algn_27CE66C88 = v1;
  return result;
}

uint64_t sub_21DB423B8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66C90 = result;
  *algn_27CE66C98 = v1;
  return result;
}

uint64_t sub_21DB424A4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66CA0 = result;
  *algn_27CE66CA8 = v1;
  return result;
}

uint64_t sub_21DB4258C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16660 = result;
  *algn_280D16668 = v1;
  return result;
}

uint64_t sub_21DB42674()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66CB0 = result;
  *algn_27CE66CB8 = v1;
  return result;
}

uint64_t sub_21DB42760()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66CC0 = result;
  *algn_27CE66CC8 = v1;
  return result;
}

uint64_t sub_21DB42848()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16648 = result;
  unk_280D16650 = v1;
  return result;
}

uint64_t sub_21DB42924()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16630 = result;
  *algn_280D16638 = v1;
  return result;
}

uint64_t sub_21DB42A04()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16678 = result;
  unk_280D16680 = v1;
  return result;
}

uint64_t sub_21DB42AEC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66CD0 = result;
  *algn_27CE66CD8 = v1;
  return result;
}

uint64_t sub_21DB42BD8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66CE0 = result;
  *algn_27CE66CE8 = v1;
  return result;
}

uint64_t sub_21DB42CC0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66CF0 = result;
  *algn_27CE66CF8 = v1;
  return result;
}

uint64_t sub_21DB42DBC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D1AB38 = result;
  unk_280D1AB40 = v1;
  return result;
}

uint64_t sub_21DB42E98()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D00 = result;
  *algn_27CE66D08 = v1;
  return result;
}

uint64_t sub_21DB42F80()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D167B8 = result;
  unk_280D167C0 = v1;
  return result;
}

uint64_t sub_21DB43068()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D10 = result;
  *algn_27CE66D18 = v1;
  return result;
}

uint64_t sub_21DB43128()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D20 = result;
  *algn_27CE66D28 = v1;
  return result;
}

uint64_t sub_21DB431F0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D167A0 = result;
  *algn_280D167A8 = v1;
  return result;
}

uint64_t sub_21DB432B4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D167D8 = result;
  unk_280D167E0 = v1;
  return result;
}

uint64_t sub_21DB43378()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D30 = result;
  *algn_27CE66D38 = v1;
  return result;
}

uint64_t sub_21DB43430()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D40 = result;
  *algn_27CE66D48 = v1;
  return result;
}

uint64_t sub_21DB434F4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D50 = result;
  *algn_27CE66D58 = v1;
  return result;
}

uint64_t static TTRAccesibility.RemindersList.Label.noSectionHeading(isGroceryList:)(char a1)
{
  if (a1)
  {
    if (qword_27CE57308 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CE66D50;
  }

  else
  {
    if (qword_280D167D0 != -1)
    {
      swift_once();
    }

    v1 = &qword_280D167D8;
  }

  v2 = *v1;
  sub_21DBF8E0C();
  return v2;
}

uint64_t sub_21DB43664()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D60 = result;
  *algn_27CE66D68 = v1;
  return result;
}

uint64_t sub_21DB4374C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D70 = result;
  *algn_27CE66D78 = v1;
  return result;
}

uint64_t sub_21DB43834()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D80 = result;
  *algn_27CE66D88 = v1;
  return result;
}

uint64_t sub_21DB43914()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66D90 = result;
  *algn_27CE66D98 = v1;
  return result;
}

uint64_t sub_21DB439FC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66DA0 = result;
  *algn_27CE66DA8 = v1;
  return result;
}

uint64_t sub_21DB43AE8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66DB0 = result;
  *algn_27CE66DB8 = v1;
  return result;
}

uint64_t sub_21DB43BD4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66DC0 = result;
  *algn_27CE66DC8 = v1;
  return result;
}

uint64_t sub_21DB43CC4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66DD0 = result;
  *algn_27CE66DD8 = v1;
  return result;
}

uint64_t sub_21DB43DB0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66DE0 = result;
  *algn_27CE66DE8 = v1;
  return result;
}

uint64_t sub_21DB43E9C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66DF0 = result;
  *algn_27CE66DF8 = v1;
  return result;
}

uint64_t sub_21DB43F88()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E00 = result;
  *algn_27CE66E08 = v1;
  return result;
}

uint64_t sub_21DB44074()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E10 = result;
  *algn_27CE66E18 = v1;
  return result;
}

uint64_t sub_21DB44150()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E20 = result;
  *algn_27CE66E28 = v1;
  return result;
}

uint64_t sub_21DB4422C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E30 = result;
  *algn_27CE66E38 = v1;
  return result;
}

uint64_t sub_21DB4430C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E40 = result;
  *algn_27CE66E48 = v1;
  return result;
}

uint64_t sub_21DB443EC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E50 = result;
  *algn_27CE66E58 = v1;
  return result;
}

uint64_t sub_21DB444D4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E60 = result;
  *algn_27CE66E68 = v1;
  return result;
}

uint64_t sub_21DB445C0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E70 = result;
  *algn_27CE66E78 = v1;
  return result;
}

uint64_t sub_21DB446AC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E80 = result;
  *algn_27CE66E88 = v1;
  return result;
}

uint64_t sub_21DB44798()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66E90 = result;
  *algn_27CE66E98 = v1;
  return result;
}

uint64_t sub_21DB44884()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16828 = result;
  unk_280D16830 = v1;
  return result;
}

uint64_t sub_21DB4496C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16840 = result;
  *algn_280D16848 = v1;
  return result;
}

uint64_t sub_21DB44A54()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66EA0 = result;
  *algn_27CE66EA8 = v1;
  return result;
}

uint64_t sub_21DB44B40()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66EB0 = result;
  *algn_27CE66EB8 = v1;
  return result;
}

uint64_t sub_21DB44C2C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66EC0 = result;
  *algn_27CE66EC8 = v1;
  return result;
}

uint64_t sub_21DB44D1C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66ED0 = result;
  *algn_27CE66ED8 = v1;
  return result;
}

uint64_t TTRAccesibility.RemindersList.Attribute.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void sub_21DB44E90()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE66EE0 = v1;
  *algn_27CE66EE8 = v3;
}

void sub_21DB44F70()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE66EF0 = v1;
  *algn_27CE66EF8 = v3;
}

void sub_21DB45050()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE66F00 = v1;
  *algn_27CE66F08 = v3;
}

void sub_21DB45130()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE66F10 = v1;
  *algn_27CE66F18 = v3;
}

void sub_21DB45210()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_280D1AB18 = v1;
  unk_280D1AB20 = v3;
}

uint64_t sub_21DB452F4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66F20 = result;
  *algn_27CE66F28 = v1;
  return result;
}

uint64_t sub_21DB453E0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66F30 = result;
  *algn_27CE66F38 = v1;
  return result;
}

uint64_t sub_21DB454C0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66F40 = result;
  *algn_27CE66F48 = v1;
  return result;
}

uint64_t sub_21DB455AC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66F50 = result;
  *algn_27CE66F58 = v1;
  return result;
}

uint64_t sub_21DB45698()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16810 = result;
  *algn_280D16818 = v1;
  return result;
}

uint64_t sub_21DB45784()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66F60 = result;
  *algn_27CE66F68 = v1;
  return result;
}

uint64_t sub_21DB45870()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66F70 = result;
  *algn_27CE66F78 = v1;
  return result;
}

uint64_t sub_21DB4595C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D167F8 = result;
  unk_280D16800 = v1;
  return result;
}

uint64_t sub_21DB45A48()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66F80 = result;
  *algn_27CE66F88 = v1;
  return result;
}

uint64_t static TTRAccesibility.RemindersList.Hint.completionToggleHintForState(isCompleted:)(char a1)
{
  if (a1)
  {
    if (qword_27CE57428 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CE66F70;
  }

  else
  {
    if (qword_280D167F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_280D167F8;
  }

  v2 = *v1;
  sub_21DBF8E0C();
  return v2;
}

uint64_t sub_21DB45BDC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66F90 = result;
  *algn_27CE66F98 = v1;
  return result;
}

uint64_t sub_21DB45CC4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66FA0 = result;
  *algn_27CE66FA8 = v1;
  return result;
}

uint64_t sub_21DB45E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  *a4 = result;
  *a5 = v8;
  return result;
}

uint64_t sub_21DB45F48()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66FC0 = result;
  *algn_27CE66FC8 = v1;
  return result;
}

uint64_t sub_21DB46034()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D166B8 = result;
  unk_280D166C0 = v1;
  return result;
}

uint64_t sub_21DB46114()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16750 = result;
  unk_280D16758 = v1;
  return result;
}

uint64_t sub_21DB46200()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D166F8 = result;
  unk_280D16700 = v1;
  return result;
}

uint64_t sub_21DB462DC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16770 = result;
  *algn_280D16778 = v1;
  return result;
}

uint64_t sub_21DB463C8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16718 = result;
  unk_280D16720 = v1;
  return result;
}

uint64_t sub_21DB464A4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66FD0 = result;
  *algn_27CE66FD8 = v1;
  return result;
}

uint64_t sub_21DB46584()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D166D8 = result;
  unk_280D166E0 = v1;
  return result;
}

uint64_t sub_21DB46670()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66FE0 = result;
  *algn_27CE66FE8 = v1;
  return result;
}

uint64_t sub_21DB4674C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE66FF0 = result;
  *algn_27CE66FF8 = v1;
  return result;
}

uint64_t sub_21DB46848(uint64_t a1, uint64_t *a2, void *a3)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  *a2 = result;
  *a3 = v6;
  return result;
}

uint64_t sub_21DB46940()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67010 = result;
  *algn_27CE67018 = v1;
  return result;
}

uint64_t sub_21DB46A2C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67020 = result;
  *algn_27CE67028 = v1;
  return result;
}

uint64_t sub_21DB46B18()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67030 = result;
  *algn_27CE67038 = v1;
  return result;
}

uint64_t sub_21DB46C04()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67040 = result;
  *algn_27CE67048 = v1;
  return result;
}

uint64_t sub_21DB46CF4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67050 = result;
  *algn_27CE67058 = v1;
  return result;
}

uint64_t sub_21DB46DE0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67060 = result;
  *algn_27CE67068 = v1;
  return result;
}

uint64_t sub_21DB46ECC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67070 = result;
  *algn_27CE67078 = v1;
  return result;
}

uint64_t sub_21DB46FB8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67080 = result;
  *algn_27CE67088 = v1;
  return result;
}

uint64_t sub_21DB470DC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D165E8 = result;
  unk_280D165F0 = v1;
  return result;
}

uint64_t sub_21DB471B8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_280D16600 = result;
  *algn_280D16608 = v1;
  return result;
}

uint64_t sub_21DB47294()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67090 = result;
  *algn_27CE67098 = v1;
  return result;
}

uint64_t sub_21DB47370()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE670A0 = result;
  *algn_27CE670A8 = v1;
  return result;
}

uint64_t sub_21DB47450()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE670B0 = result;
  *algn_27CE670B8 = v1;
  return result;
}

uint64_t sub_21DB47530()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE670C0 = result;
  *algn_27CE670C8 = v1;
  return result;
}

uint64_t sub_21DB4760C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE670D0 = result;
  *algn_27CE670D8 = v1;
  return result;
}

uint64_t sub_21DB476FC(uint64_t a1, uint64_t *a2, void *a3)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  *a2 = result;
  *a3 = v6;
  return result;
}

uint64_t sub_21DB47800(uint64_t a1, uint64_t *a2, void *a3)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  *a2 = result;
  *a3 = v6;
  return result;
}

uint64_t sub_21DB478EC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67100 = result;
  *algn_27CE67108 = v1;
  return result;
}

uint64_t sub_21DB479CC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67110 = result;
  *algn_27CE67118 = v1;
  return result;
}

uint64_t sub_21DB47AB8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67120 = result;
  *algn_27CE67128 = v1;
  return result;
}

uint64_t sub_21DB47BA4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67130 = result;
  *algn_27CE67138 = v1;
  return result;
}

uint64_t sub_21DB47C8C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67140 = result;
  *algn_27CE67148 = v1;
  return result;
}

uint64_t sub_21DB47D74()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67150 = result;
  *algn_27CE67158 = v1;
  return result;
}

uint64_t sub_21DB47E60()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67160 = result;
  *algn_27CE67168 = v1;
  return result;
}

uint64_t sub_21DB47F4C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67170 = result;
  *algn_27CE67178 = v1;
  return result;
}

uint64_t TTRAccesibility.SectionHeaderType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DB4816C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67180 = result;
  *algn_27CE67188 = v1;
  return result;
}

uint64_t sub_21DB48258()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67190 = result;
  *algn_27CE67198 = v1;
  return result;
}

void sub_21DB48334()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();
  v3 = v2;

  qword_27CE671A0 = v1;
  *algn_27CE671A8 = v3;
}

uint64_t sub_21DB48414()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE671B0 = result;
  *algn_27CE671B8 = v1;
  return result;
}

uint64_t sub_21DB484F4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE671C0 = result;
  *algn_27CE671C8 = v1;
  return result;
}

uint64_t sub_21DB485E0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE671D0 = result;
  *algn_27CE671D8 = v1;
  return result;
}

uint64_t sub_21DB486BC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE671E0 = result;
  *algn_27CE671E8 = v1;
  return result;
}

uint64_t sub_21DB487A8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE671F0 = result;
  *algn_27CE671F8 = v1;
  return result;
}

uint64_t sub_21DB48894()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67200 = result;
  *algn_27CE67208 = v1;
  return result;
}

uint64_t static TTRAccesibility.Hashtags.prefacedSpeakableTagList(forList:)(void *a1)
{
  v2 = Array<A>.ttrAccessibilitySpeakableList.getter(a1);
  v4 = v3;
  if (v3)
  {
    v5 = v2;
    if (a1[2] == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_7;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_7:
      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21DC08D00;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_21D17A884();
      *(v7 + 32) = v5;
      *(v7 + 40) = v4;
      v6 = sub_21DBFA13C();

      return v6;
    }

    swift_once();
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_21DB48BB4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67210 = result;
  *algn_27CE67218 = v1;
  return result;
}

uint64_t sub_21DB48CA0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67220 = result;
  *algn_27CE67228 = v1;
  return result;
}

uint64_t sub_21DB48D80()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE67230 = result;
  *algn_27CE67238 = v1;
  return result;
}

uint64_t _s15RemindersUICore15TTRAccesibilityO0A4ListO5LabelO015placeholderCellE009isGroceryD011sectionName0J4TypeSSSb_SSSgAC013SectionHeaderL0OSgtFZ_0(char a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    goto LABEL_8;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_8:
    if (a1)
    {
      if (qword_27CE572F8 != -1)
      {
        swift_once();
      }

      v10 = &qword_27CE66D30;
      goto LABEL_16;
    }

LABEL_13:
    if (qword_27CE572E8 != -1)
    {
      swift_once();
    }

    v10 = &qword_27CE66D10;
LABEL_16:
    v9 = *v10;
    sub_21DBF8E0C();
    return v9;
  }

  if ((a1 & 1) == 0)
  {
    v11 = *a4;
    if (v11 != 2)
    {
      v5 = a2;
      if (v11)
      {
        v13 = qword_280D16798;
        v7 = a3;
        sub_21DBF8E0C();
        if (v13 == -1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = qword_27CE572F0;
        v7 = a3;
        sub_21DBF8E0C();
        if (v14 == -1)
        {
          goto LABEL_7;
        }
      }

LABEL_22:
      swift_once();
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v5 = a2;
  v6 = qword_27CE57300;
  v7 = a3;
  sub_21DBF8E0C();
  if (v6 != -1)
  {
    goto LABEL_22;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21D17A884();
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_21DBFA13C();

  return v9;
}

unint64_t sub_21DB490FC()
{
  result = qword_280D1AB00;
  if (!qword_280D1AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D1AB00);
  }

  return result;
}

unint64_t sub_21DB49154()
{
  result = qword_27CE67240;
  if (!qword_27CE67240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE67240);
  }

  return result;
}

uint64_t TTRReminderListPickerInteractor.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = a1;
  return v2;
}

uint64_t sub_21DB494B4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE67248);
  v1 = __swift_project_value_buffer(v0, qword_27CE67248);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderListPickerInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderListPickerInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRReminderListPickerInteractor.init(store:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = a1;
  return v1;
}

uint64_t TTRReminderListPickerInteractor.fetchAccounts(for:includeSmartLists:)()
{
  v0 = sub_21DBF64FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF652C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF653C();
  sub_21DBF650C();
  sub_21DBF651C();
  v8 = sub_21DBF64EC();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t TTRReminderListPickerInteractor.fetchAccountsAsynchronously(for:includeSmartLists:)(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_21DBF647C();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  *(v3 + 56) = *(v5 + 64);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DB49AF0, 0, 0);
}

uint64_t sub_21DB49AF0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 104);
  v8 = *(v0 + 24);
  sub_21DBFA85C();
  v9 = sub_21DBFA89C();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  (*(v3 + 16))(v1, v8, v6);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v5;
  (*(v3 + 32))(&v11[v10], v1, v6);
  v11[v10 + v4] = v7;

  v12 = sub_21D7DD380(0, 0, v2, &unk_21DC3FC78, v11);
  *(v0 + 80) = v12;
  sub_21D0EC98C(v2);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B60);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  *v13 = v0;
  v13[1] = sub_21DB49CF4;
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v12, v14, v15, v16);
}

uint64_t sub_21DB49CF4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21DB49E90;
  }

  else
  {
    v2 = sub_21DB49E08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DB49E08()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21DB49E90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DB49F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 88) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  v7 = sub_21DBF64FC();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  v8 = sub_21DBF652C();
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DB4A02C, 0, 0);
}

uint64_t sub_21DB4A02C()
{
  sub_21DBF653C();
  sub_21DBF650C();
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];
  sub_21DBF651C();
  v8 = sub_21DBF64EC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  *v7 = v8;

  v9 = v0[1];

  return v9();
}

uint64_t TTRReminderListPickerInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRReminderListPickerInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21DB4A1E0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D203124;

  return TTRReminderListPickerInteractor.fetchAccountsAsynchronously(for:includeSmartLists:)(a1, a2);
}

uint64_t sub_21DB4A284(uint64_t a1)
{
  v4 = *(sub_21DBF647C() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D1B795C;

  return sub_21DB49F08(a1, v5, v6, v7, v8, v9);
}

uint64_t assignWithCopy for TTRReminderListPickerAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D1B29D8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D1B2AAC(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRReminderListPickerAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D1B2AAC(v4, v5);
  return a1;
}

uint64_t dispatch thunk of TTRReminderListPickerInteractorType.fetchAccountsAsynchronously(for:includeSmartLists:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D22C140;

  return v11(a1, a2, a3, a4);
}

uint64_t TTRReminderProtocolWithPendingMove.init(reminder:pendingMoveTargetList:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_21D0D0FD0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

id TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter@<X0>(void *a1@<X8>)
{
  v12 = *v1;
  if (*v1)
  {
    *(&v17 + 1) = sub_21D0D8CF0(0, &qword_280D0C320);
    v18 = &protocol witness table for REMSmartList;
    *&v16 = v12;
    sub_21D0D0FD0(&v16, a1);
  }

  else
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (v5)
    {
      v14 = sub_21D0D8CF0(0, &qword_280D17690);
      v15 = &protocol witness table for REMList;
      *&v13 = v5;
      sub_21D0D0FD0(&v13, a1);
      if (*(&v17 + 1))
      {
        v6 = v5;
        sub_21D0CF7E0(&v16, &qword_27CE59DC0);
      }

      else
      {
        v9 = v5;
      }
    }

    else
    {
      if (v4)
      {
        v7 = sub_21D0D8CF0(0, &unk_280D177F0);
        v8 = &protocol witness table for REMListChangeItem;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      *a1 = v4;
      a1[3] = v7;
      a1[4] = v8;
      v10 = v4;
      v11 = 0;
    }
  }

  return v12;
}

id TTRReminderProtocolWithPendingMove.effectiveParentList.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = v1[5];
  if (v6)
  {
    v8 = sub_21D0D8CF0(0, &qword_280D17690);
    v9 = &protocol witness table for REMList;
    *&v7 = v6;
    sub_21D0D0FD0(&v7, a1);
  }

  else
  {
    v3 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v3);
    (*(v4 + 184))(v3, v4);
  }

  return v6;
}

uint64_t TTRReminderDetailPendingMoveInteractorCapability.PendingMoveContext.init(persistLastSelectedListID:pendingMoveListOrCustomSmartList:pendingMoveTargetSection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 16);
  *(a5 + 24) = *a4;
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a4 + 32);
  if (v7)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v6 = 0;
  }

  if (v7 == 255)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v6;
  *(a5 + 40) = v5;
  *(a5 + 56) = v8;
  *(a5 + 64) = v10;
  *(a5 + 72) = 0;
  return result;
}

double TTRReminderDetailPendingMoveInteractorCapability.PendingMoveContext.init(persistLastSelectedListID:customSmartListToMatch:)@<D0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v8 = [a1 objectID];
  }

  else
  {
    v8 = 0;
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 1;
  *(a4 + 56) = 0;
  *(a4 + 64) = a1;
  *(a4 + 72) = v8;
  return result;
}

id TTRReminderDetailPendingMoveInteractorCapability.PendingMoveTarget.listForHostingReminder.getter()
{
  v1 = *(v0 + 8);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *v0;
  v4 = *v0;
  return v3;
}

id TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    v9 = *(v1 + 8);
    v11 = sub_21D0D8CF0(0, &qword_280D17690);
    v12 = &protocol witness table for REMList;
    *&v10 = v9;
    sub_21D0D0FD0(&v10, a1);
    v3 = v9;
  }

  else
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = sub_21D0D8CF0(0, &unk_280D177F0);
      v6 = &protocol witness table for REMListChangeItem;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = v4;
    a1[3] = v5;
    a1[4] = v6;
    v7 = v4;
    v3 = 0;
  }

  return v3;
}

uint64_t TTRReminderDetailPendingMoveInteractorCapability.__allocating_init(store:undoManager:pendingMoveContext:initialListChangeItem:reminderChangeItemsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v12 = *(a5 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = sub_21DB4E15C(a1, a2, a3, a4, v13, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v14;
}

id TTRReminderDetailPendingMoveInteractorCapability.effectiveList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[20];
  v7 = v1[14];
  v3 = v1[8];
  *a1 = v2;
  a1[1] = v7;
  a1[2] = v3;
  v4 = v3;
  v5 = v2;

  return v7;
}

void *TTRReminderDetailPendingMoveInteractorCapability.pendingMoveTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  if (v2)
  {
    v3 = 1;
    v4 = *(v1 + 160);
  }

  else
  {
    v4 = *(v1 + 112);
    if (v4)
    {
      v5 = a1;
      v6 = v4;
      a1 = v5;
      v3 = 0;
    }

    else
    {
      v3 = -1;
    }
  }

  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = *(v1 + 152);
  v11 = v2;

  return sub_21D575E44(v7, v8, v9, v10);
}

id TTRReminderDetailPendingMoveInteractorCapability.pendingMoveContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v11 = *(v1 + 112);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v6 = *(v1 + 168);
  v10 = *(v1 + 160);
  *a1 = v2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = *(v1 + 152);
  *(a1 + 64) = v10;
  *(a1 + 72) = v6;
  sub_21D0D0E78(v2);
  v7 = v11;
  sub_21D575E44(*(&v11 + 1), v3, v4, v5);
  v8 = v6;

  return v10;
}

void TTRReminderDetailPendingMoveInteractorCapability.update(parentList:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    v24 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v5 objectID];
  v8 = v2[8];
  if (!v8)
  {
    v12 = v3;
    if (v7)
    {
      goto LABEL_13;
    }

LABEL_11:
    v12 = 0;
    v7 = v6;
    goto LABEL_13;
  }

  v9 = [v8 objectID];
  v10 = v9;
  if (!v7)
  {
    v7 = v9;
    v12 = v3;
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    v11 = sub_21DBFB63C();

    v12 = 0;
    v7 = v6;
    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = v3;
  }

LABEL_13:

  v3 = v12;
LABEL_14:
  v5 = v3;
  v3 = 0;
  v24 = v5;
LABEL_15:
  v13 = v5;
  v14 = v2[14];
  v15 = v2[20];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v14;
  v17[4] = v15;
  v18 = qword_27CE57608;
  v19 = v14;
  v20 = v15;
  v21 = v19;
  v22 = v20;

  if (v18 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = sub_21DB4E278;
  *(v23 + 24) = v17;
  sub_21D0D8CF0(0, &qword_280D17680);

  sub_21DBFAE8C();

  sub_21DB4BBCC(v24, v3);
}

void TTRReminderDetailPendingMoveInteractorCapability.reflectPendingMoveState(in:)(void *a1)
{
  v3 = v1[14];
  v4 = v1[8];
  v13 = v1[20];
  v14 = v3;
  v15 = v4;
  v5 = v4;
  v6 = v13;
  v7 = v3;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(&v11);
  if (v12)
  {
    sub_21D0D0FD0(&v11, v16);

    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = (*(v9 + 72))(v8, v9);
    [a1 updateAccountCapabilities_];

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_21D0CF7E0(&v11, &qword_27CE59DC0);
  }
}

id TTRReminderDetailPendingMoveInteractorCapability.performMoveIfNeeded(with:knownSubtaskChangeItems:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = sub_21DBF563C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = *(v2 + 112);
  if (!v10)
  {

    v13 = *(v2 + 160);
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v11 = [v10 objectID];
  if (v11)
  {
    v36[0] = 1;
    v12 = v11;
    sub_21DB4C524(v11, v36, v9, a2);
  }

  v13 = *(v2 + 160);
  if (v13)
  {
LABEL_7:
    v35 = v6;
    v14 = v13;
    v15 = [v14 customContext];
    if (v15 && (v16 = v15, v17 = sub_21DBFB4FC(), v16, v17))
    {
      v18 = sub_21DB4C6C8(v14);
      if (v18)
      {
        v19 = v18;
        v20 = [v18 objectID];
        v36[0] = 0;
        sub_21DB4C524(v20, v36, v9, a2);

        swift_beginAccess();
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        TTRReminderEditor.edit(toMatch:now:)(v17, v8);

        (*(v35 + 8))(v8, v5);
      }

      else
      {
        if (qword_27CE575B0 != -1)
        {
          swift_once();
        }

        v28 = sub_21DBF84BC();
        __swift_project_value_buffer(v28, qword_27CE67260);
        v29 = sub_21DBF84AC();
        v30 = sub_21DBFAEBC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_21D0C9000, v29, v30, "TTRReminderDetailPendingMoveInteractorCapability failed to edit attributes to match custom smart list due to missing default list", v31, 2u);
          MEMORY[0x223D46520](v31, -1, -1);
        }
      }
    }

    else
    {
      if (qword_27CE575B0 != -1)
      {
        swift_once();
      }

      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_27CE67260);
      v22 = v14;
      v23 = sub_21DBF84AC();
      v24 = sub_21DBFAEBC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        v27 = [v22 objectID];
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&dword_21D0C9000, v23, v24, "TTRReminderDetailPendingMoveInteractorCapability failed to edit attributes to match custom smart list due to invalid filter descriptor {customSmartList.objectID: %{public}@}", v25, 0xCu);
        sub_21D0CF7E0(v26, &unk_27CE60070);
        MEMORY[0x223D46520](v26, -1, -1);
        MEMORY[0x223D46520](v25, -1, -1);
      }

      else
      {
      }
    }
  }

LABEL_21:
  swift_beginAccess();
  v32 = *(*(v9 + 16) + 16);

  return v32;
}