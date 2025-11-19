uint64_t sub_22CF631C0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v86 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v8 = MEMORY[0x277D84FA0];
    goto LABEL_61;
  }

  v65 = 0;
  v10 = a1 + 56;
  v9 = *(a1 + 56);
  v11 = -1 << *(a1 + 32);
  v70 = ~v11;
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (63 - v11) >> 6;
  v80 = (a2 + 56);

  v17 = 0;
  v72 = v10;
  v71 = v14;
  v74 = v8;
  v73 = v15;
  while (1)
  {
    if (!v13)
    {
      v18 = v17;
      do
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_63;
        }

        if (v19 >= v14)
        {
          goto LABEL_60;
        }

        v13 = *(v10 + 8 * v19);
        ++v18;
      }

      while (!v13);
      v17 = v19;
    }

    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v75 = v17;
    v21 = *(v15 + 48) + 40 * (v20 | (v17 << 6));
    v5 = *v21;
    v22 = *(v21 + 8);
    v2 = *(v21 + 16);
    v23 = *(v21 + 24);
    v3 = *(v21 + 32);
    v24 = *(v8 + 40);
    sub_22D016EAC();

    sub_22D0166DC();
    v77 = v2;
    v78 = v23;
    sub_22D0166DC();
    v76 = v3;
    MEMORY[0x2318C6020](v3);
    v25 = sub_22D016ECC();
    v26 = -1 << *(v8 + 32);
    v10 = v25 & ~v26;
    v6 = v10 >> 6;
    v7 = 1 << v10;
    if (((1 << v10) & v80[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v8 = v74;
    v15 = v73;
    v10 = v72;
    v17 = v75;
    v14 = v71;
  }

  v79 = ~v26;
  v3 = *(v74 + 48);
  while (1)
  {
    v27 = v3 + 40 * v10;
    v28 = *(v27 + 16);
    v2 = *(v27 + 24);
    v4 = *(v27 + 32);
    v29 = *v27 == v5 && *(v27 + 8) == v22;
    if (v29 || (sub_22D016DFC() & 1) != 0)
    {
      if (v28 == v77 && v2 == v78)
      {
        if (v76 == v4)
        {
          break;
        }

        goto LABEL_16;
      }

      if ((sub_22D016DFC() & 1) != 0 && ((v76 ^ v4) & 1) == 0)
      {
        break;
      }
    }

LABEL_16:
    v10 = (v10 + 1) & v79;
    v6 = v10 >> 6;
    v7 = 1 << v10;
    if ((v80[v10 >> 6] & (1 << v10)) == 0)
    {
      goto LABEL_6;
    }
  }

  v5 = v75;
  v83 = v70;
  v84 = v75;
  v85 = v13;
  v4 = v72;
  v2 = v73;
  v82[0] = v73;
  v82[1] = v72;

  v3 = v74;
  v33 = *(v74 + 32);
  v66 = ((1 << v33) + 63) >> 6;
  v16 = 8 * v66;
  if ((v33 & 0x3Fu) > 0xD)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v67 = &v64;
    MEMORY[0x28223BE20](v31, v32);
    v35 = &v64 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v80, v34);
    v36 = *&v35[8 * v6] & ~v7;
    v69 = v35;
    *&v35[8 * v6] = v36;
    v37 = *(v3 + 16) - 1;
    v38 = v71;
LABEL_30:
    v68 = v37;
LABEL_32:
    while (2)
    {
      if (v13)
      {
        v39 = v74;
LABEL_39:
        v42 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v75 = v5;
        v43 = *(v2 + 48) + 40 * (v42 | (v5 << 6));
        v3 = *v43;
        v44 = *(v43 + 8);
        v46 = *(v43 + 16);
        v45 = *(v43 + 24);
        v47 = *(v43 + 32);
        v48 = *(v39 + 40);
        sub_22D016EAC();

        sub_22D0166DC();
        v77 = v46;
        v78 = v45;
        sub_22D0166DC();
        v10 = &v81;
        v76 = v47;
        MEMORY[0x2318C6020](v47);
        v49 = sub_22D016ECC();
        v50 = -1 << *(v39 + 32);
        v51 = v49 & ~v50;
        v6 = v51 >> 6;
        v52 = 1 << v51;
        if (((1 << v51) & v80[v51 >> 6]) == 0)
        {
LABEL_31:

          v2 = v73;
          v4 = v72;
          v5 = v75;
          v38 = v71;
          continue;
        }

        v79 = ~v50;
        v7 = *(v39 + 48);
        while (1)
        {
          v53 = v7 + 40 * v51;
          v54 = *(v53 + 16);
          v10 = *(v53 + 24);
          v55 = *(v53 + 32);
          v56 = *v53 == v3 && *(v53 + 8) == v44;
          if (v56 || (sub_22D016DFC() & 1) != 0)
          {
            if (v54 == v77 && v10 == v78)
            {
              if (v76 == v55)
              {
                goto LABEL_54;
              }
            }

            else if ((sub_22D016DFC() & 1) != 0 && ((v76 ^ v55) & 1) == 0)
            {
LABEL_54:

              v58 = v69[v6];
              v69[v6] = v58 & ~v52;
              v29 = (v58 & v52) == 0;
              v2 = v73;
              v4 = v72;
              v5 = v75;
              v38 = v71;
              if (!v29)
              {
                v37 = v68 - 1;
                if (__OFSUB__(v68, 1))
                {
                  __break(1u);
                }

                if (v68 == 1)
                {

                  v8 = MEMORY[0x277D84FA0];
                  goto LABEL_60;
                }

                goto LABEL_30;
              }

              goto LABEL_32;
            }
          }

          v51 = (v51 + 1) & v79;
          v6 = v51 >> 6;
          v52 = 1 << v51;
          if ((v80[v51 >> 6] & (1 << v51)) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      break;
    }

    v40 = v5;
    v39 = v74;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v38)
      {
        v8 = sub_22CF64D2C(v69, v66, v68, v74);
        goto LABEL_60;
      }

      v13 = *(v4 + 8 * v41);
      ++v40;
      if (v13)
      {
        v5 = v41;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v61 = v16;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v62 = swift_slowAlloc();
  memcpy(v62, v80, v61);
  v63 = v65;
  v8 = sub_22CF6459C(v62, v66, v3, v10, v82);

  if (v63)
  {

    result = MEMORY[0x2318C6860](v62, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x2318C6860](v62, -1, -1);
    v70 = v83;
LABEL_60:
    sub_22CEE57FC();
LABEL_61:
    v59 = *MEMORY[0x277D85DE8];
    return v8;
  }

  return result;
}

uint64_t sub_22CF63900(uint64_t a1, uint64_t a2)
{
  v104 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = (&v75 - v12);
  v14 = sub_22D015E7C();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v95 = (&v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = (&v75 - v21);
  MEMORY[0x28223BE20](v20, v23);
  v90 = (&v75 - v25);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v76 = v13;
  v78 = v10;
  v27 = a1 + 56;
  v26 = *(a1 + 56);
  v28 = -1 << *(a1 + 32);
  v89 = ~v28;
  if (-v28 < 64)
  {
    v29 = ~(-1 << -v28);
  }

  else
  {
    v29 = -1;
  }

  v97 = (v29 & v26);
  v82 = (63 - v28) >> 6;
  v96 = v24 + 16;
  v87 = (v24 + 48);
  v88 = (v24 + 56);
  v86 = (v24 + 32);
  v92 = (a2 + 56);
  v77 = v24;
  v98 = (v24 + 8);

  v31 = 0;
  v79 = a1;
  for (i = a1 + 56; ; v27 = i)
  {
    v32 = v97;
    v33 = v31;
    if (v97)
    {
LABEL_14:
      v2 = (v32 - 1) & v32;
      v37 = v76;
      (*(v77 + 16))(v76, *(a1 + 48) + *(v77 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14);
      v38 = 0;
      v35 = v33;
    }

    else
    {
      v34 = v82 <= (v31 + 1) ? v31 + 1 : v82;
      v35 = v34 - 1;
      v36 = v31;
      while (1)
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_57;
        }

        if (v33 >= v82)
        {
          break;
        }

        v32 = *(v27 + 8 * v33);
        ++v36;
        if (v32)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v38 = 1;
      v37 = v76;
    }

    v84 = *v88;
    v84(v37, v38, 1, v14);
    v99 = a1;
    v100 = v27;
    v101 = v89;
    v102 = v35;
    v103 = v2;
    v83 = *v87;
    if (v83(v37, 1, v14) == 1)
    {
      sub_22CEEC3D8(v37, &unk_27D9F3630, &unk_22D018FB0);
      goto LABEL_52;
    }

    v81 = *v86;
    v81(v90, v37, v14);
    v39 = *(a2 + 40);
    v80 = sub_22CF65648(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
    v40 = sub_22D01661C();
    v41 = -1 << *(a2 + 32);
    v31 = v40 & ~v41;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v92[v31 >> 6]) != 0)
    {
      break;
    }

    (*v98)(v90, v14);
LABEL_22:
    v31 = v35;
    v97 = v2;
  }

  v75 = v98 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v91 = ~v41;
  v42 = *(v77 + 72);
  v93 = *(v77 + 16);
  v94 = v42;
  while (1)
  {
    v93(v22, *(a2 + 48) + v94 * v31, v14);
    v43 = sub_22CF65648(&qword_28143FB80, MEMORY[0x277D4D5D8]);
    v44 = sub_22D01665C();
    v97 = *v98;
    v97(v22, v14);
    if (v44)
    {
      break;
    }

    v31 = (v31 + 1) & v91;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v92[v31 >> 6]) == 0)
    {
      a1 = v79;
      v97(v90, v14);
      goto LABEL_22;
    }
  }

  v91 = v43;
  v45 = (v97)(v90, v14);
  v47 = *(a2 + 32);
  v75 = ((1 << v47) + 63) >> 6;
  v30 = 8 * v75;
  a1 = v79;
  if ((v47 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v76 = &v75;
    MEMORY[0x28223BE20](v45, v46);
    v49 = &v75 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v49, v92, v48);
    v50 = *&v49[8 * v33] & ~v27;
    v51 = *(a2 + 16);
    v90 = v49;
    *&v49[8 * v33] = v50;
    v52 = v51 - 1;
    v31 = v78;
    v53 = i;
    v54 = v82;
LABEL_26:
    v77 = v52;
    while (v2)
    {
      v55 = v35;
LABEL_38:
      v58 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v93(v31, *(a1 + 48) + (v58 | (v55 << 6)) * v94, v14);
      v59 = 0;
LABEL_39:
      v84(v31, v59, 1, v14);
      v99 = a1;
      v100 = v53;
      v101 = v89;
      v102 = v35;
      v103 = v2;
      if (v83(v31, 1, v14) == 1)
      {
        sub_22CEEC3D8(v31, &unk_27D9F3630, &unk_22D018FB0);
        a2 = sub_22CF651E8(v90, v75, v77, a2);
        goto LABEL_52;
      }

      v81(v95, v31, v14);
      v60 = *(a2 + 40);
      v61 = sub_22D01661C();
      v62 = a2;
      v63 = -1 << *(a2 + 32);
      v64 = v61 & ~v63;
      v33 = v64 >> 6;
      v27 = 1 << v64;
      if (((1 << v64) & v92[v64 >> 6]) != 0)
      {
        v93(v22, *(v62 + 48) + v64 * v94, v14);
        v65 = sub_22D01665C();
        v97(v22, v14);
        if ((v65 & 1) == 0)
        {
          v66 = ~v63;
          do
          {
            v64 = (v64 + 1) & v66;
            v33 = v64 >> 6;
            v27 = 1 << v64;
            if (((1 << v64) & v92[v64 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v93(v22, *(v62 + 48) + v64 * v94, v14);
            v67 = sub_22D01665C();
            v97(v22, v14);
          }

          while ((v67 & 1) == 0);
        }

        v97(v95, v14);
        v68 = v90[v33];
        v90[v33] = v68 & ~v27;
        a2 = v62;
        a1 = v79;
        v31 = v78;
        v53 = i;
        v54 = v82;
        if ((v68 & v27) != 0)
        {
          v52 = v77 - 1;
          if (__OFSUB__(v77, 1))
          {
            __break(1u);
          }

          if (v77 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v97(v95, v14);
        a2 = v62;
        a1 = v79;
        v31 = v78;
        v53 = i;
        v54 = v82;
      }
    }

    if (v54 <= (v35 + 1))
    {
      v56 = v35 + 1;
    }

    else
    {
      v56 = v54;
    }

    v57 = v56 - 1;
    while (1)
    {
      v55 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        v2 = 0;
        v59 = 1;
        v35 = v57;
        goto LABEL_39;
      }

      v2 = *(v53 + 8 * v55);
      ++v35;
      if (v2)
      {
        v35 = v55;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v71 = v30;

    v90 = a2;
    v72 = v71;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v73 = v90;

      a2 = v73;
      continue;
    }

    break;
  }

  v74 = swift_slowAlloc();
  memcpy(v74, v92, v72);
  a2 = sub_22CF64858(v74, v75, v90, v31, &v99);

  MEMORY[0x2318C6860](v74, -1, -1);
LABEL_52:
  sub_22CEE57FC();
LABEL_54:
  v69 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22CF64364(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_22CF64FC4(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_22D016EAC();

        sub_22D0166DC();
        v20 = sub_22D016ECC();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_22D016DFC() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22CF6459C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v36 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v43 = a3 + 56;
  v37 = a5;
LABEL_2:
  v35 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*a5 + 48) + 40 * (__clz(__rbit64(v9)) | (v10 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = *(v13 + 32);
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      v19 = *(v5 + 40);
      sub_22D016EAC();

      sub_22D0166DC();
      v40 = v17;
      v41 = v16;
      sub_22D0166DC();
      v39 = v18;
      MEMORY[0x2318C6020](v18);
      v20 = sub_22D016ECC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v24 = 1 << v22;
      if (((1 << v22) & *(v43 + 8 * (v22 >> 6))) == 0)
      {
LABEL_3:

        a5 = v37;
        v5 = a3;
        continue;
      }

      v42 = ~v21;
      v25 = *(v5 + 48);
      while (1)
      {
        v26 = v25 + 40 * v22;
        v27 = *(v26 + 16);
        v28 = *(v26 + 24);
        v29 = *(v26 + 32);
        v30 = *v26 == v14 && *(v26 + 8) == v15;
        if (v30 || (sub_22D016DFC() & 1) != 0)
        {
          if (v27 == v40 && v28 == v41)
          {
            if (v39 == v29)
            {
              goto LABEL_25;
            }
          }

          else if ((sub_22D016DFC() & 1) != 0 && ((v39 ^ v29) & 1) == 0)
          {
LABEL_25:

            a5 = v37;
            v32 = v36[v23];
            v36[v23] = v32 & ~v24;
            v5 = a3;
            if ((v32 & v24) != 0)
            {
              v7 = v35 - 1;
              if (__OFSUB__(v35, 1))
              {
LABEL_34:
                __break(1u);
                return result;
              }

              if (v35 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        v22 = (v22 + 1) & v42;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if ((*(v43 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v33 = v8 + 1;
  }

  else
  {
    v33 = (a5[2] + 64) >> 6;
  }

  a5[3] = v33 - 1;
  a5[4] = 0;

  return sub_22CF64D2C(v36, a2, v35, v5);
}

uint64_t sub_22CF64858(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v53 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v52 - v12;
  v14 = sub_22D015E7C();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v63 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17, v19);
  v69 = &v52 - v21;
  v22 = *(a3 + 16);
  v23 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v24 = *(a1 + v23);
  v55 = a1;
  v56 = v13;
  *(a1 + v23) = v24 & ((-1 << a4) - 1);
  v25 = v22 - 1;
  v66 = v26 + 16;
  v67 = a3;
  v60 = (v26 + 48);
  v61 = (v26 + 56);
  v59 = (v26 + 32);
  v65 = a3 + 56;
  v62 = v26;
  v68 = (v26 + 8);
  v57 = a5;
  while (2)
  {
    v54 = v25;
    do
    {
      while (1)
      {
        v28 = *a5;
        v29 = a5[1];
        v31 = a5[2];
        v30 = a5[3];
        v32 = a5[4];
        if (!v32)
        {
          v34 = (v31 + 64) >> 6;
          if (v34 <= v30 + 1)
          {
            v35 = v30 + 1;
          }

          else
          {
            v35 = (v31 + 64) >> 6;
          }

          v36 = v35 - 1;
          while (1)
          {
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v33 >= v34)
            {
              v37 = 0;
              v38 = 1;
              goto LABEL_15;
            }

            v32 = *(v29 + 8 * v33);
            ++v30;
            if (v32)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v33 = a5[3];
LABEL_14:
        v37 = (v32 - 1) & v32;
        (*(v62 + 16))(v13, *(v28 + 48) + *(v62 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14);
        v38 = 0;
        v36 = v33;
LABEL_15:
        (*v61)(v13, v38, 1, v14);
        *a5 = v28;
        a5[1] = v29;
        a5[2] = v31;
        a5[3] = v36;
        a5[4] = v37;
        if ((*v60)(v13, 1, v14) == 1)
        {
          sub_22CEEC3D8(v13, &unk_27D9F3630, &unk_22D018FB0);
          v51 = v67;

          return sub_22CF651E8(v55, v53, v54, v51);
        }

        (*v59)(v69, v13, v14);
        v39 = v67;
        v40 = *(v67 + 40);
        sub_22CF65648(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
        v41 = sub_22D01661C();
        v42 = -1 << *(v39 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) != 0)
        {
          break;
        }

        v27 = *v68;
LABEL_4:
        result = (v27)(v69, v14);
      }

      v58 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64 = ~v42;
      v46 = *(v62 + 72);
      v47 = *(v62 + 16);
      while (1)
      {
        v48 = v63;
        v47(v63, *(v67 + 48) + v46 * v43, v14);
        sub_22CF65648(&qword_28143FB80, MEMORY[0x277D4D5D8]);
        v49 = sub_22D01665C();
        v27 = *v68;
        (*v68)(v48, v14);
        if (v49)
        {
          break;
        }

        v43 = (v43 + 1) & v64;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) == 0)
        {
          v13 = v56;
          a5 = v57;
          goto LABEL_4;
        }
      }

      result = (v27)(v69, v14);
      v13 = v56;
      v50 = v55[v44];
      v55[v44] = v50 & ~v45;
      a5 = v57;
    }

    while ((v50 & v45) == 0);
    v25 = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v54 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_22CF64D2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x277D84FA0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A8, &qword_22D019098);
  result = sub_22D016C3C();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v35 = v4;
  while (v9)
  {
    v12 = v8;
    v13 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_17:
    v16 = *(v4 + 48) + 40 * (v13 | (v10 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = v12;
    v23 = *(v12 + 40);
    sub_22D016EAC();

    v37 = v17;
    sub_22D0166DC();
    sub_22D0166DC();
    MEMORY[0x2318C6020](v21);
    result = sub_22D016ECC();
    v8 = v22;
    v24 = -1 << *(v22 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v22 + 48) + 40 * v27;
    *v32 = v37;
    *(v32 + 8) = v18;
    *(v32 + 16) = v20;
    *(v32 + 24) = v19;
    *(v32 + 32) = v21;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v9 = v36;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v10;
  while (1)
  {
    v10 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v10];
    ++v14;
    if (v15)
    {
      v12 = v8;
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CF64FC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
  result = sub_22D016C3C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22D016EAC();

    sub_22D0166DC();
    result = sub_22D016ECC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CF651E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_22D015E7C();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27F8, qword_22D0190F0);
  result = sub_22D016C3C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_22CF65648(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
    result = sub_22D01661C();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_22CF65510(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22CF5F50C(a1);
}

uint64_t sub_22CF65528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22CF65598()
{
  result = qword_28143F9D8;
  if (!qword_28143F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143F9D8);
  }

  return result;
}

uint64_t sub_22CF65648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF65898(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_22D014E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01637C();
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v10, a2);
  (*(v6 + 104))(v9, *a3, v5);
  return sub_22D01634C();
}

uint64_t sub_22CF659BC()
{
  v1 = sub_22D01697C();
  v17 = *(v1 - 8);
  v18 = v1;
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v16 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = sub_22D01653C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(v0 + 24) = -1;
  LOBYTE(v19) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2800, qword_22D019178);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_22D01644C();
  v15[1] = sub_22CEEC38C();
  sub_22D0164FC();
  v19 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v17 + 104))(v16, *MEMORY[0x277D85268], v18);
  *(v0 + 48) = sub_22D0169BC();
  v19 = *(v0 + 32);
  sub_22CEE8394(&qword_28143FA68, &unk_27D9F2800, qword_22D019178);
  *(v0 + 16) = sub_22D01646C();
  *(v0 + 40) = 0;
  sub_22CF65C98();
  sub_22CEF26D0();
  return v0;
}

void sub_22CF65C98()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_22CEF2670;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22CEF261C;
  v9[3] = &block_descriptor_2;
  v3 = _Block_copy(v9);

  v4 = sub_22D0166AC();
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + 24), v1, v3);
  swift_endAccess();

  _Block_release(v3);
  if (v1)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v5 = sub_22D01637C();
    __swift_project_value_buffer(v5, qword_281444420);
    v6 = sub_22D01636C();
    v7 = sub_22D0168EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22CEE1000, v6, v7, "Could not register for lock state notifications", v8, 2u);
      MEMORY[0x2318C6860](v8, -1, -1);
    }
  }
}

uint64_t sub_22CF65E74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22CF65EE0()
{
  v1 = *(*v0 + 48);
  sub_22D01699C();
  return v3;
}

unint64_t sub_22CF65F4C()
{
  result = qword_28143FA20;
  if (!qword_28143FA20)
  {
    sub_22D01691C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA20);
  }

  return result;
}

id sub_22CF65FA4(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014B9C();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014B8C();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CF660D0(void *a1, uint64_t a2, char *a3, int a4)
{
  sub_22D014B8C();
  v8 = sub_22D01666C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CF66444;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_47_0;
  v10 = _Block_copy(&v22);
  v11 = &unk_2840409C0;

  v12 = objc_opt_self();
  v13 = [v12 protocolForProtocol:v11 interpreter:v10];
  _Block_release(v10);

  [v9 setClient_];
  v14 = [v12 protocolForProtocol_];
  [v9 setServer_];

  v15 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v26 = sub_22CF66F9C;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_53;
  v17 = _Block_copy(&v22);
  v18 = a3;

  [a1 setInterruptionHandler_];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a4;
  v26 = sub_22CF66FC4;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_59_0;
  v20 = _Block_copy(&v22);
  v21 = v18;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

id sub_22CF66444(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_22CF664BC(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  v7 = sub_22D01637C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01635C();
  v13 = sub_22D01636C();
  v14 = sub_22D0168EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22CEE1000, v13, v14, a4, v15, 2u);
    MEMORY[0x2318C6860](v15, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  v16 = *(*(a2 + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock) + 16);
  os_unfair_lock_lock(v16);
  swift_beginAccess();
  sub_22CFB3298(0, a3);
  swift_endAccess();
  os_unfair_lock_unlock(v16);
}

id sub_22CF667EC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_lock;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate] = 0;
  v1[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_pendingAck] = 0;
  v6 = OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_predicate;
  v7 = sub_22D0149FC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_connection] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ProminenceObservationServiceClient();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_22CF66940(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for ProminenceObservationServiceClient()
{
  result = qword_28143DC90;
  if (!qword_28143DC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22CF66A4C()
{
  sub_22CF66B14();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22CF66B14()
{
  if (!qword_28143F690)
  {
    sub_22D0149FC();
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143F690);
    }
  }
}

uint64_t sub_22CF66B6C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  return sub_22D0149EC() & 1;
}

void sub_22CF66BA4(void *a1)
{
  v2 = v1;
  v4 = sub_22D01637C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 remoteProcess];
  v11 = sub_22D01666C();
  v12 = [v10 hasEntitlement_];

  if (v12)
  {
    v13 = objc_allocWithZone(type metadata accessor for ProminenceObservationServiceClient());
    v14 = a1;
    v15 = sub_22CF667EC(v14);
    v16 = [v14 remoteProcess];
    v17 = [v16 pid];

    *&v15[OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_delegate + 8] = &off_284029A00;
    swift_unknownObjectWeakAssign();
    v18 = *(*&v2[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock] + 16);
    os_unfair_lock_lock(v18);
    v19 = OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_clients;
    swift_beginAccess();
    v20 = v15;
    v21 = *&v2[v19];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *&v2[v19];
    *&v2[v19] = 0x8000000000000000;
    sub_22CFBED70(v20, v17, isUniquelyReferenced_nonNull_native);
    *&v2[v19] = v34;
    swift_endAccess();
    os_unfair_lock_unlock(v18);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v2;
    *(v23 + 32) = v17;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22CF66F90;
    *(v24 + 24) = v23;
    aBlock[4] = sub_22CEE5B1C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_44;
    v25 = _Block_copy(aBlock);
    v26 = v20;
    v27 = v2;

    [v14 configureConnection_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v14 activate];
    }
  }

  else
  {
    sub_22D01635C();
    v29 = sub_22D01636C();
    v30 = sub_22D0168EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22CEE1000, v29, v30, "Process is not entitled to listen to the prominence service", v31, 2u);
      MEMORY[0x2318C6860](v31, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    [a1 invalidate];
  }
}

_DWORD *sub_22CF670D4(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  result = swift_slowAlloc();
  *(v3 + 16) = result;
  *result = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_22CF67138()
{
  v0 = sub_22D01697C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_22D01653C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  sub_22CEEC38C();
  sub_22D01652C();
  v13[1] = MEMORY[0x277D84F90];
  sub_22CF68800(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v1 + 104))(v5, *MEMORY[0x277D85268], v0);
  result = sub_22D0169BC();
  qword_281441AD0 = result;
  return result;
}

void sub_22CF67370()
{
  if ((*(v0 + 16) & 1) == 0 && *(v0 + 24))
  {
    os_state_remove_handler();
    if (qword_281440B18 != -1)
    {
      swift_once();
    }

    v1 = *(off_281440B20[0] + 16);
    os_unfair_lock_lock(v1);
    if (qword_2814402D0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 24);
    swift_beginAccess();
    sub_22CFBC9C8(v2);
    swift_endAccess();

    os_unfair_lock_unlock(v1);
  }
}

void *sub_22CF674A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_28143FB68 != -1)
  {
    swift_once();
  }

  v12 = sub_22D01637C();
  __swift_project_value_buffer(v12, qword_2814444C8);

  v13 = sub_22D01636C();
  v14 = sub_22D01690C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22CEEE31C(a1, a2, &v18);
    _os_log_impl(&dword_22CEE1000, v13, v14, "[state-capture] StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318C6860](v16, -1, -1);
    MEMORY[0x2318C6860](v15, -1, -1);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t sub_22CF67618()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

double sub_22CF67684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  aBlock[4] = sub_22CF687C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CF681C4;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  v14 = os_state_add_handler();
  _Block_release(v13);
  if (v14)
  {
    if (qword_281440B18 != -1)
    {
      swift_once();
    }

    v15 = *(off_281440B20[0] + 16);
    os_unfair_lock_lock(v15);
    type metadata accessor for StateCaptureEntry();
    v16 = swift_allocObject();

    sub_22CF674A0(a3, a4, a5, a1, a2);
    if (qword_2814402D0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = qword_2814402D8;
    qword_2814402D8 = 0x8000000000000000;
    sub_22CFBED84(v16, v14, isUniquelyReferenced_nonNull_native);
    qword_2814402D8 = v25;
    swift_endAccess();

    os_unfair_lock_unlock(v15);
    v18 = type metadata accessor for StateCaptureInvalidator();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = v14;
    *(a6 + 24) = v18;
    *(a6 + 32) = &off_284029BA0;
    *a6 = v19;
  }

  else
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);
    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] os_state_add_handler() failed to return a handle", v24, 2u);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

_OWORD *sub_22CF679B0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2();
  v7 = sub_22CF67C44(a4, a5);
  v9 = v8;
  v10 = v7;

  if (v9 < 0x8000)
  {
    return v10;
  }

  if (qword_28143FB68 != -1)
  {
    swift_once();
  }

  v12 = sub_22D01637C();
  __swift_project_value_buffer(v12, qword_2814444C8);
  v13 = sub_22D01636C();
  v14 = sub_22D0168EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22CEE1000, v13, v14, "[state-capture] cannot capture state data larger than 32KB", v15, 2u);
    MEMORY[0x2318C6860](v15, -1, -1);
  }

  return 0;
}

_OWORD *sub_22CF67C44(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = sub_22D01405C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = objc_opt_self();
  v11 = sub_22D0165CC();
  *v52 = 0;
  v12 = [v10 dataWithPropertyList:v11 format:200 options:0 error:v52];

  v13 = *v52;
  if (!v12)
  {
    v19 = v13;
    sub_22D01416C();

    swift_willThrow();
    goto LABEL_38;
  }

  v14 = sub_22D0141EC();
  v16 = v15;

  v51 = v16;
  v17 = v16 >> 62;
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_13;
    }

    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    v22 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (!v22)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v18) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v18 = v18;
    goto LABEL_13;
  }

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = BYTE6(v51);
LABEL_13:
  if (__OFADD__(v18, 200))
  {
    __break(1u);
    goto LABEL_40;
  }

  v23 = malloc(v18 + 200);
  if (v23)
  {
    v12 = v23;
    *v52 = 1;
    memset(&v52[4], 0, 196);
    sub_22CF68214(a1, a2, &v52[136], &v53);
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_32;
      }

      v33 = *(v14 + 16);
      v32 = *(v14 + 24);
      v22 = __OFSUB__(v32, v33);
      v34 = v32 - v33;
      v24 = v51;
      if (!v22)
      {
LABEL_25:
        if ((v34 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v34))
          {
            *&v52[4] = v34;
            v35 = *&v52[176];
            v12[10] = *&v52[160];
            v12[11] = v35;
            *(v12 + 24) = *&v52[192];
            v36 = *&v52[112];
            v12[6] = *&v52[96];
            v12[7] = v36;
            v37 = *&v52[144];
            v12[8] = *&v52[128];
            v12[9] = v37;
            v38 = *&v52[48];
            v12[2] = *&v52[32];
            v12[3] = v38;
            v39 = *&v52[80];
            v12[4] = *&v52[64];
            v12[5] = v39;
            v40 = *&v52[16];
            *v12 = *v52;
            v12[1] = v40;
            if (v17 != 2)
            {
              if (__OFSUB__(HIDWORD(v14), v14))
              {
                goto LABEL_46;
              }

              v25 = HIDWORD(v14) - v14;
              goto LABEL_35;
            }

            if (__OFSUB__(*(v14 + 24), *(v14 + 16)))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
            }

            sub_22D0141FC();
            v42 = *(v14 + 16);
            v41 = *(v14 + 24);
            sub_22CEE7524(v14, v24);
            v22 = __OFSUB__(v41, v42);
            v25 = v41 - v42;
            if (!v22)
            {
              goto LABEL_37;
            }

            __break(1u);
LABEL_32:
            v24 = v51;
            *&v52[4] = 0;
            v43 = *&v52[176];
            v12[10] = *&v52[160];
            v12[11] = v43;
            *(v12 + 24) = *&v52[192];
            v44 = *&v52[112];
            v12[6] = *&v52[96];
            v12[7] = v44;
            v45 = *&v52[144];
            v12[8] = *&v52[128];
            v12[9] = v45;
            v46 = *&v52[48];
            v12[2] = *&v52[32];
            v12[3] = v46;
            v47 = *&v52[80];
            v12[4] = *&v52[64];
            v12[5] = v47;
            v48 = *&v52[16];
            *v12 = *v52;
            v12[1] = v48;
            sub_22D0141FC();
            v25 = 0;
LABEL_36:
            sub_22CEE7524(v14, v24);
LABEL_37:
            if (!__OFADD__(v25, 200))
            {
              goto LABEL_38;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v24 = v51;
      v25 = BYTE6(v51);
      *&v52[4] = BYTE6(v51);
      v26 = *&v52[176];
      v12[10] = *&v52[160];
      v12[11] = v26;
      *(v12 + 24) = *&v52[192];
      v27 = *&v52[112];
      v12[6] = *&v52[96];
      v12[7] = v27;
      v28 = *&v52[144];
      v12[8] = *&v52[128];
      v12[9] = v28;
      v29 = *&v52[48];
      v12[2] = *&v52[32];
      v12[3] = v29;
      v30 = *&v52[80];
      v12[4] = *&v52[64];
      v12[5] = v30;
      v31 = *&v52[16];
      *v12 = *v52;
      v12[1] = v31;
LABEL_35:
      sub_22D0141FC();
      goto LABEL_36;
    }

    LODWORD(v34) = HIDWORD(v14) - v14;
    v24 = v51;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v34 = v34;
    goto LABEL_25;
  }

  *v52 = 12;
  sub_22CF11C44(MEMORY[0x277D84F90]);
  sub_22CF68800(&qword_27D9F29C8, MEMORY[0x277CC8658]);
  sub_22D01414C();
  v12 = v9;
  sub_22D01404C();
  (*(v5 + 8))(v9, v4);
  swift_willThrow();
  sub_22CEE7524(v14, v51);
LABEL_38:
  v49 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_22CF681C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_22CF68214(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_22D016C5C();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_22D016C5C();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t sub_22CF682B0()
{
  v1 = v0;
  sub_22CEEB6DC((v0 + 8), v7, &qword_27D9F29C0, &qword_22D019428);
  if (v8)
  {
    v2 = *__swift_project_boxed_opaque_existential_1(v7, v8);
    sub_22CF67370();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_22CF6875C(v7);
  }

  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  sub_22CF6875C((v1 + 8));
  return swift_deallocClassInstance();
}

void *sub_22CF68374()
{
  v14[0] = sub_22D01697C();
  v1 = *(v14[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v14[0], v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_22D01653C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F98];
  v0[3] = v12;
  sub_22CEEC38C();
  sub_22D0164DC();
  v14[1] = MEMORY[0x277D84F90];
  sub_22CF68800(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v1 + 104))(v5, *MEMORY[0x277D85268], v14[0]);
  v0[4] = sub_22D0169BC();
  return v0;
}

uint64_t sub_22CF685BC(uint64_t a1, uint64_t a2)
{
  if (qword_281441CE0 != -1)
  {
    swift_once();
  }

  v5 = *(off_281441CE8[0] + 16);
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_22CEEC698(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v5);
  return v9;
}

uint64_t sub_22CF686A0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_22CF686F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22CF6875C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29C0, &qword_22D019428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_22CF687D0(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF68800(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22CF68848()
{
  result = qword_28143FA40;
  if (!qword_28143FA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F3990, &unk_22D0189A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA40);
  }

  return result;
}

unint64_t sub_22CF688AC()
{
  result = qword_27D9F29D0;
  if (!qword_27D9F29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F29D0);
  }

  return result;
}

uint64_t sub_22CF68910@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_22CF68940(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RunningBoardError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RunningBoardError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_22CF689C0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22CF689DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_22CF68B60(uint64_t a1)
{
  result = MEMORY[0x2318C59E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22CEE54CC(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF68CE4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v29 = a7;
  v32 = a6;
  v36 = a1;
  v37 = a2;
  v10 = a4(0);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v34 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13, v15);
  v18 = &v28 - v17;
  v33 = *(a3 + 16);
  if (v33)
  {
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v30 = a5;
    v31 = a3;
    while (v19 < *(a3 + 16))
    {
      v21 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v22 = *(v35 + 72);
      sub_22CF07D60(a3 + v21 + v22 * v19, v18, a5);
      v23 = v36(v18);
      if (v7)
      {
        sub_22CF1CB18(v18, v32);

        goto LABEL_15;
      }

      if (v23)
      {
        sub_22CF7BE5C(v18, v34, a5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v20 + 16) + 1, 1);
          v20 = v38;
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          v29(v25 > 1, v26 + 1, 1);
          v20 = v38;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + v21 + v26 * v22;
        a5 = v30;
        result = sub_22CF7BE5C(v34, v27, v30);
        a3 = v31;
      }

      else
      {
        result = sub_22CF1CB18(v18, v32);
      }

      if (v33 == ++v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
LABEL_15:

    return v20;
  }

  return result;
}

void sub_22CF68F3C()
{
  v1 = v0;
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v2);
  v4 = *((*(v3 + 8))(v2, v3) + 16);

  if (v4)
  {
    if (qword_281441818 != -1)
    {
      swift_once();
    }

    if (*(off_281441820 + 16))
    {
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v5 = sub_22D01637C();
      __swift_project_value_buffer(v5, qword_2814443A8);
      v6 = sub_22D01636C();
      v7 = sub_22D01690C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_22CEE1000, v6, v7, "Assertions are obsolete; purging", v8, 2u);
        MEMORY[0x2318C6860](v8, -1, -1);
      }

      v9 = v1[19];
      v10 = v1[20];
      __swift_project_boxed_opaque_existential_1(v1 + 16, v9);
      (*(v10 + 40))(v9, v10);
    }

    else
    {

      sub_22CF38E78();
    }
  }

  else
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v11 = sub_22D01637C();
    __swift_project_value_buffer(v11, qword_2814443A8);
    oslog = sub_22D01636C();
    v12 = sub_22D01690C();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22CEE1000, oslog, v12, "No assertions to restore", v13, 2u);
      MEMORY[0x2318C6860](v13, -1, -1);
    }
  }
}

uint64_t sub_22CF691C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);

  v10 = *(v0 + 88);

  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  v14 = *(v0 + 168);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  return v0;
}

uint64_t sub_22CF69270()
{
  sub_22CF691C8();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF692C8(void *a1, int a2)
{
  v124 = sub_22D01555C();
  v120 = *(v124 - 8);
  v4 = *(v120 + 64);
  MEMORY[0x28223BE20](v124, v5);
  v123 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01534C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v13 = *(*(v135 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v135, v14);
  v134 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v133 = &v118 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v132 = &v118 - v21;
  v119 = type metadata accessor for Assertion();
  v143 = *(v119 - 8);
  v22 = *(v143 + 64);
  v24 = MEMORY[0x28223BE20](v119, v23);
  v137 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v131 = &v118 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v118 - v30;
  v32 = a1[19];
  v33 = a1[20];
  __swift_project_boxed_opaque_existential_1(a1 + 16, v32);
  v34 = (*(v33 + 8))(v32, v33);
  v121 = a2;
  v35 = sub_22CF79C10(v34, a2);

  v36 = *(v35 + 16);
  v138 = 0;
  v145 = v31;
  if (v36)
  {
    v118 = v12;
    *&v147[0] = MEMORY[0x277D84F90];
    sub_22CF44084(0, v36, 0);
    v144 = *&v147[0];
    v37 = v35 + 64;
    v38 = -1 << *(v35 + 32);
    result = sub_22D016AEC();
    v40 = result;
    v41 = 0;
    v130 = v8 + 16;
    v129 = v8 + 32;
    v136 = v8;
    v128 = v8 + 8;
    v122 = v35 + 72;
    v126 = a1;
    v125 = v36;
    v127 = v35 + 64;
    do
    {
      if (v40 < 0 || v40 >= 1 << *(v35 + 32))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      v43 = v40 >> 6;
      if ((*(v37 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
      {
        goto LABEL_48;
      }

      v139 = v41;
      v140 = *(v35 + 36);
      v141 = 1 << v40;
      v44 = v35;
      v45 = v135;
      v46 = *(v135 + 48);
      v47 = v136;
      v48 = v132;
      (*(v136 + 16))(v132, *(v44 + 48) + *(v136 + 72) * v40, v7);
      v49 = *(v44 + 56);
      v142 = *(v143 + 72);
      sub_22CF07D60(v49 + v142 * v40, &v48[v46], type metadata accessor for Assertion);
      v50 = v7;
      v51 = v133;
      (*(v47 + 32))(v133, v48, v50);
      v52 = &v48[v46];
      v53 = v131;
      sub_22CF7BE5C(v52, v51 + *(v45 + 48), type metadata accessor for Assertion);
      v54 = v134;
      sub_22CEF0368(v51, v134, &qword_27D9F2600, &qword_22D018B60);
      sub_22CF7BE5C(v54 + *(v45 + 48), v53, type metadata accessor for Assertion);
      v7 = v50;
      (*(v47 + 8))(v54, v50);
      v55 = v144;
      *&v147[0] = v144;
      v57 = *(v144 + 16);
      v56 = *(v144 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_22CF44084(v56 > 1, v57 + 1, 1);
        v55 = *&v147[0];
      }

      *(v55 + 16) = v57 + 1;
      v58 = *(v143 + 80);
      v144 = v55;
      result = sub_22CF7BE5C(v53, v55 + ((v58 + 32) & ~v58) + v57 * v142, type metadata accessor for Assertion);
      v42 = 1 << *(v44 + 32);
      if (v40 >= v42)
      {
        goto LABEL_49;
      }

      v37 = v127;
      v59 = *(v127 + 8 * v43);
      if ((v59 & v141) == 0)
      {
        goto LABEL_50;
      }

      v35 = v44;
      if (v140 != *(v44 + 36))
      {
        goto LABEL_51;
      }

      v60 = v59 & (-2 << (v40 & 0x3F));
      if (v60)
      {
        v42 = __clz(__rbit64(v60)) | v40 & 0x7FFFFFFFFFFFFFC0;
        a1 = v126;
        v31 = v145;
      }

      else
      {
        v61 = v43 << 6;
        v62 = v43 + 1;
        v63 = (v122 + 8 * v43);
        a1 = v126;
        v31 = v145;
        while (v62 < (v42 + 63) >> 6)
        {
          v65 = *v63++;
          v64 = v65;
          v61 += 64;
          ++v62;
          if (v65)
          {
            result = sub_22CF44CF8(v40, v140, 0);
            v42 = __clz(__rbit64(v64)) + v61;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v40, v140, 0);
      }

LABEL_4:
      v41 = v139 + 1;
      v40 = v42;
    }

    while (v139 + 1 != v125);
    v66 = v7;

    v12 = v118;
    v67 = v144;
    v8 = v136;
    v68 = *(v144 + 16);
    if (v68)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v66 = v7;

    v67 = MEMORY[0x277D84F90];
    v68 = *(MEMORY[0x277D84F90] + 16);
    if (v68)
    {
LABEL_20:
      v69 = v67 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v143 = *(v143 + 72);
      v144 = v67;
      v141 = v8 + 8;
      v142 = (v8 + 16);
      v70 = v69;
      v71 = v68;
      do
      {
        sub_22CF07D60(v70, v31, type metadata accessor for Assertion);
        v72 = a1[19];
        v73 = a1[20];
        __swift_project_boxed_opaque_existential_1(a1 + 16, v72);
        (*v142)(v12, v145, v66);
        sub_22CF1CB18(v145, type metadata accessor for Assertion);
        v74 = *(v73 + 32);
        v75 = v73;
        v31 = v145;
        v74(v12, v72, v75);
        (*v141)(v12, v66);
        v70 += v143;
        --v71;
      }

      while (v71);
      v145 = *(v119 + 40);
      v76 = (v120 + 16);
      v77 = (v120 + 88);
      LODWORD(v142) = *MEMORY[0x277D4D4D8];
      v140 = v120 + 96;
      v141 = v120 + 8;
      v78 = MEMORY[0x277D84F90];
      v79 = v124;
      v80 = v123;
      v81 = v143;
      do
      {
        v82 = v137;
        sub_22CF07D60(v69, v137, type metadata accessor for Assertion);
        (*v76)(v80, v82 + v145, v79);
        sub_22CF1CB18(v82, type metadata accessor for Assertion);
        v83 = (*v77)(v80, v79);
        if (v83 == v142)
        {
          (*v140)(v80, v79);
          v84 = *v80;
          v85 = v80[1];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v86 = v78;
          }

          else
          {
            v86 = sub_22CFCE000(0, *(v78 + 2) + 1, 1, v78);
          }

          v88 = *(v86 + 2);
          v87 = *(v86 + 3);
          if (v88 >= v87 >> 1)
          {
            v86 = sub_22CFCE000((v87 > 1), v88 + 1, 1, v86);
          }

          *(v86 + 2) = v88 + 1;
          v78 = v86;
          v89 = &v86[16 * v88];
          *(v89 + 4) = v84;
          *(v89 + 5) = v85;
          v79 = v124;
          v80 = v123;
          v81 = v143;
        }

        else
        {
          (*v141)(v80, v79);
        }

        v69 += v81;
        --v68;
      }

      while (v68);

      goto LABEL_35;
    }
  }

  v78 = MEMORY[0x277D84F90];
LABEL_35:
  v148 = 0;
  memset(v147, 0, sizeof(v147));
  swift_beginAccess();
  sub_22CFB32AC(v147, v121);
  swift_endAccess();
  v142 = v78;
  v90 = *(v78 + 2);
  if (!v90)
  {
    goto LABEL_46;
  }

  v92 = a1[5];
  v91 = a1[6];
  v93 = a1[3];
  v144 = a1[2];
  v145 = v91;
  v143 = v93;
  v94 = a1[4];
  swift_beginAccess();
  v95 = (v142 + 40);
  while (1)
  {
    v97 = *(v95 - 1);
    v98 = *v95;

    v99 = sub_22CF69F70(v97, v98);
    swift_beginAccess();
    v100 = a1[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = a1[8];
    a1[8] = 0x8000000000000000;
    sub_22CFBE74C(v99, v97, v98, isUniquelyReferenced_nonNull_native);

    v102 = v146;
    a1[8] = v146;
    swift_endAccess();
    *&v147[0] = v102;

    sub_22D01643C();

    v103 = sub_22CF3A490();
    v104 = a1[13];
    a1[13] = v103;

    *&v147[0] = a1[13];

    sub_22D01643C();

    os_unfair_lock_assert_owner(*(v145 + 16));
    v105 = a1[19];
    v106 = a1[20];
    __swift_project_boxed_opaque_existential_1(a1 + 16, v105);
    v107 = (*(v106 + 8))(v105, v106);
    v108 = sub_22CF39DE8(v107);

    v109 = sub_22CF3A374(v108);
    v110 = a1[9];
    a1[9] = v109;

    v111 = *(v109 + 16);
    if (v111)
    {
      v112 = sub_22CEE561C(*(v109 + 16), 0);
      v113 = sub_22CEE56A4(v147, v112 + 4, v111, v109);
      result = sub_22CEE57FC();
      if (v113 != v111)
      {
        goto LABEL_52;
      }
    }

    else
    {

      v112 = MEMORY[0x277D84F90];
    }

    *&v147[0] = v112;
    sub_22D01643C();

    v114 = sub_22CF6A5DC();
    v115 = a1[14];
    a1[14] = v114;

    v116 = *(v114 + 16);
    if (v116)
    {
      break;
    }

    v96 = MEMORY[0x277D84F90];
LABEL_38:
    *&v147[0] = v96;
    sub_22D01643C();

    v95 += 2;
    if (!--v90)
    {
      goto LABEL_46;
    }
  }

  v96 = sub_22CEE561C(*(v114 + 16), 0);
  v117 = sub_22CEE56A4(v147, v96 + 4, v116, v114);
  sub_22CEE57FC();
  if (v117 == v116)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_46:

  return sub_22CF3B060();
}

uint64_t sub_22CF69F70(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v71 = a1;
  v68 = sub_22D01555C();
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v68, v5);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22D0154EC();
  v7 = *(v80 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v80, v9);
  v78 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v77 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v82 = &v62 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v62 - v20;
  v22 = v2[19];
  v23 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v22);
  v24 = (*(v23 + 8))(v22, v23);
  v26 = v24 + 64;
  v25 = *(v24 + 64);
  v27 = *(v24 + 32);
  v72 = 1;
  v28 = 1 << v27;
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v31 = (v28 + 63) >> 6;
  v75 = (v7 + 16);
  v74 = (v7 + 88);
  v73 = *MEMORY[0x277D4D4B0];
  v65 = (v7 + 96);
  v66 = (v7 + 8);
  v32 = v11;
  v64 = (v3 + 16);
  v63 = (v3 + 8);
  v79 = v24;

  v34 = 0;
  v81 = v21;
  v76 = v26;
  while (v30)
  {
    v36 = v80;
LABEL_14:
    v38 = __clz(__rbit64(v30)) | (v34 << 6);
    v39 = v79;
    v40 = *(v79 + 48);
    v41 = sub_22D01534C();
    v83 = *(v41 - 8);
    v42 = v40 + v83[9] * v38;
    v43 = v83[2];
    v84 = v41;
    v43(v21, v42);
    v44 = *(v39 + 56);
    v45 = type metadata accessor for Assertion();
    sub_22CF07D60(v44 + *(*(v45 - 8) + 72) * v38, &v21[*(v32 + 48)], type metadata accessor for Assertion);
    v46 = v82;
    sub_22CEEB6DC(v21, v82, &qword_27D9F2600, &qword_22D018B60);
    v47 = v46 + *(v32 + 48);
    v48 = v78;
    (*v75)(v78, v47 + *(v45 + 20), v36);
    sub_22CF1CB18(v47, type metadata accessor for Assertion);
    v49 = (*v74)(v48, v36);
    if (v49 != v73)
    {
      sub_22CEEC3D8(v21, &qword_27D9F2600, &qword_22D018B60);
      (*v66)(v48, v36);
      v35 = v83[1];
LABEL_5:
      v26 = v76;
      goto LABEL_6;
    }

    (*v65)(v48, v36);
    v70 = *v48;
    v50 = v77;
    sub_22CEEB6DC(v21, v77, &qword_27D9F2600, &qword_22D018B60);
    v51 = v50 + *(v32 + 48);
    v52 = v51 + *(v45 + 40);
    v53 = v67;
    v54 = v68;
    (*v64)(v67, v52, v68);
    sub_22CF1CB18(v51, type metadata accessor for Assertion);
    v55 = sub_22D01554C();
    v57 = v56;
    (*v63)(v53, v54);
    if (v55 == v71 && v57 == v69)
    {

      v35 = v83[1];
      v35(v77, v84);
    }

    else
    {
      v58 = sub_22D016DFC();

      v35 = v83[1];
      v35(v77, v84);
      if ((v58 & 1) == 0)
      {
        sub_22CEEC3D8(v81, &qword_27D9F2600, &qword_22D018B60);
        goto LABEL_5;
      }
    }

    v26 = v76;
    v59 = v70;
    v60 = v72;
    v61 = sub_22D014BBC();
    sub_22CEEC3D8(v81, &qword_27D9F2600, &qword_22D018B60);
    if ((v61 & 1) == 0)
    {
      v60 = v59;
    }

    v72 = v60;
LABEL_6:
    v30 &= v30 - 1;
    result = (v35)(v82, v84);
    v21 = v81;
  }

  v36 = v80;
  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v37 >= v31)
    {

      return v72;
    }

    v30 = *(v26 + 8 * v37);
    ++v34;
    if (v30)
    {
      v34 = v37;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF6A5DC()
{
  v1 = sub_22D0154EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v7 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38, v8);
  v40 = &v34 - v9;
  os_unfair_lock_assert_owner(*(v0[6] + 16));
  v42 = MEMORY[0x277D84FA0];
  v10 = v0[19];
  v11 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v36 = (v2 + 88);
  v37 = (v2 + 16);
  v35 = *MEMORY[0x277D4D4A0];
  v34 = (v2 + 8);
  v39 = v12;

  v19 = 0;
  v20 = v40;
  while (v16)
  {
LABEL_11:
    v22 = __clz(__rbit64(v16)) | (v19 << 6);
    v23 = v39;
    v24 = *(v39 + 48);
    v25 = sub_22D01534C();
    (*(*(v25 - 8) + 16))(v20, v24 + *(*(v25 - 8) + 72) * v22, v25);
    v26 = *(v23 + 56);
    v27 = type metadata accessor for Assertion();
    v28 = v26 + *(*(v27 - 8) + 72) * v22;
    v29 = v20 + *(v38 + 48);
    sub_22CF07D60(v28, v29, type metadata accessor for Assertion);
    (*v37)(v6, v29 + *(v27 + 20), v1);
    v30 = (*v36)(v6, v1);
    if (v30 == v35)
    {
      v31 = v29 + *(v27 + 40);
      v32 = sub_22D01554C();
      sub_22CEE54CC(&v41, v32, v33);
    }

    else
    {
      (*v34)(v6, v1);
    }

    v16 &= v16 - 1;
    result = sub_22CEEC3D8(v40, &qword_27D9F2600, &qword_22D018B60);
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return v42;
    }

    v16 = *(v13 + 8 * v21);
    ++v19;
    if (v16)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF6A944@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v170 = a2;
  v3 = sub_22D01430C();
  v165 = *(v3 - 8);
  v166 = v3;
  v4 = *(v165 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v164 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v163 = &v155 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v162 = &v155 - v13;
  v14 = sub_22D01534C();
  v178 = *(v14 - 8);
  v179 = v14;
  v15 = *(v178 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v176 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for Assertion();
  v18 = *(*(v169 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v169, v19);
  v156 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v158 = &v155 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v167 = &v155 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v157 = &v155 - v30;
  v31 = sub_22D01555C();
  v177 = *(v31 - 8);
  v32 = *(v177 + 64);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v175 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v38 = (&v155 - v37);
  v39 = sub_22D0154EC();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v43 = MEMORY[0x28223BE20](v39, v42);
  v161 = &v155 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v159 = &v155 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v172 = &v155 - v50;
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v155 - v52;
  v54 = a1[3];
  v180 = a1;
  v55 = __swift_project_boxed_opaque_existential_1(a1, v54);
  sub_22D01545C();
  sub_22CF6BC48();
  v173 = v40;
  v174 = v39;
  v160 = *(v40 + 8);
  v160(v53, v39);
  v56 = *(*v55 + OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection);
  v57 = &off_278748000;
  v58 = [v56 remoteProcess];
  v59 = sub_22D01666C();

  LODWORD(a1) = [v58 hasEntitlement_];

  if (!a1)
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v63 = sub_22D01637C();
    __swift_project_value_buffer(v63, qword_2814443A8);
    sub_22CEE3A84(v180, v181);
    v64 = sub_22D01636C();
    v65 = sub_22D0168EC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v183 = v67;
      *v66 = 136380675;
      v68 = [*(*__swift_project_boxed_opaque_existential_1(v181 v182) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
      v69 = v168;
      sub_22CEE4E5C();
      if (v69)
      {
        v72 = 0x6E776F6E6B6E753CLL;

        v73 = 0xE90000000000003ELL;
      }

      else
      {
        v72 = v70;
        v73 = v71;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v181);
      v143 = sub_22CEEE31C(v72, v73, &v183);

      *(v66 + 4) = v143;
      _os_log_impl(&dword_22CEE1000, v64, v65, "Client %{private}s is not entitled to request assertion", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x2318C6860](v67, -1, -1);
      MEMORY[0x2318C6860](v66, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v181);
    }

    v84 = sub_22D014C3C();
    sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
    swift_allocError();
    v86 = v144;
    v87 = MEMORY[0x277CB95C8];
    goto LABEL_41;
  }

  sub_22D01542C();
  v60 = v177;
  v61 = (*(v177 + 88))(v38, v31);
  v62 = v61 == *MEMORY[0x277D4D4D0];
  v155 = v31;
  if (v62)
  {
    (*(v60 + 8))(v38, v31);
  }

  else
  {
    if (v61 != *MEMORY[0x277D4D4D8])
    {
      result = sub_22D016CFC();
      __break(1u);
      return result;
    }

    (*(v60 + 96))(v38, v31);
    v74 = *v38;
    v75 = v38[1];
    v76 = v171[30];
    v77 = v171[31];
    __swift_project_boxed_opaque_existential_1(v171 + 27, v76);
    v78 = v157;
    (*(v77 + 16))(v74, v75, v76, v77);

    v79 = type metadata accessor for Activity();
    LODWORD(v74) = (*(*(v79 - 8) + 48))(v78, 1, v79);
    sub_22CEEC3D8(v78, &qword_27D9F3810, &unk_22D018FA0);
    v57 = &off_278748000;
    if (v74 == 1)
    {
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v80 = sub_22D01637C();
      __swift_project_value_buffer(v80, qword_2814443A8);
      v81 = sub_22D01636C();
      v82 = sub_22D0168EC();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_22CEE1000, v81, v82, "Assertion targets an activity that does not exist", v83, 2u);
        MEMORY[0x2318C6860](v83, -1, -1);
      }

      v84 = sub_22D014C3C();
      sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
      swift_allocError();
      v86 = v85;
      v87 = MEMORY[0x277CB95D0];
LABEL_41:
      (*(*(v84 - 8) + 104))(v86, *v87, v84);
      return swift_willThrow();
    }
  }

  getpid();
  v88 = [*(*__swift_project_boxed_opaque_existential_1(v180 v180[3]) + OBJC:v57[416] IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  [v88 pid];

  sub_22D01532C();
  v89 = v170;
  sub_22D01533C();
  (*(v178 + 16))(v176, v89, v179);
  sub_22D01542C();
  sub_22D01545C();
  v90 = v159;
  sub_22D01545C();
  v91 = v173;
  v92 = v174;
  v93 = v161;
  (*(v173 + 16))(v161, v90, v174);
  v94 = (*(v91 + 88))(v93, v92);
  if (v94 == *MEMORY[0x277D4D4B0])
  {
    v93 = v90;
    v95 = v167;
    v96 = v162;
    v97 = v160;
LABEL_19:
    v97(v93, v92);
LABEL_20:
    v98 = sub_22D01539C();
    (*(*(v98 - 8) + 56))(v96, 1, 1, v98);
    goto LABEL_24;
  }

  v95 = v167;
  v96 = v162;
  v97 = v160;
  if (v94 == *MEMORY[0x277D4D498])
  {
    sub_22D01551C();
    v97(v90, v92);
    v99 = *MEMORY[0x277D4D470];
    v100 = sub_22D01539C();
    v101 = *(v100 - 8);
    (*(v101 + 104))(v96, v99, v100);
    (*(v101 + 56))(v96, 0, 1, v100);
  }

  else
  {
    if (v94 == *MEMORY[0x277D4D490])
    {
      v160(v90, v92);
      goto LABEL_19;
    }

    if (v94 == *MEMORY[0x277D4D4A8])
    {
      v93 = v90;
      goto LABEL_19;
    }

    v151 = v90;
    v152 = *MEMORY[0x277D4D4A0];
    v153 = v94;
    v160(v151, v92);
    if (v153 == v152)
    {
      goto LABEL_20;
    }

    v154 = sub_22D01539C();
    (*(*(v154 - 8) + 56))(v96, 1, 1, v154);
    v97(v93, v92);
  }

LABEL_24:
  v102 = sub_22D0153FC();
  v104 = v103;
  v105 = v169;
  v106 = *(v169 + 32);
  v107 = v95;
  sub_22D01540C();
  v108 = sub_22D01543C();
  v110 = v109;
  v111 = v109 & 1;
  (*(v178 + 32))(v107, v176, v179);
  (*(v173 + 32))(v107 + v105[5], v172, v174);
  v112 = v96;
  v113 = v107;
  sub_22CEF0368(v112, v107 + v105[6], &qword_27D9F2680, &qword_22D019670);
  v114 = (v107 + v105[7]);
  *v114 = v102;
  v114[1] = v104;
  v115 = v107 + v105[9];
  *v115 = v108;
  *(v115 + 8) = v111;
  (*(v177 + 32))(v107 + v105[10], v175, v155);
  v116 = v163;
  if (v110)
  {
    sub_22D01423C();
  }

  else
  {
    sub_22D01425C();
  }

  v117 = v164;
  sub_22D0142DC();
  v118 = sub_22D01428C();
  v119 = *(v165 + 8);
  v120 = v117;
  v121 = v166;
  v119(v120, v166);
  v119(v116, v121);
  if (v118)
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v122 = sub_22D01637C();
    __swift_project_value_buffer(v122, qword_2814443A8);
    v123 = sub_22D01636C();
    v124 = sub_22D0168EC();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_22CEE1000, v123, v124, "Assertion has already expired", v125, 2u);
      MEMORY[0x2318C6860](v125, -1, -1);
    }

    v126 = sub_22D014C3C();
    sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
    swift_allocError();
    (*(*(v126 - 8) + 104))(v127, *MEMORY[0x277CB95D0], v126);
    swift_willThrow();
    sub_22CF1CB18(v113, type metadata accessor for Assertion);
    return (*(v178 + 8))(v170, v179);
  }

  else
  {
    v129 = v171[19];
    v130 = v171[20];
    __swift_project_boxed_opaque_existential_1(v171 + 16, v129);
    (*(v130 + 24))(v113, v129, v130);
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v131 = sub_22D01637C();
    __swift_project_value_buffer(v131, qword_2814443A8);
    sub_22CEE3A84(v180, v181);
    v132 = v158;
    sub_22CF07D60(v113, v158, type metadata accessor for Assertion);
    v133 = sub_22D01636C();
    v134 = sub_22D01690C();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v183 = v136;
      *v135 = 136380931;
      v137 = [*(*__swift_project_boxed_opaque_existential_1(v181 v182) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
      v138 = v168;
      sub_22CEE4E5C();
      if (v138)
      {
        v141 = 0x6E776F6E6B6E753CLL;

        v142 = 0xE90000000000003ELL;
      }

      else
      {
        v141 = v139;
        v142 = v140;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v181);
      v145 = sub_22CEEE31C(v141, v142, &v183);

      *(v135 + 4) = v145;
      *(v135 + 12) = 2081;
      v146 = v158;
      sub_22CF07D60(v158, v156, type metadata accessor for Assertion);
      v147 = sub_22D01669C();
      v149 = v148;
      sub_22CF1CB18(v146, type metadata accessor for Assertion);
      v150 = sub_22CEEE31C(v147, v149, &v183);

      *(v135 + 14) = v150;
      _os_log_impl(&dword_22CEE1000, v133, v134, "Client %{private}s has acquired assertion: %{private}s", v135, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v136, -1, -1);
      MEMORY[0x2318C6860](v135, -1, -1);
    }

    else
    {

      sub_22CF1CB18(v132, type metadata accessor for Assertion);
      __swift_destroy_boxed_opaque_existential_1Tm(v181);
    }

    sub_22CF6BE6C(v113);
    return sub_22CF1CB18(v113, type metadata accessor for Assertion);
  }
}

uint64_t sub_22CF6BC48()
{
  v1 = v0;
  v2 = sub_22D0154EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D4D4B0])
  {
    return 0xD000000000000032;
  }

  if (v8 == *MEMORY[0x277D4D498])
  {
    return 0xD00000000000002FLL;
  }

  if (v8 == *MEMORY[0x277D4D490])
  {
    (*(v3 + 8))(v7, v2);
    return 0xD00000000000003BLL;
  }

  else if (v8 == *MEMORY[0x277D4D4A8])
  {
    return 0xD000000000000044;
  }

  else if (v8 == *MEMORY[0x277D4D4A0])
  {
    return 0xD000000000000035;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF6BE6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D0154EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Assertion();
  (*(v5 + 16))(v9, a1 + *(v10 + 20), v4);
  v11 = (*(v5 + 88))(v9, v4);
  if (v11 == *MEMORY[0x277D4D4B0])
  {
    v12 = a1 + *(v10 + 40);
    v13 = sub_22D01554C();
    v15 = v14;
    v16 = *(*(v2 + 48) + 16);
    os_unfair_lock_lock(v16);
    sub_22CF6FBE4(v2, v13, v15);
LABEL_3:

    v17 = v16;
LABEL_4:
    os_unfair_lock_unlock(v17);
    return sub_22CF3B060();
  }

  if (v11 == *MEMORY[0x277D4D498])
  {
    v18 = a1 + *(v10 + 40);
    v19 = sub_22D01554C();
    v21 = v20;
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814443A8);

    v23 = sub_22D01636C();
    v24 = sub_22D01690C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136380675;
      *(v25 + 4) = sub_22CEEE31C(v19, v21, &v42);
      _os_log_impl(&dword_22CEE1000, v23, v24, "Fake foreground assertions have changed for bundle identifier: %{private}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    return sub_22CF3B060();
  }

  if (v11 == *MEMORY[0x277D4D490])
  {
    v27 = *(v10 + 40);
    sub_22D01554C();

    v28 = *(v2 + 48);
    v29 = *(v28 + 16);
    os_unfair_lock_lock(v29);
    sub_22CF70790(v2);
    os_unfair_lock_unlock(v29);
    v30 = sub_22D01554C();
    v32 = v31;
    v33 = *(v28 + 16);
    os_unfair_lock_lock(v33);
    sub_22CF6FBE4(v2, v30, v32);

    os_unfair_lock_unlock(v33);
    (*(v5 + 8))(v9, v4);
    return sub_22CF3B060();
  }

  if (v11 == *MEMORY[0x277D4D4A8])
  {
    v35 = a1 + *(v10 + 40);
    v36 = sub_22D01554C();
    v38 = v37;
    v16 = *(*(v2 + 48) + 16);
    os_unfair_lock_lock(v16);
    sub_22CF6FD1C(v2, v36, v38);
    goto LABEL_3;
  }

  if (v11 == *MEMORY[0x277D4D4A0])
  {
    v39 = a1 + *(v10 + 40);
    sub_22D01554C();

    v40 = *(*(v2 + 48) + 16);
    os_unfair_lock_lock(v40);
    sub_22CF709D0(v2);
    v17 = v40;
    goto LABEL_4;
  }

  result = sub_22D016CFC();
  __break(1u);
  return result;
}

uint64_t sub_22CF6C29C(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_22D01534C();
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = *(v104 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v102 = (&v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v12);
  v101 = &v99 - v13;
  v14 = type metadata accessor for Assertion();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v103 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v107 = &v99 - v26;
  v27 = [*(*__swift_project_boxed_opaque_existential_1(a2 a2[3]) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  v28 = [v27 pid];

  v106 = a1;
  if (v28 == sub_22D01531C())
  {
    v100 = v3;
    v30 = v4[19];
    v29 = v4[20];
    __swift_project_boxed_opaque_existential_1(v4 + 16, v30);
    v31 = (*(v29 + 8))(v30, v29);
    if (*(v31 + 16))
    {
      v32 = v106;
      v33 = sub_22CFB606C(v106);
      v34 = v107;
      if (v35)
      {
        sub_22CF07D60(*(v31 + 56) + *(v15 + 72) * v33, v107, type metadata accessor for Assertion);

        (*(v15 + 56))(v34, 0, 1, v14);
      }

      else
      {

        (*(v15 + 56))(v34, 1, 1, v14);
      }
    }

    else
    {

      v34 = v107;
      (*(v15 + 56))(v107, 1, 1, v14);
      v32 = v106;
    }

    sub_22CEEB6DC(v34, v24, &qword_27D9F26A0, &qword_22D019700);
    if ((*(v15 + 48))(v24, 1, v14) == 1)
    {
      sub_22CEEC3D8(v24, &qword_27D9F26A0, &qword_22D019700);
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v46 = sub_22D01637C();
      __swift_project_value_buffer(v46, qword_2814443A8);
      v47 = v104;
      v48 = v105;
      v49 = v102;
      (*(v104 + 16))(v102, v32, v105);
      v50 = sub_22D01636C();
      v51 = sub_22D0168EC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v108[0] = v53;
        *v52 = 136446210;
        sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
        v54 = sub_22D016DEC();
        v56 = v55;
        (*(v47 + 8))(v49, v48);
        v57 = sub_22CEEE31C(v54, v56, v108);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_22CEE1000, v50, v51, "Invalidated assertion does not exist: %{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x2318C6860](v53, -1, -1);
        MEMORY[0x2318C6860](v52, -1, -1);

        v58 = v107;
      }

      else
      {

        (*(v47 + 8))(v49, v48);
        v58 = v34;
      }

      return sub_22CEEC3D8(v58, &qword_27D9F26A0, &qword_22D019700);
    }

    else
    {
      v102 = v4;
      v59 = v103;
      sub_22CF7BE5C(v24, v103, type metadata accessor for Assertion);
      v60 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v61 = v59 + *(v14 + 20);
      sub_22CF6BC48();
      v62 = [*(*v60 + OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection) remoteProcess];
      v63 = sub_22D01666C();

      v64 = [v62 hasEntitlement_];

      if (v64)
      {
        if (qword_28143FAF0 != -1)
        {
          swift_once();
        }

        v65 = sub_22D01637C();
        __swift_project_value_buffer(v65, qword_2814443A8);
        v66 = v104;
        v67 = v101;
        v68 = v32;
        v69 = v105;
        (*(v104 + 16))(v101, v68, v105);
        v70 = sub_22D01636C();
        v71 = sub_22D01690C();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v108[0] = v99;
          *v72 = 136446210;
          sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
          v73 = sub_22D016DEC();
          v75 = v74;
          (*(v66 + 8))(v67, v69);
          v76 = sub_22CEEE31C(v73, v75, v108);
          v34 = v107;

          *(v72 + 4) = v76;
          _os_log_impl(&dword_22CEE1000, v70, v71, "Invalidated: %{public}s", v72, 0xCu);
          v77 = v99;
          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          MEMORY[0x2318C6860](v77, -1, -1);
          MEMORY[0x2318C6860](v72, -1, -1);
        }

        else
        {

          (*(v66 + 8))(v67, v69);
        }

        v94 = v102[19];
        v95 = v102[20];
        __swift_project_boxed_opaque_existential_1(v102 + 16, v94);
        (*(v95 + 32))(v106, v94, v95);
        sub_22CF6BE6C(v59);
      }

      else
      {
        if (qword_28143FAF0 != -1)
        {
          swift_once();
        }

        v79 = sub_22D01637C();
        __swift_project_value_buffer(v79, qword_2814443A8);
        sub_22CEE3A84(a2, v108);
        v80 = sub_22D01636C();
        v81 = sub_22D0168EC();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = v59;
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v110 = v84;
          *v83 = 136380675;
          v85 = [*(*__swift_project_boxed_opaque_existential_1(v108 v109) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
          v86 = v100;
          sub_22CEE4E5C();
          if (v86)
          {
            v89 = 0x6E776F6E6B6E753CLL;

            v90 = 0xE90000000000003ELL;
          }

          else
          {
            v89 = v87;
            v90 = v88;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v108);
          v96 = sub_22CEEE31C(v89, v90, &v110);

          *(v83 + 4) = v96;
          _os_log_impl(&dword_22CEE1000, v80, v81, "Client %{private}s is not entitled to invalidate assertion", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v84);
          MEMORY[0x2318C6860](v84, -1, -1);
          MEMORY[0x2318C6860](v83, -1, -1);

          v34 = v107;
          v59 = v82;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v108);
        }

        v97 = sub_22D014C3C();
        sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
        swift_allocError();
        (*(*(v97 - 8) + 104))(v98, *MEMORY[0x277CB95C8], v97);
        swift_willThrow();
      }

      sub_22CF1CB18(v59, type metadata accessor for Assertion);
      return sub_22CEEC3D8(v34, &qword_27D9F26A0, &qword_22D019700);
    }
  }

  else
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v36 = sub_22D01637C();
    __swift_project_value_buffer(v36, qword_2814443A8);
    sub_22CEE3A84(a2, v108);
    v37 = sub_22D01636C();
    v38 = sub_22D0168EC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v110 = v40;
      *v39 = 136380675;
      v41 = [*(*__swift_project_boxed_opaque_existential_1(v108 v109) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
      sub_22CEE4E5C();
      if (v3)
      {
        v44 = 0x6E776F6E6B6E753CLL;

        v45 = 0xE90000000000003ELL;
      }

      else
      {
        v44 = v42;
        v45 = v43;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      v91 = sub_22CEEE31C(v44, v45, &v110);

      *(v39 + 4) = v91;
      _os_log_impl(&dword_22CEE1000, v37, v38, "Client %{private}s is not permitted to invalidate another client's assertion", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2318C6860](v40, -1, -1);
      MEMORY[0x2318C6860](v39, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v108);
    }

    v92 = sub_22D014C3C();
    sub_22CF7C4D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
    swift_allocError();
    (*(*(v92 - 8) + 104))(v93, *MEMORY[0x277CB95C8], v92);
    return swift_willThrow();
  }
}

uint64_t sub_22CF6CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v85 = &v75 - v10;
  v84 = sub_22D0154AC();
  v11 = *(v84 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v84, v13);
  v95 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Assertion();
  v78 = *(v83 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v83, v16);
  v77 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01534C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v92 = &v75 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29F0, &unk_22D019678);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v89 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v88 = &v75 - v33;
  v34 = v3[19];
  v35 = v3[20];
  __swift_project_boxed_opaque_existential_1(v3 + 16, v34);
  v36 = (*(v35 + 8))(v34, v35);

  v37 = sub_22CF7BBF8(v36, a1, a2);

  v38 = *(v37 + 64);
  v87 = v37 + 64;
  v79 = v37;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v96 = v4;
  result = swift_beginAccess();
  v43 = 0;
  v44 = (v39 + 63) >> 6;
  v91 = (v19 + 16);
  v90 = (v19 + 32);
  v82 = (v11 + 8);
  v76 = v19;
  v81 = (v19 + 8);
  v93 = v18;
  v94 = v24;
  v80 = v44;
  while (v41)
  {
    v50 = v43;
LABEL_16:
    v55 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v56 = v55 | (v50 << 6);
    v57 = v79;
    v58 = v76;
    v59 = v92;
    v60 = v93;
    (*(v76 + 16))(v92, *(v79 + 48) + *(v76 + 72) * v56, v93);
    v61 = v77;
    sub_22CF07D60(*(v57 + 56) + *(v78 + 72) * v56, v77, type metadata accessor for Assertion);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
    v63 = *(v62 + 48);
    v64 = *(v58 + 32);
    v18 = v60;
    v53 = v89;
    v64(v89, v59, v18);
    sub_22CF7BE5C(v61, v53 + v63, type metadata accessor for Assertion);
    (*(*(v62 - 8) + 56))(v53, 0, 1, v62);
    v54 = v88;
LABEL_17:
    sub_22CEF0368(v53, v54, &qword_27D9F29F0, &unk_22D019678);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
    if ((*(*(v65 - 8) + 48))(v54, 1, v65) == 1)
    {
    }

    v66 = v54 + *(v65 + 48);
    v67 = v94;
    (*v90)(v94, v54, v18);
    (*v91)(v92, v67, v18);
    sub_22CEEB6DC(v66 + *(v83 + 24), v85, &qword_27D9F2680, &qword_22D019670);
    sub_22CF1CB18(v66, type metadata accessor for Assertion);
    sub_22D01547C();
    v68 = v96;
    v69 = *(v96[6] + 16);
    os_unfair_lock_lock(v69);
    v70 = sub_22D01531C();
    v71 = v68[7];
    if (*(v71 + 16))
    {
      v72 = sub_22CEE637C(v70);
      v44 = v80;
      if (v73)
      {
        sub_22CEE3A84(*(v71 + 56) + 40 * v72, &v100);
      }

      else
      {
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
      }
    }

    else
    {
      v102 = 0;
      v100 = 0u;
      v101 = 0u;
      v44 = v80;
    }

    os_unfair_lock_unlock(v69);
    sub_22CEEB6DC(&v100, &v97, &qword_27D9F29F8, &qword_22D019688);
    if (v98)
    {
      sub_22CEF44D4(&v97, v99);
      v45 = *__swift_project_boxed_opaque_existential_1(v99, v99[3]);
      v46 = v95;
      sub_22D006D8C(v95);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
    }

    else
    {
      sub_22CEEC3D8(&v97, &qword_27D9F29F8, &qword_22D019688);
      v46 = v95;
    }

    v47 = v96[19];
    v48 = v96[20];
    __swift_project_boxed_opaque_existential_1(v96 + 16, v47);
    v49 = v94;
    (*(v48 + 32))(v94, v47, v48);
    sub_22CEEC3D8(&v100, &qword_27D9F29F8, &qword_22D019688);
    (*v82)(v46, v84);
    v18 = v93;
    result = (*v81)(v49, v93);
  }

  if (v44 <= v43 + 1)
  {
    v51 = v43 + 1;
  }

  else
  {
    v51 = v44;
  }

  v52 = v51 - 1;
  v53 = v89;
  v54 = v88;
  while (1)
  {
    v50 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v50 >= v44)
    {
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
      (*(*(v74 - 8) + 56))(v53, 1, 1, v74);
      v41 = 0;
      v43 = v52;
      goto LABEL_17;
    }

    v41 = *(v87 + 8 * v50);
    ++v43;
    if (v41)
    {
      v43 = v50;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF6D860@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v305 = a1;
  v270 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26B8, &qword_22D018F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v273 = v265 - v7;
  v8 = sub_22D01555C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v285 = v265 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01430C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v284 = v265 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_22D0154EC();
  v269 = *(v289 - 8);
  isa = v269[8].isa;
  MEMORY[0x28223BE20](v289, v17);
  v307 = v265 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_22D01546C();
  v268 = *(v303 - 8);
  v19 = *(v268 + 64);
  v21 = MEMORY[0x28223BE20](v303, v20);
  v283 = v265 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v282 = v265 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v281 = v265 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v280 = v265 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v288 = v265 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v308 = v265 - v36;
  v319 = sub_22D0154DC();
  v37 = *(v319 - 1);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x28223BE20](v319, v39);
  v275 = v265 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v309 = v265 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v279 = v265 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v272 = v265 - v50;
  MEMORY[0x28223BE20](v49, v51);
  v292 = v265 - v52;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v53 = *(v302[-1].isa + 8);
  v55 = MEMORY[0x28223BE20](v302, v54);
  v301 = v265 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v300 = (v265 - v59);
  MEMORY[0x28223BE20](v58, v60);
  v299 = v265 - v61;
  v62 = sub_22D01534C();
  v318 = *(v62 - 8);
  v63 = *(v318 + 64);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v277 = v265 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v65, v67);
  v290 = v265 - v69;
  v71 = MEMORY[0x28223BE20](v68, v70);
  v276 = v265 - v72;
  v74 = MEMORY[0x28223BE20](v71, v73);
  v271 = v265 - v75;
  v77 = MEMORY[0x28223BE20](v74, v76);
  v274 = v265 - v78;
  v80 = MEMORY[0x28223BE20](v77, v79);
  v278 = v265 - v81;
  v83 = MEMORY[0x28223BE20](v80, v82);
  v286 = v265 - v84;
  v86 = MEMORY[0x28223BE20](v83, v85);
  v88 = v265 - v87;
  MEMORY[0x28223BE20](v86, v89);
  *&v298 = v265 - v90;
  v91 = sub_22D01538C();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91, v94);
  v96 = v265 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28143FAF0 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v97 = sub_22D01637C();
    v98 = __swift_project_value_buffer(v97, qword_2814443A8);
    v304 = a2;
    sub_22CEE3A84(a2, v322);
    (*(v92 + 16))(v96, v305, v91);
    v306 = v98;
    v99 = sub_22D01636C();
    LODWORD(v317) = sub_22D01690C();
    v100 = os_log_type_enabled(v99, v317);
    v293 = v88;
    if (v100)
    {
      v315 = v99;
      v101 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v323 = v314;
      *v101 = 136380931;
      v102 = [*(*__swift_project_boxed_opaque_existential_1(v322 v322[3]) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
      v103 = v321;
      sub_22CEE4E5C();
      v316 = v91;
      if (v103)
      {

        v321 = 0;
        v106 = 0xE90000000000003ELL;
        v88 = 0x6E776F6E6B6E753CLL;
      }

      else
      {
        v88 = v104;
        v106 = v105;
        v321 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v322);
      v107 = sub_22CEEE31C(v88, v106, &v323);

      *(v101 + 4) = v107;
      *(v101 + 12) = 2082;
      sub_22D01536C();
      v108 = MEMORY[0x2318C5950]();
      v110 = v109;

      (*(v92 + 8))(v96, v316);
      v111 = sub_22CEEE31C(v108, v110, &v323);

      *(v101 + 14) = v111;
      v112 = v315;
      _os_log_impl(&dword_22CEE1000, v315, v317, "Client %{private}s reconnecting assertions: %{public}s", v101, 0x16u);
      v113 = v314;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v113, -1, -1);
      MEMORY[0x2318C6860](v101, -1, -1);
    }

    else
    {

      (*(v92 + 8))(v96, v91);
      __swift_destroy_boxed_opaque_existential_1Tm(v322);
    }

    v114 = v291[19];
    v115 = v291[20];
    __swift_project_boxed_opaque_existential_1(v291 + 16, v114);
    v91 = (*(v115 + 8))(v114, v115);
    MEMORY[0x28223BE20](v91, v116);
    v265[-2] = v304;
    v117 = v321;
    v118 = sub_22CEE9DF8(sub_22CF7C2F8, &v265[-4], v91, sub_22CF06DB0, sub_22CF06DB0);
    v321 = v117;

    v119 = *(v118 + 16);
    v92 = v309;
    if (!v119)
    {
      break;
    }

    v310 = v37;
    v322[0] = MEMORY[0x277D84F90];
    a2 = v322;
    v294 = v119;
    sub_22CF441B0(0, v119, 0);
    v120 = -1 << *(v118 + 32);
    v316 = (v118 + 64);
    v317 = v322[0];
    v96 = sub_22D016AEC();
    v121 = 0;
    v122 = v318;
    v297 = (v318 + 16);
    v296 = (v318 + 32);
    v287 = v118 + 72;
    v37 = v118;
    *&v295 = v118;
    while ((v96 & 0x8000000000000000) == 0 && v96 < 1 << *(v37 + 32))
    {
      if ((*(v316 + (v96 >> 6)) & (1 << v96)) == 0)
      {
        goto LABEL_69;
      }

      v313 = 1 << v96;
      v314 = v96 >> 6;
      v124 = *(v37 + 36);
      v311 = v121;
      *&v312 = v124;
      v125 = v302;
      v126 = v37;
      isa_low = SLODWORD(v302[6].isa);
      v128 = *(v126 + 48);
      v315 = *(v122 + 72);
      v129 = v299;
      (*(v122 + 16))(v299, v128 + v315 * v96, v62);
      v130 = *(v126 + 56);
      v131 = type metadata accessor for Assertion();
      sub_22CF07D60(v130 + *(*(v131 - 8) + 72) * v96, &v129[isa_low], type metadata accessor for Assertion);
      v132 = *(v122 + 32);
      v133 = v300;
      v88 = v296;
      v132(v300, v129, v62);
      sub_22CF7BE5C(&v129[isa_low], v133 + SLODWORD(v125[6].isa), type metadata accessor for Assertion);
      v134 = v301;
      sub_22CEF0368(v133, v301, &qword_27D9F2600, &qword_22D018B60);
      v135 = SLODWORD(v125[6].isa);
      v92 = v298;
      v132(v298, v134, v62);
      sub_22CF1CB18(&v134[v135], type metadata accessor for Assertion);
      a2 = v317;
      v322[0] = v317;
      v137 = *(v317 + 16);
      v136 = *(v317 + 24);
      if (v137 >= v136 >> 1)
      {
        sub_22CF441B0(v136 > 1, v137 + 1, 1);
        a2 = v322[0];
      }

      a2[2] = v137 + 1;
      v132((a2 + ((*(v318 + 80) + 32) & ~*(v318 + 80)) + v137 * v315), v92, v62);
      v37 = v295;
      v91 = 1 << *(v295 + 32);
      if (v96 >= v91)
      {
        goto LABEL_70;
      }

      v138 = *(v316 + v314);
      if ((v138 & v313) == 0)
      {
        goto LABEL_71;
      }

      if (v312 != *(v295 + 36))
      {
        goto LABEL_72;
      }

      v139 = v138 & (-2 << (v96 & 0x3F));
      v317 = a2;
      if (v139)
      {
        v91 = __clz(__rbit64(v139)) | v96 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v140 = v314 << 6;
        v141 = v314 + 1;
        v142 = (v287 + 8 * v314);
        while (v141 < (v91 + 63) >> 6)
        {
          v144 = *v142++;
          v143 = v144;
          v140 += 64;
          ++v141;
          if (v144)
          {
            sub_22CF44CF8(v96, v312, 0);
            v91 = __clz(__rbit64(v143)) + v140;
            goto LABEL_11;
          }
        }

        sub_22CF44CF8(v96, v312, 0);
      }

LABEL_11:
      v121 = (v311 + 1);
      v96 = v91;
      v122 = v318;
      v123 = v319;
      v91 = v308;
      v92 = v309;
      a2 = v305;
      if ((v311 + 1) == v294)
      {

        v37 = v310;
        v145 = v317;
        goto LABEL_28;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

  v145 = MEMORY[0x277D84F90];
  v91 = v308;
  v123 = v319;
LABEL_28:
  v146 = sub_22CF7BEC4(v145);

  v322[0] = v146;
  v147 = sub_22D01536C();
  v88 = *(v147 + 16);
  a2 = &off_22D018000;
  v320 = v62;
  v96 = v307;
  if (v88)
  {
    v151 = *(v37 + 16);
    v150 = v37 + 16;
    v149 = v151;
    v152 = (*(v150 + 64) + 32) & ~*(v150 + 64);
    v265[1] = v147;
    v153 = (v147 + v152);
    *&v312 = v318 + 8;
    v313 = *(v150 + 56);
    v314 = v150 - 8;
    v305 = (v268 + 8);
    v302 = v269 + 1;
    v294 = (v318 + 32);
    v297 = MEMORY[0x277D84F98];
    v296 = (v318 + 16);
    *&v148 = 136446466;
    v266 = v148;
    *&v148 = 136446210;
    v298 = v148;
    *&v148 = 136380675;
    v295 = v148;
    v310 = v150;
    v154 = v292;
    v316 = v151;
    while (1)
    {
      v317 = v153;
      v156 = v149;
      v157 = (v149)(v154);
      MEMORY[0x28223BE20](v157, v158);
      v265[-2] = v154;
      v159 = v321;
      v161 = sub_22CF4CDBC(sub_22CF7C318, &v265[-4], v160);
      v321 = v159;
      if (v161)
      {
        v162 = __swift_project_boxed_opaque_existential_1(v304, v304[3]);
        sub_22D0154CC();
        sub_22D01545C();
        v311 = *v305;
        (v311)(v91, v303);
        sub_22CF6BC48();
        (v302->isa)(v96, v289);
        v163 = [*(*v162 + OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection) remoteProcess];
        v164 = sub_22D01666C();

        v165 = [v163 hasEntitlement_];

        if (v165)
        {
          v315 = v88;
          v166 = v291[19];
          v167 = v291[20];
          __swift_project_boxed_opaque_existential_1(v291 + 16, v166);
          v168 = v293;
          sub_22D0154BC();
          (*(v167 + 32))(v168, v166, v167);
          v301 = *v312;
          (v301)(v168, v320);
          sub_22D0154CC();
          sub_22D01545C();
          v169 = v303;
          v170 = v311;
          (v311)(v91, v303);
          v171 = v280;
          sub_22D0154CC();
          v300 = sub_22D0153FC();
          v299 = v172;
          (v170)(v171, v169);
          v173 = v281;
          sub_22D0154CC();
          sub_22D01540C();
          (v170)(v173, v169);
          v174 = v282;
          sub_22D0154CC();
          sub_22D01542C();
          (v170)(v174, v169);
          v175 = v283;
          sub_22D0154CC();
          sub_22D01543C();
          (v170)(v175, v169);
          v96 = v307;
          sub_22D01544C();
          v176 = v278;
          v177 = v321;
          sub_22CF6A944(v304, v278);
          v321 = v177;
          if (!v177)
          {
            v218 = v286;
            v62 = v320;
            (*v294)(v286, v176, v320);
            v219 = v272;
            v123 = v319;
            v316(v272, v154, v319);
            v220 = v274;
            v299 = *v296;
            (v299)(v274, v218, v62);
            v221 = sub_22D01636C();
            v222 = sub_22D01690C();
            if (os_log_type_enabled(v221, v222))
            {
              v223 = swift_slowAlloc();
              v287 = swift_slowAlloc();
              v323 = v287;
              *v223 = v266;
              v224 = v293;
              v269 = v221;
              sub_22D0154BC();
              sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
              v225 = sub_22D016DEC();
              v227 = v226;
              LODWORD(v268) = v222;
              v228 = v301;
              (v301)(v224, v320);
              v300 = *v314;
              (v300)(v219, v319);
              v229 = sub_22CEEE31C(v225, v227, &v323);
              v96 = v307;

              v267 = v223;
              *(v223 + 4) = v229;
              *(v223 + 12) = 2082;
              v230 = v274;
              v231 = sub_22D016DEC();
              v233 = v232;
              v228(v230, v320);
              v234 = sub_22CEEE31C(v231, v233, &v323);
              v62 = v320;

              v235 = v267;
              *(v267 + 14) = v234;
              v236 = v269;
              _os_log_impl(&dword_22CEE1000, v269, v268, "Mapped %{public}s to %{public}s", v235, 0x16u);
              v237 = v287;
              swift_arrayDestroy();
              MEMORY[0x2318C6860](v237, -1, -1);
              v123 = v319;
              MEMORY[0x2318C6860](v235, -1, -1);
            }

            else
            {

              (v301)(v220, v62);
              v300 = *v314;
              (v300)(v219, v123);
              v224 = v293;
            }

            sub_22D0154BC();
            v238 = v271;
            (v299)(v271, v286, v62);
            v239 = v297;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v323 = v239;
            sub_22CFBF04C(v238, v224, isUniquelyReferenced_nonNull_native);
            v241 = v301;
            (v301)(v224, v62);
            v297 = v323;
            sub_22D0154BC();
            v242 = v273;
            sub_22CF608AC(v224, v273);
            v241(v224, v62);
            sub_22CEEC3D8(v242, &qword_27D9F26B8, &qword_22D018F70);
            v241(v286, v62);
            v154 = v292;
            (v311)(v288, v303);
            v91 = v308;
            v92 = v309;
            v88 = v315;
            (v300)(v154, v123);
            goto LABEL_32;
          }

          v178 = v275;
          v123 = v319;
          v316(v275, v154, v319);
          v179 = sub_22D01636C();
          v180 = sub_22D0168EC();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v299 = v181;
            v300 = swift_slowAlloc();
            v323 = v300;
            *v181 = v298;
            v182 = v293;
            sub_22D0154BC();
            sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
            v62 = v320;
            v183 = sub_22D016DEC();
            v185 = v184;
            (v301)(v182, v62);
            v186 = *v314;
            (*v314)(v178, v319);
            v187 = sub_22CEEE31C(v183, v185, &v323);
            v123 = v319;

            v188 = v299;
            *(v299 + 4) = v187;
            v155 = v186;
            _os_log_impl(&dword_22CEE1000, v179, v180, "Failed tried to reconnect assertion: %{public}s", v188, 0xCu);
            v189 = v300;
            __swift_destroy_boxed_opaque_existential_1Tm(v300);
            MEMORY[0x2318C6860](v189, -1, -1);
            MEMORY[0x2318C6860](v188, -1, -1);

            (v311)(v288, v303);
            v321 = 0;
          }

          else
          {

            v155 = *v314;
            (*v314)(v178, v123);
            (v170)(v288, v303);
            v321 = 0;
            v62 = v320;
          }

          v96 = v307;
          v91 = v308;
          v92 = v309;
          v88 = v315;
        }

        else
        {
          v204 = v279;
          v123 = v319;
          v316(v279, v154, v319);
          v205 = sub_22D01636C();
          v206 = sub_22D0168EC();
          v207 = os_log_type_enabled(v205, v206);
          v62 = v320;
          if (v207)
          {
            v208 = swift_slowAlloc();
            v209 = swift_slowAlloc();
            v315 = v88;
            v311 = v209;
            v323 = v209;
            *v208 = v295;
            v210 = v293;
            sub_22D0154BC();
            sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
            v211 = sub_22D016DEC();
            v213 = v212;
            (*v312)(v210, v320);
            v214 = *v314;
            (*v314)(v204, v319);
            v215 = sub_22CEEE31C(v211, v213, &v323);
            v62 = v320;

            *(v208 + 4) = v215;
            v155 = v214;
            _os_log_impl(&dword_22CEE1000, v205, v206, "Process is not entitled to reconnect assertion: %{private}s", v208, 0xCu);
            v216 = v311;
            __swift_destroy_boxed_opaque_existential_1Tm(v311);
            v88 = v315;
            MEMORY[0x2318C6860](v216, -1, -1);
            v217 = v208;
            v123 = v319;
            MEMORY[0x2318C6860](v217, -1, -1);
          }

          else
          {

            v155 = *v314;
            (*v314)(v204, v123);
          }

          v96 = v307;
          v91 = v308;
          v92 = v309;
        }
      }

      else
      {
        v156(v92, v154, v123);
        v190 = v92;
        v191 = sub_22D01636C();
        v192 = sub_22D0168EC();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v315 = v88;
          v311 = v194;
          v323 = v194;
          *v193 = v298;
          v195 = v293;
          sub_22D0154BC();
          sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
          v196 = sub_22D016DEC();
          v198 = v197;
          (*v312)(v195, v320);
          v199 = *v314;
          (*v314)(v190, v319);
          v200 = sub_22CEEE31C(v196, v198, &v323);
          v62 = v320;

          *(v193 + 4) = v200;
          v201 = v199;
          _os_log_impl(&dword_22CEE1000, v191, v192, "Process tried to reconnect an assertion that does not exist: %{public}s", v193, 0xCu);
          v202 = v311;
          __swift_destroy_boxed_opaque_existential_1Tm(v311);
          v88 = v315;
          MEMORY[0x2318C6860](v202, -1, -1);
          v203 = v193;
          v123 = v319;
          MEMORY[0x2318C6860](v203, -1, -1);

          v96 = v307;
          v92 = v190;
          v154 = v292;
          (v201)(v292, v123);
          goto LABEL_32;
        }

        v155 = *v314;
        (*v314)(v190, v123);
        v96 = v307;
        v92 = v190;
        v154 = v292;
        v62 = v320;
      }

      (v155)(v154, v123);
LABEL_32:
      v149 = v316;
      v153 = (v317 + v313);
      if (!--v88)
      {

        v146 = v322[0];
        a2 = &off_22D018000;
        goto LABEL_52;
      }
    }
  }

  v297 = MEMORY[0x277D84F98];
LABEL_52:
  v244 = 0;
  v91 = v146 + 56;
  v245 = 1 << *(v146 + 32);
  v246 = -1;
  if (v245 < 64)
  {
    v246 = ~(-1 << v245);
  }

  v37 = v246 & *(v146 + 56);
  v247 = ((v245 + 63) >> 6);
  v316 = (v318 + 16);
  v314 = v318 + 32;
  v319 = (v318 + 8);
  *&v243 = a2[236];
  v312 = v243;
  v315 = v247;
  v317 = v146;
  while (v37)
  {
LABEL_61:
    v249 = v318;
    v250 = *(v146 + 48) + *(v318 + 72) * (__clz(__rbit64(v37)) | (v244 << 6));
    v251 = *(v318 + 16);
    v252 = v276;
    v88 = v62;
    v251(v276, v250, v62);
    v253 = v290;
    (*(v249 + 32))(v290, v252, v62);
    v92 = v277;
    v251(v277, v253, v62);
    v254 = sub_22D01636C();
    v255 = sub_22D01690C();
    if (os_log_type_enabled(v254, v255))
    {
      v256 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      v323 = v313;
      *v256 = v312;
      sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
      v257 = sub_22D016DEC();
      v258 = v92;
      v92 = v259;
      v88 = *v319;
      (*v319)(v258, v320);
      v260 = sub_22CEEE31C(v257, v92, &v323);

      *(v256 + 4) = v260;
      _os_log_impl(&dword_22CEE1000, v254, v255, "Removing unclaimed assertion: %{public}s", v256, 0xCu);
      v261 = v313;
      __swift_destroy_boxed_opaque_existential_1Tm(v313);
      MEMORY[0x2318C6860](v261, -1, -1);
      v262 = v256;
      v62 = v320;
      MEMORY[0x2318C6860](v262, -1, -1);

      v96 = v88;
    }

    else
    {

      v96 = *v319;
      (*v319)(v92, v62);
    }

    a2 = v291;
    v263 = v321;
    sub_22CF6C29C(v290, v304);
    v146 = v317;
    if (v263)
    {
    }

    v321 = 0;
    v37 &= v37 - 1;
    (v96)(v290, v62);
    v247 = v315;
  }

  while (1)
  {
    v248 = v244 + 1;
    if (__OFADD__(v244, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v248 >= v247)
    {
      break;
    }

    v37 = *(v91 + 8 * v248);
    ++v244;
    if (v37)
    {
      v244 = v248;
      goto LABEL_61;
    }
  }

  return sub_22D0153BC();
}

BOOL sub_22CF6F8F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v21 - v14;
  v16 = sub_22D01534C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  sub_22CF07D60(a2, &v15[*(v7 + 56)], type metadata accessor for Assertion);
  sub_22CEEB6DC(v15, v12, &qword_27D9F2600, &qword_22D018B60);
  v18 = *(v7 + 56);
  LODWORD(v7) = sub_22D01531C();
  (*(v17 + 8))(v12, v16);
  v19 = [*(*__swift_project_boxed_opaque_existential_1(a3 a3[3]) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  LODWORD(a3) = [v19 pid];

  sub_22CEEC3D8(v15, &qword_27D9F2600, &qword_22D018B60);
  sub_22CF1CB18(&v12[v18], type metadata accessor for Assertion);
  return v7 == a3;
}

uint64_t sub_22CF6FAF8()
{
  v0 = sub_22D01534C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0154BC();
  v6 = sub_22D01530C();
  (*(v1 + 8))(v5, v0);
  return v6 & 1;
}

uint64_t sub_22CF6FBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22CF69F70(a2, a3);
  swift_beginAccess();
  v7 = *(a1 + 64);
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 64);

  v9 = sub_22CEEC698(a2, a3);
  if ((v10 & 1) == 0)
  {

    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  v12 = sub_22D014BCC();
  result = sub_22D014BCC();
  if (v12 != result)
  {
LABEL_6:
    swift_beginAccess();
    v14 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    sub_22CFBE74C(v6, a2, a3, isUniquelyReferenced_nonNull_native);
    *(a1 + 64) = v17;
    swift_endAccess();
    v16 = *(a1 + 16);

    sub_22D01643C();
  }

  return result;
}

uint64_t sub_22CF6FD1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22CF7015C(a2, a3);
  result = swift_beginAccess();
  v8 = 0;
  v9 = *(a1 + 72);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
LABEL_9:
    v15 = (*(v9 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v12)))));
    result = *v15;
    if (*v15 != a2 || v15[1] != a3)
    {
      v12 &= v12 - 1;
      result = sub_22D016DFC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if ((v6 & 1) == 0)
    {
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v17 = sub_22D01637C();
      __swift_project_value_buffer(v17, qword_2814443A8);

      v18 = sub_22D01636C();
      v19 = sub_22D01690C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v33 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_22CEEE31C(a2, a3, &v33);
        _os_log_impl(&dword_22CEE1000, v18, v19, "Activity is no longer prominently presented: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x2318C6860](v21, -1, -1);
        MEMORY[0x2318C6860](v20, -1, -1);
      }

      swift_beginAccess();
      sub_22CF3C4B0(a2, a3);
      swift_endAccess();
      goto LABEL_25;
    }

    return result;
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_22;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v9 + 56 + 8 * v14);
    ++v8;
    if (v12)
    {
      v8 = v14;
      goto LABEL_9;
    }
  }

  if ((v6 & 1) == 0)
  {
    return result;
  }

  if (qword_28143FAF0 != -1)
  {
    goto LABEL_32;
  }

LABEL_22:
  v22 = sub_22D01637C();
  __swift_project_value_buffer(v22, qword_2814443A8);

  v23 = sub_22D01636C();
  v24 = sub_22D01690C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_22CEEE31C(a2, a3, &v33);
    _os_log_impl(&dword_22CEE1000, v23, v24, "Activity is prominently presented: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x2318C6860](v26, -1, -1);
    MEMORY[0x2318C6860](v25, -1, -1);
  }

  swift_beginAccess();

  sub_22CEE54CC(&v32, a2, a3);
  swift_endAccess();
LABEL_25:

  v27 = *(a1 + 24);
  v28 = *(a1 + 72);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = sub_22CEE561C(*(v28 + 16), 0);
    v31 = sub_22CEE56A4(&v33, v30 + 4, v29, v28);

    sub_22CEE57FC();
    if (v31 != v29)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  else
  {
LABEL_28:
    v30 = MEMORY[0x277D84F90];
  }

  v33 = v30;
  sub_22D01643C();
}

uint64_t sub_22CF7015C(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v71 = a1;
  v69 = sub_22D01555C();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v69, v5);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22D0154EC();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v77, v9);
  v76 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v75 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v60 - v21;
  v23 = v2[19];
  v24 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v23);
  v25 = (*(v24 + 8))(v23, v24);
  v26 = *(v25 + 64);
  v62 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v61 = (v27 + 63) >> 6;
  v73 = (v7 + 88);
  v74 = (v7 + 16);
  v72 = *MEMORY[0x277D4D4A8];
  v66 = (v3 + 16);
  v67 = (v7 + 8);
  v65 = (v3 + 8);
  v78 = v25;

  v31 = 0;
  v63 = v22;
  v64 = v19;
  while (v29)
  {
LABEL_10:
    v33 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v34 = v33 | (v31 << 6);
    v35 = v78;
    v36 = *(v78 + 48);
    v37 = sub_22D01534C();
    v79 = *(v37 - 8);
    v38 = v36 + *(v79 + 72) * v34;
    v39 = *(v79 + 16);
    v80 = v37;
    v39(v22, v38);
    v40 = *(v35 + 56);
    v41 = type metadata accessor for Assertion();
    sub_22CF07D60(v40 + *(*(v41 - 8) + 72) * v34, &v22[*(v11 + 48)], type metadata accessor for Assertion);
    sub_22CEEB6DC(v22, v19, &qword_27D9F2600, &qword_22D018B60);
    v42 = &v19[*(v11 + 48)];
    v44 = v76;
    v43 = v77;
    (*v74)(v76, v42 + *(v41 + 20), v77);
    sub_22CF1CB18(v42, type metadata accessor for Assertion);
    v45 = (*v73)(v44, v43);
    if (v45 == v72)
    {
      v46 = v79;
      v47 = v75;
      sub_22CEEB6DC(v22, v75, &qword_27D9F2600, &qword_22D018B60);
      v48 = v47 + *(v11 + 48);
      v49 = v48 + *(v41 + 40);
      v50 = v68;
      v51 = v69;
      (*v66)(v68, v49, v69);
      sub_22CF1CB18(v48, type metadata accessor for Assertion);
      v52 = sub_22D01554C();
      v54 = v53;
      (*v65)(v50, v51);
      if (v52 == v71 && v54 == v70)
      {

        sub_22CEEC3D8(v63, &qword_27D9F2600, &qword_22D018B60);
        v58 = *(v46 + 8);
        v59 = v80;
        v58(v75, v80);
        v58(v64, v59);
LABEL_17:

        return 1;
      }

      v55 = sub_22D016DFC();

      v22 = v63;
      sub_22CEEC3D8(v63, &qword_27D9F2600, &qword_22D018B60);
      v56 = *(v46 + 8);
      v57 = v80;
      v56(v75, v80);
      v19 = v64;
      result = (v56)(v64, v57);
      if (v55)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_22CEEC3D8(v22, &qword_27D9F2600, &qword_22D018B60);
      (*v67)(v44, v43);
      result = (*(v79 + 8))(v19, v80);
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v61)
    {

      return 0;
    }

    v29 = *(v62 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF70790(uint64_t a1)
{
  v2 = sub_22CF3A490();
  v3 = *(a1 + 104);

  v4 = sub_22CF7594C(v2, v3, MEMORY[0x277CB9780], &qword_28143F658, MEMORY[0x277CB9780], MEMORY[0x277CB9788]);

  if (v4)
  {
  }

  else
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_2814443A8);

    v7 = sub_22D01636C();
    v8 = sub_22D01690C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136446210;
      v11 = sub_22D014E7C();
      v12 = MEMORY[0x2318C5950](v2, v11);
      v14 = sub_22CEEE31C(v12, v13, &v17);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_22CEE1000, v7, v8, "Activity presenters have changed: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318C6860](v10, -1, -1);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    v15 = *(a1 + 104);
    *(a1 + 104) = v2;

    v16 = *(a1 + 32);
    v17 = v2;
    sub_22D01643C();
  }
}

uint64_t sub_22CF709D0(uint64_t a1)
{
  v2 = sub_22CF6A5DC();
  v3 = *(a1 + 112);

  v4 = sub_22CF75B44(v2, v3);

  if ((v4 & 1) == 0)
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_2814443A8);

    v7 = sub_22D01636C();
    v8 = sub_22D01690C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      v11 = sub_22D01686C();
      v13 = sub_22CEEE31C(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22CEE1000, v7, v8, "Unthrottled activities have changed: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318C6860](v10, -1, -1);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    v14 = *(a1 + 112);
    *(a1 + 112) = v2;

    v15 = *(a1 + 40);
    v16 = *(v2 + 16);
    if (v16)
    {
      v17 = sub_22CEE561C(*(v2 + 16), 0);
      v18 = sub_22CEE56A4(&v19, v17 + 4, v16, v2);
      sub_22CEE57FC();
      if (v18 == v16)
      {
LABEL_13:
        v19 = v17;
        sub_22D01643C();
      }

      __break(1u);
    }

    v17 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }
}

void sub_22CF70C2C()
{
  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v0 = sub_22D01637C();
  __swift_project_value_buffer(v0, qword_2814443A8);
  v1 = sub_22D01636C();
  v2 = sub_22D01690C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22CEE1000, v1, v2, "Expiration timer fired", v3, 2u);
    MEMORY[0x2318C6860](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_22CF70DC4();
    sub_22CF3B060(v4);
  }

  else
  {
    v5 = sub_22D01636C();
    v6 = sub_22D01690C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22CEE1000, v5, v6, "Client has disappeared", v7, 2u);
      MEMORY[0x2318C6860](v7, -1, -1);
    }
  }
}

uint64_t sub_22CF70DC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v77 = v63 - v5;
  v76 = sub_22D01534C();
  v72 = *(v76 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v76, v7);
  v75 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22D0154AC();
  v70 = *(v74 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v74, v10);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Assertion();
  v13 = *(v78 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v78, v15);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01430C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v63 - v26;
  sub_22D0142DC();
  sub_22D01425C();
  v29 = *(v19 + 8);
  v28 = v19 + 8;
  v68 = v29;
  v29(v24, v18);
  v30 = v1[19];
  v31 = v1[20];
  v69 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 16, v30);
  v32 = (*(v31 + 8))(v30, v31);
  v33 = *(v32 + 16);
  v79 = v12;
  v66 = v13;
  if (v33)
  {
    v34 = sub_22CF75FC8(v33, 0, &qword_27D9F20C0, &qword_22D0188E8, type metadata accessor for Assertion);
    v35 = sub_22CF7B348(v83, v34 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v33, v32, type metadata accessor for Assertion, type metadata accessor for Assertion);
    result = sub_22CEE57FC();
    if (v35 != v33)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](result, v37);
  v63[-2] = v27;
  v38 = sub_22CF68CE4(sub_22CF7B584, &v63[-4], v34, type metadata accessor for Assertion, type metadata accessor for Assertion, type metadata accessor for Assertion, sub_22CF44084);
  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v39 = sub_22D01637C();
  __swift_project_value_buffer(v39, qword_2814443A8);

  v40 = sub_22D01636C();
  v41 = sub_22D01690C();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v38;
  v67 = v28;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v83[0] = v45;
    *v44 = 136446210;
    v46 = MEMORY[0x2318C5950](v43, v78);
    v48 = sub_22CEEE31C(v46, v47, v83);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_22CEE1000, v40, v41, "Invalidating expired assertions: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x2318C6860](v45, -1, -1);
    MEMORY[0x2318C6860](v44, -1, -1);
  }

  v49 = *(v43 + 16);
  if (v49)
  {
    v64 = v27;
    v65 = v18;
    v50 = v69;
    v73 = v69[6];
    v51 = v66;
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v63[1] = v43;
    v53 = v43 + v52;
    swift_beginAccess();
    v71 = (v72 + 16);
    v70 += 8;
    v72 = *(v51 + 72);
    do
    {
      sub_22CF07D60(v53, v17, type metadata accessor for Assertion);
      (*v71)(v75, v17, v76);
      sub_22CEEB6DC(&v17[*(v78 + 24)], v77, &qword_27D9F2680, &qword_22D019670);
      sub_22D01547C();
      v58 = *(v73 + 16);
      os_unfair_lock_lock(v58);
      v59 = sub_22D01531C();
      v60 = v50[7];
      if (*(v60 + 16) && (v61 = sub_22CEE637C(v59), (v62 & 1) != 0))
      {
        sub_22CEE3A84(*(v60 + 56) + 40 * v61, v83);
      }

      else
      {
        v84 = 0;
        memset(v83, 0, sizeof(v83));
      }

      os_unfair_lock_unlock(v58);
      sub_22CEEB6DC(v83, &v80, &qword_27D9F29F8, &qword_22D019688);
      if (v81)
      {
        sub_22CEF44D4(&v80, v82);
        v54 = *__swift_project_boxed_opaque_existential_1(v82, v82[3]);
        v55 = v79;
        sub_22D006D8C(v79);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
      }

      else
      {
        sub_22CEEC3D8(&v80, &qword_27D9F29F8, &qword_22D019688);
        v55 = v79;
      }

      v57 = v50[19];
      v56 = v50[20];
      __swift_project_boxed_opaque_existential_1(v50 + 16, v57);
      (*(v56 + 32))(v17, v57, v56);
      sub_22CEEC3D8(v83, &qword_27D9F29F8, &qword_22D019688);
      (*v70)(v55, v74);
      sub_22CF1CB18(v17, type metadata accessor for Assertion);
      v53 += v72;
      --v49;
    }

    while (v49);

    v18 = v65;
    v27 = v64;
  }

  else
  {
  }

  sub_22CF38E78();
  return v68(v27, v18);
}

BOOL sub_22CF71670(uint64_t a1)
{
  v2 = sub_22D01430C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Assertion();
  v9 = (a1 + *(v8 + 36));
  if (v9[1])
  {
    sub_22D01423C();
  }

  else
  {
    v10 = *v9;
    v11 = a1 + *(v8 + 32);
    sub_22D01425C();
  }

  sub_22CF7C4D4(&qword_281443A30, MEMORY[0x277CC9578]);
  v12 = sub_22D01663C();
  (*(v3 + 8))(v7, v2);
  return (v12 & 1) == 0;
}

uint64_t sub_22CF717D0()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E8, &qword_22D019668);
  sub_22CEE8394(&qword_28143FA80, &qword_27D9F29E8, &qword_22D019668);
  return sub_22D01646C();
}

uint64_t sub_22CF71860()
{
  v2 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E0, &qword_22D019660);
  sub_22CEE8394(&qword_28143FA70, &qword_27D9F29E0, &qword_22D019660);
  return sub_22D01646C();
}

uint64_t sub_22CF718F0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v54 = a1;
  v52 = sub_22D01490C();
  v49 = *(v52 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v52, v4);
  v51 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01477C();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v58 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22D014E7C();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v57, v12);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v2 + 48) + 16);
  os_unfair_lock_lock(v15);
  result = *(v2 + 104);
  v17 = *(result + 16);
  v50 = v15;
  if (v17)
  {
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v20 = result + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v55 = *(v18 + 56);
    v56 = v19;
    v21 = (v18 - 8);
    v48[1] = result;

    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = v57;
      v24 = v18;
      v56(v14, v20, v57);
      v25 = sub_22D014E4C();
      result = (*v21)(v14, v23);
      v26 = *(v25 + 16);
      v27 = v22[2];
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v28 <= v22[3] >> 1)
      {
        if (*(v25 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v27 <= v28)
        {
          v29 = v27 + v26;
        }

        else
        {
          v29 = v27;
        }

        result = sub_22CFCE4F8(result, v29, 1, v22);
        v22 = result;
        if (*(v25 + 16))
        {
LABEL_14:
          if ((v22[3] >> 1) - v22[2] < v26)
          {
            goto LABEL_37;
          }

          v30 = (*(v59 + 80) + 32) & ~*(v59 + 80);
          v31 = *(v59 + 72);
          swift_arrayInitWithCopy();

          v18 = v24;
          if (v26)
          {
            v32 = v22[2];
            v33 = __OFADD__(v32, v26);
            v34 = v32 + v26;
            if (v33)
            {
              goto LABEL_39;
            }

            v22[2] = v34;
          }

          goto LABEL_4;
        }
      }

      v18 = v24;
      if (v26)
      {
        goto LABEL_36;
      }

LABEL_4:
      v20 += v55;
      if (!--v17)
      {

        v15 = v50;
        v35 = v22[2];
        if (v35)
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
  v35 = *(MEMORY[0x277D84F90] + 16);
  if (v35)
  {
LABEL_19:
    v36 = v35;
    v37 = 0;
    v57 = v22 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v38 = (v59 + 8);
    v39 = (v49 + 88);
    LODWORD(v56) = *MEMORY[0x277CB9418];
    v40 = (v49 + 8);
    v41 = v51;
    while (1)
    {
      if (v37 >= v22[2])
      {
        goto LABEL_38;
      }

      (*(v59 + 16))(v58, v57 + *(v59 + 72) * v37, v60);
      if (sub_22D01475C() == v54 && v42 == v53)
      {
      }

      else
      {
        v43 = sub_22D016DFC();

        if ((v43 & 1) == 0)
        {
          result = (*v38)(v58, v60);
          goto LABEL_21;
        }
      }

      v44 = v58;
      sub_22D01476C();
      (*v38)(v44, v60);
      v45 = v52;
      v46 = (*v39)(v41, v52);
      if (v46 == v56)
      {

        (*(v49 + 96))(v41, v45);
        sub_22CEEC3D8(v41, &qword_27D9F2A18, &qword_22D0196B8);
        v47 = 1;
        goto LABEL_33;
      }

      result = (*v40)(v41, v45);
LABEL_21:
      if (v36 == ++v37)
      {

        v47 = 0;
LABEL_33:
        v15 = v50;
        goto LABEL_34;
      }
    }
  }

LABEL_30:

  v47 = 0;
LABEL_34:
  os_unfair_lock_unlock(v15);
  return v47;
}

uint64_t sub_22CF71E0C()
{
  v2 = *(*v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29D8, &qword_22D019658);
  sub_22CEE8394(&qword_28143FA78, &qword_27D9F29D8, &qword_22D019658);
  return sub_22D01646C();
}

uint64_t sub_22CF71E9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v76 = a4;
  v6 = sub_22D01490C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v72 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v74 = &v68 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v71 = &v68 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v73 = &v68 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v68 - v22;
  v24 = sub_22D0154EC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Assertion();
  v31 = *(v30 + 20);
  v32 = *(v25 + 16);
  v75 = a2;
  v32(v29, a2 + v31, v24);
  if ((*(v25 + 88))(v29, v24) != *MEMORY[0x277D4D490])
  {
    return (*(v25 + 8))(v29, v24);
  }

  (*(v25 + 96))(v29, v24);
  v33 = *(v7 + 32);
  (v33)(v23, v29, v6);
  v34 = sub_22D01531C();
  swift_beginAccess();
  v35 = *(a3 + 56);
  if (!*(v35 + 16))
  {
    return (*(v7 + 8))(v23, v6);
  }

  v36 = sub_22CEE637C(v34);
  if ((v37 & 1) == 0)
  {
    return (*(v7 + 8))(v23, v6);
  }

  sub_22CEE3A84(*(v35 + 56) + 40 * v36, v77);
  sub_22CEF44D4(v77, v78);
  v38 = [*(*__swift_project_boxed_opaque_existential_1(v78 v78[3]) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  sub_22CEE4E5C();
  v41 = v40;
  v43 = v42;

  v44 = *v76;
  v45 = *(*v76 + 16);
  v69 = v41;
  if (v45 && (v46 = sub_22CEEC698(v41, v43), (v47 & 1) != 0))
  {
    v48 = *(*(v44 + 56) + 8 * v46);
  }

  else
  {
    v48 = sub_22CFF67D0(MEMORY[0x277D84F90]);
  }

  v70 = v43;
  v49 = *(v30 + 40);
  v50 = sub_22D01554C();
  if (!*(v48 + 16))
  {

    goto LABEL_15;
  }

  v52 = sub_22CEEC698(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_15:
    v56 = v73;
    (*(v7 + 104))(v73, *MEMORY[0x277CB9410], v6);
    goto LABEL_16;
  }

  (*(v7 + 16))(v71, *(v48 + 56) + *(v7 + 72) * v52, v6);
  v55 = v33;
  v56 = v73;
  v55();
LABEL_16:
  v57 = v74;
  sub_22D0148FC();
  v58 = sub_22D01554C();
  v60 = v59;
  v61 = v72;
  (*(v7 + 16))(v72, v57, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v77[0] = v48;
  sub_22CFBF244(v61, v58, v60, isUniquelyReferenced_nonNull_native);

  v63 = *&v77[0];

  v64 = v76;
  v65 = *v76;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  *&v77[0] = *v64;
  *v64 = 0x8000000000000000;
  sub_22CFBF230(v63, v69, v70, v66);

  *v64 = *&v77[0];
  v67 = *(v7 + 8);
  v67(v57, v6);
  v67(v56, v6);
  v67(v23, v6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v78);
}

unint64_t sub_22CF72438@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = sub_22D01490C();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v69, v8);
  v68 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A00, &unk_22D019690);
  v10 = *(*(v67 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v67, v11);
  v66 = (v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v14);
  v65 = v53 - v15;
  v64 = sub_22D01477C();
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v64, v18);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v53[3] = *a1;
  v22 = a1[2];
  v23 = *(v22 + 16);
  if (v23)
  {
    v53[1] = a2;
    v53[2] = v3;
    v77 = MEMORY[0x277D84F90];
    v53[0] = v21;

    sub_22CF441F4(0, v23, 0);
    v24 = v77;
    v25 = v22 + 64;
    v26 = -1 << *(v22 + 32);
    result = sub_22D016AEC();
    v28 = 0;
    v76 = *(v22 + 36);
    v60 = v6 + 16;
    v63 = v6;
    v57 = v16 + 32;
    v58 = v6 + 32;
    v54 = v22 + 72;
    v62 = v16;
    v55 = v23;
    v61 = v22 + 64;
    v59 = v20;
    v56 = v22;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v22 + 32))
    {
      if ((*(v25 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (v76 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v71 = 1 << result;
      v72 = result >> 6;
      v70 = v28;
      v30 = v67;
      v73 = *(v67 + 48);
      v74 = result;
      v31 = *(v22 + 56);
      v32 = (*(v22 + 48) + 16 * result);
      v33 = *v32;
      v34 = v32[1];
      v35 = v63;
      v36 = v31 + *(v63 + 72) * result;
      v75 = v24;
      v37 = *(v63 + 16);
      v38 = v65;
      v39 = v69;
      v37(&v65[v73], v36, v69);
      v40 = v66;
      *v66 = v33;
      *(v40 + 8) = v34;
      v41 = *(v30 + 48);
      v42 = &v38[v73];
      v43 = v59;
      (*(v35 + 32))(v40 + v41, v42, v39);
      v37(v68, v40 + v41, v39);
      v24 = v75;
      swift_bridgeObjectRetain_n();
      sub_22D01474C();
      sub_22CEEC3D8(v40, &qword_27D9F2A00, &unk_22D019690);
      v77 = v24;
      v45 = *(v24 + 16);
      v44 = *(v24 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22CF441F4(v44 > 1, v45 + 1, 1);
        v24 = v77;
      }

      *(v24 + 16) = v45 + 1;
      (*(v62 + 32))(v24 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v45, v43, v64);
      v22 = v56;
      v29 = 1 << *(v56 + 32);
      result = v74;
      v25 = v61;
      if (v74 >= v29)
      {
        goto LABEL_26;
      }

      v46 = *(v61 + 8 * v72);
      if ((v46 & v71) == 0)
      {
        goto LABEL_27;
      }

      if (v76 != *(v56 + 36))
      {
        goto LABEL_28;
      }

      v47 = v46 & (-2 << (v74 & 0x3F));
      if (v47)
      {
        v29 = __clz(__rbit64(v47)) | v74 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v72 << 6;
        v49 = v72 + 1;
        v50 = (v54 + 8 * v72);
        while (v49 < (v29 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            sub_22CF44CF8(v74, v76, 0);
            v29 = __clz(__rbit64(v51)) + v48;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v74, v76, 0);
      }

LABEL_4:
      v28 = v70 + 1;
      result = v29;
      if (v70 + 1 == v55)
      {
        return sub_22D014E5C();
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    return sub_22D014E5C();
  }

  return result;
}

uint64_t sub_22CF72988(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3)
{
  v87 = a3;
  v72 = a2;
  v73 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v76 = &v72 - v6;
  v88 = sub_22D01555C();
  v7 = *(v88 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v88, v9);
  v84 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v11 = *(*(v83 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v83, v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v72 - v17;
  if (qword_28143FAF0 != -1)
  {
LABEL_33:
    swift_once();
  }

  *&v86 = v18;
  v19 = sub_22D01637C();
  v77 = __swift_project_value_buffer(v19, qword_2814443A8);
  v20 = sub_22D01636C();
  v21 = sub_22D01690C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22CEE1000, v20, v21, "Purging assertions with missing activities", v22, 2u);
    MEMORY[0x2318C6860](v22, -1, -1);
  }

  v23 = v87[19];
  v24 = v87[20];
  __swift_project_boxed_opaque_existential_1(v87 + 16, v23);
  v25 = (*(v24 + 8))(v23, v24);
  v18 = v25 + 64;
  v26 = *(v25 + 64);
  v90 = MEMORY[0x277D84FA0];
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v79 = (v7 + 88);
  v80 = (v7 + 16);
  v78 = *MEMORY[0x277D4D4D8];
  v74 = (v7 + 96);
  v75 = (v7 + 8);
  v85 = v25;

  v31 = 0;
  v81 = v18;
  v82 = v15;
  while (v29)
  {
    v32 = v31;
LABEL_14:
    v33 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v34 = v33 | (v32 << 6);
    v35 = v85;
    v36 = *(v85 + 48);
    v37 = sub_22D01534C();
    v38 = *(v37 - 8);
    v39 = v86;
    (*(v38 + 16))(v86, v36 + *(v38 + 72) * v34, v37);
    v40 = *(v35 + 56);
    v41 = (type metadata accessor for Assertion() - 8);
    v42 = v40 + *(*v41 + 72) * v34;
    v43 = v83;
    sub_22CF07D60(v42, v39 + *(v83 + 48), type metadata accessor for Assertion);
    v15 = v82;
    sub_22CEEB6DC(v39, v82, &qword_27D9F2600, &qword_22D018B60);
    v44 = &v15[*(v43 + 48)];
    v45 = v44 + v41[12];
    v7 = v84;
    v46 = v88;
    (*v80)(v84, v45, v88);
    v47 = (*v79)(v7, v46);
    if (v47 == v78)
    {
      (*v74)(v7, v88);
      v48 = v15;
      v15 = *v7;
      v7 = *(v7 + 8);
      sub_22CF1CB18(v44, type metadata accessor for Assertion);
      (*(v38 + 8))(v48, v37);
      v49 = v87[30];
      v50 = v87[31];
      __swift_project_boxed_opaque_existential_1(v87 + 27, v49);
      v51 = v76;
      (*(v50 + 16))(v15, v7, v49, v50);
      v52 = type metadata accessor for Activity();
      if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
      {
        sub_22CEEC3D8(v51, &qword_27D9F3810, &unk_22D018FA0);
        sub_22CEE54CC(&v89, v15, v7);

        v53 = v86;
        v54 = &qword_27D9F2600;
        v55 = &qword_22D018B60;
      }

      else
      {
        sub_22CEEC3D8(v86, &qword_27D9F2600, &qword_22D018B60);

        v53 = v51;
        v54 = &qword_27D9F3810;
        v55 = &unk_22D018FA0;
      }

      sub_22CEEC3D8(v53, v54, v55);
    }

    else
    {
      sub_22CEEC3D8(v39, &qword_27D9F2600, &qword_22D018B60);
      (*v75)(v7, v88);
      sub_22CF1CB18(v44, type metadata accessor for Assertion);
      (*(v38 + 8))(v15, v37);
    }

    v31 = v32;
    v18 = v81;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v18 + 8 * v32);
    ++v31;
    if (v29)
    {
      goto LABEL_14;
    }
  }

  v57 = 0;
  v58 = v90;
  v59 = v90 + 56;
  v60 = 1 << *(v90 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v18 = v61 & *(v90 + 56);
  v7 = (v60 + 63) >> 6;
  *&v56 = 136446210;
  v86 = v56;
  v88 = v90;
  while (v18)
  {
LABEL_28:
    v63 = (*(v58 + 48) + ((v57 << 10) | (16 * __clz(__rbit64(v18)))));
    v64 = *v63;
    v15 = v63[1];

    v65 = sub_22D01636C();
    v66 = sub_22D01690C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v89 = v68;
      *v67 = v86;
      *(v67 + 4) = sub_22CEEE31C(v64, v15, &v89);
      _os_log_impl(&dword_22CEE1000, v65, v66, "Removing invalid assertion %{public}s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x2318C6860](v68, -1, -1);
      v69 = v67;
      v58 = v88;
      MEMORY[0x2318C6860](v69, -1, -1);
    }

    v18 &= v18 - 1;
    sub_22CF38300(v64, v15, 2);
  }

  while (1)
  {
    v62 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_32;
    }

    if (v62 >= v7)
    {
      break;
    }

    v18 = *(v59 + 8 * v62);
    ++v57;
    if (v18)
    {
      v57 = v62;
      goto LABEL_28;
    }
  }

  return v73(v70);
}

uint64_t sub_22CF7318C(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3)
{
  v65[2] = a2;
  v66 = a1;
  v77 = sub_22D01534C();
  v4 = *(v77 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v77, v6);
  v76 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v74 = v65 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v11 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72, v12);
  v14 = v65 - v13;
  if (qword_28143FAF0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v15 = sub_22D01637C();
  v73 = __swift_project_value_buffer(v15, qword_2814443A8);
  v16 = sub_22D01636C();
  v17 = sub_22D01690C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22CEE1000, v16, v17, "Purging assertions with missing owners", v18, 2u);
    MEMORY[0x2318C6860](v18, -1, -1);
  }

  v19 = a3[19];
  v20 = a3[20];
  v68 = a3;
  __swift_project_boxed_opaque_existential_1(a3 + 16, v19);
  v21 = (*(v20 + 8))(v19, v20);
  v22 = *(v21 + 64);
  v78 = MEMORY[0x277D84F90];
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v75 = v4 + 16;

  v27 = 0;
  if (v25)
  {
    while (1)
    {
      v28 = v27;
LABEL_11:
      v29 = __clz(__rbit64(v25)) | (v28 << 6);
      (*(v4 + 16))(v14, *(v21 + 48) + *(v4 + 72) * v29, v77);
      a3 = *(v21 + 56);
      v30 = type metadata accessor for Assertion();
      sub_22CF07D60(a3 + *(*(v30 - 8) + 72) * v29, &v14[*(v72 + 48)], type metadata accessor for Assertion);
      sub_22CF7386C(&v78, v14);
      v25 &= v25 - 1;
      sub_22CEEC3D8(v14, &qword_27D9F2600, &qword_22D018B60);
      v27 = v28;
      if (!v25)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v21 + 64 + 8 * v28);
    ++v27;
    if (v25)
    {
      goto LABEL_11;
    }
  }

  v31 = v78;

  v32 = sub_22D01636C();
  v33 = sub_22D01690C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v78 = v35;
    *v34 = 136446210;
    v36 = MEMORY[0x2318C5950](v31, v77);
    v38 = sub_22CEEE31C(v36, v37, &v78);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_22CEE1000, v32, v33, "Identifiers to purge: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x2318C6860](v35, -1, -1);
    MEMORY[0x2318C6860](v34, -1, -1);
  }

  v40 = v74;
  v41 = v31[2];
  if (v41)
  {
    v42 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v65[1] = v31;
    v43 = v31 + v42;
    v44 = *(v4 + 72);
    v71 = *(v4 + 16);
    v72 = v44;
    *&v39 = 136446210;
    v67 = v39;
    v70 = (v4 + 8);
    v69 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v68;
    v47 = v76;
    v46 = v77;
    do
    {
      v52 = v71;
      v71(v40, v43, v46);
      v52(v47, v40, v46);
      v53 = sub_22D01636C();
      v54 = sub_22D01690C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v78 = v56;
        *v55 = v67;
        sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
        v57 = sub_22D016DEC();
        v59 = v58;
        v48 = *v70;
        (*v70)(v76, v77);
        v60 = sub_22CEEE31C(v57, v59, &v78);
        v45 = v68;

        *(v55 + 4) = v60;
        _os_log_impl(&dword_22CEE1000, v53, v54, "Removing invalid assertion %{public}s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x2318C6860](v56, -1, -1);
        v61 = v55;
        v47 = v76;
        v46 = v77;
        MEMORY[0x2318C6860](v61, -1, -1);
      }

      else
      {

        v48 = *v70;
        (*v70)(v47, v46);
      }

      v49 = v45[19];
      v50 = v45[20];
      __swift_project_boxed_opaque_existential_1(v45 + 16, v49);
      v51 = v74;
      (*(v50 + 32))(v74, v49, v50);
      v40 = v51;
      v48(v51, v46);
      v43 += v72;
      --v41;
    }

    while (v41);

    v63 = sub_22CF38E78(v62);
  }

  else
  {
  }

  return v66(v63);
}

void sub_22CF7386C(void **a1, uint64_t a2)
{
  v85 = a1;
  v3 = sub_22D01534C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v83 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v79 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v84 = &v79 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v79 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v79 - v25;
  v90 = a2;
  sub_22CEEB6DC(a2, &v79 - v25, &qword_27D9F2600, &qword_22D018B60);
  v87 = v8;
  v27 = *(v8 + 48);
  v28 = sub_22D01531C();
  v88 = v4;
  v89 = v3;
  v29 = *(v4 + 8);
  v29(v26, v3);
  v30 = [objc_opt_self() identifierWithPid_];
  sub_22CF1CB18(&v26[v27], type metadata accessor for Assertion);
  if (v30)
  {
    sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
    v31 = v30;
    v32 = v86;
    v33 = sub_22CF23FE0(v31);
    if (v32)
    {

      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v34 = sub_22D01637C();
      __swift_project_value_buffer(v34, qword_2814443A8);
      v35 = v84;
      sub_22CEEB6DC(v90, v84, &qword_27D9F2600, &qword_22D018B60);
      v36 = sub_22D01636C();
      v37 = sub_22D01690C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v80 = v38;
        v86 = swift_slowAlloc();
        v91 = v86;
        *v38 = 136446210;
        sub_22CEEB6DC(v35, v26, &qword_27D9F2600, &qword_22D018B60);
        v81 = v29;
        v39 = *(v87 + 48);
        v40 = v82;
        v41 = v89;
        (*(v88 + 32))(v82, v26, v89);
        sub_22CF1CB18(&v26[v39], type metadata accessor for Assertion);
        sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
        v42 = sub_22D016DEC();
        v44 = v43;
        v81(v40, v41);
        sub_22CEEC3D8(v84, &qword_27D9F2600, &qword_22D018B60);
        v45 = sub_22CEEE31C(v42, v44, &v91);

        v46 = v80;
        *(v80 + 1) = v45;
        v47 = v37;
        v48 = v46;
        _os_log_impl(&dword_22CEE1000, v36, v47, "Assertion originator is missing: %{public}s", v46, 0xCu);
        v49 = v86;
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x2318C6860](v49, -1, -1);
        MEMORY[0x2318C6860](v48, -1, -1);
      }

      else
      {

        sub_22CEEC3D8(v35, &qword_27D9F2600, &qword_22D018B60);
      }

      v65 = v83;
      sub_22CEEB6DC(v90, v83, &qword_27D9F2600, &qword_22D018B60);
      v66 = v85;
      v67 = *v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_22CFCE520(0, v67[2] + 1, 1, v67);
      }

      v69 = v67[2];
      v68 = v67[3];
      if (v69 >= v68 >> 1)
      {
        v67 = sub_22CFCE520(v68 > 1, v69 + 1, 1, v67);
      }

      v70 = v88;
      v71 = *(v87 + 48);
      v67[2] = v69 + 1;
      (*(v70 + 32))(v67 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69, v65, v89);
      *v66 = v67;
      sub_22CF1CB18(v65 + v71, type metadata accessor for Assertion);
    }

    else
    {
    }
  }

  else
  {
    v81 = v29;
    v84 = v16;
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v50 = sub_22D01637C();
    __swift_project_value_buffer(v50, qword_2814443A8);
    sub_22CEEB6DC(v90, v23, &qword_27D9F2600, &qword_22D018B60);
    v51 = sub_22D01636C();
    v52 = sub_22D01690C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v80 = v53;
      v83 = swift_slowAlloc();
      v91 = v83;
      *v53 = 136446210;
      sub_22CEEB6DC(v23, v26, &qword_27D9F2600, &qword_22D018B60);
      v54 = *(v87 + 48);
      v55 = v82;
      v56 = v89;
      (*(v88 + 32))(v82, v26, v89);
      sub_22CF1CB18(&v26[v54], type metadata accessor for Assertion);
      sub_22CF7C4D4(&qword_28143FBA0, MEMORY[0x277D4D450]);
      v57 = sub_22D016DEC();
      v59 = v58;
      v81(v55, v56);
      sub_22CEEC3D8(v23, &qword_27D9F2600, &qword_22D018B60);
      v60 = sub_22CEEE31C(v57, v59, &v91);

      v61 = v80;
      *(v80 + 1) = v60;
      v62 = v52;
      v63 = v61;
      _os_log_impl(&dword_22CEE1000, v51, v62, "Could not create a process identifier from assertion identifier: %{public}s", v61, 0xCu);
      v64 = v83;
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x2318C6860](v64, -1, -1);
      MEMORY[0x2318C6860](v63, -1, -1);
    }

    else
    {

      sub_22CEEC3D8(v23, &qword_27D9F2600, &qword_22D018B60);
    }

    v72 = v84;
    sub_22CEEB6DC(v90, v84, &qword_27D9F2600, &qword_22D018B60);
    v73 = v85;
    v74 = *v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = sub_22CFCE520(0, v74[2] + 1, 1, v74);
    }

    v76 = v74[2];
    v75 = v74[3];
    if (v76 >= v75 >> 1)
    {
      v74 = sub_22CFCE520(v75 > 1, v76 + 1, 1, v74);
    }

    v77 = v88;
    v78 = *(v87 + 48);
    v74[2] = v76 + 1;
    (*(v77 + 32))(v74 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, v72, v89);
    *v73 = v74;
    sub_22CF1CB18(v72 + v78, type metadata accessor for Assertion);
  }
}

uint64_t sub_22CF7413C(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_22D01555C();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0154EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v37 = a1;
  v21 = a1;
  v23 = &v37 - v22;
  sub_22CEEB6DC(v21, &v37 - v22, &qword_27D9F2600, &qword_22D018B60);
  v24 = &v23[*(v14 + 48)];
  v25 = type metadata accessor for Assertion();
  (*(v9 + 16))(v13, v24 + *(v25 + 20), v8);
  sub_22CF1CB18(v24, type metadata accessor for Assertion);
  if ((*(v9 + 88))(v13, v8) == *MEMORY[0x277D4D498])
  {
    sub_22CEEB6DC(v37, v19, &qword_27D9F2600, &qword_22D018B60);
    v26 = &v19[*(v14 + 48)];
    v28 = v38;
    v27 = v39;
    (*(v38 + 16))(v7, v26 + *(v25 + 40), v39);
    sub_22CF1CB18(v26, type metadata accessor for Assertion);
    v29 = sub_22D01554C();
    v31 = v30;
    (*(v28 + 8))(v7, v27);
    if (v29 == sub_22D014F9C() && v31 == v32)
    {
      v33 = 1;
    }

    else
    {
      v33 = sub_22D016DFC();
    }

    v34 = sub_22D01534C();
    (*(*(v34 - 8) + 8))(v19, v34);
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v33 = 0;
  }

  v35 = sub_22D01534C();
  (*(*(v35 - 8) + 8))(v23, v35);
  return v33 & 1;
}

uint64_t sub_22CF7450C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v78 = &v73 - v7;
  v77 = sub_22D0154AC();
  v94 = *(v77 - 8);
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v77, v9);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Assertion();
  v85 = *(v75 - 8);
  v11 = *(v85 + 64);
  v13 = MEMORY[0x28223BE20](v75, v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v83 = &v73 - v17;
  v18 = sub_22D01534C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v92 = &v73 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29F0, &unk_22D019678);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v90 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v73 - v33;
  v35 = v1[19];
  v36 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v35);
  v37 = (*(v36 + 8))(v35, v36);
  v96 = a1;
  v38 = sub_22CEE9DF8(sub_22CF758E4, v95, v37, sub_22CF06DB0, sub_22CF06DB0);

  v39 = *(v38 + 64);
  v73 = v38 + 64;
  v86 = v38;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v88 = v2;
  result = swift_beginAccess();
  v44 = 0;
  v45 = (v40 + 63) >> 6;
  v91 = (v19 + 16);
  v93 = (v19 + 32);
  v74 = (v94 + 8);
  v82 = v19;
  v87 = (v19 + 8);
  v84 = v15;
  v89 = v18;
  v81 = v24;
  v80 = v34;
  v79 = v45;
  while (v42)
  {
    v46 = v44;
LABEL_15:
    v49 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v50 = v49 | (v46 << 6);
    v51 = v86;
    v52 = v82;
    v53 = v92;
    (*(v82 + 16))(v92, *(v86 + 48) + *(v82 + 72) * v50, v18);
    v54 = v18;
    v55 = v83;
    sub_22CF07D60(*(v51 + 56) + *(v85 + 72) * v50, v83, type metadata accessor for Assertion);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
    v57 = *(v56 + 48);
    v58 = *(v52 + 32);
    v48 = v90;
    v58(v90, v53, v54);
    sub_22CF7BE5C(v55, v48 + v57, type metadata accessor for Assertion);
    (*(*(v56 - 8) + 56))(v48, 0, 1, v56);
    v94 = v46;
    v59 = v84;
    v24 = v81;
    v34 = v80;
    v45 = v79;
LABEL_16:
    sub_22CEF0368(v48, v34, &qword_27D9F29F0, &unk_22D019678);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
    if ((*(*(v60 - 8) + 48))(v34, 1, v60) == 1)
    {
    }

    v61 = *(v60 + 48);
    v18 = v89;
    (*v93)(v24, v34, v89);
    v15 = v59;
    sub_22CF7BE5C(&v34[v61], v59, type metadata accessor for Assertion);
    v62 = v88;
    v63 = v88[19];
    v64 = v88[20];
    __swift_project_boxed_opaque_existential_1(v88 + 16, v63);
    (*(v64 + 32))(v24, v63, v64);
    sub_22CF6BE6C(v15);
    v65 = *(v62[6] + 16);
    os_unfair_lock_lock(v65);
    v66 = sub_22D01531C();
    v67 = v62[7];
    if (*(v67 + 16))
    {
      v68 = sub_22CEE637C(v66);
      if (v69)
      {
        sub_22CEE3A84(*(v67 + 56) + 40 * v68, &v100);
      }

      else
      {
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
      }
    }

    else
    {
      v102 = 0;
      v100 = 0u;
      v101 = 0u;
    }

    os_unfair_lock_unlock(v65);
    sub_22CEEB6DC(&v100, &v97, &qword_27D9F29F8, &qword_22D019688);
    if (v98)
    {
      sub_22CEF44D4(&v97, v99);
      (*v91)(v92, v24, v18);
      sub_22CEEB6DC(&v15[*(v75 + 24)], v78, &qword_27D9F2680, &qword_22D019670);
      v70 = v76;
      sub_22D01547C();
      v71 = *__swift_project_boxed_opaque_existential_1(v99, v99[3]);
      sub_22D006D8C(v70);
      (*v74)(v70, v77);
      sub_22CEEC3D8(&v100, &qword_27D9F29F8, &qword_22D019688);
      sub_22CF1CB18(v15, type metadata accessor for Assertion);
      (*v87)(v24, v18);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v99);
    }

    else
    {
      sub_22CEEC3D8(&v100, &qword_27D9F29F8, &qword_22D019688);
      sub_22CF1CB18(v15, type metadata accessor for Assertion);
      (*v87)(v24, v18);
      result = sub_22CEEC3D8(&v97, &qword_27D9F29F8, &qword_22D019688);
    }

    v44 = v94;
  }

  if (v45 <= v44 + 1)
  {
    v47 = v44 + 1;
  }

  else
  {
    v47 = v45;
  }

  v48 = v90;
  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v46 >= v45)
    {
      v94 = v47 - 1;
      v59 = v15;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
      (*(*(v72 - 8) + 56))(v48, 1, 1, v72);
      v42 = 0;
      goto LABEL_16;
    }

    v42 = *(v73 + 8 * v46);
    ++v44;
    if (v42)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF74E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[1] = a3;
  v5 = sub_22D01555C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v33 - v19;
  v21 = sub_22D01534C();
  v22 = *(v21 - 8);
  v23 = a1;
  v24 = v21;
  (*(v22 + 16))(v20, v23, v21);
  sub_22CF07D60(a2, &v20[*(v12 + 56)], type metadata accessor for Assertion);
  sub_22CEEB6DC(v20, v17, &qword_27D9F2600, &qword_22D018B60);
  v25 = &v17[*(v12 + 56)];
  v26 = type metadata accessor for Assertion();
  (*(v6 + 16))(v10, v25 + *(v26 + 40), v5);
  if ((*(v6 + 88))(v10, v5) == *MEMORY[0x277D4D4D0])
  {
    (*(v6 + 96))(v10, v5);
    v28 = *v10;
    v27 = v10[1];
  }

  else
  {
    (*(v6 + 8))(v10, v5);
    v28 = 0;
    v27 = 0;
  }

  sub_22CF1CB18(v25, type metadata accessor for Assertion);
  v29 = sub_22D014F9C();
  if (v27)
  {
    if (v28 == v29 && v27 == v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_22D016DFC();
    }

    sub_22CEEC3D8(v20, &qword_27D9F2600, &qword_22D018B60);
  }

  else
  {
    sub_22CEEC3D8(v20, &qword_27D9F2600, &qword_22D018B60);

    v31 = 0;
  }

  (*(v22 + 8))(v17, v24);
  return v31 & 1;
}

uint64_t sub_22CF751D8(uint64_t a1)
{
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 160);
  __swift_project_boxed_opaque_existential_1((*v1 + 128), v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7[2] = a1;
  LOBYTE(a1) = sub_22CF4CB98(sub_22CF7B618, v7, v5);

  return a1 & 1;
}

uint64_t sub_22CF7529C()
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v1 = *(*(v77 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v77, v2);
  v76 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v75 = &v66 - v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v74 = &v66 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v73 = &v66 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v72 = &v66 - v15;
  v16 = v0[19];
  v17 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v19 = *(v18 + 16);
  if (v19)
  {
    v87 = MEMORY[0x277D84F90];
    sub_22CF4414C(0, v19, 0);
    v20 = v87;
    v21 = v18 + 64;
    v22 = -1 << *(v18 + 32);
    v23 = sub_22D016AEC();
    v24 = 0;
    v25 = *(v18 + 36);
    v67 = v18 + 72;
    v68 = v19;
    v69 = v25;
    v70 = v18 + 64;
    v71 = v18;
    do
    {
      if ((v23 & 0x8000000000000000) != 0 || v23 >= 1 << *(v18 + 32))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_26;
      }

      if (v25 != *(v18 + 36))
      {
        goto LABEL_27;
      }

      v79 = 1 << v23;
      v80 = v23 >> 6;
      v78 = v24;
      v27 = v77;
      v86 = v20;
      v28 = *(v77 + 48);
      v29 = *(v18 + 48);
      v30 = sub_22D01534C();
      v31 = *(v30 - 8);
      v32 = v31;
      v33 = v29 + *(v31 + 72) * v23;
      v34 = v23;
      v35 = *(v31 + 16);
      v36 = v72;
      v35(v72, v33, v30);
      v37 = *(v18 + 56);
      v83 = type metadata accessor for Assertion();
      v38 = *(*(v83 - 8) + 72);
      v82 = v34;
      sub_22CF07D60(v37 + v38 * v34, &v36[v28], type metadata accessor for Assertion);
      v39 = v73;
      (*(v32 + 32))(v73, v36, v30);
      v40 = *(v27 + 48);
      sub_22CF7BE5C(&v36[v28], v39 + v40, type metadata accessor for Assertion);
      v41 = v74;
      v35(v74, v39, v30);
      sub_22CF07D60(v39 + v40, v41 + *(v27 + 48), type metadata accessor for Assertion);
      v42 = v75;
      sub_22CEEB6DC(v41, v75, &qword_27D9F2600, &qword_22D018B60);
      v81 = *(v27 + 48);
      v43 = sub_22D0152FC();
      v84 = v44;
      v85 = v43;
      v45 = *(v32 + 8);
      v45(v42, v30);
      v46 = v76;
      sub_22CEEB6DC(v41, v76, &qword_27D9F2600, &qword_22D018B60);
      v47 = *(v27 + 48);
      v83 = sub_22D01669C();
      v49 = v48;
      v50 = v41;
      v20 = v86;
      sub_22CEEC3D8(v50, &qword_27D9F2600, &qword_22D018B60);
      v45(v46, v30);
      sub_22CF1CB18(v42 + v81, type metadata accessor for Assertion);
      sub_22CEEC3D8(v39, &qword_27D9F2600, &qword_22D018B60);
      v87 = v20;
      v52 = *(v20 + 16);
      v51 = *(v20 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_22CF4414C((v51 > 1), v52 + 1, 1);
        v20 = v87;
      }

      *(v20 + 16) = v52 + 1;
      v53 = (v20 + 48 * v52);
      v54 = v84;
      v53[4] = v85;
      v53[5] = v54;
      v55 = v82;
      v53[6] = v83;
      v53[7] = v49;
      v53[9] = MEMORY[0x277D837D0];
      v18 = v71;
      v26 = 1 << *(v71 + 32);
      if (v55 >= v26)
      {
        goto LABEL_28;
      }

      v21 = v70;
      v56 = *(v70 + 8 * v80);
      if ((v56 & v79) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v25) = v69;
      if (v69 != *(v71 + 36))
      {
        goto LABEL_30;
      }

      v57 = v56 & (-2 << (v55 & 0x3F));
      if (v57)
      {
        v26 = __clz(__rbit64(v57)) | v55 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v58 = v80 << 6;
        v59 = v80 + 1;
        v60 = (v67 + 8 * v80);
        while (v59 < (v26 + 63) >> 6)
        {
          v62 = *v60++;
          v61 = v62;
          v58 += 64;
          ++v59;
          if (v62)
          {
            sub_22CF44CF8(v55, v69, 0);
            v26 = __clz(__rbit64(v61)) + v58;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v55, v69, 0);
      }

LABEL_4:
      v24 = v78 + 1;
      v23 = v26;
    }

    while (v78 + 1 != v68);

    if (!*(v20 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_23:
      v63 = MEMORY[0x277D84F98];
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
  v63 = sub_22D016D3C();
LABEL_24:
  v87 = v63;

  sub_22CF623EC(v64, 1, &v87);

  return v87;
}

uint64_t sub_22CF7594C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    v28 = 0;
    return v28 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v23 = *(v9 + 16);
  v22 = v9 + 16;
  v24 = (v22 - 8);
  v32 = *(v22 + 56);
  v33 = v23;
  while (1)
  {
    v25 = v33;
    result = (v33)(v17, v20, v8);
    if (!v18)
    {
      break;
    }

    v27 = v22;
    v25(v14, v21, v8);
    sub_22CF7C4D4(v34, v35);
    v28 = sub_22D01665C();
    v29 = *v24;
    (*v24)(v14, v8);
    v29(v17, v8);
    if (v28)
    {
      v21 += v32;
      v20 += v32;
      v30 = v18-- == 1;
      v22 = v27;
      if (!v30)
      {
        continue;
      }
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF75B44(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_22D016EAC();

    sub_22D0166DC();
    v17 = sub_22D016ECC();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_22D016DFC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF75CFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v37 = a2 + 56;
  v31 = result + 56;
  v32 = result;
  v34 = a2;
  v30 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v33 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 40 * (v8 | (v2 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(a2 + 40);
    v18 = a2;
    sub_22D016EAC();

    sub_22D0166DC();
    v36 = v14;
    sub_22D0166DC();
    v35 = v16;
    MEMORY[0x2318C6020](v16);
    v19 = sub_22D016ECC();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_31:

      return 0;
    }

    v22 = ~v20;
    v23 = *(v34 + 48);
    while (1)
    {
      v24 = v23 + 40 * v21;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = *(v24 + 32);
      v28 = *v24 == v13 && *(v24 + 8) == v12;
      if (!v28 && (sub_22D016DFC() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v25 != v36 || v26 != v15)
      {
        break;
      }

      if (v35 == v27)
      {
        goto LABEL_28;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (sub_22D016DFC() & 1) == 0 || ((v35 ^ v27))
    {
      goto LABEL_16;
    }

LABEL_28:

    v3 = v31;
    result = v32;
    v6 = v33;
    a2 = v34;
    v7 = v30;
  }

  while (v33);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

size_t sub_22CF75FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF760C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450]);
  v37 = a2;
  v14 = sub_22D01661C();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_22CF7C4D4(&qword_28143FBA8, MEMORY[0x277D4D450]);
      v24 = sub_22D01665C();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_22CF781F0(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_22CF763A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22D0159DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790]);
  v37 = a2;
  v14 = sub_22D01661C();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_22CF7C4D4(&qword_27D9F2A48, MEMORY[0x277D46790]);
      v24 = sub_22D01665C();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_22CF78494(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_22CF76684(void *a1, void *a2)
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

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      _s11SessionCore6ClientCMa_0();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22CF5FD94(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22CF77FD0(v22 + 1, &qword_27D9F27D8, &qword_22D0190C8);
    }

    v20 = v8;
    sub_22CF6569C();

    *v3 = v21;
    goto LABEL_16;
  }

  _s11SessionCore6ClientCMa_0();
  v11 = *(v6 + 40);
  v12 = sub_22D016A5C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22CEE4CDC(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D9F27D8, &qword_22D0190C8, _s11SessionCore6ClientCMa_0, sub_22CF602F4);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22D016A6C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22CF768E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  v34 = v6;
  sub_22D0166DC();
  v33 = v3;
  MEMORY[0x2318C6020](v3);
  v10 = sub_22D016ECC();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    do
    {
      v15 = v14 + 40 * v12;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = *(v15 + 32);
      v19 = *v15 == v5 && *(v15 + 8) == v4;
      if (v19 || (sub_22D016DFC() & 1) != 0)
      {
        if (v17 == v7 && v16 == v34)
        {
          if (v33 == v18)
          {
            goto LABEL_16;
          }
        }

        else if ((sub_22D016DFC() & 1) != 0 && ((v33 ^ v18) & 1) == 0)
        {
LABEL_16:

          v21 = *(v8 + 48) + 40 * v12;
          v23 = *v21;
          v22 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v21 + 24);
          LOBYTE(v21) = *(v21 + 32);
          *a1 = v23;
          *(a1 + 8) = v22;
          *(a1 + 16) = v24;
          *(a1 + 24) = v25;
          *(a1 + 32) = v21;

          return 0;
        }
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  v27 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v30;

  sub_22CF78738(a2, v12, isUniquelyReferenced_nonNull_native);
  *v30 = v35;
  v29 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v29;
  *(a1 + 32) = *(a2 + 32);
  return 1;
}

uint64_t sub_22CF76AFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22D015E7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
  v37 = a2;
  v14 = sub_22D01661C();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_22CF7C4D4(&qword_28143FB80, MEMORY[0x277D4D5D8]);
      v24 = sub_22D01665C();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_22CF78948(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_22CF76DDC(void *a1, void *a2)
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

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      _s11SessionCore6ClientCMa_3();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22CF5FE48(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22CF77FD0(v22 + 1, &qword_27D9F27C0, &qword_22D0190B0);
    }

    v20 = v8;
    sub_22CF6569C();

    *v3 = v21;
    goto LABEL_16;
  }

  _s11SessionCore6ClientCMa_3();
  v11 = *(v6 + 40);
  v12 = sub_22D016A5C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22CEE4CDC(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D9F27C0, &qword_22D0190B0, _s11SessionCore6ClientCMa_3, sub_22CF60708);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22D016A6C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22CF7703C(void *a1, void *a2)
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

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      type metadata accessor for AuthorizationServiceClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22CF5FE84(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22CF77FD0(v22 + 1, &qword_27D9F27B0, &qword_22D0190A0);
    }

    v20 = v8;
    sub_22CF6569C();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for AuthorizationServiceClient();
  v11 = *(v6 + 40);
  v12 = sub_22D016A5C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22CEE4CDC(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D9F27B0, &qword_22D0190A0, type metadata accessor for AuthorizationServiceClient, sub_22CF6071C);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22D016A6C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22CF772B0(uint64_t a1)
{
  v2 = v1;
  v42 = sub_22D01534C();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27B8, &qword_22D0190A8);
  result = sub_22D016C1C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450]);
      result = sub_22D01661C();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22CF7760C(uint64_t a1)
{
  v2 = v1;
  v42 = sub_22D0159DC();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27E8, &qword_22D019710);
  result = sub_22D016C1C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790]);
      result = sub_22D01661C();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22CF7797C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A8, &qword_22D019098);
  result = sub_22D016C1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      sub_22D0166DC();
      MEMORY[0x2318C6020](v24);
      result = sub_22D016ECC();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v35;
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22CF77C24(uint64_t a1)
{
  v2 = v1;
  v42 = sub_22D015E7C();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27F8, qword_22D0190F0);
  result = sub_22D016C1C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
      result = sub_22D01661C();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22CF77FD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22D016C1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_22D016A5C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_22CF781F0(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22CF772B0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22CF602A4();
      goto LABEL_12;
    }

    sub_22CF78E24(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450]);
  v16 = sub_22D01661C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_22CF7C4D4(&qword_28143FBA8, MEMORY[0x277D4D450]);
      v24 = sub_22D01665C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22D016E0C();
  __break(1u);
  return result;
}

uint64_t sub_22CF78494(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22D0159DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22CF7760C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22CF602CC();
      goto LABEL_12;
    }

    sub_22CF79140(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790]);
  v16 = sub_22D01661C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_22CF7C4D4(&qword_27D9F2A48, MEMORY[0x277D46790]);
      v24 = sub_22D01665C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22D016E0C();
  __break(1u);
  return result;
}

uint64_t sub_22CF78738(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_22CF7797C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22CF60308();
      goto LABEL_24;
    }

    sub_22CF7945C(v6 + 1);
  }

  v8 = *(v5 + 32);
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  v34 = v11;
  sub_22D0166DC();
  v33 = v8;
  MEMORY[0x2318C6020](v8);
  result = sub_22D016ECC();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a2 = result & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 40 * a2;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *v19 == v9 && *(v19 + 8) == v10;
      if (v23 || (result = sub_22D016DFC(), (result & 1) != 0))
      {
        if (v20 == v34 && v21 == v12)
        {
          if (v33 == v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          result = sub_22D016DFC();
          if ((result & 1) != 0 && ((v33 ^ v22) & 1) == 0)
          {
LABEL_23:
            result = sub_22D016E0C();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(v32 + 16);
  *v26 = *v32;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v32 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }

  return result;
}

uint64_t sub_22CF78948(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22D015E7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22CF77C24(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22CF60480();
      goto LABEL_12;
    }

    sub_22CF796E8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
  v16 = sub_22D01661C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_22CF7C4D4(&qword_28143FB80, MEMORY[0x277D4D5D8]);
      v24 = sub_22D01665C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22D016E0C();
  __break(1u);
  return result;
}