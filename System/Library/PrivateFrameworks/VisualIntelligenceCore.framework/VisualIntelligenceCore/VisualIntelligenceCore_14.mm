uint64_t sub_1D88CD784(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    JUMPOUT(0x1DA71C960);
  }

  return 0;
}

uint64_t sub_1D88CD7BC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a2;
  v43 = a3;
  v4 = sub_1D8B12DE0();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D8B131D0();
  v6 = *(v40 - 8);
  v7 = MEMORY[0x1EEE9AC00](v40);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - v10;
  v12 = sub_1D8B134B0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  v20 = [v19 timeZone];
  if (v20)
  {
    v21 = v20;
    sub_1D8B13490();

    v36 = *(v13 + 32);
    v36(v18, v16, v12);
    v22 = [v19 date];
    if (v22)
    {
      v37 = v12;
      v23 = v22;
      sub_1D8B13190();

      v24 = v40;
      (*(v6 + 32))(v11, v9, v40);
      v25 = v38;
      sub_1D8B133A0();
      v26 = sub_1D8B12D50();
      if (v27)
      {
        (*(v41 + 8))(v25, v42);
        (*(v6 + 8))(v11, v24);
      }

      else
      {
        v28 = v26;
        v39 = sub_1D8B12D90();
        v30 = v29;
        (*(v41 + 8))(v25, v42);
        (*(v6 + 8))(v11, v24);
        if ((v30 & 1) == 0)
        {
          v33 = type metadata accessor for TimeZonedTime();
          v34 = v43;
          v36(v43 + *(v33 + 24), v18, v37);
          v35 = v39;
          *v34 = v28;
          v34[1] = v35;
          return (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
        }
      }

      (*(v13 + 8))(v18, v37);
    }

    else
    {
      (*(v13 + 8))(v18, v12);
    }
  }

  v31 = type metadata accessor for TimeZonedTime();
  return (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
}

uint64_t sub_1D88CDBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a1;
  v87 = sub_1D8B13430();
  v5 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v64 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v51 - v8;
  v70 = sub_1D8B14650();
  v9 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D8B12DE0();
  v11 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D8B13360();
  v13 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D8B13450();
  v15 = *(v86 - 8);
  v16 = MEMORY[0x1EEE9AC00](v86);
  v62 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - v18;
  v20 = sub_1D8B131D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v23 = v21 + 16;
  v61 = v20;
  v22(a2, v3);
  v77 = *MEMORY[0x1E6969868];
  v24 = *(v13 + 104);
  v79 = v13 + 104;
  v75 = (v13 + 8);
  v76 = v24;
  v74 = *MEMORY[0x1E6969AB0];
  v83 = v5;
  v84 = v5 + 8;
  v85 = v5 + 104;
  v73 = (v11 + 8);
  v68 = (v9 + 16);
  v67 = (v9 + 88);
  v66 = *MEMORY[0x1E69C9C58];
  v56 = *MEMORY[0x1E69C9C68];
  v55 = *MEMORY[0x1E69C9C80];
  v54 = *MEMORY[0x1E69C9C78];
  v53 = *MEMORY[0x1E69C9C50];
  v25 = (v15 + 8);
  v52 = *MEMORY[0x1E69C9C70];
  v60 = (v23 + 32);
  v58 = (v23 - 8);
  v51 = *MEMORY[0x1E69C9C60];
  v57 = (v23 + 16);
  v59 = *MEMORY[0x1E6969A48];
  v72 = xmmword_1D8B1AB90;
  v65 = a2;
  while (1)
  {
    v26 = v78;
    v27 = v80;
    v76(v78, v77, v80);
    sub_1D8B13370();
    (*v75)(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AE8);
    v28 = v83;
    v29 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v72;
    v31 = *(v28 + 104);
    v32 = v87;
    v31(v30 + v29, v74, v87);
    sub_1D8A4FF5C(v30);
    swift_setDeallocating();
    v33 = *(v28 + 8);
    v33(v30 + v29, v32);
    swift_deallocClassInstance();
    v34 = v81;
    sub_1D8B133B0();

    v35 = sub_1D8B12DC0();
    v37 = v36;
    (*v73)(v34, v82);
    if (v37)
    {
      return (*v25)(v19, v86);
    }

    v38 = v69;
    v39 = v70;
    (*v68)(v69, v71, v70);
    v40 = (*v67)(v38, v39);
    if (v40 == v66)
    {
      v41 = 2;
      v42 = v86;
    }

    else
    {
      v42 = v86;
      if (v40 == v56)
      {
        v41 = 3;
      }

      else if (v40 == v55)
      {
        v41 = 4;
      }

      else if (v40 == v54)
      {
        v41 = 5;
      }

      else if (v40 == v53)
      {
        v41 = 6;
      }

      else if (v40 == v52)
      {
        v41 = 7;
      }

      else
      {
        if (v40 != v51)
        {
          goto LABEL_23;
        }

        v41 = 1;
      }
    }

    v43 = *v25;
    result = (*v25)(v19, v42);
    if (v35 == v41)
    {
      return result;
    }

    v45 = v62;
    sub_1D8B13410();
    v46 = v64;
    v47 = v87;
    v31(v64, v59, v87);
    v48 = v63;
    v49 = v65;
    sub_1D8B133F0();
    v33(v46, v47);
    v43(v45, v86);
    v50 = v61;
    if ((*v60)(v48, 1, v61) == 1)
    {
      break;
    }

    (*v58)(v49, v50);
    (*v57)(v49, v48, v50);
  }

  __break(1u);
LABEL_23:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D88CE454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v25 = a3;
  v30 = sub_1D8B131D0();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v26 = sub_1D8B12DE0();
  v11 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8B13450();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v25 - v19;
  sub_1D8B13410();
  (*(v15 + 56))(v10, 1, 1, v14);
  v21 = sub_1D8B134B0();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_1D8B12DD0();
  sub_1D88CE8A8(v28, v29, v4);
  sub_1D8B133E0();
  v22 = v27;
  v23 = v30;
  (*(v27 + 8))(v4, v30);
  (*(v11 + 8))(v13, v26);
  (*(v15 + 8))(v17, v14);
  result = (*(v22 + 48))(v20, 1, v23);
  if (result != 1)
  {
    return (*(v22 + 32))(v25, v20, v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88CE8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v25 = a3;
  v3 = sub_1D8B13450();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B08);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v16 = sub_1D8B12DE0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 56))(v15, 1, 1, v3);
  v20 = sub_1D8B134B0();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_1D8B12DD0();
  sub_1D8B13410();
  sub_1D8B133D0();
  (*(v4 + 8))(v6, v3);
  v21 = sub_1D8B131D0();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v9, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    return (*(v22 + 32))(v25, v9, v21);
  }

  return result;
}

uint64_t sub_1D88CEC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a3;
  v101 = a1;
  v6 = sub_1D8B134B0();
  v107 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8B13430();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v99 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B08);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v110 = v79 - v14;
  v15 = sub_1D8B12DE0();
  v112 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v109 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1D8B13450();
  v17 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v19 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v95 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v79 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v100 = v79 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v79 - v28;
  v30 = sub_1D8B131D0();
  v108 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v94 = v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v98 = v79 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v103 = v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v106 = v79 - v37;
  if ((sub_1D8B144A0() & 1) == 0)
  {
    return sub_1D8B14490();
  }

  v82 = v25;
  v81 = v8;
  v84 = a2;
  v93 = a4;
  sub_1D8B13410();
  v104 = v15;
  v38 = v17;
  v39 = *(v17 + 56);
  v102 = v19;
  v91 = v17 + 56;
  v90 = v39;
  v39(v110, 1, 1, v113);
  v40 = *(v107 + 56);
  v89 = v107 + 56;
  v88 = v40;
  v40(v111, 1, 1, v6);
  sub_1D8B14430();
  v92 = v6;
  sub_1D8B14470();
  sub_1D8B14400();
  v41 = v109;
  v42 = v102;
  sub_1D8B12DD0();
  sub_1D8B133D0();
  v44 = v112 + 8;
  v43 = *(v112 + 8);
  v43(v41, v104);
  v45 = *(v38 + 8);
  v105 = v38 + 8;
  v45(v42, v113);
  v46 = v108;
  v47 = v108 + 48;
  v48 = *(v108 + 48);
  if (v48(v29, 1, v30) != 1)
  {
    v49 = *(v46 + 32);
    v79[1] = v46 + 32;
    v80 = v49;
    v49(v106, v29, v30);
    sub_1D8B13410();
    v86 = v47;
    v85 = v48;
    v50 = v113;
    v90(v110, 1, 1, v113);
    v83 = v43;
    v88(v111, 1, 1, v92);
    v87 = v30;
    sub_1D8B14430();
    v112 = v44;
    sub_1D8B14470();
    sub_1D8B14400();
    v51 = v109;
    v52 = v102;
    sub_1D8B12DD0();
    v29 = v100;
    sub_1D8B133D0();
    v53 = v87;
    v83(v51, v104);
    v45(v52, v50);
    if (v85(v29, 1, v53) == 1)
    {
      (*(v46 + 8))(v106, v53);
      goto LABEL_13;
    }

    v80(v103, v29, v53);
    sub_1D8B13410();
    v54 = v51;
    v55 = v113;
    v90(v110, 1, 1, v113);
    v88(v111, 1, 1, v92);
    sub_1D8B14430();
    sub_1D8B14470();
    sub_1D8B14400();
    v56 = v83;
    sub_1D8B12DD0();
    v57 = v82;
    sub_1D8B133D0();
    v58 = v87;
    v59 = v54;
    v60 = v57;
    v56(v59, v104);
    v61 = v45;
    v45(v52, v55);
    if (v85(v57, 1, v58) == 1)
    {
      v62 = *(v108 + 8);
      v62(v103, v58);
      v62(v106, v58);
LABEL_12:
      v29 = v60;
      goto LABEL_13;
    }

    v80(v98, v57, v58);
    sub_1D8B13410();
    v63 = v96;
    v64 = v97;
    (*(v96 + 104))(v99, *MEMORY[0x1E6969A98], v97);
    sub_1D8B13090();
    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v66 = v107;
      v67 = v81;
      if (v65 > -9.22337204e18)
      {
        if (v65 < 9.22337204e18)
        {
          v68 = v95;
          v69 = v99;
          v70 = v52;
          sub_1D8B133F0();
          (*(v63 + 8))(v69, v64);
          v60 = v68;
          v71 = v113;
          v61(v52, v113);
          v72 = v87;
          if (v85(v68, 1, v87) != 1)
          {
            v75 = v94;
            v80(v94, v68, v72);
            sub_1D8B13410();
            sub_1D8B134A0();
            v76 = v109;
            sub_1D8B133A0();
            (*(v66 + 8))(v67, v92);
            v61(v70, v71);
            v77 = sub_1D8B144E0();
            (*(*(v77 - 8) + 16))(v93, v84, v77);
            sub_1D88CFA20();
            v83(v76, v104);
            v78 = *(v108 + 8);
            v78(v75, v72);
            v78(v98, v72);
            v78(v103, v72);
            return (v78)(v106, v72);
          }

          v73 = *(v108 + 8);
          v73(v98, v72);
          v73(v103, v72);
          v73(v106, v72);
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  sub_1D87A14E4(v29, &qword_1ECA631A8);
  return sub_1D8B14490();
}

uint64_t sub_1D88CFA20()
{
  sub_1D8B12D70();
  sub_1D8B14440();
  sub_1D8B12D80();
  sub_1D8B14480();
  sub_1D8B12D40();
  sub_1D8B14410();
  sub_1D8B14450();
  sub_1D8B14460();
  v0 = sub_1D8B144B0();

  return MEMORY[0x1EEE33918](v0);
}

uint64_t sub_1D88CFAC0()
{
  sub_1D8B12D70();
  sub_1D8B14440();
  sub_1D8B12D80();
  sub_1D8B14480();
  sub_1D8B12D40();
  sub_1D8B14410();
  sub_1D8B12D50();
  sub_1D8B14460();
  v0 = sub_1D8B12D90();
  if (v1)
  {
    v0 = -1;
  }

  return MEMORY[0x1EEE33918](v0);
}

uint64_t sub_1D88CFB70(uint64_t a1)
{
  v3 = sub_1D8B13430();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13450();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D8B14400();
  if (!result)
  {
    v25 = v8;
    v26 = v7;
    v36 = v10;
    sub_1D8B13410();
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(sub_1D8B131D0() - 8);
      v15 = *(v4 + 104);
      v14 = v4 + 104;
      v34 = v15;
      v33 = *MEMORY[0x1E6969A48];
      v16 = (v14 - 96);
      v17 = *MEMORY[0x1E6969A78];
      v31 = *MEMORY[0x1E6969A58];
      v32 = v17;
      v30 = *MEMORY[0x1E6969A88];
      v18 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v29 = *(v13 + 72);
      v35 = v1;
      while (1)
      {
        v37 = v12;
        v19 = v34;
        v34(v6, v33, v3);
        v28 = sub_1D8B13440();
        v20 = *v16;
        (*v16)(v6, v3);
        v19(v6, v32, v3);
        v27 = sub_1D8B13440();
        v20(v6, v3);
        v19(v6, v31, v3);
        v21 = sub_1D8B13440();
        v20(v6, v3);
        v22 = v14;
        v19(v6, v30, v3);
        v23 = sub_1D8B13440();
        v20(v6, v3);
        if (sub_1D8B14450() < 0 || sub_1D8B144B0() < 0 || v21 == sub_1D8B14450() && v23 == sub_1D8B144B0())
        {
          break;
        }

        v18 += v29;
        v12 = v37 - 1;
        v14 = v22;
        if (v37 == 1)
        {
          return (*(v25 + 8))(v36, v26);
        }
      }

      if (!sub_1D8B14400())
      {
        sub_1D8B14410();
      }

      if (!sub_1D8B14470())
      {
        sub_1D8B14480();
      }
    }

    return (*(v25 + 8))(v36, v26);
  }

  return result;
}

_BYTE *sub_1D88CFEF0(uint64_t a1)
{
  v4 = sub_1D8B144E0();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v77 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v61[-v7];
  v8 = sub_1D8B14670();
  v85 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = &v61[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v61[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v61[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v75 = &v61[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v76 = &v61[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v61[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61[-v24];
  v26 = sub_1D8B131D0();
  v73 = *(v26 - 8);
  v74 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v80 = &v61[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v61[-v29];
  v31 = sub_1D8B143D0();
  v83 = *(v31 - 8);
  v84 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v61[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = v1;
  sub_1D8B146E0();
  sub_1D8B146B0();

  sub_1D8B14630();

  if (sub_1D8B143C0())
  {
    sub_1D8B143B0();
    if (v2)
    {
      goto LABEL_15;
    }

    v81 = a1;
    v82 = 0;
    sub_1D8B13090();
    v50 = v49;
    (*(v73 + 8))(v30, v74);
    if (v50 <= 0.0)
    {
      (*(v83 + 8))(v33, v84);
      return 0;
    }
  }

  else
  {
    v81 = a1;
    v82 = v2;
  }

  v71 = v33;
  sub_1D8B146E0();
  sub_1D8B146B0();

  sub_1D8B14690();

  v34 = v85;
  v35 = *(v85 + 104);
  v62 = *MEMORY[0x1E69C9CA0];
  v65 = v85 + 104;
  v64 = v35;
  v35(v23);
  v36 = sub_1D88D6918(&qword_1ECA64AE0, MEMORY[0x1E69C9CA8]);
  sub_1D8B15C40();
  v63 = v36;
  sub_1D8B15C40();
  v37 = v78;
  if (v89 == v87 && v90 == v88)
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_1D8B16BA0();
  }

  v40 = *(v34 + 8);
  v39 = v34 + 8;
  v40(v23, v8);
  v66 = v40;
  v40(v25, v8);

  v41 = v79;
  if (v38)
  {
    sub_1D8B146E0();
    v42 = v72;
    sub_1D8B14610();

    v25 = sub_1D8B14400();
    (*(v37 + 8))(v42, v41);
    if (v25 == 32)
    {
      sub_1D8B146E0();
      sub_1D8B146B0();

      v43 = sub_1D8B14640();

      v25 = *(v43 + 16);

      if (v25)
      {
        v25 = sub_1D88D0AA4(v81);
LABEL_25:
        (*(v83 + 8))(v71, v84);
        return v25;
      }
    }
  }

  v85 = v39;
  sub_1D8B146E0();
  v44 = v77;
  sub_1D8B14610();

  v46 = v80;
  v45 = v81;
  v47 = v82;
  sub_1D8B143E0();
  if (!v47)
  {
    v81 = v45;
    v82 = 0;
    sub_1D8B146E0();
    sub_1D8B146B0();

    sub_1D8B14690();

    v64(v75, *MEMORY[0x1E69C9C90], v8);
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v89 == v87 && v90 == v88)
    {
      v48 = v66;
      v66(v75, v8);
      v48(v76, v8);
    }

    else
    {
      v51 = sub_1D8B16BA0();
      v52 = v66;
      v66(v75, v8);
      v52(v76, v8);
      v46 = v80;

      if ((v51 & 1) == 0)
      {
        sub_1D8B146E0();
        sub_1D8B146B0();

        sub_1D8B14690();

        v64(v69, *MEMORY[0x1E69C9C98], v8);
        sub_1D8B15C40();
        sub_1D8B15C40();
        if (v89 == v87 && v90 == v88)
        {
          v55 = v66;
          v66(v69, v8);
          v55(v70, v8);
        }

        else
        {
          v56 = sub_1D8B16BA0();
          v57 = v66;
          v66(v69, v8);
          v57(v70, v8);
          v46 = v80;

          if ((v56 & 1) == 0)
          {
            sub_1D8B146E0();
            sub_1D8B146B0();

            sub_1D8B14690();

            v64(v67, v62, v8);
            sub_1D8B15C40();
            sub_1D8B15C40();
            if (v89 == v87 && v90 == v88)
            {
              v58 = v66;
              v66(v67, v8);
              v58(v68, v8);
            }

            else
            {
              v59 = sub_1D8B16BA0();
              v60 = v66;
              v66(v67, v8);
              v60(v68, v8);
              v46 = v80;

              if ((v59 & 1) == 0)
              {
                (*(v73 + 8))(v46, v74);
                (*(v37 + 8))(v44, v41);
                (*(v83 + 8))(v71, v84);
                return 0;
              }
            }

            v53 = sub_1D88D4420(v46, v81);
            goto LABEL_24;
          }
        }

        v53 = sub_1D88D2F7C(v46, v81);
LABEL_24:
        v25 = v53;
        (*(v73 + 8))(v46, v74);
        (*(v37 + 8))(v44, v41);
        goto LABEL_25;
      }
    }

    v53 = sub_1D88D2898(v46, v81);
    goto LABEL_24;
  }

  (*(v37 + 8))(v44, v41);
  v33 = v71;
LABEL_15:
  (*(v83 + 8))(v33, v84);
  return v25;
}

uint64_t sub_1D88D0AA4(uint64_t a1)
{
  v188 = a1;
  v2 = sub_1D8B13430();
  v194 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v243 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v152 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v182 = &v152 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v152 - v13;
  v227 = sub_1D8B13360();
  v244 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v226 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8B131D0();
  v242 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v204 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v196 = &v152 - v18;
  v187 = sub_1D8B134B0();
  v241 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1D8B12DE0();
  v238 = *(v235 - 8);
  v20 = MEMORY[0x1EEE9AC00](v235);
  v172 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v203 = &v152 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v222 = &v152 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v193 = &v152 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v169 = &v152 - v28;
  v166 = sub_1D8B14670();
  v239 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_1D8B14650();
  v30 = *(v212 - 8);
  v31 = MEMORY[0x1EEE9AC00](v212);
  v200 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v190 = &v152 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v211 = &v152 - v35;
  v174 = sub_1D8B144E0();
  v36 = *(v174 - 8);
  v37 = MEMORY[0x1EEE9AC00](v174);
  v155 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v154 = &v152 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v161 = &v152 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v160 = &v152 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v152 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v152 - v48;
  v228 = sub_1D8B13450();
  v170 = *(v228 - 8);
  v50 = MEMORY[0x1EEE9AC00](v228);
  v240 = &v152 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v206 = &v152 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v192 = &v152 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v189 = &v152 - v56;
  sub_1D8B13410();
  sub_1D8B146E0();
  v175 = v49;
  sub_1D8B14610();

  sub_1D8B146E0();
  v168 = v47;
  sub_1D8B145D0();

  v167 = v1;
  sub_1D8B146E0();
  sub_1D8B146B0();

  v57 = sub_1D8B14640();

  v58 = v57;
  v159 = *(v57 + 16);
  if (v159)
  {
    v59 = 0;
    v173 = 0;
    v60 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v164 = *MEMORY[0x1E69C9C88];
    v163 = v57 + v60;
    v210 = v30 + 16;
    v162 = (v239 + 104);
    v225 = *MEMORY[0x1E6969868];
    v185 = (v241 + 1);
    v230 = (v244 + 104);
    v224 = (v244 + 8);
    v223 = *MEMORY[0x1E6969AB0];
    v239 = v194 + 104;
    v244 = v194 + 8;
    v234 = (v238 + 8);
    v208 = *MEMORY[0x1E69C9C58];
    v207 = (v30 + 88);
    v198 = *MEMORY[0x1E69C9C68];
    v197 = *MEMORY[0x1E69C9C80];
    v221 = (v170 + 8);
    v216 = (v242 + 48);
    v232 = (v242 + 8);
    v231 = (v242 + 32);
    v241 = (v194 + 16);
    v195 = *MEMORY[0x1E69C9C78];
    v153 = (v36 + 32);
    v181 = *MEMORY[0x1E69C9C50];
    v179 = *MEMORY[0x1E69C9C70];
    v177 = *MEMORY[0x1E69C9C60];
    v205 = *MEMORY[0x1E6969A48];
    v191 = xmmword_1D8B1AB90;
    v180 = *MEMORY[0x1E6969A78];
    v199 = (v194 + 32);
    v156 = (v30 + 8);
    v61 = v204;
    v202 = v10;
    v217 = v15;
    v157 = v30;
    v158 = v57;
    v171 = (v36 + 8);
    while (v59 < *(v58 + 16))
    {
      v66 = *(v30 + 72);
      v178 = v59;
      v209 = *(v30 + 16);
      v209(v211, v163 + v66 * v59, v212);
      v242 = sub_1D8B14750();
      v238 = v67;
      (*v162)(v165, v164, v166);
      sub_1D8B146A0();
      swift_allocObject();
      sub_1D8B14680();
      sub_1D8B146D0();
      swift_allocObject();
      v237 = sub_1D8B145F0();
      v236 = sub_1D8B14780();
      v233 = v68;
      sub_1D8B14710();
      sub_1D8B146F0();
      sub_1D8B147A0();
      swift_allocObject();
      v69 = sub_1D8B14740();
      v70 = v186;
      sub_1D8B134A0();
      sub_1D8B133A0();
      v184 = *v185;
      v184(v70, v187);
      v71 = sub_1D8B14430();
      v176 = v69;
      if (v71)
      {
        v72 = sub_1D8B14430();
      }

      else
      {
        v72 = sub_1D8B12D70();
        if (v73)
        {
          goto LABEL_85;
        }
      }

      v74 = v72;
      v75 = v194;
      if (sub_1D8B14470())
      {
        v76 = sub_1D8B14470();
      }

      else
      {
        v76 = sub_1D8B12D80();
        if (v77)
        {
          goto LABEL_86;
        }
      }

      v78 = v192;
      ++v178;
      sub_1D88CE454(v76, v74, v196);
      v229 = *v230;
      while (1)
      {
        v79 = v226;
        v80 = v227;
        v229(v226, v225, v227);
        sub_1D8B13370();
        v220 = *v224;
        v220(v79, v80);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AE8);
        v82 = *(v75 + 80);
        v83 = (v82 + 32) & ~v82;
        v242 = *(v75 + 72);
        v218 = v82;
        v219 = v81;
        v84 = swift_allocObject();
        *(v84 + 16) = v191;
        v238 = *(v75 + 104);
        (v238)(v84 + v83, v223, v2);
        sub_1D8A4FF5C(v84);
        swift_setDeallocating();
        v85 = *(v75 + 8);
        v237 = v83;
        v85(v84 + v83, v2);
        swift_deallocClassInstance();
        v86 = v193;
        sub_1D8B133B0();

        v87 = sub_1D8B12DC0();
        LOBYTE(v83) = v88;
        v233 = *v234;
        v233(v86, v235);
        if (v83)
        {
          v236 = *v221;
          v236(v78, v228);
          v99 = v182;
          goto LABEL_33;
        }

        v236 = v87;
        v89 = v190;
        v90 = v212;
        v209(v190, v211, v212);
        v91 = (*v207)(v89, v90);
        if (v91 == v208)
        {
          v92 = 2;
        }

        else if (v91 == v198)
        {
          v92 = 3;
        }

        else if (v91 == v197)
        {
          v92 = 4;
        }

        else if (v91 == v195)
        {
          v92 = 5;
        }

        else if (v91 == v181)
        {
          v92 = 6;
        }

        else if (v91 == v179)
        {
          v92 = 7;
        }

        else
        {
          if (v91 != v177)
          {
            goto LABEL_87;
          }

          v92 = 1;
        }

        v93 = *v221;
        v94 = v78;
        v95 = v228;
        (*v221)(v94, v228);
        if (v236 == v92)
        {
          break;
        }

        v96 = v206;
        sub_1D8B13410();
        (v238)(v6, v205, v2);
        v97 = v183;
        v98 = v196;
        sub_1D8B133F0();
        v85(v6, v2);
        v93(v96, v95);
        v15 = v217;
        if ((*v216)(v97, 1, v217) == 1)
        {
          goto LABEL_81;
        }

        (*v232)(v98, v15);
        (*v231)(v98, v97, v15);
        v75 = v194;
        v78 = v192;
      }

      v236 = v93;
      v99 = v182;
      v15 = v217;
LABEL_33:
      v100 = v196;
      sub_1D8B13090();
      if (v101 < 0.0)
      {
        do
        {
          (v238)(v6, v180, v2);
          sub_1D8B133F0();
          v85(v6, v2);
          v201 = *v216;
          if (v201(v99, 1, v15) == 1)
          {
            goto LABEL_82;
          }

          v214 = *v232;
          v214(v100, v15);
          v213 = *v231;
          v213(v100, v99, v15);
          v116 = v186;
          sub_1D8B134A0();
          sub_1D8B133A0();
          v184(v116, v187);
          v117 = sub_1D8B12D80();
          if (v118)
          {
            goto LABEL_83;
          }

          v119 = v117;
          v120 = sub_1D8B12D70();
          if (v121)
          {
            goto LABEL_84;
          }

          sub_1D88CE454(v119, v120, v61);
          v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AF0);
          while (1)
          {
            v122 = v226;
            v123 = v227;
            v229(v226, v225, v227);
            sub_1D8B13370();
            v220(v122, v123);
            v124 = v237;
            v125 = swift_allocObject();
            (v238)(v125 + v124, v223, v2);
            v36 = sub_1D8B166E0();
            v126 = v36 + 56;
            v127 = *v241;
            (*v241)(v243, v125 + v124, v2);
            sub_1D88D6918(&unk_1ECA67D60, MEMORY[0x1E6969AD0]);
            v128 = sub_1D8B15790();
            v129 = -1 << *(v36 + 32);
            v130 = v128 & ~v129;
            v131 = v130 >> 6;
            v132 = *(v36 + 56 + 8 * (v130 >> 6));
            v133 = 1 << v130;
            if (((1 << v130) & v132) != 0)
            {
              v134 = ~v129;
              while (1)
              {
                v127(v6, *(v36 + 48) + v130 * v242, v2);
                sub_1D88D6918(&qword_1ECA64AF8, MEMORY[0x1E6969AD0]);
                v135 = sub_1D8B158C0();
                v85(v6, v2);
                if (v135)
                {
                  break;
                }

                v130 = (v130 + 1) & v134;
                v131 = v130 >> 6;
                v132 = *(v126 + 8 * (v130 >> 6));
                v133 = 1 << v130;
                if (((1 << v130) & v132) == 0)
                {
                  goto LABEL_47;
                }
              }

              v85(v243, v2);
              v15 = v217;
            }

            else
            {
LABEL_47:
              *(v126 + 8 * v131) = v133 | v132;
              (*v199)(*(v36 + 48) + v130 * v242, v243, v2);
              v136 = *(v36 + 16);
              v137 = __OFADD__(v136, 1);
              v138 = v136 + 1;
              v15 = v217;
              if (v137)
              {
                __break(1u);
                goto LABEL_76;
              }

              *(v36 + 16) = v138;
            }

            swift_setDeallocating();
            v85(v125 + v237, v2);
            swift_deallocClassInstance();
            v139 = v203;
            v61 = v204;
            sub_1D8B133B0();

            v140 = sub_1D8B12DC0();
            v142 = v141;
            v233(v139, v235);
            v143 = v202;
            if (v142)
            {
              break;
            }

            v144 = v200;
            v145 = v212;
            v209(v200, v211, v212);
            v146 = (*v207)(v144, v145);
            v114 = v222;
            if (v146 == v208)
            {
              v147 = v228;
              v236(v240, v228);
              if (v140 == 2)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v147 = v228;
              if (v146 == v198)
              {
                v236(v240, v228);
                if (v140 == 3)
                {
                  goto LABEL_38;
                }
              }

              else if (v146 == v197)
              {
                v236(v240, v228);
                if (v140 == 4)
                {
                  goto LABEL_38;
                }
              }

              else if (v146 == v195)
              {
                v236(v240, v228);
                if (v140 == 5)
                {
                  goto LABEL_38;
                }
              }

              else if (v146 == v181)
              {
                v236(v240, v228);
                if (v140 == 6)
                {
                  goto LABEL_38;
                }
              }

              else if (v146 == v179)
              {
                v236(v240, v228);
                if (v140 == 7)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                if (v146 != v177)
                {
                  goto LABEL_87;
                }

                v236(v240, v228);
                if (v140 == 1)
                {
                  goto LABEL_38;
                }
              }
            }

            v148 = v206;
            sub_1D8B13410();
            (v238)(v6, v205, v2);
            sub_1D8B133F0();
            v85(v6, v2);
            v236(v148, v147);
            if (v201(v143, 1, v15) == 1)
            {
              goto LABEL_80;
            }

            v214(v61, v15);
            v213(v61, v143, v15);
          }

          v236(v240, v228);
          v114 = v222;
LABEL_38:
          v233(v114, v235);
          v100 = v196;
          v214(v196, v15);
          v213(v100, v61, v15);
          sub_1D8B13090();
          v99 = v182;
        }

        while (v115 < 0.0);
      }

      v102 = v186;
      sub_1D8B134A0();
      sub_1D8B133A0();
      v184(v102, v187);
      sub_1D8B146E0();
      v242 = sub_1D8B14600();
      sub_1D88CFA20();
      (v242)(v245, 0);

      sub_1D8B146E0();
      sub_1D8B146E0();
      v103 = v161;
      sub_1D8B14610();

      v104 = v160;
      sub_1D88CEC78(v175, v168, v103, v160);
      v242 = *v171;
      (v242)(v103, v174);
      sub_1D8B145E0();

      v105 = v173;
      if (v173)
      {
        sub_1D8B146E0();
        v106 = v155;
        sub_1D8B14610();

        v107 = *v153;
        v173 = v105;
        v108 = v154;
        v109 = v106;
        v110 = v174;
        v107(v154, v109);
        sub_1D8B146E0();
        sub_1D8B14610();

        LODWORD(v238) = MEMORY[0x1DA71D8D0](v104, v108);
        v111 = v242;
        (v242)(v104, v110);
        v111(v108, v110);
        v112 = v235;
        v113 = v233;
        v233(v172, v235);
        (*v232)(v100, v15);
        v113(v169, v112);
        (*v156)(v211, v212);
        if (v238)
        {

          v173 = v176;
        }

        else
        {
        }

        v30 = v157;
        v64 = v170;
      }

      else
      {
        v62 = v235;
        v63 = v233;
        v233(v172, v235);
        (*v232)(v100, v15);
        v63(v169, v62);
        (*v156)(v211, v212);
        v173 = v176;
        v30 = v157;
        v64 = v170;
      }

      v59 = v178;
      v65 = v174;
      v58 = v158;
      if (v178 == v159)
      {

        v149 = v173;
        v150 = v242;
        (v242)(v168, v65);
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
LABEL_76:

    v149 = 0;
    v150 = *(v36 + 8);
    v65 = v174;
    v64 = v170;
    v150(v168, v174);
LABEL_78:
    v150(v175, v65);
    (*(v64 + 8))(v189, v228);
    return v149;
  }

  return result;
}

uint64_t sub_1D88D2898(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  v3 = sub_1D8B144E0();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v40 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v40 - v10;
  v42 = sub_1D8B134B0();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B12DE0();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v40 - v16;
  v17 = sub_1D8B14670();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D8B13450();
  v55 = *(v21 - 8);
  v56 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13410();
  sub_1D8B14750();
  (*(v18 + 104))(v20, *MEMORY[0x1E69C9C88], v17);
  sub_1D8B146A0();
  swift_allocObject();
  sub_1D8B14680();
  sub_1D8B146D0();
  swift_allocObject();
  sub_1D8B145F0();
  sub_1D8B14780();
  sub_1D8B14710();
  v57 = v2;
  sub_1D8B146F0();
  sub_1D8B147A0();
  swift_allocObject();
  v23 = sub_1D8B14740();
  sub_1D8B13090();
  if (v24 >= 0.0)
  {
    sub_1D8B146E0();
    sub_1D8B146E0();
    sub_1D8B14610();

    sub_1D8B14620();

    sub_1D8B146E0();
    sub_1D8B146E0();
    sub_1D8B145D0();

    sub_1D8B145E0();

    v38 = v54;
  }

  else
  {
    v25 = v54;
    sub_1D8B13420();
    sub_1D8B133A0();
    v26 = *(v41 + 8);
    v27 = v42;
    v26(v12, v42);
    sub_1D8B13420();
    v28 = v43;
    sub_1D8B133A0();
    v26(v12, v27);
    sub_1D8B146E0();
    v29 = sub_1D8B14600();
    sub_1D88CFAC0();
    v29(v59, 0);

    sub_1D8B146E0();
    sub_1D8B146E0();
    v30 = v46;
    sub_1D8B14610();

    sub_1D8B146E0();
    v31 = v47;
    sub_1D8B145D0();

    sub_1D8B146E0();
    v32 = v48;
    sub_1D8B14610();

    sub_1D88CEC78(v30, v31, v32, v58);
    v33 = *(v49 + 8);
    v34 = v32;
    v35 = v50;
    v33(v34, v50);
    v33(v31, v35);
    v33(v30, v35);
    sub_1D8B145E0();

    v36 = v45;
    v37 = *(v44 + 8);
    v37(v28, v45);
    v37(v53, v36);
    v38 = v25;
  }

  (*(v55 + 8))(v38, v56);
  return v23;
}

uint64_t sub_1D88D2F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v185 = a2;
  v181 = a1;
  v174 = sub_1D8B14650();
  v177 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v156 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1D8B134B0();
  v166 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1D8B12DE0();
  v167 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v176 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1D8B13430();
  v139 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v162 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v145 = &v127 - v11;
  v187 = sub_1D8B131D0();
  v138 = *(v187 - 8);
  v163 = v138;
  v12 = MEMORY[0x1EEE9AC00](v187);
  v14 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v173 = &v127 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v127 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v146 = &v127 - v20;
  v158 = sub_1D8B13450();
  v165 = *(v158 - 8);
  v21 = MEMORY[0x1EEE9AC00](v158);
  v186 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v127 - v23;
  v175 = sub_1D8B144E0();
  v164 = *(v175 - 8);
  v24 = MEMORY[0x1EEE9AC00](v175);
  v131 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v130 = &v127 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v172 = &v127 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v180 = &v127 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v157 = &v127 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v127 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v127 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v127 - v40;
  v42 = sub_1D8B14670();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v127 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D8B14750();
  v178 = v47;
  v179 = v46;
  v48 = *(v43 + 104);
  v152 = *MEMORY[0x1E69C9C88];
  v155 = v42;
  v154 = v43 + 104;
  v151 = v48;
  v48(v45);
  v150 = sub_1D8B146A0();
  swift_allocObject();
  v153 = v45;
  sub_1D8B14680();
  v149 = sub_1D8B146D0();
  swift_allocObject();
  v170 = sub_1D8B145F0();
  v49 = sub_1D8B14780();
  v168 = v50;
  v169 = v49;
  sub_1D8B14710();
  sub_1D8B146F0();
  v148 = sub_1D8B147A0();
  swift_allocObject();
  v51 = sub_1D8B14740();
  sub_1D8B146E0();
  sub_1D8B146B0();

  v52 = sub_1D8B14640();

  v53 = *(v52 + 16);

  if (!v53)
  {
    v100 = v163;
    v179 = v39;
    v180 = v41;
    v101 = v145;
    v102 = v146;
    v103 = v181;
    sub_1D8B13090();
    if (v104 >= 0.0)
    {
      sub_1D8B146E0();
      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B14620();

      sub_1D8B146E0();
      sub_1D8B146E0();
      sub_1D8B145D0();

      sub_1D8B145E0();
    }

    else
    {
      v147 = v36;
      v128 = v51;
      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B146E0();
      sub_1D8B145D0();

      sub_1D8B13410();
      v100[2](v102, v103, v187);
      sub_1D8B13090();
      if (v105 < 0.0)
      {
        v106 = v101;
        v186 = *(v139 + 104);
        LODWORD(v181) = *MEMORY[0x1E6969A48];
        v107 = (v139 + 8);
        v108 = (v138 + 6);
        v109 = (v138 + 1);
        v110 = v138 + 4;
        do
        {
          v112 = v182;
          v111 = v183;
          (v186)(v182, v181, v183);
          sub_1D8B133F0();
          (*v107)(v112, v111);
          if ((*v108)(v106, 1, v187) == 1)
          {
            goto LABEL_29;
          }

          v113 = v187;
          (*v109)(v102, v187);
          (*v110)(v102, v106, v113);
          sub_1D8B13090();
        }

        while (v114 < 0.0);
      }

      v115 = v159;
      sub_1D8B134A0();
      v116 = v176;
      sub_1D8B133A0();
      (*(v166 + 8))(v115, v160);
      v117 = v164;
      v118 = *(v164 + 16);
      v119 = v147;
      v120 = v175;
      v118(v147, v180, v175);
      v121 = v157;
      v118(v157, v119, v120);
      sub_1D88CFA20();
      v122 = *(v117 + 8);
      v122(v121, v120);
      v123 = v128;
      sub_1D8B146E0();
      v118(v121, v119, v120);
      v51 = v123;
      sub_1D8B14620();

      sub_1D8B146E0();
      v124 = v179;
      v125 = v180;
      sub_1D88CEC78(v180, v179, v119, v121);
      sub_1D8B145E0();

      v122(v119, v120);
      (*(v167 + 8))(v116, v161);
      (v163[1])(v146, v187);
      (*(v165 + 8))(v184, v158);
      v122(v124, v120);
      v122(v125, v120);
    }

    return v51;
  }

  v128 = v51;
  sub_1D88D6918(&qword_1ECA631C0, MEMORY[0x1E6969530]);
  v54 = v185;
  v55 = v181;
  v56 = v187;
  v57 = sub_1D8B15830();
  v58 = v163[2];
  if (v57)
  {
    v59 = v54;
  }

  else
  {
    v59 = v55;
  }

  v163 += 2;
  v145 = v58;
  (v58)(v19, v59, v56);
  v146 = v3;
  sub_1D8B146E0();
  sub_1D8B146B0();

  v60 = sub_1D8B14640();

  v61 = v60;
  v140 = *(v60 + 16);
  if (!v140)
  {
    goto LABEL_30;
  }

  v178 = 0;
  v62 = 0;
  v144 = v60 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
  v143 = v177 + 16;
  v142 = v177 + 8;
  LODWORD(v181) = *MEMORY[0x1E6969A48];
  v184 = (v139 + 104);
  v63 = (v139 + 8);
  v64 = (v138 + 6);
  v65 = (v138 + 1);
  v66 = v138 + 4;
  v139 = v166 + 8;
  v138 = (v164 + 16);
  v137 = (v164 + 8);
  v136 = (v167 + 8);
  v135 = (v165 + 8);
  v129 = (v164 + 32);
  v67 = v162;
  v147 = v36;
  v171 = v19;
  v141 = v60;
  v134 = v63;
  v133 = v64;
  v132 = v66;
  while (1)
  {
    if (v62 >= *(v61 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v69 = *(v177 + 72);
    v164 = v62;
    v70 = v156;
    (*(v177 + 16))(v156, v144 + v69 * v62, v174);
    v179 = sub_1D8B14750();
    v170 = v71;
    v151(v153, v152, v155);
    swift_allocObject();
    sub_1D8B14680();
    swift_allocObject();
    v169 = sub_1D8B145F0();
    v72 = sub_1D8B14780();
    v167 = v73;
    v168 = v72;
    v166 = sub_1D8B14710();
    v165 = v74;
    sub_1D8B146F0();
    swift_allocObject();
    v179 = sub_1D8B14740();
    v75 = v173;
    sub_1D88CDBCC(v70, v173);
    (*(v177 + 8))(v70, v174);
    sub_1D8B146E0();
    sub_1D8B14610();

    sub_1D8B146E0();
    sub_1D8B145D0();

    sub_1D8B13410();
    (v145)(v14, v75, v187);
    sub_1D8B13090();
    if (v76 < 0.0)
    {
      break;
    }

LABEL_14:
    v82 = v159;
    sub_1D8B134A0();
    sub_1D8B133A0();
    (*v139)(v82, v160);
    v83 = *v138;
    v84 = v147;
    v85 = v175;
    (*v138)(v147, v180, v175);
    v86 = v157;
    v83(v157, v84, v85);
    sub_1D88CFA20();
    v170 = *v137;
    v170(v86, v85);
    sub_1D8B146E0();
    v83(v86, v84, v85);
    sub_1D8B14620();
    v87 = v170;

    sub_1D8B146E0();
    v88 = v180;
    v89 = v172;
    sub_1D88CEC78(v180, v172, v84, v86);
    sub_1D8B145E0();

    v90 = v175;
    v87(v84, v175);
    (*v136)(v176, v161);
    v91 = *v65;
    (*v65)(v14, v187);
    (*v135)(v186, v158);
    v87(v89, v90);
    v87(v88, v90);
    v169 = v91;
    if (v178)
    {
      sub_1D8B146E0();
      v92 = v131;
      sub_1D8B14610();

      v93 = v91;
      v94 = v130;
      v95 = v92;
      v96 = v90;
      v97 = v179;
      (*v129)(v130, v95, v90);
      sub_1D8B146E0();
      sub_1D8B14610();

      v98 = MEMORY[0x1DA71D8D0](v84, v94);
      v87(v84, v96);
      v87(v94, v96);
      v93(v173, v187);
      v99 = v171;

      if (v98)
      {
        v178 = v97;
      }

      v67 = v162;
      v63 = v134;
      v64 = v133;
      v68 = v99;
    }

    else
    {
      v91(v173, v187);
      v178 = v179;
      v68 = v171;
      v67 = v162;
      v63 = v134;
      v64 = v133;
    }

    v66 = v132;
    v62 = v164 + 1;
    v61 = v141;
    if (v164 + 1 == v140)
    {

      v169(v68, v187);

      return v178;
    }
  }

  v77 = *v184;
  while (1)
  {
    v79 = v182;
    v78 = v183;
    v77(v182, v181, v183);
    sub_1D8B133F0();
    (*v63)(v79, v78);
    if ((*v64)(v67, 1, v187) == 1)
    {
      break;
    }

    v80 = v187;
    (*v65)(v14, v187);
    (*v66)(v14, v67, v80);
    sub_1D8B13090();
    if (v81 >= 0.0)
    {
      goto LABEL_14;
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  __break(1u);
  return result;
}

uint64_t sub_1D88D4420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v184 = a2;
  v5 = sub_1D8B14650();
  v163 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v162 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1D8B134B0();
  v171 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1D8B12DE0();
  v172 = *(v160 - 8);
  v8 = MEMORY[0x1EEE9AC00](v160);
  v165 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v134 - v10;
  v191 = sub_1D8B13430();
  v188 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v149 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v161 = &v134 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v134 - v17;
  v18 = sub_1D8B131D0();
  v178 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v148 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v180 = &v134 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v186 = &v134 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v176 = &v134 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v134 - v27;
  v183 = sub_1D8B13450();
  v170 = *(v183 - 8);
  v28 = MEMORY[0x1EEE9AC00](v183);
  v185 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v181 = &v134 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v192 = &v134 - v32;
  v167 = sub_1D8B144E0();
  v169 = *(v167 - 8);
  v33 = MEMORY[0x1EEE9AC00](v167);
  v138 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v137 = &v134 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v175 = &v134 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v179 = &v134 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v135 = &v134 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v164 = &v134 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v134 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v134 - v48;
  v50 = sub_1D8B14670();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v134 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1D8B14750();
  v187 = v54;
  v55 = *(v51 + 104);
  v154 = *MEMORY[0x1E69C9C88];
  v157 = v50;
  v156 = v51 + 104;
  v153 = v55;
  v55(v53);
  v152 = sub_1D8B146A0();
  swift_allocObject();
  v155 = v53;
  sub_1D8B14680();
  v151 = sub_1D8B146D0();
  swift_allocObject();
  sub_1D8B145F0();
  v182 = sub_1D8B14780();
  v177 = v56;
  v174 = sub_1D8B14710();
  v173 = v57;
  sub_1D8B146F0();
  v150 = sub_1D8B147A0();
  swift_allocObject();
  v58 = sub_1D8B14740();
  sub_1D8B146E0();
  sub_1D8B146B0();

  v59 = sub_1D8B14640();

  v60 = *(v59 + 16);

  if (!v60)
  {
    v146 = v47;
    v186 = v49;
    v109 = v168;
    v110 = v166;
    sub_1D8B13090();
    if (v111 >= 0.0)
    {
      sub_1D8B146E0();
      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B14620();

      sub_1D8B146E0();
      sub_1D8B146E0();
      sub_1D8B145D0();

      sub_1D8B145E0();
    }

    else
    {
      v134 = v58;
      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B146E0();
      sub_1D8B145D0();

      sub_1D8B13410();
      (*(v178 + 16))(v110, a1, v18);
      sub_1D8B13090();
      if (v112 < 0.0)
      {
        v113 = *(v188 + 104);
        v188 += 104;
        v189 = v113;
        LODWORD(v187) = *MEMORY[0x1E6969A78];
        v114 = (v188 - 96);
        v115 = (v178 + 48);
        v116 = (v178 + 8);
        v117 = (v178 + 32);
        do
        {
          v118 = v190;
          v119 = v191;
          v189(v190, v187, v191);
          sub_1D8B133F0();
          (*v114)(v118, v119);
          if ((*v115)(v109, 1, v18) == 1)
          {
            goto LABEL_36;
          }

          (*v116)(v110, v18);
          (*v117)(v110, v109, v18);
          sub_1D8B13090();
        }

        while (v120 < 0.0);
      }

      v121 = v158;
      sub_1D8B134A0();
      v122 = v147;
      sub_1D8B133A0();
      v171[1](v121, v159);
      v58 = v134;
      sub_1D8B146E0();
      v123 = sub_1D8B14600();
      v124 = v186;
      sub_1D88CFA20();
      v123(v193, 0);

      v125 = v146;
      v126 = v110;
      if (sub_1D8B144A0())
      {
        sub_1D8B146E0();
        sub_1D8B146E0();
        v127 = v135;
        sub_1D8B14610();

        sub_1D88CEC78(v124, v125, v127, v164);
        v128 = *(v169 + 8);
        v129 = v127;
        v130 = v167;
        v128(v129, v167);
        sub_1D8B145E0();

        (*(v172 + 8))(v122, v160);
        (*(v178 + 8))(v126, v18);
        (*(v170 + 8))(v192, v183);
        v128(v146, v130);
        v128(v124, v130);
      }

      else
      {
        (*(v172 + 8))(v122, v160);
        (*(v178 + 8))(v110, v18);
        (*(v170 + 8))(v192, v183);
        v131 = *(v169 + 8);
        v132 = v167;
        v131(v125, v167);
        v131(v124, v132);
      }
    }

    return v58;
  }

  v134 = v58;
  v174 = v3;
  sub_1D8B146E0();
  sub_1D8B146B0();

  v61 = sub_1D8B14640();

  v144 = *(v61 + 16);
  if (v144)
  {
    v62 = 0;
    v177 = 0;
    v147 = (v61 + ((*(v163 + 80) + 32) & ~*(v163 + 80)));
    v146 = (v163 + 16);
    v173 = (v178 + 16);
    LODWORD(v189) = *MEMORY[0x1E6969A78];
    v192 = (v188 + 104);
    v188 += 8;
    v182 = (v170 + 8);
    v187 = (v178 + 48);
    v63 = (v178 + 8);
    v64 = (v178 + 32);
    v143 = v171 + 1;
    v140 = (v172 + 8);
    v166 = (v169 + 8);
    v136 = (v169 + 32);
    v139 = (v163 + 8);
    v65 = v162;
    v66 = v161;
    v142 = a1;
    v141 = v5;
    v145 = v61;
    while (v62 < *(v61 + 16))
    {
      v68 = *(v163 + 72);
      v168 = v62;
      (*(v163 + 16))(v65, &v147[v68 * v62], v5);
      sub_1D8B14750();
      v178 = v69;
      v153(v155, v154, v157);
      swift_allocObject();
      sub_1D8B14680();
      swift_allocObject();
      sub_1D8B145F0();
      v172 = sub_1D8B14780();
      v171 = v70;
      v170 = sub_1D8B14710();
      v169 = v71;
      sub_1D8B146F0();
      swift_allocObject();
      v178 = sub_1D8B14740();
      v72 = v176;
      v172 = *v173;
      (v172)(v176, a1, v18);
      v73 = v72;
      sub_1D88CDBCC(v65, v186);
      for (i = v184; ; i = v184)
      {
        sub_1D8B13090();
        if (v75 >= 0.0)
        {
          break;
        }

        v76 = v181;
        sub_1D8B13410();
        v77 = v191;
        v78 = v190;
        (*v192)(v190, v189, v191);
        sub_1D8B133F0();
        (*v188)(v78, v77);
        (*v182)(v76, v183);
        if ((*v187)(v66, 1, v18) == 1)
        {
          goto LABEL_34;
        }

        v79 = *v63;
        (*v63)(v73, v18);
        v80 = *v64;
        (*v64)(v73, v66, v18);
        v81 = v180;
        sub_1D88CDBCC(v65, v180);
        v82 = v186;
        v79(v186, v18);
        v80(v82, v81, v18);
      }

      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B146E0();
      sub_1D8B145D0();

      sub_1D8B13410();
      v83 = v148;
      (v172)(v148, v186, v18);
      sub_1D8B13090();
      v84 = v149;
      if (v85 < 0.0)
      {
        v86 = *v192;
        do
        {
          v87 = i;
          v89 = v190;
          v88 = v191;
          v86(v190, v189, v191);
          sub_1D8B133F0();
          (*v188)(v89, v88);
          if ((*v187)(v84, 1, v18) == 1)
          {
            goto LABEL_35;
          }

          (*v63)(v83, v18);
          (*v64)(v83, v84, v18);
          i = v87;
          sub_1D8B13090();
        }

        while (v90 < 0.0);
      }

      v91 = v158;
      sub_1D8B134A0();
      v92 = v165;
      sub_1D8B133A0();
      (*v143)(v91, v159);
      sub_1D8B146E0();
      v93 = sub_1D8B14600();
      sub_1D88CFA20();
      v93(v193, 0);

      v94 = v175;
      if (sub_1D8B144A0())
      {
        v172 = sub_1D8B146E0();
        sub_1D8B146E0();
        v95 = v135;
        sub_1D8B14610();

        sub_1D88CEC78(v179, v94, v95, v164);
        v96 = *v166;
        v97 = v95;
        v98 = v167;
        (*v166)(v97, v167);
        sub_1D8B145E0();

        (*v140)(v165, v160);
        v172 = *v63;
        (v172)(v83, v18);
        (*v182)(v185, v183);
        v96(v94, v98);
        v171 = v96;
        v96(v179, v98);
      }

      else
      {
        (*v140)(v92, v160);
        v172 = *v63;
        (v172)(v83, v18);
        (*v182)(v185, v183);
        v99 = *v166;
        v100 = v167;
        (*v166)(v94, v167);
        v171 = v99;
        (v99)(v179, v100);
      }

      v65 = v162;
      if (v177)
      {
        sub_1D8B146E0();
        v101 = v138;
        sub_1D8B14610();

        v102 = v137;
        v103 = v167;
        (*v136)(v137, v101, v167);
        v104 = v178;
        sub_1D8B146E0();
        v105 = v164;
        sub_1D8B14610();

        v106 = MEMORY[0x1DA71D8D0](v105, v102);
        v107 = v171;
        (v171)(v105, v103);
        (v107)(v102, v103);
        v108 = v172;
        (v172)(v186, v18);
        v108(v176, v18);
        v5 = v141;
        (*v139)(v65, v141);
        v66 = v161;

        if (v106)
        {
          v177 = v104;
        }
      }

      else
      {
        v67 = v172;
        (v172)(v186, v18);
        v67(v176, v18);
        v5 = v141;
        (*v139)(v65, v141);
        v177 = v178;
        v66 = v161;
      }

      a1 = v142;
      v62 = (v168 + 1);
      v61 = v145;
      if (v168 + 1 == v144)
      {

        return v177;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88D5BF0(uint64_t a1)
{
  v63 = a1;
  v2 = sub_1D8B134B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641E8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - v9;
  v11 = sub_1D8B144E0();
  v12 = *(v11 - 8);
  v64 = v11;
  v65 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v62 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v60 = &v52 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v52 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v52 - v28;
  result = sub_1D8B146C0();
  if ((result & 1) == 0)
  {
    return result;
  }

  v53 = v5;
  sub_1D8B14610();
  v31 = sub_1D8B144A0();
  v58 = v1;
  if ((v31 & 1) == 0)
  {
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v31);
  *(&v52 - 2) = v16;
  sub_1D87EDFE0(sub_1D88D6B8C, v63, v10);
  v32 = type metadata accessor for TimeZonedTime();
  if ((*(*(v32 - 8) + 48))(v10, 1, v32) == 1)
  {
    sub_1D87A14E4(v10, &qword_1ECA641E8);
LABEL_5:
    v33 = 1;
    goto LABEL_7;
  }

  (*(v3 + 16))(v29, &v10[*(v32 + 24)], v2);
  sub_1D88D65E4(v10, type metadata accessor for TimeZonedTime);
  v33 = 0;
LABEL_7:
  v56 = *(v3 + 56);
  v57 = v3 + 56;
  v56(v29, v33, 1, v2);
  v34 = v64;
  v35 = *(v65 + 1);
  v65 += 8;
  v52 = v35;
  v35(v16, v64);
  sub_1D87A0E38(v29, v27, &qword_1ECA64B00);
  v54 = v3;
  v55 = *(v3 + 48);
  v36 = v55(v27, 1, v2);
  sub_1D87A14E4(v27, &qword_1ECA64B00);
  if (v36 == 1)
  {
    v37 = v61;
    sub_1D8B145D0();
    v38 = sub_1D8B144A0();
    if (v38)
    {
      MEMORY[0x1EEE9AC00](v38);
      *(&v52 - 2) = v37;
      v39 = v59;
      sub_1D87EDFE0(sub_1D88D657C, v63, v59);
      sub_1D87A14E4(v29, &qword_1ECA64B00);
      v40 = type metadata accessor for TimeZonedTime();
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) != 1)
      {
        v45 = v39 + *(v40 + 24);
        v44 = v60;
        (*(v54 + 16))(v60, v45, v2);
        sub_1D88D65E4(v39, type metadata accessor for TimeZonedTime);
        v43 = 0;
        goto LABEL_14;
      }

      v41 = &qword_1ECA641E8;
      v42 = v39;
    }

    else
    {
      v41 = &qword_1ECA64B00;
      v42 = v29;
    }

    sub_1D87A14E4(v42, v41);
    v43 = 1;
    v44 = v60;
LABEL_14:
    v56(v44, v43, 1, v2);
    v52(v37, v34);
    sub_1D88D650C(v44, v29);
  }

  sub_1D87A0E38(v29, v22, &qword_1ECA64B00);
  if (v55(v22, 1, v2) == 1)
  {
    sub_1D87A14E4(v29, &qword_1ECA64B00);
  }

  else
  {
    v46 = v53;
    v47 = v54;
    (*(v54 + 32))(v53, v22, v2);
    v64 = *(v47 + 16);
    v48 = v62;
    v64(v62, v46, v2);
    v65 = v29;
    v49 = v56;
    v56(v48, 0, 1, v2);
    v50 = sub_1D8B14600();
    sub_1D8B144D0();
    v50(v66, 0);
    v64(v48, v46, v2);
    v49(v48, 0, 1, v2);
    v51 = sub_1D8B145C0();
    sub_1D8B144D0();
    v51(v66, 0);
    v22 = v65;
    (*(v47 + 8))(v46, v2);
  }

  return sub_1D87A14E4(v22, &qword_1ECA64B00);
}

uint64_t sub_1D88D63AC@<X0>(unint64_t a1@<X1>, char **a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
  v4 = sub_1D8B15270();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69E0208], v4);
  v8 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v7, a1, 1);

  v11[2] = a1;
  v9 = sub_1D8820C18(sub_1D88D6724, v11, v8);

  *a2 = v9;
  return result;
}

uint64_t sub_1D88D650C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TimeZonedTime()
{
  result = qword_1ECA64B18;
  if (!qword_1ECA64B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D88D65E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D88D6644(uint64_t *a1)
{
  v2 = *a1;
  if (v2 != sub_1D8B14450())
  {
    return 0;
  }

  v3 = a1[1];
  return v3 == sub_1D8B144B0();
}

unint64_t sub_1D88D66BC()
{
  result = qword_1ECA64B10;
  if (!qword_1ECA64B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA64B10);
  }

  return result;
}

void sub_1D88D6724()
{
  v0 = sub_1D8B151F0();
  sub_1D8B16250();
}

uint64_t sub_1D88D679C()
{
  result = sub_1D8B134B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D88D6860()
{
  result = qword_1ECA64B40;
  if (!qword_1ECA64B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B40);
  }

  return result;
}

uint64_t sub_1D88D68B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZonedTime();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D88D6918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D88D6974()
{
  result = qword_1ECA64B60;
  if (!qword_1ECA64B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B60);
  }

  return result;
}

unint64_t sub_1D88D69CC()
{
  result = qword_1ECA64B68;
  if (!qword_1ECA64B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B68);
  }

  return result;
}

unint64_t sub_1D88D6A24()
{
  result = qword_1ECA64B70;
  if (!qword_1ECA64B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B70);
  }

  return result;
}

uint64_t sub_1D88D6A78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
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

BOOL GroundingResult<>.isEligibleForEventClassification.getter()
{
  v0 = sub_1D8A05CB0();
  v1 = sub_1D88E0474(&unk_1F54267C8, v0);

  return (v1 & 1) == 0;
}

uint64_t sub_1D88D6BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v76 = a2;
  v4 = sub_1D8B131D0();
  v78 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v67 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v67 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v67 - v22;
  v23 = sub_1D8B14780();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v73 = sub_1D8B14780();
    v79 = v27;
  }

  else
  {
    v73 = 0;
    v79 = 0;
  }

  sub_1D8B146F0();
  v28 = v80;
  sub_1D8B12FD0();

  sub_1D8B146E0();
  v29 = sub_1D88DFD10(v14, v11, a1);
  v30 = v81;
  if (v2)
  {
    sub_1D87A14E4(v28, &qword_1ECA630C0);
  }

  else
  {
    v71 = 0;
    v70 = v29;

    v72 = v21;
    v33 = v77;
    v32 = v78;
    v34 = v14;
    v35 = v11;
    v36 = *(v78 + 32);
    v36(v77, v34, v4);
    v36(v30, v35, v4);
    v37 = sub_1D8B14750();
    v68 = v38;
    v69 = v37;
    v39 = v30;
    v40 = *(v32 + 16);
    v41 = v75;
    v40(v75, v33, v4);
    v42 = v74;
    v40(v74, v39, v4);
    v43 = sub_1D8B14710();
    v45 = v44;
    sub_1D87A0E38(v28, v72, &qword_1ECA630C0);
    v46 = v76;
    v47 = v68;
    *v76 = v69;
    v46[1] = v47;
    v48 = v41;
    v49 = type metadata accessor for EventLookupItem();
    v40(v46 + v49[5], v48, v4);
    v40(v46 + v49[6], v42, v4);
    *(v46 + v49[7]) = v70 & 1;
    v50 = (v46 + v49[8]);
    v51 = v79;
    *v50 = v73;
    v50[1] = v51;
    if (sub_1D8B15A70() < 241)
    {
      v61 = v48;
      v62 = *(v78 + 8);
      v62(v42, v4);
      v62(v61, v4);
      v62(v81, v4);
      v62(v77, v4);
      sub_1D87A14E4(v80, &qword_1ECA630C0);
      v63 = (v46 + v49[9]);
      *v63 = v43;
      v63[1] = v45;
      v56 = v72;
    }

    else
    {
      if (qword_1EE0E4390 != -1)
      {
        swift_once();
      }

      v52 = sub_1D8B151E0();
      __swift_project_value_buffer(v52, qword_1EE0E4398);

      v53 = sub_1D8B151C0();
      v54 = sub_1D8B16230();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v72;
      v57 = v77;
      if (v55)
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        v59 = sub_1D8B15A70();

        *(v58 + 4) = v59;

        _os_log_impl(&dword_1D8783000, v53, v54, "Notes field left blank due to length %ld", v58, 0xCu);
        v60 = v58;
        v42 = v74;
        MEMORY[0x1DA721330](v60, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v64 = v81;
      v65 = *(v78 + 8);
      v65(v42, v4);
      v65(v75, v4);
      v65(v64, v4);
      v65(v57, v4);
      sub_1D87A14E4(v80, &qword_1ECA630C0);
      v46 = v76;
      v66 = (v76 + v49[9]);
      *v66 = 0;
      v66[1] = 0;
    }

    result = sub_1D88E057C(v56, v46 + v49[10]);
    *(v46 + v49[11]) = 0;
  }

  return result;
}

id sub_1D88D7238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D8B20D10;
  v1 = *MEMORY[0x1E6977730];
  v2 = *MEMORY[0x1E6977738];
  *(v0 + 32) = *MEMORY[0x1E6977730];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E6977740];
  v4 = *MEMORY[0x1E6977748];
  *(v0 + 48) = *MEMORY[0x1E6977740];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E6977758];
  v6 = *MEMORY[0x1E6977768];
  *(v0 + 64) = *MEMORY[0x1E6977758];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E69777A8];
  v8 = *MEMORY[0x1E69777B0];
  *(v0 + 80) = *MEMORY[0x1E69777A8];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E69777D0];
  v34 = *MEMORY[0x1E6977808];
  v10 = *MEMORY[0x1E6977808];
  *(v0 + 96) = *MEMORY[0x1E69777D0];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x1E6977820];
  v36 = *MEMORY[0x1E6977848];
  v12 = *MEMORY[0x1E6977848];
  *(v0 + 112) = *MEMORY[0x1E6977820];
  *(v0 + 120) = v12;
  v13 = *MEMORY[0x1E6977860];
  v35 = *MEMORY[0x1E6977868];
  v14 = *MEMORY[0x1E6977868];
  *(v0 + 128) = *MEMORY[0x1E6977860];
  *(v0 + 136) = v14;
  v33 = *MEMORY[0x1E6977890];
  v38 = *MEMORY[0x1E69778A0];
  v15 = *MEMORY[0x1E69778A0];
  *(v0 + 144) = *MEMORY[0x1E6977890];
  *(v0 + 152) = v15;
  v37 = *MEMORY[0x1E69778C0];
  *(v0 + 160) = *MEMORY[0x1E69778C0];
  qword_1ECAA3670 = v0;
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v34;
  v26 = v11;
  v27 = v36;
  v28 = v13;
  v29 = v35;
  v30 = v33;
  v31 = v38;

  return v37;
}

uint64_t sub_1D88D7420(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64C18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88E1540();
  sub_1D8B16DD0();
  v14 = 0;
  sub_1D8B16A90();
  if (!v5)
  {
    v13 = 1;
    sub_1D8B16A90();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D88D75B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88E1498();
  sub_1D8B16DD0();
  v12 = 0;
  sub_1D8B16A90();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BF0);
    sub_1D88E1594(&qword_1ECA64BF8, sub_1D88E14EC);
    sub_1D8B16AE0();
    type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo();
    v10[14] = 2;
    sub_1D8B13240();
    sub_1D88E1660(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
    sub_1D8B16AE0();
    v10[13] = 3;
    sub_1D8B16AD0();
    v10[12] = 4;
    sub_1D8B16AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D88D784C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1D8B13240();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64C20);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v17 - v6;
  v8 = type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88E1498();
  v21 = v7;
  v11 = v23;
  sub_1D8B16DB0();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v5;
  v12 = v20;
  v29 = 0;
  *v10 = sub_1D8B169C0();
  v10[1] = v13;
  v17[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BF0);
  v28 = 1;
  sub_1D88E1594(&qword_1ECA64C28, sub_1D88E160C);
  sub_1D8B16A10();
  v10[2] = v24;
  v27 = 2;
  sub_1D88E1660(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
  v14 = v23;
  v17[1] = 0;
  sub_1D8B16A10();
  (*(v19 + 32))(v10 + v8[6], v14, v3);
  v26 = 3;
  *(v10 + v8[7]) = sub_1D8B16A00();
  v25 = 4;
  v15 = sub_1D8B169D0();
  (*(v12 + 8))(v21, v22);
  *(v10 + v8[8]) = v15 & 1;
  sub_1D88E1274(v10, v18, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D88E11AC(v10, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
}

uint64_t sub_1D88D7D18()
{
  if (*v0)
  {
    return 0x697263736E617274;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D88D7D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D8B43EE0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470)
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

uint64_t sub_1D88D7E4C(uint64_t a1)
{
  v2 = sub_1D88E1540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88D7E88(uint64_t a1)
{
  v2 = sub_1D88E1540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88D7EC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D88E074C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1D88D7F14()
{
  v1 = 0x6E6F73616572;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1D88D7FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D88E0930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D88D7FE4(uint64_t a1)
{
  v2 = sub_1D88E1498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88D8020(uint64_t a1)
{
  v2 = sub_1D88E1498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88D808C()
{
  if (qword_1EE0E6008 != -1)
  {
    result = swift_once();
  }

  if ((byte_1EE0ED6C0 & 1) == 0)
  {
    result = sub_1D89A274C();
  }

  byte_1EE0ED6F8 = 1;
  return result;
}

void sub_1D88D80EC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v171 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v165 - v11;
  v178 = type metadata accessor for AFMResult(0);
  v13 = MEMORY[0x1EEE9AC00](v178);
  v169 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v177 = &v165 - v15;
  v179 = type metadata accessor for MetaDetectionResult();
  v16 = *(v179 - 8);
  v17 = MEMORY[0x1EEE9AC00](v179);
  v168 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v182 = &v165 - v19;
  v173 = type metadata accessor for CVTrackSnapshot(0);
  v188 = *(v173 - 8);
  v20 = MEMORY[0x1EEE9AC00](v173);
  v170 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v165 - v22;
  v24 = sub_1D8B14060();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(a2 + 32);
  v29 = *(a2 + 40);
  v180 = a1;
  v181 = v29;
  v167 = a3;
  if ((sub_1D88D9DB8(a1, v29, a3) & 1) == 0)
  {
    *a4 = xmmword_1D8B26630;
    *(a4 + 16) = 2;
    return;
  }

  v166 = a4;
  if (qword_1EE0E6008 != -1)
  {
LABEL_167:
    swift_once();
  }

  LODWORD(v30) = byte_1EE0ED6C0;
  v31 = v182;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v172 = qword_1EE0E54C8;
  if ((sub_1D8B0ABB8() & 1) == 0 && (sub_1D8B0AAA4() & 1) == 0)
  {
    if (qword_1EE0E9958 != -1)
    {
      swift_once();
    }

    *&v189 = qword_1EE0E9960;
    WORD4(v189) = word_1EE0E9968;
    BYTE10(v189) = byte_1EE0E996A;
    LOBYTE(v193) = v30;
    (*(v25 + 104))(v27, *MEMORY[0x1E69A12A0], v24);

    v32 = GreymatterAvailability.isAvailable(_:languageOption:)(&v193, v27);
    (*(v25 + 8))(v27, v24);

    if ((v32 & 1) == 0)
    {
      if (qword_1EE0E4390 != -1)
      {
LABEL_169:
        swift_once();
      }

      v98 = sub_1D8B151E0();
      __swift_project_value_buffer(v98, qword_1EE0E4398);
      v99 = sub_1D8B151C0();
      v100 = sub_1D8B161F0();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v189 = v102;
        *v101 = 136315138;
        if (v30)
        {
          v103 = 0xD00000000000003FLL;
        }

        else
        {
          v103 = 0xD00000000000001FLL;
        }

        if (v30)
        {
          v104 = "textComposition.OpenEndedSchema";
        }

        else
        {
          v104 = "";
        }

        v105 = sub_1D89AC714(v103, v104 | 0x8000000000000000, &v189);

        *(v101 + 4) = v105;
        _os_log_impl(&dword_1D8783000, v99, v100, "GMS reported that use case identifier '%s' is not available for event classification.", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        MEMORY[0x1DA721330](v102, -1, -1);
        MEMORY[0x1DA721330](v101, -1, -1);
      }

      v95 = v166;
      *v166 = 0xD000000000000013;
      v95[1] = 0x80000001D8B43D40;
      v96 = 1;
      goto LABEL_59;
    }
  }

  v187 = sub_1D891A6E8();
  v30 = v179;
  v186 = *(v187 + 16);
  if (!v186)
  {
    goto LABEL_56;
  }

  v183 = *(v173 + 20);
  v165 = (*(v188 + 80) + 32) & ~*(v188 + 80);
  v185 = v187 + v165;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
  v25 = 0;
  v27 = v16 + 7;
  v24 = 1;
  v176 = v16 + 7;
  while (1)
  {
    if (v25 >= *(v187 + 16))
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v33 = *(v188 + 72);
    sub_1D88E1274(v185 + v33 * v25, v23, type metadata accessor for CVTrackSnapshot);
    v34 = sub_1D8B16910();
    v35 = sub_1D881F7DC(1);
    if (v36)
    {
      goto LABEL_159;
    }

    v16 = v34 + 8;
    *(v34 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
    *(v34[6] + v35) = 1;
    *(v34[7] + 8 * v35) = 0x3FE999999999999ALL;
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_160;
    }

    v34[2] = v39;
    v40 = sub_1D881F7DC(12);
    if (v41)
    {
      goto LABEL_161;
    }

    *(v16 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    *(v34[6] + v40) = 12;
    *(v34[7] + 8 * v40) = 0x3FE0000000000000;
    v42 = v34[2];
    v38 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v38)
    {
      goto LABEL_162;
    }

    v34[2] = v43;
    v44 = sub_1D881F7DC(13);
    if (v45)
    {
      goto LABEL_163;
    }

    *(v16 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    *(v34[6] + v44) = 13;
    *(v34[7] + 8 * v44) = 0x3FE0000000000000;
    v46 = v34[2];
    v38 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v38)
    {
      goto LABEL_164;
    }

    v34[2] = v47;
    v48 = sub_1D881F7DC(5);
    if (v49)
    {
      goto LABEL_165;
    }

    *(v16 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    *(v34[6] + v48) = 5;
    *(v34[7] + 8 * v48) = 0x4020000000000000;
    v50 = v34[2];
    v38 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v38)
    {
      goto LABEL_166;
    }

    v34[2] = v51;
    v52 = 1.0;
    if (v51)
    {
      v53 = sub_1D881F7DC(5);
      if (v54)
      {
        v52 = *(v34[7] + 8 * v53);
      }
    }

    ++v25;

    switch(*&v23[v183] >> 60)
    {
      case 1:
        v69 = type metadata accessor for GroundedParseDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v69;
        *&v191 = sub_1D88E1660(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_38;
      case 2:
        v56 = swift_projectBox();
        *(&v190 + 1) = v30;
        *&v191 = sub_1D88E1660(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for MetaDetectionResult;
        goto LABEL_38;
      case 3:
      case 8:
        v55 = type metadata accessor for ObjectDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v55;
        *&v191 = sub_1D88E1660(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_38;
      case 4:
        v70 = type metadata accessor for ParseDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v70;
        *&v191 = sub_1D88E1660(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for ParseDetectorResult;
        goto LABEL_38;
      case 5:
        v71 = type metadata accessor for TextDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v71;
        *&v191 = sub_1D88E1660(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for TextDetectorResult;
        goto LABEL_38;
      case 6:
      case 7:
        v59 = type metadata accessor for StreamingBarcodeDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v59;
        *&v191 = sub_1D88E1660(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_38;
      case 9:
      case 0xALL:
        v60 = swift_projectBox();
        v61 = v177;
        sub_1D88E1274(v60, v177, type metadata accessor for AFMResult);
        *(&v190 + 1) = v178;
        *&v191 = sub_1D88E1660(&qword_1EE0E3F80, type metadata accessor for AFMResult);
        v62 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v63 = v61;
        v31 = v182;
        sub_1D88E120C(v63, v62, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v64 = type metadata accessor for SyntheticDetectionResult();
        v56 = swift_projectBox();
        *(&v190 + 1) = v64;
        *&v191 = sub_1D88E1660(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_38;
      case 0xCLL:
        v65 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v65;
        *&v191 = sub_1D88E1660(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_38;
      case 0xDLL:
        v72 = type metadata accessor for GroundedParseClassificationsResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v72;
        *&v191 = sub_1D88E1660(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_38:
        sub_1D88E1274(v56, boxed_opaque_existential_1, v58);
        break;
      default:
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
        v67 = swift_projectBox();
        *(&v190 + 1) = v66;
        *&v191 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
        v68 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v27 = v176;
        v24 = 1;
        sub_1D87A0E38(v67, v68, &qword_1ECA67750);
        break;
    }

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v74 = swift_dynamicCast();
    v16 = *v27;
    if ((v74 & 1) == 0)
    {
      (v16)(v12, 1, 1, v30);
      sub_1D87A14E4(v12, &qword_1ECA64BB8);
      goto LABEL_13;
    }

    (v16)(v12, 0, 1, v30);
    sub_1D88E120C(v12, v31, type metadata accessor for MetaDetectionResult);
    if (*v31 != 5 || (v181 & 1) != 0 && *&v31[v30[8]] != v28 || (v174 = v16, v175 = v73, v16 = v30[9], *(v16 + v31) == 2) && v28 - *&v31[v30[8]] > v52 || (CVBundle.latestEstimate.getter(&v197), v196 = v197, CVDetection.detection.getter(&v193), v76 = v194, v75 = v195, __swift_project_boxed_opaque_existential_1(&v193, v194), v77 = *(v75 + 64), v78 = v76, v27 = v176, v79 = v75, v30 = v179, v77(&v189, v78, v79), __swift_destroy_boxed_opaque_existential_1(&v193), Corners.bounds.getter(), v81 = v80, v83 = v82, v85 = v84, v87 = v86, v31 = v182, , v204.origin.x = 0.0, v204.origin.y = 0.0, v204.size.width = 1.0, v204.size.height = 1.0, v198.origin.x = v81, v198.origin.y = v83, v198.size.width = v85, v198.size.height = v87, v199 = CGRectIntersection(v198, v204), x = v199.origin.x, y = v199.origin.y, width = v199.size.width, height = v199.size.height, v92 = &v31[v30[5]], *&v199.origin.y = v92[1], v189 = *v92, v190 = *&v199.origin.y, *&v199.origin.y = v92[3], v191 = v92[2], v192 = *&v199.origin.y, Corners.bounds.getter(), v205.origin.x = x, v205.origin.y = y, v205.size.width = width, v205.size.height = height, v201 = CGRectIntersection(v200, v205), width * height * 0.9 > v201.size.width * v201.size.height))
    {
      sub_1D88E11AC(v31, type metadata accessor for MetaDetectionResult);
      goto LABEL_13;
    }

    v93 = *(v16 + v31);
    if (v93 != 3)
    {
      break;
    }

    if (sub_1D8B0AAA4())
    {
      *&v189 = 0;
      *(&v189 + 1) = 0xE000000000000000;
      sub_1D8B16720();

      *&v189 = 0xD00000000000002FLL;
      *(&v189 + 1) = 0x80000001D8B43DD0;
      v161 = &v31[v30[10]];
      v162 = v161[1];
      if (!v162)
      {
        goto LABEL_173;
      }

LABEL_171:
      v163 = *v161;
      v164 = v162;
LABEL_174:

      MEMORY[0x1DA71EFA0](v163, v164);

      sub_1D8B168C0();
      __break(1u);
      return;
    }

    sub_1D88E11AC(v31, type metadata accessor for MetaDetectionResult);
    if (v181)
    {
      goto LABEL_52;
    }

LABEL_13:
    sub_1D88E11AC(v23, type metadata accessor for CVTrackSnapshot);
    if (v186 == v25)
    {
      goto LABEL_56;
    }
  }

  sub_1D88E11AC(v31, type metadata accessor for MetaDetectionResult);
  if (v93 != 2)
  {
    goto LABEL_13;
  }

LABEL_52:

  sub_1D88E11AC(v23, type metadata accessor for CVTrackSnapshot);
  v94 = CVBundle.textDetectorResults.getter()[2];

  if (!v94)
  {
    v97 = xmmword_1D8B26630;
    goto LABEL_58;
  }

  if (v167)
  {
LABEL_54:
    v95 = v166;
    *v166 = 0;
    v95[1] = 0;
    v96 = -1;
    goto LABEL_59;
  }

  v188 = sub_1D891A6E8();
  v106 = v171;
  v107 = v168;
  v108 = v170;
  v187 = *(v188 + 16);
  if (v187)
  {
    v109 = 0;
    v110 = v188 + v165;
    v186 = *(v173 + 20);
    do
    {
      if (v109 >= *(v188 + 16))
      {
        __break(1u);
        goto LABEL_169;
      }

      sub_1D88E1274(v110, v108, type metadata accessor for CVTrackSnapshot);
      ++v109;
      switch(*(v108 + v186) >> 60)
      {
        case 1:
          v124 = type metadata accessor for GroundedParseDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v124;
          *&v191 = sub_1D88E1660(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_88;
        case 2:
          v112 = swift_projectBox();
          *(&v190 + 1) = v30;
          *&v191 = sub_1D88E1660(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for MetaDetectionResult;
          goto LABEL_88;
        case 3:
        case 8:
          v111 = type metadata accessor for ObjectDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v111;
          *&v191 = sub_1D88E1660(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_88;
        case 4:
          v125 = type metadata accessor for ParseDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v125;
          *&v191 = sub_1D88E1660(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for ParseDetectorResult;
          goto LABEL_88;
        case 5:
          v126 = type metadata accessor for TextDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v126;
          *&v191 = sub_1D88E1660(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for TextDetectorResult;
          goto LABEL_88;
        case 6:
        case 7:
          v115 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v115;
          *&v191 = sub_1D88E1660(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_88;
        case 9:
        case 0xALL:
          v116 = swift_projectBox();
          v117 = v169;
          sub_1D88E1274(v116, v169, type metadata accessor for AFMResult);
          *(&v190 + 1) = v178;
          *&v191 = sub_1D88E1660(&qword_1EE0E3F80, type metadata accessor for AFMResult);
          v118 = __swift_allocate_boxed_opaque_existential_1(&v189);
          sub_1D88E120C(v117, v118, type metadata accessor for AFMResult);
          break;
        case 0xBLL:
          v119 = type metadata accessor for SyntheticDetectionResult();
          v112 = swift_projectBox();
          *(&v190 + 1) = v119;
          *&v191 = sub_1D88E1660(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_88;
        case 0xCLL:
          v120 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v120;
          *&v191 = sub_1D88E1660(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_88;
        case 0xDLL:
          v127 = type metadata accessor for GroundedParseClassificationsResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v127;
          *&v191 = sub_1D88E1660(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_88:
          sub_1D88E1274(v112, v113, v114);
          break;
        default:
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v122 = swift_projectBox();
          *(&v190 + 1) = v121;
          *&v191 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
          v123 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v107 = v168;
          sub_1D87A0E38(v122, v123, &qword_1ECA67750);
          break;
      }

      if (swift_dynamicCast())
      {
        v174(v106, 0, 1, v30);
        sub_1D88E120C(v106, v107, type metadata accessor for MetaDetectionResult);
        if (*v107 == 9 && ((v181 & 1) == 0 || *&v107[v30[8]] == v28))
        {
          v128 = v30[9];
          if (v107[v128] == 2 && v28 - *&v107[v30[8]] > 0.0001)
          {
            goto LABEL_148;
          }

          CVBundle.latestEstimate.getter(&v197);
          v196 = v197;
          CVDetection.detection.getter(&v193);
          v130 = v194;
          v129 = v195;
          __swift_project_boxed_opaque_existential_1(&v193, v194);
          v131 = *(v129 + 64);
          v132 = v129;
          v30 = v179;
          v131(&v189, v130, v132);
          __swift_destroy_boxed_opaque_existential_1(&v193);

          v134 = *(&v189 + 1);
          v133 = *&v189;
          if (*&v190 >= *&v189)
          {
            v135 = *&v189;
          }

          else
          {
            v135 = *&v190;
          }

          if (*&v191 < v135)
          {
            v135 = *&v191;
          }

          if (*&v192 < v135)
          {
            v135 = *&v192;
          }

          if (*(&v190 + 1) >= *(&v189 + 1))
          {
            v136 = *(&v189 + 1);
          }

          else
          {
            v136 = *(&v190 + 1);
          }

          if (*(&v191 + 1) < v136)
          {
            v136 = *(&v191 + 1);
          }

          if (*(&v192 + 1) < v136)
          {
            v136 = *(&v192 + 1);
          }

          if (*&v189 <= *&v190)
          {
            v133 = *&v190;
          }

          if (v133 <= *&v191)
          {
            v133 = *&v191;
          }

          if (v133 <= *&v192)
          {
            v133 = *&v192;
          }

          if (*(&v189 + 1) <= *(&v190 + 1))
          {
            v134 = *(&v190 + 1);
          }

          if (v134 <= *(&v191 + 1))
          {
            v134 = *(&v191 + 1);
          }

          if (v134 <= *(&v192 + 1))
          {
            v134 = *(&v192 + 1);
          }

          v137 = v133 - v135;
          v138 = v134 - v136;
          v206.origin.x = 0.0;
          v206.origin.y = 0.0;
          v206.size.width = 1.0;
          v206.size.height = 1.0;
          v202 = CGRectIntersection(*&v135, v206);
          v139 = v202.origin.x;
          v140 = v202.origin.y;
          v141 = v202.size.width;
          v142 = v202.size.height;
          v143 = &v107[v30[5]];
          v144 = *v143;
          v145 = v143[1];
          v146 = v143[2];
          v147 = v143[3];
          v148 = v143[4];
          v149 = v143[5];
          v150 = v143[6];
          v151 = v143[7];
          if (v146 >= *v143)
          {
            v152 = *v143;
          }

          else
          {
            v152 = v143[2];
          }

          if (v148 < v152)
          {
            v152 = v143[4];
          }

          if (v150 < v152)
          {
            v152 = v143[6];
          }

          if (v147 >= v145)
          {
            v153 = v143[1];
          }

          else
          {
            v153 = v143[3];
          }

          if (v149 < v153)
          {
            v153 = v143[5];
          }

          if (v151 < v153)
          {
            v153 = v143[7];
          }

          if (v144 <= v146)
          {
            v144 = v143[2];
          }

          if (v144 <= v148)
          {
            v144 = v143[4];
          }

          if (v144 <= v150)
          {
            v144 = v143[6];
          }

          if (v145 <= v147)
          {
            v145 = v143[3];
          }

          if (v145 <= v149)
          {
            v145 = v143[5];
          }

          if (v145 <= v151)
          {
            v145 = v143[7];
          }

          v154 = v144 - v152;
          v155 = v145 - v153;
          v156 = v141;
          v157 = v142;
          v203 = CGRectIntersection(*&v152, *&v139);
          if (v141 * v142 * 0.9 > v203.size.width * v203.size.height)
          {
LABEL_148:
            sub_1D88E11AC(v107, type metadata accessor for MetaDetectionResult);
            v106 = v171;
            v108 = v170;
          }

          else
          {
            v158 = v107[v128];
            if (v158 == 3)
            {
              v159 = sub_1D8B0AAA4();
              v106 = v171;
              v108 = v170;
              if (v159)
              {
                *&v189 = 0;
                *(&v189 + 1) = 0xE000000000000000;
                sub_1D8B16720();

                *&v189 = 0xD00000000000003ALL;
                *(&v189 + 1) = 0x80000001D8B43D60;
                v161 = &v107[v30[10]];
                v162 = v161[1];
                if (v162)
                {
                  goto LABEL_171;
                }

LABEL_173:
                v163 = 0x6F73616572206F6ELL;
                v164 = 0xEF6E65766967206ELL;
                goto LABEL_174;
              }

              sub_1D88E11AC(v107, type metadata accessor for MetaDetectionResult);
              if (v181)
              {
                goto LABEL_155;
              }
            }

            else
            {
              sub_1D88E11AC(v107, type metadata accessor for MetaDetectionResult);
              v106 = v171;
              v108 = v170;
              if (v158 == 2)
              {
LABEL_155:

                sub_1D88E11AC(v108, type metadata accessor for CVTrackSnapshot);
                v160 = *(sub_1D891A92C() + 2);

                if (v160)
                {
                  goto LABEL_54;
                }

                goto LABEL_57;
              }
            }
          }
        }

        else
        {
          sub_1D88E11AC(v107, type metadata accessor for MetaDetectionResult);
        }
      }

      else
      {
        v174(v106, 1, 1, v30);
        sub_1D87A14E4(v106, &qword_1ECA64BB8);
      }

      sub_1D88E11AC(v108, type metadata accessor for CVTrackSnapshot);
      v110 += v33;
    }

    while (v187 != v109);
  }

LABEL_56:

LABEL_57:
  v97 = xmmword_1D8B26640;
LABEL_58:
  v95 = v166;
  *v166 = v97;
  v96 = 2;
LABEL_59:
  *(v95 + 16) = v96;
}

uint64_t sub_1D88D9DB8(uint64_t a1, int a2, int a3)
{
  v45 = a3;
  v43 = a2;
  v4 = type metadata accessor for SyntheticDetectionResult();
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D8B13AD0();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42[-v15];
  v17 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D88E1274(a1, v19, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1D8B13240();
    (*(*(v20 - 8) + 8))(v19, v20);
    return 0;
  }

  sub_1D88E11AC(v19, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestEstimate.getter(&v48);
  v22 = v48 >> 60;
  if ((v48 >> 60) > 3)
  {
    if (v22 == 4)
    {
      v36 = swift_projectBox();
      sub_1D88E1274(v36, v13, type metadata accessor for ParseDetectorResult);
      v37 = *&v13[*(v11 + 28)];
      sub_1D8B139D0();
      LOBYTE(v37) = sub_1D8846CD0(v10, v37);
      (*(v44 + 8))(v10, v8);
      sub_1D88E11AC(v13, type metadata accessor for ParseDetectorResult);

      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (v22 != 11)
    {
      goto LABEL_30;
    }

    v28 = swift_projectBox();
    v29 = v46;
    sub_1D88E1274(v28, v46, type metadata accessor for SyntheticDetectionResult);
    if (v29[*(v4 + 24)])
    {
      v30 = sub_1D8B16BA0();

      if (v30 & 1) != 0 && (v43)
      {
LABEL_20:
        v31 = sub_1D891AC38();
        sub_1D88E11AC(v29, type metadata accessor for SyntheticDetectionResult);
        v32 = *(v31 + 16);

        if (!v32)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    else
    {

      if (v43)
      {
        goto LABEL_20;
      }
    }

    sub_1D88E11AC(v29, type metadata accessor for SyntheticDetectionResult);
    goto LABEL_30;
  }

  if (v22)
  {
    if (v22 == 3)
    {
      v23 = swift_projectBox();
      v24 = v47;
      sub_1D88E1274(v23, v47, type metadata accessor for ObjectDetectorResult);
      v25 = &v24[*(v6 + 28)];
      v26 = *v25;
      v27 = v25[1];
      if (*v25 == 1852270963 && v27 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0 || v26 == 0x746E656D75636F64 && v27 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0 || v26 == 0x656C74746F62 && v27 == 0xE600000000000000)
      {
        sub_1D88E11AC(v24, type metadata accessor for ObjectDetectorResult);
LABEL_33:

        goto LABEL_34;
      }

      v41 = sub_1D8B16BA0();
      sub_1D88E11AC(v24, type metadata accessor for ObjectDetectorResult);

      if (v41)
      {
        goto LABEL_34;
      }

      return 0;
    }

LABEL_30:

    return 0;
  }

  v33 = swift_projectBox();
  sub_1D87A0E38(v33, v16, &qword_1ECA67750);
  if ((v45 & 1) == 0)
  {
    v38 = *(CVBundle.textDetections.getter() + 2);

    if (v38)
    {
      sub_1D87A14E4(v16, &qword_1ECA67750);
      goto LABEL_33;
    }

    v39 = sub_1D891AC38();
    sub_1D87A14E4(v16, &qword_1ECA67750);
    v40 = *(v39 + 16);

    if (v40)
    {
      goto LABEL_34;
    }

    return 0;
  }

  v34 = sub_1D8A05CB0();
  v35 = sub_1D88E0474(&unk_1F5426A70, v34);

  sub_1D87A14E4(v16, &qword_1ECA67750);

  if (v35)
  {
    return 0;
  }

LABEL_34:
  if (qword_1EE0E74F8 != -1)
  {
    swift_once();
  }

  return byte_1EE0ED6F8;
}

uint64_t sub_1D88DA4C4(uint64_t a1)
{
  if (*(sub_1D893EA58(&unk_1F5426A98) + 16))
  {
    sub_1D881F7DC(a1);
    if (v2)
    {
    }
  }

  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 - 6 >= 2)
      {
LABEL_11:
        result = sub_1D8B168C0();
        __break(1u);
      }
    }

    else if (a1 - 9 >= 2 && a1 - 12 >= 2)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_1D88DA640@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>)
{
  v161 = a2;
  v138 = a3;
  v144 = sub_1D8B13450();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v127[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v141 = &v127[-v6];
  v162 = sub_1D8B131D0();
  v148 = *(v162 - 8);
  v7 = MEMORY[0x1EEE9AC00](v162);
  v151 = &v127[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v149 = &v127[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v160 = &v127[-v11];
  v12 = type metadata accessor for TextDetectorResult(0);
  v137 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v159 = &v127[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = sub_1D8B14510();
  v154 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v139 = &v127[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BA8);
  v15 = MEMORY[0x1EEE9AC00](v153);
  v145 = &v127[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v155 = &v127[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v136 = &v127[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v127[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v147 = &v127[-v24];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v140 = &v127[-v26];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v127[-v28];
  MEMORY[0x1EEE9AC00](v27);
  *&v152 = &v127[-v30];
  v31 = sub_1D8B145A0();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v127[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_1D8B14530();
  v156 = *(v35 - 8);
  v157 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v158 = &v127[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  CVBundle.latestEstimate.getter(&v163);
  v169 = v163;
  CVDetection.detection.getter(&v164);
  v37 = v167;
  v38 = v168;
  __swift_project_boxed_opaque_existential_1(&v164, v167);
  v39 = (*(*&v38 + 88))(v37, COERCE_DOUBLE(*&v38));
  v40 = a1;

  __swift_destroy_boxed_opaque_existential_1(&v164);
  v41 = sub_1D891A92C();
  if (!*(v41 + 2))
  {

LABEL_22:
    v67 = v161;
    *v161 = 0;
    *(v67 + 1) = 0xD000000000000018;
    *(v67 + 2) = 0x80000001D8B43C90;
    v67[24] = 0x80;
    *(v67 + 4) = v39;
    LOBYTE(v164) = 0;
    v165 = 0xD000000000000018;
    v166 = 0x80000001D8B43C90;
    LOBYTE(v167) = 0x80;
    v168 = v39;
    sub_1D88E0E0C();
    return swift_willThrowTypedImpl();
  }

  v42 = *(v41 + 4);

  if (v42 >> 60 != 9)
  {

    goto LABEL_22;
  }

  v43 = type metadata accessor for AFMResult(0);
  v44 = swift_projectBox();
  (*(v32 + 16))(v34, v44 + *(v43 + 40), v31);
  if ((*(v32 + 88))(v34, v31) != *MEMORY[0x1E69C9C00])
  {

    (*(v32 + 8))(v34, v31);
    goto LABEL_22;
  }

  (*(v32 + 96))(v34, v31);
  v46 = v156;
  v45 = v157;
  v47 = v158;
  (*(v156 + 32))(v158, v34, v157);
  if ((sub_1D8B144F0() & 1) == 0)
  {

    (*(v46 + 8))(v47, v45);
    goto LABEL_22;
  }

  v135 = v42;
  v48 = v152;
  sub_1D8B14520();
  v49 = *MEMORY[0x1E69C9BC0];
  v50 = v154;
  v51 = *(v154 + 104);
  v52 = v150;
  v133 = v154 + 104;
  v131 = v51;
  v51(v29, v49, v150);
  v53 = *(v50 + 56);
  v132 = v50 + 56;
  v130 = v53;
  v53(v29, 0, 1, v52);
  v54 = *(v153 + 48);
  v55 = v155;
  sub_1D87A0E38(v48, v155, &qword_1ECA64BB0);
  sub_1D87A0E38(v29, v55 + v54, &qword_1ECA64BB0);
  v56 = *(v50 + 48);
  v57 = v56(v55, 1, v52);
  v134 = v56;
  if (v57 == 1)
  {
    sub_1D87A14E4(v29, &qword_1ECA64BB0);
    v58 = v48;
    v59 = v155;
    sub_1D87A14E4(v58, &qword_1ECA64BB0);
    if (v56(&v59[v54], 1, v52) == 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v60 = v140;
    sub_1D87A0E38(v55, v140, &qword_1ECA64BB0);
    if (v56(v55 + v54, 1, v52) != 1)
    {
      v69 = v154;
      v70 = v55 + v54;
      v71 = v139;
      (*(v154 + 32))(v139, v70, v52);
      sub_1D88E1660(&unk_1ECA67DD0, MEMORY[0x1E69C9BC8]);
      v128 = sub_1D8B158C0();
      v129 = v40;
      v72 = *(v69 + 8);
      v72(v71, v52);
      sub_1D87A14E4(v29, &qword_1ECA64BB0);
      sub_1D87A14E4(v152, &qword_1ECA64BB0);
      v72(v60, v52);
      sub_1D87A14E4(v155, &qword_1ECA64BB0);
      if (v128)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    sub_1D87A14E4(v29, &qword_1ECA64BB0);
    v59 = v155;
    sub_1D87A14E4(v152, &qword_1ECA64BB0);
    (*(v154 + 8))(v60, v52);
  }

  sub_1D87A14E4(v59, &qword_1ECA64BA8);
LABEL_15:
  v61 = v147;
  sub_1D8B14520();
  v62 = v146;
  v131(v146, *MEMORY[0x1E69C9BB8], v52);
  v130(v62, 0, 1, v52);
  v63 = *(v153 + 48);
  v59 = v145;
  sub_1D87A0E38(v61, v145, &qword_1ECA64BB0);
  sub_1D87A0E38(v62, &v59[v63], &qword_1ECA64BB0);
  v64 = v134;
  if (v134(v59, 1, v52) == 1)
  {
    sub_1D87A14E4(v62, &qword_1ECA64BB0);
    sub_1D87A14E4(v61, &qword_1ECA64BB0);
    if (v64(&v59[v63], 1, v52) == 1)
    {
LABEL_17:
      sub_1D87A14E4(v59, &qword_1ECA64BB0);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v65 = v136;
  sub_1D87A0E38(v59, v136, &qword_1ECA64BB0);
  if (v64(&v59[v63], 1, v52) == 1)
  {
    sub_1D87A14E4(v146, &qword_1ECA64BB0);
    sub_1D87A14E4(v147, &qword_1ECA64BB0);
    (*(v154 + 8))(v65, v52);
LABEL_20:
    sub_1D87A14E4(v59, &qword_1ECA64BA8);
    v66 = v158;
LABEL_21:

    (*(v156 + 8))(v66, v157);
    goto LABEL_22;
  }

  v73 = v65;
  v74 = v154;
  v75 = &v59[v63];
  v76 = v139;
  (*(v154 + 32))(v139, v75, v52);
  sub_1D88E1660(&unk_1ECA67DD0, MEMORY[0x1E69C9BC8]);
  v77 = sub_1D8B158C0();
  v78 = *(v74 + 8);
  v78(v76, v52);
  sub_1D87A14E4(v146, &qword_1ECA64BB0);
  sub_1D87A14E4(v147, &qword_1ECA64BB0);
  v78(v73, v52);
  sub_1D87A14E4(v59, &qword_1ECA64BB0);
  v66 = v158;
  if ((v77 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_26:
  v79 = CVBundle.textDetectorResults.getter();
  v80 = v79[2];
  if (v80)
  {
    v164 = MEMORY[0x1E69E7CC0];
    sub_1D87F470C(0, v80, 0);
    v81 = v164;
    v82 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v150 = v79;
    v83 = v79 + v82;
    v155 = *(v137 + 72);
    LODWORD(v154) = *MEMORY[0x1E69E0208];
    v153 = v148 + 8;
    v152 = xmmword_1D8B1AB90;
    do
    {
      v84 = v159;
      sub_1D88E1274(v83, v159, type metadata accessor for TextDetectorResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
      v85 = sub_1D8B15270();
      v86 = *(v85 - 8);
      v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v88 = swift_allocObject();
      *(v88 + 16) = v152;
      (*(v86 + 104))(v88 + v87, v154, v85);
      v89 = v160;
      _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
      v90 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v88, v89, 0);

      (*v153)(v89, v162);
      sub_1D88E11AC(v84, type metadata accessor for TextDetectorResult);
      v164 = v81;
      v92 = *(v81 + 16);
      v91 = *(v81 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1D87F470C((v91 > 1), v92 + 1, 1);
        v81 = v164;
      }

      *(v81 + 16) = v92 + 1;
      *(v81 + 8 * v92 + 32) = v90;
      v83 += v155;
      --v80;
    }

    while (v80);

    v93 = *(v81 + 16);
    if (v93)
    {
      goto LABEL_32;
    }

LABEL_50:
    v95 = MEMORY[0x1E69E7CC0];
LABEL_51:

    if (qword_1EE0E54C0 != -1)
    {
      goto LABEL_69;
    }

    goto LABEL_52;
  }

  v81 = MEMORY[0x1E69E7CC0];
  v93 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v93)
  {
    goto LABEL_50;
  }

LABEL_32:
  v94 = 0;
  v95 = MEMORY[0x1E69E7CC0];
  while (v94 < *(v81 + 16))
  {
    v96 = *(v81 + 32 + 8 * v94);
    v97 = *(v96 + 16);
    v98 = v95[2];
    v99 = v98 + v97;
    if (__OFADD__(v98, v97))
    {
      goto LABEL_65;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v99 <= v95[3] >> 1)
    {
      if (*(v96 + 16))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v98 <= v99)
      {
        v101 = v98 + v97;
      }

      else
      {
        v101 = v98;
      }

      v95 = sub_1D87C84B0(isUniquelyReferenced_nonNull_native, v101, 1, v95);
      if (*(v96 + 16))
      {
LABEL_45:
        v102 = (v95[3] >> 1) - v95[2];
        sub_1D8B15240();
        if (v102 < v97)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();

        if (v97)
        {
          v103 = v95[2];
          v104 = __OFADD__(v103, v97);
          v105 = v103 + v97;
          if (v104)
          {
            goto LABEL_68;
          }

          v95[2] = v105;
        }

        goto LABEL_34;
      }
    }

    if (v97)
    {
      goto LABEL_66;
    }

LABEL_34:
    if (v93 == ++v94)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  swift_once();
LABEL_52:
  v106 = qword_1EE0E54C8;
  v107 = sub_1D8B0AAA4();
  v108 = v162;
  v109 = v148;
  v110 = v149;
  if (v107)
  {
    v111 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
    swift_beginAccess();
    v112 = v106 + v111;
    v113 = v141;
    sub_1D87A0E38(v112, v141, &qword_1ECA631A8);
    if ((*(v109 + 48))(v113, 1, v108) != 1)
    {
      v114 = (*(v109 + 32))(v110, v113, v108);
      goto LABEL_58;
    }
  }

  else
  {
    v113 = v141;
    (*(v148 + 56))(v141, 1, 1, v162);
  }

  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  v114 = (*(v109 + 48))(v113, 1, v108);
  if (v114 != 1)
  {
    v114 = sub_1D87A14E4(v113, &qword_1ECA631A8);
  }

LABEL_58:
  MEMORY[0x1EEE9AC00](v114);
  *&v127[-16] = v110;
  v115 = sub_1D8820C18(sub_1D88D6724, &v127[-32], v95);

  v116 = v142;
  sub_1D8B13410();
  v117 = v151;
  sub_1D8B13380();
  v118 = (*(v143 + 8))(v116, v144);
  MEMORY[0x1EEE9AC00](v118);
  *&v127[-16] = v117;

  v119 = *(sub_1D87C66F8(sub_1D88E117C, &v127[-32], v115) + 16);

  if (v119)
  {
    v120 = *(v115 + 2);

    if (v119 == v120)
    {
      v121 = v161;
      *v161 = 0;
      *(v121 + 1) = 0xD000000000000026;
      *(v121 + 2) = 0x80000001D8B43D10;
      v121[24] = 0x80;
      *(v121 + 4) = v39;
      LOBYTE(v164) = 0;
      v165 = 0xD000000000000026;
      v166 = 0x80000001D8B43D10;
      LOBYTE(v167) = 0x80;
      v168 = v39;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();

      (*(v156 + 8))(v158, v157);
      v122 = *(v109 + 8);
      v122(v151, v108);
      return (v122)(v110, v108);
    }
  }

  else
  {
  }

  (*(v156 + 8))(v158, v157);
  type metadata accessor for BundleClassification.ClassificationType(0);
  v123 = v138;
  swift_storeEnumTagMultiPayload();
  v124 = type metadata accessor for BundleClassification(0);
  v125 = v123 + *(v124 + 20);
  *v125 = 2;
  *(v125 + 8) = 0u;
  *(v125 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v125 = 2;
  *(v125 + 8) = 0u;
  *(v125 + 24) = 0u;
  *(v123 + *(v124 + 24)) = v39;
  v126 = *(v109 + 8);
  v126(v151, v108);
  return (v126)(v149, v108);
}

BOOL sub_1D88DBBB8(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
  v3 = sub_1D8B15270();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D8B1AB90;
  (*(v4 + 104))(v6 + v5, *MEMORY[0x1E69E0208], v3);
  v7 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v6, a2, 1);

  v8 = v7[2];

  return v8 != 0;
}

uint64_t sub_1D88DBCE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>)
{
  v258 = a2;
  v240 = a3;
  v5 = type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo();
  MEMORY[0x1EEE9AC00](v5);
  v255 = &v239 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v250 = &v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for CVBundle.BundleType(0);
  v9 = MEMORY[0x1EEE9AC00](v256);
  v247 = &v239 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v244 = &v239 - v11;
  v12 = sub_1D8B13240();
  v270 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v248 = &v239 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v249 = &v239 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v245 = &v239 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v246 = &v239 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v253 = &v239 - v21;
  v22 = sub_1D8B15240();
  v23 = *(v22 - 8);
  v267 = v22;
  v268 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v266 = &v239 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TextDetectorResult(0);
  v26 = *(v25 - 8);
  v273 = v25;
  v274 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v265 = &v239 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v242 = &v239 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v243 = &v239 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v241 = &v239 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v254 = &v239 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v277 = &v239 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v239 - v39;
  v41 = sub_1D8B131D0();
  v262 = *(v41 - 8);
  v263 = v41;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v252 = &v239 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v239 - v44;
  v271 = CVBundle.textDetectorResults.getter();
  v260 = a1;
  CVBundle.latestEstimate.getter(v287);
  v282[0] = v287[0];
  CVDetection.detection.getter(v278);
  v46 = *&v278[24];
  v47 = v279;
  __swift_project_boxed_opaque_existential_1(v278, *&v278[24]);
  v48 = (*(v47 + 88))(v46, v47);

  __swift_destroy_boxed_opaque_existential_1(v278);
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v49 = qword_1EE0E54C8;
    v50 = sub_1D8B0AAA4();
    v251 = v5;
    v257 = v12;
    v259 = v49;
    if (v50)
    {
      v51 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
      swift_beginAccess();
      sub_1D87A0E38(v49 + v51, v40, &qword_1ECA631A8);
      v53 = v262;
      v52 = v263;
      v54 = (*(v262 + 48))(v40, 1, v263);
      v55 = v270;
      if (v54 != 1)
      {
        (*(v53 + 32))(v45, v40, v52);
        goto LABEL_8;
      }
    }

    else
    {
      v53 = v262;
      v52 = v263;
      (*(v262 + 56))(v40, 1, 1, v263);
      v55 = v270;
    }

    _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
    if ((*(v53 + 48))(v40, 1, v52) != 1)
    {
      sub_1D87A14E4(v40, &qword_1ECA631A8);
    }

LABEL_8:
    v5 = v271;
    v264 = sub_1D88E0BE0(v271, v45);
    v56 = v5[2];
    v12 = MEMORY[0x1E69E7CC0];
    v261 = v45;
    *&v272 = v56;
    if (!v56)
    {
      break;
    }

    *v278 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v56, 0);
    v57 = 0;
    v45 = *v278;
    v269 = v5 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
    while (v57 < v5[2])
    {
      v275 = v57;
      v276 = v45;
      v58 = v277;
      sub_1D88E1274(&v269[*(v274 + 9) * v57], v277, type metadata accessor for TextDetectorResult);
      v59 = *(v58 + *(v273 + 44));
      v60 = *(v59 + 16);
      if (v60)
      {
        v287[0] = v12;
        sub_1D87F3F54(0, v60, 0);
        v61 = v287[0];
        v62 = (v59 + 48);
        do
        {
          v64 = *(v62 - 1);
          v63 = *v62;
          v287[0] = v61;
          v66 = *(v61 + 16);
          v65 = *(v61 + 24);

          if (v66 >= v65 >> 1)
          {
            sub_1D87F3F54((v65 > 1), v66 + 1, 1);
            v61 = v287[0];
          }

          *(v61 + 16) = v66 + 1;
          v67 = v61 + 16 * v66;
          *(v67 + 32) = v64;
          *(v67 + 40) = v63;
          v62 += 5;
          --v60;
        }

        while (v60);
        v12 = MEMORY[0x1E69E7CC0];
        v5 = v271;
      }

      else
      {
        v61 = v12;
      }

      v287[0] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v68 = sub_1D8B15810();
      v70 = v69;

      sub_1D88E11AC(v277, type metadata accessor for TextDetectorResult);
      v45 = v276;
      *v278 = v276;
      v40 = *(v276 + 16);
      v71 = *(v276 + 24);
      if (v40 >= v71 >> 1)
      {
        sub_1D87F3F54((v71 > 1), v40 + 1, 1);
        v45 = *v278;
      }

      v57 = v275 + 1;
      *(v45 + 2) = v40 + 1;
      v72 = &v45[16 * v40];
      *(v72 + 4) = v68;
      *(v72 + 5) = v70;
      v55 = v270;
      if (v57 == v272)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_23:
  *v278 = v45;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  v74 = sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v275 = v73;
  v270 = v74;
  v75 = sub_1D8B15810();
  v77 = v76;

  if (qword_1ECA620E0 != -1)
  {
    swift_once();
  }

  v78 = sub_1D88DDD5C(qword_1ECAA3670);
  v40 = *(v264 + 16);
  v45 = v261;
  if (!v40 || (((sub_1D8B15A70() - 17) < 0x3F0) & v78) != 1)
  {
    v267 = v75;
    v268 = v77;
    LODWORD(v266) = v78;

    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v104 = sub_1D8B151E0();
    __swift_project_value_buffer(v104, qword_1EE0E4398);
    v105 = sub_1D8B151C0();
    v106 = sub_1D8B16200();
    v107 = os_log_type_enabled(v105, v106);
    v108 = v257;
    if (v107)
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_1D8783000, v105, v106, "No calendar events found in bundle during classification", v109, 2u);
      MEMORY[0x1DA721330](v109, -1, -1);
    }

    v110 = sub_1D8B151C0();
    v111 = sub_1D8B16200();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 134218240;
      *(v112 + 4) = sub_1D8B15A70();

      *(v112 + 12) = 2048;
      *(v112 + 14) = 1024;
      _os_log_impl(&dword_1D8783000, v110, v111, "fullTranscript.count: %ld, maximumTranscriptLength: %ld.", v112, 0x16u);
      MEMORY[0x1DA721330](v112, -1, -1);
    }

    else
    {
    }

    if ((*(v259 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno) & 1) == 0)
    {

      v119 = 0x80000001D8B43C90;
      v120 = v263;
LABEL_81:
      v189 = v258;
      *v258 = 0;
      *(v189 + 1) = 0xD000000000000018;
      *(v189 + 2) = v119;
      v189[24] = 0x80;
      *(v189 + 4) = v48;
      v278[0] = 0;
      *&v278[8] = 0xD000000000000018;
      *&v278[16] = v119;
      v278[24] = 0x80;
      *&v279 = v48;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();
      return (*(v262 + 8))(v45, v120);
    }

    *v278 = 0;
    *&v278[8] = 0xE000000000000000;
    sub_1D8B16720();

    *v278 = 0xD000000000000015;
    *&v278[8] = 0x80000001D8B43CB0;
    v113 = v260;
    CVBundle.latestEstimate.getter(v287);
    v282[0] = v287[0];
    CVDetection.detectionType.getter(&v286);

    v114 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v114);

    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    v115 = v244;
    sub_1D88E1274(v113, v244, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v259 = 0xD000000000000015;
    if (EnumCaseMultiPayload == 1)
    {
      v117 = *(v55 + 32);
      v118 = v245;
      v117(v245, v115, v108);
    }

    else
    {
      v121 = v115;
      v122 = v250;
      sub_1D88E120C(v121, v250, type metadata accessor for CVTrackSnapshot);
      v118 = v245;
      (*(v55 + 16))(v245, v122, v108);
      sub_1D88E11AC(v122, type metadata accessor for CVTrackSnapshot);
      v117 = *(v55 + 32);
    }

    v123 = v266 ^ 1;
    v124 = v246;
    v117(v246, v118, v108);
    sub_1D88E1660(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v125 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v125);

    v126 = (*(v55 + 8))(v124, v108);
    v276 = *&v278[8];
    v277 = *v278;
    MEMORY[0x1EEE9AC00](v126);
    *(&v239 - 2) = v261;
    v127 = sub_1D8916908(sub_1D88E0E60, (&v239 - 4), v271);
    v128 = v247;
    sub_1D88E1274(v260, v247, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v129 = v128;
      v130 = v248;
      v117(v248, v129, v108);
    }

    else
    {
      v131 = v128;
      v132 = v250;
      sub_1D88E120C(v131, v250, type metadata accessor for CVTrackSnapshot);
      v133 = v248;
      (*(v55 + 16))(v248, v132, v108);
      v134 = v132;
      v130 = v133;
      sub_1D88E11AC(v134, type metadata accessor for CVTrackSnapshot);
    }

    v135 = v249;
    v117(v249, v130, v108);
    v136 = sub_1D8B15A70();
    v137 = v108;
    v138 = v255;
    *v255 = 0xD000000000000018;
    *(v138 + 1) = 0x80000001D8B43C90;
    v264 = 0x80000001D8B43C90;
    *(v138 + 2) = v127;
    v139 = v251;
    v117(&v138[*(v251 + 6)], v135, v137);
    *&v138[*(v139 + 28)] = v136;
    v138[*(v139 + 32)] = v123 & 1;
    CVBundle.latestEstimate.getter(v282);
    v287[0] = v282[0];
    CVDetection.detection.getter(v278);
    v40 = *&v278[24];
    v140 = v279;
    __swift_project_boxed_opaque_existential_1(v278, *&v278[24]);
    v3 = (*(v140 + 88))(v40, v140);

    __swift_destroy_boxed_opaque_existential_1(v278);
    v288[3] = v139;
    v288[4] = sub_1D88E1660(&qword_1ECA64B90, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v288);
    sub_1D88E1274(v138, boxed_opaque_existential_1, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
    v289 = 3;
    v287[0] = v277;
    v287[1] = v276;
    *&v287[2] = v3;
    v12 = v272;
    if (!v272)
    {

      v143 = MEMORY[0x1E69E7CC0];
LABEL_71:
      *v278 = v143;
      v276 = sub_1D8B15810();
      v277 = v159;

      if (sub_1D8B15A70() >= 200)
      {
        *v278 = 0;
        *&v278[8] = 0xE000000000000000;
        sub_1D8B16720();

        *v278 = 0xD000000000000014;
        *&v278[8] = 0x80000001D8B43CD0;
        v162 = sub_1D8B15A70();

        v282[0] = v162;
        v163 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v163);

        v161 = *&v278[8];
        v160 = *v278;
      }

      else
      {

        v160 = 0;
        v161 = 0xE000000000000000;
      }

      if (v266)
      {
        v164 = 0;
      }

      else
      {
        v164 = v259;
      }

      if (v266)
      {
        v165 = 0xE000000000000000;
      }

      else
      {
        v165 = 0x80000001D8B43CF0;
      }

      *v278 = 0;
      *&v278[8] = 0xE000000000000000;
      sub_1D8B16720();
      v166 = CVBundle.debugLabel.getter();
      v168 = v167;

      *v278 = v166;
      *&v278[8] = v168;
      MEMORY[0x1DA71EFA0](0x65746164206F6E20, 0xE800000000000000);
      MEMORY[0x1DA71EFA0](v160, v161);

      MEMORY[0x1DA71EFA0](v164, v165);

      MEMORY[0x1DA71EFA0](2618, 0xE200000000000000);
      MEMORY[0x1DA71EFA0](v276, v277);

      v169 = *v278;
      CVBundle.latestEstimate.getter(&v286);
      v285 = v286;
      CVDetection.detection.getter(v282);
      v170 = v283;
      v171 = v284;
      __swift_project_boxed_opaque_existential_1(v282, v283);
      (*(v171 + 64))(v278, v170, v171);
      __swift_destroy_boxed_opaque_existential_1(v282);
      Corners.bounds.getter();
      v173 = v172;
      v175 = v174;
      v177 = v176;
      v179 = v178;

      GenericRGB = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 0.8);
      v278[0] = 1;
      *&v290 = v173;
      *(&v290 + 1) = v175;
      *&v291 = v177;
      *(&v291 + 1) = v179;
      *&v292 = 0x3F747AE147AE147BLL;
      *(&v292 + 1) = GenericRGB;
      v293 = v169;
      memset(v294, 0, 24);
      v294[24] = 1;
      v181 = sub_1D8B15EA0();
      v182 = v253;
      (*(*(v181 - 8) + 56))(v253, 1, 1, v181);
      sub_1D88C4BD0(v287, v278);
      v183 = swift_allocObject();
      v184 = v280;
      *(v183 + 64) = v279;
      *(v183 + 80) = v184;
      v185 = *&v278[16];
      *(v183 + 32) = *v278;
      *(v183 + 48) = v185;
      *(v183 + 177) = *&v294[9];
      v186 = v293;
      *(v183 + 168) = *v294;
      v187 = v291;
      v188 = v292;
      *(v183 + 152) = v186;
      *(v183 + 136) = v188;
      *(v183 + 104) = v290;
      *(v183 + 16) = 0;
      *(v183 + 24) = 0;
      *(v183 + 96) = v281;
      *(v183 + 120) = v187;
      sub_1D88E0F34(&v290, v278);
      sub_1D8891CA0(0, 0, v182, &unk_1D8B267E0, v183);

      sub_1D88E0F90(&v290);
      sub_1D88E11AC(v255, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
      sub_1D87DC9A0(v287);
      v120 = v263;
      v119 = v264;
      v45 = v261;
      goto LABEL_81;
    }

    v45 = MEMORY[0x1E69E7CC0];
    *v278 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v272, 0);
    v142 = 0;
    v143 = *v278;
    v269 = v271 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
    v5 = v265;
    while (v142 < v271[2])
    {
      v276 = v142;
      v277 = v143;
      sub_1D88E1274(&v269[*(v274 + 9) * v142], v5, type metadata accessor for TextDetectorResult);
      v144 = *(v5 + *(v273 + 44));
      v145 = *(v144 + 16);
      if (v145)
      {
        v282[0] = v45;
        sub_1D87F3F54(0, v145, 0);
        v146 = v282[0];
        v147 = (v144 + 48);
        do
        {
          v148 = *(v147 - 1);
          v149 = *v147;
          v282[0] = v146;
          v151 = *(v146 + 16);
          v150 = *(v146 + 24);

          if (v151 >= v150 >> 1)
          {
            sub_1D87F3F54((v150 > 1), v151 + 1, 1);
            v146 = v282[0];
          }

          *(v146 + 16) = v151 + 1;
          v152 = v146 + 16 * v151;
          *(v152 + 32) = v148;
          *(v152 + 40) = v149;
          v147 += 5;
          --v145;
        }

        while (v145);
        v5 = v265;
        v45 = MEMORY[0x1E69E7CC0];
        v12 = v272;
      }

      else
      {
        v146 = v45;
      }

      v282[0] = v146;
      v40 = sub_1D8B15810();
      v154 = v153;

      sub_1D88E11AC(v5, type metadata accessor for TextDetectorResult);
      v143 = v277;
      *v278 = v277;
      v156 = *(v277 + 16);
      v155 = *(v277 + 24);
      if (v156 >= v155 >> 1)
      {
        sub_1D87F3F54((v155 > 1), v156 + 1, 1);
        v143 = *v278;
      }

      v142 = v276 + 1;
      *(v143 + 16) = v156 + 1;
      v157 = v143 + 16 * v156;
      *(v157 + 32) = v40;
      *(v157 + 40) = v154;
      if (v142 == v12)
      {

        goto LABEL_71;
      }
    }

    goto LABEL_98;
  }

  v79 = v264;
  if (!*(v264 + 16))
  {
    __break(1u);
    goto LABEL_102;
  }

  v80 = v264 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
  v81 = v243;
  sub_1D88E1274(v80, v243, type metadata accessor for TextDetectorResult);
  v5 = v242;
  if (v40 != 1)
  {
    v158 = 1;
    while (v158 < *(v79 + 16))
    {
      sub_1D88E1274(v80 + *(v274 + 9) * v158, v5, type metadata accessor for TextDetectorResult);
      if (*(v81 + *(v273 + 20)) >= *(v5 + *(v273 + 20)))
      {
        sub_1D88E11AC(v5, type metadata accessor for TextDetectorResult);
      }

      else
      {
        sub_1D88E11AC(v81, type metadata accessor for TextDetectorResult);
        sub_1D88E120C(v5, v81, type metadata accessor for TextDetectorResult);
      }

      if (v40 == ++v158)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_99;
  }

LABEL_29:
  v82 = v241;
  sub_1D88E120C(v81, v241, type metadata accessor for TextDetectorResult);
  v83 = v254;
  sub_1D88E120C(v82, v254, type metadata accessor for TextDetectorResult);
  LODWORD(v3) = *(v83 + *(v273 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
  v84 = sub_1D8B15270();
  v85 = *(v84 - 8);
  v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v87 = swift_allocObject();
  v272 = xmmword_1D8B1AB90;
  *(v87 + 16) = xmmword_1D8B1AB90;
  (*(v85 + 104))(v87 + v86, *MEMORY[0x1E69E0208], v84);
  v88 = v252;
  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  v89 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v87, v88, 0);

  v90 = *(v262 + 8);
  v273 = v262 + 8;
  v274 = v90;
  v90(v88, v263);
  v91 = v89[2];
  if (v91)
  {
    *v278 = v12;
    sub_1D87F3F54(0, v91, 0);
    v92 = *v278;
    v93 = *(v268 + 16);
    v94 = *(v268 + 80);
    v271 = v89;
    v95 = v89 + ((v94 + 32) & ~v94);
    v276 = *(v268 + 72);
    v277 = v93;
    v268 += 16;
    v275 = (v268 - 8);
    do
    {
      v96 = v266;
      v97 = v267;
      (v277)(v266, v95, v267);
      v98 = sub_1D8B15230();
      v100 = v99;
      (*v275)(v96, v97);
      *v278 = v92;
      v102 = *(v92 + 16);
      v101 = *(v92 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_1D87F3F54((v101 > 1), v102 + 1, 1);
        v92 = *v278;
      }

      *(v92 + 16) = v102 + 1;
      v103 = v92 + 16 * v102;
      *(v103 + 32) = v98;
      *(v103 + 40) = v100;
      v95 += v276;
      --v91;
    }

    while (v91);

    v45 = v261;
  }

  else
  {
  }

  if (*&v3 < 0.0001)
  {

    if (qword_1EE0E4390 == -1)
    {
LABEL_85:
      v191 = sub_1D8B151E0();
      __swift_project_value_buffer(v191, qword_1EE0E4398);
      v192 = sub_1D8B151C0();
      v193 = sub_1D8B16200();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *v278 = v195;
        *v194 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
        v196 = swift_allocObject();
        v197 = MEMORY[0x1E69E6448];
        *(v196 + 16) = v272;
        v198 = MEMORY[0x1E69E64A8];
        *(v196 + 56) = v197;
        *(v196 + 64) = v198;
        *(v196 + 32) = LODWORD(v3);
        v199 = sub_1D8B159A0();
        v201 = sub_1D89AC714(v199, v200, v278);

        *(v194 + 4) = v201;
        _os_log_impl(&dword_1D8783000, v192, v193, "Event not classified: confidence poor @ %s", v194, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v195);
        MEMORY[0x1DA721330](v195, -1, -1);
        MEMORY[0x1DA721330](v194, -1, -1);
      }

      v202 = v274;
      *v278 = 0;
      *&v278[8] = 0xE000000000000000;
      sub_1D8B16720();

      *v278 = 0x666E6F6320746F6ELL;
      *&v278[8] = 0xEF203B746E656469;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
      v203 = swift_allocObject();
      v204 = MEMORY[0x1E69E6448];
      *(v203 + 16) = v272;
      v205 = MEMORY[0x1E69E64A8];
      *(v203 + 56) = v204;
      *(v203 + 64) = v205;
      *(v203 + 32) = LODWORD(v3);
      v206 = sub_1D8B159A0();
      MEMORY[0x1DA71EFA0](v206);

      v207 = *v278;
      v208 = v258;
      *v258 = 0;
      *(v208 + 8) = v207;
      v208[24] = 0x80;
      *(v208 + 4) = v48;
      v278[0] = 0;
      *&v278[8] = v207;
      v278[24] = 0x80;
      *&v279 = v48;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();
      sub_1D88E11AC(v254, type metadata accessor for TextDetectorResult);
      return v202(v45, v263);
    }

LABEL_102:
    swift_once();
    goto LABEL_85;
  }

  if (qword_1EE0E4390 != -1)
  {
    swift_once();
  }

  v209 = sub_1D8B151E0();
  __swift_project_value_buffer(v209, qword_1EE0E4398);

  v210 = sub_1D8B151C0();
  v211 = sub_1D8B16200();

  if (os_log_type_enabled(v210, v211))
  {
    v212 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    *v278 = v213;
    *v212 = 136315394;
    v214 = objc_opt_self();
    v215 = sub_1D8B15CD0();

    v216 = [v214 localizedStringByJoiningStrings_];

    v217 = sub_1D8B15970();
    v219 = v218;

    v220 = sub_1D89AC714(v217, v219, v278);
    v45 = v261;

    *(v212 + 4) = v220;
    *(v212 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
    v221 = swift_allocObject();
    v222 = MEMORY[0x1E69E6448];
    *(v221 + 16) = v272;
    v223 = MEMORY[0x1E69E64A8];
    *(v221 + 56) = v222;
    *(v221 + 64) = v223;
    *(v221 + 32) = LODWORD(v3);
    v224 = sub_1D8B159A0();
    v226 = sub_1D89AC714(v224, v225, v278);

    *(v212 + 14) = v226;
    _os_log_impl(&dword_1D8783000, v210, v211, "Event classified: %s confidence %s", v212, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v213, -1, -1);
    MEMORY[0x1DA721330](v212, -1, -1);
  }

  else
  {
  }

  v227 = v240;
  v228 = v262;
  if (*(v259 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno))
  {
    v229 = sub_1D8B15EA0();
    v230 = v253;
    (*(*(v229 - 8) + 56))(v253, 1, 1, v229);
    v231 = v252;
    v232 = v263;
    (*(v228 + 16))(v252, v45, v263);
    v233 = (*(v228 + 80) + 40) & ~*(v228 + 80);
    v234 = swift_allocObject();
    v235 = v228;
    v236 = v234;
    *(v234 + 2) = 0;
    *(v234 + 3) = 0;
    *(v234 + 4) = v264;
    (*(v235 + 32))(&v234[v233], v231, v232);
    sub_1D8891CA0(0, 0, v230, &unk_1D8B26800, v236);

    sub_1D88E11AC(v254, type metadata accessor for TextDetectorResult);
  }

  else
  {
    sub_1D88E11AC(v254, type metadata accessor for TextDetectorResult);

    v232 = v263;
  }

  type metadata accessor for BundleClassification.ClassificationType(0);
  swift_storeEnumTagMultiPayload();
  v237 = type metadata accessor for BundleClassification(0);
  v238 = v227 + *(v237 + 20);
  *v238 = 2;
  *(v238 + 8) = 0u;
  *(v238 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v238 = 2;
  *(v238 + 8) = 0u;
  *(v238 + 24) = 0u;
  *(v227 + *(v237 + 24)) = v48;
  return v274(v45, v232);
}

uint64_t sub_1D88DDD5C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v3 = sub_1D8B15940();
  [v2 processString:v3];

  v4 = [v2 dominantLanguage];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D8B16390();
    if (*(v6 + 16) && (v7 = sub_1D881F7E0(v5), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if (qword_1EE0E4390 != -1)
      {
        swift_once();
      }

      v10 = sub_1D8B151E0();
      __swift_project_value_buffer(v10, qword_1EE0E4398);
      v11 = v5;
      v12 = sub_1D8B151C0();
      v13 = sub_1D8B161F0();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30 = v15;
        *v14 = 136315394;
        v16 = sub_1D8B15970();
        v18 = sub_1D89AC714(v16, v17, &v30);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2048;
        *(v14 + 14) = v9;
        _os_log_impl(&dword_1D8783000, v12, v13, "Identified language %s with confidence: %f", v14, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1DA721330](v15, -1, -1);
        MEMORY[0x1DA721330](v14, -1, -1);
      }

      v30 = v11;
      MEMORY[0x1EEE9AC00](v19);
      v29[2] = &v30;
      if ((sub_1D8AD039C(sub_1D88E113C, v29, a1) & 1) == 0 && v9 > 0.9)
      {
        v20 = sub_1D8B151C0();
        v21 = sub_1D8B161F0();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1D8783000, v20, v21, "Identified language is in an unsupported language for event detection", v22, 2u);
          MEMORY[0x1DA721330](v22, -1, -1);
        }

        v23 = 0;
        v24 = v2;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  if (qword_1EE0E4390 != -1)
  {
    swift_once();
  }

  v25 = sub_1D8B151E0();
  __swift_project_value_buffer(v25, qword_1EE0E4398);
  v24 = sub_1D8B151C0();
  v26 = sub_1D8B161F0();
  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D8783000, v24, v26, "Identified language is not in an unsupported language for event detection", v27, 2u);
    MEMORY[0x1DA721330](v27, -1, -1);
  }

  v23 = 1;
  v11 = v2;
LABEL_20:

  return v23;
}

uint64_t sub_1D88DE128@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
  v6 = sub_1D8B15270();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D8B1AB90;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x1E69E0208], v6);
  v10 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v9, a2, 1);

  v11 = v10[2];

  if (v11)
  {
    v12 = 0x7261646E656C6163;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 0xED0000746E657645;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = type metadata accessor for TextDetectorResult(0);
  result = sub_1D8A9FD8C(*(a1 + *(v14 + 44)));
  *a3 = v12;
  a3[1] = v13;
  a3[2] = result;
  a3[3] = v16;
  return result;
}

uint64_t sub_1D88DE29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for BundleClassification.ClassificationType(0);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88DE330, 0, 0);
}

uint64_t sub_1D88DE330()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 48) = qword_1ECA675B0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D88DE3D8, v1, 0);
}

uint64_t sub_1D88DE3D8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B1F4(v2, v3, v4);

  sub_1D88E11AC(v1, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D88DE498, 0, 0);
}

uint64_t sub_1D88DE498()
{
  v1 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D88DE508, v1, 0);
}

uint64_t sub_1D88DE508()
{
  v11 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = v2[3];
  v9[2] = v2[2];
  v9[3] = v3;
  v10[0] = v2[4];
  *(v10 + 9) = *(v2 + 73);
  v4 = v2[1];
  v9[0] = *v2;
  v9[1] = v4;
  v5 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v9, v5, v6);

  sub_1D88E11AC(v1, type metadata accessor for BundleClassification.ClassificationType);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D88DE5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_1D8B15240();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for TextDetectorResult(0);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88DE704, 0, 0);
}

uint64_t sub_1D88DE704()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 160);
    v5 = *(v4 + 80);
    *(v0 + 108) = v5;
    v6 = *MEMORY[0x1E69E0208];
    *(v0 + 316) = v6;
    v7 = *(v4 + 72);
    *(v0 + 184) = v7;
    while (1)
    {
      *(v0 + 192) = v3;
      v8 = *(v0 + 120);
      sub_1D88E1274(v1 + ((v5 + 32) & ~v5) + v7 * v3, *(v0 + 168), type metadata accessor for TextDetectorResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
      v9 = sub_1D8B15270();
      v10 = *(v9 - 8);
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D8B1AB90;
      (*(v10 + 104))(v12 + v11, v6, v9);
      v13 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v12, v8, 1);
      *(v0 + 200) = v13;

      v14 = v13[2];
      *(v0 + 208) = v14;
      if (v14)
      {
        break;
      }

      v15 = *(v0 + 176);
      v16 = *(v0 + 192) + 1;
      sub_1D88E11AC(*(v0 + 168), type metadata accessor for TextDetectorResult);
      if (v16 == v15)
      {
        goto LABEL_6;
      }

      v7 = *(v0 + 184);
      v3 = *(v0 + 192) + 1;
      v6 = *(v0 + 316);
      LOBYTE(v5) = *(v0 + 108);
      v1 = *(v0 + 112);
    }

    v19 = *(v0 + 144);
    v20 = (*(v0 + 168) + *(*(v0 + 152) + 24));
    v21 = *v20;
    *(v0 + 216) = *v20;
    v22 = v20[1];
    *(v0 + 224) = v22;
    v23 = v20[2];
    *(v0 + 232) = v23;
    v24 = v20[3];
    *(v0 + 240) = v24;
    v25 = v20[4];
    *(v0 + 248) = v25;
    v26 = v20[5];
    *(v0 + 256) = v26;
    v27 = v20[6];
    *(v0 + 264) = v27;
    v28 = v20[7];
    *(v0 + 272) = v28;
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    LODWORD(v20) = *(v30 + 80);
    *(v0 + 320) = v20;
    *(v0 + 280) = *(v30 + 72);
    v31 = *(v30 + 16);
    v32 = (v20 + 32) & ~v20;
    if (v23 >= v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = v23;
    }

    if (v25 < v33)
    {
      v33 = v25;
    }

    if (v27 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v27;
    }

    if (v24 >= v22)
    {
      v35 = v22;
    }

    else
    {
      v35 = v24;
    }

    if (v26 < v35)
    {
      v35 = v26;
    }

    if (v28 >= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v28;
    }

    if (v21 <= v23)
    {
      v21 = v23;
    }

    if (v21 <= v25)
    {
      v21 = v25;
    }

    if (v21 <= v27)
    {
      v21 = v27;
    }

    if (v22 <= v24)
    {
      v22 = v24;
    }

    if (v22 <= v26)
    {
      v22 = v26;
    }

    if (v22 <= v28)
    {
      v22 = v28;
    }

    *(v0 + 288) = v31;
    *(v0 + 296) = 0;
    v37 = v22 - v36;
    v38 = v21 - v34;
    v31(v19, *(v0 + 200) + v32, v29);
    v39 = sub_1D8B15230();
    v41 = v40;
    (*(v30 + 8))(v19, v29);
    GenericRGB = CGColorCreateGenericRGB(1.0, 0.65, 0.0, 0.8);
    *(v0 + 312) = 1;
    *(v0 + 16) = v34;
    *(v0 + 24) = v36;
    *(v0 + 32) = v38;
    *(v0 + 40) = v37;
    *(v0 + 48) = 0x3F747AE147AE147BLL;
    *(v0 + 56) = GenericRGB;
    *(v0 + 64) = v39;
    *(v0 + 72) = v41;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 80) = 0;
    *(v0 + 104) = *(v0 + 312);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v43 = qword_1ECA675B0;
    *(v0 + 304) = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D88DEB50, v43, 0);
  }

  else
  {
LABEL_6:

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D88DEB50()
{
  v6 = v0;
  v1 = v0[4];
  v4[2] = v0[3];
  v4[3] = v1;
  v5[0] = v0[5];
  *(v5 + 9) = *(v0 + 89);
  v2 = v0[2];
  v4[0] = v0[1];
  v4[1] = v2;
  sub_1D8A3B420(v4, 0x746E657665, 0xE500000000000000);

  return MEMORY[0x1EEE6DFA0](sub_1D88DEBEC, 0, 0);
}

uint64_t sub_1D88DEBEC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 296) + 1;
  sub_1D88E0F90(v0 + 16);
  if (v2 == v1)
  {

    v3 = *(v0 + 176);
    v4 = *(v0 + 192) + 1;
    sub_1D88E11AC(*(v0 + 168), type metadata accessor for TextDetectorResult);
    if (v4 == v3)
    {
LABEL_5:

      v17 = *(v0 + 8);

      return v17();
    }

    while (1)
    {
      v5 = *(v0 + 184);
      v6 = *(v0 + 192) + 1;
      *(v0 + 192) = v6;
      v7 = *(v0 + 316);
      v8 = *(v0 + 120);
      sub_1D88E1274(*(v0 + 112) + ((*(v0 + 108) + 32) & ~*(v0 + 108)) + v5 * v6, *(v0 + 168), type metadata accessor for TextDetectorResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
      v9 = sub_1D8B15270();
      v10 = *(v9 - 8);
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D8B1AB90;
      (*(v10 + 104))(v12 + v11, v7, v9);
      v13 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v12, v8, 1);
      *(v0 + 200) = v13;

      v14 = v13[2];
      *(v0 + 208) = v14;
      if (v14)
      {
        break;
      }

      v15 = *(v0 + 176);
      v16 = *(v0 + 192) + 1;
      sub_1D88E11AC(*(v0 + 168), type metadata accessor for TextDetectorResult);
      if (v16 == v15)
      {
        goto LABEL_5;
      }
    }

    v20 = 0;
    v31 = *(v0 + 136);
    v32 = (*(v0 + 168) + *(*(v0 + 152) + 24));
    v29 = *v32;
    *(v0 + 216) = *v32;
    v30 = v32[1];
    *(v0 + 224) = v30;
    v27 = v32[2];
    *(v0 + 232) = v27;
    v28 = v32[3];
    *(v0 + 240) = v28;
    v25 = v32[4];
    *(v0 + 248) = v25;
    v26 = v32[5];
    *(v0 + 256) = v26;
    v23 = v32[6];
    *(v0 + 264) = v23;
    v24 = v32[7];
    *(v0 + 272) = v24;
    v22 = *(v31 + 80);
    *(v0 + 320) = v22;
    v21 = *(v31 + 72);
    *(v0 + 280) = v21;
    v19 = *(v31 + 16);
    *(v0 + 288) = v19;
  }

  else
  {
    v19 = *(v0 + 288);
    v20 = *(v0 + 296) + 1;
    v21 = *(v0 + 280);
    LOBYTE(v22) = *(v0 + 320);
    v23 = *(v0 + 264);
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 256);
    v27 = *(v0 + 232);
    v28 = *(v0 + 240);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    v31 = *(v0 + 136);
  }

  *(v0 + 296) = v20;
  v33 = *(v0 + 144);
  v34 = *(v0 + 128);
  if (v27 >= v29)
  {
    v35 = v29;
  }

  else
  {
    v35 = v27;
  }

  if (v25 < v35)
  {
    v35 = v25;
  }

  if (v23 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v23;
  }

  v37 = *(v0 + 200) + ((v22 + 32) & ~v22);
  if (v30 > v28)
  {
    v38 = v30;
  }

  else
  {
    v38 = v28;
  }

  if (v38 <= v26)
  {
    v38 = v26;
  }

  if (v38 <= v24)
  {
    v38 = v24;
  }

  if (v28 < v30)
  {
    v30 = v28;
  }

  if (v26 < v30)
  {
    v30 = v26;
  }

  if (v24 >= v30)
  {
    v39 = v30;
  }

  else
  {
    v39 = v24;
  }

  v40 = v38 - v39;
  if (v29 <= v27)
  {
    v29 = v27;
  }

  if (v29 <= v25)
  {
    v29 = v25;
  }

  if (v29 <= v23)
  {
    v29 = v23;
  }

  v41 = v29 - v36;
  v19(*(v0 + 144), v37 + v21 * v20, *(v0 + 128));
  v42 = sub_1D8B15230();
  v44 = v43;
  (*(v31 + 8))(v33, v34);
  GenericRGB = CGColorCreateGenericRGB(1.0, 0.65, 0.0, 0.8);
  *(v0 + 312) = 1;
  *(v0 + 16) = v36;
  *(v0 + 24) = v39;
  *(v0 + 32) = v41;
  *(v0 + 40) = v40;
  *(v0 + 48) = 0x3F747AE147AE147BLL;
  *(v0 + 56) = GenericRGB;
  *(v0 + 64) = v42;
  *(v0 + 72) = v44;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0;
  *(v0 + 104) = *(v0 + 312);
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v46 = qword_1ECA675B0;
  *(v0 + 304) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D88DEB50, v46, 0);
}

uint64_t sub_1D88DF07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 160) = a2;
  *(v6 + 168) = a6;
  *(v6 + 224) = a5;
  *(v6 + 152) = a1;
  v7 = type metadata accessor for TextDetectorResult(0);
  *(v6 + 176) = v7;
  *(v6 + 184) = *(v7 - 8);
  *(v6 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  *(v6 + 200) = swift_task_alloc();
  type metadata accessor for BundleClassification(0);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88DF1B4, 0, 0);
}

uint64_t sub_1D88DF1B4()
{
  v56 = v0;
  v1 = *(v0 + 160);
  if (*(v0 + 224) == 1)
  {
    v2 = (v0 + 216);
    sub_1D88DBCE8(v1, (v0 + 96), *(v0 + 216));
  }

  else
  {
    v2 = (v0 + 208);
    sub_1D88DA640(v1, (v0 + 16), *(v0 + 208));
  }

  sub_1D88E120C(*v2, *(v0 + 152), type metadata accessor for BundleClassification);
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_26;
  }

  while ((sub_1D8B0AAA4() & 1) != 0)
  {
    v3 = CVBundle.textDetectorResults.getter();
    v4 = v3[2];
    if (!v4)
    {

      v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
      v27 = *(v0 + 200);
      *(v0 + 144) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v28 = sub_1D8B15810();
      v30 = v29;

      v55[0] = 0xA3A746E657645;
      v55[1] = 0xE700000000000000;
      MEMORY[0x1DA71EFA0](v28, v30);

      CVBundle.latestEstimate.getter(&v53);
      v54 = v53;
      CVDetection.detection.getter((v0 + 56));
      v31 = *(v0 + 80);
      v32 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v31);
      (*(v32 + 64))(v55, v31, v32);
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      Corners.bounds.getter();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      GenericRGB = CGColorCreateGenericRGB(0.0, 1.0, 0.0, 0.8);
      v42 = sub_1D8B15EA0();
      (*(*(v42 - 8) + 56))(v27, 1, 1, v42);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = v34;
      *(v43 + 40) = v36;
      *(v43 + 48) = v38;
      *(v43 + 56) = v40;
      *(v43 + 64) = 0x3F847AE147AE147BLL;
      *(v43 + 72) = GenericRGB;
      *(v43 + 80) = 0xA3A746E657645;
      *(v43 + 88) = 0xE700000000000000;
      *(v43 + 104) = 0;
      *(v43 + 112) = 0;
      *(v43 + 96) = 0;
      *(v43 + 120) = 1;
      sub_1D8891CA0(0, 0, v27, &unk_1D8B267D0, v43);

      break;
    }

    v5 = *(v0 + 184);
    v49 = *(v0 + 176);
    v54 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v4, 0);
    v6 = 0;
    v50 = v5;
    v51 = v4;
    v7 = v54;
    v47 = v0;
    v48 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v46 = v3;
    while (v6 < v3[2])
    {
      v8 = *(v0 + 192);
      sub_1D88E1274(&v48[*(v50 + 72) * v6], v8, type metadata accessor for TextDetectorResult);
      v9 = *(v8 + *(v49 + 44));
      v10 = *(v9 + 16);
      if (v10)
      {
        v52 = v7;
        v55[0] = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v10, 0);
        v11 = v55[0];
        v12 = *(v55[0] + 16);
        v13 = 16 * v12;
        v14 = (v9 + 48);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          v55[0] = v11;
          v17 = v12 + 1;
          v18 = *(v11 + 24);

          if (v12 >= v18 >> 1)
          {
            sub_1D87F3F54((v18 > 1), v17, 1);
            v11 = v55[0];
          }

          *(v11 + 16) = v17;
          v19 = v11 + v13;
          *(v19 + 32) = v15;
          *(v19 + 40) = v16;
          v13 += 16;
          v14 += 5;
          ++v12;
          --v10;
        }

        while (v10);
        v3 = v46;
        v0 = v47;
        v7 = v52;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      v20 = *(v0 + 192);
      *(v0 + 136) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v21 = sub_1D8B15810();
      v23 = v22;

      sub_1D88E11AC(v20, type metadata accessor for TextDetectorResult);
      v54 = v7;
      v25 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D87F3F54((v24 > 1), v25 + 1, 1);
        v7 = v54;
      }

      ++v6;
      *(v7 + 16) = v25 + 1;
      v26 = v7 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      if (v6 == v51)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1D88DF7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88DF888, 0, 0);
}

uint64_t sub_1D88DF888()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 40) = qword_1ECA675B0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D88DF930, v1, 0);
}

uint64_t sub_1D88DF930()
{
  v11 = v0;
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2[3];
  v9[2] = v2[2];
  v9[3] = v3;
  v10[0] = v2[4];
  *(v10 + 9) = *(v2 + 73);
  v4 = v2[1];
  v9[0] = *v2;
  v9[1] = v4;
  v5 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v9, v5, v6);

  sub_1D88E11AC(v1, type metadata accessor for BundleClassification.ClassificationType);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D88DFA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  v9 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1D88DFAD0;

  return sub_1D88DF07C(a1, a2, v10, v11, v9, v6 + 16);
}

uint64_t sub_1D88DFAD0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 24);
    *v4 = *(v2 + 16);
    *(v4 + 8) = v7;
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
  }

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_1D88DFBFC(uint64_t a1, _OWORD *a2)
{
  v4 = *v2;
  v5 = a2[3];
  v13 = a2[2];
  v14 = v5;
  v15 = a2[4];
  v6 = a2[1];
  v12[0] = *a2;
  v12[1] = v6;
  if ((sub_1D88D9DB8(a1, BYTE8(v13), v4) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  sub_1D88DA4C4(5);
  *(inited + 40) = v8;
  v9 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v10 = sub_1D89DF910(a1, v12, v9);

  return v10;
}

unint64_t sub_1D88DFCD4()
{
  if (*v0)
  {
    return 0xD00000000000003ALL;
  }

  else
  {
    return 0xD000000000000033;
  }
}

uint64_t sub_1D88DFD10(uint64_t a1, char *a2, uint64_t a3)
{
  v68 = a3;
  v63 = a2;
  v61 = a1;
  v57 = sub_1D8B13430();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v50 - v5;
  v6 = sub_1D8B13450();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B144E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v64 = sub_1D8B131D0();
  v66 = *(v64 - 8);
  v17 = MEMORY[0x1EEE9AC00](v64);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v50 - v26;
  if ((sub_1D8B146C0() & 1) == 0)
  {
    sub_1D88E05EC();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return v16 & 1;
  }

  sub_1D8B14610();
  v27 = v67;
  sub_1D8B143E0();
  if (!v27)
  {
    v67 = 0;
    v30 = v16;
    v16 = *(v9 + 8);
    (v16)(v30, v8);
    v52 = *(v66 + 32);
    v53 = v66 + 32;
    v52(v65, v25, v64);
    sub_1D8B14610();
    v31 = sub_1D8B14450();
    (v16)(v14, v8);
    if (v31 < 0)
    {
      sub_1D8B14610();
      v32 = sub_1D8B144B0();
      (v16)(v14, v8);
      v51 = v32 >> 63;
    }

    else
    {
      v51 = 0;
    }

    sub_1D8B145D0();
    v33 = sub_1D8B144A0();
    (v16)(v14, v8);
    if (v33)
    {
      v34 = v62;
      sub_1D8B145D0();
      v35 = v67;
      sub_1D8B143E0();
      v36 = v66;
      if (v35)
      {
        (v16)(v34, v8);
        (*(v36 + 8))(v65, v64);
        return v16 & 1;
      }

      v67 = 0;
      (v16)(v34, v8);
      v39 = v63;
      v38 = v64;
      v37 = v65;
      v40 = v52;
      LOBYTE(v16) = v51;
      v52(v63, v19, v64);
    }

    else
    {
      v36 = v66;
      LOBYTE(v16) = v51;
      if (v51)
      {
        v38 = v64;
        v37 = v65;
        (*(v66 + 16))(v22, v65, v64);
        v39 = v63;
      }

      else
      {
        v37 = v65;
        sub_1D8B13110();
        v39 = v63;
        v38 = v64;
      }

      v40 = v52;
      v52(v39, v22, v38);
    }

    if (sub_1D8B13140())
    {
      v41 = v58;
      sub_1D8B13410();
      sub_1D8B13090();
      if (v42 >= 86400.0)
      {
LABEL_21:
        sub_1D88E05EC();
        LOBYTE(v16) = swift_allocError();
        *v47 = 1;
        swift_willThrow();
        (*(v59 + 8))(v41, v60);
        v48 = *(v36 + 8);
        v48(v39, v38);
        v48(v37, v38);
        return v16 & 1;
      }

      v44 = v54;
      v43 = v55;
      v45 = v57;
      (*(v55 + 104))(v54, *MEMORY[0x1E6969A48], v57);
      v46 = v56;
      sub_1D8B133F0();
      (*(v43 + 8))(v44, v45);
      v36 = v66;
      if ((*(v66 + 48))(v46, 1, v38) == 1)
      {
        sub_1D87A14E4(v46, &qword_1ECA631A8);
        v37 = v65;
        goto LABEL_21;
      }

      (*(v59 + 8))(v41, v60);
      (*(v36 + 8))(v39, v38);
      v49 = v46;
      v40 = v52;
      v52(v39, v49, v38);
      v37 = v65;
      LOBYTE(v16) = v51;
    }

    v40(v61, v37, v38);
    return v16 & 1;
  }

  (*(v9 + 8))(v16, v8);
  return v16 & 1;
}

uint64_t sub_1D88E0474(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v7 = *(v5 + v4);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v7);
      v8 = sub_1D8B16D80();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (*(*(a2 + 48) + v10) != v7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1D88E057C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D88E05EC()
{
  result = qword_1ECA64B78;
  if (!qword_1ECA64B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B78);
  }

  return result;
}

unint64_t sub_1D88E0668()
{
  result = qword_1ECA64B80;
  if (!qword_1ECA64B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B80);
  }

  return result;
}

uint64_t sub_1D88E06BC()
{
  v0 = sub_1D8B15970();
  v2 = v1;
  if (v0 == sub_1D8B15970() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D8B16BA0();
  }

  return v5 & 1;
}

uint64_t sub_1D88E074C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64C08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88E1540();
  sub_1D8B16DB0();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1D8B169C0();
    v10 = 1;
    sub_1D8B169C0();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1D88E0930(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B43E80 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B41EE0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B43EA0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B43EC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D88E0AE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D88DF7F4(a1, v4, v5, v1 + 32);
}

uint64_t type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo()
{
  result = qword_1ECA64BC8;
  if (!qword_1ECA64BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D88E0BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B131D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;

  result = sub_1D87C7070(sub_1D88E18D8, v17, a1);
  if (!*(result + 16))
  {

    result = sub_1D8B13180();
    v9 = result;
    v16 = *(result + 16);
    if (v16)
    {
      v10 = 0;
      v15 = v5 + 16;
      v11 = (v5 + 8);
      while (v10 < *(v9 + 16))
      {
        v12 = (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v4);
        MEMORY[0x1EEE9AC00](v12);
        *(&v15 - 2) = v7;

        v13 = sub_1D87C7070(sub_1D88E115C, (&v15 - 4), a1);
        if (*(v13 + 16))
        {
          v14 = v13;

          (*v11)(v7, v4);
          return v14;
        }

        ++v10;
        result = (*v11)(v7, v4);
        if (v16 == v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_1D88E0E0C()
{
  result = qword_1EE0E46D0;
  if (!qword_1EE0E46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E46D0);
  }

  return result;
}

uint64_t sub_1D88E0E80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D88DE29C(a1, v4, v5, v1 + 32, v1 + 104);
}

uint64_t sub_1D88E0FE4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result != 2)
  {
    return sub_1D88E1004(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D88E1004(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_1D88E102C(result, a2, a3);
  }
}

uint64_t sub_1D88E102C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D88E1044(uint64_t a1)
{
  v4 = *(sub_1D8B131D0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D88DE5E8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D88E11AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D88E120C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D88E1274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D88E12DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D88E1324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D88E139C()
{
  sub_1D88E1448();
  if (v0 <= 0x3F)
  {
    sub_1D8B13240();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D88E1448()
{
  if (!qword_1ECA64BD8)
  {
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA64BD8);
    }
  }
}

unint64_t sub_1D88E1498()
{
  result = qword_1ECA64BE8;
  if (!qword_1ECA64BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64BE8);
  }

  return result;
}

unint64_t sub_1D88E14EC()
{
  result = qword_1ECA64C00;
  if (!qword_1ECA64C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C00);
  }

  return result;
}

unint64_t sub_1D88E1540()
{
  result = qword_1ECA64C10;
  if (!qword_1ECA64C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C10);
  }

  return result;
}

uint64_t sub_1D88E1594(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA64BF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D88E160C()
{
  result = qword_1ECA64C30;
  if (!qword_1ECA64C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C30);
  }

  return result;
}

uint64_t sub_1D88E1660(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D88E16CC()
{
  result = qword_1ECA64C38;
  if (!qword_1ECA64C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C38);
  }

  return result;
}

unint64_t sub_1D88E1724()
{
  result = qword_1ECA64C40;
  if (!qword_1ECA64C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C40);
  }

  return result;
}

unint64_t sub_1D88E177C()
{
  result = qword_1ECA64C48;
  if (!qword_1ECA64C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C48);
  }

  return result;
}

unint64_t sub_1D88E17D4()
{
  result = qword_1ECA64C50;
  if (!qword_1ECA64C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C50);
  }

  return result;
}

unint64_t sub_1D88E182C()
{
  result = qword_1ECA64C58;
  if (!qword_1ECA64C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C58);
  }

  return result;
}

unint64_t sub_1D88E1884()
{
  result = qword_1ECA64C60;
  if (!qword_1ECA64C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C60);
  }

  return result;
}

uint64_t sub_1D88E18F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3)
      {
        if (*v3 == 1)
        {
          if (v8 != 1 || v6 != v7)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v6 == 0.0)
          {
            if (v8 != 2 || v7 != 0.0)
            {
              return result;
            }
          }

          else if (v8 != 2 || *&v7 != 1)
          {
            return result;
          }
        }
      }

      else
      {
        if (*v4)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D88E19FC(uint64_t a1, uint64_t a2)
{
  v86[3] = *MEMORY[0x1E69E9840];
  v82 = sub_1D8B13830();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v69 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FC0);
  MEMORY[0x1EEE9AC00](v81);
  v11 = &v69 - v10;
  v83 = type metadata accessor for VisualUnderstandingContainer(0);
  v12 = MEMORY[0x1EEE9AC00](v83);
  v80 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v84 = (&v69 - v15);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (!v16 || a1 == a2)
  {
    return 1;
  }

  v71 = 0;
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v72 = (v4 + 32);
  v73 = v6;
  v74 = (v4 + 8);
  v75 = v9;
  v78 = *(v14 + 72);
  v79 = (v4 + 48);
  v20 = v80;
  v21 = v82;
  while (1)
  {
    sub_1D88F0DD8(v18, v84, type metadata accessor for VisualUnderstandingContainer);
    sub_1D88F0DD8(v19, v20, type metadata accessor for VisualUnderstandingContainer);
    if (*v84 != *v20)
    {
      goto LABEL_77;
    }

    v22 = *(v83 + 20);
    v23 = *(v81 + 48);
    sub_1D87A0E38(v84 + v22, v11, &qword_1ECA635E8);
    sub_1D87A0E38(v20 + v22, &v11[v23], &qword_1ECA635E8);
    v24 = *v79;
    if ((*v79)(v11, 1, v21) == 1)
    {
      if (v24(&v11[v23], 1, v21) != 1)
      {
        goto LABEL_74;
      }

      sub_1D87A14E4(v11, &qword_1ECA635E8);
      goto LABEL_11;
    }

    v25 = v75;
    sub_1D87A0E38(v11, v75, &qword_1ECA635E8);
    if (v24(&v11[v23], 1, v21) == 1)
    {
      break;
    }

    v26 = v73;
    (*v72)(v73, &v11[v23], v21);
    sub_1D88F0C68(&qword_1ECA64FC8, MEMORY[0x1E69E0330]);
    LODWORD(v76) = sub_1D8B158C0();
    v77 = v16;
    v27 = *v74;
    (*v74)(v26, v21);
    v27(v25, v21);
    v16 = v77;
    sub_1D87A14E4(v11, &qword_1ECA635E8);
    v20 = v80;
    if ((v76 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_11:
    v28 = *(v83 + 24);
    v29 = *(v84 + v28);
    v30 = *(v84 + v28 + 8);
    v31 = (v20 + v28);
    v32 = *v31;
    v33 = v31[1];
    if (v30 >> 60 == 15)
    {
      if (v33 >> 60 != 15)
      {
        goto LABEL_72;
      }

      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      goto LABEL_45;
    }

    if (v33 >> 60 == 15)
    {
LABEL_72:
      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      sub_1D87C12A4(v29, v30);
      v67 = v32;
      v68 = v33;
LABEL_76:
      sub_1D87C12A4(v67, v68);
      goto LABEL_77;
    }

    v34 = v30 >> 62;
    v35 = v33 >> 62;
    if (v30 >> 62 == 3)
    {
      v36 = 0;
      if (!v29 && v30 == 0xC000000000000000 && v33 >> 62 == 3)
      {
        v36 = 0;
        if (!v32 && v33 == 0xC000000000000000)
        {
          sub_1D8883D78(0, 0xC000000000000000);
          sub_1D8883D78(0, 0xC000000000000000);
          v37 = 0;
          v38 = 0xC000000000000000;
          goto LABEL_44;
        }
      }

LABEL_31:
      if (v35 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v44 = *(v29 + 16);
        v43 = *(v29 + 24);
        v41 = __OFSUB__(v43, v44);
        v36 = v43 - v44;
        if (v41)
        {
          goto LABEL_80;
        }

        goto LABEL_31;
      }

      v36 = 0;
      if (v35 <= 1)
      {
        goto LABEL_32;
      }
    }

    else if (v34)
    {
      LODWORD(v36) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_81;
      }

      v36 = v36;
      if (v35 <= 1)
      {
LABEL_32:
        if (v35)
        {
          LODWORD(v42) = HIDWORD(v32) - v32;
          if (__OFSUB__(HIDWORD(v32), v32))
          {
            goto LABEL_79;
          }

          v42 = v42;
        }

        else
        {
          v42 = BYTE6(v33);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v36 = BYTE6(v30);
      if (v35 <= 1)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    if (v35 != 2)
    {
      if (v36)
      {
        goto LABEL_75;
      }

LABEL_43:
      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      v37 = v32;
      v38 = v33;
LABEL_44:
      sub_1D87C12A4(v37, v38);
LABEL_45:
      sub_1D87C12A4(v29, v30);
      sub_1D88F3180(v20, type metadata accessor for VisualUnderstandingContainer);
      sub_1D88F3180(v84, type metadata accessor for VisualUnderstandingContainer);
      v21 = v82;
      goto LABEL_46;
    }

    v40 = *(v32 + 16);
    v39 = *(v32 + 24);
    v41 = __OFSUB__(v39, v40);
    v42 = v39 - v40;
    if (v41)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

LABEL_38:
    if (v36 != v42)
    {
LABEL_75:
      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      sub_1D87C12A4(v32, v33);
      v67 = v29;
      v68 = v30;
      goto LABEL_76;
    }

    if (v36 < 1)
    {
      goto LABEL_43;
    }

    if (v34 > 1)
    {
      if (v34 != 2)
      {
        memset(v86, 0, 14);
        sub_1D8883D78(v29, v30);
        sub_1D8883D78(v32, v33);
        sub_1D8883D78(v32, v33);
        v46 = v32;
        v47 = v33;
        v45 = v32;
        goto LABEL_62;
      }

      v48 = *(v29 + 16);
      v70 = *(v29 + 24);
      v76 = v29;
      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      v77 = v32;
      sub_1D8883D78(v32, v33);
      v49 = sub_1D8B12D00();
      if (v49)
      {
        v50 = v49;
        v51 = sub_1D8B12D20();
        if (__OFSUB__(v48, v51))
        {
          goto LABEL_84;
        }

        v52 = v48;
        v53 = v48 - v51 + v50;
      }

      else
      {
        v52 = v48;
        v53 = 0;
      }

      if (__OFSUB__(v70, v52))
      {
        goto LABEL_83;
      }

      sub_1D8B12D10();
      v63 = v53;
    }

    else
    {
      v77 = v32;
      if (!v34)
      {
        v86[0] = v29;
        LOWORD(v86[1]) = v30;
        BYTE2(v86[1]) = BYTE2(v30);
        BYTE3(v86[1]) = BYTE3(v30);
        BYTE4(v86[1]) = BYTE4(v30);
        BYTE5(v86[1]) = BYTE5(v30);
        sub_1D8883D78(v29, v30);
        v45 = v77;
        sub_1D8883D78(v77, v33);
        sub_1D8883D78(v45, v33);
        v46 = v45;
        v47 = v33;
LABEL_62:
        v61 = v71;
        sub_1D87A0104(v86, v46, v47, &v85);
        v71 = v61;
        sub_1D87C12A4(v45, v33);
        sub_1D87C12A4(v45, v33);
        v62 = v85;
        goto LABEL_69;
      }

      v54 = v29;
      v55 = (v29 >> 32) - v29;
      if (v29 >> 32 < v29)
      {
        goto LABEL_82;
      }

      v76 = v29;
      sub_1D8883D78(v29, v30);
      v56 = v77;
      sub_1D8883D78(v77, v33);
      sub_1D8883D78(v56, v33);
      v57 = sub_1D8B12D00();
      if (v57)
      {
        v70 = v55;
        v58 = v57;
        v59 = sub_1D8B12D20();
        if (__OFSUB__(v54, v59))
        {
          goto LABEL_85;
        }

        v60 = v54 - v59 + v58;
      }

      else
      {
        v60 = 0;
      }

      sub_1D8B12D10();
      v63 = v60;
    }

    v64 = v77;
    v65 = v71;
    sub_1D87A0104(v63, v77, v33, v86);
    v71 = v65;
    sub_1D87C12A4(v64, v33);
    sub_1D87C12A4(v64, v33);
    v62 = v86[0];
    v29 = v76;
LABEL_69:
    sub_1D87C12A4(v29, v30);
    sub_1D88F3180(v20, type metadata accessor for VisualUnderstandingContainer);
    sub_1D88F3180(v84, type metadata accessor for VisualUnderstandingContainer);
    v21 = v82;
    if ((v62 & 1) == 0)
    {
      return 0;
    }

LABEL_46:
    v19 += v78;
    v18 += v78;
    if (!--v16)
    {
      return 1;
    }
  }

  (*v74)(v25, v21);
  v20 = v80;
LABEL_74:
  sub_1D87A14E4(v11, &qword_1ECA64FC0);
LABEL_77:
  sub_1D88F3180(v20, type metadata accessor for VisualUnderstandingContainer);
  sub_1D88F3180(v84, type metadata accessor for VisualUnderstandingContainer);
  return 0;
}

uint64_t sub_1D88E245C(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for BuiltInAction(0);
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ActionPin.Pill(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v36 - v16);
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v38 = v11;
    v39 = (v4 + 48);
    v37 = *(v15 + 72);
    while (1)
    {
      sub_1D88F0DD8(v20, v17, type metadata accessor for ActionPin.Pill);
      sub_1D88F0DD8(v21, v14, type metadata accessor for ActionPin.Pill);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v23 = v17[2] == v14[2] && v17[3] == v14[3];
      if (!v23 && (sub_1D8B16BA0() & 1) == 0 || (v17[4] != v14[4] || v17[5] != v14[5]) && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v24 = v17[7];
      v25 = v14[7];
      if (v24)
      {
        if (!v25 || (v17[6] != v14[6] || v24 != v25) && (sub_1D8B16BA0() & 1) == 0)
        {
          break;
        }
      }

      else if (v25)
      {
        break;
      }

      if (v17[8] != v14[8])
      {
        break;
      }

      v41 = v20;
      v26 = v8;
      v27 = *(v11 + 36);
      v28 = *(v42 + 48);
      sub_1D88F0DD8(v17 + v27, v10, type metadata accessor for ActionPin.Pill.Source);
      v29 = v14 + v27;
      v30 = v43;
      sub_1D88F0DD8(v29, &v10[v28], type metadata accessor for ActionPin.Pill.Source);
      v31 = *v39;
      if ((*v39)(v10, 1, v30) == 1)
      {
        if (v31(&v10[v28], 1, v43) != 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_1D88F0DD8(v10, v8, type metadata accessor for ActionPin.Pill.Source);
        if (v31(&v10[v28], 1, v43) == 1)
        {
          sub_1D88F3180(v8, type metadata accessor for BuiltInAction);
LABEL_34:
          sub_1D87A14E4(v10, &qword_1ECA63E58);
          break;
        }

        v32 = v40;
        sub_1D88F31E0(&v10[v28], v40, type metadata accessor for BuiltInAction);
        v33 = static BuiltInAction.== infix(_:_:)(v26, v32);
        v34 = v32;
        v8 = v26;
        sub_1D88F3180(v34, type metadata accessor for BuiltInAction);
        sub_1D88F3180(v26, type metadata accessor for BuiltInAction);
        if ((v33 & 1) == 0)
        {
          sub_1D88F3180(v10, type metadata accessor for ActionPin.Pill.Source);
          break;
        }
      }

      sub_1D88F3180(v10, type metadata accessor for ActionPin.Pill.Source);
      sub_1D88F3180(v14, type metadata accessor for ActionPin.Pill);
      sub_1D88F3180(v17, type metadata accessor for ActionPin.Pill);
      v11 = v38;
      v21 += v37;
      v20 = v41 + v37;
      if (!--v18)
      {
        return 1;
      }
    }

    sub_1D88F3180(v14, type metadata accessor for ActionPin.Pill);
    sub_1D88F3180(v17, type metadata accessor for ActionPin.Pill);
  }

  return 0;
}

BOOL sub_1D88E29C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v8;
  v65 = type metadata accessor for DetectionRequest.Originator(0);
  v9 = MEMORY[0x1EEE9AC00](v65);
  v59 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v52 - v15;
  v16 = type metadata accessor for DetectionRequest(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v52 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v55 = v13;
  v56 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v53 = (v5 + 32);
  v54 = (v5 + 8);
  v27 = *(v20 + 72);
  v60 = v16;
  v52 = v27;
  while (1)
  {
    sub_1D88F0DD8(v25, v22, type metadata accessor for DetectionRequest);
    sub_1D88F0DD8(v26, v19, type metadata accessor for DetectionRequest);
    if (*v22 != *v19)
    {
      goto LABEL_40;
    }

    v28 = v16[5];
    v29 = v64;
    v30 = v64 + *(v63 + 48);
    sub_1D88F0DD8(&v22[v28], v64, type metadata accessor for DetectionRequest.Originator);
    sub_1D88F0DD8(&v19[v28], v30, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v36 = v55;
      sub_1D88F0DD8(v29, v55, type metadata accessor for DetectionRequest.Originator);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*v54)(v36, v56);
LABEL_39:
        sub_1D87A14E4(v64, &unk_1ECA64FB0);
        goto LABEL_40;
      }

      v37 = *v53;
      v38 = v36;
      v39 = v56;
      (*v53)(v62, v38, v56);
      v40 = v58;
      v37(v58, v30, v39);
      v27 = v52;
      v57 = sub_1D8B13200();
      v41 = *v54;
      (*v54)(v40, v39);
      v41(v62, v39);
      sub_1D88F3180(v64, type metadata accessor for DetectionRequest.Originator);
      v16 = v60;
      if ((v57 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v42 = swift_getEnumCaseMultiPayload();
        v16 = v60;
        if (v42 != 4)
        {
          goto LABEL_39;
        }

        goto LABEL_27;
      }

      v32 = v59;
      sub_1D88F0DD8(v29, v59, type metadata accessor for DetectionRequest.Originator);
      v33 = *v32;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_39;
      }

      v34 = sub_1D894FA18(v33, *v30);

      sub_1D88F3180(v29, type metadata accessor for DetectionRequest.Originator);
      v16 = v60;
      if ((v34 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_28:
    if ((sub_1D894CAAC(*&v22[v16[6]], *&v19[v16[6]]) & 1) == 0 || !CGRectEqualToRect(*&v22[v16[7]], *&v19[v16[7]]))
    {
      goto LABEL_40;
    }

    v48 = v16[8];
    v49 = *&v22[v48];
    v50 = *&v19[v48];
    sub_1D88F3180(v19, type metadata accessor for DetectionRequest);
    sub_1D88F3180(v22, type metadata accessor for DetectionRequest);
    result = v49 == v50;
    if (v49 == v50)
    {
      v26 += v27;
      v25 += v27;
      if (--v23)
      {
        continue;
      }
    }

    return result;
  }

  if (!EnumCaseMultiPayload)
  {
    v35 = swift_getEnumCaseMultiPayload();
    v16 = v60;
    if (v35)
    {
      goto LABEL_39;
    }

    sub_1D88F3180(v30, type metadata accessor for DetectionRequest.Originator);
    goto LABEL_27;
  }

  v43 = v61;
  sub_1D88F0DD8(v29, v61, type metadata accessor for DetectionRequest.Originator);
  v44 = *v43;
  v45 = swift_getEnumCaseMultiPayload();
  v16 = v60;
  if (v45 != 1)
  {
    goto LABEL_39;
  }

  v46 = *v30;
  v47 = *(v30 + 4);
  if (*(v61 + 4))
  {
    if (*(v61 + 4) == 1)
    {
      if (v47 != 1)
      {
        goto LABEL_43;
      }

      goto LABEL_26;
    }

    sub_1D88F3180(v64, type metadata accessor for DetectionRequest.Originator);
    if (v46 != 0.0 || v47 != 2)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  if (v47)
  {
    goto LABEL_43;
  }

LABEL_26:
  if (v44 == v46)
  {
LABEL_27:
    sub_1D88F3180(v64, type metadata accessor for DetectionRequest.Originator);
    goto LABEL_28;
  }

LABEL_43:
  sub_1D88F3180(v64, type metadata accessor for DetectionRequest.Originator);
LABEL_40:
  sub_1D88F3180(v19, type metadata accessor for DetectionRequest);
  sub_1D88F3180(v22, type metadata accessor for DetectionRequest);
  return 0;
}

uint64_t sub_1D88E3154(uint64_t result, uint64_t a2)
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

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 4;
    result = *v3 == v6 && *(v3 - 1) == v5;
    v8 = result != 1 || v2-- == 1;
    v3 += 4;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88E31C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_38:
    v35 = 0;
    return v35 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v35 = 1;
    return v35 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v37 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    v16 = v14;
    result = sub_1D87A0E38(v14 + v15 * v12, v10, &qword_1ECA67750);
    if (v12 == v11)
    {
      break;
    }

    sub_1D87A0E38(v37 + v15 * v12, v7, &qword_1ECA67750);
    result = sub_1D8B13200();
    if ((result & 1) == 0 || *&v10[v4[9]] != *&v7[v4[9]] || (v18 = v4[10], v19 = &v10[v18], (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*v19, *&v7[v18]), vceqq_f64(v19[1], *&v7[v18 + 16])), vuzp1q_s32(vceqq_f64(v19[2], *&v7[v18 + 32]), vceqq_f64(v19[3], *&v7[v18 + 48]))))) & 1) == 0) || (v20 = v4[11], v21 = *&v10[v20], v22 = *&v7[v20], v23 = *(v21 + 16), v23 != *(v22 + 16)))
    {
LABEL_37:
      sub_1D87A14E4(v7, &qword_1ECA67750);
      sub_1D87A14E4(v10, &qword_1ECA67750);
      goto LABEL_38;
    }

    if (v23)
    {
      v24 = v21 == v22;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v21 + 40);
      v26 = (v22 + 40);
      while (v23)
      {
        if (*(v25 - 1) != *(v26 - 1) || *v25 != *v26)
        {
          goto LABEL_37;
        }

        v25 += 4;
        v26 += 4;
        if (!--v23)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_22:
    v28 = v4[12];
    v29 = *&v10[v28];
    v30 = *&v7[v28];
    v31 = *(v29 + 16);
    if (v31 != *(v30 + 16))
    {
      goto LABEL_37;
    }

    if (v31)
    {
      v32 = v29 == v30;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      v33 = (v29 + 32);
      v34 = (v30 + 32);
      while (v31)
      {
        if (*v33 != *v34)
        {
          goto LABEL_37;
        }

        ++v33;
        ++v34;
        if (!--v31)
        {
          goto LABEL_31;
        }
      }

LABEL_41:
      __break(1u);
      break;
    }

LABEL_31:
    if (*&v10[v4[13]] != *&v7[v4[13]] || *&v10[v4[14]] != *&v7[v4[14]])
    {
      goto LABEL_37;
    }

    v35 = sub_1D88E31C4(*&v10[v4[15]], *&v7[v4[15]]);
    sub_1D87A14E4(v7, &qword_1ECA67750);
    sub_1D87A14E4(v10, &qword_1ECA67750);
    if (v35)
    {
      ++v12;
      v14 = v16;
      if (v12 != v11)
      {
        continue;
      }
    }

    return v35 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88E351C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = (a1 + i);
      v7 = (a2 + i);
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      v8 = v6[7];
      v9 = v6[8];
      v10 = v7[7];
      v11 = v7[8];
      v12 = v6[5] == v7[5] && v6[6] == v7[6];
      if (!v12 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v13 = v8 == v10 && v9 == v11;
      if (!v13 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D88E3618(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D88E36A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 > 2)
        {
          if (v7 == 3)
          {
            if (v5 != 3)
            {
              return 0;
            }
          }

          else if (v7 == 4)
          {
            if (v5 != 4)
            {
              return 0;
            }
          }

          else if (v5 != 5)
          {
            return 0;
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D88E37BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_1D87D40A8(v3, v19);
      sub_1D87D40A8(v4, v16);
      v5 = v20;
      v6 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
      {

        sub_1D87D40E0(v16);
        sub_1D87D40E0(v19);
      }

      else
      {
        v14 = sub_1D8B16BA0();

        sub_1D87D40E0(v16);
        sub_1D87D40E0(v19);
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D88E3934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_1D87D4040(v3, v19);
      sub_1D87D4040(v4, v16);
      v5 = v20;
      v6 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
      {

        sub_1D87D4078(v16);
        sub_1D87D4078(v19);
      }

      else
      {
        v14 = sub_1D8B16BA0();

        sub_1D87D4078(v16);
        sub_1D87D4078(v19);
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D88E3AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13000();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63608);
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    return 0;
  }

  if (!v15 || a1 == a2)
  {
    return 1;
  }

  v44 = &v39 - v14;
  v16 = a1 + 32;
  v17 = a2 + 32;
  v39 = (v5 + 32);
  v40 = (v5 + 8);
  v42 = (v5 + 48);
  while (1)
  {
    result = sub_1D87D3FD8(v16, v53);
    if (!v15)
    {
      break;
    }

    v46 = v15;
    v47 = v17;
    v19 = v11;
    sub_1D87D3FD8(v17, v50);
    v21 = v54;
    v20 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v22 = (*(v20 + 32))(v21, v20);
    v24 = v51;
    v23 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    if (v22 != (*(v23 + 32))(v24, v23))
    {
      goto LABEL_17;
    }

    v45 = v16;
    v25 = v54;
    v26 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v27 = v4;
    v28 = v44;
    (*(v26 + 16))(v25, v26);
    v29 = v51;
    v30 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v31 = v49;
    (*(v30 + 16))(v29, v30);
    v32 = *(v43 + 48);
    v33 = v48;
    sub_1D87A0E38(v28, v48, &qword_1ECA630C0);
    sub_1D87A0E38(v31, v33 + v32, &qword_1ECA630C0);
    v34 = *v42;
    if ((*v42)(v33, 1, v27) == 1)
    {
      sub_1D87A14E4(v31, &qword_1ECA630C0);
      sub_1D87A14E4(v28, &qword_1ECA630C0);
      if (v34(v33 + v32, 1, v27) != 1)
      {
        goto LABEL_16;
      }

      v11 = v19;
      v4 = v27;
      sub_1D87A14E4(v33, &qword_1ECA630C0);
      sub_1D87D4010(v50);
      sub_1D87D4010(v53);
    }

    else
    {
      v11 = v19;
      sub_1D87A0E38(v33, v19, &qword_1ECA630C0);
      v4 = v27;
      if (v34(v33 + v32, 1, v27) == 1)
      {
        sub_1D87A14E4(v49, &qword_1ECA630C0);
        sub_1D87A14E4(v44, &qword_1ECA630C0);
        (*v40)(v19, v27);
LABEL_16:
        sub_1D87A14E4(v33, &qword_1ECA63608);
LABEL_17:
        sub_1D87D4010(v50);
        sub_1D87D4010(v53);
        return 0;
      }

      v35 = v33 + v32;
      v36 = v41;
      (*v39)(v41, v35, v27);
      sub_1D88F0C68(&qword_1ECA63610, MEMORY[0x1E6968FB0]);
      v37 = sub_1D8B158C0();
      v38 = *v40;
      (*v40)(v36, v27);
      sub_1D87A14E4(v49, &qword_1ECA630C0);
      sub_1D87A14E4(v44, &qword_1ECA630C0);
      v38(v19, v27);
      sub_1D87A14E4(v48, &qword_1ECA630C0);
      sub_1D87D4010(v50);
      sub_1D87D4010(v53);
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

    v16 = v45 + 40;
    v17 = v47 + 40;
    v15 = v46 - 1;
    if (v46 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88E4098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static CVDetection.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D88E4158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1D88F0DD8(v13, v10, type metadata accessor for ActionPin);
        sub_1D88F0DD8(v14, v7, type metadata accessor for ActionPin);
        if ((sub_1D8B13200() & 1) == 0)
        {
          break;
        }

        v16 = v4[5];
        if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v10[v16], *&v7[v16]), vceqq_f64(*&v10[v16 + 16], *&v7[v16 + 16])), vuzp1q_s32(vceqq_f64(*&v10[v16 + 32], *&v7[v16 + 32]), vceqq_f64(*&v10[v16 + 48], *&v7[v16 + 48]))))) & 1) == 0)
        {
          break;
        }

        v17 = v4[6];
        v18 = *&v10[v17];
        v19 = *&v10[v17 + 8];
        v20 = &v7[v17];
        v21 = v18 == *v20 && v19 == *(v20 + 1);
        if (!v21 && (sub_1D8B16BA0() & 1) == 0 || (sub_1D88E245C(*&v10[v4[7]], *&v7[v4[7]]) & 1) == 0)
        {
          break;
        }

        v22 = v10[v4[8]] ^ v7[v4[8]];
        sub_1D88F3180(v7, type metadata accessor for ActionPin);
        sub_1D88F3180(v10, type metadata accessor for ActionPin);
        if ((v22 & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v23 = v22 ^ 1;
        return v23 & 1;
      }

      sub_1D88F3180(v7, type metadata accessor for ActionPin);
      sub_1D88F3180(v10, type metadata accessor for ActionPin);
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1D88E4444(uint64_t a1, uint64_t a2)
{
  v56 = sub_1D8B13240();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v48 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v48 - v14;
  v16 = type metadata accessor for CVBundle(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v61 = &v48 - v22;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_29;
  }

  if (!v23 || a1 == a2)
  {
    v46 = 1;
    return v46 & 1;
  }

  v53 = v20;
  v54 = v9;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v48 = (v4 + 32);
  v49 = v6;
  v50 = (v4 + 8);
  v51 = v12;
  v52 = *(v21 + 72);
  v27 = v59;
  v28 = v61;
  while (1)
  {
    sub_1D88F0DD8(v25, v28, type metadata accessor for CVBundle);
    v57 = v26;
    v58 = v25;
    sub_1D88F0DD8(v26, v19, type metadata accessor for CVBundle);
    v29 = *(v60 + 48);
    sub_1D88F0DD8(v28, v15, type metadata accessor for CVBundle.BundleType);
    sub_1D88F0DD8(v19, &v15[v29], type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v30 = v51;
    sub_1D88F0DD8(v15, v51, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*v50)(v30, v56);
      goto LABEL_27;
    }

    v31 = v19;
    v32 = v8;
    v34 = v55;
    v33 = v56;
    (*v48)(v55, &v15[v29], v56);
    v35 = sub_1D8B13200();
    v36 = *v50;
    v37 = v34;
    v8 = v32;
    v19 = v31;
    v27 = v59;
    (*v50)(v37, v33);
    v38 = v33;
    v6 = v49;
    v36(v30, v38);
    if ((v35 & 1) == 0)
    {
      sub_1D88F3180(v15, type metadata accessor for CVBundle.BundleType);
      v28 = v61;
      goto LABEL_28;
    }

LABEL_18:
    sub_1D88F3180(v15, type metadata accessor for CVBundle.BundleType);
    v45 = v53;
    v28 = v61;
    if ((sub_1D88E4444(*&v61[*(v53 + 20)], *&v19[*(v53 + 20)]) & 1) == 0 || (sub_1D88E4444(*(v28 + *(v45 + 24)), *&v19[*(v45 + 24)]) & 1) == 0)
    {
      goto LABEL_28;
    }

    v46 = sub_1D8854A60(*(v28 + *(v45 + 28)), *&v19[*(v45 + 28)]);
    sub_1D88F3180(v19, type metadata accessor for CVBundle);
    sub_1D88F3180(v28, type metadata accessor for CVBundle);
    if (v46)
    {
      v26 = v57 + v52;
      v25 = v58 + v52;
      if (--v23)
      {
        continue;
      }
    }

    return v46 & 1;
  }

  sub_1D88F0DD8(v15, v27, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D88F31E0(&v15[v29], v8, type metadata accessor for CVTrackSnapshot);
    if ((sub_1D8B13200() & 1) == 0 || (v39 = v6[5], v40 = *(v27 + v39), v62 = *&v8[v39], v63 = v40, , , v41 = static CVDetection.== infix(_:_:)(&v63, &v62), , , (v41 & 1) == 0) || (v42 = v6[6], v43 = *(v27 + v42), v62 = *&v8[v42], v63 = v43, , , v44 = static CVDetection.== infix(_:_:)(&v63, &v62), , , (v44 & 1) == 0) || *(v27 + v6[7]) != v8[v6[7]] || *(v27 + v6[8]) != *&v8[v6[8]] || *(v27 + v6[9]) != *&v8[v6[9]] || *(v27 + v6[10]) != v8[v6[10]])
    {
      sub_1D88F3180(v8, type metadata accessor for CVTrackSnapshot);
      sub_1D88F3180(v27, type metadata accessor for CVTrackSnapshot);
      sub_1D88F3180(v15, type metadata accessor for CVBundle.BundleType);
      goto LABEL_28;
    }

    sub_1D88F3180(v8, type metadata accessor for CVTrackSnapshot);
    sub_1D88F3180(v27, type metadata accessor for CVTrackSnapshot);
    goto LABEL_18;
  }

  sub_1D88F3180(v27, type metadata accessor for CVTrackSnapshot);
LABEL_27:
  sub_1D87A14E4(v15, &qword_1ECA63DA8);
LABEL_28:
  sub_1D88F3180(v19, type metadata accessor for CVBundle);
  sub_1D88F3180(v28, type metadata accessor for CVBundle);
LABEL_29:
  v46 = 0;
  return v46 & 1;
}

BOOL sub_1D88E4BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(a1 + v5 + 40);
        v8 = *(a1 + v5 + 48);
        v9 = *(a1 + v5 + 56);
        v10 = *(a1 + v5 + 64);
        v23[0] = *(a1 + v5 + 32);
        v7 = v23[0];
        v23[1] = v6;
        v23[2] = v8;
        v23[3] = v9;
        v23[4] = v10;
        v11 = *(a2 + v5 + 40);
        v13 = *(a2 + v5 + 48);
        v14 = *(a2 + v5 + 56);
        v15 = *(a2 + v5 + 64);
        v22[0] = *(a2 + v5 + 32);
        v12 = v22[0];
        v22[1] = v11;
        v22[2] = v13;
        v22[3] = v14;
        v22[4] = v15;

        v16 = v7;

        v17 = v12;

        v18 = _s22VisualIntelligenceCore9GeoLookupC0dE6ResultV2eeoiySbAE_AEtFZ_0(v23, v22);
        v19 = v22[0];

        v20 = v23[0];

        if (!v18)
        {
          break;
        }

        v5 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v18;
}

uint64_t sub_1D88E4D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lens_SearchResult(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_26:
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
      sub_1D88F0DD8(v13, v10, type metadata accessor for Lens_SearchResult);
      sub_1D88F0DD8(v14, v7, type metadata accessor for Lens_SearchResult);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_1D8B16BA0() & 1) == 0 || (v10[4] != v7[4] || v10[5] != v7[5]) && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      if ((v10[6] != v7[6] || v10[7] != v7[7]) && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      sub_1D8B14960();
      sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08]);
      v18 = sub_1D8B158C0();
      sub_1D88F3180(v7, type metadata accessor for Lens_SearchResult);
      sub_1D88F3180(v10, type metadata accessor for Lens_SearchResult);
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

    sub_1D88F3180(v7, type metadata accessor for Lens_SearchResult);
    sub_1D88F3180(v10, type metadata accessor for Lens_SearchResult);
    goto LABEL_26;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D88E5008(uint64_t a1, uint64_t a2)
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
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v9 = *(v5 + 112);
    v50 = *(v5 + 96);
    v51 = v9;
    v10 = *(v5 + 16);
    v11 = *(v5 + 48);
    v46 = *(v5 + 32);
    v47 = v11;
    v12 = *(v5 + 48);
    v13 = *(v5 + 80);
    v48 = *(v5 + 64);
    v49 = v13;
    v14 = *(v5 + 16);
    v45[0] = *v5;
    v45[1] = v14;
    v15 = *(v5 + 112);
    v42 = v50;
    v43 = v15;
    v38 = v46;
    v39 = v12;
    v40 = v48;
    v41 = v8;
    v36 = v45[0];
    v37 = v10;
    v16 = *(v6 + 80);
    v17 = *(v6 + 112);
    v58 = *(v6 + 96);
    v59 = v17;
    v18 = *(v6 + 16);
    v19 = *(v6 + 48);
    v54 = *(v6 + 32);
    v55 = v19;
    v20 = *(v6 + 48);
    v21 = *(v6 + 80);
    v56 = *(v6 + 64);
    v57 = v21;
    v22 = *(v6 + 16);
    v53[0] = *v6;
    v53[1] = v22;
    v23 = *(v6 + 112);
    v33 = v58;
    v34 = v23;
    v29 = v54;
    v30 = v20;
    v31 = v56;
    v32 = v16;
    v52 = *(v5 + 128);
    v44 = *(v5 + 128);
    v60 = *(v6 + 128);
    v35 = *(v6 + 128);
    v27 = v53[0];
    v28 = v18;
    sub_1D8883B74(v45, v26);
    sub_1D8883B74(v53, v26);
    v24 = _s22VisualIntelligenceCore23GeoLookupResultBusinessV2eeoiySbAC_ACtFZ_0(&v36, &v27);
    v61[6] = v33;
    v61[7] = v34;
    v62 = v35;
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_1D8883BD0(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64 = v44;
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_1D8883BD0(v63);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 136;
    v5 += 136;
  }

  return 1;
}

uint64_t sub_1D88E51D0(uint64_t result, uint64_t a2)
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

uint64_t sub_1D88E522C(uint64_t result, uint64_t a2)
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
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_41;
    }

    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    if (v6)
    {
      break;
    }

    if (v7)
    {
LABEL_39:

      return 0;
    }

LABEL_6:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = *(v6 + 16);
  if (v8 != *(v7 + 16))
  {
LABEL_37:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  if (v8)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_5:
    swift_bridgeObjectRetain_n();
    result = swift_bridgeObjectRelease_n();
    goto LABEL_6;
  }

  v10 = (v6 + 40);
  v11 = (v7 + 40);
  while (v8)
  {
    v14 = *(v10 - 1);
    v15 = *(v11 - 1);
    v16 = *v11;
    if (*v10)
    {
      if (*v10 != 1)
      {
        if (v14 == 0.0)
        {
          if (v16 != 2 || v15 != 0.0)
          {
            goto LABEL_37;
          }
        }

        else if (v16 != 2 || *&v15 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_22;
      }

      v12 = v16 == 1;
    }

    else
    {
      v12 = v16 == 0;
    }

    if (!v12 || v14 != v15)
    {
      goto LABEL_37;
    }

LABEL_22:
    v10 += 2;
    v11 += 2;
    if (!--v8)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

BOOL sub_1D88E5414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVTrackSnapshot(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - v9;
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
      sub_1D88F0DD8(v13, v10, type metadata accessor for CVTrackSnapshot);
      sub_1D88F0DD8(v14, v7, type metadata accessor for CVTrackSnapshot);
      if ((sub_1D8B13200() & 1) == 0)
      {
        break;
      }

      v16 = v4[5];
      v17 = *&v10[v16];
      v24 = *&v7[v16];
      v25 = v17;

      LOBYTE(v17) = static CVDetection.== infix(_:_:)(&v25, &v24);

      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = v4[6];
      v19 = *&v10[v18];
      v24 = *&v7[v18];
      v25 = v19;

      LOBYTE(v19) = static CVDetection.== infix(_:_:)(&v25, &v24);

      if ((v19 & 1) == 0 || v10[v4[7]] != v7[v4[7]] || *&v10[v4[8]] != *&v7[v4[8]] || *&v10[v4[9]] != *&v7[v4[9]])
      {
        break;
      }

      v20 = v4[10];
      v21 = v10[v20];
      v22 = v7[v20];
      sub_1D88F3180(v7, type metadata accessor for CVTrackSnapshot);
      sub_1D88F3180(v10, type metadata accessor for CVTrackSnapshot);
      result = v21 == v22;
      if (v21 == v22)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D88F3180(v7, type metadata accessor for CVTrackSnapshot);
    sub_1D88F3180(v10, type metadata accessor for CVTrackSnapshot);
  }

  return 0;
}

uint64_t sub_1D88E5744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v29 = a6;
  v31 = a5;
  v30 = a3(0);
  v9 = MEMORY[0x1EEE9AC00](v30);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (!v15 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      while (1)
      {
        sub_1D88F0DD8(v17, v14, a4);
        sub_1D88F0DD8(v18, v11, a4);
        v20 = *(v30 + 20);
        v21 = *&v14[v20];
        v22 = *&v11[v20];
        if (v21 != v22)
        {

          v23 = v29(v21, v22);

          if ((v23 & 1) == 0)
          {
            break;
          }
        }

        sub_1D8B14960();
        sub_1D88F0C68(&unk_1ECA64F40, MEMORY[0x1E69AAC08]);
        v24 = sub_1D8B158C0();
        v25 = v31;
        sub_1D88F3180(v11, v31);
        sub_1D88F3180(v14, v25);
        if (v24)
        {
          v18 += v19;
          v17 += v19;
          if (--v15)
          {
            continue;
          }
        }

        return v24 & 1;
      }

      v27 = v31;
      sub_1D88F3180(v11, v31);
      sub_1D88F3180(v14, v27);
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}