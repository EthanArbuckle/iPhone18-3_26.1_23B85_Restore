uint64_t sub_20B7435D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C1370C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v45, v44, MEMORY[0x277D53128], MEMORY[0x277D53118], sub_20B7530BC, sub_20B6B70B8, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C764AE0);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05F88(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05F88(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}

uint64_t sub_20B743A98@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C133A74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v45, v44, MEMORY[0x277D50278], MEMORY[0x277D50258], sub_20B74FD88, sub_20B6B70E4, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &unk_27C767600);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05FB0(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05FB0(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}

uint64_t sub_20B743F5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v126 = a4;
  v125 = a3;
  LODWORD(v127) = a2;
  v129 = sub_20C1341A4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v124 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = &v122 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v122 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v122 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v122 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v122 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v122 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v122 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v122 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F0);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = (&v122 + *(v31 + 56) - v30);
  sub_20B747A04(a1, v32);
  sub_20C135C84();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v127 > 3u)
  {
    if (v127 <= 5u)
    {
      if (v127 == 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v58 = v32[1];
          v59 = *(v125 + 16);
          v36 = v129;
          if (v59)
          {
            v60 = *v32;
            v127 = *(v128 + 16);
            v61 = (v128 + 8);
            v62 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
            v125 = *(v128 + 72);
            while (1)
            {
              v127(v16, v62, v36);
              if (sub_20C1362C4() == v60 && v63 == v58)
              {

                goto LABEL_110;
              }

              v65 = sub_20C13DFF4();

              if (v65)
              {
                break;
              }

              v36 = v129;
              (*v61)(v16, v129);
              v62 += v125;
              if (!--v59)
              {
                goto LABEL_90;
              }
            }

            v36 = v129;
LABEL_110:

            v109 = v128;
            v110 = v126;
            (*(v128 + 32))(v126, v16, v36);
            return (*(v109 + 56))(v110, 0, 1, v36);
          }

          goto LABEL_90;
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        v101 = v32[1];
        v102 = *(v125 + 16);
        v36 = v129;
        if (v102)
        {
          v103 = *v32;
          v127 = *(v128 + 16);
          v104 = (v128 + 8);
          v105 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
          v125 = *(v128 + 72);
          while (1)
          {
            v127(v13, v105, v36);
            if (sub_20C1362C4() == v103 && v106 == v101)
            {

              goto LABEL_112;
            }

            v108 = sub_20C13DFF4();

            if (v108)
            {
              break;
            }

            v36 = v129;
            (*v104)(v13, v129);
            v105 += v125;
            if (!--v102)
            {
              goto LABEL_90;
            }
          }

          v36 = v129;
LABEL_112:

          v109 = v128;
          v110 = v126;
          (*(v128 + 32))(v126, v13, v36);
          return (*(v109 + 56))(v110, 0, 1, v36);
        }

        goto LABEL_90;
      }
    }

    else if (v127 == 6)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v66 = v32[1];
        v67 = *(v125 + 16);
        v36 = v129;
        if (v67)
        {
          v68 = *v32;
          v127 = *(v128 + 16);
          v69 = (v128 + 8);
          v70 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
          v125 = *(v128 + 72);
          while (1)
          {
            v127(v10, v70, v36);
            if (sub_20C1362C4() == v68 && v71 == v66)
            {

              goto LABEL_101;
            }

            v73 = sub_20C13DFF4();

            if (v73)
            {
              break;
            }

            v36 = v129;
            (*v69)(v10, v129);
            v70 += v125;
            if (!--v67)
            {
              goto LABEL_90;
            }
          }

          v36 = v129;
LABEL_101:

          v109 = v128;
          v110 = v126;
          (*(v128 + 32))(v126, v10, v36);
          return (*(v109 + 56))(v110, 0, 1, v36);
        }

        goto LABEL_90;
      }
    }

    else if (v127 == 7)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v34 = v32[1];
        v35 = *(v125 + 16);
        v36 = v129;
        v37 = v123;
        if (v35)
        {
          v38 = *v32;
          v127 = *(v128 + 16);
          v39 = (v128 + 8);
          v40 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
          v41 = *(v128 + 72);
          while (1)
          {
            v127(v37, v40, v36);
            if (sub_20C1362C4() == v38 && v42 == v34)
            {

              goto LABEL_106;
            }

            v44 = sub_20C13DFF4();

            if (v44)
            {
              break;
            }

            v37 = v123;
            v36 = v129;
            (*v39)(v123, v129);
            v40 += v41;
            if (!--v35)
            {
              goto LABEL_90;
            }
          }

          v36 = v129;
LABEL_106:

          v109 = v128;
          v110 = v126;
          (*(v128 + 32))(v126, v123, v36);
          return (*(v109 + 56))(v110, 0, 1, v36);
        }

        goto LABEL_90;
      }
    }

    else if (EnumCaseMultiPayload == 10)
    {
      v91 = v32[1];
      v92 = v124;
      v93 = *(v125 + 16);
      v36 = v129;
      if (v93)
      {
        v94 = *v32;
        v127 = *(v128 + 16);
        v95 = (v128 + 8);
        v96 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
        v97 = *(v128 + 72);
        while (1)
        {
          v127(v92, v96, v36);
          if (sub_20C1362C4() == v94 && v98 == v91)
          {

            goto LABEL_108;
          }

          v100 = sub_20C13DFF4();

          if (v100)
          {
            break;
          }

          v92 = v124;
          v36 = v129;
          (*v95)(v124, v129);
          v96 += v97;
          if (!--v93)
          {
            goto LABEL_90;
          }
        }

        v36 = v129;
LABEL_108:

        v109 = v128;
        v110 = v126;
        (*(v128 + 32))(v126, v124, v36);
        return (*(v109 + 56))(v110, 0, 1, v36);
      }

LABEL_90:

      return (*(v128 + 56))(v126, 1, 1, v36);
    }

    goto LABEL_91;
  }

  if (v127 > 1u)
  {
    if (v127 == 2)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v53 = v128;
        v54 = v32;
        v55 = v129;
        v56 = (*(v128 + 32))(v22, v54, v129);
        MEMORY[0x28223BE20](v56);
        *(&v122 - 2) = v22;
        sub_20B6B6FB0(sub_20B747BE0, v125, v126);
        return (*(v53 + 8))(v22, v55);
      }

      goto LABEL_91;
    }

    if (EnumCaseMultiPayload != 4)
    {
LABEL_91:
      (*(v128 + 56))(v126, 1, 1, v129);
      return sub_20B747A68(v32, MEMORY[0x277D52060]);
    }

    v83 = v32[1];
    v84 = *(v125 + 16);
    v76 = v129;
    if (v84)
    {
      v85 = *v32;
      v127 = *(v128 + 16);
      v86 = (v128 + 8);
      v87 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
      v125 = *(v128 + 72);
      while (1)
      {
        v127(v19, v87, v76);
        if (sub_20C1362C4() == v85 && v88 == v83)
        {
          break;
        }

        v90 = sub_20C13DFF4();

        if (v90)
        {
          goto LABEL_104;
        }

        v76 = v129;
        (*v86)(v19, v129);
        v87 += v125;
        if (!--v84)
        {
          goto LABEL_70;
        }
      }

LABEL_104:

      v118 = v128;
      v119 = v126;
      v120 = v19;
      v121 = v129;
      (*(v128 + 32))(v126, v120, v129);
      return (*(v118 + 56))(v119, 0, 1, v121);
    }

LABEL_70:

    return (*(v128 + 56))(v126, 1, 1, v76);
  }

  if (v127)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_91;
    }

    v74 = v32[1];
    v75 = *(v125 + 16);
    v76 = v129;
    if (v75)
    {
      v77 = *v32;
      v127 = *(v128 + 16);
      v78 = (v128 + 8);
      v79 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
      v125 = *(v128 + 72);
      while (1)
      {
        v127(v25, v79, v76);
        if (sub_20C1362C4() == v77 && v80 == v74)
        {
          break;
        }

        v82 = sub_20C13DFF4();

        if (v82)
        {
          goto LABEL_103;
        }

        v76 = v129;
        (*v78)(v25, v129);
        v79 += v125;
        if (!--v75)
        {
          goto LABEL_70;
        }
      }

LABEL_103:

      v115 = v128;
      v116 = v126;
      v117 = v129;
      (*(v128 + 32))(v126, v25, v129);
      return (*(v115 + 56))(v116, 0, 1, v117);
    }

    goto LABEL_70;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_91;
  }

  v45 = v32[1];
  v46 = *(v125 + 16);
  v36 = v129;
  if (!v46)
  {
    goto LABEL_90;
  }

  v47 = *v32;
  v127 = *(v128 + 16);
  v48 = (v128 + 8);
  v49 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
  v125 = *(v128 + 72);
  while (1)
  {
    v127(v28, v49, v36);
    if (sub_20C1362C4() == v47 && v50 == v45)
    {
      break;
    }

    v52 = sub_20C13DFF4();

    if (v52)
    {
      goto LABEL_102;
    }

    v36 = v129;
    (*v48)(v28, v129);
    v49 += v125;
    if (!--v46)
    {
      goto LABEL_90;
    }
  }

LABEL_102:

  v111 = v128;
  v112 = v126;
  v113 = v28;
  v114 = v129;
  (*(v128 + 32))(v126, v113, v129);
  return (*(v111 + 56))(v112, 0, 1, v114);
}

uint64_t sub_20B744C60@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void, __n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, __n128)@<X6>, uint64_t a8@<X8>)
{
  v135 = a6;
  v136 = a7;
  v142 = a5;
  v139 = a1;
  v137 = a3;
  v138 = a8;
  LODWORD(v140) = a2;
  v9 = sub_20C1341A4();
  v134 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a4(0, v10);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v133 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v132 = &v132 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v132 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v132 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v132 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v132 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v132 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v132 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F0);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = (&v132 + *(v36 + 56) - v35);
  sub_20B747A04(v139, v37);
  sub_20C135C84();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v140 > 3u)
  {
    if (v140 > 5u)
    {
      if (v140 == 6)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v74 = v37[1];
          v75 = *(v137 + 16);
          v41 = v143;
          if (v75)
          {
            v76 = *v37;
            v77 = *(v141 + 16);
            v78 = (v141 + 8);
            v79 = v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
            v139 = *(v141 + 72);
            v140 = v77;
            while (1)
            {
              v140(v18, v79, v41);
              if (sub_20C1362C4() == v76 && v80 == v74)
              {

                goto LABEL_85;
              }

              v81 = sub_20C13DFF4();

              if (v81)
              {
                break;
              }

              v41 = v143;
              (*v78)(v18, v143);
              v79 += v139;
              if (!--v75)
              {
                goto LABEL_66;
              }
            }

            v41 = v143;
LABEL_85:

            v116 = v141;
            v117 = v138;
            (*(v141 + 32))(v138, v18, v41);
            return (*(v116 + 56))(v117, 0, 1, v41);
          }

          goto LABEL_66;
        }
      }

      else if (v140 == 7)
      {
        if (EnumCaseMultiPayload == 9)
        {
          v39 = v37[1];
          v40 = *(v137 + 16);
          v41 = v143;
          v42 = v132;
          if (v40)
          {
            v43 = *v37;
            v44 = *(v141 + 16);
            v45 = (v141 + 8);
            v46 = v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
            v139 = *(v141 + 72);
            v140 = v44;
            while (1)
            {
              v140(v42, v46, v41);
              if (sub_20C1362C4() == v43 && v47 == v39)
              {

                goto LABEL_90;
              }

              v48 = sub_20C13DFF4();

              if (v48)
              {
                break;
              }

              v41 = v143;
              (*v45)(v42, v143);
              v46 += v139;
              if (!--v40)
              {
                goto LABEL_66;
              }
            }

            v41 = v143;
LABEL_90:

            v116 = v141;
            v117 = v138;
            (*(v141 + 32))(v138, v42, v41);
            return (*(v116 + 56))(v117, 0, 1, v41);
          }

          goto LABEL_66;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v99 = v37[1];
        v100 = *(v137 + 16);
        v41 = v143;
        v101 = v133;
        if (v100)
        {
          v102 = *v37;
          v140 = *(v141 + 16);
          v103 = (v141 + 8);
          v104 = v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
          v105 = *(v141 + 72);
          while (1)
          {
            v140(v101, v104, v41);
            if (sub_20C1362C4() == v102 && v106 == v99)
            {

              goto LABEL_92;
            }

            v107 = sub_20C13DFF4();

            if (v107)
            {
              break;
            }

            v101 = v133;
            v41 = v143;
            (*v103)(v133, v143);
            v104 += v105;
            if (!--v100)
            {
              goto LABEL_66;
            }
          }

          v41 = v143;
LABEL_92:

          v116 = v141;
          v117 = v138;
          (*(v141 + 32))(v138, v133, v41);
          return (*(v116 + 56))(v117, 0, 1, v41);
        }

LABEL_66:

        return (*(v141 + 56))(v138, 1, 1, v41);
      }

      goto LABEL_75;
    }

    if (v140 == 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v66 = v37[1];
        v67 = *(v137 + 16);
        v41 = v143;
        if (v67)
        {
          v68 = *v37;
          v69 = *(v141 + 16);
          v70 = (v141 + 8);
          v71 = v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
          v139 = *(v141 + 72);
          v140 = v69;
          while (1)
          {
            v140(v24, v71, v41);
            if (sub_20C1362C4() == v68 && v72 == v66)
            {

              goto LABEL_94;
            }

            v73 = sub_20C13DFF4();

            if (v73)
            {
              break;
            }

            v41 = v143;
            (*v70)(v24, v143);
            v71 += v139;
            if (!--v67)
            {
              goto LABEL_66;
            }
          }

          v41 = v143;
LABEL_94:

          v116 = v141;
          v117 = v138;
          (*(v141 + 32))(v138, v24, v41);
          return (*(v116 + 56))(v117, 0, 1, v41);
        }

        goto LABEL_66;
      }

      goto LABEL_75;
    }

    if (EnumCaseMultiPayload != 7)
    {
      goto LABEL_75;
    }

    v108 = v37[1];
    v109 = *(v137 + 16);
    v84 = v143;
    if (v109)
    {
      v110 = *v37;
      v111 = *(v141 + 16);
      v112 = (v141 + 8);
      v113 = v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v139 = *(v141 + 72);
      v140 = v111;
      while (1)
      {
        v140(v21, v113, v84);
        if (sub_20C1362C4() == v110 && v114 == v108)
        {
          break;
        }

        v115 = sub_20C13DFF4();

        if (v115)
        {
          goto LABEL_96;
        }

        v84 = v143;
        (*v112)(v21, v143);
        v113 += v139;
        if (!--v109)
        {
          goto LABEL_74;
        }
      }

LABEL_96:

      v126 = v141;
      v127 = *(v141 + 32);
      v128 = v138;
      v129 = v138;
      v130 = v21;
LABEL_97:
      v131 = v143;
      v127(v129, v130, v143);
      return (*(v126 + 56))(v128, 0, 1, v131);
    }

    goto LABEL_74;
  }

  v49 = v9;
  v50 = v135;
  v51 = v136;
  if (v140 > 1u)
  {
    if (v140 == 2)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v60 = v134;
        v61 = v37;
        v62 = v49;
        v63 = (*(v134 + 32))(v12, v61, v49);
        v64 = MEMORY[0x28223BE20](v63);
        *(&v132 - 2) = v12;
        v51(v50, v64);
        return (*(v60 + 8))(v12, v62);
      }

      goto LABEL_75;
    }

    if (EnumCaseMultiPayload != 4)
    {
LABEL_75:
      (*(v141 + 56))(v138, 1, 1, v143);
      return sub_20B747A68(v37, MEMORY[0x277D52060]);
    }

    v91 = v37[1];
    v92 = *(v137 + 16);
    v84 = v143;
    if (v92)
    {
      v93 = *v37;
      v94 = *(v141 + 16);
      v95 = (v141 + 8);
      v96 = v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v139 = *(v141 + 72);
      v140 = v94;
      while (1)
      {
        v140(v27, v96, v84);
        if (sub_20C1362C4() == v93 && v97 == v91)
        {
          break;
        }

        v98 = sub_20C13DFF4();

        if (v98)
        {
          goto LABEL_88;
        }

        v84 = v143;
        (*v95)(v27, v143);
        v96 += v139;
        if (!--v92)
        {
          goto LABEL_74;
        }
      }

LABEL_88:

      v126 = v141;
      v127 = *(v141 + 32);
      v128 = v138;
      v129 = v138;
      v130 = v27;
      goto LABEL_97;
    }

LABEL_74:

    return (*(v141 + 56))(v138, 1, 1, v84);
  }

  if (v140)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_75;
    }

    v82 = v37[1];
    v83 = *(v137 + 16);
    v84 = v143;
    if (!v83)
    {
      goto LABEL_74;
    }

    v85 = *v37;
    v86 = *(v141 + 16);
    v87 = (v141 + 8);
    v88 = v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v139 = *(v141 + 72);
    v140 = v86;
    while (1)
    {
      v140(v30, v88, v84);
      if (sub_20C1362C4() == v85 && v89 == v82)
      {
        break;
      }

      v90 = sub_20C13DFF4();

      if (v90)
      {
        goto LABEL_87;
      }

      v84 = v143;
      (*v87)(v30, v143);
      v88 += v139;
      if (!--v83)
      {
        goto LABEL_74;
      }
    }

LABEL_87:

    v122 = v141;
    v123 = v138;
    v124 = v30;
    v125 = v143;
    (*(v141 + 32))(v138, v124, v143);
    return (*(v122 + 56))(v123, 0, 1, v125);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_75;
    }

    v52 = v37[1];
    v53 = *(v137 + 16);
    v41 = v143;
    if (!v53)
    {
      goto LABEL_66;
    }

    v54 = *v37;
    v55 = *(v141 + 16);
    v56 = (v141 + 8);
    v57 = v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v139 = *(v141 + 72);
    v140 = v55;
    while (1)
    {
      v140(v33, v57, v41);
      if (sub_20C1362C4() == v54 && v58 == v52)
      {
        break;
      }

      v59 = sub_20C13DFF4();

      if (v59)
      {
        goto LABEL_86;
      }

      v41 = v143;
      (*v56)(v33, v143);
      v57 += v139;
      if (!--v53)
      {
        goto LABEL_66;
      }
    }

LABEL_86:

    v118 = v141;
    v119 = v138;
    v120 = v33;
    v121 = v143;
    (*(v141 + 32))(v138, v120, v143);
    return (*(v118 + 56))(v119, 0, 1, v121);
  }
}

uint64_t sub_20B7459A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = sub_20C1362C4();
  v5 = v4;
  if (v3 == sub_20C134154() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  return v8 & 1;
}

uint64_t sub_20B745A54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void (*)(void), uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B733510(a3, a4, a5);
  }

  return result;
}

uint64_t sub_20B745ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C136594();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      sub_20B700A84(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

void sub_20B745C2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C134E04();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A70);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A80);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A88);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C764A80;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C764A88);
    if (sub_20B7337FC(v46) == 2)
    {
      v44 = &qword_27C764A88;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &qword_27C764A78);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73BCD4(sub_20B752C54, (&v97 - 4), MEMORY[0x277D51130], &qword_27C764A78, &unk_20C156788, MEMORY[0x277D510F8], 10);
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &qword_27C764A78);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &qword_27C764A78);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &qword_27C764A78);
    sub_20B52F9E8(v2 + v47, &v17[v52], &qword_27C764A78);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &qword_27C764A78);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &qword_27C764A78);
        v44 = &qword_27C764A88;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &qword_27C764A78);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &qword_27C764A78);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &qword_27C764A78);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &qword_27C764A78);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &qword_27C764A78);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &qword_27C764A78);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &qword_27C764A78);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &qword_27C764A78);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &qword_27C764A78);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C764A70);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_20B746AFC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1341A4();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764998);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C7649A0;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C7649A8);
    if (sub_20B7344F4(v46) == 2)
    {
      v44 = &qword_27C7649A8;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &qword_27C7627B8);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73AC14(sub_20B747998, (&v97 - 4));
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &qword_27C7627B8);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &qword_27C7627B8);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &qword_27C7627B8);
    sub_20B52F9E8(v2 + v47, &v17[v52], &qword_27C7627B8);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &qword_27C7627B8);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &qword_27C7627B8);
        v44 = &qword_27C7649A8;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &qword_27C7627B8);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &qword_27C7627B8);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &qword_27C7627B8);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &qword_27C7627B8);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &qword_27C7627B8);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &qword_27C7627B8);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &qword_27C7627B8);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &qword_27C7627B8);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &qword_27C7627B8);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C764998);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_20B7479A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135C84();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B747A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135C84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B747A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20B747B8C()
{
  result = qword_27C7649D0;
  if (!qword_27C7649D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7649D0);
  }

  return result;
}

void sub_20B747C1C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1365F4();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A20);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C764A20;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C764A28);
    if (sub_20B73514C(v46) == 2)
    {
      v44 = &qword_27C764A28;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &qword_27C771090);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73BCD4(sub_20B74F400, (&v97 - 4), MEMORY[0x277D52AF8], &qword_27C771090, &unk_20C15A040, MEMORY[0x277D52AC8], 4);
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &qword_27C771090);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &qword_27C771090);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &qword_27C771090);
    sub_20B52F9E8(v2 + v47, &v17[v52], &qword_27C771090);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &qword_27C771090);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &qword_27C771090);
        v44 = &qword_27C764A28;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &qword_27C771090);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &qword_27C771090);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &qword_27C771090);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &qword_27C771090);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &qword_27C771090);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &qword_27C771090);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &qword_27C771090);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &qword_27C771090);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &qword_27C771090);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C764A18);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_20B748AEC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C138244();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB8);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C764AC0;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C764AC8);
    if (sub_20B735E44(v46) == 2)
    {
      v44 = &qword_27C764AC8;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &qword_27C762710);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73BCD4(sub_20B752EBC, (&v97 - 4), MEMORY[0x277D53E10], &qword_27C762710, &unk_20C176710, MEMORY[0x277D53DE0], 1);
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &qword_27C762710);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &qword_27C762710);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &qword_27C762710);
    sub_20B52F9E8(v2 + v47, &v17[v52], &qword_27C762710);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &qword_27C762710);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &qword_27C762710);
        v44 = &qword_27C764AC8;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &qword_27C762710);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &qword_27C762710);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &qword_27C762710);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &qword_27C762710);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &qword_27C762710);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &qword_27C762710);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &qword_27C762710);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &qword_27C762710);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &qword_27C762710);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C764AB8);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_20B7499BC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1382B4();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A50);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A58);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C764A58;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C764A60);
    if (sub_20B736B3C(v46) == 2)
    {
      v44 = &qword_27C764A60;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &qword_27C7627E8);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73BCD4(sub_20B752B20, (&v97 - 4), MEMORY[0x277D53E88], &qword_27C7627E8, &unk_20C1643F0, MEMORY[0x277D53E58], 3);
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &qword_27C7627E8);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &qword_27C7627E8);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &qword_27C7627E8);
    sub_20B52F9E8(v2 + v47, &v17[v52], &qword_27C7627E8);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &qword_27C7627E8);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &qword_27C7627E8);
        v44 = &qword_27C764A60;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &qword_27C7627E8);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &qword_27C7627E8);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &qword_27C7627E8);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &qword_27C7627E8);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &qword_27C7627E8);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &qword_27C7627E8);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &qword_27C7627E8);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &qword_27C7627E8);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &qword_27C7627E8);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C764A50);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_20B74A88C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1333E4();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A98);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA8);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C764AA8;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C764AB0);
    if (sub_20B737834(v46) == 2)
    {
      v44 = &qword_27C764AB0;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &qword_27C764AA0);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73BCD4(sub_20B752D88, (&v97 - 4), MEMORY[0x277D4FE80], &qword_27C764AA0, &unk_20C1643E0, MEMORY[0x277D4FE50], 5);
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &qword_27C764AA0);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &qword_27C764AA0);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &qword_27C764AA0);
    sub_20B52F9E8(v2 + v47, &v17[v52], &qword_27C764AA0);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &qword_27C764AA0);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &qword_27C764AA0);
        v44 = &qword_27C764AB0;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &qword_27C764AA0);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &qword_27C764AA0);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &qword_27C764AA0);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &qword_27C764AA0);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &qword_27C764AA0);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &qword_27C764AA0);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &qword_27C764AA0);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &qword_27C764AA0);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &qword_27C764AA0);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C764A98);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_20B74B75C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1334D4();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F8);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A00);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C764A00;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C764A08);
    if (sub_20B73852C(v46) == 2)
    {
      v44 = &qword_27C764A08;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &qword_27C762758);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73BCD4(sub_20B74EB44, (&v97 - 4), MEMORY[0x277D4FF18], &qword_27C762758, &unk_20C176700, MEMORY[0x277D4FEF0], 7);
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &qword_27C762758);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &qword_27C762758);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &qword_27C762758);
    sub_20B52F9E8(v2 + v47, &v17[v52], &qword_27C762758);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &qword_27C762758);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &qword_27C762758);
        v44 = &qword_27C764A08;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &qword_27C762758);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &qword_27C762758);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &qword_27C762758);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &qword_27C762758);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &qword_27C762758);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &qword_27C762758);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &qword_27C762758);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &qword_27C762758);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &qword_27C762758);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C7649F8);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_20B74C62C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1370C4();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AD8);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE8);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C764AE8;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C764AF0);
    if (sub_20B739224(v46) == 2)
    {
      v44 = &qword_27C764AF0;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &qword_27C764AE0);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73BCD4(sub_20B752FF0, (&v97 - 4), MEMORY[0x277D53128], &qword_27C764AE0, &unk_20C1643D0, MEMORY[0x277D53108], 9);
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &qword_27C764AE0);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &qword_27C764AE0);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &qword_27C764AE0);
    sub_20B52F9E8(v2 + v47, &v17[v52], &qword_27C764AE0);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &qword_27C764AE0);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &qword_27C764AE0);
        v44 = &qword_27C764AF0;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &qword_27C764AE0);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &qword_27C764AE0);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &qword_27C764AE0);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &qword_27C764AE0);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &qword_27C764AE0);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &qword_27C764AE0);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &qword_27C764AE0);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &qword_27C764AE0);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &qword_27C764AE0);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C764AD8);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_20B74D4FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v97 - v5;
  v6 = sub_20C134F24();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v97 - v9;
  v101 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135ED4();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C133A74();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A30);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v115 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A38);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v114 = &v97 - v37;
  if ((*(v2 + *(*v2 + 200)) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  if (!a1)
  {
    v106 = *(v2 + *(*v2 + 200));
    (*(v116 + 56))(v33, 1, 1, v13);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_45:
    if (a1 < 0 || (v39 = *(v2 + *(*v2 + 224)), a1 >= *(v39 + 16)))
    {
      (*(v35 + 56))(v33, 1, 1, v34, v36);
      v44 = &qword_27C764A38;
      v45 = v33;
LABEL_41:
      sub_20B520158(v45, v44);
      return;
    }

    v106 = *(v2 + *(*v2 + 200));
    v40 = v17;
    v41 = v15;
    v42 = v116;
    (*(v116 + 16))(v33, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * a1, v13, v36);
    v43 = v42;
    v15 = v41;
    v17 = v40;
    (*(v43 + 56))(v33, 0, 1, v13);
LABEL_9:
    (*(v35 + 56))(v33, 0, 1, v34);
    v46 = v114;
    sub_20B5DF134(v33, v114, &qword_27C764A40);
    if (sub_20B739F1C(v46) == 2)
    {
      v44 = &qword_27C764A40;
      v45 = v46;
      goto LABEL_41;
    }

    v47 = *(*v2 + 176);
    swift_beginAccess();
    v48 = sub_20B52F9E8(v2 + v47, v115, &unk_27C767600);
    MEMORY[0x28223BE20](v48);
    *(&v97 - 2) = v49;
    *(&v97 - 1) = v2;
    sub_20B73BCD4(sub_20B74FCBC, (&v97 - 4), MEMORY[0x277D50278], &unk_27C767600, &unk_20C175400, MEMORY[0x277D50240], 8);
    v50 = v47;
    sub_20B52F9E8(v2 + v47, v28, &unk_27C767600);
    if ((v106 & 0x10) == 0)
    {
      v51 = v2[10];
      if (v51)
      {

        v51(v28);
        sub_20B583ECC(v51);
      }
    }

    sub_20B520158(v28, &unk_27C767600);
    v52 = *(v15 + 48);
    sub_20B52F9E8(v115, v17, &unk_27C767600);
    sub_20B52F9E8(v2 + v47, &v17[v52], &unk_27C767600);
    v53 = *(v116 + 48);
    if (v53(v17, 1, v13) == 1)
    {
      if (v53(&v17[v52], 1, v13) == 1)
      {
        sub_20B520158(v17, &unk_27C767600);
LABEL_37:
        if ((v106 & 0x80) != 0)
        {
          v95 = v2[12];
          if (v95)
          {

            v95(v96);
            sub_20B583ECC(v95);
          }
        }

        sub_20B520158(v115, &unk_27C767600);
        v44 = &qword_27C764A40;
        v45 = v114;
        goto LABEL_41;
      }
    }

    else
    {
      v54 = v99;
      sub_20B52F9E8(v17, v99, &unk_27C767600);
      if (v53(&v17[v52], 1, v13) != 1)
      {
        v97 = v47;
        v64 = v116;
        v65 = &v17[v52];
        v66 = v98;
        (*(v116 + 32))(v98, v65, v13);
        sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278]);
        v67 = sub_20C13C894();
        v68 = *(v64 + 8);
        v68(v66, v13);
        v68(v54, v13);
        v50 = v97;
        sub_20B520158(v17, &unk_27C767600);
        if (v67)
        {
          goto LABEL_37;
        }

LABEL_20:
        v55 = v50;
        v56 = v2 + v50;
        v57 = v100;
        sub_20B52F9E8(v56, v100, &unk_27C767600);
        v58 = v53(v57, 1, v13);
        sub_20B520158(v57, &unk_27C767600);
        v59 = v58 == 1 && (v53)(v115, 1, v13) != 1;
        v60 = v105;
        v61 = v103;
        sub_20B52F9E8(v2 + v55, v103, &unk_27C767600);
        if (v53(v61, 1, v13))
        {
          sub_20B520158(v61, &unk_27C767600);
          v62 = 0;
          v63 = 0;
        }

        else
        {
          v69 = v116;
          v70 = v60;
          v71 = v98;
          (*(v116 + 16))(v98, v61, v13);
          sub_20B520158(v61, &unk_27C767600);
          v72 = sub_20C1362C4();
          v63 = v73;
          v74 = v71;
          v60 = v70;
          v62 = v72;
          (*(v69 + 8))(v74, v13);
        }

        (*(v111 + 104))(v113, **(&unk_277D97F18 + *(v2 + *(*v2 + 208))), v112);
        v75 = sub_20C136664();
        (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
        v76 = MEMORY[0x277D51440];
        if (!v59)
        {
          v76 = MEMORY[0x277D51450];
        }

        (*(v109 + 104))(v108, *v76, v110);
        v77 = sub_20C132C14();
        (*(*(v77 - 8) + 56))(v60, 1, 1, v77);
        if (v59)
        {

          v78 = v102;
          sub_20B52F9E8(v115, v102, &unk_27C767600);
          if (v53(v78, 1, v13) == 1)
          {
            sub_20B520158(v102, &unk_27C767600);
            v62 = 0;
            v63 = 0;
          }

          else
          {
            v79 = v102;
            v62 = sub_20C1362C4();
            v63 = v80;
            (*(v116 + 8))(v79, v13);
          }
        }

        v82 = v111;
        v81 = v112;
        v83 = v104;
        v84 = v101;
        v85 = *(v101 + 32);
        (*(v111 + 16))(&v104[v85], v113, v112);
        (*(v82 + 56))(v83 + v85, 0, 1, v81);
        v86 = v84[10];
        v87 = *MEMORY[0x277D51768];
        v88 = sub_20C1352E4();
        (*(*(v88 - 8) + 104))(v83 + v86, v87, v88);
        v89 = v84[11];
        v90 = sub_20C136E94();
        (*(*(v90 - 8) + 56))(v83 + v89, 1, 1, v90);
        v91 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        sub_20B5DF134(v107, v83, &unk_27C7622E0);
        (*(v109 + 32))(v83 + v84[5], v108, v110);
        sub_20B5DF134(v60, v83 + v84[6], &unk_27C7617F0);
        v92 = (v83 + v84[7]);
        *v92 = v62;
        v92[1] = v63;
        v93 = (v83 + v84[9]);
        *v93 = 0;
        v93[1] = 0;
        *(v83 + v84[12]) = v91;
        v94 = v2[14];
        if (v94)
        {

          v94(v83);
          sub_20B583ECC(v94);
        }

        sub_20B747A68(v83, type metadata accessor for ShelfMetricAction);
        (*(v82 + 8))(v113, v81);
        goto LABEL_37;
      }

      (*(v116 + 8))(v54, v13);
    }

    sub_20B520158(v17, &qword_27C764A30);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_20B74E3CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1341A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764998);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C7649A0;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C7649A8);
    sub_20B52F9E8(v30, v20, &qword_27C7649A8);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C7649A8);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &qword_27C7627B8);
    sub_20B52F9E8(v2 + v34, v37 + v35, &qword_27C7627B8);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C7649A8);
        sub_20B520158(v37, &qword_27C7627B8);
        v38 = v50;
LABEL_23:
        v28 = &qword_27C7627B8;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &qword_27C7627B8);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &qword_27C7627B8);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C7649A8);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73AC14(sub_20B74EB18, (&v46 - 4));
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C764998);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_20B74EC4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1334D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F8);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C764A00;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C764A08);
    sub_20B52F9E8(v30, v20, &qword_27C764A08);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C764A08);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &qword_27C762758);
    sub_20B52F9E8(v2 + v34, v37 + v35, &qword_27C762758);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C764A08);
        sub_20B520158(v37, &qword_27C762758);
        v38 = v50;
LABEL_23:
        v28 = &qword_27C762758;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &qword_27C762758);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &qword_27C762758);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C764A08);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73BCD4(sub_20B74F3D4, (&v46 - 4), MEMORY[0x277D4FF18], &qword_27C762758, &unk_20C176700, MEMORY[0x277D4FEF0], 7);
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C7649F8);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_20B74F508(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1365F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C764A20;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C764A28);
    sub_20B52F9E8(v30, v20, &qword_27C764A28);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C764A28);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &qword_27C771090);
    sub_20B52F9E8(v2 + v34, v37 + v35, &qword_27C771090);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C764A28);
        sub_20B520158(v37, &qword_27C771090);
        v38 = v50;
LABEL_23:
        v28 = &qword_27C771090;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &qword_27C771090);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &qword_27C771090);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C764A28);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73BCD4(sub_20B74FC90, (&v46 - 4), MEMORY[0x277D52AF8], &qword_27C771090, &unk_20C15A040, MEMORY[0x277D52AC8], 4);
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C764A18);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_20B74FDC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134E04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A70);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A88);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C764A80;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C764A88);
    sub_20B52F9E8(v30, v20, &qword_27C764A88);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C764A88);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &qword_27C764A78);
    sub_20B52F9E8(v2 + v34, v37 + v35, &qword_27C764A78);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C764A88);
        sub_20B520158(v37, &qword_27C764A78);
        v38 = v50;
LABEL_23:
        v28 = &qword_27C764A78;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &qword_27C764A78);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &qword_27C764A78);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C764A88);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73BCD4(sub_20B752D5C, (&v46 - 4), MEMORY[0x277D51130], &qword_27C764A78, &unk_20C156788, MEMORY[0x277D510F8], 10);
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C764A70);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_20B75054C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C138244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB8);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C764AC0;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C764AC8);
    sub_20B52F9E8(v30, v20, &qword_27C764AC8);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C764AC8);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &qword_27C762710);
    sub_20B52F9E8(v2 + v34, v37 + v35, &qword_27C762710);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C764AC8);
        sub_20B520158(v37, &qword_27C762710);
        v38 = v50;
LABEL_23:
        v28 = &qword_27C762710;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &qword_27C762710);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &qword_27C762710);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C764AC8);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73BCD4(sub_20B752FC4, (&v46 - 4), MEMORY[0x277D53E10], &qword_27C762710, &unk_20C176710, MEMORY[0x277D53DE0], 1);
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C764AB8);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_20B750CD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1382B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A50);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A58);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C764A58;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C764A60);
    sub_20B52F9E8(v30, v20, &qword_27C764A60);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C764A60);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &qword_27C7627E8);
    sub_20B52F9E8(v2 + v34, v37 + v35, &qword_27C7627E8);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C764A60);
        sub_20B520158(v37, &qword_27C7627E8);
        v38 = v50;
LABEL_23:
        v28 = &qword_27C7627E8;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &qword_27C7627E8);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &qword_27C7627E8);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C764A60);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73BCD4(sub_20B752C28, (&v46 - 4), MEMORY[0x277D53E88], &qword_27C7627E8, &unk_20C1643F0, MEMORY[0x277D53E58], 3);
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C764A50);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_20B75145C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1333E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A98);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C764AA8;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C764AB0);
    sub_20B52F9E8(v30, v20, &qword_27C764AB0);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C764AB0);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &qword_27C764AA0);
    sub_20B52F9E8(v2 + v34, v37 + v35, &qword_27C764AA0);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C764AB0);
        sub_20B520158(v37, &qword_27C764AA0);
        v38 = v50;
LABEL_23:
        v28 = &qword_27C764AA0;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &qword_27C764AA0);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &qword_27C764AA0);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C764AB0);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73BCD4(sub_20B752E90, (&v46 - 4), MEMORY[0x277D4FE80], &qword_27C764AA0, &unk_20C1643E0, MEMORY[0x277D4FE50], 5);
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C764A98);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_20B751BE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1370C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AD8);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C764AE8;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C764AF0);
    sub_20B52F9E8(v30, v20, &qword_27C764AF0);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C764AF0);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &qword_27C764AE0);
    sub_20B52F9E8(v2 + v34, v37 + v35, &qword_27C764AE0);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C764AF0);
        sub_20B520158(v37, &qword_27C764AE0);
        v38 = v50;
LABEL_23:
        v28 = &qword_27C764AE0;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &qword_27C764AE0);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &qword_27C764AE0);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C764AF0);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73BCD4(sub_20B7530F8, (&v46 - 4), MEMORY[0x277D53128], &qword_27C764AE0, &unk_20C1643D0, MEMORY[0x277D53108], 9);
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C764AD8);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_20B75236C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133A74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A30);
  MEMORY[0x28223BE20](v50);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A38);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v52 = &v46 - v23;
  v24 = *(v2 + *(*v2 + 200));
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v47 = v7;
    v48 = v24;
    v27 = *(v5 + 56);
    v27(v16, 1, 1, v4);
    goto LABEL_9;
  }

  if (!__OFSUB__(a1--, 1))
  {
LABEL_28:
    if (a1 < 0 || (v26 = *(v2 + *(*v2 + 224)), a1 >= *(v26 + 16)))
    {
      (*(v18 + 56))(v16, 1, 1, v17, v22);
      v28 = &qword_27C764A38;
      v29 = v16;
LABEL_24:
      sub_20B520158(v29, v28);
      return;
    }

    v47 = v7;
    v48 = v24;
    (*(v5 + 16))(v16, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4, v22);
    v27 = *(v5 + 56);
    v27(v16, 0, 1, v4);
LABEL_9:
    (*(v18 + 56))(v16, 0, 1, v17);
    v30 = v52;
    sub_20B5DF134(v16, v52, &qword_27C764A40);
    sub_20B52F9E8(v30, v20, &qword_27C764A40);
    v31 = *(v5 + 48);
    if (v31(v20, 1, v4) == 1)
    {
      sub_20B520158(v20, &qword_27C764A40);
      v32 = 1;
    }

    else
    {
      (*(v5 + 32))(v13, v20, v4);
      v32 = 0;
    }

    v33 = v50;
    v27(v13, v32, 1, v4);
    v34 = *(*v2 + 184);
    swift_beginAccess();
    v35 = *(v33 + 48);
    v50 = v13;
    v36 = v13;
    v37 = v51;
    sub_20B52F9E8(v36, v51, &unk_27C767600);
    sub_20B52F9E8(v2 + v34, v37 + v35, &unk_27C767600);
    if (v31(v37, 1, v4) == 1)
    {
      if (v31((v37 + v35), 1, v4) == 1)
      {
        sub_20B520158(v52, &qword_27C764A40);
        sub_20B520158(v37, &unk_27C767600);
        v38 = v50;
LABEL_23:
        v28 = &unk_27C767600;
        v29 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v49;
      sub_20B52F9E8(v37, v49, &unk_27C767600);
      if (v31((v37 + v35), 1, v4) != 1)
      {
        v42 = v37 + v35;
        v43 = v47;
        (*(v5 + 32))(v47, v42, v4);
        sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278]);
        v44 = sub_20C13C894();
        v45 = *(v5 + 8);
        v45(v43, v4);
        v45(v39, v4);
        v40 = sub_20B520158(v37, &unk_27C767600);
        v38 = v50;
        if (v44)
        {
LABEL_22:
          sub_20B520158(v52, &qword_27C764A40);
          goto LABEL_23;
        }

LABEL_18:
        MEMORY[0x28223BE20](v40);
        *(&v46 - 2) = v2;
        *(&v46 - 1) = v38;
        sub_20B73BCD4(sub_20B752AF4, (&v46 - 4), MEMORY[0x277D50278], &unk_27C767600, &unk_20C175400, MEMORY[0x277D50240], 8);
        if ((v48 & 0x10) == 0)
        {
          v41 = v2[10];
          if (v41)
          {

            v41(v38);
            sub_20B583ECC(v41);
          }
        }

        goto LABEL_22;
      }

      (*(v5 + 8))(v39, v4);
    }

    v40 = sub_20B520158(v37, &qword_27C764A30);
    v38 = v50;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_20B753124(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20B7531D0()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for TVWorkoutPlanRepetitionDetailViewController();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI43TVWorkoutPlanRepetitionDetailViewController_detailView];
  [v1 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C151490;
  v5 = [v3 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v5 constraintGreaterThanOrEqualToAnchor:v8 constant:32.0];
  *(v4 + 32) = v9;
  v10 = [v3 bottomAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v10 constraintLessThanOrEqualToAnchor:v13 constant:-2.0];
  *(v4 + 40) = v14;
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    v38 = objc_opt_self();
    type metadata accessor for UILayoutPriority(0);
    sub_20B60B184();
    sub_20C13BB94();
    v17 = [v3 leadingAnchor];
    v18 = [v16 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:32.0];

    LODWORD(v20) = 1148846080;
    [v19 setPriority_];
    v21 = v19;
    v22 = [v3 trailingAnchor];
    v23 = [v16 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-32.0];

    LODWORD(v25) = 1148846080;
    [v24 setPriority_];
    v26 = v24;
    v27 = [v3 topAnchor];
    v28 = [v16 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:62.0];

    LODWORD(v30) = 1132068864;
    [v29 setPriority_];
    v31 = [v3 bottomAnchor];
    v32 = [v16 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:-36.0];

    LODWORD(v34) = v39;
    [v33 setPriority_];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14FE90;
    *(inited + 32) = v21;
    *(inited + 40) = v26;
    *(inited + 48) = v29;
    *(inited + 56) = v33;
    v36 = v29;

    sub_20B8D9310(inited);
    sub_20B5E29D0();
    v37 = sub_20C13CC54();

    [v38 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_20B753708()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanRepetitionDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountSetting()
{
  result = qword_27C764B08;
  if (!qword_27C764B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B7537E4()
{
  result = type metadata accessor for AccountSettingLink();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20B753874(uint64_t *a1, int a2)
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

uint64_t sub_20B7538BC(uint64_t result, int a2, int a3)
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

uint64_t sub_20B753908()
{
  v1 = sub_20C1380F4();
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView);
    v3 = [v2 heightAnchor];
    v4 = [v2 widthAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 multiplier:0.666666667];

LABEL_5:
    type metadata accessor for UILayoutPriority(0);
    sub_20B60B184();
    sub_20C13BBA4();
    LODWORD(v7) = v9;
    [v5 setPriority_];
    return v5;
  }

  if (v1 == 1)
  {
    v6 = [*(v0 + OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView) heightAnchor];
    v5 = [v6 constraintEqualToConstant_];

    goto LABEL_5;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

char *sub_20B753AA8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_layout] = xmmword_20C156900;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView];
  v12 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *v11 = v12;
  *(v11 + 1) = &off_2822B63E8;
  v53.receiver = v4;
  v53.super_class = type metadata accessor for ArtworkHeaderCell();
  v13 = objc_msgSendSuper2(&v53, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = &v13[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView];
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView];
  v16 = *&v13[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 288);
  v19 = v13;
  v20 = v15;
  v18(2, ObjectType, v16);

  v21 = [v19 contentView];
  [v21 addSubview_];

  v22 = *v14;
  v23 = [v19 contentView];

  v25 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 8);
  v26 = *(MEMORY[0x277D768C8] + 16);
  v27 = *(MEMORY[0x277D768C8] + 24);
  v28 = [v22 leadingAnchor];
  v29 = [v23 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v24];

  LODWORD(v31) = 1148846080;
  [v30 setPriority_];
  v32 = v30;
  v33 = [v22 trailingAnchor];
  v34 = [v23 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-v27];

  LODWORD(v36) = 1148846080;
  [v35 setPriority_];
  v37 = v35;
  v38 = [v22 topAnchor];
  v39 = [v23 topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v25];

  LODWORD(v41) = 1148846080;
  [v40 setPriority_];
  v42 = [v22 bottomAnchor];
  v43 = [v23 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-v26];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14FE90;
  *(v46 + 32) = v32;
  *(v46 + 40) = v37;
  *(v46 + 48) = v40;
  *(v46 + 56) = v44;
  v47 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_20C14F580;
  *(v49 + 32) = sub_20B753908();
  *(inited + 40) = v49;
  v50 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v51 = sub_20C13CC54();

  [v50 activateConstraints_];

  return v19;
}

id sub_20B7541D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ArtworkHeaderCell()
{
  result = qword_27C764B28;
  if (!qword_27C764B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7542CC()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B75438C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B7543D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B754440(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B7544C8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v177 = *(v4 - 8);
  v178 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v163 = *(v7 - 8);
  v164 = v7;
  MEMORY[0x28223BE20](v7);
  v160 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v161 = &v140 - v10;
  v159 = v11;
  MEMORY[0x28223BE20](v12);
  v162 = &v140 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v168 = &v140 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v173 = *(v16 - 8);
  v174 = v16;
  MEMORY[0x28223BE20](v16);
  v158 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v17;
  MEMORY[0x28223BE20](v18);
  v172 = &v140 - v19;
  v20 = sub_20C1391C4();
  v165 = *(v20 - 8);
  v166 = v20;
  MEMORY[0x28223BE20](v20);
  v167 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C138A64();
  v169 = *(v22 - 8);
  v170 = v22;
  MEMORY[0x28223BE20](v22);
  v171 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20C13C554();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v175 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v176 = &v140 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v33 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v140 - v36;
  if (((a1 >> 57) & 0x78 | a1 & 7) != 5)
  {
    sub_20C13B534();

    v98 = v2;
    v99 = sub_20C13BB74();
    v100 = sub_20C13D1D4();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v179 = a1;
      v180 = v103;
      *v101 = 138543618;
      *(v101 + 4) = v98;
      *v102 = v98;
      *(v101 + 12) = 2082;
      v104 = sub_20B5F66D0();
      v105 = v98;
      v106 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v104);
      v108 = sub_20B51E694(v106, v107, &v180);

      *(v101 + 14) = v108;
      _os_log_impl(&dword_20B517000, v99, v100, "Attempted to configure %{public}@ with item: %{public}s", v101, 0x16u);
      sub_20B520158(v102, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v102, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x20F2F6A40](v103, -1, -1);
      MEMORY[0x20F2F6A40](v101, -1, -1);
    }

    v109 = v178;
    v96 = *(v177 + 8);
    v97 = v6;
    return v96(v97, v109);
  }

  v177 = v35;
  v178 = v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B38);
  v39 = swift_projectBox();
  v40 = (v39 + *(v38 + 48));
  v41 = *v40;
  v42 = v40[1];
  result = (*(v29 + 48))();
  if (result != 1)
  {
    sub_20B52F9E8(v39, v37, &unk_27C766680);
    if (v42)
    {
      v153 = v42;
      v154 = v41;
      v44 = v176;
      v155 = *(v29 + 32);
      v155(v176, v37, v28);
      v152 = sub_20C138054();
      v156 = v45;
      sub_20B51C88C(0, &qword_281100530);
      *v27 = sub_20C13D374();
      (*(v25 + 104))(v27, *MEMORY[0x277D85200], v24);
      v46 = sub_20C13C584();
      result = (*(v25 + 8))(v27, v24);
      if ((v46 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v47 = *&v178[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView];
      v48 = *&v178[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v47 setContentMode_];
      v50 = sub_20BA66C54(v44, v47, v48, 0);
      v51 = v175;
      if (v50)
      {
        v52 = swift_allocObject();
        v147 = ObjectType;
        v53 = v52;
        swift_unknownObjectWeakInit();
        v144 = *(v29 + 16);
        v144(v51, v44, v28);
        v143 = v29 + 16;
        v54 = *(v29 + 80);
        v150 = v47;
        v55 = (v54 + 24) & ~v54;
        v142 = v30 + 7;
        v149 = v29 + 32;
        v151 = v48;
        v56 = (v30 + 7 + v55) & 0xFFFFFFFFFFFFFFF8;
        v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
        v58 = v28;
        v59 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
        v145 = v54;
        v60 = swift_allocObject();
        *(v60 + 16) = v53;
        v148 = v58;
        v155((v60 + v55), v175, v58);
        v61 = (v60 + v56);
        v62 = v153;
        *v61 = v154;
        v61[1] = v62;
        v63 = (v60 + v57);
        v64 = v156;
        *v63 = v152;
        v63[1] = v64;
        *(v60 + v59) = 2;
        v65 = v60 + v146;
        *v65 = MEMORY[0x277D84F90];
        *(v65 + 8) = 0;
        v66 = (v60 + ((v59 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v66 = 0;
        v66[1] = 0;
        v67 = *(v151 + 152);

        v68 = v151;

        v69 = v147;
        v67(sub_20B755698, v60);
        v70 = v150;

        [v70 bounds];
        if (v71 <= 0.0)
        {

          return (*(v29 + 8))(v176, v148);
        }

        else
        {
          v73 = v72;
          v74 = v148;
          if (v72 > 0.0)
          {
            v75 = v71;
            v146 = ~v145;
            v76 = v69;
            (*(v68 + 120))(0, v69, v68);
            v77 = v177;
            v78 = v74;
            v79 = v74;
            v80 = v144;
            v144(v177, v176, v79);
            v141 = v29;
            (*(v29 + 56))(v77, 0, 1, v78);
            (*(v68 + 16))(v77, v76, v68);
            sub_20B51C88C(0, &qword_27C762070);
            v81 = v176;
            sub_20C137BC4();
            v82 = sub_20C13D5A4();
            [v70 setBackgroundColor_];

            (*(v68 + 176))(COERCE_DOUBLE(*&v75), COERCE_DOUBLE(*&v73), 0, v76, v68);
            v177 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v83 = v175;
            v80(v175, v81, v78);
            v84 = (v145 + 16) & v146;
            v85 = (v142 + v84) & 0xFFFFFFFFFFFFFFF8;
            v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
            v87 = swift_allocObject();
            v88 = v87 + v84;
            v89 = v176;
            v155(v88, v83, v78);
            *(v87 + v85) = v177;
            v90 = (v87 + v86);
            *v90 = v75;
            v90[1] = v73;
            v177 = v87;
            v91 = (v87 + ((v86 + 23) & 0xFFFFFFFFFFFFFFF8));
            *v91 = 0;
            v91[1] = 0;
            v144(v83, v89, v78);
            (*(v165 + 104))(v167, *MEMORY[0x277D542A8], v166);

            v92 = v171;
            sub_20C138A54();
            v93 = v168;
            sub_20B5F1870(v92, v168);
            v94 = v173;
            v95 = v174;
            if ((*(v173 + 48))(v93, 1, v174) == 1)
            {
              sub_20B520158(v93, &unk_27C766670);
              sub_20BA1D980();

              (*(v169 + 8))(v92, v170);
              v96 = *(v141 + 8);
              v97 = v89;
            }

            else
            {
              v167 = *(v94 + 32);
              (v167)(v172, v93, v95);
              v112 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v113 = v148;
              v144(v83, v89, v148);
              v114 = (v145 + 40) & v146;
              v115 = v114 + v30;
              v116 = swift_allocObject();
              *(v116 + 2) = v112;
              v116[3] = v75;
              v116[4] = v73;
              v155(v116 + v114, v83, v113);
              *(v116 + v115) = 0;
              v117 = v116 + (v115 & 0xFFFFFFFFFFFFFFF8);
              *(v117 + 1) = 0;
              *(v117 + 2) = 0;
              v118 = swift_allocObject();
              *(v118 + 16) = sub_20B75582C;
              *(v118 + 24) = v116;
              v119 = v173;
              v120 = v158;
              (*(v173 + 16))(v158, v172, v95);
              v121 = (*(v119 + 80) + 16) & ~*(v119 + 80);
              v122 = (v157 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
              v123 = swift_allocObject();
              (v167)(v123 + v121, v120, v95);
              v124 = (v123 + v122);
              *v124 = sub_20B5F67A4;
              v124[1] = v118;
              v125 = v161;
              sub_20C137C94();
              v126 = swift_allocObject();
              v127 = v177;
              *(v126 + 16) = sub_20B755770;
              *(v126 + 24) = v127;
              v128 = swift_allocObject();
              *(v128 + 16) = sub_20B5F67D4;
              *(v128 + 24) = v126;
              v130 = v163;
              v129 = v164;
              v131 = v160;
              (*(v163 + 16))(v160, v125, v164);
              v132 = (*(v130 + 80) + 16) & ~*(v130 + 80);
              v133 = (v159 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
              v134 = swift_allocObject();
              (*(v130 + 32))(v134 + v132, v131, v129);
              v135 = (v134 + v133);
              *v135 = sub_20B5DF204;
              v135[1] = v128;

              v136 = v162;
              sub_20C137C94();
              v137 = *(v130 + 8);
              v137(v125, v129);
              v138 = sub_20C137CB4();
              v139 = swift_allocObject();
              *(v139 + 16) = 0;
              *(v139 + 24) = 0;
              v138(sub_20B52347C, v139);

              v137(v136, v129);
              (*(v119 + 8))(v172, v174);
              (*(v169 + 8))(v171, v170);
              v96 = *(v141 + 8);
              v97 = v176;
            }

            v109 = v148;
            return v96(v97, v109);
          }

          return (*(v29 + 8))(v176, v74);
        }
      }

      v110 = *(v29 + 8);
      v111 = v44;
    }

    else
    {
      v110 = *(v29 + 8);
      v111 = v37;
    }

    return v110(v111, v28);
  }

  return result;
}

void sub_20B755698()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA34678(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B755770(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA62F40(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B75582C(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2648(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B7558E0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_layout) = xmmword_20C156900;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView);
  v4 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *v3 = v4;
  v3[1] = &off_2822B63E8;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B755A08(void *a1)
{
  result = sub_20C1380F4();
  if (result)
  {
    if (result != 1)
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else
  {
    [objc_msgSend(a1 container)];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B755AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B755B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20B755B8C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v13 = xmmword_20C1569F0;
  v14 = xmmword_20C156A00;
  v15[0] = xmmword_20C1569F0;
  v15[1] = xmmword_20C156A00;
  v16 = sub_20B6B2070(&unk_282286C70);
  v17 = xmmword_20C156A10;
  v18 = xmmword_20C156A20;
  v19 = sub_20B6B2070(&unk_282286CF0);
  v20 = xmmword_20C156A30;
  v21 = xmmword_20C156A40;
  v22 = sub_20B6B2070(&unk_282286D70);
  v23 = xmmword_20C156A30;
  v24 = xmmword_20C156A50;
  v25 = sub_20B6B2070(&unk_282286DF0);
  v26 = xmmword_20C156A60;
  v27 = xmmword_20C156A70;
  v28 = sub_20B6B2070(&unk_282286E70);
  v29 = xmmword_20C156A60;
  v30 = xmmword_20C156A80;
  v31 = sub_20B6B2070(&unk_282286EF0);
  result = sub_20B6B2070(&unk_282286C70);
  v5 = result;
  v6 = 0;
  v7 = 0;
LABEL_2:
  v8 = *&v14 > a2;
  if (v6 <= 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = v6;
  }

  if (*(&v14 + 1) <= a2)
  {
    v8 = 1;
  }

  v10 = v9 + 1;
  while (1)
  {
    if (v7 == 6)
    {
      result = swift_arrayDestroy();
      *a1 = v13;
      *(a1 + 16) = v14;
      *(a1 + 32) = v5;
      return result;
    }

    if (v10 == ++v7)
    {
      break;
    }

    if (v8)
    {
      v11 = v15 + 40 * v6;
      v13 = *v11;
      v14 = *(v11 + 1);
      v12 = *(v11 + 4);

      v6 = v7;
      v5 = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B755D7C(uint64_t a1)
{
  if (!*(*(v1 + 32) + 16) || (result = sub_20B65CEBC(a1), (v3 & 1) == 0))
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicGridType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicGridType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20B755F8C()
{
  result = qword_27C764B40;
  if (!qword_27C764B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764B40);
  }

  return result;
}

uint64_t sub_20B755FE0(char a1, unsigned __int8 a2)
{
  result = 0;
  if (a2 > 3u)
  {
    if (a2 != 4)
    {
      if (a2 != 5)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (a1 != 2)
    {
      return 0;
    }

LABEL_12:
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_20C132964();

    return v6;
  }

  if (!a2)
  {
    if (a1)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (a2 != 1)
  {
    return result;
  }

  if (a1 == 1)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_20B7561F4(unint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 5)
  {
    if (a1 > 1)
    {
      result = sub_20C13DE24();
      __break(1u);
    }

    else
    {

      return sub_20BEDD3B8();
    }
  }

  else
  {
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_20C132964();

    return v5;
  }

  return result;
}

uint64_t sub_20B756618(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4 > 1u)
    {
      v6 = sub_20C13A2C4();
      v8 = v7;
      if (v6 == sub_20C13A2C4() && v8 == v9)
      {
      }

      else
      {
        sub_20C13DFF4();
      }

      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      goto LABEL_13;
    }
  }

  else if (a4 == 5 && (a2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SeymourLocalizationBundle();
  v4 = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
LABEL_13:
  v11 = sub_20C132964();

  return v11;
}

uint64_t sub_20B756AB8(unsigned __int8 a1)
{
  result = 0xD000000000000017;
  if (a1 >= 4u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000019;
    }

    else if (a1 != 6)
    {
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000037, 0x800000020C197570);
      MEMORY[0x20F2F4230](0x73746C7561666564, 0xEE006E69616D6F44);
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_20B756BBC(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 == 6)
      {
        return 0xD00000000000001ELL;
      }

      else
      {
        sub_20C13DC94();
        MEMORY[0x20F2F4230](0xD000000000000034, 0x800000020C197610);
        MEMORY[0x20F2F4230](0x73746C7561666564, 0xEB0000000079654BLL);
        result = sub_20C13DE24();
        __break(1u);
      }
    }

    else if (a1 == 3)
    {
      return 0xD000000000000018;
    }

    else
    {
      return 0xD000000000000022;
    }
  }

  else if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }

  return result;
}

unint64_t sub_20B756D20@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20B756E54(*a1);
  *a2 = result;
  return result;
}

void *sub_20B756D68(char a1, char a2, char a3)
{
  if (a2)
  {
    v4 = &unk_282288418;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  if (a3)
  {
    if (a3 == 1)
    {

      return &unk_2822884B8;
    }

    else
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v5 = &unk_282288468;
      }

      else
      {
        v5 = &unk_282288490;
      }
    }

    else
    {
      v5 = &unk_282288440;
    }

    v7 = v5;
    sub_20B8D9578(v4);
    return v7;
  }

  return result;
}

unint64_t sub_20B756E54(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_20B756E78()
{
  result = qword_27C764B48;
  if (!qword_27C764B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C764B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764B48);
  }

  return result;
}

unint64_t sub_20B756EE0()
{
  result = qword_27C764B58;
  if (!qword_27C764B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764B58);
  }

  return result;
}

uint64_t sub_20B756F5C(void (*a1)(char *, char *, uint64_t))
{
  v76 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v80 = *(v2 - 8);
  v3 = *(v80 + 8);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - v5;
  MEMORY[0x28223BE20](v7);
  v81 = &v63 - v8;
  MEMORY[0x28223BE20](v9);
  v82 = &v63 - v10;
  v11 = type metadata accessor for AnalyticsConsentInterceptor.State(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationRequest();
  v77 = *(v14 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v78 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v19 = OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_state;
  swift_beginAccess();
  sub_20B75B0E8(v1 + v19, v13, type metadata accessor for AnalyticsConsentInterceptor.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  if ((*(*(v20 - 8) + 48))(v13, 1, v20) == 1)
  {
    v21 = type metadata accessor for AnalyticsConsentInterceptor.State;
    v22 = v13;
  }

  else
  {
    v23 = &v13[*(v20 + 48)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v73 = v25;
    v67 = v24;
    v26 = &v13[*(v20 + 64)];
    v27 = *v26;
    v69 = *(v26 + 1);
    v70 = v27;
    v79 = v18;
    sub_20B75B150(v13, v18);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_privacyPreferencesClient), *(v1 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_privacyPreferencesClient + 24));
    v68 = v1;
    sub_20C139BF4();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20B756F34;
    *(v28 + 24) = 0;
    v29 = v80;
    v30 = *(v80 + 2);
    v75 = v80 + 16;
    v76 = v30;
    v30(&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2);
    v66 = v15;
    v31 = *(v29 + 80);
    v32 = (v31 + 16) & ~v31;
    v33 = v2;
    v71 = (v3 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = v31;
    v34 = swift_allocObject();
    v35 = *(v29 + 4);
    v74 = v29 + 32;
    v64 = v32;
    v35(v34 + v32, &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v65 = v35;
    v36 = (v34 + ((v3 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_20B66A8B4;
    v36[1] = v28;
    v37 = v81;
    sub_20C137C94();
    v38 = *(v29 + 1);
    v38(v6, v2);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_20B757894;
    *(v39 + 24) = 0;
    v76(v6, v37, v2);
    v40 = v71;
    v41 = swift_allocObject();
    v35(v41 + v32, v6, v33);
    v42 = (v41 + v40);
    *v42 = sub_20B5DF204;
    v42[1] = v39;
    v43 = v82;
    sub_20C137C94();
    v44 = v37;
    v38(v37, v33);
    v63 = v38;
    v45 = sub_20C137CB4();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    v45(sub_20B5DF6DC, v46);

    v38(v43, v33);
    ObjectType = swift_getObjectType();
    (*(v67 + 56))(1, ObjectType);
    v80 = type metadata accessor for NavigationRequest;
    v48 = v78;
    sub_20B75B0E8(v79, v78, type metadata accessor for NavigationRequest);
    v49 = (*(v77 + 80) + 40) & ~*(v77 + 80);
    v50 = swift_allocObject();
    v51 = v6;
    v52 = v69;
    v53 = v70;
    v50[2] = v68;
    v50[3] = v53;
    v50[4] = v52;
    sub_20B75B150(v48, v50 + v49);
    v54 = swift_allocObject();
    *(v54 + 16) = sub_20B75C6B0;
    *(v54 + 24) = v50;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_20B66A8BC;
    *(v55 + 24) = v54;
    v76(v51, v44, v33);
    v56 = v71;
    v57 = swift_allocObject();
    v65(v57 + v64, v51, v33);
    v58 = (v57 + v56);
    *v58 = sub_20B66A8B4;
    v58[1] = v55;

    sub_20C137C94();
    v59 = v63;
    v63(v44, v33);
    v60 = sub_20C137CB4();
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    v60(sub_20B5DF6DC, v61);

    swift_unknownObjectRelease();

    v59(v43, v33);
    v22 = v79;
    v21 = v80;
  }

  return sub_20B75AFF4(v22, v21);
}

uint64_t sub_20B757760()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "Updated Opt In Privacy Preference!", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20B757894(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "Error updating Opt In Privacy Preference: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20B757A70(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AnalyticsConsentInterceptor.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_state;
  swift_beginAccess();
  sub_20B75B054(v12, a1 + v14);
  swift_endAccess();
  sub_20B75B0E8(a4, v9, type metadata accessor for NavigationRequest);
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_20B520158(v9, &unk_27C76D250);
}

uint64_t sub_20B757C2C(void (*a1)(uint64_t *), void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v51 = a7;
  v52 = a8;
  v53 = a5;
  v54 = a6;
  v50 = a4;
  v57 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v48[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v14);
  v16 = &v48[-v15];
  v17 = type metadata accessor for AnalyticsConsentInterceptor.State(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v48[-v21];
  v23 = OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_state;
  swift_beginAccess();
  sub_20B75B0E8(a3 + v23, v22, type metadata accessor for AnalyticsConsentInterceptor.State);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    v49 = a9;
    sub_20B75AFF4(v22, type metadata accessor for AnalyticsConsentInterceptor.State);
    v26 = &v19[*(v24 + 48)];
    v27 = &v19[*(v24 + 64)];
    sub_20B75B0E8(v50, v19, type metadata accessor for NavigationRequest);
    v50 = v13;
    v28 = v54;
    *v26 = v53;
    v26[1] = v28;
    *v27 = v57;
    v27[1] = a2;
    (*(v25 + 56))(v19, 0, 1, v24);
    swift_beginAccess();
    swift_unknownObjectRetain();

    sub_20B75B054(v19, a3 + v23);
    swift_endAccess();
    v29 = *(a3 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_dependencies);

    sub_20C135FF4();
    v30 = objc_allocWithZone(type metadata accessor for AnalyticsConsentViewController());
    v31 = AnalyticsConsentViewController.init(dependencies:version:isPurchaser:)(v29, 1);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v35 = v51;
    v34 = v52;
    *(v33 + 16) = v51;
    *(v33 + 24) = v34;
    v36 = v49 & 1;
    *(v33 + 32) = v49 & 1;
    *(v33 + 40) = v32;
    v37 = &v31[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onConsent];
    v38 = *&v31[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onConsent];
    *v37 = sub_20B75B550;
    v37[1] = v33;
    sub_20B6A6418(v35, v34, v36);

    sub_20B583ECC(v38);

    ObjectType = swift_getObjectType();
    v40 = v50;
    (*(v28 + 8))(v31, 1, ObjectType, v28);
    v41 = v56;
    v42 = v40;
    v43 = sub_20C137CB4();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    v43(sub_20B52347C, v44);

    return (*(v55 + 8))(v42, v41);
  }

  else
  {
    sub_20B75AFF4(v22, type metadata accessor for AnalyticsConsentInterceptor.State);
    sub_20B5D9BA8();
    v46 = swift_allocError();
    *v47 = 9;
    *v16 = v46;
    swift_storeEnumTagMultiPayload();
    v57(v16);
    return sub_20B520158(v16, &unk_27C76D250);
  }
}

uint64_t sub_20B758134(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_20C136014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B6A6418(a2, a3, a4 & 1);
  sub_20C135FD4();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B756F5C(v10);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20B758280()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_accountProvider), *(v1 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_accountProvider + 24));
  sub_20C13B954();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20B758564;
  *(v13 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v14, v5, v2);
  v17 = (v16 + v15);
  *v17 = sub_20B5D9F30;
  v17[1] = v13;
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20B758564(id *a1)
{
  if ([*a1 ams:*MEMORY[0x277CEE150] accountFlagValueForAccountFlag:?])
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    return sub_20B520158(v7, &unk_27C768A00);
  }

  result = swift_dynamicCast();
  if (result & 1) != 0 && (v4)
  {
    v2 = sub_20C13B8A4();
    sub_20B75B4B0(&qword_27C762380, MEMORY[0x277D4FA88]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D4FA80], v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_20B7586D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_serviceSubscriptionCache), *(v1 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_serviceSubscriptionCache + 24));
  sub_20C1392E4();
  v13 = swift_allocObject();
  *(v13 + 16) = nullsub_1;
  *(v13 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v14, v5, v2);
  v17 = (v16 + v15);
  *v17 = sub_20B5D9E70;
  v17[1] = v13;
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20B7589B4()
{
  sub_20B75AFF4(v0 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_state, type metadata accessor for AnalyticsConsentInterceptor.State);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_accountProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_privacyPreferencesClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_serviceSubscriptionCache);
  v1 = OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor__analyticsConsentShowingEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor__forceAnalayticsConsentAcknowledgement, v2);

  return swift_deallocClassInstance();
}

void sub_20B758B38()
{
  type metadata accessor for AnalyticsConsentInterceptor.State(319);
  if (v0 <= 0x3F)
  {
    sub_20B52432C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20B758C6C()
{
  sub_20B758CC4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20B758CC4()
{
  if (!qword_27C764B98)
  {
    type metadata accessor for NavigationRequest();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C76D240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C764BA0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C764B98);
    }
  }
}

uint64_t sub_20B758D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v141 = a1;
  v134 = a3;
  v129 = a2;
  v139 = a4;
  v143 = type metadata accessor for NavigationRequest();
  v137 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v138 = v4;
  v142 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v121 = *(v122 - 8);
  v5 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v117 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v130 = &v108 - v7;
  MEMORY[0x28223BE20](v8);
  v120 = &v108 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641B0);
  v123 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v131 = &v108 - v12;
  v118 = v13;
  MEMORY[0x28223BE20](v14);
  v132 = &v108 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v127 = *(v16 - 8);
  v128 = v16;
  MEMORY[0x28223BE20](v16);
  v124 = v17;
  v125 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v108 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v108 - v25;
  v27 = sub_20C13BB84();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v108 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v108 - v35;
  sub_20C13B534();
  sub_20C13BB64();
  v135 = *(v28 + 8);
  v136 = v27;
  v135(v36, v27);
  v37 = v140;
  (*(v24 + 16))(v26, v140 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor__analyticsConsentShowingEnabled, v23);
  sub_20C13A344();
  (*(v24 + 8))(v26, v23);
  if (v144 != 1)
  {
    sub_20C13B534();
    v46 = sub_20C13BB74();
    v47 = sub_20C13D1F4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20B517000, v46, v47, "Analytics Consent showing has been disabled", v48, 2u);
      MEMORY[0x20F2F6A40](v48, -1, -1);
    }

    v135(v30, v136);
    v49 = v142;
    sub_20B75B0E8(v141, v142, type metadata accessor for NavigationRequest);
    v50 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v51 = swift_allocObject();
    sub_20B75B150(v49, v51 + v50);
    return sub_20C137CA4();
  }

  __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_remoteBrowsingSource), *(v37 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_remoteBrowsingSource + 24));
  sub_20C13B184();
  v38 = sub_20C135174();
  v39 = (*(*(v38 - 8) + 48))(v22, 1, v38);
  sub_20B520158(v22, &unk_27C76BC00);
  if (v39 == 1)
  {
    sub_20C13B534();
    v40 = sub_20C13BB74();
    v41 = sub_20C13D1F4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20B517000, v40, v41, "No participant for remote browsing, ignoring opt in analytics consent...", v42, 2u);
      MEMORY[0x20F2F6A40](v42, -1, -1);
    }

    v135(v33, v136);
    v43 = v142;
    sub_20B75B0E8(v141, v142, type metadata accessor for NavigationRequest);
    v44 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v45 = swift_allocObject();
    sub_20B75B150(v43, v45 + v44);
    return sub_20C137CA4();
  }

  v53 = v130;
  v54 = v37;
  sub_20B758280();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_20B75B1CC;
  *(v55 + 24) = v37;
  v56 = v121;
  v115 = *(v121 + 16);
  v116 = v121 + 16;
  v57 = v117;
  v58 = v53;
  v59 = v122;
  v115(v117, v58, v122);
  v60 = *(v56 + 80);
  v112 = v60;
  v61 = (v60 + 16) & ~v60;
  v110 = v61;
  v62 = (v5 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = v62;
  v63 = swift_allocObject();
  v109 = *(v56 + 32);
  v109(v63 + v61, v57, v59);
  v64 = (v63 + v62);
  *v64 = sub_20B64B960;
  v64[1] = v55;

  v65 = v120;
  sub_20C137C94();
  v111 = *(v56 + 8);
  v66 = v130;
  v111(v130, v59);
  __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_privacyPreferencesClient), *(v54 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_privacyPreferencesClient + 24));
  v67 = v131;
  sub_20C139BB4();
  v68 = v123;
  v69 = *(v123 + 2);
  v135 = (v123 + 16);
  v136 = v69;
  v70 = v119;
  v71 = v67;
  v72 = v133;
  v69(v119, v71, v133);
  v121 = *(v68 + 80);
  v113 = &v118[(v121 + 16) & ~v121];
  v73 = (v121 + 16) & ~v121;
  v117 = v73;
  v74 = swift_allocObject();
  v114 = *(v68 + 4);
  v118 = v68 + 32;
  v114(v74 + v73, v70, v72);
  v75 = v66;
  v115(v66, v65, v59);
  v76 = v108;
  v77 = swift_allocObject();
  v109(v77 + v110, v75, v59);
  v78 = (v77 + v76);
  *v78 = sub_20B75B248;
  v78[1] = v74;
  sub_20C136014();
  sub_20C137C94();
  v130 = *(v68 + 1);
  v79 = v131;
  (v130)(v131, v72);
  v111(v65, v59);
  v123 = type metadata accessor for NavigationRequest;
  v80 = v142;
  sub_20B75B0E8(v141, v142, type metadata accessor for NavigationRequest);
  v81 = *(v137 + 80);
  v82 = (v81 + 24) & ~v81;
  v138 += 7;
  v83 = (v138 + v82) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  v85 = v140;
  *(v84 + 16) = v140;
  sub_20B75B150(v80, v84 + v82);
  v86 = (v84 + v83);
  v87 = v129;
  v89 = v133;
  v88 = v134;
  *v86 = v129;
  v86[1] = v88;
  v90 = v132;
  v136(v79, v132, v89);
  v91 = (v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  v114(&v117[v92], v79, v89);
  v93 = (v92 + v91);
  *v93 = sub_20B75B2F0;
  v93[1] = v84;

  swift_unknownObjectRetain();
  v94 = v126;
  sub_20C137C94();
  (v130)(v90, v89);
  v95 = v142;
  sub_20B75B0E8(v141, v142, v123);
  v96 = (v81 + 16) & ~v81;
  v97 = (v138 + v96) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  sub_20B75B150(v95, v98 + v96);
  *(v98 + v97) = v85;
  v99 = (v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8));
  v100 = v134;
  *v99 = v87;
  v99[1] = v100;
  v102 = v127;
  v101 = v128;
  v103 = v125;
  (*(v127 + 16))(v125, v94, v128);
  v104 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v105 = (v124 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  (*(v102 + 32))(v106 + v104, v103, v101);
  v107 = (v106 + v105);
  *v107 = sub_20B75B3CC;
  v107[1] = v98;

  swift_unknownObjectRetain();
  sub_20C137C94();
  return (*(v102 + 8))(v94, v101);
}

uint64_t sub_20B759B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v53 = a4;
  v56 = a3;
  v57 = a6;
  v54 = a1;
  v58 = type metadata accessor for NavigationRequest();
  v55 = *(v58 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v58);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = a2;
  (*(v15 + 16))(&v48 - v17, a2 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor__forceAnalayticsConsentAcknowledgement, v14, v16);
  sub_20C13A344();
  (*(v15 + 8))(v18, v14);
  if (v59 == 1)
  {
    v54 = sub_20C136004();
    v51 = v20;
    v22 = v21;
    sub_20C13B534();
    sub_20C13BB64();
    (*(v9 + 8))(v13, v8);
    sub_20B75B0E8(v56, &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v23 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    sub_20B75B150(&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23);
    v26 = (v25 + v24);
    v27 = v52;
    *v26 = v53;
    v26[1] = v27;
    v28 = v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
    v29 = v51;
    *v28 = v54;
    *(v28 + 8) = v29;
    *(v28 + 16) = v22 & 1;

    swift_unknownObjectRetain();
    return sub_20C137C94();
  }

  v49 = a2;
  v50 = v8;
  sub_20C135FE4();
  if (v31)
  {
    v32 = sub_20C135FC4();
    if (v32 == sub_20C135FC4())
    {
      v54 = sub_20C136004();
      v34 = v33;
      LODWORD(v51) = v35;
      sub_20C13B534();
      sub_20C13BB64();
      (*(v9 + 8))(v13, v50);
      sub_20B75B0E8(v56, &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
      v36 = (*(v55 + 80) + 24) & ~*(v55 + 80);
      v37 = (v7 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      *(v38 + 16) = v49;
      sub_20B75B150(&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v36);
      v39 = (v38 + v37);
      v40 = v52;
      *v39 = v53;
      v39[1] = v40;
      v41 = v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v41 = v54;
      *(v41 + 8) = v34;
      *(v41 + 16) = v51 & 1;

      swift_unknownObjectRetain();
      return sub_20C137C94();
    }
  }

  v42 = v51;
  sub_20C13B534();
  v43 = sub_20C13BB74();
  v44 = sub_20C13D1F4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_20B517000, v43, v44, "Consented to Analytics!", v45, 2u);
    MEMORY[0x20F2F6A40](v45, -1, -1);
  }

  (*(v9 + 8))(v42, v50);
  sub_20B75B0E8(v56, &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v46 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v47 = swift_allocObject();
  sub_20B75B150(&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46);
  return sub_20C137CA4();
}

uint64_t sub_20B75A178@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v62 = a3;
  v63 = a4;
  v66 = a6;
  v8 = sub_20C136014();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20C13BB84();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v53 - v12;
  v13 = type metadata accessor for NavigationRequest();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = sub_20C13B8A4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *MEMORY[0x277D4FA80], v16, v18);
  sub_20B75B4B0(&qword_27C764BB0, MEMORY[0x277D4FA88]);
  v21 = sub_20C135D14();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    sub_20B75B0E8(a2, &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v23 = swift_allocObject();
    sub_20B75B150(&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    return sub_20C137CA4();
  }

  v54 = v14;
  v55 = a2;
  LOBYTE(v69) = 4;
  sub_20B75B4F8();
  if (sub_20C135D14())
  {
    sub_20B75B0E8(v55, &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v24 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v25 = swift_allocObject();
    sub_20B75B150(&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    return sub_20C137CA4();
  }

  v27 = v56;
  sub_20C13B534();
  v28 = a1;
  v29 = sub_20C13BB74();
  v30 = sub_20C13D1D4();

  v31 = os_log_type_enabled(v29, v30);
  v53 = v13;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v69 = v33;
    *v32 = 136446210;
    swift_getErrorValue();
    v34 = MEMORY[0x20F2F5850](v67, v68);
    v36 = sub_20B51E694(v34, v35, &v69);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_20B517000, v29, v30, "Unable to fetch notice privacy preference: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x20F2F6A40](v33, -1, -1);
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  v37 = *(v57 + 8);
  v38 = v27;
  v39 = v59;
  v37(v38, v59);
  sub_20C135FF4();
  v40 = v60;
  sub_20C135FD4();
  v41 = sub_20C136004();
  v43 = v42;
  v45 = v44;
  v46 = v58;
  sub_20C13B534();
  sub_20C13BB64();
  v37(v46, v39);
  sub_20B75B0E8(v55, &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v47 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v48 = (v15 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v62;
  sub_20B75B150(&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v47);
  v50 = (v49 + v48);
  v51 = v61;
  *v50 = v63;
  v50[1] = v51;
  v52 = v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v52 = v41;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45 & 1;

  swift_unknownObjectRetain();
  sub_20C137C94();
  return (*(v64 + 8))(v40, v65);
}

uint64_t sub_20B75A7F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - v8;
  v9 = type metadata accessor for AnalyticsConsentInterceptor.State(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v54 = 0x800000020C197AC0;
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_state;
  swift_beginAccess();
  sub_20B75B0E8(v2 + v19, v14, type metadata accessor for AnalyticsConsentInterceptor.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_20B75AFF4(v14, type metadata accessor for AnalyticsConsentInterceptor.State);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v23 = &v14[*(v20 + 48)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = &v14[*(v20 + 64)];
    v27 = *(v26 + 1);
    v51 = *v26;
    v53 = v27;
    sub_20B75AFF4(v14, type metadata accessor for NavigationRequest);
    (*(v21 + 56))(v11, 1, 1, v20);
    swift_beginAccess();
    sub_20B75B054(v11, v2 + v19);
    swift_endAccess();
    v52 = v25;
    ObjectType = swift_getObjectType();
    v29 = v59;
    (*(v24 + 56))(0, ObjectType, v24);
    v30 = swift_allocObject();
    *(v30 + 16) = v51;
    *(v30 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20B75B0B8;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20B5DF3B8;
    *(v32 + 24) = v31;
    v34 = v57;
    v33 = v58;
    v51 = *(v57 + 16);
    v35 = v55;
    v51(v55, v29, v58);
    v36 = *(v34 + 80);
    v50 = (v36 + 16) & ~v36;
    v37 = (v4 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = v37;
    v38 = swift_allocObject();
    v49 = *(v34 + 32);
    v49(v38 + ((v36 + 16) & ~v36), v35, v33);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF3D4;
    v39[1] = v32;

    v40 = v56;
    sub_20C137C94();
    v57 = *(v34 + 8);
    v41 = v59;
    v42 = v33;
    (v57)(v59, v33);
    v43 = swift_allocObject();
    v43[2] = 0xD00000000000002BLL;
    v43[3] = v54;
    v43[4] = 182;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_20B5D9EA0;
    *(v44 + 24) = v43;
    v51(v41, v40, v33);
    v45 = v48;
    v46 = swift_allocObject();
    v49(v46 + v50, v41, v42);
    v47 = (v46 + v45);
    *v47 = sub_20B5D9EC0;
    v47[1] = v44;

    sub_20C137C94();

    swift_unknownObjectRelease();
    return (v57)(v40, v42);
  }
}

uint64_t sub_20B75AE6C(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - v3);
  sub_20B5D9BA8();
  v5 = swift_allocError();
  *v6 = 2;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_20B520158(v4, &unk_27C76D250);
}

uint64_t sub_20B75AF9C(uint64_t a1)
{
  result = sub_20B75B4B0(&qword_27C764BA8, type metadata accessor for AnalyticsConsentInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20B75AFF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B75B054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsConsentInterceptor.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B75B0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B75B150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B75B1D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_20B75B248@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_20B75B2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_20B759B8C(a1, v7, v2 + v6, v9, v10, a2);
}

uint64_t sub_20B75B3CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_20B75A178(a1, v2 + v6, v8, v10, v11, a2);
}

uint64_t sub_20B75B4B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20B75B4F8()
{
  result = qword_281103B80;
  if (!qword_281103B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103B80);
  }

  return result;
}

uint64_t objectdestroy_33Tm_0()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_65Tm()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v36 = v11[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v11[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v42 = v11[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v46 = v0;
    v27 = v2;
    v28 = (v2 + 24) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v46;
  }

  v35 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_20B583F4C(*(v0 + v35), *(v0 + v35 + 8), *(v0 + v35 + 16));

  return MEMORY[0x2821FE8E8](v0, v35 + 17, v2 | 7);
}

uint64_t sub_20B75C598(void (*a1)(uint64_t *), void (*a2)(uint64_t *))
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20B757C2C(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20B75C6B0()
{
  v1 = *(type metadata accessor for NavigationRequest() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_20B757A70(v2, v3, v4, v5);
}

uint64_t sub_20B75C718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B75C7E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13A814();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 104);
  v9(v8, *MEMORY[0x277D4EFE8], v4, v6);
  LOBYTE(v14[0]) = 1;
  sub_20C13A384();
  (v9)(v8, *MEMORY[0x277D4F058], v4);
  LOBYTE(v14[0]) = 0;
  sub_20C13A384();
  v10 = OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_state;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_accountProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  sub_20C133AA4();
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_privacyPreferencesClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI27AnalyticsConsentInterceptor_serviceSubscriptionCache);
  return v2;
}

uint64_t sub_20B75CB0C(uint64_t a1)
{
  v35 = sub_20C138034();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_20C13DAA4();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_20C138024();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_20B526D44((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_20B526EA4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B75CE14()
{
  swift_getObjectType();
  sub_20C13B054();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B75CFDC()
{
  v0 = sub_20C135434();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B044();
    v17 = sub_20C135414();
    v12 = v11;
    v13 = *(v1 + 8);
    v13(v9, v0);
    sub_20C13B044();
    sub_20C135424();
    v15 = v14;
    v13(v6, v0);
    sub_20C13B044();
    v16 = sub_20C135404();
    v13(v3, v0);
    sub_20B75EB54(v17, v12, v16 & 1, v15);
  }

  return result;
}

uint64_t sub_20B75D1C0()
{
  v0 = sub_20C133524();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A984();
    v11 = sub_20C133504();
    v21 = v12;
    v22 = v11;
    v13 = *(v1 + 8);
    v13(v9, v0);
    sub_20C13A984();
    v14 = sub_20C1334E4();
    v16 = v15;
    v13(v6, v0);
    sub_20C13A984();
    v17 = sub_20C133514();
    v19 = v18;
    v13(v3, v0);
    sub_20B75EF30(v22, v21, v14, v16 & 1, v17, v19);
  }

  return result;
}

uint64_t sub_20B75D3B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B75F304();
  }

  return result;
}

unint64_t sub_20B75D408(uint64_t a1, unint64_t a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_20B75FBFC(a1, a2, v26);
  v8 = v26[0];
  if (v26[0] == 2)
  {
    sub_20C13B4E4();

    v9 = sub_20C13BB74();
    v10 = sub_20C13D1D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_20B51E694(a1, a2, &v25);
      _os_log_impl(&dword_20B517000, v9, v10, "No download entry for identifier: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x20F2F6A40](v12, -1, -1);
      MEMORY[0x20F2F6A40](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v13 = 1;
    v14 = 5;
  }

  else
  {
    v15 = v26[8];
    v16 = v26[16];
    v17 = v27;
    v18 = v28;
    sub_20B520158(v26, &qword_27C764BC0);
    if (v16 == 255 || (v16 & 1) == 0)
    {
      if (v8)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      v13 = 1;
    }

    else
    {
      v19 = 1 << v15;
      if (v8)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v21 = 6;
      }

      else
      {
        v21 = v17;
      }

      if (v15 == 1)
      {
        v22 = v21;
      }

      else
      {
        v22 = 3;
      }

      if (v15 == 1)
      {
        v23 = v18;
      }

      else
      {
        v23 = 1;
      }

      if ((v19 & 0x1DD) != 0)
      {
        v14 = v20;
      }

      else
      {
        v14 = v22;
      }

      if ((v19 & 0x1DD) != 0)
      {
        v13 = 1;
      }

      else
      {
        v13 = v23;
      }
    }
  }

  return v14 | ((v13 & 1) << 32);
}

uint64_t sub_20B75D680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v53 = *(v7 - 8);
  v54 = v7;
  v49 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v44 - v10;
  MEMORY[0x28223BE20](v11);
  v55 = &v44 - v12;
  v13 = sub_20C132E94();
  MEMORY[0x28223BE20](v13 - 8);
  v57 = sub_20C138034();
  v14 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 8);
  v18 = *(a3 + 16);
  v19 = *(a3 + 40);
  v20 = *(a3 + 44);
  v66 = *(a3 + 48);
  v59[0] = 1;
  v60 = v17;
  v61 = v18;
  v62 = *(a3 + 24);
  v63 = v19;
  v64 = v20;
  v65 = v66;
  v47 = a1;
  sub_20B75E770(a1, a2, v59);
  v46 = a2;

  sub_20C132E84();
  v51 = v16;
  sub_20C138014();
  v45 = v3;
  v21 = v3[14];
  v44 = v3[15];
  __swift_project_boxed_opaque_existential_1(v3 + 11, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F980;
  v24 = v57;
  (*(v14 + 16))(v23 + v22, v16, v57);
  sub_20BE8BBF4(v23);
  swift_setDeallocating();
  v25 = *(v14 + 8);
  v48 = v14 + 8;
  v50 = v25;
  v25((v23 + v22), v24);
  swift_deallocClassInstance();
  v26 = v56;
  sub_20C13A1E4();

  v27 = swift_allocObject();
  v28 = *(a3 + 16);
  *(v27 + 16) = *a3;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(a3 + 32);
  *(v27 + 64) = *(a3 + 48);
  v29 = v47;
  *(v27 + 72) = v45;
  *(v27 + 80) = v29;
  *(v27 + 88) = v46;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20B760564;
  *(v30 + 24) = v27;
  v31 = v52;
  v32 = v53;
  v33 = v54;
  (*(v53 + 16))(v52, v26, v54);
  v34 = v32;
  v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = (v49 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v34 + 32))(v37 + v35, v31, v33);
  v38 = (v37 + v36);
  *v38 = sub_20B5F7764;
  v38[1] = v30;

  sub_20B7600B4(a3, v58);

  v39 = v55;
  sub_20C137C94();
  v40 = *(v34 + 8);
  v40(v56, v33);
  v41 = sub_20C137CB4();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v41(sub_20B5DF6DC, v42);

  v40(v39, v33);
  return v50(v51, v57);
}

uint64_t sub_20B75DC1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a4;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4E4();
  v12 = a1;
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1D4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23[2] = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23[1] = a3;
    v18 = v17;
    v29 = v17;
    *v16 = 136446210;
    swift_getErrorValue();
    v19 = MEMORY[0x20F2F5850](v27, v28);
    v21 = sub_20B51E694(v19, v20, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_20B517000, v13, v14, "Error inserting bookmark: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x20F2F6A40](v18, -1, -1);
    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  return sub_20B75E770(v24, v26, v25);
}

uint64_t sub_20B75DE1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v34 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v37 = &v33[-v13];
  MEMORY[0x28223BE20](v14);
  v36 = &v33[-v15];
  v16 = *a3;
  v17 = *(a3 + 40);
  v46 = 1;
  v39[0] = v16;
  v40 = 0;
  v41 = 1;
  v42 = *(a3 + 24);
  v43 = v17;
  v44 = 0;
  v45 = 1;
  v18 = a2;
  sub_20B75E770(a1, a2, v39);
  __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
  if (v34)
  {
    sub_20C139E34();
  }

  else
  {
    sub_20C139E24();
  }

  v19 = swift_allocObject();
  v20 = *(a3 + 16);
  *(v19 + 16) = *a3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a3 + 32);
  *(v19 + 64) = *(a3 + 48);
  *(v19 + 72) = v5;
  *(v19 + 80) = a1;
  *(v19 + 88) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20B7604E0;
  *(v21 + 24) = v19;
  v22 = v9;
  v23 = *(v9 + 16);
  v24 = v35;
  v23(v11, v37, v35);
  v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v26 = swift_allocObject();
  (*(v22 + 32))(v26 + v25, v11, v24);
  v27 = (v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20B5F7764;
  v27[1] = v21;
  sub_20B7600B4(a3, v38);

  v28 = v36;
  sub_20C137C94();
  v29 = *(v22 + 8);
  v29(v37, v24);
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B5DF6DC, v31);

  return (v29)(v28, v24);
}

uint64_t sub_20B75E1A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v34 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v37 = &v33[-v13];
  MEMORY[0x28223BE20](v14);
  v36 = &v33[-v15];
  v16 = *a3;
  v17 = *(a3 + 40);
  v46 = 1;
  v39[0] = v16;
  v40 = 0;
  v41 = -1;
  v42 = *(a3 + 24);
  v43 = v17;
  v44 = 0;
  v45 = 1;
  v18 = a2;
  sub_20B75E770(a1, a2, v39);
  __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
  if (v34)
  {
    sub_20C139E14();
  }

  else
  {
    sub_20C139E04();
  }

  v19 = swift_allocObject();
  v20 = *(a3 + 16);
  *(v19 + 16) = *a3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a3 + 32);
  *(v19 + 64) = *(a3 + 48);
  *(v19 + 72) = v5;
  *(v19 + 80) = a1;
  *(v19 + 88) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20B7604B4;
  *(v21 + 24) = v19;
  v22 = v9;
  v23 = *(v9 + 16);
  v24 = v35;
  v23(v11, v37, v35);
  v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v26 = swift_allocObject();
  (*(v22 + 32))(v26 + v25, v11, v24);
  v27 = (v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20B5DF204;
  v27[1] = v21;
  sub_20B7600B4(a3, v38);

  v28 = v36;
  sub_20C137C94();
  v29 = *(v22 + 8);
  v29(v37, v24);
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B5DF6DC, v31);

  return (v29)(v28, v24);
}

uint64_t sub_20B75E538(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v32 = a6;
  v34 = a4;
  v35 = a3;
  v33 = sub_20C13BB84();
  v10 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4E4();
  v13 = a1;
  v14 = sub_20C13BB74();
  v15 = sub_20C13D1D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a5;
    v19 = v18;
    v38[0] = v18;
    *v17 = 136446210;
    swift_getErrorValue();
    v20 = MEMORY[0x20F2F5850](v36, v37);
    v22 = sub_20B51E694(v20, v21, v38);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20B517000, v14, v15, v32, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v23 = v19;
    a5 = v30;
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v33);
  v24 = *(a2 + 1);
  v25 = a2[16];
  v26 = *a2;
  v27 = a2[40];
  v44 = 1;
  LOBYTE(v38[0]) = v26;
  v38[1] = v24;
  v39 = v25;
  v40 = *(a2 + 24);
  v41 = v27;
  v42 = 0;
  v43 = 1;
  return sub_20B75E770(v34, a5, v38);
}

uint64_t sub_20B75E770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *(a3 + 8);
  v37 = *a3;
  v4 = a3 + 24;
  v5 = *(a3 + 24);
  v6 = *(a3 + 32);
  v34 = *(a3 + 40);
  v35 = *(a3 + 16);
  sub_20B75FBFC(a1, a2, &v42);
  v7 = v43;
  v8 = v44;
  v10 = v45;
  v9 = v46;
  v11 = v42;
  if (v42 == 2)
  {
    v48 = *v4;
    LOBYTE(v49) = *(v4 + 16);
    sub_20B52F9E8(&v48, v41, &unk_27C76BBC0);
    sub_20B760164(v11, *(&v11 + 1), v7, v8, v10, v9);
    sub_20B760164(v37, v36, v35, v5, v6, v34);
    v12 = 1;
    v13 = 5;
    v15 = a1;
    v14 = a2;
  }

  else
  {
    v48 = v42;
    v49 = v43;
    v50 = v44;
    v51 = v45;
    v16 = HIDWORD(v46);
    v52 = v46;
    v17 = v47;
    v53 = v47;
    sub_20B7600B4(a3, v41);
    v18 = sub_20B6A6258(&v48, a3);
    sub_20B6557F0(a3);
    result = sub_20B520158(&v42, &qword_27C764BC0);
    v15 = a1;
    v14 = a2;
    if (v18)
    {
      return result;
    }

    if (v7 != 0xFF && (v7 & 1) != 0)
    {
      v12 = 1;
      v13 = 3;
      v20 = v38;
      if (((1 << SBYTE8(v11)) & 0x1DD) != 0)
      {
        if (v11)
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
        }
      }

      else if (BYTE8(v11) == 1)
      {
        v12 = v17;
        if (v17)
        {
          v13 = 6;
        }

        else
        {
          v13 = v16;
        }
      }

      goto LABEL_15;
    }

    if (v11)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    v12 = 1;
  }

  v20 = v38;
LABEL_15:
  v21 = *(a3 + 16);
  if (v21 == 255 || (v21 & 1) == 0 || (v22 = *(a3 + 8), ((1 << v22) & 0x1DD) != 0))
  {
    LOBYTE(v23) = *a3 ^ 1;
    if ((*a3 & 1) == 0 && ((v12 ^ 1) & 1) == 0)
    {
      LOBYTE(v23) = v13 > 5;
    }
  }

  else if (v22 == 1)
  {
    LOBYTE(v23) = v12 ^ 1 | (v13 == 0);
  }

  else if (v12)
  {
    v23 = 0x45u >> v13;
  }

  else
  {
    LOBYTE(v23) = 1;
  }

  v24 = *(v20 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764BD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = v15;
  *(inited + 40) = v14;
  v27 = *(a3 + 16);
  v26 = *(a3 + 32);
  v28 = *a3;
  *(inited + 96) = *(a3 + 48);
  *(inited + 64) = v27;
  *(inited + 80) = v26;
  *(inited + 48) = v28;
  sub_20B7600B4(a3, v41);

  v29 = sub_20B6B2458(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C763930);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v24;
  sub_20B760184(v29, sub_20B75FEC4, 0, isUniquelyReferenced_nonNull_native, v41);

  *(v20 + 152) = v41[0];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v31 + 40);
      ObjectType = swift_getObjectType();
      (*(v32 + 8))(v31, &off_2822B2B58, v15, v14, v23 & 1, ObjectType, v32);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B75EB54(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20B75FBFC(a1, a2, &v43);
  v13 = v43;
  if (v43 != 2)
  {
    v14 = v11;
    v38 = v9;
    v39 = v8;
    v15 = v45;
    v16 = v46;
    v17 = v47;
    v18 = *v48;
    v19 = v48[8];
    if (v45 != 255 && (v45 & 1) != 0 && v44 == 1)
    {
      LOBYTE(v42[0]) = 0;
      v34 = 5;
      LOBYTE(v49) = v43 & 1;
      if ((a3 & 1) == 0)
      {
        v34 = 1;
      }

      v50 = v34;
      LOBYTE(v51) = 1;
      v52 = v46;
      v53 = v47;
      LOBYTE(v54) = v48[0];
      *(&v54 + 1) = a4;
      v55 = 0;
      sub_20B75E770(a1, a2, &v49);
      return sub_20B520158(&v43, &qword_27C764BC0);
    }

    else
    {
      v37 = v45;
      v35 = *&v48[1];
      v20 = v14;
      v21 = v44;
      sub_20C13B4E4();
      v49 = v13;
      v50 = v21;
      v36 = v21;
      v51 = v15;
      v52 = v16;
      v53 = v17;
      v54 = v18;
      v55 = v19;
      sub_20B7600B4(&v49, v42);
      v22 = sub_20C13BB74();
      v23 = sub_20C13D1F4();
      sub_20B520158(&v43, &qword_27C764BC0);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v42[0] = v25;
        *v24 = 136446210;
        sub_20B520158(&v43, &qword_27C764BC0);
        v26 = v39;
        v27 = v38;
        if (v37 == 255 || (v15 & 1) == 0 || (v28 = 1, LODWORD(v29) = 3, ((1 << v36) & 0x1DD) != 0))
        {
          if (v13)
          {
            LODWORD(v29) = 2;
          }

          else
          {
            LODWORD(v29) = 0;
          }

          v28 = 1;
        }

        else if (v36 == 1)
        {
          if ((v35 & 0x100000000000000) != 0)
          {
            v28 = 1;
            LODWORD(v29) = 6;
          }

          else
          {
            v28 = 0;
            v29 = v35 >> 24;
          }
        }

        v40 = v29;
        v41 = v28;
        v30 = sub_20B760110();
        v31 = MEMORY[0x20F2EFA40](&type metadata for DownloadState, v30);
        v33 = sub_20B51E694(v31, v32, v42);

        *(v24 + 4) = v33;
        _os_log_impl(&dword_20B517000, v22, v23, "Ignoring progress update while state is %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x20F2F6A40](v25, -1, -1);
        MEMORY[0x20F2F6A40](v24, -1, -1);

        return (*(v27 + 8))(v20, v26);
      }

      else
      {
        sub_20B520158(&v43, &qword_27C764BC0);

        return (*(v38 + 8))(v20, v39);
      }
    }
  }

  return result;
}

uint64_t sub_20B75EF30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v11 = sub_20C13BB84();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  result = sub_20B75FBFC(a1, a2, v40);
  v18 = v40[0];
  if (v40[0] != 2)
  {
    if (a4)
    {
      v36 = v41;
      v19 = v42;
      v20 = v43;
      if (sub_20C13A3D4() == a5 && v21 == a6)
      {

LABEL_11:
        v26 = v37;
        v27 = sub_20C134694();
        if (v27 == sub_20C134694() || (v28 = sub_20C134694(), v28 == sub_20C134694()))
        {
          v29 = 1;
          if ((v20 & 0x100000000000000) != 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v33 = sub_20C134694();
          v29 = v33 == sub_20C134694();
          if ((v20 & 0x100000000000000) != 0)
          {
LABEL_21:
            LOBYTE(v39) = 1;
            LOBYTE(v44) = v18 & 1;
            v45 = v26;
            v46 = 1;
            v47 = v36;
            v48 = v19;
            v49 = 0;
            v50 = 1;
            sub_20B75E770(a1, a2, &v44);
            return sub_20B520158(v40, &qword_27C764BC0);
          }
        }

        if (COERCE_FLOAT(v20 >> 24) > 0.0 && !v29)
        {
          return sub_20B520158(v40, &qword_27C764BC0);
        }

        goto LABEL_21;
      }

      v35 = v20;
      v25 = sub_20C13DFF4();
      v20 = v35;

      if (v25)
      {
        goto LABEL_11;
      }

      sub_20B520158(v40, &qword_27C764BC0);
      sub_20C13B534();
      v30 = sub_20C13BB74();
      v31 = sub_20C13D1D4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_20B517000, v30, v31, "CurrentDevice identifier is not the downloading device id. Do not update the load status.", v32, 2u);
        MEMORY[0x20F2F6A40](v32, -1, -1);
      }

      return (*(v38 + 8))(v16, v11);
    }

    else
    {
      sub_20B520158(v40, &qword_27C764BC0);
      sub_20C13B534();
      v22 = sub_20C13BB74();
      v23 = sub_20C13D1D4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134349056;
        v44 = v37;
        LOBYTE(v45) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764BC8);
        sub_20C133BB4();
        *(v24 + 4) = v39;
        _os_log_impl(&dword_20B517000, v22, v23, "Unknown load status handling asset bundle updated: %{public}ld", v24, 0xCu);
        MEMORY[0x20F2F6A40](v24, -1, -1);
      }

      return (*(v38 + 8))(v13, v11);
    }
  }

  return result;
}

uint64_t sub_20B75F304()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v44 = v2;
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v46 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v43 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_5:

    v14 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v9 = Strong;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 24);
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 8))(v9, &off_2822B2B58, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_8:
  v43 = v5;
  v54 = v8;
  sub_20B526D44(0, v13, 0);
  v14 = v54;
  v15 = v12 + 32;
  do
  {
    sub_20B51CC64(v15, v51);
    v16 = v52;
    v17 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1(v51);
    v54 = v14;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_20B526D44((v21 > 1), v22 + 1, 1);
      v14 = v54;
    }

    *(v14 + 16) = v22 + 1;
    v23 = v14 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    v15 += 40;
    --v13;
  }

  while (v13);

  v5 = v43;
LABEL_13:

  v25 = sub_20B71C584(v24);
  v51[0] = v14;
  sub_20B8D9590(v25);
  v26 = v51[0];
  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));

  sub_20B527580(v27);

  v28 = v46;
  sub_20C13A1D4();

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_20B760068;
  *(v31 + 24) = v30;
  v33 = v48;
  v32 = v49;
  v34 = v45;
  (*(v48 + 16))(v45, v28, v49);
  v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v36 = (v44 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v33 + 32))(v37 + v35, v34, v32);
  v38 = (v37 + v36);
  *v38 = sub_20B760084;
  v38[1] = v31;
  v39 = v47;
  sub_20C137C94();
  (*(v33 + 8))(v28, v32);
  v40 = sub_20C137CB4();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v40(sub_20B52347C, v41);

  return (*(v50 + 8))(v39, v5);
}

uint64_t sub_20B75F814(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20B75CB0C(*a1);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 40);
    do
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;

      sub_20B75F8B4(v10, a3, v5);

      v7 += 2;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_20B75F8B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (sub_20B75FBFC(v10, v9, v25), v11 = , v12 = v25[0], v25[0] != 2))
  {
    v23 = v26;
    v40 = v27;
    v24 = v28;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v32 = v10;
    v33 = v9;
    MEMORY[0x28223BE20](v11);
    *(&v22 - 2) = &v32;
    v21 = sub_20B79692C(sub_20B606650, (&v22 - 4), a3) & 1;
    if (v21 == (v12 & 1))
    {
      return sub_20B520158(v25, &qword_27C764BC0);
    }

    v39 = v20 & 1;
    LOBYTE(v32) = v21;
    v33 = v23;
    v34 = v40;
    v35 = v24;
    v36 = v18;
    v37 = v19;
    v38 = v20 & 1;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return sub_20B520158(v25, &qword_27C764BC0);
    }

    else
    {
      sub_20B75E770(v10, v9, &v32);
      sub_20B520158(v25, &qword_27C764BC0);
    }
  }

  else
  {
    sub_20C13B4E4();

    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_20B51E694(v10, v9, &v32);
      _os_log_impl(&dword_20B517000, v13, v14, "No download entry for identifier: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_20B75FBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 152);
  if (*(v7 + 16))
  {

    v8 = sub_20B65AA60(a1, a2);
    if (v9)
    {
      v10 = *(v7 + 56) + 56 * v8;
      v24 = *(v10 + 16);
      v26 = *v10;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v10 + 45) | (*(v10 + 47) << 16);
      v14 = *(v10 + 41);
      v15 = *(v10 + 48);
      sub_20B760050(*(v10 + 24), v11, *(v10 + 40));

      v18 = v24;
      v17 = v26;
      v19 = (v14 << 8) | (v13 << 40) | v12;
      goto LABEL_13;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 24);
      ObjectType = swift_getObjectType();
      (*(v22 + 16))(v32, v21, &off_2822B2B58, a1, a2, ObjectType, v22);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
LABEL_10:
  sub_20B52F9E8(v32, &v29, &qword_27C764BB8);
  if (v30)
  {
    sub_20B51C710(&v29, v31);
    sub_20B51CC64(v31, v28);
    sub_20B6A6428(v28, v34);
    v25 = v34[1];
    v27 = v34[0];
    v11 = v35;
    v19 = v36;
    v15 = v37;
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = sub_20B520158(v32, &qword_27C764BB8);
    v18 = v25;
    v17 = v27;
  }

  else
  {
    sub_20B520158(v32, &qword_27C764BB8);
    result = sub_20B520158(&v29, &qword_27C764BB8);
    v11 = 0;
    v19 = 0;
    v15 = 0;
    v17 = xmmword_20C14F2B0;
    v18 = 0uLL;
  }

LABEL_13:
  *a3 = v17;
  *(a3 + 16) = v18;
  *(a3 + 32) = v11;
  *(a3 + 40) = v19;
  *(a3 + 48) = v15;
  return result;
}

uint64_t sub_20B75FE38()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20B75FEC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 2);
  v9[0] = *(a1 + 1);
  v9[1] = v4;
  v10 = *(a1 + 3);
  v5 = v10;
  v11 = *(a1 + 64);
  v6 = v11;
  *(a2 + 16) = v9[0];
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_20B7600B4(v9, v8);
}

void *sub_20B75FF20()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(v3, (v0 + 6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v3, (v0 + 11));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v1 = *(&v3[0] + 1);
  v0[16] = *&v3[0];
  v0[17] = v1;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[18] = sub_20C13A914();
  v0[19] = sub_20B6B2458(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_20B760050(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_20B6A6418(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_20B760110()
{
  result = qword_27C764BD0;
  if (!qword_27C764BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764BD0);
  }

  return result;
}

uint64_t sub_20B760164(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (result != 2)
  {
    return sub_20B584078(a4, a5, a6);
  }

  return result;
}

uint64_t sub_20B760184(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v67 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v10; ; v10 = i)
  {
    v17 = v9;
    v18 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v20 = __clz(__rbit64(v17)) | (v18 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(a1 + 56) + 56 * v20;
    v26 = *(v24 + 16);
    v25 = *(v24 + 32);
    v27 = *v24;
    v58 = *(v24 + 48);
    v57[1] = v26;
    v57[2] = v25;
    v57[0] = v27;
    v28 = *(v24 + 16);
    v53 = *v24;
    v54 = v28;
    v55 = *(v24 + 32);
    v56 = *(v24 + 48);
    *&v52 = v23;
    *(&v52 + 1) = v22;

    sub_20B7600B4(v57, v59);
    a2(&v61, &v52);
    v59[2] = v54;
    v59[3] = v55;
    v60 = v56;
    v59[0] = v52;
    v59[1] = v53;
    sub_20B520158(v59, &unk_27C764BE0);
    v29 = v62;
    if (!v62)
    {
LABEL_22:
      sub_20B583EDC();
    }

    v30 = v61;
    v31 = *v67;
    v33 = sub_20B65AA60(v61, v62);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_24;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((a4 & 1) == 0)
      {
        sub_20BA105C0();
      }
    }

    else
    {
      sub_20BA0A5E8(v36, a4 & 1);
      v38 = sub_20B65AA60(v30, v29);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_26;
      }

      v33 = v38;
    }

    v51 = (v17 - 1) & v17;
    v40 = *v67;
    if (v37)
    {

      v12 = v40[7] + 56 * v33;
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      *(v12 + 48) = v66;
      v15 = v64;
      *v12 = v63;
      *(v12 + 16) = v15;
      v16 = *(v12 + 40);
      *(v12 + 32) = v65;
      sub_20B584078(v13, v14, v16);
    }

    else
    {
      v40[(v33 >> 6) + 8] |= 1 << v33;
      v41 = (v40[6] + 16 * v33);
      *v41 = v30;
      v41[1] = v29;
      v42 = v40[7] + 56 * v33;
      v43 = v64;
      *v42 = v63;
      *(v42 + 16) = v43;
      *(v42 + 32) = v65;
      *(v42 + 48) = v66;
      v44 = v40[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_25;
      }

      v40[2] = v46;
    }

    a4 = 1;
    v11 = v18;
    v9 = v51;
  }

  v19 = v11;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v10)
    {
      goto LABEL_22;
    }

    v17 = *(v6 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_20C13E054();
  __break(1u);
  return result;
}