void sub_22F1F9B54(uint64_t *a1, uint64_t a2)
{
  v102 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0BC8, &unk_22F77A300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = &v91 - v5;
  v99 = _s29IntermediateTimeExtendedTokenVMa();
  v101 = *(v99 - 8);
  v6 = *(v101 + 64);
  v7 = MEMORY[0x28223BE20](v99);
  v95 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v91 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v91 - v16;
  v18 = sub_22F73F270();
  v103 = *(v18 - 8);
  v104 = v18;
  v19 = *(v103 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22F73F9B0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v91 - v29;
  v31 = sub_22F73F690();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v34 = MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  if (*(a2 + 40) == 1)
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v39 = sub_22F740B90();
    __swift_project_value_buffer(v39, qword_2810B4D00);
    v40 = sub_22F740B70();
    v41 = sub_22F7415E0();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_12;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "sortedYearTimeTokens: Collection time token did not have a year!";
    v44 = v41;
    v45 = v40;
    v46 = v42;
    v47 = 2;
LABEL_11:
    _os_log_impl(&dword_22F0FC000, v45, v44, v43, v46, v47);
    MEMORY[0x2319033A0](v42, -1, -1);
LABEL_12:

    return;
  }

  v91 = v36;
  v92 = v37;
  v93 = a2;
  v94 = &v91 - v35;
  v96 = *(a2 + 32);
  v97 = v38;
  sub_22F73F970();
  (*(v23 + 56))(v17, 1, 1, v22);
  v48 = sub_22F73FA10();
  (*(*(v48 - 8) + 56))(v13, 1, 1, v48);
  v49 = v96;
  sub_22F73F250();
  sub_22F73F920();
  (*(v103 + 8))(v21, v104);
  (*(v23 + 8))(v26, v22);
  v50 = v97;
  if ((*(v97 + 48))(v30, 1, v31) == 1)
  {
    sub_22F120ADC(v30, &qword_27DAB0920, &qword_22F770B20);
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v51 = sub_22F740B90();
    __swift_project_value_buffer(v51, qword_2810B4D00);
    v40 = sub_22F740B70();
    v52 = sub_22F7415E0();
    if (!os_log_type_enabled(v40, v52))
    {
      goto LABEL_12;
    }

    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = v49;
    v43 = "Unable to create a date from year %ld!";
    v44 = v52;
    v45 = v40;
    v46 = v42;
    v47 = 12;
    goto LABEL_11;
  }

  (*(v50 + 32))(v94, v30, v31);
  v53 = sub_22F7405C0();
  v54 = sub_22F73F5B0();
  v55 = [v53 stringFromDate_];

  v103 = sub_22F740E20();
  v104 = v56;

  v57 = *v102;
  if (*(*v102 + 16) && (v58 = sub_22F13A8F4(v49), (v59 & 1) != 0))
  {
    v60 = v95;
    sub_22F202F68(*(v57 + 56) + *(v101 + 72) * v58, v95);
    v61 = v98;
    sub_22F202F04(v60, v98);
    v62 = v99;
    v63 = v50;
    v64 = *(v99 + 32);
    sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578]);
    v65 = v31;
    v66 = v93;
    v67 = sub_22F740DB0();
    v68 = *(v63 + 16);
    if (v67)
    {
      v69 = v66 + v64;
    }

    else
    {
      v69 = v61 + v64;
    }

    v68(v92, v69, v65);
    v79 = v62[9];
    if (sub_22F740DC0())
    {
      v80 = v66 + v79;
    }

    else
    {
      v80 = v61 + v79;
    }

    v81 = v91;
    v68(v91, v80, v65);
    v82 = v65;
    v83 = v62[7];
    v84 = *MEMORY[0x277D3C738];
    v85 = sub_22F740890();
    v86 = v100;
    (*(*(v85 - 8) + 104))(&v100[v83], v84, v85);
    v87 = v92;
    v68(v86 + v62[8], v92, v82);
    v68(v86 + v62[9], v81, v82);
    v88 = v104;
    *v86 = v103;
    *(v86 + 8) = v88;
    *(v86 + 16) = 0;
    *(v86 + 24) = 1;
    v89 = v96;
    *(v86 + 32) = v96;
    *(v86 + 40) = 0;
    (*(v101 + 56))(v86, 0, 1, v62);
    sub_22F1218C0(v86, v89);
    v90 = *(v97 + 8);
    v90(v81, v82);
    v90(v87, v82);
    sub_22F202FCC(v98);
    v90(v94, v82);
  }

  else
  {
    v70 = v99;
    v71 = *(v99 + 28);
    v72 = *MEMORY[0x277D3C738];
    v73 = sub_22F740890();
    v74 = v100;
    (*(*(v73 - 8) + 104))(&v100[v71], v72, v73);
    v75 = *(v50 + 16);
    v76 = v49;
    v77 = v93;
    v75(v74 + *(v70 + 32), v93 + *(v70 + 32), v31);
    v75(v74 + *(v70 + 36), v77 + *(v70 + 36), v31);
    v78 = v104;
    *v74 = v103;
    *(v74 + 8) = v78;
    *(v74 + 16) = 0;
    *(v74 + 24) = 1;
    *(v74 + 32) = v76;
    *(v74 + 40) = 0;
    (*(v101 + 56))(v74, 0, 1, v70);
    sub_22F1218C0(v74, v76);
    (*(v50 + 8))(v94, v31);
  }
}

void sub_22F1FA5E0(void *a1, id a2, double a3, uint64_t a4, void *a5)
{
  if ([a2 count] / a3 >= 0.5)
  {
    v7 = [a1 elementIdentifiers];
    [a5 unionWithIdentifierSet_];
  }
}

uint64_t sub_22F1FA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v58 = a5;
  v60 = a2;
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - v14;
  v16 = sub_22F73F270();
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = sub_22F740890();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v22;
  v23 = sub_22F740270();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v27;
  v55 = sub_22F740120();
  v53 = *(v55 - 8);
  v28 = *(v53 + 64);
  v29 = MEMORY[0x28223BE20](v55);
  v51 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v50 = &v50 - v31;
  (*(v24 + 104))(v27, *MEMORY[0x277D3C2B0], v23);
  (*(v19 + 104))(v22, *MEMORY[0x277D3C748], v18);
  v32 = sub_22F73F9B0();
  v33 = *(*(v32 - 8) + 56);
  v33(v15, 1, 1, v32);
  v34 = sub_22F73FA10();
  v35 = *(*(v34 - 8) + 56);
  v35(v11, 1, 1, v34);

  sub_22F73F250();
  v36 = v32;
  v37 = v50;
  v33(v15, 1, 1, v36);
  v38 = v58;
  v39 = v34;
  v40 = v51;
  v35(v11, 1, 1, v39);
  v41 = v59;
  v42 = v53;
  sub_22F73F250();
  (*(v56 + 56))(v41, 0, 1, v57);
  v43 = v55;
  sub_22F740100();
  (*(v42 + 16))(v40, v37, v43);
  v44 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v38 = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v44 = sub_22F13EA3C(0, v44[2] + 1, 1, v44);
    *v38 = v44;
  }

  v47 = v44[2];
  v46 = v44[3];
  if (v47 >= v46 >> 1)
  {
    *v38 = sub_22F13EA3C(v46 > 1, v47 + 1, 1, v44);
  }

  (*(v42 + 8))(v37, v43);
  v48 = *v38;
  v48[2] = v47 + 1;
  return (*(v42 + 32))(v48 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v47, v40, v43);
}

uint64_t sub_22F1FAD44(void **a1)
{
  v2 = *(sub_22F73F690() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6440(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F1FB0D4(v6, MEMORY[0x277CC9578], sub_22F1FBC08, sub_22F1FB224);
  *a1 = v3;
  return result;
}

uint64_t sub_22F1FAE28(void **a1)
{
  v2 = *(_s29IntermediateTimeExtendedTokenVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64F4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F1FB0D4(v6, _s29IntermediateTimeExtendedTokenVMa, sub_22F1FC630, sub_22F1FB4E8);
  *a1 = v3;
  return result;
}

uint64_t sub_22F1FAF0C(void **a1)
{
  v2 = *(_s29IntermediateTimeExtendedTokenVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64F4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F1FB0D4(v6, _s29IntermediateTimeExtendedTokenVMa, sub_22F1FCE90, sub_22F1FB6E8);
  *a1 = v3;
  return result;
}

uint64_t sub_22F1FAFF0(void **a1)
{
  v2 = *(sub_22F740120() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6508(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F1FB0D4(v6, MEMORY[0x277D3C218], sub_22F1FD7C8, sub_22F1FB8FC);
  *a1 = v3;
  return result;
}

uint64_t sub_22F1FB0D4(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_22F742000();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_22F741200();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_22F1FB224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F73F690();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x28223BE20](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578]);
      v27 = sub_22F740DB0();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F1FB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s29IntermediateTimeExtendedTokenVMa();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v34 = v22;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    while (1)
    {
      sub_22F202F68(v25, v19);
      sub_22F202F68(v22, v15);
      v26 = *(v8 + 32);
      v27 = sub_22F73F5D0();
      sub_22F202FCC(v15);
      result = sub_22F202FCC(v19);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v22 = v34 + v30;
        v24 = v33 - 1;
        v25 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_22F202F04(v25, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22F202F04(v12, v22);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F1FB6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = _s29IntermediateTimeExtendedTokenVMa();
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v28 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v28 - v17);
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v29 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v33 = v21;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_22F202F68(v24, v18);
      sub_22F202F68(v21, v14);
      if (*v18 == *v14 && v18[1] == v14[1])
      {
        sub_22F202FCC(v14);
        result = sub_22F202FCC(v18);
LABEL_5:
        a3 = v34 + 1;
        v21 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_6;
      }

      v26 = sub_22F742040();
      sub_22F202FCC(v14);
      result = sub_22F202FCC(v18);
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_22F202F04(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22F202F04(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F1FB8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F740120();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_22F740110();
      v28 = v27;
      if (v26 == sub_22F740110() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_22F742040();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F1FBC08(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x28223BE20](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_22F3F5F98(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_22F1FE384(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22F3F5F98(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_22F3F5F0C(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x277D84F90];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578]);
      LODWORD(v134) = sub_22F740DB0();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_22F740DB0() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_22F13D970((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_22F1FE384(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22F3F5F98(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_22F3F5F0C(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578]);
    v110 = sub_22F740DB0();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22F1FC630(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v106 = a1;
  v9 = _s29IntermediateTimeExtendedTokenVMa();
  v114 = *(v9 - 8);
  v10 = *(v114 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v108 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v117 = &v103 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v103 - v16;
  result = MEMORY[0x28223BE20](v15);
  v20 = &v103 - v19;
  v116 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_136;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_100:
      v119 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v116)
        {
          v99 = *(result + 16 * a4);
          v100 = result;
          v101 = *(result + 16 * (a4 - 1) + 40);
          sub_22F1FE978(*v116 + *(v114 + 72) * v99, *v116 + *(v114 + 72) * *(result + 16 * (a4 - 1) + 32), *v116 + *(v114 + 72) * v101, v5);
          if (v6)
          {
          }

          if (v101 < v99)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_22F3F5F98(v100);
          }

          if (a4 - 2 >= *(v100 + 2))
          {
            goto LABEL_124;
          }

          v102 = &v100[16 * a4];
          *v102 = v99;
          *(v102 + 1) = v101;
          v119 = v100;
          sub_22F3F5F0C(a4 - 1);
          result = v119;
          a4 = *(v119 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_22F3F5F98(a4);
    goto LABEL_100;
  }

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  v105 = a4;
  v118 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v109 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *v116;
      v27 = v24;
      v28 = *(v114 + 72);
      v5 = *v116 + v28 * v25;
      sub_22F202F68(v5, v20);
      sub_22F202F68(v26 + v28 * v27, v17);
      v29 = *(v9 + 32);
      LODWORD(v113) = sub_22F73F5D0();
      sub_22F202FCC(v17);
      result = sub_22F202FCC(v20);
      v104 = v27;
      v30 = v27 + 2;
      v115 = v28;
      v31 = v26 + v28 * v30;
      v32 = v113;
      while (v21 != v30)
      {
        sub_22F202F68(v31, v20);
        sub_22F202F68(v5, v17);
        v33 = *(v118 + 32);
        v34 = sub_22F73F5D0() & 1;
        sub_22F202FCC(v17);
        result = sub_22F202FCC(v20);
        ++v30;
        v31 += v115;
        v5 += v115;
        if ((v32 & 1) != v34)
        {
          v35 = v32;
          v21 = v30 - 1;
          goto LABEL_11;
        }
      }

      v35 = v32;
LABEL_11:
      v24 = v104;
      a4 = v105;
      v9 = v118;
      if (v35)
      {
        if (v21 < v104)
        {
          goto LABEL_127;
        }

        if (v104 < v21)
        {
          v103 = v6;
          v36 = v115 * (v21 - 1);
          v37 = v21 * v115;
          v113 = v21;
          v38 = v21;
          v39 = v104;
          v40 = v104 * v115;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v116;
              if (!*v116)
              {
                goto LABEL_133;
              }

              v5 = v41 + v40;
              sub_22F202F04(v41 + v40, v108);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_22F202F04(v108, v41 + v36);
            }

            ++v39;
            v36 -= v115;
            v37 -= v115;
            v40 += v115;
          }

          while (v39 < v38);
          v6 = v103;
          v24 = v104;
          a4 = v105;
          v9 = v118;
          v21 = v113;
        }
      }
    }

    v42 = v116[1];
    if (v21 >= v42)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_126;
    }

    if (v21 - v24 >= a4)
    {
LABEL_34:
      v44 = v21;
      if (v21 < v24)
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_128;
    }

    if ((v24 + a4) >= v42)
    {
      v43 = v116[1];
    }

    else
    {
      v43 = v24 + a4;
    }

    if (v43 < v24)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v21 == v43)
    {
      goto LABEL_34;
    }

    v103 = v6;
    v104 = v24;
    a4 = *v116;
    v89 = *(v114 + 72);
    v90 = *v116 + v89 * (v21 - 1);
    v91 = v21;
    v92 = -v89;
    v93 = v24 - v91;
    v113 = v91;
    v107 = v89;
    v5 = a4 + v91 * v89;
    v110 = v43;
LABEL_87:
    v111 = v5;
    v112 = v93;
    v115 = v90;
    v94 = v90;
LABEL_88:
    sub_22F202F68(v5, v20);
    sub_22F202F68(v94, v17);
    v95 = *(v9 + 32);
    v96 = sub_22F73F5D0();
    sub_22F202FCC(v17);
    result = sub_22F202FCC(v20);
    if (v96)
    {
      break;
    }

    v9 = v118;
LABEL_86:
    v90 = v115 + v107;
    v93 = v112 - 1;
    v44 = v110;
    v5 = v111 + v107;
    if (++v113 != v110)
    {
      goto LABEL_87;
    }

    v6 = v103;
    v24 = v104;
    if (v110 < v104)
    {
      goto LABEL_125;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v109;
    }

    else
    {
      result = sub_22F13D970(0, *(v109 + 2) + 1, 1, v109);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v45 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_22F13D970((v45 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v46 = &v23[16 * a4];
    *(v46 + 4) = v24;
    *(v46 + 5) = v44;
    v47 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    v110 = v44;
    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v23[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_112;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v60 = &v23[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_115;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v64 >= v56)
          {
            v82 = &v23[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_122;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v52)
            {
              goto LABEL_114;
            }

            v65 = &v23[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_117;
            }

            v71 = &v23[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_121;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_68;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v23 + 4);
            v50 = *(v23 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_54;
          }

          v75 = &v23[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_68:
          if (v70)
          {
            goto LABEL_116;
          }

          v78 = &v23[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v116)
        {
          goto LABEL_132;
        }

        v86 = v23;
        v87 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v48 + 40];
        sub_22F1FE978(*v116 + *(v114 + 72) * v87, *v116 + *(v114 + 72) * *&v23[16 * v48 + 32], *v116 + *(v114 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_22F3F5F98(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v119 = v86;
        result = sub_22F3F5F0C(v48);
        v23 = v119;
        v5 = *(v119 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = v116[1];
    v22 = v110;
    a4 = v105;
    v9 = v118;
    if (v110 >= v21)
    {
      goto LABEL_97;
    }
  }

  if (a4)
  {
    v97 = v117;
    sub_22F202F04(v5, v117);
    v9 = v118;
    swift_arrayInitWithTakeFrontToBack();
    sub_22F202F04(v97, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_22F1FCE90(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v139 = _s29IntermediateTimeExtendedTokenVMa();
  v133 = *(v139 - 8);
  v9 = *(v133 + 64);
  v10 = MEMORY[0x28223BE20](v139);
  v129 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v119 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v119 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v137 = (&v119 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v136 = (&v119 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v125 = (&v119 - v25);
  result = MEMORY[0x28223BE20](v24);
  v124 = (&v119 - v27);
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v140 = v30;
      v114 = *(v30 + 16);
      if (v114 >= 2)
      {
        while (*a3)
        {
          v115 = v30;
          v30 = *(v30 + 16 * v114);
          v116 = v115;
          v117 = *&v115[16 * v114 + 24];
          sub_22F1FEE00(*a3 + *(v133 + 72) * v30, *a3 + *(v133 + 72) * *&v115[16 * v114 + 16], *a3 + *(v133 + 72) * v117, v5);
          if (v6)
          {
          }

          if (v117 < v30)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_22F3F5F98(v116);
          }

          if (v114 - 2 >= *(v116 + 2))
          {
            goto LABEL_136;
          }

          v118 = &v116[16 * v114];
          *v118 = v30;
          v118[1] = v117;
          v140 = v116;
          result = sub_22F3F5F0C(v114 - 1);
          v30 = v140;
          v114 = *(v140 + 16);
          if (v114 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_22F3F5F98(v30);
    v30 = result;
    goto LABEL_112;
  }

  v120 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v134 = a3;
  v130 = v16;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v131 = v28;
      v33 = *a3;
      v34 = *(v133 + 72);
      v35 = v29 + 1;
      v36 = v124;
      sub_22F202F68(v33 + v34 * v32, v124);
      v135 = v34;
      v37 = v33 + v34 * v31;
      v38 = v125;
      sub_22F202F68(v37, v125);
      v39 = *v36 == *v38 && v36[1] == v38[1];
      v122 = v6;
      if (v39)
      {
        LODWORD(v132) = 0;
      }

      else
      {
        LODWORD(v132) = sub_22F742040();
      }

      v121 = v30;
      sub_22F202FCC(v125);
      result = sub_22F202FCC(v124);
      v123 = v31;
      v40 = v31 + 2;
      v41 = v135 * (v31 + 2);
      v42 = v33 + v41;
      v43 = v35;
      v44 = v135 * v35;
      a3 = v33 + v135 * v35;
      do
      {
        v6 = v40;
        v46 = v43;
        v30 = v44;
        v5 = v41;
        if (v40 >= v131)
        {
          break;
        }

        v47 = v40;
        v48 = v136;
        sub_22F202F68(v42, v136);
        v49 = v137;
        sub_22F202F68(a3, v137);
        v50 = *v48 == *v49 && v48[1] == v49[1];
        v45 = v50 ? 0 : sub_22F742040();
        v6 = v47;
        sub_22F202FCC(v137);
        result = sub_22F202FCC(v136);
        v40 = v47 + 1;
        v42 += v135;
        a3 += v135;
        v43 = v46 + 1;
        v44 = v30 + v135;
        v41 = v5 + v135;
        v16 = v130;
      }

      while (((v132 ^ v45) & 1) == 0);
      if (v132)
      {
        if (v6 < v123)
        {
          goto LABEL_139;
        }

        if (v123 >= v6)
        {
          v32 = v6;
          v30 = v121;
          v6 = v122;
          a3 = v134;
          v31 = v123;
          goto LABEL_36;
        }

        v51 = v123 * v135;
        v52 = v123;
        do
        {
          if (v52 != v46)
          {
            v54 = *v134;
            if (!*v134)
            {
              goto LABEL_145;
            }

            v132 = v54 + v51;
            sub_22F202F04(v54 + v51, v129);
            if (v51 < v30 || v132 >= v54 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_22F202F04(v129, v54 + v30);
          }

          ++v52;
          v30 -= v135;
          v5 -= v135;
          v51 += v135;
        }

        while (v52 < v46--);
      }

      v32 = v6;
      v30 = v121;
      v6 = v122;
      a3 = v134;
      v31 = v123;
    }

LABEL_36:
    v55 = *(a3 + 8);
    v135 = v32;
    if (v32 < v55)
    {
      v82 = __OFSUB__(v32, v31);
      v56 = v32 - v31;
      if (v82)
      {
        goto LABEL_138;
      }

      if (v56 < v120)
      {
        break;
      }
    }

LABEL_59:
    if (v135 < v31)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v68 = *(v30 + 16);
    v67 = *(v30 + 24);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_22F13D970((v67 > 1), v68 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v69;
    v70 = v30 + 16 * v68;
    v71 = v135;
    *(v70 + 32) = v31;
    *(v70 + 40) = v71;
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_147;
    }

    if (v68)
    {
      while (1)
      {
        a3 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v72 = *(v30 + 32);
          v73 = *(v30 + 40);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_79:
          if (v75)
          {
            goto LABEL_126;
          }

          v88 = (v30 + 16 * v69);
          v90 = *v88;
          v89 = v88[1];
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_129;
          }

          v94 = (v30 + 32 + 16 * a3);
          v96 = *v94;
          v95 = v94[1];
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_133;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              a3 = v69 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v98 = (v30 + 16 * v69);
        v100 = *v98;
        v99 = v98[1];
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_93:
        if (v93)
        {
          goto LABEL_128;
        }

        v101 = v30 + 16 * a3;
        v103 = *(v101 + 32);
        v102 = *(v101 + 40);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_131;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_100:
        v109 = a3 - 1;
        if (a3 - 1 >= v69)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v134)
        {
          goto LABEL_144;
        }

        v110 = v30;
        v111 = v30 + 32;
        v30 = *(v30 + 32 + 16 * v109);
        v112 = *(v111 + 16 * a3 + 8);
        sub_22F1FEE00(*v134 + *(v133 + 72) * v30, *v134 + *(v133 + 72) * *(v111 + 16 * a3), *v134 + *(v133 + 72) * v112, v5);
        if (v6)
        {
        }

        if (v112 < v30)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_22F3F5F98(v110);
        }

        if (v109 >= *(v110 + 2))
        {
          goto LABEL_123;
        }

        v113 = &v110[16 * v109];
        *(v113 + 4) = v30;
        *(v113 + 5) = v112;
        v140 = v110;
        result = sub_22F3F5F0C(a3);
        v30 = v140;
        v69 = *(v140 + 16);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = v30 + 32 + 16 * v69;
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_124;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_125;
      }

      v83 = (v30 + 16 * v69);
      v85 = *v83;
      v84 = v83[1];
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_127;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_130;
      }

      if (v87 >= v79)
      {
        v105 = (v30 + 32 + 16 * a3);
        v107 = *v105;
        v106 = v105[1];
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_134;
        }

        if (v74 < v108)
        {
          a3 = v69 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v134;
    v29 = v135;
    v28 = v134[1];
    if (v135 >= v28)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v31, v120))
  {
    goto LABEL_140;
  }

  if (v31 + v120 >= v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = v31 + v120;
  }

  if (v57 < v31)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v135 == v57)
  {
    goto LABEL_59;
  }

  v121 = v30;
  v122 = v6;
  v58 = *a3;
  v59 = *(v133 + 72);
  v60 = *a3 + v59 * (v135 - 1);
  v61 = -v59;
  v123 = v31;
  a3 = v31 - v135;
  v127 = v59;
  v128 = v57;
  v62 = v58 + v135 * v59;
LABEL_48:
  v5 = v62;
  v131 = a3;
  v132 = v60;
  while (1)
  {
    sub_22F202F68(v5, v19);
    sub_22F202F68(v60, v16);
    if (*v19 == *v16 && v19[1] == v16[1])
    {
      sub_22F202FCC(v16);
      sub_22F202FCC(v19);
LABEL_47:
      v60 = v132 + v127;
      a3 = v131 - 1;
      v62 += v127;
      if (++v135 == v128)
      {
        v135 = v128;
        v30 = v121;
        v6 = v122;
        v31 = v123;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v64 = sub_22F742040();
    sub_22F202FCC(v16);
    result = sub_22F202FCC(v19);
    if ((v64 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!v58)
    {
      break;
    }

    v65 = v138;
    sub_22F202F04(v5, v138);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F202F04(v65, v60);
    v60 += v61;
    v5 += v61;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_22F1FD7C8(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_22F740120();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_22F1FF2EC(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F3F5F98(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_22F3F5F0C(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_22F3F5F98(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_22F740110();
      v38 = v37;
      v39 = sub_22F740110();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_22F742040();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_22F740110();
        v53 = v52;
        if (v51 == sub_22F740110() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_22F742040();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_22F13D970((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
          __break(1u);
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_22F1FF2EC(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_22F3F5F0C(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_22F740110();
    v70 = v69;
    if (v5 == sub_22F740110() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_22F742040();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_22F1FE384(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_22F73F690();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578]);
          LOBYTE(v36) = sub_22F740DB0();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578]);
        LOBYTE(v23) = sub_22F740DB0();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_22F3B662C(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_22F1FE978(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = _s29IntermediateTimeExtendedTokenVMa();
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v45 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v41 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v50 = a1;
  v49 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v25 = a4 + v19;
    if (v19 < 1)
    {
      v28 = a4 + v19;
    }

    else
    {
      v26 = -v15;
      v27 = a4 + v19;
      v28 = v25;
      v43 = v26;
      v44 = a4;
      do
      {
        v41[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v47;
          if (v29 <= a1)
          {
            v50 = v29;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v28;
          v47 += v26;
          v33 = v27 + v26;
          sub_22F202F68(v33, v13);
          v34 = v30;
          v35 = v30;
          v36 = v13;
          v37 = v45;
          sub_22F202F68(v35, v45);
          v38 = *(v46 + 32);
          v39 = sub_22F73F5D0();
          v40 = v37;
          v13 = v36;
          sub_22F202FCC(v40);
          sub_22F202FCC(v36);
          if (v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v47 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v44;
          v26 = v43;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v47 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v42;
          v26 = v43;
        }

        else
        {
          v28 = v42;
          v26 = v43;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v48 = a4 + v18;
    if (v18 >= 1 && a2 < v47)
    {
      do
      {
        sub_22F202F68(a2, v13);
        v22 = v45;
        sub_22F202F68(a4, v45);
        v23 = *(v46 + 32);
        v24 = sub_22F73F5D0();
        sub_22F202FCC(v22);
        sub_22F202FCC(v13);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v50 = a1;
      }

      while (a4 < v20 && a2 < v47);
    }
  }

LABEL_59:
  sub_22F3B66B0(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_22F1FEE00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = _s29IntermediateTimeExtendedTokenVMa();
  v8 = *(*(v51 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v51);
  v50 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v49 = (&v45 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v45 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v45 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_72;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v22 = (a2 - a1) / v20;
  v54 = a1;
  v53 = a4;
  if (v22 >= v21 / v20)
  {
    v25 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v25;
    if (v25 >= 1)
    {
      v33 = -v20;
      v34 = a4 + v25;
      do
      {
        v45 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v47 = v35;
        v48 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v54 = v35;
            v32 = v45;
            goto LABEL_69;
          }

          v37 = a3;
          v46 = v32;
          v38 = v33;
          v39 = v34 + v33;
          v40 = v34 + v33;
          v41 = v49;
          sub_22F202F68(v40, v49);
          v42 = v50;
          sub_22F202F68(v36, v50);
          v43 = *v41 == *v42 && v41[1] == v42[1];
          v44 = v43 ? 0 : sub_22F742040();
          a3 = v37 + v38;
          sub_22F202FCC(v50);
          sub_22F202FCC(v49);
          if (v44)
          {
            break;
          }

          v32 = v39;
          if (v37 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v39;
            v36 = v48;
          }

          else
          {
            v36 = v48;
            if (v37 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v32 = v39;
            }
          }

          v34 = v32;
          v33 = v38;
          v35 = v47;
          if (v39 <= a4)
          {
            v54 = v47;
            goto LABEL_69;
          }
        }

        if (v37 < v47 || a3 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v38;
        }

        else
        {
          a2 = v48;
          v33 = v38;
          if (v37 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v34 > a4);
    }

    v54 = a2;
LABEL_69:
    v52 = v32;
  }

  else
  {
    v23 = a2;
    v24 = v22 * v20;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v24;
    v52 = a4 + v24;
    if (v24 >= 1 && v23 < a3)
    {
      v28 = v23;
      while (1)
      {
        v29 = v28;
        sub_22F202F68(v28, v18);
        sub_22F202F68(a4, v15);
        if (*v18 == *v15 && v18[1] == v15[1])
        {
          break;
        }

        v31 = sub_22F742040();
        sub_22F202FCC(v15);
        sub_22F202FCC(v18);
        if ((v31 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (a1 < v29 || a1 >= v29 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v29)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v28 = v29 + v20;
LABEL_39:
        a1 += v20;
        v54 = a1;
        if (a4 >= v26 || v28 >= a3)
        {
          goto LABEL_70;
        }
      }

      sub_22F202FCC(v15);
      sub_22F202FCC(v18);
LABEL_31:
      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v53 = a4 + v20;
      a4 += v20;
      v28 = v29;
      goto LABEL_39;
    }
  }

LABEL_70:
  sub_22F3B66B0(&v54, &v53, &v52);
  return 1;
}

uint64_t sub_22F1FF2EC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_22F740120();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_22F740110();
            v53 = v52;
            if (v51 != sub_22F740110())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_22F742040();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_22F740110();
        v33 = v32;
        if (v31 == sub_22F740110() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_22F742040();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_22F3B66C8(&v75, &v74, &v73);
  return 1;
}

void *sub_22F1FF988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2528, &unk_22F77A320);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_22F740120();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v36 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v33 = &v28 - v16;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_22F73FDA0() - 8);
  v35 = (v12 + 48);
  v30 = v12;
  v19 = (v12 + 32);
  v20 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v34 = *(v18 + 72);
  v21 = MEMORY[0x277D84F90];
  v31 = a2;
  v32 = a3;
  v29 = v19;
  while (1)
  {
    sub_22F1F6928(a2, a3, v10);
    if (v3)
    {
      break;
    }

    if ((*v35)(v10, 1, v11) == 1)
    {
      sub_22F120ADC(v10, &qword_27DAB2528, &unk_22F77A320);
    }

    else
    {
      v22 = *v19;
      v23 = v33;
      (*v19)(v33, v10, v11);
      v22(v36, v23, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_22F13EA3C(0, v21[2] + 1, 1, v21);
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_22F13EA3C(v24 > 1, v25 + 1, 1, v21);
      }

      v21[2] = v25 + 1;
      v26 = v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25;
      v19 = v29;
      v22(v26, v36, v11);
      a2 = v31;
      a3 = v32;
    }

    v20 += v34;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t sub_22F1FFCAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = objc_opt_self();
  v14 = sub_22F73F5B0();
  v15 = [v13 components:8 fromDate:v14];

  if (v15)
  {
    sub_22F73F1B0();

    v16 = sub_22F73F270();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  }

  else
  {
    v16 = sub_22F73F270();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  }

  sub_22F2030D4(v10, v12);
  sub_22F73F270();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v12, 1, v16) == 1)
  {
    sub_22F120ADC(v12, &qword_27DAB1EB8, &unk_22F77A2D0);
LABEL_7:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D00);
    v24 = sub_22F740B70();
    v25 = sub_22F7415E0();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_12;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "monthAndYear: Couldn't extract month from date!";
LABEL_11:
    _os_log_impl(&dword_22F0FC000, v24, v25, v27, v26, 2u);
    MEMORY[0x2319033A0](v26, -1, -1);
LABEL_12:

    return 0;
  }

  v37 = v4;
  v36 = sub_22F73F210();
  v20 = v19;
  v21 = v12;
  v22 = *(v17 + 8);
  v22(v21, v16);
  if (v20)
  {
    goto LABEL_7;
  }

  v29 = sub_22F73F5B0();
  v30 = [v13 components:4 fromDate:v29];

  if (v30)
  {
    v31 = v37;
    sub_22F73F1B0();

    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v37;
  }

  (*(v17 + 56))(v31, v32, 1, v16);
  sub_22F2030D4(v31, v7);
  if (v18(v7, 1, v16) == 1)
  {
    sub_22F120ADC(v7, &qword_27DAB1EB8, &unk_22F77A2D0);
LABEL_19:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D00);
    v24 = sub_22F740B70();
    v25 = sub_22F7415E0();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_12;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "monthAndYear: Couldn't extract year from date!";
    goto LABEL_11;
  }

  sub_22F73F1F0();
  v34 = v33;
  v22(v7, v16);
  if (v34)
  {
    goto LABEL_19;
  }

  return v36;
}

void *sub_22F200178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0BC8, &unk_22F77A300);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = _s29IntermediateTimeExtendedTokenVMa();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v11 + 72);
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a1 + v23;
    v17 = (v11 + 48);
    v18 = MEMORY[0x277D84F90];
    v24 = v10;
    v25 = v6;
    do
    {
      sub_22F1F92EC(v5);
      if ((*v17)(v5, 1, v6) == 1)
      {
        sub_22F120ADC(v5, &qword_27DAB0BC8, &unk_22F77A300);
      }

      else
      {
        sub_22F202F04(v5, v13);
        sub_22F202F04(v13, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_22F13EA64(0, v18[2] + 1, 1, v18);
        }

        v20 = v18[2];
        v19 = v18[3];
        if (v20 >= v19 >> 1)
        {
          v18 = sub_22F13EA64(v19 > 1, v20 + 1, 1, v18);
        }

        v18[2] = v20 + 1;
        v10 = v24;
        sub_22F202F04(v24, v18 + v23 + v20 * v15);
        v6 = v25;
      }

      v16 += v15;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v26 = v18;

  sub_22F1FAE28(&v26);

  return v26;
}

void *sub_22F200404(uint64_t a1)
{
  v44 = _s29IntermediateTimeExtendedTokenVMa();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v44);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v46 = &v40 - v7;
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - v8;
  v9 = 0;
  v48 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  while (v10 != v9)
  {
    v11 = v9 + 1;
    sub_22F1F9B54(&v48, a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9);
    v9 = v11;
  }

  v12 = v48;
  v13 = v48[2];
  if (v13)
  {
    v14 = sub_22F10B454(v48[2], 0);
    v43 = sub_22F11B0C0(&v48, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v13, v12);
    swift_bridgeObjectRetain_n();
    sub_22F0FF590();
    if (v43 == v13)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_8:
  v48 = v14;
  sub_22F1FAF0C(&v48);
  swift_bridgeObjectRelease_n();
  v15 = v48;
  v16 = v48[2];
  if (v16 > 3)
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v17 = sub_22F740B90();
    __swift_project_value_buffer(v17, qword_2810B4D00);
    v18 = sub_22F740B70();
    v19 = sub_22F7415F0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v16;
      _os_log_impl(&dword_22F0FC000, v18, v19, "Too many years (%ld), opting for Over the Years token instead.", v20, 0xCu);
      MEMORY[0x2319033A0](v20, -1, -1);
    }

    v21 = v15[2];
    if (v21)
    {
      v22 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v23 = v45;
      sub_22F202F68(v15 + v22, v45);
      v43 = *(v2 + 72);
      v24 = v46;
      sub_22F202F68(v15 + v22 + v43 * (v21 - 1), v46);

      v25 = sub_22F7404E0();
      v41 = v26;
      v42 = v25;
      v27 = v44;
      v28 = *(v44 + 28);
      v29 = *MEMORY[0x277D3C728];
      v30 = sub_22F740890();
      v31 = v47;
      (*(*(v30 - 8) + 104))(&v47[v28], v29, v30);
      v32 = *(v27 + 32);
      v33 = sub_22F73F690();
      v34 = *(*(v33 - 8) + 16);
      v34(v31 + v32, v23 + v32, v33);
      v34(v31 + *(v27 + 36), v24 + *(v27 + 36), v33);
      v35 = v41;
      *v31 = v42;
      *(v31 + 8) = v35;
      *(v31 + 16) = 0;
      *(v31 + 24) = 1;
      *(v31 + 32) = 0;
      *(v31 + 40) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0720, &unk_22F771730);
      v15 = swift_allocObject();
      *(v15 + 1) = xmmword_22F771340;
      sub_22F202F04(v31, v15 + v22);
      sub_22F202FCC(v24);
      sub_22F202FCC(v23);
    }

    else
    {
      v36 = sub_22F740B70();
      v37 = sub_22F7415E0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_22F0FC000, v36, v37, "Could not get first and last time token!", v38, 2u);
        MEMORY[0x2319033A0](v38, -1, -1);
      }
    }
  }

  return v15;
}

uint64_t sub_22F2008E8(uint64_t a1)
{
  v2 = sub_22F73F990();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0668, &unk_22F77A310);
    v10 = sub_22F741AD0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v35 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v33 = v9;
    v34 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v14 * v11, v2);
      v16 = *(v10 + 40);
      sub_22F20308C(&qword_2810AC6D0, MEMORY[0x277CC99D0]);
      v17 = sub_22F740D40();
      v18 = -1 << *(v10 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v38 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        do
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v19 * v14, v2);
          sub_22F20308C(&unk_2810AC6C0, MEMORY[0x277CC99D0]);
          v25 = sub_22F740DE0();
          v26 = *v15;
          (*v15)(v7, v2);
          if (v25)
          {
            v26(v39, v2);
            v12 = v24;
            v9 = v33;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v38 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v24;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v33;
      }

      v27 = v39;
      *(v38 + 8 * v20) = v22 | v21;
      result = (*v34)(*(v10 + 48) + v19 * v14, v27, v2);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v36 + 1;
      if (v36 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22F200C0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v289 = &v260 - v4;
  v288 = sub_22F73F270();
  v275 = *(v288 - 8);
  v5 = *(v275 + 64);
  MEMORY[0x28223BE20](v288);
  v311 = &v260 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_22F740890();
  v7 = *(v293 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v293);
  v310 = &v260 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_22F740270();
  v274 = *(v287 - 8);
  v10 = *(v274 + 64);
  MEMORY[0x28223BE20](v287);
  v309 = &v260 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_22F740120();
  v290 = *(v286 - 8);
  v12 = *(v290 + 64);
  MEMORY[0x28223BE20](v286);
  v14 = &v260 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2518, &qword_22F77A2E8);
  v15 = *(*(v301 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v301);
  v300 = (&v260 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v299 = (&v260 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v298 = (&v260 - v21);
  MEMORY[0x28223BE20](v20);
  v297 = &v260 - v22;
  v315 = _s29IntermediateTimeExtendedTokenVMa();
  v283 = *(v315 - 1);
  v23 = *(v283 + 64);
  v24 = MEMORY[0x28223BE20](v315);
  v285 = &v260 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v260 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v304 = &v260 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v279 = &v260 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v313 = &v260 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v278 = &v260 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v303 = &v260 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v260 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v260 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v260 - v45;
  v317 = sub_22F73F690();
  v302 = *(v317 - 8);
  v47 = *(v302 + 64);
  v48 = MEMORY[0x28223BE20](v317);
  v50 = &v260 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48);
  *&v306 = &v260 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v314 = &v260 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v308 = &v260 - v56;
  MEMORY[0x28223BE20](v55);
  v316 = &v260 - v57;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2520, &unk_22F77A2F0);
  v58 = *(*(v295 - 8) + 64);
  MEMORY[0x28223BE20](v295);
  v294 = &v260 - v59;
  if ([a1 count] < 1)
  {
    if (qword_2810A9418 == -1)
    {
LABEL_34:
      v126 = sub_22F740B90();
      __swift_project_value_buffer(v126, qword_2810B4D00);
      v127 = sub_22F740B70();
      v128 = sub_22F7415C0();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&dword_22F0FC000, v127, v128, "No moments passed into generateTimeCollectionExtendedTokens, returning", v129, 2u);
        MEMORY[0x2319033A0](v129, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_134:
    swift_once();
    goto LABEL_34;
  }

  v272 = v46;
  v271 = v44;
  v273 = v7;
  v296 = v50;
  v318 = v41;
  v284 = v14;
  v60 = MEMORY[0x277D84F90];
  v327 = MEMORY[0x277D84F90];
  v61 = swift_allocObject();
  *(v61 + 16) = &v327;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_22F203278;
  *(v62 + 24) = v61;
  v277 = v61;
  v325 = sub_22F202EE0;
  v326 = v62;
  aBlock = MEMORY[0x277D85DD0];
  v322 = 1107296256;
  v323 = sub_22F358104;
  v324 = &block_descriptor_30;
  v63 = _Block_copy(&aBlock);

  [a1 enumerateLocalStartDatesUsingBlock_];
  _Block_release(v63);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    goto LABEL_132;
  }

  v320 = v60;
  v64 = swift_allocObject();
  *(v64 + 16) = &v320;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_22F202EE8;
  *(v65 + 24) = v64;
  v276 = v64;
  v325 = sub_22F20328C;
  v326 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v322 = 1107296256;
  v323 = sub_22F358104;
  v324 = &block_descriptor_40_0;
  v66 = _Block_copy(&aBlock);

  [a1 enumerateLocalEndDatesUsingBlock_];
  _Block_release(v66);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v68 = v327;
  v69 = *(v327 + 2);
  v70 = v320;
  if (v69 != *(v320 + 16))
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v130 = sub_22F740B90();
    __swift_project_value_buffer(v130, qword_2810B4D00);
    v131 = sub_22F740B70();
    v132 = sub_22F7415E0();
    if (!os_log_type_enabled(v131, v132))
    {
      goto LABEL_102;
    }

    v133 = swift_slowAlloc();
    *v133 = 0;
    v134 = "Moment nodes in collection had a different number of start and end dates!";
    goto LABEL_101;
  }

  v71 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D3C750];
  v307 = v28;
  if (!v69)
  {
    v270 = 0x7FFFFFFFFFFFFFFFLL;
    v269 = 0x8000000000000000;
    v74 = v283;
    goto LABEL_44;
  }

  v73 = 0;
  v305 = v302 + 16;
  v281 = (v302 + 32);
  v292 = (v302 + 8);
  v268 = *MEMORY[0x277D3C750];
  v267 = (v273 + 104);
  v266 = v69 - 1;
  v269 = 0x8000000000000000;
  v270 = 0x7FFFFFFFFFFFFFFFLL;
  v74 = v283;
  v291 = v68;
  v282 = v70;
  v280 = v69;
LABEL_7:
  v75 = v73;
  v312 = v71;
  while (1)
  {
    if (v75 >= *(v68 + 2))
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v78 = (*(v302 + 80) + 32) & ~*(v302 + 80);
    v79 = *(v302 + 72) * v75;
    v80 = *(v302 + 16);
    v80(v316, &v68[v78 + v79], v317);
    v81 = v70[2];
    if (v75 == v81)
    {
      break;
    }

    if (v75 >= v81)
    {
      goto LABEL_128;
    }

    v82 = v70 + v78;
    v83 = *(v295 + 48);
    v84 = *v281;
    v85 = v294;
    v86 = v317;
    (*v281)(v294, v316, v317);
    v80(&v85[v83], &v82[v79], v86);
    v84(v308, v85, v86);
    v84(v314, &v85[v83], v86);
    v87 = sub_22F1FFCAC();
    if ((v89 & 1) == 0)
    {
      v90 = v87;
      v91 = v88;
      v92 = sub_22F1FFCAC();
      if ((v94 & 1) == 0)
      {
        v100 = v93;
        v265 = v92;
        v319 = v90;
        aBlock = sub_22F742010();
        v322 = v101;
        MEMORY[0x231900B10](32, 0xE100000000000000);
        v319 = v91;
        v102 = sub_22F742010();
        MEMORY[0x231900B10](v102);

        v103 = v322;
        v264 = aBlock;
        v104 = v315;
        v105 = v272;
        v106 = &v272[v315[7]];
        v263 = *v267;
        v263(v106, v268, v293);
        v107 = v317;
        v80((v105 + v104[8]), v308, v317);
        v80((v105 + v104[9]), v314, v107);
        *v105 = v264;
        *(v105 + 8) = v103;
        *(v105 + 16) = v90;
        *(v105 + 24) = 0;
        v264 = v91;
        *(v105 + 32) = v91;
        *(v105 + 40) = 0;
        v71 = v312;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_22F13EA64(0, *(v71 + 16) + 1, 1, v71);
        }

        v74 = v283;
        v68 = v291;
        v109 = *(v71 + 16);
        v108 = *(v71 + 24);
        if (v109 >= v108 >> 1)
        {
          v71 = sub_22F13EA64(v108 > 1, v109 + 1, 1, v71);
        }

        *(v71 + 16) = v109 + 1;
        v110 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v111 = *(v74 + 72);
        sub_22F202F04(v272, v71 + v110 + v111 * v109);
        if (v90 == v265)
        {
          v112 = *v292;
          v113 = v317;
          (*v292)(v314, v317);
          v112(v308, v113);
          v70 = v282;
        }

        else
        {
          v262 = v111;
          v312 = v110;
          v319 = v265;
          aBlock = sub_22F742010();
          v322 = v114;
          MEMORY[0x231900B10](32, 0xE100000000000000);
          v319 = v100;
          v115 = sub_22F742010();
          MEMORY[0x231900B10](v115);

          v116 = v322;
          v261 = aBlock;
          v117 = v315;
          v118 = v271;
          v263(&v271[v315[7]], v268, v293);
          v119 = v317;
          v80((v118 + v117[8]), v308, v317);
          v80((v118 + v117[9]), v314, v119);
          *v118 = v261;
          *(v118 + 8) = v116;
          *(v118 + 16) = v265;
          *(v118 + 24) = 0;
          *(v118 + 32) = v100;
          *(v118 + 40) = 0;
          v121 = *(v71 + 16);
          v120 = *(v71 + 24);
          v265 = v121 + 1;
          if (v121 >= v120 >> 1)
          {
            v71 = sub_22F13EA64(v120 > 1, v121 + 1, 1, v71);
          }

          v70 = v282;
          v122 = *v292;
          v123 = v317;
          (*v292)(v314, v317);
          v122(v308, v123);
          *(v71 + 16) = v265;
          sub_22F202F04(v271, v312 + v71 + v121 * v262);
          v74 = v283;
        }

        v73 = v75 + 1;
        v124 = v270;
        if (v264 < v270)
        {
          v124 = v264;
        }

        v270 = v124;
        v125 = v269;
        if (v100 > v269)
        {
          v125 = v100;
        }

        v269 = v125;
        v72 = MEMORY[0x277D3C750];
        if (v266 == v75)
        {
          goto LABEL_44;
        }

        goto LABEL_7;
      }
    }

    v71 = v312;
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v95 = sub_22F740B90();
    __swift_project_value_buffer(v95, qword_2810B4D00);
    v96 = sub_22F740B70();
    v97 = sub_22F7415E0();
    v98 = os_log_type_enabled(v96, v97);
    v68 = v291;
    if (v98)
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_22F0FC000, v96, v97, "Couldn't extract month and/or year from date!", v99, 2u);
      MEMORY[0x2319033A0](v99, -1, -1);
    }

    ++v75;

    v76 = *v292;
    v77 = v317;
    (*v292)(v314, v317);
    v76(v308, v77);
    v70 = v282;
    if (v280 == v75)
    {
      goto LABEL_43;
    }
  }

  (*v292)(v316, v317);
LABEL_43:
  v72 = MEMORY[0x277D3C750];
LABEL_44:

  v308 = *(v71 + 16);
  if (!v308)
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v233 = sub_22F740B90();
    __swift_project_value_buffer(v233, qword_2810B4D00);
    v131 = sub_22F740B70();
    v132 = sub_22F7415E0();
    if (!os_log_type_enabled(v131, v132))
    {
      goto LABEL_102;
    }

    v133 = swift_slowAlloc();
    *v133 = 0;
    v134 = "No intermediate time tokens created from moment node collection, returning!";
LABEL_101:
    _os_log_impl(&dword_22F0FC000, v131, v132, v134, v133, 2u);
    MEMORY[0x2319033A0](v133, -1, -1);
LABEL_102:

    return MEMORY[0x277D84F90];
  }

  v135 = 0;
  v294 = (v302 + 16);
  LODWORD(v292) = *v72;
  v291 = (v273 + 104);
  v282 = (v302 + 8);
  v136 = MEMORY[0x277D84F98];
  v312 = v71;
  do
  {
    if (v135 >= *(v71 + 16))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v314 = ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v137 = *(v74 + 72);
    v138 = v318;
    sub_22F202F68(&v314[v71 + v137 * v135], v318);
    v139 = *v138;
    v140 = v138[1];
    v141 = *(v136 + 16);

    if (v141)
    {
      v142 = sub_22F1229E8(v139, v140);
      if (v143)
      {
        v144 = *(v136 + 56);
        v316 = v137;
        v145 = v278;
        sub_22F202F68(v144 + v142 * v137, v278);
        v146 = v303;
        sub_22F202F04(v145, v303);
        v147 = v315;
        v148 = v315[8];
        v302 = v140;
        v149 = v146 + v148;
        v150 = v318 + v148;
        v295 = sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578]);
        v305 = v139;
        v151 = v317;
        v152 = sub_22F740DB0();
        v153 = *v294;
        if (v152)
        {
          v154 = v150;
        }

        else
        {
          v154 = v149;
        }

        v153(v306, v154, v151);
        v155 = v147[9];
        v156 = v146 + v155;
        v157 = v318;
        v158 = v318 + v155;
        if (sub_22F740DC0())
        {
          v159 = v158;
        }

        else
        {
          v159 = v156;
        }

        v160 = v296;
        v153(v296, v159, v151);
        v161 = v279;
        (*v291)(&v279[v147[7]], v292, v293);
        v153(v161 + v147[8], v306, v151);
        v162 = v151;
        v163 = v305;
        v153(v161 + v147[9], v160, v162);
        v164 = *(v157 + 16);
        v165 = *(v157 + 24);
        v166 = *(v157 + 32);
        v167 = *(v157 + 40);
        v168 = v302;
        *v161 = v163;
        *(v161 + 8) = v168;
        *(v161 + 16) = v164;
        *(v161 + 24) = v165;
        *(v161 + 32) = v166;
        *(v161 + 40) = v167;
        sub_22F202F04(v161, v304);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v136;
        v170 = v168;
        v171 = sub_22F1229E8(v163, v168);
        v173 = *(v136 + 16);
        v174 = (v172 & 1) == 0;
        v175 = __OFADD__(v173, v174);
        v176 = v173 + v174;
        if (v175)
        {
          goto LABEL_130;
        }

        v177 = v172;
        if (*(v136 + 24) >= v176)
        {
          v71 = v312;
          v74 = v283;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v196 = v171;
            sub_22F1353B8();
            v171 = v196;
            v136 = aBlock;
            if (v177)
            {
              goto LABEL_73;
            }

            goto LABEL_75;
          }
        }

        else
        {
          sub_22F1275D0(v176, isUniquelyReferenced_nonNull_native);
          v171 = sub_22F1229E8(v163, v168);
          v71 = v312;
          v74 = v283;
          if ((v177 & 1) != (v178 & 1))
          {
            goto LABEL_135;
          }
        }

        v136 = aBlock;
        if (v177)
        {
LABEL_73:
          sub_22F203028(v304, *(v136 + 56) + v171 * v316);

LABEL_77:
          v200 = *v282;
          v201 = v317;
          (*v282)(v296, v317);
          v200(v306, v201);
          sub_22F202FCC(v303);
          v191 = v316;
          goto LABEL_48;
        }

LABEL_75:
        *(v136 + 8 * (v171 >> 6) + 64) |= 1 << v171;
        v197 = (*(v136 + 48) + 16 * v171);
        *v197 = v163;
        v197[1] = v170;
        sub_22F202F04(v304, *(v136 + 56) + v171 * v316);
        v198 = *(v136 + 16);
        v175 = __OFADD__(v198, 1);
        v199 = v198 + 1;
        if (v175)
        {
          goto LABEL_131;
        }

        *(v136 + 16) = v199;
        goto LABEL_77;
      }
    }

    v179 = v71;
    sub_22F202F68(v318, v313);
    v180 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v136;
    v181 = v139;
    v182 = v139;
    v183 = v140;
    v184 = sub_22F1229E8(v182, v140);
    v186 = *(v136 + 16);
    v187 = (v185 & 1) == 0;
    v175 = __OFADD__(v186, v187);
    v188 = v186 + v187;
    if (v175)
    {
      goto LABEL_120;
    }

    v189 = v185;
    if (*(v136 + 24) >= v188)
    {
      if ((v180 & 1) == 0)
      {
        v195 = v184;
        sub_22F1353B8();
        v184 = v195;
      }
    }

    else
    {
      sub_22F1275D0(v188, v180);
      v184 = sub_22F1229E8(v181, v183);
      if ((v189 & 1) != (v190 & 1))
      {
LABEL_135:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }
    }

    v191 = v137;
    v136 = aBlock;
    if (v189)
    {
      sub_22F203028(v313, *(aBlock + 56) + v184 * v137);
    }

    else
    {
      *(aBlock + 8 * (v184 >> 6) + 64) |= 1 << v184;
      v192 = (*(v136 + 48) + 16 * v184);
      *v192 = v181;
      v192[1] = v183;
      sub_22F202F04(v313, *(v136 + 56) + v184 * v137);
      v193 = *(v136 + 16);
      v175 = __OFADD__(v193, 1);
      v194 = v193 + 1;
      if (v175)
      {
        goto LABEL_129;
      }

      *(v136 + 16) = v194;
    }

    v71 = v179;
LABEL_48:
    ++v135;
    sub_22F202FCC(v318);
  }

  while (v308 != v135);
  v202 = *(v136 + 16);
  if (v202)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_22F1467B8(0, v202, 0);
    v203 = aBlock;
    v204 = v136 + 64;
    v205 = -1 << *(v136 + 32);
    v206 = sub_22F741980();
    v207 = 0;
    v318 = *(v136 + 36);
    v304 = v136 + 72;
    v316 = v191;
    v305 = v202;
    *&v306 = v136 + 64;
    while ((v206 & 0x8000000000000000) == 0 && v206 < 1 << *(v136 + 32))
    {
      v210 = v206 >> 6;
      if ((*(v204 + 8 * (v206 >> 6)) & (1 << v206)) == 0)
      {
        goto LABEL_122;
      }

      if (v318 != *(v136 + 36))
      {
        goto LABEL_123;
      }

      v313 = 1 << v206;
      v308 = v207;
      v211 = v191;
      v317 = v203;
      v212 = v301;
      v213 = *(v301 + 48);
      v214 = (*(v136 + 48) + 16 * v206);
      v216 = *v214;
      v215 = v214[1];
      v217 = v297;
      sub_22F202F68(*(v136 + 56) + v211 * v206, &v297[v213]);
      v218 = v298;
      *v298 = v216;
      *(v218 + 8) = v215;
      sub_22F202F04(&v217[v213], v218 + *(v212 + 48));
      v219 = v299;
      sub_22F13BA9C(v218, v299, &qword_27DAB2518, &qword_22F77A2E8);
      v220 = v219[1];
      v221 = *(v212 + 48);
      v222 = v300;
      *v300 = *v219;
      v222[1] = v220;
      sub_22F202F04(v219 + v221, v222 + v221);
      sub_22F202F68(v222 + v221, v307);

      v223 = v222;
      v203 = v317;
      sub_22F120ADC(v223, &qword_27DAB2518, &qword_22F77A2E8);
      sub_22F120ADC(v218, &qword_27DAB2518, &qword_22F77A2E8);
      aBlock = v203;
      v225 = *(v203 + 16);
      v224 = *(v203 + 24);
      if (v225 >= v224 >> 1)
      {
        sub_22F1467B8(v224 > 1, v225 + 1, 1);
        v203 = aBlock;
      }

      *(v203 + 16) = v225 + 1;
      v191 = v316;
      sub_22F202F04(v307, &v314[v203 + v225 * v316]);
      v208 = 1 << *(v136 + 32);
      if (v206 >= v208)
      {
        goto LABEL_124;
      }

      v204 = v306;
      v226 = *(v306 + 8 * v210);
      if ((v226 & v313) == 0)
      {
        goto LABEL_125;
      }

      if (v318 != *(v136 + 36))
      {
        goto LABEL_126;
      }

      v227 = v226 & (-2 << (v206 & 0x3F));
      if (v227)
      {
        v208 = __clz(__rbit64(v227)) | v206 & 0x7FFFFFFFFFFFFFC0;
        v209 = v305;
      }

      else
      {
        v228 = v210 << 6;
        v229 = v210 + 1;
        v230 = (v304 + 8 * v210);
        v209 = v305;
        while (v229 < (v208 + 63) >> 6)
        {
          v232 = *v230++;
          v231 = v232;
          v228 += 64;
          ++v229;
          if (v232)
          {
            sub_22F107D18(v206, v318, 0);
            v208 = __clz(__rbit64(v231)) + v228;
            goto LABEL_81;
          }
        }

        sub_22F107D18(v206, v318, 0);
      }

LABEL_81:
      v207 = v308 + 1;
      v206 = v208;
      if (v308 + 1 == v209)
      {

        goto LABEL_107;
      }
    }

    goto LABEL_121;
  }

  v203 = MEMORY[0x277D84F90];
LABEL_107:
  if (v270 == v269 && *(v203 + 16) <= 5uLL)
  {
    v236 = sub_22F200178(v203);
  }

  else
  {
    v236 = sub_22F200404(v203);
  }

  v237 = v236;

  v238 = *(v237 + 2);
  if (v238)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_22F146774(0, v238, 0);
    v234 = aBlock;
    v279 = v237;
    v239 = &v314[v237];
    LODWORD(v283) = *MEMORY[0x277D3C2B0];
    v282 = (v274 + 104);
    LODWORD(v318) = *MEMORY[0x277CC9988];
    LODWORD(v317) = *MEMORY[0x277CC9998];
    LODWORD(v314) = *MEMORY[0x277CC9968];
    LODWORD(v313) = *MEMORY[0x277CC9980];
    v281 = (v275 + 56);
    v280 = v290 + 32;
    LODWORD(v308) = *MEMORY[0x277CC99A0];
    LODWORD(v307) = *MEMORY[0x277CC99A8];
    v306 = xmmword_22F777170;
    v316 = v191;
    do
    {
      v304 = v238;
      v305 = v234;
      v303 = v239;
      v240 = v285;
      sub_22F202F68(v239, v285);
      v241 = *(v240 + 8);
      v302 = *v240;
      v301 = v241;
      (*v282)(v309, v283, v287);
      (*v291)(v310, v292, v293);
      v300 = v315[8];
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
      v242 = sub_22F73F990();
      v243 = *(v242 - 8);
      v244 = *(v243 + 72);
      v245 = *(v243 + 80);
      v297 = (((v245 + 32) & ~v245) + 6 * v244);
      v299 = ((v245 + 32) & ~v245);
      v246 = swift_allocObject();
      *(v246 + 16) = v306;
      v247 = v246 + ((v245 + 32) & ~v245);
      v248 = *(v243 + 104);
      v248(v247, v318, v242);
      v248(v247 + v244, v317, v242);
      v294 = (2 * v244);
      v248(v247 + 2 * v244, v314, v242);
      v296 = 3 * v244;
      v248(v247 + 3 * v244, v313, v242);
      v248(v247 + 4 * v244, v308, v242);
      v295 = 5 * v244;
      v248(v247 + 5 * v244, v307, v242);

      sub_22F2008E8(v246);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22F7405A0();

      v249 = v315[9];
      v250 = swift_allocObject();
      *(v250 + 16) = v306;
      v251 = v299 + v250;
      v248(v299 + v250, v318, v242);
      v248(&v251[v244], v317, v242);
      v248(&v294[v251], v314, v242);
      v248(&v251[v296], v313, v242);
      v248(&v251[4 * v244], v308, v242);
      v248(&v251[v295], v307, v242);
      v234 = v305;
      sub_22F2008E8(v250);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v252 = v289;
      sub_22F7405A0();

      (*v281)(v252, 0, 1, v288);
      v253 = *(v240 + 16);
      v254 = *(v240 + 24);
      v259 = *(v240 + 40);
      v258 = *(v240 + 32);
      v255 = v284;
      sub_22F740100();
      sub_22F202FCC(v240);
      aBlock = v234;
      v257 = *(v234 + 16);
      v256 = *(v234 + 24);
      if (v257 >= v256 >> 1)
      {
        sub_22F146774(v256 > 1, v257 + 1, 1);
        v234 = aBlock;
      }

      *(v234 + 16) = v257 + 1;
      (*(v290 + 32))(v234 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v257, v255, v286);
      v239 = &v316[v303];
      v238 = v304 - 1;
    }

    while (v304 != 1);
  }

  else
  {

    v234 = MEMORY[0x277D84F90];
  }

  return v234;
}

uint64_t _s29IntermediateTimeExtendedTokenVMa()
{
  result = qword_27DAB2530;
  if (!qword_27DAB2530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F202F04(uint64_t a1, uint64_t a2)
{
  v4 = _s29IntermediateTimeExtendedTokenVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F202F68(uint64_t a1, uint64_t a2)
{
  v4 = _s29IntermediateTimeExtendedTokenVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F202FCC(uint64_t a1)
{
  v2 = _s29IntermediateTimeExtendedTokenVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F203028(uint64_t a1, uint64_t a2)
{
  v4 = _s29IntermediateTimeExtendedTokenVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F20308C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F2030D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22F20316C()
{
  sub_22F203218();
  if (v0 <= 0x3F)
  {
    sub_22F740890();
    if (v1 <= 0x3F)
    {
      sub_22F73F690();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22F203218()
{
  if (!qword_27DAB2540)
  {
    v0 = sub_22F741860();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAB2540);
    }
  }
}

uint64_t sub_22F203290(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v112 = a4;
  v124 = a1;
  v111 = sub_22F73F7A0();
  v7 = *(v111 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B8, &qword_22F779E68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v104 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  isUniquelyReferenced_nonNull_native = &v104 - v16;
  v18 = sub_22F73F7C0();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Song();
  v123 = *(v119 - 8);
  v23 = *(v123 + 64);
  MEMORY[0x28223BE20](v119);
  v125 = (&v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v120 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v121 = &v104 - v28;
  MEMORY[0x28223BE20](v29);
  v122 = &v104 - v30;
  MEMORY[0x28223BE20](v31);
  v118 = &v104 - v32;
  if (qword_2810A9B78 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v33 = qword_2810B4E60;
    *&v34 = CACurrentMediaTime();
    sub_22F1B560C("Locale Music Ranker", 19, 2u, v34, 0, v33, v126);
    v35 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes);
    if (v35)
    {
      a2 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode);
      if (a2)
      {
        break;
      }
    }

    v4 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_configuration + 336);
    if (qword_2810A9460 != -1)
    {
LABEL_88:
      swift_once();
    }

    v52 = sub_22F740B90();
    __swift_project_value_buffer(v52, qword_2810B4D90);
    v53 = sub_22F740B70();
    a2 = sub_22F7415C0();
    if (os_log_type_enabled(v53, a2))
    {
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      *isUniquelyReferenced_nonNull_native = 134217984;
      *(isUniquelyReferenced_nonNull_native + 4) = v4;
      _os_log_impl(&dword_22F0FC000, v53, a2, "[MemoriesMusic] LocaleMusicRanker producing default scores of %f because the graph is not available.", isUniquelyReferenced_nonNull_native, 0xCu);
      MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
    }

    v18 = v124 + 56;
    v54 = 1 << *(v124 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v22 = v55 & *(v124 + 56);
    v7 = (v54 + 63) >> 6;

    v56 = 0;
    v19 = MEMORY[0x277D84F98];
    if (v22)
    {
      while (1)
      {
        a3 = v56;
LABEL_33:
        v13 = *(v123 + 72);
        v57 = v120;
        sub_22F15CAA0(*(v124 + 48) + v13 * (__clz(__rbit64(v22)) | (a3 << 6)), v120);
        v58 = v57;
        v59 = v125;
        sub_22F15CB04(v58, v125);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v19;
        a2 = v19;
        v60 = sub_22F122A14(v59);
        v62 = v19[2];
        v63 = (v61 & 1) == 0;
        v50 = __OFADD__(v62, v63);
        v64 = v62 + v63;
        if (v50)
        {
          break;
        }

        v65 = v61;
        if (v19[3] >= v64)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a2 = &v127;
            isUniquelyReferenced_nonNull_native = v60;
            sub_22F134678();
            v60 = isUniquelyReferenced_nonNull_native;
          }
        }

        else
        {
          sub_22F125F5C(v64, isUniquelyReferenced_nonNull_native);
          a2 = v127;
          v60 = sub_22F122A14(v125);
          if ((v65 & 1) != (v66 & 1))
          {
            goto LABEL_89;
          }
        }

        v22 &= v22 - 1;
        v19 = v127;
        if (v65)
        {
          *(v127[7] + 4 * v60) = v4;
          sub_22F15CBD8(v125);
          v56 = a3;
          if (!v22)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v127[(v60 >> 6) + 8] |= 1 << v60;
          v67 = v60;
          a2 = v125;
          sub_22F15CAA0(v125, v19[6] + v60 * v13);
          *(v19[7] + 4 * v67) = v4;
          sub_22F15CBD8(a2);
          v68 = v19[2];
          v50 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v50)
          {
            goto LABEL_84;
          }

          v19[2] = v69;
          v56 = a3;
          if (!v22)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
LABEL_30:
      while (1)
      {
        a3 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (a3 >= v7)
        {
          goto LABEL_75;
        }

        v22 = *(v18 + 8 * a3);
        ++v56;
        if (v22)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v104 = v19;
  v114 = a3;
  v115 = v7;
  v109 = v22;
  v120 = v18;
  v108 = isUniquelyReferenced_nonNull_native;
  v107 = v13;
  v36 = (v35 + 7);
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v7 = v38 & v35[7];
  v19 = ((v37 + 63) >> 6);

  v39 = 0;
  v18 = v121;
  v125 = (v35 + 7);
  v116 = v35;
  while (v7)
  {
    v22 = v39;
LABEL_14:
    v40 = (v35[6] + ((v22 << 10) | (16 * __clz(__rbit64(v7)))));
    a3 = *v40;
    v13 = v40[1];

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v127 = a2;
    isUniquelyReferenced_nonNull_native = sub_22F1229E8(a3, v13);
    v42 = a2[2];
    v43 = (v41 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_82;
    }

    v45 = v41;
    if (a2[3] >= v44)
    {
      if ((v18 & 1) == 0)
      {
        sub_22F1350D0();
      }
    }

    else
    {
      sub_22F127068(v44, v18);
      v46 = sub_22F1229E8(a3, v13);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_90;
      }

      isUniquelyReferenced_nonNull_native = v46;
    }

    v18 = v121;
    v7 &= v7 - 1;
    if (v45)
    {

      a2 = v127;
      *(v127[7] + 4 * isUniquelyReferenced_nonNull_native) = 0;
    }

    else
    {
      a2 = v127;
      v127[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
      v48 = (a2[6] + 16 * isUniquelyReferenced_nonNull_native);
      *v48 = a3;
      v48[1] = v13;
      *(a2[7] + 4 * isUniquelyReferenced_nonNull_native) = 0;
      v49 = a2[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      a2[2] = v51;
    }

    v39 = v22;
    v35 = v116;
    v36 = v125;
  }

  while (1)
  {
    v22 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_79;
    }

    if (v22 >= v19)
    {
      break;
    }

    v7 = v36[v22];
    ++v39;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  v4 = *(v114 + OBJC_IVAR___PGMusicCuratorContext_configuration + 336);
  v70 = v124 + 56;
  v71 = 1 << *(v124 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v13 = v72 & *(v124 + 56);
  v73 = (v71 + 63) >> 6;
  v116 = (v104 + 6);
  v106 = (v104 + 4);
  v105 = (v115 + 8);
  ++v104;

  v74 = 0;
  v19 = MEMORY[0x277D84F98];
  v7 = v108;
  v114 = v73;
  v115 = v70;
  v117 = a2;
  while (v13)
  {
    v22 = v74;
LABEL_55:
    v75 = *(v124 + 48);
    v125 = *(v123 + 72);
    v76 = v118;
    sub_22F15CAA0(v75 + v125 * (__clz(__rbit64(v13)) | (v22 << 6)), v118);
    v77 = v76;
    v78 = v122;
    sub_22F15CB04(v77, v122);
    sub_22F15CAA0(v78, v18);
    sub_22F203FB4(v78 + *(v119 + 60), v7);
    a3 = v120;
    if ((*v116)(v7, 1, v120) == 1)
    {
      sub_22F120ADC(v7, &qword_27DAB0C90, &unk_22F785B70);
    }

    else
    {
      v79 = v109;
      (*v106)(v109, v7, a3);
      v80 = v110;
      sub_22F73F7B0();
      v81 = v107;
      sub_22F73F790();
      (*v105)(v80, v111);
      v82 = sub_22F73F710();
      v83 = *(v82 - 8);
      if ((*(v83 + 48))(v81, 1, v82) == 1)
      {
        (*v104)(v79, a3);
        sub_22F120ADC(v81, &qword_27DAB24B8, &qword_22F779E68);
        v84 = v4;
        v7 = v108;
        v18 = v121;
        goto LABEL_65;
      }

      v85 = sub_22F73F700();
      a3 = v86;
      (*(v83 + 8))(v81, v82);
      v87 = v117;
      if (v117[2])
      {
        v88 = sub_22F1229E8(v85, a3);
        v90 = v89;

        v91 = *v104;
        v7 = v108;
        v18 = v121;
        if (v90)
        {
          v84 = *(v87[7] + 4 * v88);
          v91(v109, v120);
          goto LABEL_65;
        }
      }

      else
      {

        v91 = *v104;
        v7 = v108;
        v18 = v121;
      }

      v91(v109, v120);
    }

    v84 = v4;
LABEL_65:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v19;
    a2 = v19;
    v92 = sub_22F122A14(v18);
    v94 = v19[2];
    v95 = (v93 & 1) == 0;
    v50 = __OFADD__(v94, v95);
    v96 = v94 + v95;
    if (v50)
    {
      goto LABEL_83;
    }

    v97 = v93;
    if (v19[3] >= v96)
    {
      a2 = v117;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a3 = v117;
        isUniquelyReferenced_nonNull_native = v92;
        sub_22F134678();
        a2 = a3;
        v92 = isUniquelyReferenced_nonNull_native;
      }
    }

    else
    {
      sub_22F125F5C(v96, isUniquelyReferenced_nonNull_native);
      v92 = sub_22F122A14(v18);
      if ((v97 & 1) != (v98 & 1))
      {
LABEL_89:
        sub_22F7420C0();
        __break(1u);
LABEL_90:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      a2 = v117;
    }

    v13 &= v13 - 1;
    v19 = v127;
    if (v97)
    {
      *(v127[7] + 4 * v92) = v84;
      sub_22F15CBD8(v18);
      sub_22F15CBD8(v122);
    }

    else
    {
      v127[(v92 >> 6) + 8] |= 1 << v92;
      v99 = v92;
      sub_22F15CAA0(v18, v19[6] + v92 * v125);
      *(v19[7] + 4 * v99) = v84;
      sub_22F15CBD8(v18);
      sub_22F15CBD8(v122);
      v100 = v19[2];
      v50 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v50)
      {
        goto LABEL_87;
      }

      v19[2] = v101;
    }

    v74 = v22;
    v73 = v114;
    v70 = v115;
  }

  while (1)
  {
    v22 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_80;
    }

    if (v22 >= v73)
    {
      break;
    }

    v13 = *(v70 + 8 * v22);
    ++v74;
    if (v13)
    {
      goto LABEL_55;
    }
  }

LABEL_75:

  sub_22F1B2BBC(0);
  v102 = v113;
  sub_22F7416A0();

  if (v102)
  {
  }

  return v19;
}

uint64_t sub_22F203FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F204024(uint64_t a1)
{
  v3 = type metadata accessor for Song();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v30 = v1;
  v38 = MEMORY[0x277D84F90];
  sub_22F146454(0, v6, 0);
  v7 = v38;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = sub_22F741980();
  v11 = result;
  v12 = 0;
  v31 = a1 + 64;
  v32 = v6;
  v33 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v36 = *(a1 + 36);
    v16 = v34;
    sub_22F15CAA0(*(a1 + 48) + *(v35 + 72) * v11, v34);
    v37 = Song.compactDescription.getter();
    v18 = v17;
    result = sub_22F15CBD8(v16);
    v38 = v7;
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    v21 = v7;
    if (v20 >= v19 >> 1)
    {
      result = sub_22F146454((v19 > 1), v20 + 1, 1);
      v21 = v38;
    }

    *(v21 + 16) = v20 + 1;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = v37;
    *(v22 + 40) = v18;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v33;
    v23 = *(v33 + 8 * v15);
    if ((v23 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    v7 = v21;
    if (v36 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v11 & 0x3F));
    if (v24)
    {
      v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v14 = v32;
    }

    else
    {
      v25 = v15 << 6;
      v26 = v15 + 1;
      v14 = v32;
      v27 = (v31 + 8 * v15);
      while (v26 < (v13 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_22F107D18(v11, v36, 0);
          v13 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v11, v36, 0);
    }

LABEL_4:
    ++v12;
    v11 = v13;
    if (v12 == v14)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F2042E4(uint64_t a1)
{
  v3 = type metadata accessor for Song();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v34 = MEMORY[0x277D84F90];
  sub_22F146454(0, v6, 0);
  v7 = v34;
  v8 = -1 << *(a1 + 32);
  v33 = a1 + 56;
  result = sub_22F741980();
  v10 = result;
  v11 = 0;
  v27 = a1 + 64;
  v28 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v33 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v31 = *(a1 + 36);
    v14 = v29;
    sub_22F15CAA0(*(a1 + 48) + *(v30 + 72) * v10, v29);
    v15 = v14[1];
    v32 = *v14;

    result = sub_22F15CBD8(v14);
    v34 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_22F146454((v16 > 1), v17 + 1, 1);
      v7 = v34;
    }

    *(v7 + 16) = v17 + 1;
    v18 = v7 + 16 * v17;
    *(v18 + 32) = v32;
    *(v18 + 40) = v15;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v19 = *(v33 + 8 * v13);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v13 << 6;
      v22 = v13 + 1;
      v23 = (v27 + 8 * v13);
      while (v22 < (v12 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_22F107D18(v10, v31, 0);
          v12 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v10, v31, 0);
    }

LABEL_4:
    ++v11;
    v10 = v12;
    if (v11 == v28)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_22F2045A0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2548, &qword_22F77A418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F779720;
  *(inited + 32) = 0x657469726F766166;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = v2;
  *(inited + 56) = 0x6C6C696863;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v1;
  *(inited + 80) = 0x7055746567;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v4;
  strcpy((inited + 104), "humanCurated");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = v3;
  strcpy((inited + 128), "MusicForTime");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v6;
  *(inited + 152) = 0x6D617A616873;
  *(inited + 160) = 0xE600000000000000;
  *(inited + 168) = v5;
  strcpy((inited + 176), "musicForArtist");
  *(inited + 191) = -18;
  *(inited + 192) = v7;

  v9 = sub_22F14EE44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2550, &unk_22F77A420);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_22F204754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v10 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  if (*(a1 + 16) <= *(*v2 + 16) >> 3)
  {
    v15 = *v2;

    sub_22F3E7DB0(a1);
    v13 = v15;
  }

  else
  {
    v12 = *v2;

    v13 = sub_22F1E7F80(a1, v5);
  }

  if (*(a1 + 16) <= *(v6 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v6 = sub_22F1E7F80(a1, v6);
  }

  if (*(a1 + 16) <= *(v8 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v8 = sub_22F1E7F80(a1, v8);
  }

  if (*(a1 + 16) <= *(v7 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v7 = sub_22F1E7F80(a1, v7);
  }

  if (*(a1 + 16) <= *(v10 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v10 = sub_22F1E7F80(a1, v10);
  }

  if (*(a1 + 16) <= *(v9 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v9 = sub_22F1E7F80(a1, v9);
  }

  if (*(a1 + 16) <= *(v11 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
    result = v11;
  }

  else
  {
    result = sub_22F1E7F80(a1, v11);
  }

  *a2 = v13;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v10;
  a2[5] = v9;
  a2[6] = result;
  return result;
}

uint64_t MusicCurator.MusicElection.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v26 = v0[3];
  v27 = v0[4];
  v28 = v0[5];
  v29 = v0[6];
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000002DLL, 0x800000022F791F00);
  sub_22F204024(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v4 = sub_22F740DA0();
  v6 = v5;

  MEMORY[0x231900B10](v4, v6);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F791F30);
  sub_22F204024(v2);
  v7 = sub_22F740DA0();
  v9 = v8;

  MEMORY[0x231900B10](v7, v9);

  MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F791F50);
  sub_22F204024(v3);
  v10 = sub_22F740DA0();
  v12 = v11;

  MEMORY[0x231900B10](v10, v12);

  MEMORY[0x231900B10](0xD000000000000016, 0x800000022F791F70);
  sub_22F204024(v26);
  v13 = sub_22F740DA0();
  v15 = v14;

  MEMORY[0x231900B10](v13, v15);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F791F90);
  sub_22F204024(v27);
  v16 = sub_22F740DA0();
  v18 = v17;

  MEMORY[0x231900B10](v16, v18);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F791FB0);
  sub_22F204024(v28);
  v19 = sub_22F740DA0();
  v21 = v20;

  MEMORY[0x231900B10](v19, v21);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F791FD0);
  sub_22F204024(v29);
  v22 = sub_22F740DA0();
  v24 = v23;

  MEMORY[0x231900B10](v22, v24);

  MEMORY[0x231900B10](10, 0xE100000000000000);
  return 0;
}

uint64_t MusicCurator.MusicElection.jsonDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v27 = v0[4];
  v28 = v0[5];
  v29 = v0[6];
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F791FF0);
  sub_22F2042E4(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v5 = sub_22F740DA0();
  v7 = v6;

  MEMORY[0x231900B10](v5, v7);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F792010);
  sub_22F2042E4(v2);
  v8 = sub_22F740DA0();
  v10 = v9;

  MEMORY[0x231900B10](v8, v10);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F792030);
  sub_22F2042E4(v4);
  v11 = sub_22F740DA0();
  v13 = v12;

  MEMORY[0x231900B10](v11, v13);

  MEMORY[0x231900B10](0xD000000000000016, 0x800000022F792050);
  sub_22F2042E4(v3);
  v14 = sub_22F740DA0();
  v16 = v15;

  MEMORY[0x231900B10](v14, v16);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F792070);
  sub_22F2042E4(v27);
  v17 = sub_22F740DA0();
  v19 = v18;

  MEMORY[0x231900B10](v17, v19);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F792090);
  sub_22F2042E4(v28);
  v20 = sub_22F740DA0();
  v22 = v21;

  MEMORY[0x231900B10](v20, v22);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F7920B0);
  sub_22F2042E4(v29);
  v23 = sub_22F740DA0();
  v25 = v24;

  MEMORY[0x231900B10](v23, v25);

  MEMORY[0x231900B10](8194653, 0xE300000000000000);
  return 0;
}

uint64_t static MusicCurator.electMusic(for:context:musicForYouFavoritesElector:musicForYouChillElector:musicForYouGetUpElector:musicForTopicElector:musicForTimeElector:musicForMomentElector:musicForPerformerElector:progressReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43 = a1;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v14 = qword_2810B4E90;
  *&v15 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - Election", 25, 2u, v15, 0, v14, v42);
  sub_22F7416F0();
  v16 = sub_22F7416D0();
  v18 = v17;
  v20 = v19;
  v21 = (*(a3 + 16))(v43, a2, v16);
  if (v33)
  {
    v43 = v33;
  }

  else
  {
    v22 = v20;
    v34 = v21;
    v31 = (*(a4 + 16))(v43, a2, v18);
    v29 = (*(a5 + 16))(v43, a2, v20);
    v27 = (*(a8 + 16))(v43, a2);
    v25 = (*(a10 + 16))(v43, a2);
    v23 = (*(a12 + 16))(v43, a2);
    v36 = (*(a14 + 16))(v43, a2);
    sub_22F7416A0();
    v43 = 0;
    sub_22F1B2BBC(0);

    *a6 = v34;
    a6[1] = v31;
    a6[2] = v29;
    a6[3] = v27;
    a6[4] = v25;
    a6[5] = v23;
    a6[6] = v36;
  }

  return result;
}

uint64_t _s11PhotosGraph12MusicCuratorC0C8ElectionV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  v14 = a1[6];
  if ((sub_22F122420(*a1, *a2) & 1) == 0 || (sub_22F122420(v2, v7) & 1) == 0 || (sub_22F122420(v4, v9) & 1) == 0 || (sub_22F122420(v3, v8) & 1) == 0 || (sub_22F122420(v6, v11) & 1) == 0 || (sub_22F122420(v5, v10) & 1) == 0)
  {
    return 0;
  }

  return sub_22F122420(v14, v13);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22F2057CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22F205814(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GraphBuilder.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 112);
  *(v2 + 16) = v3;
  *(v2 + 24) = a1;
  v4 = v3;
  return v2;
}

uint64_t GraphBuilder.init(with:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
  v3 = v2;
  return v1;
}

uint64_t sub_22F2058D8()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_22F73F470();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F2059CC, 0, 0);
}

uint64_t sub_22F2059CC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = *(v0[4] + 24);
  v0[10] = v4;
  v5 = OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);

  return MEMORY[0x2822009F8](sub_22F205A6C, v4, 0);
}

uint64_t sub_22F205A6C()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v2 = *(MEMORY[0x277D22B30] + 4);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_22F205B34;
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x282181580](v0 + 16, &unk_22F7821C0, 0, v4);
}

uint64_t sub_22F205B34()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_22F205E68;
  }

  else
  {
    v6 = sub_22F205C60;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F205C60()
{
  v1 = v0[3];
  v0[15] = v0[2];
  v0[16] = v1;
  return MEMORY[0x2822009F8](sub_22F205C84, 0, 0);
}

uint64_t sub_22F205C84()
{
  v24 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  v8 = *(v7 + 16);
  (*(v0 + 88))(v5, *(v0 + 72), *(v0 + 48));
  v23[3] = v6;
  v23[4] = &off_2843E5190;
  v23[0] = v7;
  v9 = type metadata accessor for PhotoKitInputStream();
  swift_allocObject();
  v10 = v8;

  v11 = sub_22F281C54(v10, v2, v1, v5, v23);
  v12 = *(v0 + 72);
  if (v3)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = v11;
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    v20 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2590, &unk_22F77A520);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_22F771340;
    *(v21 + 56) = v9;
    *(v21 + 64) = &off_2843E9240;
    *(v21 + 32) = v17;
    (*(v19 + 8))(v12, v20);

    v22 = *(v0 + 8);

    return v22(v21);
  }
}

uint64_t sub_22F205E84()
{
  (*(v0[7] + 8))(v0[9], v0[6]);
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22F205F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_22F205F28, 0, 0);
}

uint64_t sub_22F205F28()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22F205FCC;
  v3 = *(v0 + 56);

  return sub_22F281FAC(v3);
}

uint64_t sub_22F205FCC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22F206100, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22F206100()
{
  v19 = v0;
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_22F740B90();
  __swift_project_value_buffer(v2, qword_2810B4CB0);
  v3 = v1;
  v4 = sub_22F740B70();
  v5 = sub_22F7415E0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_22F7420F0();
    v15 = sub_22F145F20(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_22F0FC000, v4, v5, "[IncrementalRebuild] Failed to start input stream with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2319033A0](v9, -1, -1);
    MEMORY[0x2319033A0](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22F2062C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F206368, 0, 0);
}

uint64_t sub_22F206368()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = sub_22F741320();
    v5 = *(v4 - 8);
    v24 = *(v5 + 56);
    v6 = (v5 + 48);
    v23 = (v5 + 8);
    do
    {
      v10 = *(v0 + 128);
      v9 = *(v0 + 136);
      v24(v9, 1, 1, v4);
      sub_22F15C30C(v3, v0 + 16);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      sub_22F100260((v0 + 16), v11 + 32);
      sub_22F20B494(v9, v10);
      v13 = (*v6)(v10, 1, v4);
      v14 = *(v0 + 128);
      if (v13 == 1)
      {
        sub_22F120ADC(*(v0 + 128), &qword_27DAB07C0, &qword_22F77A4F0);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22F741310();
        (*v23)(v14, v4);
        if (*v12)
        {
LABEL_9:
          v17 = *(v11 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_22F7412D0();
          v16 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:

      if (v16 | v15)
      {
        v7 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v16;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 136);
      *(v0 + 88) = 1;
      *(v0 + 96) = v7;
      *(v0 + 104) = v25;
      swift_task_create();

      sub_22F120ADC(v8, &qword_27DAB07C0, &qword_22F77A4F0);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v20 = *(v0 + 128);
  v19 = *(v0 + 136);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22F20663C()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v2 = *v1;
  *(v0 + 56) = *v1;

  return MEMORY[0x2822009F8](sub_22F2066AC, v2, 0);
}

uint64_t sub_22F2066AC()
{
  v1 = *(v0 + 56);
  *(v1 + 136) = 1;
  v2 = *(v1 + 128);
  *(v0 + 64) = v2;
  return MEMORY[0x2822009F8](sub_22F2066D8, v2, 0);
}

uint64_t sub_22F2066D8()
{
  v1 = (v0[8] + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token);
  v2 = v1[3];
  if (v2)
  {
    v4 = *v1;
    v3 = v1[1];
    v5 = v1[2];
    v6 = sub_22F73F350();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_22F15C3C4(v4, v3);

    sub_22F73F340();
    v0[2] = v4;
    v0[3] = v3;
    v0[4] = v5;
    v0[5] = v2;
    sub_22F20B504();
    v9 = sub_22F73F330();
    v10 = v0[8];
    v11 = v9;
    v13 = v12;

    sub_22F73F520();
    sub_22F133BF0(v11, v13);
    sub_22F20AD9C(v4, v3, v5, v2);
  }

  v14 = v0[1];

  return v14();
}

uint64_t GraphBuilder.invalidateGraph()()
{
  v8 = *MEMORY[0x277D85DE8];
  v1[3] = v0;
  v2 = sub_22F73EE60();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_22F206970;
  v6 = *MEMORY[0x277D85DE8];

  return sub_22F2058D8();
}

uint64_t sub_22F206970(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 56);
  v4 = *v2;
  v4[8] = a1;

  if (v1)
  {
    v5 = v4[6];

    v6 = v4[1];
    v7 = *MEMORY[0x277D85DE8];

    return v6();
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22F206AFC, 0, 0);
  }
}

uint64_t sub_22F206AFC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0[8] + 16);
  v0[9] = v1;
  if (v1)
  {
    v0[10] = objc_opt_self();
    v0[11] = 0;
    v2 = v0[8];
    if (!v2[2])
    {
      __break(1u);
    }

    v3 = *(*__swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]) + 128);
    v0[12] = v3;

    v4 = *MEMORY[0x277D85DE8];
    v5 = sub_22F206C20;
    v6 = v3;
  }

  else
  {

    v6 = *(v0[3] + 24);
    v0[13] = v6;
    v7 = *MEMORY[0x277D85DE8];
    v5 = sub_22F206F78;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22F206C20()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  v2 = [*(v0 + 80) defaultManager];
  v3 = sub_22F73F3F0();
  *(v0 + 16) = 0;
  v4 = [v2 removeItemAtURL:v3 error:v0 + 16];

  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = *(v0 + 96);
    v7 = v5;

LABEL_5:
    v16 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22F206E4C, 0, 0);
  }

  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 32);
  v11 = v5;
  v12 = sub_22F73F370();

  swift_willThrow();
  v13 = v12;
  sub_22F73EE40();
  sub_22F2072C8();
  LOBYTE(v11) = sub_22F73F2E0();

  (*(v9 + 8))(v8, v10);
  v14 = *(v0 + 96);
  if (v11)
  {
    v15 = *(v0 + 96);

    goto LABEL_5;
  }

  v17 = *(v0 + 64);

  swift_willThrow();

  v18 = *(v0 + 48);

  v19 = *(v0 + 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_22F206E4C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[11] + 1;
  if (v1 == v0[9])
  {
    v2 = v0[8];

    v3 = *(v0[3] + 24);
    v0[13] = v3;
    v4 = *MEMORY[0x277D85DE8];
    v5 = sub_22F206F78;
  }

  else
  {
    v0[11] = v1;
    v6 = v0[8];
    if (v1 >= *(v6 + 16))
    {
      __break(1u);
    }

    v7 = *(*__swift_project_boxed_opaque_existential_1((v6 + 40 * v1 + 32), *(v6 + 40 * v1 + 56)) + 128);
    v0[12] = v7;

    v8 = *MEMORY[0x277D85DE8];
    v5 = sub_22F206C20;
    v3 = v7;
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

uint64_t sub_22F206F78()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v2 = *(MEMORY[0x277D22B38] + 4);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_22F207068;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282181588]();
}

uint64_t sub_22F207068()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_22F207238;
  }

  else
  {
    v3 = sub_22F2071A8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F2071A8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_22F207238()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[6];

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

unint64_t sub_22F2072C8()
{
  result = qword_27DAB2560;
  if (!qword_27DAB2560)
  {
    sub_22F73EE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2560);
  }

  return result;
}

void sub_22F207320(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277D22BB8]) init];
  v3 = [objc_opt_self() any];
  v4 = [a1 nodeIdentifiersMatchingFilter_];

  [v2 removeNodesForIdentifiers_];
  v8[0] = 0;
  if ([a1 performChangesAndWait:v2 error:v8])
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t GraphBuilder.consumeInputStreamUpdates()()
{
  *(v1 + 328) = v0;
  *(v1 + 336) = *v0;
  return MEMORY[0x2822009F8](sub_22F2074A0, 0, 0);
}

uint64_t sub_22F2074A0()
{
  type metadata accessor for InputStreamUpdateQueue();
  v1 = swift_allocObject();
  v0[43] = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F90];
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_22F20755C;
  v3 = v0[41];

  return sub_22F2058D8();
}

uint64_t sub_22F20755C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v7 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v5 = sub_22F208578;
  }

  else
  {
    v5 = sub_22F207670;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F207670()
{
  v1 = v0[45];
  sub_22F20A89C(v1, v0[43]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[43];
    swift_beginAccess();
    v0[47] = v2;
    v4 = v0[43];

    return MEMORY[0x2822009F8](sub_22F2077C0, v4, 0);
  }

  else
  {
    v5 = v0[45];
    v6 = swift_task_alloc();
    v0[63] = v6;
    *(v6 + 16) = v5;
    v7 = *(MEMORY[0x277D859B8] + 4);
    v8 = swift_task_alloc();
    v0[64] = v8;
    *v8 = v0;
    v8[1] = sub_22F2083CC;

    return MEMORY[0x282200740]();
  }
}

uint64_t sub_22F2077C0()
{
  v1 = *(v0 + 344);
  v4 = *(v1 + 112);
  v3 = (v1 + 112);
  v2 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    swift_beginAccess();
    sub_22F20AC1C((v2 + 32), v0 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v2;
    if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > *(v2 + 3) >> 1)
    {
      v7 = *(v0 + 344);
      v2 = sub_22F13EEEC(isUniquelyReferenced_nonNull_native, v5, 1, v2);
      *(v7 + 112) = v2;
    }

    v8 = *(v0 + 344);
    sub_22F20AC78((v2 + 32));
    v9 = *(v2 + 2);
    memmove(v2 + 32, v2 + 120, 88 * v9 - 88);
    *(v2 + 2) = v9 - 1;
    *(v8 + 112) = v2;
    swift_endAccess();
  }

  else
  {
    *(v0 + 184) = 0;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
  }

  return MEMORY[0x2822009F8](sub_22F2078F0, 0, 0);
}

uint64_t sub_22F2078F0()
{
  v27 = v0;
  if (*(v0 + 104))
  {
    v1 = v0 + 16;
    v2 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v2;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v3 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v3;
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v4 = sub_22F740B90();
    __swift_project_value_buffer(v4, qword_2810B4CB0);
    sub_22F20AC1C(v0 + 16, v0 + 192);
    v5 = sub_22F740B70();
    v6 = sub_22F7415C0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      v9 = sub_22F2509A0();
      v11 = v10;
      sub_22F20AC78(v0 + 192);
      v12 = sub_22F145F20(v9, v11, &v26);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_22F0FC000, v5, v6, "[IncrementalRebuild] GraphBuilder received update -> %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x2319033A0](v8, -1, -1);
      MEMORY[0x2319033A0](v7, -1, -1);
    }

    else
    {

      sub_22F20AC78(v0 + 192);
    }

    if (*(*v1 + 16) || *(*(v0 + 24) + 16))
    {
      v16 = *(v0 + 336);
      v17 = *(*(v0 + 328) + 24);
      *(v0 + 424) = v17;
      v18 = swift_task_alloc();
      *(v0 + 432) = v18;
      *(v18 + 16) = v1;
      *(v18 + 24) = v16;
      v19 = sub_22F207E50;
      v14 = v17;
LABEL_17:

      return MEMORY[0x2822009F8](v19, v14, 0);
    }

    v14 = *(*__swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88)) + 128);
    *(v0 + 384) = v14;
    *(v0 + 392) = *(v0 + 32);
    v24 = *(v0 + 56);
    *(v0 + 408) = *(v0 + 48);
    *(v0 + 416) = v24;
    v15 = sub_22F207C58;
LABEL_16:
    v19 = v15;
    goto LABEL_17;
  }

  sub_22F120ADC(v0 + 104, &qword_27DAB2568, &qword_22F77A458);
  v13 = *(v0 + 376);
  if (v13 > 0)
  {
    *(v0 + 376) = v13;
    v14 = *(v0 + 344);
    v15 = sub_22F2077C0;
    goto LABEL_16;
  }

  v20 = *(v0 + 360);
  v21 = swift_task_alloc();
  *(v0 + 504) = v21;
  *(v21 + 16) = v20;
  v22 = *(MEMORY[0x277D859B8] + 4);
  v23 = swift_task_alloc();
  *(v0 + 512) = v23;
  *v23 = v0;
  v23[1] = sub_22F2083CC;
  v29 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740]();
}

uint64_t sub_22F207C58()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = (*(v0 + 384) + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v0 + 400);
  *v3 = v2;
  *(v3 + 1) = v8;
  v3[3] = v1;
  sub_22F15C3C4(v2, v8);

  sub_22F20AD9C(v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_22F207D18, 0, 0);
}

uint64_t sub_22F207D18()
{
  v1 = v0[47];
  sub_22F20AC78((v0 + 2));
  if (v1 < 2)
  {
    v3 = v0[45];
    v4 = swift_task_alloc();
    v0[63] = v4;
    *(v4 + 16) = v3;
    v5 = *(MEMORY[0x277D859B8] + 4);
    v6 = swift_task_alloc();
    v0[64] = v6;
    *v6 = v0;
    v6[1] = sub_22F2083CC;

    return MEMORY[0x282200740]();
  }

  else
  {
    v0[47] = v1 - 1;
    v2 = v0[43];

    return MEMORY[0x2822009F8](sub_22F2077C0, v2, 0);
  }
}

uint64_t sub_22F207E50()
{
  v1 = v0[54];
  v2 = *(v0[53] + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = sub_22F20ACCC;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D22B38] + 4);
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_22F207F40;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282181588](v5, &unk_22F77A468, v3, v6);
}

uint64_t sub_22F207F40()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v9 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = v2[53];
    v5 = sub_22F2082E4;
  }

  else
  {
    v7 = v2[54];
    v6 = v2[55];

    v5 = sub_22F20806C;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F20806C()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88)) + 128);
  *(v0 + 464) = v1;
  *(v0 + 472) = *(v0 + 32);
  v2 = *(v0 + 56);
  *(v0 + 488) = *(v0 + 48);
  *(v0 + 496) = v2;

  return MEMORY[0x2822009F8](sub_22F2080F4, v1, 0);
}

uint64_t sub_22F2080F4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = (*(v0 + 464) + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v0 + 480);
  *v3 = v2;
  *(v3 + 1) = v8;
  v3[3] = v1;
  sub_22F15C3C4(v2, v8);

  sub_22F20AD9C(v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_22F2081B4, 0, 0);
}

uint64_t sub_22F2081B4()
{
  sub_22F20AC78((v0 + 2));
  if (v0[47] < 1)
  {
    v2 = v0[45];
    v3 = swift_task_alloc();
    v0[63] = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D859B8] + 4);
    v5 = swift_task_alloc();
    v0[64] = v5;
    *v5 = v0;
    v5[1] = sub_22F2083CC;

    return MEMORY[0x282200740]();
  }

  else
  {
    v1 = v0[43];

    return MEMORY[0x2822009F8](sub_22F2077C0, v1, 0);
  }
}

uint64_t sub_22F2082E4()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[45];

  return MEMORY[0x2822009F8](sub_22F208360, 0, 0);
}

uint64_t sub_22F208360()
{
  v1 = v0[43];

  sub_22F20AC78((v0 + 2));
  v2 = v0[57];
  v3 = v0[1];

  return v3();
}

void sub_22F2083CC()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 504);
    v6 = *(v2 + 360);

    MEMORY[0x2822009F8](sub_22F208514, 0, 0);
  }
}

uint64_t sub_22F208514()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F208578()
{
  v1 = v0[43];

  v2 = v0[46];
  v3 = v0[1];

  return v3();
}

void sub_22F2085DC(void *a1, uint64_t *a2)
{
  v264[11] = *MEMORY[0x277D85DE8];
  v3 = [objc_allocWithZone(MEMORY[0x277D22BB8]) init];
  v223 = a2;
  v4 = *a2;
  v254 = *(*a2 + 16);
  v245 = v3;
  if (v254)
  {
    v5 = 0;
    v6 = (v4 + 56);
    v7 = MEMORY[0x277D84F98];
    v250 = v4;
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        goto LABEL_187;
      }

      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v12 = *v6;
      v258 = *(v6 - 24);
      if (*(v7 + 2) && (v13 = sub_22F122E8C(*(v6 - 24)), (v14 & 1) != 0))
      {
        v15 = *(*(v7 + 7) + 8 * v13);
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22F13EDE0(0, *(v15 + 2) + 1, 1, v15);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_22F13EDE0((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[32 * v17];
      v18[32] = v258;
      *(v18 + 5) = v10;
      *(v18 + 6) = v11;
      *(v18 + 7) = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v264[0] = v7;
      v21 = sub_22F122E8C(v258);
      v22 = *(v7 + 2);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_188;
      }

      v25 = v20;
      if (*(v7 + 3) >= v24)
      {

        if (isUniquelyReferenced_nonNull_native)
        {
          v7 = v264[0];
          if (v25)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_22F135A08();
          v7 = v264[0];
          if (v25)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_22F127F9C(v24, isUniquelyReferenced_nonNull_native);
        v26 = sub_22F122E8C(v258);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_202;
        }

        v21 = v26;

        v7 = v264[0];
        if (v25)
        {
LABEL_3:
          v8 = *(v7 + 7);
          v9 = *(v8 + 8 * v21);
          *(v8 + 8 * v21) = v15;

          goto LABEL_4;
        }
      }

      *&v7[8 * (v21 >> 6) + 64] |= 1 << v21;
      *(*(v7 + 6) + v21) = v258;
      *(*(v7 + 7) + 8 * v21) = v15;
      v28 = *(v7 + 2);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_191;
      }

      *(v7 + 2) = v30;
LABEL_4:
      ++v5;
      v6 += 4;
      v4 = v250;
      if (v254 == v5)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_26:
  v229 = v7 + 64;
  v31 = 1 << v7[32];
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v7 + 8);
  v34 = (v31 + 63) >> 6;
  v234 = v7;

  v35 = 0;
  v36 = MEMORY[0x277D84F98];
  v224 = v34;
  v37 = v7 + 64;
  if (!v33)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v38 = v35;
    v39 = v234;
LABEL_35:
    v225 = v38;
    v40 = __clz(__rbit64(v33)) | (v38 << 6);
    v41 = *(*(v39 + 6) + v40);
    v42 = *(*(v39 + 7) + 8 * v40);
    v238 = v33;
    v255 = *(v42 + 16);
    if (!v255)
    {

LABEL_58:

      v67 = MEMORY[0x277D84F90];
      goto LABEL_59;
    }

    v251 = *(*(v39 + 6) + v40);

    v43 = 0;
    v44 = (v42 + 56);
    v259 = v42;
    do
    {
      if (v43 >= *(v42 + 16))
      {
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
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
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
      }

      v48 = *(v44 - 24);
      v50 = *(v44 - 2);
      v49 = *(v44 - 1);
      v51 = *v44;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v52 = v36;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v264[0] = v52;
      v54 = sub_22F1229E8(v50, v49);
      v56 = v52[2];
      v57 = (v55 & 1) == 0;
      v29 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v29)
      {
        goto LABEL_186;
      }

      v59 = v55;
      if (v52[3] < v58)
      {
        sub_22F127CB8(v58, v53);
        v54 = sub_22F1229E8(v50, v49);
        if ((v59 & 1) != (v60 & 1))
        {
          goto LABEL_201;
        }

LABEL_45:
        v36 = v264[0];
        if (v59)
        {
          goto LABEL_37;
        }

        goto LABEL_46;
      }

      if (v53)
      {
        goto LABEL_45;
      }

      v65 = v54;
      sub_22F13586C();
      v54 = v65;
      v36 = v264[0];
      if (v59)
      {
LABEL_37:
        v45 = v36[7] + 32 * v54;
        v46 = *(v45 + 16);
        v47 = *(v45 + 24);
        *v45 = v48;
        *(v45 + 8) = v50;
        *(v45 + 16) = v49;
        *(v45 + 24) = v51;

        goto LABEL_38;
      }

LABEL_46:
      v36[(v54 >> 6) + 8] |= 1 << v54;
      v61 = (v36[6] + 16 * v54);
      *v61 = v50;
      v61[1] = v49;
      v62 = v36[7] + 32 * v54;
      *v62 = v48;
      *(v62 + 8) = v50;
      *(v62 + 16) = v49;
      *(v62 + 24) = v51;

      v63 = v36[2];
      v29 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v29)
      {
        goto LABEL_189;
      }

      v36[2] = v64;
LABEL_38:
      ++v43;
      v44 += 4;
      v42 = v259;
    }

    while (v255 != v43);
    v66 = *(v259 + 16);
    if (!v66)
    {
      v33 = v238;
      v41 = v251;
      goto LABEL_58;
    }

    v264[0] = MEMORY[0x277D84F90];
    sub_22F146454(0, v66, 0);
    v67 = v264[0];
    v68 = (v259 + 48);
    do
    {
      v70 = *(v68 - 1);
      v69 = *v68;
      v264[0] = v67;
      v72 = v67[2];
      v71 = v67[3];

      if (v72 >= v71 >> 1)
      {
        sub_22F146454((v71 > 1), v72 + 1, 1);
        v67 = v264[0];
      }

      v67[2] = v72 + 1;
      v73 = &v67[2 * v72];
      v73[4] = v70;
      v73[5] = v69;
      v68 += 4;
      --v66;
    }

    while (v66);

    v33 = v238;
    v41 = v251;
LABEL_59:

    v74 = sub_22F20AE74(v41, v67);
    if (v248)
    {
      goto LABEL_184;
    }

    v75 = v74;

    v228 = v75;
    v226 = [a1 nodeIdentifiersMatchingFilter_];
    v227 = [objc_allocWithZone(MEMORY[0x277D22BD8]) initWithIdentifiers:v226 graph:a1];
    v76 = [v227 allObjects];
    type metadata accessor for Node();
    v77 = sub_22F741180();

    if (!(v77 >> 62))
    {
      v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v243 = v36;
      if (v78)
      {
        goto LABEL_62;
      }

LABEL_106:
      v249 = MEMORY[0x277D84F90];
LABEL_107:
      v33 &= v33 - 1;

      v140 = sub_22F1515F8(v67);

      v141 = sub_22F1E94F0(v249, v140);

      v142 = 0;
      v144 = v141 + 56;
      v143 = *(v141 + 56);
      v261 = v141;
      v145 = 1 << *(v141 + 32);
      if (v145 < 64)
      {
        v146 = ~(-1 << v145);
      }

      else
      {
        v146 = -1;
      }

      v147 = v146 & v143;
      v148 = (v145 + 63) >> 6;
      if ((v146 & v143) != 0)
      {
        while (1)
        {
          v149 = v33;
          v150 = v142;
LABEL_116:
          if (!v243[2])
          {
            break;
          }

          v151 = (*(v261 + 48) + ((v150 << 10) | (16 * __clz(__rbit64(v147)))));
          v152 = *v151;
          v153 = v151[1];

          v154 = sub_22F1229E8(v152, v153);
          v156 = v155;

          if ((v156 & 1) == 0)
          {
            break;
          }

          v157 = v243[7] + 32 * v154;
          v159 = *(v157 + 8);
          v158 = *(v157 + 16);
          v160 = *(v157 + 24);
          v161 = *v157;

          v162 = sub_22F20B12C(v161, v159, v158, v160);
          v147 &= v147 - 1;

          [v245 insertNode_];
          swift_unknownObjectRelease();
          v142 = v150;
          v33 = v149;
          if (!v147)
          {
            goto LABEL_112;
          }
        }

        sub_22F20B070();
        swift_allocError();
        *v219 = 4;
        swift_willThrow();

        goto LABEL_182;
      }

      while (1)
      {
LABEL_112:
        v150 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          goto LABEL_190;
        }

        if (v150 >= v148)
        {
          break;
        }

        v147 = *(v144 + 8 * v150);
        ++v142;
        if (v147)
        {
          v149 = v33;
          goto LABEL_116;
        }
      }

      v34 = v224;
      v35 = v225;
      v36 = MEMORY[0x277D84F98];
      v37 = v229;
      if (!v33)
      {
LABEL_31:
        v39 = v234;
        while (1)
        {
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_193;
          }

          if (v38 >= v34)
          {
            break;
          }

          v33 = *&v37[8 * v38];
          ++v35;
          if (v33)
          {
            goto LABEL_35;
          }
        }

        v163 = v223[1];
        v257 = *(v163 + 16);
        if (v257)
        {
          v164 = 0;
          v165 = (v163 + 56);
          v166 = MEMORY[0x277D84F98];
          v253 = v223[1];
          while (1)
          {
            if (v164 >= *(v163 + 16))
            {
              goto LABEL_195;
            }

            v169 = *(v165 - 24);
            v170 = *(v165 - 2);
            v171 = *(v165 - 1);
            v172 = *v165;
            if (*(v166 + 2) && (v173 = sub_22F122E8C(*(v165 - 24)), (v174 & 1) != 0))
            {
              v175 = *(*(v166 + 7) + 8 * v173);
            }

            else
            {
              v175 = MEMORY[0x277D84F90];
            }

            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v262 = v171;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v175 = sub_22F13EDE0(0, *(v175 + 2) + 1, 1, v175);
            }

            v177 = *(v175 + 2);
            v176 = *(v175 + 3);
            if (v177 >= v176 >> 1)
            {
              v175 = sub_22F13EDE0((v176 > 1), v177 + 1, 1, v175);
            }

            *(v175 + 2) = v177 + 1;
            v178 = &v175[32 * v177];
            v178[32] = v169;
            *(v178 + 5) = v170;
            *(v178 + 6) = v262;
            *(v178 + 7) = v172;
            v179 = swift_isUniquelyReferenced_nonNull_native();
            v264[0] = v166;
            v181 = sub_22F122E8C(v169);
            v182 = *(v166 + 2);
            v183 = (v180 & 1) == 0;
            v184 = v182 + v183;
            if (__OFADD__(v182, v183))
            {
              goto LABEL_196;
            }

            v185 = v180;
            if (*(v166 + 3) >= v184)
            {

              if (v179)
              {
                v166 = v264[0];
                if (v185)
                {
                  goto LABEL_124;
                }
              }

              else
              {
                sub_22F135A08();
                v166 = v264[0];
                if (v185)
                {
                  goto LABEL_124;
                }
              }
            }

            else
            {
              sub_22F127F9C(v184, v179);
              v186 = sub_22F122E8C(v169);
              if ((v185 & 1) != (v187 & 1))
              {
                goto LABEL_202;
              }

              v181 = v186;

              v166 = v264[0];
              if (v185)
              {
LABEL_124:
                v167 = *(v166 + 7);
                v168 = *(v167 + 8 * v181);
                *(v167 + 8 * v181) = v175;

                goto LABEL_125;
              }
            }

            *&v166[8 * (v181 >> 6) + 64] |= 1 << v181;
            *(*(v166 + 6) + v181) = v169;
            *(*(v166 + 7) + 8 * v181) = v175;
            v188 = *(v166 + 2);
            v29 = __OFADD__(v188, 1);
            v189 = v188 + 1;
            if (v29)
            {
              goto LABEL_200;
            }

            *(v166 + 2) = v189;
LABEL_125:
            ++v164;
            v165 += 4;
            v163 = v253;
            if (v257 == v164)
            {
              goto LABEL_148;
            }
          }
        }

        v166 = MEMORY[0x277D84F98];
LABEL_148:
        v191 = v166 + 64;
        v192 = 1 << v166[32];
        v193 = -1;
        if (v192 < 64)
        {
          v193 = ~(-1 << v192);
        }

        v194 = v193 & *(v166 + 8);
        v195 = (v192 + 63) >> 6;

        v196 = 0;
        v263 = v166;
        v247 = v166 + 64;
        v244 = v195;
        while (v194)
        {
LABEL_157:
          v204 = __clz(__rbit64(v194)) | (v196 << 6);
          v205 = *(*(v166 + 6) + v204);
          v206 = *(*(v166 + 7) + 8 * v204);
          v207 = *(v206 + 16);
          if (v207)
          {
            v264[0] = MEMORY[0x277D84F90];

            sub_22F146454(0, v207, 0);
            v208 = v264[0];
            v209 = (v206 + 48);
            do
            {
              v210 = *(v209 - 1);
              v211 = *v209;
              v264[0] = v208;
              v213 = v208[2];
              v212 = v208[3];

              if (v213 >= v212 >> 1)
              {
                sub_22F146454((v212 > 1), v213 + 1, 1);
                v208 = v264[0];
              }

              v208[2] = v213 + 1;
              v214 = &v208[2 * v213];
              v214[4] = v210;
              v214[5] = v211;
              v209 += 4;
              --v207;
            }

            while (v207);
          }

          else
          {
            v208 = MEMORY[0x277D84F90];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22F771340;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x800000022F792110;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
          *(inited + 48) = v208;

          sub_22F14EA28(inited);
          swift_setDeallocating();
          sub_22F120ADC(inited + 32, &unk_27DAB2FD0, &qword_22F77A4D0);
          if (v205 != 1 && v205 != 2)
          {

            sub_22F20B070();
            swift_allocError();
            *v216 = 1;
            swift_willThrow();

            goto LABEL_181;
          }

          v194 &= v194 - 1;
          v197 = objc_allocWithZone(MEMORY[0x277D22BE0]);
          v198 = sub_22F741160();
          v199 = sub_22F741160();
          v200 = sub_22F740C80();

          v201 = [v197 initWithRequiredLabels:v198 optionalLabels:v199 properties:v200];

          v202 = [a1 nodeIdentifiersMatchingFilter_];
          [v245 removeNodesForIdentifiers_];

          v166 = v263;
          v191 = v247;
          v195 = v244;
        }

        while (1)
        {
          v203 = v196 + 1;
          if (__OFADD__(v196, 1))
          {
            goto LABEL_194;
          }

          if (v203 >= v195)
          {
            break;
          }

          v194 = *&v191[8 * v203];
          ++v196;
          if (v194)
          {
            v196 = v203;
            goto LABEL_157;
          }
        }

        v264[0] = 0;
        if ([a1 performChangesAndWait:v245 error:v264])
        {
          v217 = v264[0];
        }

        else
        {
          v218 = v264[0];
          sub_22F73F370();

          swift_willThrow();
        }

LABEL_182:
        v222 = *MEMORY[0x277D85DE8];
        return;
      }

      continue;
    }

    break;
  }

  v78 = sub_22F741A00();
  v243 = v36;
  if (!v78)
  {
    goto LABEL_106;
  }

LABEL_62:
  v79 = 0;
  v236 = v77 & 0xFFFFFFFFFFFFFF8;
  v237 = v77 & 0xC000000000000001;
  v235 = v77 + 32;
  v249 = MEMORY[0x277D84F90];
  v231 = v77;
  v232 = v67;
  v230 = v78;
  while (2)
  {
    if (v237)
    {
      v82 = MEMORY[0x2319016F0](v79, v77);
    }

    else
    {
      if (v79 >= *(v236 + 16))
      {
        goto LABEL_199;
      }

      v82 = *(v235 + 8 * v79);
    }

    v83 = v82;
    v29 = __OFADD__(v79, 1);
    v84 = v79 + 1;
    if (v29)
    {
      goto LABEL_198;
    }

    v85 = *&v82[OBJC_IVAR____TtC11PhotosGraph4Node_properties];
    if (!v85[2])
    {
      goto LABEL_174;
    }

    v241 = v84;
    v86 = v85;

    v87 = sub_22F1229E8(0xD000000000000010, 0x800000022F792110);
    if ((v88 & 1) == 0)
    {

LABEL_174:

      goto LABEL_176;
    }

    v246 = v86;
    v89 = *(v86[7] + 8 * v87);
    objc_opt_self();
    v90 = swift_dynamicCastObjCClass();
    if (!v90)
    {

LABEL_176:

      sub_22F20B070();
      swift_allocError();
      *v220 = 3;
      swift_willThrow();

LABEL_180:
LABEL_181:

      goto LABEL_182;
    }

    v91 = v90;
    v242 = v89;
    v92 = [v91 value];
    v93 = sub_22F740E20();
    v95 = v94;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v249 = sub_22F13E1A8(0, *(v249 + 2) + 1, 1, v249);
    }

    v97 = *(v249 + 2);
    v96 = *(v249 + 3);
    if (v97 >= v96 >> 1)
    {
      v249 = sub_22F13E1A8((v96 > 1), v97 + 1, 1, v249);
    }

    *(v249 + 2) = v97 + 1;
    v98 = &v249[16 * v97];
    *(v98 + 4) = v93;
    *(v98 + 5) = v95;
    if (!v36[2])
    {

LABEL_178:

      sub_22F20B070();
      swift_allocError();
      *v221 = 4;
      swift_willThrow();
LABEL_179:

      goto LABEL_180;
    }

    v99 = sub_22F1229E8(v93, v95);
    v101 = v100;

    if ((v101 & 1) == 0)
    {
      goto LABEL_178;
    }

    v102 = *(v36[7] + 32 * v99 + 24);

    v104 = sub_22F2139E0(v103);

    v105 = sub_22F209C70(v104);

    if (!v105 || (v106 = objc_opt_self(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00), v107 = sub_22F740C80(), , v108 = [v106 kgPropertiesWithMAProperties_], v107, !v108))
    {

      sub_22F20B070();
      swift_allocError();
      *v190 = 2;
      swift_willThrow();

      goto LABEL_179;
    }

    v240 = v83;
    sub_22F20B0E0();
    v109 = sub_22F740CA0();

    v110 = v246;

    v111 = swift_isUniquelyReferenced_nonNull_native();
    v264[0] = v246;
    v112 = v109 + 64;
    v113 = -1 << *(v109 + 32);
    if (-v113 < 64)
    {
      v114 = ~(-1 << -v113);
    }

    else
    {
      v114 = -1;
    }

    v115 = v114 & *(v109 + 64);
    v239 = -1 << *(v109 + 32);
    v116 = (63 - v113) >> 6;
    v252 = v109;

    v117 = 0;
LABEL_86:
    if (v115)
    {
      v260 = v111;
      v120 = v117;
      goto LABEL_93;
    }

    v121 = v117;
LABEL_89:
    v120 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      __break(1u);
LABEL_184:

      swift_bridgeObjectRelease_n();
      goto LABEL_181;
    }

    if (v120 >= v116)
    {
      sub_22F0FF590();

      sub_22F15C0E8(v246, v110);
      v139 = v138;

      if (v139)
      {
      }

      else
      {
        v80 = v240;
        sub_22F213C6C(v110);

        v81 = sub_22F740C80();

        [v245 updateNode:v80 newProperties:v81];
      }

      v36 = v243;
      v33 = v238;
      v77 = v231;
      v67 = v232;

      v79 = v241;
      if (v241 == v230)
      {
        goto LABEL_107;
      }

      continue;
    }

    break;
  }

  v115 = *(v112 + 8 * v120);
  ++v121;
  if (!v115)
  {
    goto LABEL_89;
  }

  v260 = v111;
LABEL_93:
  v122 = __clz(__rbit64(v115)) | (v120 << 6);
  v123 = (*(v252 + 48) + 16 * v122);
  v125 = *v123;
  v124 = v123[1];
  v126 = *(*(v252 + 56) + 8 * v122);

  v256 = v126;
  v128 = sub_22F1229E8(v125, v124);
  v129 = v110[2];
  v130 = (v127 & 1) == 0;
  v131 = v129 + v130;
  if (__OFADD__(v129, v130))
  {
    goto LABEL_192;
  }

  v132 = v127;
  if (v110[3] >= v131)
  {
    if ((v260 & 1) == 0)
    {
      sub_22F135858();
    }

LABEL_99:
    v115 &= v115 - 1;
    v110 = v264[0];
    if (v132)
    {

      v118 = *(v264[0] + 7);
      v119 = *(v118 + 8 * v128);
      *(v118 + 8 * v128) = v256;
    }

    else
    {
      *(v264[0] + (v128 >> 6) + 8) |= 1 << v128;
      v135 = (v110[6] + 16 * v128);
      *v135 = v125;
      v135[1] = v124;
      *(v110[7] + 8 * v128) = v256;
      v136 = v110[2];
      v29 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v29)
      {
        goto LABEL_197;
      }

      v110[2] = v137;
    }

    v111 = 1;
    v117 = v120;
    goto LABEL_86;
  }

  sub_22F127CA4(v131, v260 & 1);
  v133 = sub_22F1229E8(v125, v124);
  if ((v132 & 1) == (v134 & 1))
  {
    v128 = v133;
    goto LABEL_99;
  }

LABEL_201:
  sub_22F7420C0();
  __break(1u);
LABEL_202:
  sub_22F7420C0();
  __break(1u);
}

unint64_t sub_22F209C70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3170, &qword_22F770B68);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_22F13A100(*(a1 + 56) + 32 * v15, v28);
        *&v27 = v17;
        *(&v27 + 1) = v18;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v19 = v27;
        sub_22F107D08(v26, v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_22F1229E8(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F209ED4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 nodeIdentifiersMatchingFilter_];
  v6 = [objc_allocWithZone(MEMORY[0x277D22BD8]) initWithIdentifiers:v5 graph:a1];
  *a3 = MEMORY[0x277D84F90];
  v7 = sub_22F740DF0();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F20AE2C;
  *(v9 + 24) = v8;
  v12[4] = sub_22F20AE34;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22F107F34;
  v12[3] = &block_descriptor_8;
  v10 = _Block_copy(v12);

  [v6 enumeratePropertyValuesForKey:v7 withBlock:v10];

  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F20A0B4(int a1, id a2, uint64_t a3, uint64_t *a4)
{
  [a2 kgPropertyValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v6;
    if ((result & 1) == 0)
    {
      result = sub_22F13E1A8(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
      *a4 = result;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      result = sub_22F13E1A8((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
      *a4 = result;
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 16 * v8;
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
  }

  return result;
}

uint64_t sub_22F20A1B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22F20A200, 0, 0);
}

uint64_t sub_22F20A200()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + 24);
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  return MEMORY[0x2822009F8](sub_22F20A288, v3, 0);
}

uint64_t sub_22F20A288()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = sub_22F20B0C4;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D22B38] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_22F20A378;

  return MEMORY[0x282181588]();
}

uint64_t sub_22F20A378()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = sub_22F20A4BC;
  }

  else
  {
    v7 = v2[6];
    v6 = v2[7];

    v5 = sub_22F20A4A4;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F20A4BC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_22F20A52C, 0, 0);
}

void sub_22F20A544(void *a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277D22BB8]) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    while (1)
    {
      v14 = *v6++;
      v13 = v14;
      if (v14 != 1 && v13 != 2)
      {
        break;
      }

      v7 = objc_allocWithZone(MEMORY[0x277D22BE0]);
      v8 = sub_22F741160();
      v9 = sub_22F741160();
      v10 = sub_22F740C80();
      v11 = [v7 initWithRequiredLabels:v8 optionalLabels:v9 properties:v10];

      v12 = [a1 nodeIdentifiersMatchingFilter_];
      [v4 removeNodesForIdentifiers_];

      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    sub_22F20B070();
    swift_allocError();
    *v15 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v19[0] = 0;
  if (([a1 performChangesAndWait:v4 error:v19] & 1) == 0)
  {
    v17 = v19[0];
    sub_22F73F370();

LABEL_10:
    swift_willThrow();

    goto LABEL_11;
  }

  v16 = v19[0];

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t GraphBuilder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t GraphBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22F20A7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22F20A7FC, 0, 0);
}

uint64_t sub_22F20A7FC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_22F73FA80();
  v2();

  v6 = v0[1];

  return v6();
}

void sub_22F20A89C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    v12 = sub_22F741320();
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    v25 = v13 + 56;
    v26 = v14;
    v23 = (v13 + 8);
    v24 = (v13 + 48);
    v14(v9, 1, 1, v12);
    while (1)
    {
      sub_22F15C30C(v11, v32);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      sub_22F100260(v32, (v15 + 4));
      v15[9] = v27;
      sub_22F20B494(v9, v6);
      v16 = (*v24)(v6, 1, v12);

      if (v16 == 1)
      {
        sub_22F120ADC(v6, &qword_27DAB07C0, &qword_22F77A4F0);
      }

      else
      {
        sub_22F741310();
        (*v23)(v6, v12);
      }

      v17 = v15[2];
      v18 = v15[3];
      swift_unknownObjectRetain();

      if (v17)
      {
        swift_getObjectType();
        v19 = sub_22F7412D0();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      sub_22F120ADC(v9, &qword_27DAB07C0, &qword_22F77A4F0);
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_22F77A510;
      *(v22 + 24) = v15;
      if (v21 | v19)
      {
        v28 = 0;
        v29 = 0;
        v30 = v19;
        v31 = v21;
      }

      swift_task_create();

      v11 += 40;
      if (!--v10)
      {
        break;
      }

      v26(v9, 1, 1, v12);
    }
  }
}

uint64_t sub_22F20AB6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F12094C;

  return sub_22F2062C0(a1, a2, v6);
}

uint64_t sub_22F20ACE8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F20B7C0;

  return sub_22F20A7D8(a1, a2, v7, v6);
}

uint64_t sub_22F20AD9C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_22F133BF0(result, a2);
  }

  return result;
}

uint64_t sub_22F20AE34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22F20AE74(char a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = MEMORY[0x277D84F98];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:

    sub_22F20B070();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022F792110;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(inited + 48) = a2;

  v5 = sub_22F14EA28(inited);
  swift_setDeallocating();
  sub_22F120ADC(inited + 32, &unk_27DAB2FD0, &qword_22F77A4D0);
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = objc_allocWithZone(MEMORY[0x277D22BE0]);
  v8 = sub_22F741160();
  v9 = sub_22F741160();
  v10 = sub_22F740C80();

  v5 = [v6 initWithRequiredLabels:v8 optionalLabels:v9 properties:v10];

  return v5;
}

unint64_t sub_22F20B070()
{
  result = qword_27DAB2570;
  if (!qword_27DAB2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2570);
  }

  return result;
}

unint64_t sub_22F20B0E0()
{
  result = qword_27DAB2580;
  if (!qword_27DAB2580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB2580);
  }

  return result;
}

id sub_22F20B12C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22F2139E0(a4);
  v6 = sub_22F209C70(v5);

  if (!v6 || (v7 = objc_opt_self(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00), v8 = sub_22F740C80(), , v9 = [v7 kgPropertiesWithMAProperties_], v8, !v9))
  {
    v19 = 2;
LABEL_7:
    sub_22F20B070();
    swift_allocError();
    *v20 = v19;
    return swift_willThrow();
  }

  sub_22F20B0E0();
  v10 = sub_22F740CA0();

  v11 = objc_allocWithZone(MEMORY[0x277D22BF0]);
  v12 = sub_22F740DF0();
  v13 = [v11 initWithValue_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v10;
  sub_22F131244(v13, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native);
  if (!a1)
  {

    v19 = 1;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v15 = sub_22F1515F8(&unk_2843DAD30);
    sub_22F1DF3B0(&unk_2843DAD50);
    v16 = type metadata accessor for Node();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC11PhotosGraph4Node_identifier] = 0;
    *&v17[OBJC_IVAR____TtC11PhotosGraph4Node_labels] = v15;
    *&v17[OBJC_IVAR____TtC11PhotosGraph4Node_properties] = v10;
    return objc_msgSendSuper2(&v25, sel_init, v24.receiver, v24.super_class, v17, v16);
  }

  else
  {
    v21 = sub_22F1515F8(&unk_2843DAD00);
    sub_22F1DF3B0(&unk_2843DAD20);
    v22 = type metadata accessor for Node();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC11PhotosGraph4Node_identifier] = 0;
    *&v23[OBJC_IVAR____TtC11PhotosGraph4Node_labels] = v21;
    *&v23[OBJC_IVAR____TtC11PhotosGraph4Node_properties] = v10;
    return objc_msgSendSuper2(&v24, sel_init, v23, v22, v25.receiver, v25.super_class);
  }
}

uint64_t sub_22F20B3E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F20B7C0;

  return sub_22F20661C(a1, v4, v5, v1 + 32);
}

uint64_t sub_22F20B494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F20B504()
{
  result = qword_27DAB2588;
  if (!qword_27DAB2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2588);
  }

  return result;
}

uint64_t sub_22F20B558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22F12094C;

  return sub_22F205F08(a1, v4, v5, (v1 + 4), v6);
}

uint64_t getEnumTagSinglePayload for GraphBuilder.GraphBuilderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}