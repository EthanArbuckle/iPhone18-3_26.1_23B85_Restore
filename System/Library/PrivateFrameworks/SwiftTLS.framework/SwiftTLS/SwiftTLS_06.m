void *sub_26C120B44()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return &unk_287CC9AE8;
  }

  for (i = (v1 + 112); (*i & 0xF0) != 0x70; i += 88)
  {
LABEL_3:
    if (!--v2)
    {
      return &unk_287CC9AE8;
    }
  }

  if (*(i - 18))
  {
    sub_26C0FF460(*(i - 10), 1);
    goto LABEL_3;
  }

  v5 = *(i - 10);
  (sub_26C0FF460)();
  return v5;
}

uint64_t sub_26C120BDC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_26C1491CC();
  sub_26C1491CC();
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  MEMORY[0x26D69BF30](*(v1 + 1));
  MEMORY[0x26D69BF30](v5);
  MEMORY[0x26D69BF30](v6);
  MEMORY[0x26D69BF30](v7);
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  v10 = *(v1 + 7);
  v11 = *(v1 + 8);
  MEMORY[0x26D69BEF0](*(v1 + 9));
  MEMORY[0x26D69BF30](v8);
  MEMORY[0x26D69BF30](v9);
  MEMORY[0x26D69BF30](v10);
  MEMORY[0x26D69BF30](v11);
  v12 = *(v1 + 10);
  v13 = *(v12 + 16);
  MEMORY[0x26D69BEF0](v13);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      sub_26C1491DC();
      --v13;
    }

    while (v13);
  }

  v16 = *(v1 + 11);
  v17 = *(v16 + 16);
  MEMORY[0x26D69BEF0](v17);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      sub_26C1491CC();
      --v17;
    }

    while (v17);
  }

  v20 = *(v1 + 12);
  v21 = *(v20 + 16);
  result = MEMORY[0x26D69BEF0](v21);
  if (v21)
  {
    v23 = (v20 + 32);
    do
    {
      v24 = v23[1];
      v32[0] = *v23;
      v32[1] = v24;
      v25 = v23[2];
      v26 = v23[3];
      v27 = v23[4];
      v33 = *(v23 + 80);
      v32[3] = v26;
      v32[4] = v27;
      v32[2] = v25;
      v28 = v23[1];
      v36 = *v23;
      v37 = v28;
      v29 = v23[2];
      v30 = v23[3];
      v31 = v23[4];
      v41 = *(v23 + 80);
      v39 = v30;
      v40 = v31;
      v38 = v29;
      sub_26C0BE40C(v32, v34);
      sub_26C128984(a1);
      v34[2] = v38;
      v34[3] = v39;
      v34[4] = v40;
      v35 = v41;
      v34[0] = v36;
      v34[1] = v37;
      result = sub_26C0BE468(v34);
      v23 = (v23 + 88);
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t sub_26C120D90()
{
  sub_26C1491AC();
  sub_26C120BDC(v1);
  return sub_26C14920C();
}

uint64_t sub_26C120DD4()
{
  sub_26C1491AC();
  sub_26C120BDC(v1);
  return sub_26C14920C();
}

uint64_t sub_26C120E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_26C1218C0(v11, v13) & 1;
}

unint64_t sub_26C120E80()
{
  result = qword_28047AD50;
  if (!qword_28047AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD50);
  }

  return result;
}

unint64_t sub_26C120ED4(uint64_t *a1)
{
  v2 = v1;
  v71 = *MEMORY[0x277D85DE8];
  LOWORD(v65) = *v2;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  *(&v69 + 1) = MEMORY[0x277D838B0];
  v70 = MEMORY[0x277CC9C18];
  *&v68 = &v65;
  *(&v68 + 1) = &v65 + 2;
  v6 = __swift_project_boxed_opaque_existential_1(&v68, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v68);
  v9 = *(v2 + 24);
  v65 = *(v2 + 8);
  v66 = v9;
  *(&v69 + 1) = v4;
  v70 = v5;
  *&v68 = &v65;
  *(&v68 + 1) = &v67;
  v10 = __swift_project_boxed_opaque_existential_1(&v68, v4);
  v12 = *v10;
  v11 = v10[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v68);
  v13 = *(v2 + 56);
  v68 = *(v2 + 40);
  v69 = v13;
  v70 = *(v2 + 72);
  v14 = sub_26C0D4944(&v68);
  v15 = v14 + 34;
  if (__OFADD__(v14, 34))
  {
    goto LABEL_42;
  }

  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v16 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v16 >> 32;
  }

  else
  {
    v19 = BYTE6(v17);
  }

  v64 = 0;
  *(&v66 + 1) = v4;
  v67 = v5;
  *&v65 = &v64;
  *(&v65 + 1) = &v65;
  v20 = __swift_project_boxed_opaque_existential_1(&v65, v4);
  v22 = *v20;
  v21 = v20[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v23 = *(v2 + 80);
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  v62 = v19;
  v25 = 0;
  v26 = v23 + 32;
  do
  {
    v64 = bswap32(*(v26 + v25)) >> 16;
    *(&v66 + 1) = v4;
    v67 = v5;
    *&v65 = &v64;
    *(&v65 + 1) = &v65;
    v27 = __swift_project_boxed_opaque_existential_1(&v65, v4);
    v29 = *v27;
    v28 = v27[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v65);
    if (v25 == 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v25 += 2;
    --v24;
  }

  while (v24);
  v19 = v62;
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v25 >> 16)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  sub_26C10064C(v25, v19);
  v30 = v15 + v25 + 2;
  if (__OFADD__(v15, v25 + 2))
  {
    goto LABEL_44;
  }

  v31 = *a1;
  v32 = a1[1];
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 == 2)
    {
      v34 = *(v31 + 24);
    }

    else
    {
      v34 = 0;
    }
  }

  else if (v33)
  {
    v34 = v31 >> 32;
  }

  else
  {
    v34 = BYTE6(v32);
  }

  LOBYTE(v64) = 0;
  *(&v66 + 1) = v4;
  v67 = v5;
  *&v65 = &v64;
  *(&v65 + 1) = &v64 + 1;
  v35 = __swift_project_boxed_opaque_existential_1(&v65, v4);
  v37 = *v35;
  v36 = v35[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v38 = *(v2 + 88);
  v39 = *(v38 + 16);
  if (v39)
  {
    v63 = v34;
    v40 = v30;
    v41 = 0;
    v42 = v38 + 32;
    do
    {
      v43 = *(v42 + v41++);
      LOBYTE(v64) = v43;
      *(&v66 + 1) = v4;
      v67 = v5;
      *&v65 = &v64;
      *(&v65 + 1) = &v64 + 1;
      v44 = __swift_project_boxed_opaque_existential_1(&v65, v4);
      v46 = *v44;
      v45 = v44[1];
      sub_26C14888C();
      __swift_destroy_boxed_opaque_existential_1(&v65);
    }

    while (v39 != v41);
    v30 = v40;
    v34 = v63;
    if (v39 > 0xFF)
    {
      goto LABEL_45;
    }
  }

  sub_26C100778(v39, v34);
  v47 = __OFADD__(v30, v39 + 1);
  v48 = v30 + v39 + 1;
  if (v47)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v49 = *a1;
  v50 = a1[1];
  v51 = v50 >> 62;
  if ((v50 >> 62) > 1)
  {
    if (v51 == 2)
    {
      v54 = *(v49 + 24);
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    v52 = BYTE6(v50);
    v53 = v49 >> 32;
    if (v51)
    {
      v54 = v53;
    }

    else
    {
      v54 = v52;
    }
  }

  v64 = 0;
  *(&v66 + 1) = v4;
  v67 = v5;
  *&v65 = &v64;
  *(&v65 + 1) = &v65;
  v55 = __swift_project_boxed_opaque_existential_1(&v65, v4);
  v57 = *v55;
  v56 = v55[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v58 = sub_26C0BF600(0, *(v2 + 96));
  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v59 = v58;
  if (v58 >> 16)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  sub_26C10064C(v58, v54);
  result = v48 + v59 + 2;
  if (__OFADD__(v48, v59 + 2))
  {
    goto LABEL_49;
  }

  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C1212AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  v7 = __OFSUB__(v6, result);
  v8 = v6 - result;
  if (v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    if (*(v2 + 24) >= v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5)
    {
      v10 = v2 >> 32;
    }

    else
    {
      v10 = BYTE6(v3);
    }

    if (v10 >= v9)
    {
LABEL_20:
      if (v9 >= result)
      {
        v11 = sub_26C14889C();
        result = sub_26C148778(v11, v12);
        a1[2] = v9;
        return result;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_19:
  if (v9 <= 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_26C121384(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v70 = *MEMORY[0x277D85DE8];
  v5 = sub_26C0CD87C(0, 8, 0, MEMORY[0x277D84F90]);
  v6 = a1[1];
  v50 = *a1;
  LOWORD(v67) = 0;
  v7 = a1[2];
  v8 = v7 + 2;
  if (__OFADD__(v7, 2))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v9 = v5;
  v10 = v6 >> 62;
  v51 = BYTE6(v6);
  v52 = v6 >> 62;
  while (1)
  {
    if (v10 <= 1)
    {
      v11 = v51;
      if (v10)
      {
        v11 = v50 >> 32;
      }

LABEL_8:
      if (v11 < v8)
      {
        goto LABEL_59;
      }

      goto LABEL_11;
    }

    if (v10 == 2)
    {
      v11 = *(v50 + 24);
      goto LABEL_8;
    }

    if (v8 > 0)
    {
      goto LABEL_59;
    }

LABEL_11:
    v12 = *a1;
    v13 = a1[1];
    *&v61 = *a1;
    *(&v61 + 1) = v13;
    if (v8 < v7)
    {
      goto LABEL_61;
    }

    v54 = v9;
    *&v55 = v7;
    *(&v55 + 1) = v8;
    sub_26C0BBAA4(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v61, *(&v61 + 1));
    v14 = v67;
    a1[2] = v8;
    v15 = *a1;
    v16 = a1[1];
    LOWORD(v67) = 0;
    v17 = v8 + 2;
    if (__OFADD__(v8, 2))
    {
      goto LABEL_62;
    }

    v18 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      break;
    }

    if (v18)
    {
      v19 = v15 >> 32;
    }

    else
    {
      v19 = BYTE6(v16);
    }

LABEL_19:
    if (v19 < v17)
    {
      goto LABEL_55;
    }

LABEL_22:
    *&v61 = v15;
    *(&v61 + 1) = v16;
    if (v17 < v8)
    {
      goto LABEL_63;
    }

    *&v55 = v8;
    *(&v55 + 1) = v8 + 2;
    sub_26C0BBAA4(v15, v16);
    v53 = v15;
    sub_26C0BBAA4(v15, v16);
    sub_26C14878C();
    sub_26C0BB9B0(v61, *(&v61 + 1));
    v20 = bswap32(v67) >> 16;
    a1[2] = v17;
    v21 = v17 + v20;
    if (__OFADD__(v17, v20))
    {
      goto LABEL_64;
    }

    v22 = *a1;
    v23 = a1[1];
    v24 = v23 >> 62;
    if ((v23 >> 62) <= 1)
    {
      if (v24)
      {
        v25 = v22 >> 32;
      }

      else
      {
        v25 = BYTE6(v23);
      }

LABEL_30:
      if (v25 < v21)
      {
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    if (v24 == 2)
    {
      v25 = *(v22 + 24);
      goto LABEL_30;
    }

    if (v21 > 0)
    {
      goto LABEL_56;
    }

LABEL_33:
    if (v21 < v17)
    {
      goto LABEL_65;
    }

    v26 = sub_26C14889C();
    v28 = 0;
    a1[2] = v21;
    v29 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      v30 = v3;
      if (v29 == 2)
      {
        v28 = *(v26 + 16);
      }
    }

    else
    {
      v30 = v3;
      if (v29)
      {
        v28 = v26;
      }
    }

    v67 = v26;
    v68 = v27;
    v69 = v28;
    sub_26C1298E0(&v67, bswap32(v14) >> 16, 1u, 0, &v55, &v61);
    if (v30)
    {
      v45 = *(&v55 + 1);
      v46 = v55;
      v40 = v56;
      v44 = v67;
      v43 = v68;
      goto LABEL_58;
    }

    v3 = 0;
    v31 = v68 >> 62;
    if ((v68 >> 62) > 1)
    {
      if (v31 == 2)
      {
        v32 = *(v67 + 24);
      }

      else
      {
        v32 = 0;
      }
    }

    else if (v31)
    {
      v32 = v67 >> 32;
    }

    else
    {
      v32 = BYTE6(v68);
    }

    if (__OFSUB__(v32, v69))
    {
      goto LABEL_66;
    }

    if (v32 != v69)
    {
      v40 = 2;
      v41 = v67;
      v42 = v68;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v57 = v63;
      v58 = v64;
      v59 = v65;
      v60 = v66;
      v55 = v61;
      v56 = v62;
      sub_26C0BE468(&v55);
      v43 = v42;
      v44 = v41;
      v45 = 0;
      v46 = 1;
LABEL_58:
      sub_26C0BB9B0(v44, v43);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v53;
      a1[1] = v16;
      a1[2] = v8;
      *&v61 = v46;
      *(&v61 + 1) = v45;
      LOBYTE(v62) = v40;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v9 = v54;

      *a2 = v46;
      *(a2 + 8) = v45;
      *(a2 + 16) = v40;
      goto LABEL_59;
    }

    sub_26C0BB9B0(v67, v68);
    sub_26C0BB9B0(v15, v16);
    v60 = v66;
    v58 = v64;
    v59 = v65;
    v56 = v62;
    v57 = v63;
    v55 = v61;
    v9 = v54;
    v34 = *(v54 + 2);
    v33 = *(v54 + 3);
    if (v34 >= v33 >> 1)
    {
      v9 = sub_26C0CD87C((v33 > 1), v34 + 1, 1, v54);
    }

    LODWORD(v10) = v52;
    *(v9 + 2) = v34 + 1;
    v35 = &v9[88 * v34];
    v36 = v56;
    *(v35 + 2) = v55;
    *(v35 + 3) = v36;
    v37 = v57;
    v38 = v58;
    v39 = v59;
    v35[112] = v60;
    *(v35 + 5) = v38;
    *(v35 + 6) = v39;
    *(v35 + 4) = v37;
    LOWORD(v67) = 0;
    v7 = a1[2];
    v8 = v7 + 2;
    if (__OFADD__(v7, 2))
    {
      goto LABEL_60;
    }
  }

  if (v18 == 2)
  {
    v19 = *(v15 + 24);
    goto LABEL_19;
  }

  if (v17 < 1)
  {
    goto LABEL_22;
  }

LABEL_55:
  sub_26C0BBAA4(v15, v16);
  v22 = *a1;
  v23 = a1[1];
LABEL_56:
  sub_26C0BB9B0(v22, v23);
  *a1 = v15;
  a1[1] = v16;
  a1[2] = v8;
  v9 = v54;
LABEL_59:
  v47 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_26C1218C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *(a2 + 40)), vceqq_s64(*(a1 + 56), *(a2 + 56))))) & 1) == 0 || *(a1 + 9) != *(a2 + 9) || (sub_26C0BE8CC(*(a1 + 10), *(a2 + 10)) & 1) == 0 || (sub_26C0BC82C(*(a1 + 11), *(a2 + 11)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 12);
  v5 = *(a2 + 12);

  return sub_26C0BD914(v4, v5);
}

uint64_t sub_26C1219BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = sub_26C1365D4();
  if ((v8 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v9 = v8;
  sub_26C0D7B44(v59);
  if (v60)
  {
    goto LABEL_6;
  }

  v10 = v59[0];
  v61 = v59[1];
  v50 = v59[3];
  v51 = v59[2];
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_26C0BBAA4(*a1, v11);
  v14 = sub_26C1368E8();
  if ((v14 & 0x100) != 0 || (sub_26C0DE248(v14, &v54), *(&v54 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v54 = 0uLL;
    LOBYTE(v55) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v57 = v54;
  v58 = v55;
  sub_26C0D4B74(&v57, &v52, &v54);
  if (v3)
  {
    v16 = *(&v52 + 1);
    v17 = v52;
    v18 = v53;
    v20 = *(&v57 + 1);
    v19 = v57;
LABEL_28:
    sub_26C0BB9B0(v19, v20);
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
    *&v54 = v17;
    *(&v54 + 1) = v16;
    LOBYTE(v55) = v18;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v17;
LABEL_29:
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
    return result;
  }

  LOBYTE(v21) = v57;
  v22 = *(&v57 + 1) >> 62;
  if ((*(&v57 + 1) >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v57 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v57 >> 32;
  }

  else
  {
    v23 = BYTE14(v57);
  }

  if (__OFSUB__(v23, v58))
  {
    __break(1u);
LABEL_45:
    v42 = v21;
    swift_once();
    LOBYTE(v21) = v42;
    goto LABEL_22;
  }

  if (v23 != v58)
  {
    v52 = xmmword_26C149860;
    v18 = 2;
    v53 = 2;
    v31 = *(&v57 + 1);
    v30 = v57;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v20 = v31;
    v19 = v30;
    v16 = 0;
    v17 = 1;
    goto LABEL_28;
  }

  v49 = 0;
  sub_26C0BB9B0(v57, *(&v57 + 1));
  sub_26C0BB9B0(v12, v11);
  v47 = v55;
  v48 = v54;
  v12 = v56;
  v24 = sub_26C1365D4();
  if ((v24 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v5 = v24;
  v21 = sub_26C1368E8();
  if ((v21 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  if (qword_28047A728 != -1)
  {
    goto LABEL_45;
  }

LABEL_22:
  v25 = 0;
  v45 = v21;
  v44 = v12;
  if (v10 == unk_280480350 && __PAIR128__(v51, v61) == xmmword_280480358)
  {
    v25 = v50 == qword_280480368;
  }

  v46 = v25;
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  sub_26C0BBAA4(*a1, v27);
  v29 = sub_26C1365D4();
  if ((v29 & 0x10000) != 0 || (v43 = v26, sub_26C0DE248(v29, &v57), *(&v57 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v26;
    a1[1] = v27;
    a1[2] = v28;
    goto LABEL_6;
  }

  v54 = v57;
  *&v55 = v58;
  sub_26C1223C4(&v54, v46, &v57, &v52);
  if (v49)
  {
    v16 = *(&v57 + 1);
    v32 = v57;
    v18 = v58;
    v34 = *(&v54 + 1);
    v33 = v54;
LABEL_43:
    sub_26C0BB9B0(v33, v34);
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v43;
    a1[1] = v27;
    a1[2] = v28;
    *&v54 = v32;
    *(&v54 + 1) = v16;
    LOBYTE(v55) = v18;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v32;
    goto LABEL_29;
  }

  result = v54;
  v35 = *(&v54 + 1) >> 62;
  if ((*(&v54 + 1) >> 62) > 1)
  {
    v36 = v27;
    if (v35 == 2)
    {
      v37 = *(v54 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v36 = v27;
    if (v35)
    {
      v37 = v54 >> 32;
    }

    else
    {
      v37 = BYTE14(v54);
    }
  }

  if (__OFSUB__(v37, v55))
  {
    __break(1u);
  }

  else
  {
    if (v37 != v55)
    {
      v57 = xmmword_26C149860;
      v18 = 2;
      LOBYTE(v58) = 2;
      v41 = *(&v54 + 1);
      v40 = v54;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      v34 = v41;
      v33 = v40;
      v16 = 0;
      v32 = 1;
      goto LABEL_43;
    }

    sub_26C0BB9B0(v54, *(&v54 + 1));
    result = sub_26C0BB9B0(v43, v36);
    *a3 = HIBYTE(v9);
    *(a3 + 1) = v9;
    v38 = v61;
    *(a3 + 8) = v10;
    *(a3 + 16) = v38;
    v39 = v52;
    *(a3 + 24) = v51;
    *(a3 + 32) = v50;
    *(a3 + 56) = v47;
    *(a3 + 40) = v48;
    *(a3 + 72) = v44;
    *(a3 + 80) = v5;
    *(a3 + 82) = v45;
    *(a3 + 88) = v39;
  }

  return result;
}

uint64_t sub_26C121E5C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 112);
    while ((*v3 & 0xF0) != 0x20 || (*(v3 - 18) & 1) == 0)
    {
      v3 += 88;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    v4 = *(v3 - 10);
    sub_26C0FF460(*(v3 - 10), 1);
    v5 = 0;
  }

  else
  {
LABEL_7:
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 16);
}

uint64_t sub_26C121EDC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_26C1491CC();
  sub_26C1491CC();
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  MEMORY[0x26D69BF30](*(v1 + 1));
  MEMORY[0x26D69BF30](v5);
  MEMORY[0x26D69BF30](v6);
  MEMORY[0x26D69BF30](v7);
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  v10 = *(v1 + 7);
  v11 = *(v1 + 8);
  MEMORY[0x26D69BEF0](*(v1 + 9));
  MEMORY[0x26D69BF30](v8);
  MEMORY[0x26D69BF30](v9);
  MEMORY[0x26D69BF30](v10);
  MEMORY[0x26D69BF30](v11);
  v12 = *(v1 + 40);
  sub_26C1491DC();
  v13 = v1[82];
  sub_26C1491CC();
  v14 = *(v1 + 11);
  v15 = *(v14 + 16);
  result = MEMORY[0x26D69BEF0](v15);
  if (v15)
  {
    v17 = (v14 + 32);
    do
    {
      v18 = v17[1];
      v26[0] = *v17;
      v26[1] = v18;
      v19 = v17[2];
      v20 = v17[3];
      v21 = v17[4];
      v27 = *(v17 + 80);
      v26[3] = v20;
      v26[4] = v21;
      v26[2] = v19;
      v22 = v17[1];
      v30 = *v17;
      v31 = v22;
      v23 = v17[2];
      v24 = v17[3];
      v25 = v17[4];
      v35 = *(v17 + 80);
      v33 = v24;
      v34 = v25;
      v32 = v23;
      sub_26C0BE40C(v26, v28);
      sub_26C128984(a1);
      v28[2] = v32;
      v28[3] = v33;
      v28[4] = v34;
      v29 = v35;
      v28[0] = v30;
      v28[1] = v31;
      result = sub_26C0BE468(v28);
      v17 = (v17 + 88);
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_26C122040()
{
  sub_26C1491AC();
  sub_26C121EDC(v1);
  return sub_26C14920C();
}

uint64_t sub_26C122084()
{
  sub_26C1491AC();
  sub_26C121EDC(v1);
  return sub_26C14920C();
}

uint64_t sub_26C1220C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_26C122918(v9, v10) & 1;
}

unint64_t sub_26C122120()
{
  result = qword_28047AD58;
  if (!qword_28047AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD58);
  }

  return result;
}

unint64_t sub_26C122174(uint64_t *a1)
{
  v2 = v1;
  v43 = *MEMORY[0x277D85DE8];
  LOWORD(v37) = *v2;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  *(&v41 + 1) = MEMORY[0x277D838B0];
  v42 = MEMORY[0x277CC9C18];
  *&v40 = &v37;
  *(&v40 + 1) = &v37 + 2;
  v6 = __swift_project_boxed_opaque_existential_1(&v40, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v9 = *(v2 + 24);
  v37 = *(v2 + 8);
  v38 = v9;
  *(&v41 + 1) = v4;
  v42 = v5;
  *&v40 = &v37;
  *(&v40 + 1) = &v39;
  v10 = __swift_project_boxed_opaque_existential_1(&v40, v4);
  v12 = *v10;
  v11 = v10[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v13 = *(v2 + 56);
  v40 = *(v2 + 40);
  v41 = v13;
  v42 = *(v2 + 72);
  v14 = sub_26C0D4944(&v40);
  v15 = v14 + 34;
  if (__OFADD__(v14, 34))
  {
    __break(1u);
    goto LABEL_16;
  }

  v36 = bswap32(*(v2 + 80)) >> 16;
  *(&v38 + 1) = v4;
  v39 = v5;
  *&v37 = &v36;
  *(&v37 + 1) = &v37;
  v16 = __swift_project_boxed_opaque_existential_1(&v37, v4);
  v18 = *v16;
  v17 = v16[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v19 = __OFADD__(v15, 2);
  v20 = v15 + 2;
  if (v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v36) = *(v2 + 82);
  *(&v38 + 1) = v4;
  v39 = v5;
  *&v37 = &v36;
  *(&v37 + 1) = &v36 + 1;
  v21 = __swift_project_boxed_opaque_existential_1(&v37, v4);
  v23 = *v21;
  v22 = v21[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v19 = __OFADD__(v20, 1);
  v24 = v20 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = *a1;
  v26 = a1[1];
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 == 2)
    {
      v28 = *(v25 + 24);
    }

    else
    {
      v28 = 0;
    }
  }

  else if (v27)
  {
    v28 = v25 >> 32;
  }

  else
  {
    v28 = BYTE6(v26);
  }

  v36 = 0;
  *(&v38 + 1) = v4;
  v39 = v5;
  *&v37 = &v36;
  *(&v37 + 1) = &v37;
  v29 = __swift_project_boxed_opaque_existential_1(&v37, v4);
  v31 = *v29;
  v30 = v29[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v32 = sub_26C0BF600(0, *(v2 + 88));
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v33 = v32;
  if (v32 >> 16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  sub_26C10064C(v32, v28);
  result = v24 + v33 + 2;
  if (__OFADD__(v24, v33 + 2))
  {
    goto LABEL_20;
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C1223C4@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v73 = *MEMORY[0x277D85DE8];
  result = sub_26C0CD87C(0, 8, 0, MEMORY[0x277D84F90]);
  v8 = a1[1];
  v52 = *a1;
  LOWORD(v70) = 0;
  v9 = a1[2];
  v10 = v9 + 2;
  if (__OFADD__(v9, 2))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  v11 = result;
  v12 = v8 >> 62;
  v53 = BYTE6(v8);
  v54 = v8 >> 62;
  while (1)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        if (*(v52 + 24) < v10)
        {
          goto LABEL_56;
        }
      }

      else if (v10 > 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v13 = v53;
      if (v12)
      {
        v13 = v52 >> 32;
      }

      if (v13 < v10)
      {
LABEL_56:
        *a4 = v11;
        goto LABEL_61;
      }
    }

    v14 = *a1;
    v15 = a1[1];
    *&v64 = *a1;
    *(&v64 + 1) = v15;
    if (v10 < v9)
    {
      goto LABEL_63;
    }

    v57 = v11;
    *&v58 = v9;
    *(&v58 + 1) = v10;
    sub_26C0BBAA4(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v64, *(&v64 + 1));
    v16 = v70;
    a1[2] = v10;
    v17 = *a1;
    v18 = a1[1];
    LOWORD(v70) = 0;
    v19 = v10 + 2;
    if (__OFADD__(v10, 2))
    {
      goto LABEL_64;
    }

    v20 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      break;
    }

    if (v20)
    {
      v21 = v17 >> 32;
    }

    else
    {
      v21 = BYTE6(v18);
    }

LABEL_20:
    if (v21 < v19)
    {
      goto LABEL_57;
    }

LABEL_23:
    *&v64 = v17;
    *(&v64 + 1) = v18;
    if (v19 < v10)
    {
      goto LABEL_65;
    }

    *&v58 = v10;
    *(&v58 + 1) = v10 + 2;
    sub_26C0BBAA4(v17, v18);
    v56 = v17;
    sub_26C0BBAA4(v17, v18);
    sub_26C14878C();
    sub_26C0BB9B0(v64, *(&v64 + 1));
    v22 = bswap32(v70) >> 16;
    a1[2] = v19;
    v23 = v19 + v22;
    if (__OFADD__(v19, v22))
    {
      goto LABEL_66;
    }

    v24 = *a1;
    v25 = a1[1];
    v26 = v25 >> 62;
    if ((v25 >> 62) <= 1)
    {
      if (v26)
      {
        v27 = v24 >> 32;
      }

      else
      {
        v27 = BYTE6(v25);
      }

LABEL_31:
      if (v27 < v23)
      {
        goto LABEL_58;
      }

      goto LABEL_34;
    }

    if (v26 == 2)
    {
      v27 = *(v24 + 24);
      goto LABEL_31;
    }

    if (v23 > 0)
    {
      goto LABEL_58;
    }

LABEL_34:
    if (v23 < v19)
    {
      goto LABEL_67;
    }

    v28 = sub_26C14889C();
    v30 = 0;
    a1[2] = v23;
    v31 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      v32 = v5;
      if (v31 == 2)
      {
        v30 = *(v28 + 16);
      }
    }

    else
    {
      v32 = v5;
      if (v31)
      {
        v30 = v28;
      }
    }

    v70 = v28;
    v71 = v29;
    v72 = v30;
    sub_26C1298E0(&v70, bswap32(v16) >> 16, 2u, a2 & 1, &v58, &v64);
    if (v32)
    {
      v47 = *(&v58 + 1);
      v48 = v58;
      v42 = v59;
      v46 = v70;
      v45 = v71;
      goto LABEL_60;
    }

    v5 = 0;
    v33 = v71 >> 62;
    if ((v71 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v34 = *(v70 + 24);
      }

      else
      {
        v34 = 0;
      }
    }

    else if (v33)
    {
      v34 = v70 >> 32;
    }

    else
    {
      v34 = BYTE6(v71);
    }

    if (__OFSUB__(v34, v72))
    {
      goto LABEL_68;
    }

    if (v34 != v72)
    {
      v42 = 2;
      v43 = v70;
      v44 = v71;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v60 = v66;
      v61 = v67;
      v62 = v68;
      v63 = v69;
      v58 = v64;
      v59 = v65;
      sub_26C0BE468(&v58);
      v45 = v44;
      v46 = v43;
      v47 = 0;
      v48 = 1;
LABEL_60:
      sub_26C0BB9B0(v46, v45);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v56;
      a1[1] = v18;
      a1[2] = v10;
      *&v64 = v48;
      *(&v64 + 1) = v47;
      LOBYTE(v65) = v42;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      *a3 = v48;
      *(a3 + 8) = v47;
      *(a3 + 16) = v42;
      goto LABEL_61;
    }

    sub_26C0BB9B0(v70, v71);
    result = sub_26C0BB9B0(v17, v18);
    v63 = v69;
    v61 = v67;
    v62 = v68;
    v59 = v65;
    v60 = v66;
    v58 = v64;
    v11 = v57;
    v36 = *(v57 + 16);
    v35 = *(v57 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_26C0CD87C((v35 > 1), v36 + 1, 1, v57);
      v11 = result;
    }

    LODWORD(v12) = v54;
    *(v11 + 16) = v36 + 1;
    v37 = v11 + 88 * v36;
    v38 = v59;
    *(v37 + 32) = v58;
    *(v37 + 48) = v38;
    v39 = v60;
    v40 = v61;
    v41 = v62;
    *(v37 + 112) = v63;
    *(v37 + 80) = v40;
    *(v37 + 96) = v41;
    *(v37 + 64) = v39;
    LOWORD(v70) = 0;
    v9 = a1[2];
    v10 = v9 + 2;
    if (__OFADD__(v9, 2))
    {
      goto LABEL_62;
    }
  }

  if (v20 == 2)
  {
    v21 = *(v17 + 24);
    goto LABEL_20;
  }

  if (v19 < 1)
  {
    goto LABEL_23;
  }

LABEL_57:
  sub_26C0BBAA4(v17, v18);
  v24 = *a1;
  v25 = a1[1];
LABEL_58:
  result = sub_26C0BB9B0(v24, v25);
  *a1 = v17;
  a1[1] = v18;
  a1[2] = v10;
  *a4 = v57;
LABEL_61:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C122918(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *(a2 + 40)), vceqq_s64(*(a1 + 56), *(a2 + 56))))) & 1) != 0 && *(a1 + 9) == *(a2 + 9) && *(a1 + 40) == *(a2 + 40) && a1[82] == a2[82])
  {
    return sub_26C0BD914(*(a1 + 11), *(a2 + 11));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_26C1229F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C122A38(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

uint64_t sub_26C122AA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_26C1491AC();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();
    sub_26C0BB9B0(v7, v9);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C122B5C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v4 = v2;
  v5 = *(a2 + 8);
  sub_26C0BBAA4(v6, v7);
  sub_26C0BBAA4(v2, v5);
  LOBYTE(v2) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v6, &v4);
  sub_26C0BB9B0(v4, v5);
  sub_26C0BB9B0(v6, v7);
  return v2 & 1;
}

unint64_t sub_26C122BE8()
{
  result = qword_28047AD60;
  if (!qword_28047AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD60);
  }

  return result;
}

uint64_t sub_26C122C3C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = 0;
      v6 = BYTE6(v1);
      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_7:
    result = sub_26C0BBAA4(v2, v1);
    goto LABEL_9;
  }

  v6 = 0;
  v5 = 0;
LABEL_9:
  if (v6 < v3 || v6 < v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v9 = sub_26C14889C();
  v11 = v10;
  sub_26C1488CC();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v13)
    {
      sub_26C0BB9B0(v9, v11);
      sub_26C0BB9B0(v2, v1);
      return BYTE6(v11);
    }

LABEL_20:
    sub_26C0BB9B0(v9, v12);
    result = sub_26C0BB9B0(v2, v1);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      return HIDWORD(v9) - v9;
    }

    goto LABEL_24;
  }

  if (v13 != 2)
  {
    sub_26C0BB9B0(v9, v11);
    sub_26C0BB9B0(v2, v1);
    return 0;
  }

  v15 = *(v9 + 16);
  v14 = *(v9 + 24);
  sub_26C0BB9B0(v9, v12);
  sub_26C0BB9B0(v2, v1);
  result = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C122DF8(uint64_t a1)
{
  sub_26C1491AC();
  v2 = *(a1 + 16);
  MEMORY[0x26D69BEF0](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 48);
      v8 = *(v3 + 32);
      v9 = v4;
      v10 = *(v3 + 64);
      v11 = *(v3 + 80);
      v5 = *(v3 + 16);
      v7[0] = *v3;
      v7[1] = v5;
      v14 = v7[0];
      v15 = v5;
      v16 = v8;
      v17 = v4;
      v18 = v10;
      v19 = v11;
      sub_26C0BE40C(v7, v12);
      sub_26C128984(v20);
      v12[2] = v16;
      v12[3] = v17;
      v12[4] = v18;
      v13 = v19;
      v12[0] = v14;
      v12[1] = v15;
      sub_26C0BE468(v12);
      v3 += 88;
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

uint64_t sub_26C122ED8(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x26D69BEF0](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = v6[1];
      v15[0] = *v6;
      v15[1] = v7;
      v8 = v6[2];
      v9 = v6[3];
      v10 = v6[4];
      v16 = *(v6 + 80);
      v15[3] = v9;
      v15[4] = v10;
      v15[2] = v8;
      v11 = v6[1];
      v19 = *v6;
      v20 = v11;
      v12 = v6[2];
      v13 = v6[3];
      v14 = v6[4];
      v24 = *(v6 + 80);
      v22 = v13;
      v23 = v14;
      v21 = v12;
      sub_26C0BE40C(v15, v17);
      sub_26C128984(a1);
      v17[2] = v21;
      v17[3] = v22;
      v17[4] = v23;
      v18 = v24;
      v17[0] = v19;
      v17[1] = v20;
      result = sub_26C0BE468(v17);
      v6 = (v6 + 88);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_26C122FB8()
{
  v1 = *v0;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = v3[1];
      v13[0] = *v3;
      v13[1] = v4;
      v5 = v3[2];
      v6 = v3[3];
      v7 = v3[4];
      v14 = *(v3 + 80);
      v13[3] = v6;
      v13[4] = v7;
      v13[2] = v5;
      v8 = v3[1];
      v17 = *v3;
      v18 = v8;
      v9 = v3[2];
      v10 = v3[3];
      v11 = v3[4];
      v22 = *(v3 + 80);
      v20 = v10;
      v21 = v11;
      v19 = v9;
      sub_26C0BE40C(v13, v15);
      sub_26C128984(v23);
      v15[2] = v19;
      v15[3] = v20;
      v15[4] = v21;
      v16 = v22;
      v15[0] = v17;
      v15[1] = v18;
      sub_26C0BE468(v15);
      v3 = (v3 + 88);
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

unint64_t sub_26C1230AC()
{
  result = qword_28047AD68;
  if (!qword_28047AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD68);
  }

  return result;
}

unint64_t sub_26C123100(uint64_t *a1, uint64_t a2)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v8 = 0;
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v16 = 0;
  v17[3] = MEMORY[0x277D838B0];
  v17[4] = MEMORY[0x277CC9C18];
  v17[0] = &v16;
  v17[1] = v17;
  v9 = __swift_project_boxed_opaque_existential_1(v17, MEMORY[0x277D838B0]);
  v11 = *v9;
  v10 = v9[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v12 = sub_26C0BF600(0, a2);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v13 = v12;
  if (v12 >> 16)
  {
    goto LABEL_11;
  }

  sub_26C10064C(v12, v8);
  v14 = *MEMORY[0x277D85DE8];
  return v13 + 2;
}

char *sub_26C123210(uint64_t *a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v49 = *a1;
  LOWORD(v66) = 0;
  v4 = a1[2];
  v5 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  v6 = v2;
  v8 = v3 >> 62;
  v9 = MEMORY[0x277D84F90];
  v50 = BYTE6(v3);
  v51 = v3 >> 62;
  while (1)
  {
    if (v8 <= 1)
    {
      v10 = v50;
      if (v8)
      {
        v10 = v49 >> 32;
      }

LABEL_8:
      if (v10 < v5)
      {
        goto LABEL_61;
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v10 = *(v49 + 24);
      goto LABEL_8;
    }

    if (v5 > 0)
    {
      goto LABEL_61;
    }

LABEL_11:
    v11 = *a1;
    v12 = a1[1];
    *&v60 = *a1;
    *(&v60 + 1) = v12;
    if (v5 < v4)
    {
      goto LABEL_63;
    }

    v53 = v9;
    *&v54 = v4;
    *(&v54 + 1) = v5;
    sub_26C0BBAA4(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v60, *(&v60 + 1));
    v13 = v66;
    a1[2] = v5;
    v14 = *a1;
    v15 = a1[1];
    LOWORD(v66) = 0;
    v16 = v5 + 2;
    if (__OFADD__(v5, 2))
    {
      goto LABEL_64;
    }

    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      v18 = v14 >> 32;
    }

    else
    {
      v18 = BYTE6(v15);
    }

LABEL_19:
    if (v18 < v16)
    {
      goto LABEL_57;
    }

LABEL_22:
    *&v60 = v14;
    *(&v60 + 1) = v15;
    if (v16 < v5)
    {
      goto LABEL_65;
    }

    *&v54 = v5;
    *(&v54 + 1) = v5 + 2;
    sub_26C0BBAA4(v14, v15);
    v52 = v14;
    sub_26C0BBAA4(v14, v15);
    sub_26C14878C();
    sub_26C0BB9B0(v60, *(&v60 + 1));
    v19 = bswap32(v66) >> 16;
    a1[2] = v16;
    v20 = v16 + v19;
    if (__OFADD__(v16, v19))
    {
      goto LABEL_66;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      if (v23)
      {
        v24 = v21 >> 32;
      }

      else
      {
        v24 = BYTE6(v22);
      }

LABEL_30:
      if (v24 < v20)
      {
        goto LABEL_58;
      }

      goto LABEL_33;
    }

    if (v23 == 2)
    {
      v24 = *(v21 + 24);
      goto LABEL_30;
    }

    if (v20 > 0)
    {
      goto LABEL_58;
    }

LABEL_33:
    if (v20 < v16)
    {
      goto LABEL_67;
    }

    v25 = sub_26C14889C();
    v27 = 0;
    a1[2] = v20;
    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v29 = v6;
      if (v28 == 2)
      {
        v27 = *(v25 + 16);
      }
    }

    else
    {
      v29 = v6;
      if (v28)
      {
        v27 = v25;
      }
    }

    v66 = v25;
    v67 = v26;
    v68 = v27;
    sub_26C1298E0(&v66, bswap32(v13) >> 16, 8u, 0, &v54, &v60);
    if (v29)
    {
      v44 = *(&v54 + 1);
      v45 = v54;
      v39 = v55;
      v43 = v66;
      v42 = v67;
      goto LABEL_60;
    }

    v6 = 0;
    v30 = v67 >> 62;
    if ((v67 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v31 = *(v66 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v30)
    {
      v31 = v66 >> 32;
    }

    else
    {
      v31 = BYTE6(v67);
    }

    if (__OFSUB__(v31, v68))
    {
      goto LABEL_68;
    }

    if (v31 != v68)
    {
      v39 = 2;
      v40 = v66;
      v41 = v67;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v56 = v62;
      v57 = v63;
      v58 = v64;
      v59 = v65;
      v54 = v60;
      v55 = v61;
      sub_26C0BE468(&v54);
      v42 = v41;
      v43 = v40;
      v44 = 0;
      v45 = 1;
LABEL_60:
      sub_26C0BB9B0(v43, v42);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v52;
      a1[1] = v15;
      a1[2] = v5;
      *&v60 = v45;
      *(&v60 + 1) = v44;
      LOBYTE(v61) = v39;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v9 = v53;

      *a2 = v45;
      *(a2 + 8) = v44;
      *(a2 + 16) = v39;
      goto LABEL_61;
    }

    sub_26C0BB9B0(v66, v67);
    sub_26C0BB9B0(v14, v15);
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v54 = v60;
    v55 = v61;
    v9 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26C0CD87C(0, *(v53 + 2) + 1, 1, v53);
    }

    LODWORD(v8) = v51;
    v33 = *(v9 + 2);
    v32 = *(v9 + 3);
    if (v33 >= v32 >> 1)
    {
      v9 = sub_26C0CD87C((v32 > 1), v33 + 1, 1, v9);
    }

    *(v9 + 2) = v33 + 1;
    v34 = &v9[88 * v33];
    v35 = v55;
    *(v34 + 2) = v54;
    *(v34 + 3) = v35;
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v34[112] = v59;
    *(v34 + 5) = v37;
    *(v34 + 6) = v38;
    *(v34 + 4) = v36;
    LOWORD(v66) = 0;
    v4 = a1[2];
    v5 = v4 + 2;
    if (__OFADD__(v4, 2))
    {
      goto LABEL_62;
    }
  }

  if (v17 == 2)
  {
    v18 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v16 < 1)
  {
    goto LABEL_22;
  }

LABEL_57:
  sub_26C0BBAA4(v14, v15);
  v21 = *a1;
  v22 = a1[1];
LABEL_58:
  sub_26C0BB9B0(v21, v22);
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v5;
  v9 = v53;
LABEL_61:
  v46 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_26C123774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26C0DE5C8(a1, &v16, &v18);
  if (v3)
  {
    v8 = v17;
    *a2 = v16;
    *(a2 + 16) = v8;
    return result;
  }

  v9 = v19;
  if (v19 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v10 = v18;
  v21 = v20;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_26C0BBAA4(*a1, v11);
  v14 = sub_26C0DF2EC(a1, &v18);
  if (!v14)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    sub_26C0BB344(v10, v9);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_4:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v18 = 0;
    v19 = 0;
    LOBYTE(v20) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v15 = v14;
  result = sub_26C0BB9B0(v12, v11);
  *a3 = v10;
  a3[1] = v9;
  a3[2] = v21;
  a3[3] = v15;
  return result;
}

unint64_t sub_26C123918()
{
  result = qword_28047AD70;
  if (!qword_28047AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD70);
  }

  return result;
}

uint64_t sub_26C12396C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v4 = *(a1 + 1);
  v5 = a1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
  }

  else
  {
    if (!v6)
    {
      v7 = BYTE6(v5);
LABEL_13:
      a1[2] = v7;
      *a2 = result;
      *(a2 + 8) = v4;
      return sub_26C0BBAA4(result, v5);
    }

    v7 = result >> 32;
    v8 = result;
  }

  if (v7 < v8)
  {
    __break(1u);
  }

  else
  {
    if (v6 == 2)
    {
      v9 = *(result + 24);
    }

    else
    {
      v9 = result >> 32;
    }

    if (v9 >= v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_26C1239F0(uint64_t *a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v49 = *a1;
  LOWORD(v66) = 0;
  v4 = a1[2];
  v5 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  v6 = v2;
  v8 = v3 >> 62;
  v9 = MEMORY[0x277D84F90];
  v50 = BYTE6(v3);
  v51 = v3 >> 62;
  while (1)
  {
    if (v8 <= 1)
    {
      v10 = v50;
      if (v8)
      {
        v10 = v49 >> 32;
      }

LABEL_8:
      if (v10 < v5)
      {
        goto LABEL_61;
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v10 = *(v49 + 24);
      goto LABEL_8;
    }

    if (v5 > 0)
    {
      goto LABEL_61;
    }

LABEL_11:
    v11 = *a1;
    v12 = a1[1];
    *&v60 = *a1;
    *(&v60 + 1) = v12;
    if (v5 < v4)
    {
      goto LABEL_63;
    }

    v53 = v9;
    *&v54 = v4;
    *(&v54 + 1) = v5;
    sub_26C0BBAA4(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v60, *(&v60 + 1));
    v13 = v66;
    a1[2] = v5;
    v14 = *a1;
    v15 = a1[1];
    LOWORD(v66) = 0;
    v16 = v5 + 2;
    if (__OFADD__(v5, 2))
    {
      goto LABEL_64;
    }

    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      v18 = v14 >> 32;
    }

    else
    {
      v18 = BYTE6(v15);
    }

LABEL_19:
    if (v18 < v16)
    {
      goto LABEL_57;
    }

LABEL_22:
    *&v60 = v14;
    *(&v60 + 1) = v15;
    if (v16 < v5)
    {
      goto LABEL_65;
    }

    *&v54 = v5;
    *(&v54 + 1) = v5 + 2;
    sub_26C0BBAA4(v14, v15);
    v52 = v14;
    sub_26C0BBAA4(v14, v15);
    sub_26C14878C();
    sub_26C0BB9B0(v60, *(&v60 + 1));
    v19 = bswap32(v66) >> 16;
    a1[2] = v16;
    v20 = v16 + v19;
    if (__OFADD__(v16, v19))
    {
      goto LABEL_66;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      if (v23)
      {
        v24 = v21 >> 32;
      }

      else
      {
        v24 = BYTE6(v22);
      }

LABEL_30:
      if (v24 < v20)
      {
        goto LABEL_58;
      }

      goto LABEL_33;
    }

    if (v23 == 2)
    {
      v24 = *(v21 + 24);
      goto LABEL_30;
    }

    if (v20 > 0)
    {
      goto LABEL_58;
    }

LABEL_33:
    if (v20 < v16)
    {
      goto LABEL_67;
    }

    v25 = sub_26C14889C();
    v27 = 0;
    a1[2] = v20;
    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v29 = v6;
      if (v28 == 2)
      {
        v27 = *(v25 + 16);
      }
    }

    else
    {
      v29 = v6;
      if (v28)
      {
        v27 = v25;
      }
    }

    v66 = v25;
    v67 = v26;
    v68 = v27;
    sub_26C1298E0(&v66, bswap32(v13) >> 16, 0xDu, 0, &v54, &v60);
    if (v29)
    {
      v44 = *(&v54 + 1);
      v45 = v54;
      v39 = v55;
      v43 = v66;
      v42 = v67;
      goto LABEL_60;
    }

    v6 = 0;
    v30 = v67 >> 62;
    if ((v67 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v31 = *(v66 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v30)
    {
      v31 = v66 >> 32;
    }

    else
    {
      v31 = BYTE6(v67);
    }

    if (__OFSUB__(v31, v68))
    {
      goto LABEL_68;
    }

    if (v31 != v68)
    {
      v39 = 2;
      v40 = v66;
      v41 = v67;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v56 = v62;
      v57 = v63;
      v58 = v64;
      v59 = v65;
      v54 = v60;
      v55 = v61;
      sub_26C0BE468(&v54);
      v42 = v41;
      v43 = v40;
      v44 = 0;
      v45 = 1;
LABEL_60:
      sub_26C0BB9B0(v43, v42);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v52;
      a1[1] = v15;
      a1[2] = v5;
      *&v60 = v45;
      *(&v60 + 1) = v44;
      LOBYTE(v61) = v39;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v9 = v53;

      *a2 = v45;
      *(a2 + 8) = v44;
      *(a2 + 16) = v39;
      goto LABEL_61;
    }

    sub_26C0BB9B0(v66, v67);
    sub_26C0BB9B0(v14, v15);
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v54 = v60;
    v55 = v61;
    v9 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26C0CD87C(0, *(v53 + 2) + 1, 1, v53);
    }

    LODWORD(v8) = v51;
    v33 = *(v9 + 2);
    v32 = *(v9 + 3);
    if (v33 >= v32 >> 1)
    {
      v9 = sub_26C0CD87C((v32 > 1), v33 + 1, 1, v9);
    }

    *(v9 + 2) = v33 + 1;
    v34 = &v9[88 * v33];
    v35 = v55;
    *(v34 + 2) = v54;
    *(v34 + 3) = v35;
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v34[112] = v59;
    *(v34 + 5) = v37;
    *(v34 + 6) = v38;
    *(v34 + 4) = v36;
    LOWORD(v66) = 0;
    v4 = a1[2];
    v5 = v4 + 2;
    if (__OFADD__(v4, 2))
    {
      goto LABEL_62;
    }
  }

  if (v17 == 2)
  {
    v18 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v16 < 1)
  {
    goto LABEL_22;
  }

LABEL_57:
  sub_26C0BBAA4(v14, v15);
  v21 = *a1;
  v22 = a1[1];
LABEL_58:
  sub_26C0BB9B0(v21, v22);
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v5;
  v9 = v53;
LABEL_61:
  v46 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_26C123F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = v3;
  v7 = *(a2 + 8);
  sub_26C0BBAA4(v8, v9);
  sub_26C0BBAA4(v3, v7);
  LOBYTE(v3) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v8, &v6);
  sub_26C0BB9B0(v6, v7);
  sub_26C0BB9B0(v8, v9);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_26C0BD914(v2, v4);
}

uint64_t sub_26C12401C(uint64_t a1, char *a2, char **a3)
{
  if (a1)
  {
    v7 = &a2[-a1];
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 <= 0xFF)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v6 = sub_26C0CDAAC(0, *(v6 + 2) + 1, 1, v6);
  *v3 = v6;
LABEL_7:
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_26C0CDAAC((v9 > 1), v10 + 1, 1, v6);
    *v3 = v6;
  }

  *(v6 + 2) = v10 + 1;
  v6[v10 + 32] = v7;
  return sub_26C0C62A0(v5, v4);
}

uint64_t sub_26C124140(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_26C148BDC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C1241CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_26C148BDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_26C12444C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_26C148BDC() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_26C1247A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C12482C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for SessionKeyManager.State.EarlySecret();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for SessionKeyManager.State.MasterSecret();
      if (v6 <= 0x3F)
      {
        result = type metadata accessor for SessionKeyManager.State.AllSecrets();
        if (v7 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C1248F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_26C148BDC() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v8 + v7;
  v10 = ((v8 + v7 + ((v8 + v7 + ((v5 + v7) & ~v7)) & ~v7)) & ~v7) + v8;
  v11 = ((v10 + v7) & ~v7) + v8;
  if (v10 <= v11)
  {
    v10 = ((v10 + v7) & ~v7) + v8;
  }

  v12 = ((v9 + ((v11 + v7) & ~v7)) & ~v7) + v8;
  if (v12 > v10)
  {
    v10 = v12;
  }

  v13 = ((v9 + ((v9 + (v9 & ~v7)) & ~v7)) & ~v7) + v8;
  if (v13 > v10)
  {
    v10 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_29;
  }

  v14 = v10 + 1;
  v15 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v18 = ((a2 + ~(-1 << v15) - 251) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_29:
      v20 = *(a1 + v10);
      if (v20 >= 5)
      {
        return (v20 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return (v14 | v19) + 252;
}

void sub_26C124AE4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_26C148BDC() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = v10 + v9;
  v12 = ((v10 + v9 + ((v10 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v10;
  v13 = ((v12 + v9) & ~v9) + v10;
  if (v12 <= v13)
  {
    v12 = ((v12 + v9) & ~v9) + v10;
  }

  v14 = ((v11 + ((v13 + v9) & ~v9)) & ~v9) + v10;
  if (v14 > v12)
  {
    v12 = v14;
  }

  v15 = ((v11 + ((v11 + (v11 & ~v9)) & ~v9)) & ~v9) + v10;
  if (v15 <= v12)
  {
    v15 = v12;
  }

  v16 = v15 + 1;
  if (a3 < 0xFC)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 251) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xFB)
  {
    v18 = a2 - 252;
    if (v16 >= 4)
    {
      bzero(a1, v15 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v15 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_43:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v15] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_28;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_26C124D9C()
{
  result = sub_26C148BDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C124E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_26C148BDC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C124ED0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_26C148BDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v11;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v12 = *(*(v8 - 8) + 64);
  v15 = ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + (v14 & ~v11)) & ~v11)) & ~v11)) & ~v11)) & ~v11)) & ~v11) + v12;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v24 = *(v6 + 48);

          return v24(a1, v7, v5);
        }

        else
        {
          v22 = *(v9 + 48);

          return v22((a1 + v14) & ~v11);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_26C125160(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_26C148BDC() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = *(v10 + 64);
  v16 = ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + (v14 & ~v13)) & ~v13)) & ~v13)) & ~v13)) & ~v13)) & ~v13) + v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v25 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_26C12547C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_26C148BDC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C12550C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_26C148BDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_26C125784(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_26C148BDC() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_26C125A88()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AD78);
  __swift_project_value_buffer(v0, qword_28047AD78);
  return sub_26C148A8C();
}

void sub_26C125B0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  oslog = sub_26C148A7C();
  v8 = sub_26C14900C();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_26C0E5DE8(a1, a2, &v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_26C0E5DE8(a3, a4, &v12);
    _os_log_impl(&dword_26C0B5000, oslog, v8, "invalid state transition for session key manager: state %s event: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v10, -1, -1);
    MEMORY[0x26D69C3A0](v9, -1, -1);
  }
}

uint64_t sub_26C125C94()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_26C1491AC();
  sub_26C1491CC();
  if (v2 != 1)
  {
    sub_26C1491EC();
  }

  return sub_26C14920C();
}

uint64_t sub_26C125D04()
{
  if (*(v0 + 4) == 1)
  {
    return sub_26C1491CC();
  }

  v2 = *v0;
  sub_26C1491CC();
  return sub_26C1491EC();
}

uint64_t sub_26C125D54()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_26C1491AC();
  sub_26C1491CC();
  if (v2 != 1)
  {
    sub_26C1491EC();
  }

  return sub_26C14920C();
}

uint64_t sub_26C125DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_26C125DF8()
{
  result = qword_28047AD90;
  if (!qword_28047AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD90);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

unint64_t sub_26C125E74()
{
  result = qword_28047AD98;
  if (!qword_28047AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD98);
  }

  return result;
}

uint64_t *sub_26C125EC8(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = result[2];
  v4 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = 0;
      v6 = BYTE6(v1);
      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_7:
    result = sub_26C0BBAA4(*result, v1);
    goto LABEL_9;
  }

  v6 = 0;
  v5 = 0;
LABEL_9:
  if (v6 < v3 || v6 < v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v8 = sub_26C14889C();
  v10 = v9;
  sub_26C1488CC();
  v11 = v10;
  v12 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v12)
    {
      sub_26C0BB9B0(v8, v10);
      sub_26C0BB9B0(v2, v1);
      return BYTE6(v10);
    }

LABEL_20:
    sub_26C0BB9B0(v8, v11);
    result = sub_26C0BB9B0(v2, v1);
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      return (HIDWORD(v8) - v8);
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    sub_26C0BB9B0(v8, v10);
    sub_26C0BB9B0(v2, v1);
    return 0;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  sub_26C0BB9B0(v8, v11);
  sub_26C0BB9B0(v2, v1);
  result = (v13 - v14);
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C12601C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  if (v6 != 8 && v6 != 1)
  {
    v14 = v6 | 0x390000;
    *a2 = v14;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v18 = v14;
    v19 = 0;
    LOBYTE(v20) = 0;
LABEL_16:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(v8 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v12 = BYTE6(v9);
    v13 = v8 >> 32;
    if (!v11)
    {
      v13 = v12;
    }
  }

  result = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
    __break(1u);
  }

  else
  {
    result = sub_26C0DE248(result, &v18);
    v16 = v19;
    if (v19 >> 60 == 15)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v18 = 0;
      v19 = 0;
      LOBYTE(v20) = 2;
      goto LABEL_16;
    }

    v17 = v20;
    *a3 = v18;
    a3[1] = v16;
    a3[2] = v17;
  }

  return result;
}

uint64_t sub_26C126138()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_26C1491AC();
  if (v2)
  {
    MEMORY[0x26D69BEF0](1);
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C1491CC();
  }

  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C1261C0()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x26D69BEF0](1);
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C1491CC();
  }

  return sub_26C1491CC();
}

uint64_t sub_26C126224()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_26C1491AC();
  if (v2)
  {
    MEMORY[0x26D69BEF0](1);
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C1491CC();
  }

  sub_26C1491CC();
  return sub_26C14920C();
}

BOOL sub_26C1262A8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1 == *a2;
  if (!*(a2 + 2))
  {
    v2 = 0;
  }

  if (a1[1])
  {
    return v2;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 2);
  }
}

uint64_t ClientTicketRequest.init(newSessionCount:resumptionCount:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ClientTicketRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C14908C();
  MEMORY[0x26D69BC90](0xD00000000000001FLL, 0x800000026C15AE30);
  v3 = sub_26C14911C();
  MEMORY[0x26D69BC90](v3);

  MEMORY[0x26D69BC90](0xD000000000000013, 0x800000026C15AE50);
  v4 = sub_26C14911C();
  MEMORY[0x26D69BC90](v4);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0;
}

uint64_t ClientTicketRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491CC();
  return sub_26C1491CC();
}

uint64_t ClientTicketRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

unint64_t sub_26C126530()
{
  result = qword_28047ADA0;
  if (!qword_28047ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADA0);
  }

  return result;
}

unint64_t sub_26C126598()
{
  sub_26C14908C();

  v0 = sub_26C14911C();
  MEMORY[0x26D69BC90](v0);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

unint64_t sub_26C126648()
{
  result = qword_28047ADA8;
  if (!qword_28047ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADA8);
  }

  return result;
}

unint64_t sub_26C1266A0()
{
  result = qword_28047ADB0;
  if (!qword_28047ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADB0);
  }

  return result;
}

uint64_t sub_26C1266F4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (v5 == 8)
  {
    result = sub_26C1368E8();
    if ((result & 0x100) == 0)
    {
      *a3 = result;
      *(a3 + 2) = 1;
      return result;
    }
  }

  else
  {
    if (v5 != 1)
    {
      *a2 = v5 | 0x3A0000;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      goto LABEL_10;
    }

    v6 = sub_26C1368E8();
    if ((v6 & 0x100) == 0)
    {
      v7 = v6;
      result = sub_26C1368E8();
      if ((result & 0x100) == 0)
      {
        *a3 = v7 | (result << 8);
        *(a3 + 2) = 0;
        return result;
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
LABEL_10:
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s13TicketRequestOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t _s13TicketRequestOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_26C126920(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 8;
    v6 = *v3;
    v7 = *(v3 - 1);
    v11 = *(v3 - 6);
    v12 = v7;
    v13 = v6;
    v8 = sub_26C12751C(&v11);
    v3 = v5;
    v9 = __OFADD__(a1, v8);
    a1 += v8;
    if (v9)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_26C1269B0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 3;
    v6 = *v3;
    v10 = *(v3 - 1);
    v11 = v6;
    v7 = sub_26C1277A0(&v10);
    v3 = v5;
    v8 = __OFADD__(a1, v7);
    a1 += v7;
    if (v8)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_26C126A38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_26C1491AC();
  if (v3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491DC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C12A598(v5, v1);
    sub_26C12A494(v5, v2);
  }

  return sub_26C14920C();
}

uint64_t sub_26C126AC4(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x26D69BEF0](1);
    return sub_26C1491DC();
  }

  else
  {
    v5 = *(v1 + 8);
    MEMORY[0x26D69BEF0](0);
    sub_26C12A598(a1, v3);

    return sub_26C12A494(a1, v5);
  }
}

uint64_t sub_26C126B50()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_26C1491AC();
  if (v3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491DC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C12A598(v5, v1);
    sub_26C12A494(v5, v2);
  }

  return sub_26C14920C();
}

BOOL sub_26C126BD8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0 && v4 == v5;
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  else
  {
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    return (sub_26C0BC888(v4, v5) & 1) != 0 && (sub_26C0BCDF8(v9, v8) & 1) != 0;
  }
}

uint64_t sub_26C126C64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491AC();
  sub_26C12A598(v4, v1);
  sub_26C12A494(v4, v2);
  return sub_26C14920C();
}

uint64_t sub_26C126CB8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_26C12A598(a1, v3);

  return sub_26C12A494(a1, v4);
}

uint64_t sub_26C126CF8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491AC();
  sub_26C12A598(v4, v1);
  sub_26C12A494(v4, v2);
  return sub_26C14920C();
}

uint64_t sub_26C126D48(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_26C0BC888(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_26C0BCDF8(v2, v3);
}

uint64_t sub_26C126DA4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = sub_26C1491AC();
  v6 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v1);
  }

  if (v7 < v3)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_26C14889C();
    v10 = v9;
    sub_26C1488BC();
    sub_26C0BB9B0(v8, v10);
    sub_26C1491EC();
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C126E74()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result = *(v0 + 16);
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 24);
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();
    sub_26C0BB9B0(v7, v9);
    return sub_26C1491EC();
  }

  return result;
}

uint64_t sub_26C126F1C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = sub_26C1491AC();
  v6 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v1);
  }

  if (v7 < v3)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_26C14889C();
    v10 = v9;
    sub_26C1488BC();
    sub_26C0BB9B0(v8, v10);
    sub_26C1491EC();
    return sub_26C14920C();
  }

  return result;
}

unint64_t sub_26C126FF4()
{
  result = qword_28047ADB8;
  if (!qword_28047ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADB8);
  }

  return result;
}

unint64_t sub_26C12704C()
{
  result = qword_28047ADC0;
  if (!qword_28047ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADC0);
  }

  return result;
}

unint64_t sub_26C1270A4()
{
  result = qword_28047ADC8;
  if (!qword_28047ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADC8);
  }

  return result;
}

unint64_t sub_26C1270FC()
{
  result = qword_28047ADD0;
  if (!qword_28047ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADD0);
  }

  return result;
}

uint64_t sub_26C127150(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *v2;
  v6 = v2[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v10 = 0;
    if (v7 == 2)
    {
      v10 = *(v5 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v6);
    v9 = v5 >> 32;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  v31 = 0;
  v11 = MEMORY[0x277D838B0];
  v12 = MEMORY[0x277CC9C18];
  v34 = MEMORY[0x277D838B0];
  v35 = MEMORY[0x277CC9C18];
  v32 = &v31;
  v33 = &v32;
  v13 = __swift_project_boxed_opaque_existential_1(&v32, MEMORY[0x277D838B0]);
  v15 = *v13;
  v14 = v13[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v16 = sub_26C126920(0, a1);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  if (v16 >> 16)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  sub_26C10064C(v16, v10);
  v18 = *v2;
  v19 = v2[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v23 = *(v18 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v21 = BYTE6(v19);
    v22 = v18 >> 32;
    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }
  }

  v31 = 0;
  v34 = v11;
  v35 = v12;
  v32 = &v31;
  v33 = &v32;
  v24 = __swift_project_boxed_opaque_existential_1(&v32, v11);
  v26 = *v24;
  v25 = v24[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v27 = sub_26C1269B0(0, a2);
  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v28 = v27;
  if (v27 >> 16)
  {
    goto LABEL_22;
  }

  sub_26C10064C(v27, v23);
  v29 = *MEMORY[0x277D85DE8];
  return v17 + v28 + 4;
}

uint64_t sub_26C127318(unsigned __int8 *a1, char a2, uint64_t a3)
{
  v7 = *a1;
  if (v7 == 2)
  {
    if ((a2 & 1) == 0)
    {
      v16 = sub_26C1365D4();
      if ((v16 & 0x10000) == 0)
      {
        return v16;
      }

      goto LABEL_13;
    }

LABEL_6:
    v15 = v7 | 0x290000;
    *a3 = v15;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v18 = v15;
    v19 = 0;
    v20 = 0;
LABEL_14:
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v5;
  }

  if (v7 != 1)
  {
    goto LABEL_6;
  }

  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v5 = v4;
  sub_26C0BBAA4(*v3, v8);
  v11 = sub_26C0DFA98(v3, &v18);
  if (!v4)
  {
    v5 = v11;
    if (v11)
    {
      sub_26C0BB9B0(v9, v8);
      v9 = *v3;
      v8 = v3[1];
      v10 = v3[2];
      sub_26C0BBAA4(*v3, v8);
      if (sub_26C0DFA6C(v3, &v18))
      {
        sub_26C0BB9B0(v9, v8);
        return v5;
      }

      sub_26C0BB9B0(*v3, v3[1]);
    }

    else
    {
      sub_26C0BB9B0(*v3, v3[1]);
    }

    *v3 = v9;
    v3[1] = v8;
    v3[2] = v10;
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    v18 = 0;
    v19 = 0;
    v20 = 2;
    goto LABEL_14;
  }

  sub_26C0BB9B0(*v3, v3[1]);
  v12 = v18;
  v13 = v19;
  v14 = v20;
  *v3 = v9;
  v3[1] = v8;
  v3[2] = v10;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  return v5;
}

unint64_t sub_26C12751C(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v1;
  v5 = v1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  LOWORD(v32) = 0;
  v12 = MEMORY[0x277D838B0];
  v13 = MEMORY[0x277CC9C18];
  v35 = MEMORY[0x277D838B0];
  v36 = MEMORY[0x277CC9C18];
  v33 = &v32;
  v34 = (&v32 + 2);
  v14 = __swift_project_boxed_opaque_existential_1(&v33, MEMORY[0x277D838B0]);
  v16 = *v14;
  v15 = v14[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v17 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = 0;
      v19 = BYTE6(v2);
      if (BYTE6(v2) < v10)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v18 = v3;
    v19 = v3 >> 32;
LABEL_15:
    sub_26C0BBAA4(v3, v2);
    if (v19 < v10)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if (v17 == 2)
  {
    v18 = *(v3 + 16);
    v19 = *(v3 + 24);
    goto LABEL_15;
  }

  v19 = 0;
  v18 = 0;
  if (v10 > 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_18:
  if (v19 < v18)
  {
    goto LABEL_33;
  }

  v20 = sub_26C14889C();
  v22 = v21;
  sub_26C1488CC();
  v23 = v22;
  v24 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v24)
    {
      sub_26C0BB9B0(v20, v22);
      sub_26C0BB9B0(v3, v2);
      v2 = BYTE6(v22);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v24 != 2)
  {
LABEL_31:
    sub_26C0BB9B0(v20, v23);
    sub_26C0BB9B0(v3, v2);
    v2 = 0;
    goto LABEL_32;
  }

  v26 = *(v20 + 16);
  v25 = *(v20 + 24);
  sub_26C0BB9B0(v20, v23);
  sub_26C0BB9B0(v3, v2);
  v2 = v25 - v26;
  if (__OFSUB__(v25, v26))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v20, v23);
    sub_26C0BB9B0(v3, v2);
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      goto LABEL_35;
    }

    v2 = HIDWORD(v20) - v20;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if (v2 >> 16)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  sub_26C10064C(v2, v9);
  v32 = bswap32(v11);
  v35 = v12;
  v36 = v13;
  v33 = &v32;
  v34 = &v33;
  v27 = __swift_project_boxed_opaque_existential_1(&v33, v12);
  v29 = *v27;
  v28 = v27[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v30 = *MEMORY[0x277D85DE8];
  return v2 + 6;
}

unint64_t sub_26C1277A0(uint64_t *a1)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v10 = a1[2];
  v26 = 0;
  v27[3] = MEMORY[0x277D838B0];
  v27[4] = MEMORY[0x277CC9C18];
  v27[0] = &v26;
  v27[1] = v27;
  v11 = __swift_project_boxed_opaque_existential_1(v27, MEMORY[0x277D838B0]);
  v13 = *v11;
  v12 = v11[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v27);
  v14 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = 0;
      v16 = BYTE6(v2);
      if (BYTE6(v2) < v10)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v15 = v3;
    v16 = v3 >> 32;
LABEL_15:
    sub_26C0BBAA4(v3, v2);
    if (v16 < v10)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if (v14 == 2)
  {
    v15 = *(v3 + 16);
    v16 = *(v3 + 24);
    goto LABEL_15;
  }

  v16 = 0;
  v15 = 0;
  if (v10 > 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_18:
  if (v16 < v15)
  {
    goto LABEL_33;
  }

  v17 = sub_26C14889C();
  v19 = v18;
  sub_26C1488CC();
  v20 = v19;
  v21 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v21)
    {
      sub_26C0BB9B0(v17, v19);
      sub_26C0BB9B0(v3, v2);
      v2 = BYTE6(v19);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v21 != 2)
  {
LABEL_31:
    sub_26C0BB9B0(v17, v20);
    sub_26C0BB9B0(v3, v2);
    v2 = 0;
    goto LABEL_32;
  }

  v23 = *(v17 + 16);
  v22 = *(v17 + 24);
  sub_26C0BB9B0(v17, v20);
  sub_26C0BB9B0(v3, v2);
  v2 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v17, v20);
    sub_26C0BB9B0(v3, v2);
    if (__OFSUB__(HIDWORD(v17), v17))
    {
      goto LABEL_35;
    }

    v2 = HIDWORD(v17) - v17;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if (v2 > 0xFF)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  sub_26C100778(v2, v9);
  v24 = *MEMORY[0x277D85DE8];
  return v2 + 1;
}

char *sub_26C1279DC(uint64_t *a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  sub_26C0BBAA4(*a1, v6);
  sub_26C0E09A8(a1, &v31, &v34);
  if (v2)
  {
    v30 = a2;
    v8 = MEMORY[0x277D84F90];
    sub_26C0BB9B0(*a1, a1[1]);
    v10 = v31;
    v9 = v32;
    v11 = v33;
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    *&v34 = v10;
    *(&v34 + 1) = v9;
    LOBYTE(v35) = v11;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    goto LABEL_3;
  }

  v12 = *(&v34 + 1);
  if (*(&v34 + 1) >> 60 == 15)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_6:
    sub_26C0BB9B0(*a1, a1[1]);
    sub_26C0BB344(v34, v12);
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    goto LABEL_7;
  }

  v30 = a2;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_26C0BB9B0(v5, v6);
    v15 = v34;
    v16 = v35;
    v17 = a1[2];
    v18 = v17 + 4;
    if (__OFADD__(v17, 4))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    v19 = *a1;
    v20 = a1[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) <= 1)
    {
      if (v21)
      {
        v22 = v19 >> 32;
      }

      else
      {
        v22 = BYTE6(v20);
      }

LABEL_16:
      if (v22 < v18)
      {
        goto LABEL_35;
      }

      goto LABEL_19;
    }

    if (v21 == 2)
    {
      v22 = *(v19 + 24);
      goto LABEL_16;
    }

    if (v18 > 0)
    {
LABEL_35:
      sub_26C0BB344(v34, v12);
      goto LABEL_7;
    }

LABEL_19:
    *&v34 = *a1;
    *(&v34 + 1) = v20;
    if (v18 < v17)
    {
      goto LABEL_38;
    }

    v31 = v17;
    v32 = v17 + 4;
    sub_26C0BBAA4(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v34, *(&v34 + 1));
    a1[2] = v18;
    v23 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v24 = *(v15 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v23)
    {
      v24 = v15 >> 32;
    }

    else
    {
      v24 = BYTE6(v12);
    }

    v25 = __OFSUB__(v24, v16);
    v26 = v24 - v16;
    if (v25)
    {
      goto LABEL_39;
    }

    if (v26 <= 0)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_26C0CDF10(0, *(v8 + 2) + 1, 1, v8);
    }

    v28 = *(v8 + 2);
    v27 = *(v8 + 3);
    if (v28 >= v27 >> 1)
    {
      v8 = sub_26C0CDF10((v27 > 1), v28 + 1, 1, v8);
    }

    *(v8 + 2) = v28 + 1;
    v29 = &v8[32 * v28];
    *(v29 + 4) = v15;
    *(v29 + 5) = v12;
    *(v29 + 6) = v16;
    *(v29 + 14) = bswap32(0);
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    sub_26C0BBAA4(*a1, v6);
    sub_26C0E09A8(a1, &v31, &v34);
    v12 = *(&v34 + 1);
    if (*(&v34 + 1) >> 60 == 15)
    {
      goto LABEL_6;
    }
  }

  v34 = xmmword_26C14B8C0;
  v11 = 2;
  LOBYTE(v35) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB344(v15, v12);

  v9 = 0;
  v10 = 9;
LABEL_3:
  *v30 = v10;
  *(v30 + 8) = v9;
  *(v30 + 16) = v11;
LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

char *sub_26C127D7C(uint64_t *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_78:
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
  }

  v7 = v3 >> 62;
  v41 = v2 >> 32;
  v8 = MEMORY[0x277D84F90];
  v42 = BYTE6(v3);
  v43 = v3 >> 62;
  v45 = a1[1];
  v46 = *a1;
  while (v7 <= 1)
  {
    v9 = v42;
    if (v7)
    {
      v9 = v41;
    }

LABEL_8:
    if (v9 < v5)
    {
      goto LABEL_71;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    v48 = *a1;
    if (v5 < v4)
    {
      goto LABEL_77;
    }

    sub_26C0BBAA4(v2, v3);
    sub_26C0BBAA4(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v48, v11);
    a1[2] = v5;
    v12 = *a1;
    v13 = a1[1];
    v14 = v13 >> 62;
    if ((v13 >> 62) <= 1)
    {
      if (v14)
      {
        v15 = v12 >> 32;
      }

      else
      {
        v15 = BYTE6(v13);
      }

LABEL_18:
      if (v15 < v5)
      {
        goto LABEL_72;
      }

      goto LABEL_21;
    }

    if (v14 == 2)
    {
      v15 = *(v12 + 24);
      goto LABEL_18;
    }

    if (v5 > 0)
    {
      goto LABEL_72;
    }

LABEL_21:
    v44 = v8;
    v16 = sub_26C14889C();
    v18 = v16;
    v19 = v17;
    a1[2] = v5;
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v16 = *(v16 + 16);
        v21 = *(v18 + 24);
      }

      else
      {
        v16 = 0;
        v21 = 0;
      }
    }

    else if (v20)
    {
      v16 = v16;
      v21 = v18 >> 32;
    }

    else
    {
      v16 = 0;
      v21 = BYTE6(v17);
    }

    v22 = __OFSUB__(v21, v16);
    v23 = v21 - v16;
    if (v22)
    {
      goto LABEL_78;
    }

    v24 = v16 + v23;
    if (__OFADD__(v16, v23))
    {
      goto LABEL_79;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        v25 = v18 >> 32;
      }

      else
      {
        v25 = BYTE6(v17);
      }

LABEL_36:
      if (v25 < v24)
      {
        goto LABEL_83;
      }

      goto LABEL_39;
    }

    if (v20 == 2)
    {
      v25 = *(v18 + 24);
      goto LABEL_36;
    }

    if (v24 > 0)
    {
      goto LABEL_84;
    }

LABEL_39:
    if (v24 < v16)
    {
      goto LABEL_80;
    }

    v26 = sub_26C14889C();
    v28 = v27;
    v29 = 0;
    v30 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v29 = *(v26 + 16);
      }
    }

    else if (v30)
    {
      v29 = v26;
    }

    v47 = v26;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v31 = *(v18 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v20)
    {
      v31 = v18 >> 32;
    }

    else
    {
      v31 = BYTE6(v19);
    }

    if (__OFSUB__(v31, v24))
    {
      goto LABEL_81;
    }

    if (v31 != v24)
    {
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v47, v28);
      sub_26C0BB9B0(v18, v19);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v46;
      a1[1] = v45;
      a1[2] = v4;
      swift_willThrowTypedImpl();
      v8 = v44;

      v37 = 1;
LABEL_74:
      *a2 = v37;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      goto LABEL_75;
    }

    sub_26C0BB9B0(v18, v19);
    sub_26C0BB9B0(v46, v45);
    if (v30 > 1)
    {
      v8 = v44;
      if (v30 == 2)
      {
        v32 = *(v47 + 24);
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v8 = v44;
      if (v30)
      {
        v32 = v47 >> 32;
      }

      else
      {
        v32 = BYTE6(v28);
      }
    }

    v22 = __OFSUB__(v32, v29);
    v33 = v32 - v29;
    if (v22)
    {
      goto LABEL_82;
    }

    if (v33 <= 31)
    {
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v47, v28);

      v37 = 9;
      goto LABEL_74;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_26C0CE01C(0, *(v8 + 2) + 1, 1, v8);
    }

    v35 = *(v8 + 2);
    v34 = *(v8 + 3);
    if (v35 >= v34 >> 1)
    {
      v8 = sub_26C0CE01C((v34 > 1), v35 + 1, 1, v8);
    }

    *(v8 + 2) = v35 + 1;
    v36 = &v8[24 * v35];
    v2 = v46;
    *(v36 + 4) = v47;
    *(v36 + 5) = v28;
    *(v36 + 6) = v29;
    v4 = a1[2];
    v5 = v4 + 1;
    v3 = v45;
    LODWORD(v7) = v43;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_76;
    }
  }

  if (v7 == 2)
  {
    v9 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v5 < 1)
  {
    goto LABEL_11;
  }

LABEL_71:
  sub_26C0BBAA4(v2, v3);
  v12 = *a1;
  v13 = a1[1];
LABEL_72:
  sub_26C0BB9B0(v12, v13);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
LABEL_75:
  v38 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_26C1282B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = v3;
  v7 = *(a2 + 8);
  sub_26C0BBAA4(v8, v9);
  sub_26C0BBAA4(v3, v7);
  LOBYTE(v3) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v8, &v6);
  sub_26C0BB9B0(v6, v7);
  sub_26C0BB9B0(v8, v9);
  return v3 & (v2 == v4);
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_26C128378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 28))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C1283CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C12844C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C128494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26C12853C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x73 && *(a1 + 81))
  {
    return (*a1 + 115);
  }

  v3 = ((*(a1 + 80) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 80) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x72)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C128590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

unint64_t sub_26C12863C(__int128 *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  v27[2] = a1[2];
  v27[3] = v2;
  v27[4] = a1[4];
  v3 = *a1;
  v4 = a1[1];
  v28 = *(a1 + 80);
  v27[0] = v3;
  v27[1] = v4;
  v5 = 0;
  switch(v28 >> 4)
  {
    case 1:
      v5 = 10;
      break;
    case 2:
      v5 = 43;
      break;
    case 3:
      v5 = 16;
      break;
    case 4:
      v5 = 51;
      break;
    case 5:
      v5 = 42;
      break;
    case 6:
      v5 = 13;
      break;
    case 7:
      v5 = 20;
      break;
    case 8:
      v5 = 57;
      break;
    case 9:
      v5 = 45;
      break;
    case 0xA:
      v5 = 41;
      break;
    case 0xB:
      v5 = 58;
      break;
    case 0xC:
      v5 = 35387;
      break;
    case 0xD:
      v5 = LOWORD(v27[0]);
      break;
    default:
      break;
  }

  v22 = bswap32(v5) >> 16;
  v6 = MEMORY[0x277D838B0];
  v7 = MEMORY[0x277CC9C18];
  v25 = MEMORY[0x277D838B0];
  v26 = MEMORY[0x277CC9C18];
  v23 = &v22;
  v24 = &v23;
  v8 = __swift_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D838B0]);
  v10 = *v8;
  v9 = v8[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v11 = *v1;
  v12 = v1[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v11 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v11 >> 32;
  }

  else
  {
    v14 = BYTE6(v12);
  }

  v22 = 0;
  v25 = v6;
  v26 = v7;
  v23 = &v22;
  v24 = &v23;
  v15 = __swift_project_boxed_opaque_existential_1(&v23, v6);
  v17 = *v15;
  v16 = v15[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v18 = sub_26C1293B8(v1, v27);
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v19 = v18;
  if (v18 >> 16)
  {
    goto LABEL_26;
  }

  sub_26C10064C(v18, v14);
  v20 = *MEMORY[0x277D85DE8];
  return v19 + 4;
}

uint64_t sub_26C12882C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v6 = *v3;
    LOWORD(v10) = *(v3 - 12);
    v11 = *(v3 - 1);
    v12 = v6;
    v7 = sub_26C140E28(&v10);
    v3 = v5;
    v8 = __OFADD__(a1, v7);
    a1 += v7;
    if (v8)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

void sub_26C1288BC(_WORD *a1@<X8>)
{
  v2 = 0;
  switch(*(v1 + 80) >> 4)
  {
    case 1:
      *a1 = 10;
      break;
    case 2:
      *a1 = 43;
      break;
    case 3:
      *a1 = 16;
      break;
    case 4:
      *a1 = 51;
      break;
    case 5:
      *a1 = 42;
      break;
    case 6:
      *a1 = 13;
      break;
    case 7:
      *a1 = 20;
      break;
    case 8:
      *a1 = 57;
      break;
    case 9:
      *a1 = 45;
      break;
    case 0xA:
      *a1 = 41;
      break;
    case 0xB:
      *a1 = 58;
      break;
    case 0xC:
      *a1 = -30149;
      break;
    case 0xD:
      v2 = *v1;
      goto LABEL_12;
    default:
LABEL_12:
      *a1 = v2;
      break;
  }
}

uint64_t sub_26C128984(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5) | (*(v1 + 7) << 16);
  v7 = *(v1 + 8);
  v8 = *(v1 + 9) | ((*(v1 + 13) | (*(v1 + 15) << 16)) << 32);
  v9 = *(v1 + 16);
  v10 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  v14 = *(v1 + 5);
  v13 = *(v1 + 6);
  v15 = *(v1 + 7);
  v16 = *(v1 + 8);
  v17 = *(v1 + 80);
  v18 = *(v1 + 9);
  switch(v17 >> 4)
  {
    case 1u:
      MEMORY[0x26D69BEF0](1);
      result = MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v36 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v36)
      {
        v37 = ((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 32);
        do
        {
          v38 = *v37++;
          result = sub_26C1491DC();
          --v36;
        }

        while (v36);
      }

      return result;
    case 2u:
      v33 = v7;
      MEMORY[0x26D69BEF0](2);
      if (v33)
      {
        v21 = 1;
        goto LABEL_23;
      }

      MEMORY[0x26D69BEF0](0);
      result = MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v56 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v56)
      {
        v57 = ((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 33);
        do
        {
          v58 = *(v57 - 1);
          v59 = *v57;
          v57 += 2;
          sub_26C1491CC();
          result = sub_26C1491CC();
          --v56;
        }

        while (v56);
      }

      return result;
    case 3u:
      v34 = v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40);
      MEMORY[0x26D69BEF0](3);
      if (v9)
      {
        MEMORY[0x26D69BEF0](1);

        return sub_26C148F4C();
      }

      else
      {
        MEMORY[0x26D69BEF0](0);
        result = MEMORY[0x26D69BEF0](*(v34 + 16));
        v60 = *(v34 + 16);
        if (v60)
        {
          v61 = (v34 + 40);
          do
          {
            v62 = *(v61 - 1);
            v63 = *v61;

            sub_26C148F4C();

            v61 += 2;
            --v60;
          }

          while (v60);
        }
      }

      return result;
    case 4u:
      v100 = v11;
      v22 = v7;
      MEMORY[0x26D69BEF0](4);
      v23 = (v10 >> 52) & 3;
      if (v23)
      {
        if (v23 != 1)
        {
          v47 = 2;
          goto LABEL_79;
        }

        v24 = v22 | (v8 << 8);
        v25 = v10 & 0xFFFFFFFFFFFFFFLL;
        MEMORY[0x26D69BEF0](1);
        sub_26C1491DC();
        v26 = v25 >> 54;
        if ((v25 >> 54) > 1)
        {
          if (v26 == 2)
          {
            v27 = *(v24 + 24);
          }

          else
          {
            v27 = 0;
          }
        }

        else if (v26)
        {
          v27 = (v8 >> 24);
        }

        else
        {
          v27 = BYTE5(v25);
        }

        result = v100;
        if (v27 < v100)
        {
          goto LABEL_141;
        }

        goto LABEL_97;
      }

      MEMORY[0x26D69BEF0](0);
      return sub_26C12A6A8(a1, v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40));
    case 5u:
      MEMORY[0x26D69BEF0](5);
      if (v5)
      {
        return sub_26C1491CC();
      }

      sub_26C1491CC();
      return sub_26C1491EC();
    case 6u:
      MEMORY[0x26D69BEF0](6);
      result = MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v43 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v43)
      {
        v44 = ((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 32);
        do
        {
          v45 = *v44++;
          result = sub_26C1491DC();
          --v43;
        }

        while (v43);
      }

      return result;
    case 7u:
      v35 = v7;
      MEMORY[0x26D69BEF0](7);
      if (v35)
      {
        goto LABEL_29;
      }

      MEMORY[0x26D69BEF0](0);
      result = MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v64 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v64)
      {
        v65 = ((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 32);
        do
        {
          v66 = *v65++;
          result = sub_26C1491CC();
          --v64;
        }

        while (v64);
      }

      return result;
    case 8u:
      v48 = (v5 << 32) | (v6 << 40);
      v49 = v2 | (v3 << 16) | (v4 << 24) | v48;
      result = MEMORY[0x26D69BEF0](8);
      v50 = (v8 >> 54) & 3;
      if (((v8 >> 54) & 3) > 1)
      {
        if (v50 == 2)
        {
          v51 = *(v49 + 24);
        }

        else
        {
          v51 = 0;
        }
      }

      else if (v50)
      {
        v51 = v48 >> 32;
      }

      else
      {
        v51 = (((v8 & 0xFFFFFFFFFFFFFFuLL) >> 32) >> 8);
      }

      if (v51 < (v9 | (v10 << 8)))
      {
        goto LABEL_137;
      }

      goto LABEL_97;
    case 9u:
      MEMORY[0x26D69BEF0](9);
      result = MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v30 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v30)
      {
        v31 = ((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 32);
        do
        {
          v32 = *v31++;
          result = sub_26C1491CC();
          --v30;
        }

        while (v30);
      }

      return result;
    case 0xAu:
      v46 = v7;
      MEMORY[0x26D69BEF0](10);
      if (v9)
      {
        v47 = 1;
LABEL_79:
        MEMORY[0x26D69BEF0](v47);
        return sub_26C1491DC();
      }

      else
      {
        MEMORY[0x26D69BEF0](0);
        sub_26C12A598(a1, v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40));

        return sub_26C12A494(a1, v46 | (v8 << 8));
      }

    case 0xBu:
      MEMORY[0x26D69BEF0](11);
      if (v3)
      {
LABEL_29:
        MEMORY[0x26D69BEF0](1);
      }

      else
      {
        v21 = 0;
LABEL_23:
        MEMORY[0x26D69BEF0](v21);
        sub_26C1491CC();
      }

      return sub_26C1491CC();
    case 0xCu:
      v92 = v18;
      v93 = v15;
      v95 = v16;
      v96 = v12;
      v97 = v14;
      v98 = v7;
      v94 = v13;
      v101 = v11;
      MEMORY[0x26D69BEF0](12);
      if (v17)
      {
        v99 = v98 | (v8 << 8);
        MEMORY[0x26D69BEF0](1);
        sub_26C1491DC();
        v28 = (v10 >> 54) & 3;
        if (((v10 >> 54) & 3) > 1)
        {
          if (v28 == 2)
          {
            v29 = *(v99 + 24);
          }

          else
          {
            v29 = 0;
          }
        }

        else if (v28)
        {
          v29 = (v8 >> 24);
        }

        else
        {
          v29 = (((v10 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
        }

        result = v101;
        if (v29 < v101)
        {
          goto LABEL_139;
        }

        v79 = sub_26C14889C();
        v81 = v80;
        sub_26C1488BC();
        sub_26C0BB9B0(v79, v81);
        if (v97 >> 60 == 15)
        {
          sub_26C1491CC();
        }

        else
        {
          sub_26C1491CC();
          v82 = v97 >> 62;
          if ((v97 >> 62) > 1)
          {
            result = v94;
            if (v82 == 2)
            {
              v83 = *(v96 + 24);
            }

            else
            {
              v83 = 0;
            }
          }

          else
          {
            result = v94;
            if (v82)
            {
              v83 = v96 >> 32;
            }

            else
            {
              v83 = BYTE6(v97);
            }
          }

          if (v83 < result)
          {
            goto LABEL_142;
          }

          v87 = sub_26C14889C();
          v89 = v88;
          sub_26C1488BC();
          sub_26C0BB9B0(v87, v89);
        }

        if (v95 >> 60 == 15)
        {
          return sub_26C1491CC();
        }

        sub_26C1491CC();
        v90 = v95 >> 62;
        if ((v95 >> 62) > 1)
        {
          result = v92;
          if (v90 == 2)
          {
            v91 = *(v93 + 24);
          }

          else
          {
            v91 = 0;
          }
        }

        else
        {
          result = v92;
          if (v90)
          {
            v91 = v93 >> 32;
          }

          else
          {
            v91 = BYTE6(v95);
          }
        }

        if (v91 < result)
        {
          __break(1u);
          goto LABEL_136;
        }

        goto LABEL_97;
      }

      v52 = (v5 << 16) & 0xFFFF000000FFFFFFLL | ((v6 & 0xFFFFFF) << 24);
      v53 = v2 | ((v3 | (v4 << 8) | v52) << 16);
      result = MEMORY[0x26D69BEF0](0);
      v54 = (v8 >> 54) & 3;
      if (((v8 >> 54) & 3) > 1)
      {
        v55 = 0;
        if (v54 == 2)
        {
          v55 = *(v53 + 24);
        }
      }

      else if (v54)
      {
        v55 = (v52 >> 16);
      }

      else
      {
        v55 = (((v8 & 0xFFFFFFFFFFFFFFuLL) >> 32) >> 8);
      }

      if (v55 < (v9 | (v10 << 8)))
      {
        goto LABEL_138;
      }

      v71 = sub_26C14889C();
      v73 = v72;
      sub_26C1488BC();
      sub_26C0BB9B0(v71, v73);
      v74 = v96 >> 62;
      if ((v96 >> 62) > 1)
      {
        result = v97;
        if (v74 == 2)
        {
          v75 = *(v101 + 24);
        }

        else
        {
          v75 = 0;
        }
      }

      else
      {
        result = v97;
        if (v74)
        {
          v75 = v101 >> 32;
        }

        else
        {
          v75 = BYTE6(v96);
        }
      }

      if (v75 >= result)
      {
        v84 = sub_26C14889C();
        v86 = v85;
        sub_26C1488BC();
        sub_26C0BB9B0(v84, v86);
        return sub_26C12A6A8(a1, v94);
      }

      goto LABEL_140;
    case 0xDu:
      v39 = v11;
      v40 = v7 | (v8 << 8);
      MEMORY[0x26D69BEF0](13);
      sub_26C1491DC();
      v41 = (v10 >> 54) & 3;
      if (((v10 >> 54) & 3) > 1)
      {
        if (v41 != 2)
        {
          goto LABEL_92;
        }

        v42 = *(v40 + 24);
      }

      else if (v41)
      {
        v42 = (v8 >> 24);
      }

      else
      {
        v42 = (((v10 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
      }

      goto LABEL_93;
    default:
      MEMORY[0x26D69BEF0](0);
      if ((~v8 & 0xF0000000000000) == 0)
      {
        return MEMORY[0x26D69BEF0](1);
      }

      v67 = (v5 << 32) | (v6 << 40);
      v68 = v2 | (v3 << 16) | (v4 << 24) | v67;
      v39 = v8 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x26D69BEF0](0);
      v69 = (v8 & 0xFFFFFFFFFFFFFFuLL) >> 54;
      if (v69 > 1)
      {
        v70 = 0;
        if (v69 == 2)
        {
          v70 = *(v68 + 24);
        }
      }

      else if (v69)
      {
        v70 = v67 >> 32;
      }

      else
      {
        v70 = BYTE5(v39);
      }

      if (v70 >= (v9 | (v10 << 8)))
      {
        goto LABEL_97;
      }

      __break(1u);
LABEL_92:
      v42 = 0;
LABEL_93:
      result = v39;
      if (v42 < v39)
      {
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
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
      }

      else
      {
LABEL_97:
        v76 = sub_26C14889C();
        v78 = v77;
        sub_26C1488BC();

        return sub_26C0BB9B0(v76, v78);
      }

      return result;
  }
}

uint64_t sub_26C1292DC()
{
  sub_26C1491AC();
  sub_26C128984(v1);
  return sub_26C14920C();
}

uint64_t sub_26C129320()
{
  sub_26C1491AC();
  sub_26C128984(v1);
  return sub_26C14920C();
}

unint64_t sub_26C129364()
{
  result = qword_28047ADD8;
  if (!qword_28047ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADD8);
  }

  return result;
}

uint64_t sub_26C1293B8(uint64_t *a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9) | ((*(a2 + 13) | (*(a2 + 15) << 16)) << 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17) | ((*(a2 + 21) | (*(a2 + 23) << 16)) << 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 80);
  switch(v9 >> 4)
  {
    case 1u:
      result = sub_26C13F30C(v3);
      goto LABEL_56;
    case 2u:
      result = sub_26C12B460(v3, v4 & 1);
      goto LABEL_56;
    case 3u:
      result = sub_26C12C82C(v3, v4 | (v5 << 8), v6 & 1);
      goto LABEL_56;
    case 4u:
      v18 = (v7 >> 52) & 3;
      if (!v18)
      {
        v34 = *a1;
        v35 = a1[1];
        v36 = v35 >> 62;
        v37 = *a2;
        if ((v35 >> 62) > 1)
        {
          if (v36 == 2)
          {
            v40 = *(v34 + 24);
          }

          else
          {
            v40 = 0;
          }
        }

        else
        {
          v38 = BYTE6(v35);
          v39 = v34 >> 32;
          if (v36)
          {
            v40 = v39;
          }

          else
          {
            v40 = v38;
          }
        }

        LOWORD(v54) = 0;
        v58 = MEMORY[0x277D838B0];
        *&v59 = MEMORY[0x277CC9C18];
        v55 = &v54;
        v56 = (&v54 + 2);
        v48 = __swift_project_boxed_opaque_existential_1(&v55, MEMORY[0x277D838B0]);
        v50 = *v48;
        v49 = v48[1];
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v55);
        v51 = sub_26C12882C(0, v37);
        if ((v51 & 0x8000000000000000) != 0)
        {
LABEL_58:
          __break(1u);
        }

        else
        {
          v52 = v51;
          if (!(v51 >> 16))
          {
            sub_26C10064C(v51, v40);
            result = v52 + 2;
            goto LABEL_56;
          }
        }

        __break(1u);
        goto LABEL_60;
      }

      if (v18 == 1)
      {
        v55 = *a2;
        v56 = (v4 | (v5 << 8));
        v57 = (v7 << 8) & 0xCFFFFFFFFFFFFFFFLL | v6;
        v58 = v8;
        result = sub_26C140E28(&v55);
      }

      else
      {
LABEL_25:
        LOWORD(v54) = bswap32(v3) >> 16;
        v17 = MEMORY[0x277D838B0];
        v58 = MEMORY[0x277D838B0];
        *&v59 = MEMORY[0x277CC9C18];
        v55 = &v54;
        v56 = (&v54 + 2);
LABEL_26:
        v28 = __swift_project_boxed_opaque_existential_1(&v55, v17);
        v30 = *v28;
        v29 = v28[1];
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v55);
        result = 2;
      }

LABEL_56:
      v53 = *MEMORY[0x277D85DE8];
      return result;
    case 5u:
      if ((v3 & 0x100000000) != 0)
      {
        result = 0;
      }

      else
      {
        v54 = bswap32(v3);
        v58 = MEMORY[0x277D838B0];
        *&v59 = MEMORY[0x277CC9C18];
        v55 = &v54;
        v56 = &v55;
        v20 = __swift_project_boxed_opaque_existential_1(&v55, MEMORY[0x277D838B0]);
        v22 = *v20;
        v21 = v20[1];
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v55);
        result = 4;
      }

      goto LABEL_56;
    case 6u:
      result = sub_26C12C504(v3);
      goto LABEL_56;
    case 7u:
      result = sub_26C12BD34(v3, v4 & 1);
      goto LABEL_56;
    case 8u:
      v55 = *a2;
      LOBYTE(v56) = v4;
      *(&v56 + 1) = v5;
      HIBYTE(v56) = BYTE6(v5);
      *(&v56 + 5) = WORD2(v5);
      LOBYTE(v57) = v6;
      *(&v57 + 1) = v7;
      HIBYTE(v57) = BYTE6(v7);
      *(&v57 + 5) = WORD2(v7);
      result = sub_26C125EC8(&v55);
      goto LABEL_56;
    case 9u:
      result = sub_26C1416EC(v3);
      goto LABEL_56;
    case 0xAu:
      if (v6)
      {
        goto LABEL_25;
      }

      result = sub_26C127150(v3, v4 | (v5 << 8));
      goto LABEL_56;
    case 0xBu:
      if ((v3 & 0x10000) == 0)
      {
        LOBYTE(v54) = *a2;
        v11 = MEMORY[0x277D838B0];
        v12 = MEMORY[0x277CC9C18];
        v58 = MEMORY[0x277D838B0];
        *&v59 = MEMORY[0x277CC9C18];
        v55 = &v54;
        v56 = (&v54 + 1);
        v13 = BYTE1(v3);
        v14 = __swift_project_boxed_opaque_existential_1(&v55, MEMORY[0x277D838B0]);
        v16 = *v14;
        v15 = v14[1];
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v55);
        LOBYTE(v54) = v13;
        v58 = v11;
        *&v59 = v12;
        v55 = &v54;
        v56 = (&v54 + 1);
        v17 = v11;
        goto LABEL_26;
      }

      LOBYTE(v54) = *a2;
      v58 = MEMORY[0x277D838B0];
      *&v59 = MEMORY[0x277CC9C18];
      v55 = &v54;
      v56 = (&v54 + 1);
      v31 = __swift_project_boxed_opaque_existential_1(&v55, MEMORY[0x277D838B0]);
      v33 = *v31;
      v32 = v31[1];
      sub_26C14888C();
      __swift_destroy_boxed_opaque_existential_1(&v55);
      result = 1;
      goto LABEL_56;
    case 0xCu:
      v55 = *a2;
      LOBYTE(v56) = v4;
      *(&v56 + 1) = v5;
      HIBYTE(v56) = BYTE6(v5);
      *(&v56 + 5) = WORD2(v5);
      LOBYTE(v57) = v6;
      *(&v57 + 1) = v7;
      HIBYTE(v57) = BYTE6(v7);
      *(&v57 + 5) = WORD2(v7);
      v58 = v8;
      v19 = *(a2 + 48);
      v59 = *(a2 + 32);
      v60 = v19;
      v61 = *(a2 + 64);
      v62 = v9 & 0xF;
      result = sub_26C12D7B8(&v55);
      goto LABEL_56;
    case 0xDu:
      v23 = *(a2 + 8) | (v5 << 8);
      v24 = (v7 >> 54) & 3;
      if (((v7 >> 54) & 3) > 1)
      {
        if (v24 == 2)
        {
          v27 = *((*(a2 + 8) | (v5 << 8)) + 0x10);
          v26 = *(v23 + 24);
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }
      }

      else
      {
        v25 = (v5 >> 24);
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = (((v7 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
        }

        if (v24)
        {
          v27 = v23;
        }

        else
        {
          v27 = 0;
        }
      }

      if (v26 >= v8 && v26 >= v27)
      {
        v41 = sub_26C14889C();
        v43 = v42;
        sub_26C1488CC();
        v44 = v43;
        v45 = v43 >> 62;
        if ((v43 >> 62) > 1)
        {
          if (v45 != 2)
          {
            sub_26C0BB9B0(v41, v43);
            result = 0;
            goto LABEL_56;
          }

          v47 = *(v41 + 16);
          v46 = *(v41 + 24);
          sub_26C0BB9B0(v41, v44);
          result = v46 - v47;
          if (!__OFSUB__(v46, v47))
          {
            goto LABEL_56;
          }

          __break(1u);
        }

        else if (!v45)
        {
          sub_26C0BB9B0(v41, v43);
          result = BYTE6(v43);
          goto LABEL_56;
        }

        sub_26C0BB9B0(v41, v44);
        if (!__OFSUB__(HIDWORD(v41), v41))
        {
          result = HIDWORD(v41) - v41;
          goto LABEL_56;
        }

LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_58;
    default:
      v55 = *a2;
      LOBYTE(v56) = v4;
      *(&v56 + 1) = v5;
      HIBYTE(v56) = BYTE6(v5);
      *(&v56 + 5) = WORD2(v5);
      LOBYTE(v57) = v6;
      *(&v57 + 1) = v7;
      HIBYTE(v57) = BYTE6(v7);
      *(&v57 + 5) = WORD2(v7);
      result = sub_26C13F480(&v55);
      goto LABEL_56;
  }
}

void sub_26C1298E0(uint64_t *a1@<X0>, unsigned __int16 a2@<W1>, unsigned __int8 a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v117 = *MEMORY[0x277D85DE8];
  if (a2 > 0x29u)
  {
    if (a2 > 0x32u)
    {
      if (a2 <= 0x39u)
      {
        if (a2 == 51)
        {
          LOBYTE(v106) = a3;
          sub_26C1408A8(&v106, a4 & 1, &v107, &v111);
          if (!v6)
          {
            v27 = v112;
            *a6 = v111;
            *(a6 + 16) = v27;
            *(a6 + 80) = 64;
            goto LABEL_143;
          }

          goto LABEL_43;
        }

        if (a2 == 57)
        {
          LOBYTE(v106) = a3;
          sub_26C12601C(&v106, &v107, &v111);
          if (!v6)
          {
            v12 = v112;
            *a6 = v111;
            *(a6 + 16) = v12;
            *(a6 + 80) = 0x80;
            goto LABEL_143;
          }

LABEL_43:
          v35 = v108;
          v36 = v107;
LABEL_53:
          *a5 = v36;
          *(a5 + 16) = v35;
          goto LABEL_143;
        }

        goto LABEL_54;
      }

      if (a2 != 58)
      {
        if (a2 == 35387)
        {
          v109 = &type metadata for SwiftTLSFeatureFlags;
          v110 = sub_26C0ECE20();
          v23 = sub_26C14897C();
          __swift_destroy_boxed_opaque_existential_1(&v107);
          if (v23)
          {
            LOBYTE(v106) = a3;
            sub_26C12E470(&v106, a4 & 1, &v107, &v111);
            if (!v6)
            {
LABEL_31:
              v24 = v116 & 1 | 0xC0;
              v25 = v112;
              *a6 = v111;
              *(a6 + 16) = v25;
              v26 = v114;
              *(a6 + 32) = v113;
              *(a6 + 48) = v26;
              *(a6 + 64) = v115;
              *(a6 + 80) = v24;
              goto LABEL_143;
            }
          }

          else
          {
            LOBYTE(v106) = a3;
            sub_26C12E7B8(&v106, a4 & 1, &v107, &v111);
            if (!v6)
            {
              goto LABEL_31;
            }
          }

          v36 = v107;
          v35 = v108;
          goto LABEL_53;
        }

LABEL_54:
        v47 = *a1;
        v48 = a1[1];
        v49 = a1[2];
        v50 = v48 >> 62;
        if ((v48 >> 62) > 1)
        {
          if (v50 == 2)
          {
            v52 = *(v47 + 24);
          }

          else
          {
            v52 = 0;
          }
        }

        else
        {
          v51 = BYTE6(v48);
          v52 = v47 >> 32;
          if (!v50)
          {
            v52 = v51;
          }
        }

        if (!__OFSUB__(v52, v49))
        {
          sub_26C0DE248(v52 - v49, &v111);
          v55 = *(&v111 + 1);
          if (*(&v111 + 1) >> 60 != 15)
          {
            v56 = v112;
            v57 = v111;
            *a6 = a2;
            *(a6 + 8) = v57;
            *(a6 + 16) = v55;
            *(a6 + 24) = v56;
            *(a6 + 80) = -48;
            goto LABEL_143;
          }

          __break(1u);
          return;
        }

LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      LOBYTE(v106) = a3;
      sub_26C1266F4(&v106, &v111, &v107);
      if (!v6)
      {
        v28 = BYTE2(v107);
        *a6 = v107;
        *(a6 + 2) = v28;
        *(a6 + 80) = -80;
        goto LABEL_143;
      }

LABEL_52:
      v35 = v112;
      v36 = v111;
      goto LABEL_53;
    }

    if (a2 != 42)
    {
      if (a2 == 43)
      {
        LOBYTE(v107) = a3;
        v33 = sub_26C12B630(&v107, &v111);
        if (!v6)
        {
          LOBYTE(v106) = v34 & 1;
          *a6 = v33;
          *(a6 + 8) = v34 & 1;
          *(a6 + 80) = 32;
          goto LABEL_143;
        }
      }

      else
      {
        if (a2 != 45)
        {
          goto LABEL_54;
        }

        LOBYTE(v107) = a3;
        v18 = sub_26C141844(&v107, &v111);
        if (!v6)
        {
          *a6 = v18;
          *(a6 + 80) = -112;
          goto LABEL_143;
        }
      }

      goto LABEL_52;
    }

    LODWORD(v29) = 0;
    v30 = 1;
    if (a3 != 8)
    {
      if (a3 == 4)
      {
        v29 = sub_26C13675C();
        if ((v29 & 0x100000000) != 0)
        {
          v111 = 0uLL;
          v32 = 2;
          LOBYTE(v112) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          v31 = 0;
          goto LABEL_85;
        }

        v30 = 0;
      }

      else if (a3 != 1)
      {
        v31 = a3 | 0x330000;
        v111 = v31;
        LOBYTE(v112) = 0;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v32 = 0;
LABEL_85:
        *a5 = v31;
        *(a5 + 8) = 0;
        *(a5 + 16) = v32;
        goto LABEL_143;
      }
    }

    LOBYTE(v111) = v30;
    *a6 = v29;
    *(a6 + 4) = v30;
    *(a6 + 80) = 80;
    goto LABEL_143;
  }

  if (a2 > 0xFu)
  {
    switch(a2)
    {
      case 0x10u:
        LOBYTE(v107) = a3;
        v37 = sub_26C12CA78(&v107, &v111);
        if (!v6)
        {
          LOBYTE(v106) = v39 & 1;
          *a6 = v37;
          *(a6 + 8) = v38;
          *(a6 + 16) = v39 & 1;
          *(a6 + 80) = 48;
          goto LABEL_143;
        }

        break;
      case 0x14u:
        LOBYTE(v107) = a3;
        v45 = sub_26C12BED8(&v107, &v111);
        if (!v6)
        {
          LOBYTE(v106) = v46 & 1;
          *a6 = v45;
          *(a6 + 8) = v46 & 1;
          *(a6 + 80) = 112;
          goto LABEL_143;
        }

        break;
      case 0x29u:
        LOBYTE(v107) = a3;
        v19 = sub_26C127318(&v107, a4 & 1, &v111);
        if (!v6)
        {
          LOBYTE(v106) = v21 & 1;
          *a6 = v19;
          *(a6 + 8) = v20;
          *(a6 + 16) = v21 & 1;
          *(a6 + 80) = -96;
          goto LABEL_143;
        }

        break;
      default:
        goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (!a2)
  {
    LOBYTE(v106) = a3;
    sub_26C13F7CC(&v106, &v107, &v111);
    if (!v6)
    {
      v53 = v112;
      *a6 = v111;
      *(a6 + 16) = v53;
      *(a6 + 80) = 0;
      goto LABEL_143;
    }

    goto LABEL_43;
  }

  if (a2 == 10)
  {
    if (a3 != 8 && a3 != 1)
    {
      v44 = a3 | 0xA0000;
      v111 = v44;
      LOBYTE(v112) = 0;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v17 = 0;
      goto LABEL_65;
    }

    v41 = *a1;
    v40 = a1[1];
    v42 = a1[2];
    sub_26C0BBAA4(*a1, v40);
    v43 = sub_26C1365D4();
    if ((v43 & 0x10000) != 0 || (sub_26C0DE248(v43, &v111), *(&v111 + 1) >> 60 == 15))
    {
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v41;
      a1[1] = v40;
      a1[2] = v42;
      v111 = 0uLL;
      v17 = 2;
      LOBYTE(v112) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v44 = 0;
LABEL_65:
      *a5 = v44;
      goto LABEL_68;
    }

    v92 = v42;
    v94 = v41;
    v96 = v40;
    v98 = a6;
    v58 = *(&v111 + 1) >> 62;
    v59 = v111;
    v60 = v112;
    v61 = v111 >> 32;
    v100 = v111 >> 32;
    if ((*(&v111 + 1) >> 62) > 1)
    {
      if (v58 == 2)
      {
        v61 = *(v111 + 24);
      }

      else
      {
        v61 = 0;
      }
    }

    else if (!v58)
    {
      v61 = BYTE14(v111);
    }

    v102 = BYTE14(v111);
    v104 = *(&v111 + 1);
    v66 = __OFSUB__(v61, v112);
    v67 = v61 - v112;
    if (v66)
    {
      goto LABEL_149;
    }

    v68 = sub_26C0CE388(0, (v67 / 2) & ~((v67 + (v67 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
    v106 = 0;
    v69 = v60 + 2;
    if (__OFADD__(v60, 2))
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v70 = v68;
    while (1)
    {
      if (v58 > 1)
      {
        v71 = v104;
        if (v58 != 2)
        {
          if (v69 >= 1)
          {
            v76 = 0;
            goto LABEL_133;
          }

          goto LABEL_102;
        }

        v72 = *(v59 + 24);
      }

      else
      {
        v72 = v102;
        v71 = v104;
        if (v58)
        {
          v72 = v100;
        }
      }

      if (v72 < v69)
      {
        v76 = v102;
        if (v58)
        {
          v76 = v100;
          if (v58 == 2)
          {
            v76 = *(v59 + 24);
          }
        }

LABEL_133:
        if (!__OFSUB__(v76, v60))
        {
          if (v76 != v60)
          {
            v111 = xmmword_26C149860;
            v17 = 2;
            LOBYTE(v112) = 2;
            v89 = v71;
            sub_26C0BBAF8();
            swift_willThrowTypedImpl();

            sub_26C0BB9B0(v59, v89);
            sub_26C0BB9B0(*a1, a1[1]);
            *a1 = v94;
            a1[1] = v96;
            a1[2] = v92;
            v111 = xmmword_26C149860;
            LOBYTE(v112) = 2;
            swift_willThrowTypedImpl();
            v44 = 1;
            goto LABEL_65;
          }

          sub_26C0BB9B0(v59, v71);
          sub_26C0BB9B0(v94, v96);
          v87 = v98;
          *v98 = v70;
          v88 = 16;
LABEL_142:
          *(v87 + 80) = v88;
          goto LABEL_143;
        }

LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
      }

LABEL_102:
      *&v111 = v59;
      *(&v111 + 1) = v71;
      if (v69 < v60)
      {
        goto LABEL_146;
      }

      *&v107 = v60;
      *(&v107 + 1) = v69;
      sub_26C0BBAA4(v59, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
      sub_26C0BE710();
      sub_26C0BE764();
      sub_26C14878C();
      sub_26C0BB9B0(v111, *(&v111 + 1));
      v73 = v106;
      v75 = *(v70 + 2);
      v74 = *(v70 + 3);
      if (v75 >= v74 >> 1)
      {
        v70 = sub_26C0CE388((v74 > 1), v75 + 1, 1, v70);
      }

      *(v70 + 2) = v75 + 1;
      *&v70[2 * v75 + 32] = bswap32(v73) >> 16;
      v106 = 0;
      v60 = v69;
      v66 = __OFADD__(v69, 2);
      v69 += 2;
      if (v66)
      {
        goto LABEL_144;
      }
    }
  }

  if (a2 != 13)
  {
    goto LABEL_54;
  }

  if (a3 != 13 && a3 != 1)
  {
    v54 = a3 | 0xD0000;
    v111 = v54;
    LOBYTE(v112) = 0;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v17 = 0;
    goto LABEL_67;
  }

  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  sub_26C0BBAA4(*a1, v13);
  v16 = sub_26C1365D4();
  if ((v16 & 0x10000) != 0 || (sub_26C0DE248(v16, &v111), *(&v111 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v14;
    a1[1] = v13;
    a1[2] = v15;
    v111 = 0uLL;
    v17 = 2;
    LOBYTE(v112) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    *a5 = 0;
    goto LABEL_68;
  }

  v93 = v15;
  v95 = v14;
  v97 = v13;
  v99 = a6;
  v62 = *(&v111 + 1) >> 62;
  v63 = v111;
  v64 = v112;
  v65 = v111 >> 32;
  v101 = v111 >> 32;
  if ((*(&v111 + 1) >> 62) > 1)
  {
    if (v62 == 2)
    {
      v65 = *(v111 + 24);
    }

    else
    {
      v65 = 0;
    }
  }

  else if (!v62)
  {
    v65 = BYTE14(v111);
  }

  v103 = BYTE14(v111);
  v105 = *(&v111 + 1);
  v66 = __OFSUB__(v65, v112);
  v77 = v65 - v112;
  if (v66)
  {
    goto LABEL_150;
  }

  v78 = sub_26C0CE358(0, (v77 / 2) & ~((v77 + (v77 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
  v106 = 0;
  v79 = v64 + 2;
  if (__OFADD__(v64, 2))
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v80 = v78;
  while (v62 > 1)
  {
    v81 = v105;
    if (v62 == 2)
    {
      v82 = *(v63 + 24);
      goto LABEL_120;
    }

    if (v79 >= 1)
    {
      v86 = 0;
      goto LABEL_138;
    }

LABEL_123:
    *&v111 = v63;
    *(&v111 + 1) = v81;
    if (v79 < v64)
    {
      goto LABEL_147;
    }

    *&v107 = v64;
    *(&v107 + 1) = v79;
    sub_26C0BBAA4(v63, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v111, *(&v111 + 1));
    v83 = v106;
    v85 = *(v80 + 2);
    v84 = *(v80 + 3);
    if (v85 >= v84 >> 1)
    {
      v80 = sub_26C0CE358((v84 > 1), v85 + 1, 1, v80);
    }

    *(v80 + 2) = v85 + 1;
    *&v80[2 * v85 + 32] = bswap32(v83) >> 16;
    v106 = 0;
    v64 = v79;
    v66 = __OFADD__(v79, 2);
    v79 += 2;
    if (v66)
    {
      goto LABEL_145;
    }
  }

  v82 = v103;
  v81 = v105;
  if (v62)
  {
    v82 = v101;
  }

LABEL_120:
  if (v82 >= v79)
  {
    goto LABEL_123;
  }

  v86 = v103;
  if (v62)
  {
    v86 = v101;
    if (v62 == 2)
    {
      v86 = *(v63 + 24);
    }
  }

LABEL_138:
  if (__OFSUB__(v86, v64))
  {
    goto LABEL_152;
  }

  if (v86 == v64)
  {
    sub_26C0BB9B0(v63, v81);
    sub_26C0BB9B0(v95, v97);
    v87 = v99;
    *v99 = v80;
    v88 = 96;
    goto LABEL_142;
  }

  v111 = xmmword_26C149860;
  v17 = 2;
  LOBYTE(v112) = 2;
  v91 = v81;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();

  sub_26C0BB9B0(v63, v91);
  sub_26C0BB9B0(*a1, a1[1]);
  *a1 = v95;
  a1[1] = v97;
  a1[2] = v93;
  v111 = xmmword_26C149860;
  LOBYTE(v112) = 2;
  swift_willThrowTypedImpl();
  v54 = 1;
LABEL_67:
  *a5 = v54;
LABEL_68:
  *(a5 + 8) = 0;
  *(a5 + 16) = v17;
LABEL_143:
  v90 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26C12A494(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D69BEF0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    while (1)
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = v7 >> 62;
      if ((v7 >> 62) <= 1)
      {
        break;
      }

      if (v9 == 2)
      {
        v10 = *(v6 + 24);
LABEL_10:
        result = sub_26C0BBAA4(*(v5 - 2), *(v5 - 1));
        if (v10 < v8)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v8 > 0)
      {
LABEL_15:
        __break(1u);
        return result;
      }

LABEL_13:
      v5 += 3;
      v11 = sub_26C14889C();
      v13 = v12;
      sub_26C1488BC();
      sub_26C0BB9B0(v11, v13);
      result = sub_26C0BB9B0(v6, v7);
      if (!--v3)
      {
        return result;
      }
    }

    if (!v9)
    {
      if (BYTE6(v7) < v8)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v10 = v6 >> 32;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_26C12A598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D69BEF0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    while (1)
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = v7 >> 62;
      if ((v7 >> 62) <= 1)
      {
        break;
      }

      if (v10 == 2)
      {
        v11 = *(v6 + 24);
LABEL_10:
        result = sub_26C0BBAA4(*(v5 - 3), *(v5 - 2));
        if (v11 < v8)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v8 > 0)
      {
LABEL_15:
        __break(1u);
        return result;
      }

LABEL_13:
      v5 += 8;
      v12 = sub_26C14889C();
      v14 = v13;
      sub_26C1488BC();
      sub_26C0BB9B0(v12, v14);
      sub_26C1491EC();
      result = sub_26C0BB9B0(v6, v7);
      if (!--v3)
      {
        return result;
      }
    }

    if (!v10)
    {
      if (BYTE6(v7) < v8)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v11 = v6 >> 32;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_26C12A6A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D69BEF0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    while (1)
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 12);
      result = sub_26C1491DC();
      v10 = v7 >> 62;
      if ((v7 >> 62) <= 1)
      {
        break;
      }

      if (v10 == 2)
      {
        v11 = *(v6 + 24);
LABEL_10:
        result = sub_26C0BBAA4(v6, v7);
        if (v11 < v8)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v8 > 0)
      {
LABEL_15:
        __break(1u);
        return result;
      }

LABEL_13:
      v5 += 4;
      v12 = sub_26C14889C();
      v14 = v13;
      sub_26C1488BC();
      sub_26C0BB9B0(v12, v14);
      result = sub_26C0BB9B0(v6, v7);
      if (!--v3)
      {
        return result;
      }
    }

    if (!v10)
    {
      if (BYTE6(v7) < v8)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v11 = v6 >> 32;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_26C12A7B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x26D69BEF0](v4);
  if (v4)
  {
    v6 = 0;
    v27 = a2 + 32;
    while (1)
    {
      v7 = (v27 + 32 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        v11 = v10 == 2 ? *(v8 + 24) : 0;
      }

      else
      {
        v11 = v10 ? v8 >> 32 : BYTE6(v9);
      }

      if (v11 < v7[2])
      {
        break;
      }

      v12 = v7[3];
      sub_26C0BBAA4(*v7, v7[1]);

      v13 = sub_26C14889C();
      v15 = v14;
      sub_26C1488BC();
      sub_26C0BB9B0(v13, v15);
      MEMORY[0x26D69BEF0](*(v12 + 16));
      v16 = *(v12 + 16);
      if (v16)
      {
        v17 = v16 - 1;
        for (i = 32; ; i += 88)
        {
          v19 = *(v12 + i + 16);
          v29[0] = *(v12 + i);
          v29[1] = v19;
          v20 = *(v12 + i + 32);
          v21 = *(v12 + i + 48);
          v22 = *(v12 + i + 64);
          v30 = *(v12 + i + 80);
          v29[3] = v21;
          v29[4] = v22;
          v29[2] = v20;
          v23 = *(v12 + i + 16);
          v33 = *(v12 + i);
          v34 = v23;
          v24 = *(v12 + i + 32);
          v25 = *(v12 + i + 48);
          v26 = *(v12 + i + 64);
          v38 = *(v12 + i + 80);
          v36 = v25;
          v37 = v26;
          v35 = v24;
          sub_26C0BE40C(v29, v28);
          sub_26C128984(a1);
          v31[2] = v35;
          v31[3] = v36;
          v31[4] = v37;
          v32 = v38;
          v31[0] = v33;
          v31[1] = v34;
          sub_26C0BE468(v31);
          if (!v17)
          {
            break;
          }

          --v17;
        }
      }

      sub_26C0BB9B0(v8, v9);

      if (++v6 == v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C12A998(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *&v61[16] = a1[2];
  *&v61[32] = v2;
  v4 = a1[3];
  *&v61[48] = a1[4];
  v5 = a1[1];
  v60 = *a1;
  *v61 = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v64 = *(a2 + 32);
  v65 = v6;
  v8 = *(a2 + 48);
  v66 = *(a2 + 64);
  v9 = *(a2 + 16);
  *v63 = *a2;
  *&v63[16] = v9;
  v68[2] = *&v61[16];
  v68[3] = v4;
  v68[4] = a1[4];
  v68[0] = v60;
  v68[1] = v3;
  v74 = *(a2 + 64);
  v73 = v8;
  v62 = *(a1 + 80);
  v67 = *(a2 + 80);
  v69 = *(a1 + 80);
  v75 = *(a2 + 80);
  v72 = v64;
  v70 = *v63;
  v71 = v7;
  v10 = v60;
  v11 = *(&v60 + 5) | (BYTE7(v60) << 16);
  v12 = BYTE8(v60);
  v13 = *(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32);
  switch(v62 >> 4)
  {
    case 1:
      if ((v67 & 0xF0) != 0x10)
      {
        goto LABEL_60;
      }

      v23 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
      v24 = *(v23 + 0x10);
      if (v24 != *(*v63 + 16))
      {
        goto LABEL_103;
      }

      if (!v24 || v23 == *v63)
      {
        goto LABEL_98;
      }

      v25 = (v23 + 32);
      v26 = (*v63 + 32);
      do
      {
        if (*v25 != *v26)
        {
          goto LABEL_103;
        }

        ++v25;
        ++v26;
        --v24;
      }

      while (v24);
      goto LABEL_98;
    case 2:
      if ((v67 & 0xF0) != 0x20)
      {
        goto LABEL_35;
      }

      LOWORD(v19) = *v63;
      if (BYTE8(v60))
      {
        if ((v63[8] & 1) == 0)
        {
          goto LABEL_103;
        }

        goto LABEL_64;
      }

      if ((v63[8] & 1) == 0)
      {
        v36 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
        v37 = *(v36 + 0x10);
        if (v37 == *(*v63 + 16))
        {
          if (!v37 || v36 == *v63)
          {
            goto LABEL_98;
          }

          v38 = (v36 + 33);
          v39 = (*v63 + 33);
          while (*(v38 - 1) == *(v39 - 1))
          {
            v40 = *v38;
            v38 += 2;
            if (v40 != *v39)
            {
              break;
            }

            v39 += 2;
            if (!--v37)
            {
              goto LABEL_98;
            }
          }
        }
      }

      goto LABEL_103;
    case 3:
      if ((v67 & 0xF0) != 0x30)
      {
        sub_26C0FF14C();
        goto LABEL_104;
      }

      v20 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
      if ((v5 & 1) == 0)
      {
        if (v63[16])
        {
          goto LABEL_103;
        }

        v21 = sub_26C0BC79C(v20, *v63);
        goto LABEL_90;
      }

      if ((v63[16] & 1) == 0)
      {
        goto LABEL_103;
      }

      if (__PAIR128__(BYTE8(v60) | (v13 << 8), v20) != *v63)
      {
        v21 = sub_26C14912C();
LABEL_90:
        v41 = v21;
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        goto LABEL_110;
      }

LABEL_98:
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(v63, &v57);
      sub_26C12B3E4(v68);
      v27 = 1;
      return v27 & 1;
    case 4:
      if ((v67 & 0xF0) == 0x40)
      {
        LODWORD(v51) = v60;
        BYTE4(v51) = BYTE4(v60);
        *(&v51 + 5) = *(&v60 + 5);
        HIBYTE(v51) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
        *(&v51 + 13) = *(&v60 + 13);
        LOBYTE(v52) = v5;
        *(&v52 + 1) = v5 >> 8;
        BYTE7(v52) = (*(&v52 + 1) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
        *(&v52 + 5) = DWORD1(v5) >> 8;
        *(&v52 + 1) = *&v61[8];
        v49 = *v63;
        v50 = *&v63[16];
        sub_26C0BE40C(v63, &v57);
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        v14 = sub_26C141408(&v51, &v49);
        goto LABEL_51;
      }

      sub_26C0FF158(v60, *(&v60 + 1), *v61);
      goto LABEL_104;
    case 5:
      if ((v67 & 0xF0) != 0x50)
      {
        goto LABEL_104;
      }

      sub_26C12B3E4(v68);
      if (BYTE4(v60))
      {
        if (v63[4])
        {
          goto LABEL_111;
        }
      }

      else if ((v63[4] & 1) == 0 && (v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24)) == *v63)
      {
        goto LABEL_111;
      }

      goto LABEL_106;
    case 6:
      if ((v67 & 0xF0) != 0x60)
      {
        goto LABEL_60;
      }

      v28 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
      v29 = *(v28 + 0x10);
      if (v29 != *(*v63 + 16))
      {
        goto LABEL_103;
      }

      if (!v29 || v28 == *v63)
      {
        goto LABEL_98;
      }

      v30 = (v28 + 32);
      v31 = (*v63 + 32);
      while (*v30 == *v31)
      {
        ++v30;
        ++v31;
        if (!--v29)
        {
          goto LABEL_98;
        }
      }

LABEL_103:
      sub_26C0BE40C(&v60, &v57);
LABEL_104:
      sub_26C0BE40C(v63, &v57);
LABEL_105:
      sub_26C12B3E4(v68);
      goto LABEL_106;
    case 7:
      if ((v67 & 0xF0) != 0x70)
      {
LABEL_35:
        sub_26C0B8B24(v60, BYTE8(v60) & 1);
        goto LABEL_104;
      }

      v22 = v63[0];
      if ((BYTE8(v60) & 1) == 0)
      {
        if (v63[8])
        {
          goto LABEL_103;
        }

        v42 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
        v43 = *(v42 + 0x10);
        if (v43 != *(*v63 + 16))
        {
          goto LABEL_103;
        }

        if (v43 && v42 != *v63)
        {
          v44 = (v42 + 32);
          v45 = (*v63 + 32);
          do
          {
            if (*v44 != *v45)
            {
              goto LABEL_103;
            }

            ++v44;
            ++v45;
            --v43;
          }

          while (v43);
        }

        goto LABEL_98;
      }

      if ((v63[8] & 1) == 0)
      {
        goto LABEL_103;
      }

      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(v63, &v57);
      sub_26C12B3E4(v68);
      if (v10 == v22)
      {
        goto LABEL_111;
      }

      goto LABEL_106;
    case 8:
      if ((v67 & 0xF0) == 0x80)
      {
        LODWORD(v51) = v60;
        BYTE4(v51) = BYTE4(v60);
        *(&v51 + 5) = *(&v60 + 5);
        HIBYTE(v51) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
        *(&v51 + 13) = *(&v60 + 13);
        LOBYTE(v52) = v5;
        *(&v52 + 1) = v5 >> 8;
        BYTE7(v52) = (*(&v52 + 1) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
        *(&v52 + 5) = DWORD1(v5) >> 8;
        v49 = *v63;
        *&v50 = *&v63[16];
        sub_26C0BE40C(v63, &v57);
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        v27 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v51, &v49);
        sub_26C12B3E4(v68);
        sub_26C0BB9B0(v49, *(&v49 + 1));
        sub_26C0BB9B0(v51, *(&v51 + 1));
        return v27 & 1;
      }

      v35 = *(&v60 + 1);
      v34 = v60;
      goto LABEL_75;
    case 9:
      if ((v67 & 0xF0) != 0x90)
      {
LABEL_60:

        goto LABEL_104;
      }

      v15 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
      v16 = *(v15 + 0x10);
      if (v16 != *(*v63 + 16))
      {
        goto LABEL_103;
      }

      if (v16 && v15 != *v63)
      {
        v17 = (v15 + 32);
        v18 = (*v63 + 32);
        do
        {
          if (*v17 != *v18)
          {
            goto LABEL_103;
          }

          ++v17;
          ++v18;
          --v16;
        }

        while (v16);
      }

      goto LABEL_98;
    case 0xA:
      if ((v67 & 0xF0) != 0xA0)
      {
        sub_26C10B28C(v60, *(&v60 + 1), v5 & 1);
        goto LABEL_104;
      }

      v19 = *v63;
      if (v5)
      {
        if ((v63[16] & 1) == 0)
        {
          goto LABEL_103;
        }

LABEL_64:
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        sub_26C12B3E4(v68);
        if (v10 != v19)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v63[16])
        {
          goto LABEL_103;
        }

        v47 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
        v48 = *&v63[8];
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        if ((sub_26C0BC888(v47, v19) & 1) == 0)
        {
          goto LABEL_105;
        }

        v41 = sub_26C0BCDF8(v12 | (v13 << 8), v48);
LABEL_110:
        sub_26C12B3E4(v68);
        if ((v41 & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_111;
    case 0xB:
      if ((v67 & 0xF0) != 0xB0)
      {
        goto LABEL_104;
      }

      sub_26C12B3E4(v68);
      if ((BYTE2(v60) & 1) == 0)
      {
        if ((v63[2] & 1) != 0 || v60 != *v63)
        {
          goto LABEL_106;
        }

LABEL_111:
        v27 = 1;
        return v27 & 1;
      }

      if ((v63[2] & 1) != 0 && v60 == v63[0])
      {
        goto LABEL_111;
      }

LABEL_106:
      v27 = 0;
      return v27 & 1;
    case 0xC:
      if ((v67 & 0xF0) == 0xC0)
      {
        LODWORD(v57) = v60;
        BYTE4(v57) = BYTE4(v60);
        *(&v57 + 5) = *(&v60 + 5);
        HIBYTE(v57) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
        *(&v57 + 13) = *(&v60 + 13);
        v58[0] = v5;
        *&v58[1] = v5 >> 8;
        v58[7] = (*&v58[1] | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
        *&v58[5] = DWORD1(v5) >> 8;
        *&v58[8] = *&v61[8];
        *&v58[24] = *&v61[24];
        *&v58[40] = *&v61[40];
        *&v58[56] = *&v61[56];
        v59 = v62 & 0xF;
        v51 = *v63;
        v52 = *&v63[16];
        v53 = v64;
        v54 = v65;
        v55 = v66;
        v56 = v67 & 0xF;
        sub_26C0BE40C(v63, &v49);
        sub_26C0BE40C(&v60, &v49);
        sub_26C0BE40C(&v60, &v49);
        sub_26C0BE40C(v63, &v49);
        v14 = sub_26C131574(&v57, &v51);
        goto LABEL_51;
      }

      v32 = a1[3];
      *&v58[16] = a1[2];
      *&v58[32] = v32;
      *&v58[48] = a1[4];
      v33 = a1[1];
      v57 = *a1;
      *v58 = v33;
      v59 = a1[5] & 0xF;
      sub_26C0FF0B0(&v57, &v51);
      goto LABEL_104;
    case 0xD:
      if ((v67 & 0xF0) != 0xD0)
      {
        v34 = *(&v60 + 1);
        v35 = *v61;
LABEL_75:
        sub_26C0BBAA4(v34, v35);
        goto LABEL_104;
      }

      if (v60 != *v63)
      {
        goto LABEL_103;
      }

      LOBYTE(v51) = BYTE8(v60);
      *(&v51 + 1) = *(&v60 + 9);
      BYTE7(v51) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
      *(&v51 + 5) = *(&v60 + 13);
      BYTE8(v51) = v5;
      *(&v51 + 9) = v5 >> 8;
      HIBYTE(v51) = (*(&v51 + 9) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
      *(&v51 + 13) = DWORD1(v5) >> 8;
      *&v52 = *&v61[8];
      v49 = *&v63[8];
      *&v50 = *&v63[24];
      sub_26C0BE40C(v63, &v57);
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(v63, &v57);
      v14 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v51, &v49);
      goto LABEL_51;
    default:
      if (v67 > 0xFu)
      {
        sub_26C10B340(v60, *(&v60 + 1));
        goto LABEL_104;
      }

      LODWORD(v51) = v60;
      BYTE4(v51) = BYTE4(v60);
      *(&v51 + 5) = *(&v60 + 5);
      HIBYTE(v51) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
      *(&v51 + 13) = *(&v60 + 13);
      LOBYTE(v52) = v5;
      *(&v52 + 1) = v5 >> 8;
      BYTE7(v52) = (*(&v52 + 1) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
      *(&v52 + 5) = DWORD1(v5) >> 8;
      v49 = *v63;
      *&v50 = *&v63[16];
      sub_26C0BE40C(v63, &v57);
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(v63, &v57);
      v14 = sub_26C140410(&v51, &v49);
LABEL_51:
      v27 = v14;
      sub_26C12B3E4(v68);
      sub_26C0BE468(v63);
      sub_26C0BE468(&v60);
      return v27 & 1;
  }
}

uint64_t sub_26C12B3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ADE0, &qword_26C14E958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C12B460(uint64_t a1, char a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v27 = a1;
    v30 = MEMORY[0x277D838B0];
    v31 = MEMORY[0x277CC9C18];
    v28 = &v27;
    v29 = &v28;
    v4 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
    v6 = *v4;
    v5 = v4[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    result = 2;
    goto LABEL_19;
  }

  v8 = *v2;
  v9 = v2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v13 = *(v8 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v9);
    v12 = v8 >> 32;
    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }
  }

  LOBYTE(v27) = 0;
  v14 = MEMORY[0x277D838B0];
  v15 = MEMORY[0x277CC9C18];
  v30 = MEMORY[0x277D838B0];
  v31 = MEMORY[0x277CC9C18];
  v28 = &v27;
  v29 = (&v27 + 1);
  v16 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
  v18 = *v16;
  v17 = v16[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  v20 = 0;
  v21 = a1 + 33;
  do
  {
    v27 = *(v21 - 1);
    v30 = v14;
    v31 = v15;
    v28 = &v27;
    v29 = &v28;
    v22 = __swift_project_boxed_opaque_existential_1(&v28, v14);
    v24 = *v22;
    v23 = v22[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    if (v20 == 0x8000000000000002)
    {
      __break(1u);
LABEL_21:
      __break(1u);
    }

    v21 += 2;
    v20 -= 2;
    --v19;
  }

  while (v19);
  v25 = -v20;
  if (v20 > 0)
  {
    goto LABEL_21;
  }

  if (v25 > 0xFF)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  sub_26C100778(v25, v13);
  result = v25 + 1;
LABEL_19:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C12B630(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  if (v5 != 1)
  {
    if (v5 != 2)
    {
      v12 = v5 | 0x2B0000;
      *a2 = v12;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v24 = v12;
      LOBYTE(v25) = 0;
      goto LABEL_10;
    }

    v6 = sub_26C1365D4();
    if ((v6 & 0x10000) == 0)
    {
      return bswap32(v6) >> 16;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v24 = 0uLL;
    LOBYTE(v25) = 2;
LABEL_10:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v9 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  sub_26C0BBAA4(*v2, v8);
  v11 = sub_26C1368E8();
  if ((v11 & 0x100) != 0 || (sub_26C0DE248(v11, &v22), *(&v22 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v9;
    v2[1] = v8;
    v2[2] = v10;
    goto LABEL_8;
  }

  v24 = v22;
  v25 = v23;
  sub_26C12BA38(&v24, &v26);
  if (v3)
  {
    v13 = *(&v22 + 1);
    v14 = v22;
    v15 = v23;
    v17 = *(&v24 + 1);
    v16 = v24;
LABEL_24:
    sub_26C0BB9B0(v16, v17);
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v9;
    v2[1] = v8;
    v2[2] = v10;
    *&v24 = v14;
    *(&v24 + 1) = v13;
    LOBYTE(v25) = v15;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    return result;
  }

  result = v24;
  v18 = *(&v24 + 1) >> 62;
  if ((*(&v24 + 1) >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v24 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v24 >> 32;
  }

  else
  {
    v19 = BYTE14(v24);
  }

  if (!__OFSUB__(v19, v25))
  {
    if (v19 == v25)
    {
      sub_26C0BB9B0(v24, *(&v24 + 1));
      sub_26C0BB9B0(v9, v8);
      return v26;
    }

    v22 = xmmword_26C149860;
    v15 = 2;
    LOBYTE(v23) = 2;
    v21 = *(&v24 + 1);
    v20 = v24;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    v17 = v21;
    v16 = v20;
    v13 = 0;
    v14 = 1;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}