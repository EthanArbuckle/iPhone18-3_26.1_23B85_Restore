uint64_t sub_20BA93328(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BA8EE8C(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20BA93490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BA93640(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LayoutListConfiguration();
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LayoutSectionType();
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BA93C4C(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
        v29 = *&v9[*(v28 + 48)];
        v30 = &v9[*(v28 + 80)];
        v52 = *(v30 + 10);
        v31 = *(v30 + 4);
        v50 = *(v30 + 3);
        v51 = v31;
        v32 = *(v30 + 2);
        v48 = *(v30 + 1);
        v49 = v32;
        v47 = *v30;
        sub_20BA93D04(v9, v6);
        MEMORY[0x20F2F58E0](7);
        sub_20C13BFF4();
        sub_20BA93D68(&qword_27C769B00, MEMORY[0x277D74D78]);
        sub_20C13C7C4();
        sub_20C132EE4();
        sub_20BA93D68(&qword_27C7675A0, MEMORY[0x277CC95F0]);
        sub_20C13C7C4();
        sub_20C13D604();
        sub_20C13E184();
        sub_20BCE5F34(a1);

        sub_20BA93CB0(&v47);
        return sub_20BA94FC8(v6, type metadata accessor for LayoutListConfiguration);
      }

      if (EnumCaseMultiPayload != 7)
      {
        return MEMORY[0x20F2F58E0](1);
      }

      v11 = *v9;
      v12 = *(v9 + 1);
      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      v15 = *(v9 + 4);
      v16 = *(v9 + 88);
      v49 = *(v9 + 72);
      v50 = v16;
      v51 = *(v9 + 104);
      v52 = *(v9 + 15);
      v17 = *(v9 + 56);
      v47 = *(v9 + 40);
      v48 = v17;
      MEMORY[0x20F2F58E0](8);
      MEMORY[0x20F2F58E0](v11);
      MEMORY[0x20F2F58E0](v12);
      MEMORY[0x20F2F58E0](v14);
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v18 = *v9;
      v19 = *(v9 + 1);
      v26 = *(v9 + 4);
      v49 = *(v9 + 3);
      v50 = v26;
      v51 = *(v9 + 5);
      v52 = *(v9 + 12);
      v27 = *(v9 + 2);
      v47 = *(v9 + 1);
      v48 = v27;
      v22 = 5;
      goto LABEL_13;
    }

    v45 = *(v9 + 3);
    v49 = *(v9 + 2);
    v50 = v45;
    v51 = *(v9 + 4);
    v52 = *(v9 + 10);
    v46 = *(v9 + 1);
    v47 = *v9;
    v48 = v46;
    v25 = 6;
LABEL_24:
    MEMORY[0x20F2F58E0](v25);
    sub_20BCE5F34(a1);
    return sub_20BA93CB0(&v47);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v40 = *v9;
      v41 = *(v9 + 1);
      v42 = *(v9 + 2);
      v15 = *(v9 + 3);
      v43 = *(v9 + 5);
      v49 = *(v9 + 4);
      v50 = v43;
      v51 = *(v9 + 6);
      v52 = *(v9 + 14);
      v44 = *(v9 + 3);
      v47 = *(v9 + 2);
      v48 = v44;
      MEMORY[0x20F2F58E0](4);
      MEMORY[0x20F2F58E0](v40);
      MEMORY[0x20F2F58E0](v41);
      sub_20C13D604();
      sub_20C13D604();
      sub_20BCE5F34(a1);

      goto LABEL_21;
    }

    v23 = *(v9 + 3);
    v49 = *(v9 + 2);
    v50 = v23;
    v51 = *(v9 + 4);
    v52 = *(v9 + 10);
    v24 = *(v9 + 1);
    v47 = *v9;
    v48 = v24;
    v25 = 3;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload)
  {
    v34 = *v9;
    v13 = *(v9 + 1);
    v15 = *(v9 + 2);
    v35 = *(v9 + 72);
    v49 = *(v9 + 56);
    v50 = v35;
    v51 = *(v9 + 88);
    v52 = *(v9 + 13);
    v36 = *(v9 + 40);
    v47 = *(v9 + 24);
    v48 = v36;
    MEMORY[0x20F2F58E0](2);
    MEMORY[0x20F2F58E0](*(v34 + 16));
    v37 = *(v34 + 16);
    if (v37)
    {
      v38 = (v34 + 32);
      do
      {
        v39 = *v38++;
        MEMORY[0x20F2F58E0](v39);
        --v37;
      }

      while (v37);
    }

LABEL_19:
    sub_20C13D604();
    sub_20C13D604();
    sub_20BCE5F34(a1);

LABEL_21:
    return sub_20BA93CB0(&v47);
  }

  v18 = *v9;
  v19 = *(v9 + 1);
  v20 = *(v9 + 4);
  v49 = *(v9 + 3);
  v50 = v20;
  v51 = *(v9 + 5);
  v52 = *(v9 + 12);
  v21 = *(v9 + 2);
  v47 = *(v9 + 1);
  v48 = v21;
  v22 = 0;
LABEL_13:
  MEMORY[0x20F2F58E0](v22);
  MEMORY[0x20F2F58E0](v18);
  sub_20C13D604();
  sub_20BCE5F34(a1);

  return sub_20BA93CB0(&v47);
}

uint64_t sub_20BA93B34()
{
  sub_20C13E164();
  sub_20BA93640(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BA93B78()
{
  sub_20C13E164();
  sub_20BA93640(v1);
  return sub_20C13E1B4();
}

uint64_t type metadata accessor for LayoutSectionType()
{
  result = qword_27C769B10;
  if (!qword_27C769B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BA93C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutSectionType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BA93D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutListConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BA93D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BA93DB0(uint64_t a1, uint64_t a2)
{
  v131 = a2;
  v126 = type metadata accessor for LayoutListConfiguration();
  MEMORY[0x28223BE20](v126);
  v127 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LayoutSectionType();
  MEMORY[0x28223BE20](v4);
  v6 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v126 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v126 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v126 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v126 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v126 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v126 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v126 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769B08);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v126 + *(v29 + 56) - v28;
  v31 = a1;
  v32 = &v126 - v28;
  sub_20BA93C4C(v31, &v126 - v28);
  v129 = v30;
  sub_20BA93C4C(v131, v30);
  v131 = v32;
  v130 = v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v60 = v129;
      v34 = v131;
      if (EnumCaseMultiPayload != 2)
      {
        sub_20BA93C4C(v131, v17);
        v102 = *v17;
        v101 = *(v17 + 1);
        v104 = *(v17 + 2);
        v103 = *(v17 + 3);
        v105 = *(v17 + 5);
        v140 = *(v17 + 4);
        v141 = v105;
        v142 = *(v17 + 6);
        v143 = *(v17 + 14);
        v106 = *(v17 + 3);
        v138 = *(v17 + 2);
        v139 = v106;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_20BA93CB0(&v138);

          v34 = v131;
          goto LABEL_94;
        }

        v108 = *v60;
        v107 = *(v60 + 1);
        v110 = *(v60 + 2);
        v109 = *(v60 + 3);
        v111 = *(v60 + 5);
        v134 = *(v60 + 4);
        v135 = v111;
        v136 = *(v60 + 6);
        v137 = *(v60 + 14);
        v112 = *(v60 + 3);
        v132 = *(v60 + 2);
        v133 = v112;
        if (v102 == v108 && v101 == v107)
        {
          v113 = v131;
          sub_20B51C88C(0, &qword_27C7654B0);
          if (sub_20C13D5F4() & 1) != 0 && (sub_20C13D5F4())
          {
            v114 = v113;
            if ((sub_20BB81C50(v138, v132) & 1) != 0 && *(&v138 + 1) == *(&v132 + 1) && *&v139 == *&v133 && *(&v139 + 1) == *(&v133 + 1) && *&v140 == *&v134)
            {
              v115 = sub_20BB81C64(*(&v140 + 1), *(&v134 + 1));

              if ((v115 & 1) != 0 && *&v141 == *&v135 && *(&v141 + 1) == *(&v135 + 1))
              {
                sub_20BA93CB0(&v138);
                sub_20BA93CB0(&v132);
                v114 = v113;
                if (v142 == v136)
                {
                  v54 = v113;
                  goto LABEL_75;
                }
              }

              else
              {
                sub_20BA93CB0(&v132);
                sub_20BA93CB0(&v138);
                v114 = v113;
              }
            }

            else
            {
              sub_20BA93CB0(&v132);
              sub_20BA93CB0(&v138);
            }

            v124 = v114;
          }

          else
          {
            sub_20BA93CB0(&v132);

            sub_20BA93CB0(&v138);
            v124 = v113;
          }
        }

        else
        {
          sub_20BA93CB0(&v132);

          sub_20BA93CB0(&v138);
          v124 = v131;
        }

LABEL_128:
        sub_20BA94FC8(v124, type metadata accessor for LayoutSectionType);
        return 0;
      }

      sub_20BA93C4C(v131, v20);
      v61 = *(v20 + 3);
      v140 = *(v20 + 2);
      v141 = v61;
      v142 = *(v20 + 4);
      v143 = *(v20 + 10);
      v62 = *(v20 + 1);
      v138 = *v20;
      v139 = v62;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v63 = *(v60 + 3);
        v134 = *(v60 + 2);
        v135 = v63;
        v136 = *(v60 + 4);
        v137 = *(v60 + 10);
        v64 = *v60;
        v65 = *(v60 + 1);
LABEL_78:
        v132 = v64;
        v133 = v65;
        if (sub_20BB81C50(v138, v64) & 1) != 0 && *(&v138 + 1) == *(&v132 + 1) && *&v139 == *&v133 && *(&v139 + 1) == *(&v133 + 1) && *&v140 == *&v134 && (sub_20BB81C64(*(&v140 + 1), *(&v134 + 1)))
        {
LABEL_84:
          if (*&v141 == *&v135 && *(&v141 + 1) == *(&v135 + 1))
          {
            sub_20BA93CB0(&v138);
            sub_20BA93CB0(&v132);
            if (v142 == v136)
            {
              goto LABEL_74;
            }

            goto LABEL_127;
          }
        }

LABEL_122:
        sub_20BA93CB0(&v132);
        sub_20BA93CB0(&v138);
        goto LABEL_127;
      }

LABEL_88:
      sub_20BA93CB0(&v138);
      goto LABEL_94;
    }

    v55 = v129;
    v34 = v131;
    if (EnumCaseMultiPayload)
    {
      sub_20BA93C4C(v131, v23);
      v91 = *v23;
      v92 = *(v23 + 1);
      v57 = *(v23 + 2);
      v93 = *(v23 + 72);
      v140 = *(v23 + 56);
      v141 = v93;
      v142 = *(v23 + 88);
      v143 = *(v23 + 13);
      v94 = *(v23 + 40);
      v138 = *(v23 + 24);
      v139 = v94;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_20BA93CB0(&v138);

        goto LABEL_94;
      }

      v96 = *v55;
      v95 = *(v55 + 1);
      v85 = *(v55 + 2);
      v97 = *(v55 + 72);
      v134 = *(v55 + 56);
      v135 = v97;
      v136 = *(v55 + 88);
      v137 = *(v55 + 13);
      v98 = *(v55 + 40);
      v132 = *(v55 + 24);
      v133 = v98;
      v99 = sub_20BB80344(v91, v96);

      if (v99)
      {
        sub_20B51C88C(0, &qword_27C7654B0);
        if (sub_20C13D5F4() & 1) != 0 && (sub_20C13D5F4())
        {
          if ((sub_20BB81C50(v138, v132) & 1) != 0 && *(&v138 + 1) == *(&v132 + 1) && *&v139 == *&v133 && *(&v139 + 1) == *(&v133 + 1) && *&v140 == *&v134)
          {
            v100 = sub_20BB81C64(*(&v140 + 1), *(&v134 + 1));

            goto LABEL_104;
          }

          sub_20BA93CB0(&v132);
          sub_20BA93CB0(&v138);

LABEL_125:
          goto LABEL_126;
        }
      }

      sub_20BA93CB0(&v132);

      sub_20BA93CB0(&v138);
    }

    else
    {
      sub_20BA93C4C(v131, v26);
      v56 = *v26;
      v57 = *(v26 + 1);
      v58 = *(v26 + 4);
      v140 = *(v26 + 3);
      v141 = v58;
      v142 = *(v26 + 5);
      v143 = *(v26 + 12);
      v59 = *(v26 + 2);
      v138 = *(v26 + 1);
      v139 = v59;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_93:
        sub_20BA93CB0(&v138);

        goto LABEL_94;
      }

      v121 = *v55;
      v85 = *(v55 + 1);
      v122 = *(v55 + 4);
      v134 = *(v55 + 3);
      v135 = v122;
      v136 = *(v55 + 5);
      v137 = *(v55 + 12);
      v123 = *(v55 + 2);
      v132 = *(v55 + 1);
      v133 = v123;
      if (v56 == v121)
      {
        sub_20B51C88C(0, &qword_27C7654B0);
        if (sub_20C13D5F4())
        {
          if ((sub_20BB81C50(v138, v132) & 1) != 0 && *(&v138 + 1) == *(&v132 + 1) && *&v139 == *&v133 && *(&v139 + 1) == *(&v133 + 1) && *&v140 == *&v134)
          {
            v100 = sub_20BB81C64(*(&v140 + 1), *(&v134 + 1));
LABEL_104:

            if (v100)
            {
              goto LABEL_84;
            }

            goto LABEL_122;
          }

          sub_20BA93CB0(&v132);
          sub_20BA93CB0(&v138);
          goto LABEL_125;
        }
      }

      sub_20BA93CB0(&v132);

      sub_20BA93CB0(&v138);
    }

LABEL_127:
    v124 = v34;
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v34 = v131;
    if (EnumCaseMultiPayload == 4)
    {
      sub_20BA93C4C(v131, v14);
      v66 = *v14;
      v57 = *(v14 + 1);
      v67 = *(v14 + 4);
      v140 = *(v14 + 3);
      v141 = v67;
      v142 = *(v14 + 5);
      v143 = *(v14 + 12);
      v68 = *(v14 + 2);
      v138 = *(v14 + 1);
      v139 = v68;
      v69 = v129;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v70 = *v69;
        v71 = *(v69 + 1);
        v72 = *(v69 + 4);
        v134 = *(v69 + 3);
        v135 = v72;
        v136 = *(v69 + 5);
        v137 = *(v69 + 12);
        v73 = *(v69 + 2);
        v132 = *(v69 + 1);
        v133 = v73;
        if (v66 == v70 && (sub_20B51C88C(0, &qword_27C7654B0), (sub_20C13D5F4() & 1) != 0))
        {
          if ((sub_20BB81C50(v138, v132) & 1) != 0 && *(&v138 + 1) == *(&v132 + 1) && *&v139 == *&v133 && *(&v139 + 1) == *(&v133 + 1) && *&v140 == *&v134)
          {
            v74 = sub_20BB81C64(*(&v140 + 1), *(&v134 + 1));

            if ((v74 & 1) != 0 && *&v141 == *&v135 && *(&v141 + 1) == *(&v135 + 1))
            {
              sub_20BA93CB0(&v138);
              sub_20BA93CB0(&v132);
              if (v142 == v136)
              {
                v54 = v34;
                goto LABEL_75;
              }
            }

            else
            {
              sub_20BA93CB0(&v132);
              sub_20BA93CB0(&v138);
            }
          }

          else
          {
            sub_20BA93CB0(&v132);
            sub_20BA93CB0(&v138);
          }
        }

        else
        {
          sub_20BA93CB0(&v132);

          sub_20BA93CB0(&v138);
        }

        v124 = v34;
        goto LABEL_128;
      }

      goto LABEL_93;
    }

    sub_20BA93C4C(v131, v11);
    v117 = *(v11 + 3);
    v140 = *(v11 + 2);
    v141 = v117;
    v142 = *(v11 + 4);
    v143 = *(v11 + 10);
    v118 = *(v11 + 1);
    v138 = *v11;
    v139 = v118;
    v119 = v129;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v120 = *(v119 + 3);
      v134 = *(v119 + 2);
      v135 = v120;
      v136 = *(v119 + 4);
      v137 = *(v119 + 10);
      v64 = *v119;
      v65 = *(v119 + 1);
      goto LABEL_78;
    }

    goto LABEL_88;
  }

  v34 = v131;
  if (EnumCaseMultiPayload == 6)
  {
    v75 = v128;
    sub_20BA93C4C(v131, v128);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
    v77 = v76[12];
    v78 = *(v75 + v77);
    v79 = v76[16];
    v80 = *(v75 + v79);
    v81 = v76[20];
    v143 = *(v75 + v81 + 80);
    v82 = *(v75 + v81 + 64);
    v141 = *(v75 + v81 + 48);
    v142 = v82;
    v83 = *(v75 + v81 + 32);
    v139 = *(v75 + v81 + 16);
    v140 = v83;
    v138 = *(v75 + v81);
    v84 = v129;
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_20BA93CB0(&v138);

      sub_20BA94FC8(v75, type metadata accessor for LayoutListConfiguration);
      goto LABEL_94;
    }

    v85 = *(v84 + v77);
    v86 = *(v84 + v79);
    v87 = *(v84 + v81 + 48);
    v134 = *(v84 + v81 + 32);
    v135 = v87;
    v136 = *(v84 + v81 + 64);
    v137 = *(v84 + v81 + 80);
    v88 = *(v84 + v81 + 16);
    v132 = *(v84 + v81);
    v133 = v88;
    v89 = v127;
    sub_20BA93D04(v84, v127);
    v90 = sub_20C132EC4();
    sub_20BA94FC8(v75, type metadata accessor for LayoutListConfiguration);
    if ((v90 & 1) == 0 || (sub_20B51C88C(0, &qword_27C7654B0), (sub_20C13D5F4() & 1) == 0) || v80 != v86)
    {
      sub_20BA94FC8(v89, type metadata accessor for LayoutListConfiguration);
      sub_20BA93CB0(&v132);
      sub_20BA93CB0(&v138);

LABEL_126:
      goto LABEL_127;
    }

    if ((sub_20BB81C50(v138, v132) & 1) == 0 || *(&v138 + 1) != *(&v132 + 1) || *&v139 != *&v133 || *(&v139 + 1) != *(&v133 + 1) || *&v140 != *&v134)
    {
      sub_20BA93CB0(&v132);
      sub_20BA93CB0(&v138);

      sub_20BA94FC8(v89, type metadata accessor for LayoutListConfiguration);
      goto LABEL_127;
    }

    v125 = sub_20BB81C64(*(&v140 + 1), *(&v134 + 1));

    sub_20BA94FC8(v89, type metadata accessor for LayoutListConfiguration);
    if ((v125 & 1) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      goto LABEL_94;
    }

LABEL_74:
    v54 = v34;
    goto LABEL_75;
  }

  v35 = v131;
  sub_20BA93C4C(v131, v6);
  v36 = *v6;
  v37 = *(v6 + 1);
  v38 = *(v6 + 2);
  v39 = *(v6 + 3);
  v40 = *(v6 + 4);
  v41 = *(v6 + 88);
  v140 = *(v6 + 72);
  v141 = v41;
  v142 = *(v6 + 104);
  v143 = *(v6 + 15);
  v42 = *(v6 + 56);
  v138 = *(v6 + 40);
  v139 = v42;
  v43 = v129;
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v45 = *v43;
    v44 = *(v43 + 1);
    v46 = *(v43 + 2);
    v47 = *(v43 + 3);
    v48 = *(v43 + 4);
    v49 = *(v43 + 88);
    v134 = *(v43 + 72);
    v135 = v49;
    v136 = *(v43 + 104);
    v137 = *(v43 + 15);
    v50 = *(v43 + 56);
    v132 = *(v43 + 40);
    v133 = v50;
    if (v36 == v45)
    {
      v51 = v37 == v44;
      v52 = v35;
      if (v51 && v38 == v46 && (sub_20B51C88C(0, &qword_27C7654B0), (sub_20C13D5F4() & 1) != 0) && (sub_20C13D5F4() & 1) != 0)
      {
        if ((sub_20BB81C50(v138, v132) & 1) != 0 && *(&v138 + 1) == *(&v132 + 1) && *&v139 == *&v133 && *(&v139 + 1) == *(&v133 + 1) && *&v140 == *&v134)
        {
          v53 = sub_20BB81C64(*(&v140 + 1), *(&v134 + 1));

          if (v53)
          {
            if (*&v141 == *&v135 && *(&v141 + 1) == *(&v135 + 1))
            {
              sub_20BA93CB0(&v138);
              sub_20BA93CB0(&v132);
              v52 = v35;
              if (v142 == v136)
              {
                v54 = v35;
LABEL_75:
                sub_20BA94FC8(v54, type metadata accessor for LayoutSectionType);
                return 1;
              }
            }

            else
            {
              sub_20BA93CB0(&v132);
              sub_20BA93CB0(&v138);
              v52 = v35;
            }
          }

          else
          {
            sub_20BA93CB0(&v132);
            sub_20BA93CB0(&v138);
          }
        }

        else
        {
          sub_20BA93CB0(&v132);
          sub_20BA93CB0(&v138);
        }
      }

      else
      {
        sub_20BA93CB0(&v132);

        sub_20BA93CB0(&v138);
      }

      v124 = v52;
    }

    else
    {
      sub_20BA93CB0(&v132);

      sub_20BA93CB0(&v138);
      v124 = v35;
    }

    goto LABEL_128;
  }

  sub_20BA93CB0(&v138);

  v34 = v35;
LABEL_94:
  sub_20BA94F60(v34);
  return 0;
}

uint64_t sub_20BA94F60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BA94FC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BA95028()
{
  sub_20BA953D0(319, &qword_27C769B20);
  if (v0 <= 0x3F)
  {
    sub_20BA95124(319);
    if (v1 <= 0x3F)
    {
      sub_20BA95260();
      if (v2 <= 0x3F)
      {
        sub_20BA95290(319);
        if (v3 <= 0x3F)
        {
          sub_20BA953D0(319, &qword_27C769B50);
          if (v4 <= 0x3F)
          {
            sub_20BA95454(319);
            if (v5 <= 0x3F)
            {
              sub_20BA95578(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_20BA95124(uint64_t a1)
{
  if (!qword_27C769B30)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C769B38);
    sub_20B51C88C(255, &qword_27C769B28);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27C769B30);
    }
  }
}

ValueMetadata *sub_20BA95260()
{
  result = qword_27C769B40;
  if (!qword_27C769B40)
  {
    result = &type metadata for LayoutSectionOptions;
    atomic_store(&type metadata for LayoutSectionOptions, &qword_27C769B40);
  }

  return result;
}

void sub_20BA95290(uint64_t a1)
{
  if (!qword_27C769B48)
  {
    MEMORY[0x28223BE20](a1);
    sub_20B51C88C(255, &qword_27C769B28);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27C769B48);
    }
  }
}

void sub_20BA953D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_20B51C88C(255, &qword_27C769B28);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_20BA95454(uint64_t a1)
{
  if (!qword_27C769B58)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for LayoutListConfiguration();
    sub_20B51C88C(255, &qword_27C762070);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27C769B58);
    }
  }
}

void sub_20BA95578(uint64_t a1)
{
  if (!qword_27C769B60)
  {
    MEMORY[0x28223BE20](a1);
    sub_20B51C88C(255, &qword_27C769B28);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27C769B60);
    }
  }
}

uint64_t sub_20BA956C8()
{
  v1 = *(v0 + 40);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 40) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v27 = *(v0 + 40);

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_11:
    v13 = *(*(v27 + 56) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))) + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    swift_unknownObjectRetain();
    result = v15(ObjectType, v13);
    v16 = *(result + 16);
    v17 = v11[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_26;
    }

    v19 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v21 = v11[3] >> 1, v21 >= v18))
    {
      if (*(v19 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v22 = v17 + v16;
      }

      else
      {
        v22 = v17;
      }

      v11 = sub_20BC0746C(isUniquelyReferenced_nonNull_native, v22, 1, v11);
      v21 = v11[3] >> 1;
      if (*(v19 + 16))
      {
LABEL_20:
        v23 = v21 - v11[2];
        result = sub_20C132164();
        if (v23 < v16)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v24 = v11[2];
          v25 = __OFADD__(v24, v16);
          v26 = v24 + v16;
          if (v25)
          {
            goto LABEL_29;
          }

          v11[2] = v26;
        }

        goto LABEL_5;
      }
    }

    if (v16)
    {
      goto LABEL_27;
    }

LABEL_5:
    v7 &= v7 - 1;
    result = swift_unknownObjectRelease();
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v11;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_20BA958F0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_20C1321F4();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  (*(v15 + 16))(&v60 - v17, v4 + OBJC_IVAR____TtC9SeymourUI25MetricsPlatterNodeBuilder__reducedOverlayAnimations, v14, v16);
  sub_20C13A344();
  (*(v15 + 8))(v18, v14);
  if (v67)
  {
    a3 = 0.0;
  }

  sub_20C13B554();

  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();

  v21 = os_log_type_enabled(v19, v20);
  v64 = a2;
  if (v21)
  {
    v22 = v11;
    v23 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v66 = v60;
    *v23 = 136446722;
    sub_20B71A744();
    v24 = sub_20C13CF94();
    v65 = v10;
    v26 = sub_20B51E694(v24, v25, &v66);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v27 = sub_20C13CF94();
    v29 = sub_20B51E694(v27, v28, &v66);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2048;
    *(v23 + 24) = a3;
    _os_log_impl(&dword_20B517000, v19, v20, "Visible: %{public}s, Hidden: %{public}s, Duration: %f", v23, 0x20u);
    v30 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v30, -1, -1);
    MEMORY[0x20F2F6A40](v23, -1, -1);

    (*(v22 + 8))(v13, v65);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;

  v36 = 0;
  v65 = v4;
  while (v33)
  {
    v37 = v33;
LABEL_16:
    v33 = (v37 - 1) & v37;
    v40 = *(v4 + 40);
    if (*(v40 + 16))
    {
      result = sub_20B65AFF0(*(*(a1 + 48) + (__clz(__rbit64(v37)) | (v36 << 6))));
      if (v41)
      {
        v42 = *(*(v40 + 56) + 16 * result + 8);
        ObjectType = swift_getObjectType();
        v44 = *(v42 + 48);
        swift_unknownObjectRetain();
        v44(0, ObjectType, v42);
        v4 = v65;
        result = swift_unknownObjectRelease();
      }
    }
  }

  v38 = v64;
  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v39 >= v34)
    {
      break;
    }

    v37 = *(a1 + 56 + 8 * v39);
    ++v36;
    if (v37)
    {
      v36 = v39;
      goto LABEL_16;
    }
  }

  v45 = 1 << *(v38 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v38 + 56);
  v48 = (v45 + 63) >> 6;

  v49 = 0;
  while (v47)
  {
    v50 = v47;
LABEL_28:
    v47 = (v50 - 1) & v50;
    v52 = *(v4 + 40);
    if (*(v52 + 16))
    {
      result = sub_20B65AFF0(*(*(v38 + 48) + (__clz(__rbit64(v50)) | (v49 << 6))));
      if (v53)
      {
        v54 = *(*(v52 + 56) + 16 * result + 8);
        v55 = swift_getObjectType();
        v56 = *(v54 + 48);
        swift_unknownObjectRetain();
        v56(1, v55, v54);
        v4 = v65;
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v51 >= v48)
    {

      v58 = v61;
      v57 = v62;
      v59 = v63;
      (*(v62 + 104))(v61, *MEMORY[0x277CE9C68], v63);
      sub_20BEF08CC(v58, a3);
      return (*(v57 + 8))(v58, v59);
    }

    v50 = *(v38 + 56 + 8 * v51);
    ++v49;
    if (v50)
    {
      v49 = v51;
      goto LABEL_28;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_20BA95F00(int a1, char a2, int a3, double a4)
{
  v5 = v4;
  LODWORD(v102) = a3;
  LODWORD(v103) = a1;
  v8 = sub_20C132EE4();
  MEMORY[0x28223BE20](v8 - 8);
  v96[1] = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767610);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = v96 - v10;
  v11 = sub_20C1321F4();
  v100 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v96 - v18;
  v108 = sub_20C13BB84();
  v20 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v22 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v96 - v24;
  v107 = v11;
  v101 = v5;
  if ((a2 & 1) == 0)
  {
    sub_20C13B554();
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1F4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 67109120;
      *(v47 + 4) = v103 & 1;
      _os_log_impl(&dword_20B517000, v45, v46, "Set visible %{BOOL}d non animated", v47, 8u);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    (*(v20 + 8))(v22, v108);
    v108 = *(v5 + 48);
    v105 = *(v108 + 16);
    if (!v105)
    {
LABEL_24:
      v5 = v101;
      v55 = *(v101 + 32) + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
      swift_beginAccess();
      if (v103)
      {
        v56 = 1065353216;
      }

      else
      {
        v56 = 0;
      }

      v57 = v55 + *(type metadata accessor for ContainerNodeBuilder() + 32);
      v58 = *v57;
      *v57 = v56;
      v59 = *(v57 + 8);
      *(v57 + 8) = 0;
      sub_20B584060(v58, v59);
      goto LABEL_40;
    }

    v48 = 0;
    if (v103)
    {
      *&a4 = 1.0;
    }

    else
    {
      *&a4 = 0.0;
    }

    v37 = &v121;
    LODWORD(v104) = *MEMORY[0x277CE9C58];
    v5 = v100 + 104;
    v49 = (v100 + 8);
    v50 = (v108 + 40);
    while (v48 < *(v108 + 16))
    {
      v48 = (v48 + 1);
      v51 = *v50;
      ObjectType = swift_getObjectType();
      v53 = v106;
      (*v5)(v106, v104, v11);
      v54 = *(v51 + 64);
      swift_unknownObjectRetain();
      v54(v53, ObjectType, v51, *&a4, 0.0, 0.0);
      v11 = v107;
      swift_unknownObjectRelease();
      (*v49)(v53, v11);
      v50 += 2;
      if (v105 == v48)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  sub_20C13B554();
  v26 = sub_20C13BB74();
  v27 = sub_20C13D1F4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v13;
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v103 & 1;
    _os_log_impl(&dword_20B517000, v26, v27, "Set visible %{BOOL}d animated", v29, 8u);
    v30 = v29;
    v13 = v28;
    MEMORY[0x20F2F6A40](v30, -1, -1);
  }

  (*(v20 + 8))(v25, v108);
  (*(v17 + 16))(v19, v5 + OBJC_IVAR____TtC9SeymourUI25MetricsPlatterNodeBuilder__reducedOverlayAnimations, v16);
  sub_20C13A344();
  (*(v17 + 8))(v19, v16);
  v31 = 0.0;
  if (!v109)
  {
    v31 = a4;
  }

  v105 = *(v5 + 48);
  v32 = *(v105 + 2);
  v33 = v32 - 1;
  if (!v32)
  {
    v33 = 0;
  }

  v34 = v33 * 0.0833333333;
  v35 = v31 + v34;
  a4 = v31 / (v31 + v34);
  if ((v103 & 1) == 0)
  {
    v37 = v100;
    if (!v32)
    {
      goto LABEL_45;
    }

    v60 = 0;
    LODWORD(v104) = *MEMORY[0x277CE9C58];
    v102 = (v100 + 8);
    v61 = (v105 + 16 * v32 + 24);
    v103 = (v100 + 104);
    v99 = (v100 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v62 = v107;
    while (v32 <= *(v105 + 2))
    {
      --v32;
      v108 = v60 + 1;
      v63 = *v61;
      v64 = swift_getObjectType();
      v65 = *v103;
      v66 = v106;
      (*v103)(v106, v104, v62);
      v67 = *(v63 + 64);
      swift_unknownObjectRetain();
      v67(v66, v64, v63, 0.0, a4, v60 * 0.0833333333 / v35);
      (*v102)(v66, v62);
      swift_unknownObjectRelease();
      v61 -= 2;
      v60 = v108;
      if (!v32)
      {
        v5 = v101;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v96[0] = v13;
  if (!v32)
  {
LABEL_13:
    if (v102)
    {
      sub_20C1324F4();
      v43 = v116;
      v104 = v115;
      v44 = v117;
LABEL_36:
      sub_20C132504();
      v70 = v118;
      v71 = v119;
      v72 = v100;
      v73 = *(v100 + 104);
      v74 = v96[0];
      LODWORD(v108) = *MEMORY[0x277CE9C70];
      v75 = v107;
      v105 = v73;
      v73(v96[0]);
      v76 = *(v101 + 32) + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
      swift_beginAccess();
      if (a4 <= 0.0)
      {
        v87 = v76 + *(type metadata accessor for ContainerNodeBuilder() + 44);
        v88 = *v87;
        v89 = *(v87 + 8);
        v90 = *(v87 + 16);
        *v87 = v70;
        *(v87 + 16) = v71;
        v91 = *(v87 + 24);
        *(v87 + 24) = 0;
        sub_20B81DC6C(v88, v89, v90, v91);
        v77 = v106;
      }

      else
      {
        v113 = v118;
        v114 = v119;
        v109 = v104;
        v110 = v43;
        v111 = v44;
        v112 = (v102 & 1) == 0;
        v77 = v106;
        (*(v72 + 16))(v106, v74, v75);
        sub_20C132ED4();
        sub_20B593314();
        v78 = v97;
        sub_20C132474();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB0);
        v79 = v98;
        v80 = (*(v98 + 80) + 32) & ~*(v98 + 80);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_20C14F980;
        (*(v79 + 32))(v81 + v80, v78, v99);
        v82 = v76 + *(type metadata accessor for ContainerNodeBuilder() + 44);
        v83 = *v82;
        v84 = *(v82 + 8);
        v85 = *(v82 + 16);
        *(v82 + 8) = 0;
        *(v82 + 16) = 0;
        *v82 = v81;
        v86 = *(v82 + 24);
        *(v82 + 24) = 1;
        sub_20B81DC6C(v83, v84, v85, v86);
      }

      swift_endAccess();
      v92 = *(v72 + 8);
      v92(v74, v75);
      (v105)(v77, v108, v75);
      v5 = v101;
      sub_20BA97C0C(v77, 1.0, a4);
      v92(v77, v75);
      goto LABEL_40;
    }

LABEL_35:
    v104 = 0;
    v43 = 0;
    v44 = 0;
    goto LABEL_36;
  }

  v36 = 0;
  LODWORD(v108) = *MEMORY[0x277CE9C58];
  v104 = (v100 + 104);
  v37 = &v120;
  v103 = (v100 + 8);
  v38 = (v105 + 40);
  v39 = v106;
  while (v36 < *(v105 + 2))
  {
    v40 = *v38;
    v41 = swift_getObjectType();
    v5 = v107;
    (*v104)(v39, v108, v107);
    v42 = *(v40 + 64);
    swift_unknownObjectRetain();
    v42(v39, v41, v40, 1.0, a4, v36 * 0.0833333333 / v35);
    (*v103)(v39, v5);
    swift_unknownObjectRelease();
    v38 += 2;
    if (v32 == ++v36)
    {
      goto LABEL_13;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v65 = v37[13];
LABEL_33:
  v68 = v106;
  v69 = v107;
  (v65)(v106, *MEMORY[0x277CE9C70], v107);
  sub_20BA97C0C(v68, 0.0, a4);
  (*(v100 + 8))(v68, v69);
LABEL_40:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v94 = *(v5 + 24);
    v95 = swift_getObjectType();
    (*(v94 + 8))(v95, v94);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_20BA96B9C(char *a1)
{
  v2 = v1;
  v102 = *v1;
  v4 = sub_20C1321F4();
  v116 = *(v4 - 8);
  v117 = v4;
  MEMORY[0x28223BE20](v4);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C132EE4();
  v118 = *(v6 - 8);
  v119 = v6;
  MEMORY[0x28223BE20](v6);
  v113 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v123 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v102 - v8;
  v109 = sub_20C132254();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  *&v124 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v114);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_20C13BB84();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v122 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766448);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v13 = sub_20C13A814();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v17 = *(v14 + 104);
  (v17)(v16, *MEMORY[0x277D4EF50], v13);
  LOBYTE(v125) = 1;
  sub_20C13A384();
  v125 = &unk_282287E60;
  sub_20B8D936C(byte_282287E88);
  v18 = v125;
  v19 = *MEMORY[0x277D4EEF8];
  v112 = v13;
  v110 = v14 + 104;
  (v17)(v16, v19, v13);
  if (qword_27C760B10 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v125 = qword_27C79C100;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E50);
    sub_20B7825DC();
    sub_20B7826BC();
    v111 = v16;
    v20 = sub_20C13A384();
    *(v2 + 5) = a1;
    MEMORY[0x28223BE20](v20);
    v103 = v21;
    *(&v102 - 2) = v21;
    *(&v102 - 1) = a1;

    v22 = sub_20B613EA0(sub_20BA98130, (&v102 - 4), v18);

    *(v2 + 6) = v22;
    v23 = v122;
    sub_20C13B534();

    v24 = sub_20C13BB74();
    v25 = sub_20C13D1F4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v102 = v17;
      v27 = v125;
      *v26 = 136446210;
      v28 = *(v2 + 6);

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769B80);
      v30 = MEMORY[0x20F2F43F0](v28, v29);
      v32 = v31;

      v33 = sub_20B51E694(v30, v32, &v125);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_20B517000, v24, v25, "Metrics Platter Node Builders: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v34 = v27;
      v17 = v102;
      MEMORY[0x20F2F6A40](v34, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);

      (*(v106 + 8))(v122, v107);
    }

    else
    {

      (*(v106 + 8))(v23, v107);
    }

    v35 = v124;
    v37 = v118;
    v36 = v119;
    v38 = v112;
    v39 = qword_27C760750;
    v119 = *(v2 + 6);

    if (v39 != -1)
    {
      swift_once();
    }

    type metadata accessor for StackedContainerNodeBuilder();
    v40 = swift_allocObject();
    *(v40 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_parent + 8) = 0;
    v41 = qword_27C79A328;
    v42 = *&dword_27C79A330;
    swift_unknownObjectWeakInit();
    (v17)(v111, *MEMORY[0x277D4EF38], v38);
    LOBYTE(v125) = 0;
    sub_20C13A384();
    sub_20C132454();
    v43 = v108;
    v44 = v109;
    (*(v108 + 104))(v35, *MEMORY[0x277CE9CC0], v109);
    v11[1] = 0;
    v45 = v113;
    sub_20C132ED4();
    v46 = v120;
    sub_20C132104();
    v37[1](v45, v36);
    v47 = v114;
    v48 = v121;
    sub_20C131F24();
    v49 = *(v123 + 8);
    v123 += 8;
    v118 = v49;
    (v49)(v46, v48);
    *v11 = 1;
    v50 = sub_20C131F44();
    v51 = &v11[v47[7]];
    *v51 = v50;
    v51[8] = v52;
    v53 = sub_20C131FD4();
    v54 = &v11[v47[8]];
    *v54 = v53;
    v54[8] = v55;
    v56 = sub_20C131FE4();
    v57 = &v11[v47[9]];
    *v57 = v56;
    *(v57 + 1) = v58;
    v57[20] = v59;
    *(v57 + 4) = v60;
    v57[21] = v61;
    v62 = sub_20C132384();
    v63 = &v11[v47[10]];
    *v63 = v62 & 0xFFFFFFFFFFLL;
    v63[12] = v64;
    *(v63 + 2) = v65;
    v63[13] = 0;
    v66 = sub_20C132004();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    (*(v43 + 8))(v124, v44);
    v73 = &v11[v47[11]];
    *v73 = v66;
    *(v73 + 1) = v68;
    *(v73 + 2) = v70;
    v73[24] = v72;
    sub_20B7F53C0(v11, v40 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder);
    *(v40 + 16) = xmmword_20C169FB0;
    *(v40 + 32) = v41;
    *(v40 + 40) = v42;
    v114 = v40;
    *(v40 + 48) = 1095761920;
    v74 = v119;
    v75 = *(v119 + 16);
    v122 = v2;
    if (v75)
    {
      v125 = MEMORY[0x277D84F90];
      sub_20BB5D9CC(0, v75, 0);
      v76 = 32;
      v17 = v125;
      do
      {
        v124 = *(v74 + v76);
        ObjectType = swift_getObjectType();
        v78 = *(&v124 + 1);
        v79 = *(*(&v124 + 1) + 88);
        swift_unknownObjectRetain();
        v80 = v120;
        v79(ObjectType, v78);
        v81 = v121;
        v82 = sub_20C131FE4();
        v84 = v83;
        v86 = v85;
        v87 = sub_20C131FB4();
        v11 = v88;
        (v118)(v80, v81);
        v125 = v17;
        v90 = *(v17 + 2);
        v89 = *(v17 + 3);
        if (v90 >= v89 >> 1)
        {
          sub_20BB5D9CC((v89 > 1), v90 + 1, 1);
          v17 = v125;
        }

        *(v17 + 2) = v90 + 1;
        v91 = &v17[56 * v90];
        *(v91 + 2) = v124;
        *(v91 + 6) = v82;
        *(v91 + 7) = v84;
        v91[68] = BYTE4(v86);
        *(v91 + 16) = v86;
        v91[69] = BYTE5(v86);
        *(v91 + 9) = v87;
        v91[84] = BYTE4(v11);
        *(v91 + 20) = v11;
        v91[85] = BYTE5(v11);
        v76 += 16;
        --v75;
        v74 = v119;
      }

      while (v75);

      v2 = v122;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v18 = v114;
    *(v114 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders) = v17;
    v93 = v116;
    v92 = v117;
    v16 = v115;
    (*(v116 + 104))(v115, *MEMORY[0x277CE9C68], v117);
    sub_20BEF08CC(v16, 0.0);
    (*(v93 + 8))(v16, v92);
    *(v2 + 4) = v18;
    v94 = *(v2 + 6);
    v95 = *(v94 + 16);

    if (!v95)
    {
      break;
    }

    a1 = 0;
    v2 = (v94 + 40);
    while (a1 < *(v94 + 16))
    {
      ++a1;
      v18 = *(v2 - 1);
      v16 = *v2;
      v11 = swift_getObjectType();
      v17 = v16 + 24;
      v96 = *(v16 + 3);
      swift_unknownObjectRetain();

      v96(v97, &off_2822C7F58, v11, v16);
      swift_unknownObjectRelease();
      v2 += 16;
      if (v95 == a1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_18:

  v98 = v122;
  v99 = *(v122 + 4);
  v100 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  *(v99 + v100) = 0;
  (*(v104 + 8))(v103, v105);
  return v98;
}

unint64_t sub_20BA979A4@<X0>(char *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = *a1;
  result = sub_20BCC36A8();
  if (result == 15 || (v7 = result, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766448), sub_20C13A344(), v8 = sub_20B8895C4(v7, v12), result = , !v8))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v9 = 0uLL;
    if (*(a2 + 16) && (result = sub_20B65AFF0(v3), v9 = 0uLL, (v10 & 1) != 0))
    {
      v11 = *(*(a2 + 56) + 16 * result);
      result = swift_unknownObjectRetain();
      *a3 = v11;
    }

    else
    {
      *a3 = v9;
    }
  }

  return result;
}

uint64_t sub_20BA97C0C(uint64_t a1, float a2, double a3)
{
  v7 = sub_20C132EE4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_20C1321F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - v14;
  v16 = *(v3 + 32) + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  if (a3 <= 0.0)
  {
    v18 = 0;
    v20 = LODWORD(a2);
  }

  else
  {
    v27 = a2;
    v25[3] = 0;
    v17 = a1;
    v18 = 1;
    v26 = 1;
    (*(v9 + 16))(v11, v17, v8);
    sub_20C132ED4();
    sub_20C132474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
    v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20C14F980;
    (*(v13 + 32))(v20 + v19, v15, v12);
  }

  v21 = v16 + *(type metadata accessor for ContainerNodeBuilder() + 32);
  v22 = *v21;
  *v21 = v20;
  v23 = *(v21 + 8);
  *(v21 + 8) = v18;
  sub_20B584060(v22, v23);
  return swift_endAccess();
}

uint64_t sub_20BA97EC8()
{
  sub_20B583E6C(v0 + 16);

  v1 = OBJC_IVAR____TtC9SeymourUI25MetricsPlatterNodeBuilder__reducedOverlayAnimations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MetricsPlatterNodeBuilder()
{
  result = qword_27C769B70;
  if (!qword_27C769B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BA97FE4()
{
  sub_20B52432C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BA9809C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_20BA9814C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &qword_27C769000;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B5E5C28();
    v10 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v7 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v7, v10);
        }

        else
        {
          if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v10 + 8 * v7 + 32);
        }

        v13 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v12);

        ++v7;
        if (v13 == i)
        {
          v14 = v24[0];
          v7 = 0x27C769000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v14;
    sub_20B6FFB30(v24, *&v3[*(v7 + 2952)]);

    v15 = sub_20B8E9218(v28);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v7;
      v18 = v15 + 32;
      do
      {
        sub_20B51CC64(v18, v24);
        v19 = *&v3[v6];
        v20 = v25;
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v21 + 16))(v19, a2 & 1, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v18 += 40;
        --v16;
      }

      while (v16);

      v5 = a1;
      v7 = v17;
    }

    else
    {

      v5 = a1;
    }
  }

  return [*&v3[*(v7 + 2952)] setControlState:v5 animated:a2 & 1];
}

id sub_20BA983C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &qword_27C769000;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B5E5C28();
    v10 = sub_20C13CC74();

    v23[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v26, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = v23[0];
          v7 = &qword_27C769000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v27 = v14;
    sub_20B6FFB30(v23, *&v3[v7[369]]);

    v15 = sub_20B8E9218(v27);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, v23);
        v18 = *&v3[v6];
        v19 = v24;
        v20 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v20 + 24))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  return [*&v3[v7[369]] setControlState:v5 withAnimationCoordinator:a2];
}

void *sub_20BA98624()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView);
  v2 = v1;
  return v1;
}

void sub_20BA98654()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView];
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v5 = dbl_20C167360[v2 == 2];
  if (v2 == 2)
  {
    v6 = 16;
  }

  else
  {
    v6 = 11;
  }

  v7 = [v4 initWithWhite:0.0 alpha:v5];
  [v3 setBackgroundColor:v7 forState:4];

  v9 = [objc_opt_self() effectWithStyle_];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    [v8 setEffect_];
  }
}

char *sub_20BA98910(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_20C13C0B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44[-1] - v15;
  if (_UISolariumEnabled())
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_20C13C084();
    sub_20C13C094();
    v18 = *(v11 + 8);
    v18(v13, v10);
    (*(v11 + 16))(v13, v16, v10);
    v44[3] = sub_20C13C0D4();
    v44[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v44);
    sub_20C13C0E4();
    sub_20C13D564();
    v18(v16, v10);
  }

  else
  {
    v19 = [objc_opt_self() effectWithStyle_];
    v17 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  }

  *&v5[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView] = v17;
  v20 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v21 = OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  *&v5[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] = v20;
  v22 = qword_27C760820;
  v23 = v20;
  if (v22 != -1)
  {
    swift_once();
  }

  [v23 setCornerRadius_];

  [*&v5[v21] setContinuousCornerEnabled_];
  [*&v5[v21] setRoundContentWhenDeselected_];
  [*&v5[v21] setFocusedSizeIncrease_];
  [*&v5[v21] setContentMotionRotation:0.0 translation:{0.0523598776, 0.0, 4.0}];
  v24 = *&v5[v21];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 configurationWithStyle_];
  [v26 setFocusAnimationConfiguration_];

  v28 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  v29 = *&v5[v21];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor:v32 forState:0];

  v33 = *&v5[v21];
  v34 = v28;
  [v33 setBackgroundColor:v34 forState:1];
  v35 = *&v5[v21];
  [v35 setBackgroundColor:v34 forState:8];

  v36 = *&v5[v21];
  v37 = [v30 clearColor];
  [v36 setBackgroundColor:v37 forState:2];

  result = [*&v5[v21] visualEffectContainerView];
  if (result)
  {
    v39 = result;
    [result addSubview_];

    v40 = type metadata accessor for TVFloatingContentCell();
    v45.receiver = v5;
    v45.super_class = v40;
    v41 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
    v42 = [v41 contentView];
    [v42 addSubview_];

    sub_20BA98654();
    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20BA98E90()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for TVFloatingContentCell();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame_];
  v11 = [v1 visualEffectContainerView];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = *&v0[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView];
    sub_20C13D4E4();
    [v21 setCenter_];
    v27.origin.x = v14;
    v27.origin.y = v16;
    v27.size.width = v18;
    v27.size.height = v20;
    Width = CGRectGetWidth(v27);
    v28.origin.x = v14;
    v28.origin.y = v16;
    v28.size.width = v18;
    v28.size.height = v20;
    [v21 setBounds_];
    v23 = [v1 contentView];
    if (v23)
    {
      v24 = v23;
      [v1 cornerRadius];
      [v24 smu_setCornerRadius_];

      [v1 cornerRadius];
      [v21 smu_setCornerRadius_];
      v25 = [v0 layer];
      [v1 cornerRadius];
      [v25 setCornerRadius_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BA990F8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TVFloatingContentCell();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4)
  {
    if (a1)
    {
      v5 = [a1 userInterfaceStyle];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (!a1 || v5 != v7)
    {
      sub_20BA98654();
    }
  }
}

void sub_20BA99240()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView);
}

id sub_20BA99280()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFloatingContentCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20BA99324(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v8] = v9;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_styleProvider];
  sub_20BABA8E0(v38);
  v11 = v38[1];
  v12 = v38[2];
  *v10 = v38[0];
  v10[1] = v11;
  v13 = v38[3];
  v10[2] = v12;
  v10[3] = v13;
  *&v4[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_backgroundView] = 0;
  v14 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelBottomConstraint;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v15 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelZeroHeightConstraint;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  a1 &= 1u;
  v4[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_displayStyle] = a1;
  v4[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_platform] = a3;
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state];
  v16[48] = *(a2 + 48);
  v17 = *(a2 + 32);
  *(v16 + 1) = *(a2 + 16);
  *(v16 + 2) = v17;
  *v16 = *a2;
  v35 = 0u;
  v36 = 0u;
  v37 = 3;
  type metadata accessor for PageActionButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_20BA9AC1C(a2, v34);
  v19 = [ObjCClassFromMetadata buttonWithType_];
  v20 = &v19[OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState];
  v21 = *&v19[OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState];
  v22 = *&v19[OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8];
  v23 = *&v19[OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16];
  v24 = *&v19[OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24];
  v25 = v19[OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32];
  v20[32] = v37;
  v26 = v36;
  *v20 = v35;
  *(v20 + 1) = v26;
  sub_20B9AB210(v21, v22, v23, v24, v25);
  v19[OBJC_IVAR____TtC9SeymourUI16PageActionButton_style] = a1;
  v27 = v19;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_20B9AAA28(a1);
  sub_20B9A9DC0(&v35);

  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton] = v27;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for PageActionMagicPocketView();
  v28 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v29 = *&v28[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton];
  v30 = *MEMORY[0x277D76808];
  v31 = v28;
  [v29 setMaximumContentSizeCategory_];
  sub_20BA9A190();
  sub_20BA99C20(a2);
  sub_20BA9AC78(a2);

  return v31;
}

uint64_t sub_20BA995D4(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state + 16];
  v31 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state];
  v32 = v3;
  v33 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state + 32];
  v34 = v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state + 48];
  result = sub_20BCF53D4(&v31, a1);
  if ((result & 1) == 0)
  {
    if (*(a1 + 48) == 2)
    {
      if (v34 == 2)
      {
        goto LABEL_10;
      }

      if (v34 == 5)
      {
        v5 = vorrq_s8(v32, v33);
        if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(&v31 + 1) | v31))
        {
          goto LABEL_10;
        }
      }
    }

    else if (v34 != 2)
    {
LABEL_10:
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      v17 = *(a1 + 16);
      *(v16 + 24) = *a1;
      *(v16 + 40) = v17;
      *(v16 + 56) = *(a1 + 32);
      *(v16 + 72) = *(a1 + 48);
      v18 = v1;
      sub_20BA9AC1C(a1, &aBlock);
      goto LABEL_11;
    }

    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = *(a1 + 16);
    *(v6 + 24) = *a1;
    *(v6 + 40) = v7;
    *(v6 + 56) = *(a1 + 32);
    *(v6 + 72) = *(a1 + 48);
    v8 = v1;
    sub_20BA9AC1C(a1, &aBlock);
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      v11 = swift_allocObject();
      v11[2] = sub_20BA9B1A4;
      v11[3] = v6;
      v11[4] = v10;

      v12 = v10;
      [v12 layoutIfNeeded];
      v13 = objc_opt_self();
      v29 = sub_20BA9B1B0;
      v30 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_20B7B548C;
      v28 = &block_descriptor_73;
      v14 = _Block_copy(&aBlock);

      v29 = nullsub_1;
      v30 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_20B5E3874;
      v28 = &block_descriptor_25;
      v15 = _Block_copy(&aBlock);
      [v13 _animateUsingDefaultTimingWithOptions_animations_completion_];

      _Block_release(v15);
      _Block_release(v14);
    }

LABEL_11:
    sub_20BA99C20(a1);
    v19 = *a1;
    v20 = *(a1 + 8);
    v21 = *(a1 + 48);
    v22 = 1 << v21;
    if (v21 != 2)
    {
      v19 = 0;
      v20 = 0;
    }

    if ((v22 & 0x1B) != 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = v19;
    }

    if ((v22 & 0x1B) != 0)
    {
      v24 = 0;
    }

    else
    {
      v24 = v20;
    }

    sub_20BA9A934(v23, v24);
  }

  return result;
}

void sub_20BA99904(uint64_t a1, uint64_t a2)
{
  sub_20BA99C20(a2);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 48);
  v6 = 1 << v5;
  if (v5 != 2)
  {
    v3 = 0;
    v4 = 0;
  }

  if ((v6 & 0x1B) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  if ((v6 & 0x1B) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  sub_20BA9A934(v7, v8);
}

void sub_20BA99960(char a1)
{
  v2 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_backgroundView;
  if (*&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_backgroundView] || (a1 & 1) != 0)
  {
    v21 = a1 & 1;
    v22 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_backgroundView];

    [v22 setHidden_];
  }

  else
  {
    v3 = v1;
    v4 = sub_20BA9ACCC();
    v5 = *&v1[v2];
    *&v3[v2] = v4;
    v6 = v4;

    [v3 insertSubview:v6 atIndex:0];
    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14FE90;
    v9 = [v6 leadingAnchor];
    v10 = [v3 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v11;
    v12 = [v6 trailingAnchor];
    v13 = [v3 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v8 + 40) = v14;
    v15 = [v6 topAnchor];
    v16 = [v3 topAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v8 + 48) = v17;
    v18 = [v6 bottomAnchor];
    v19 = [v3 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v8 + 56) = v20;
    sub_20B5E29D0();
    v23 = sub_20C13CC54();

    [v7 activateConstraints_];
  }
}

uint64_t sub_20BA99C20(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state];
  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state + 8];
  v6 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state + 16];
  v7 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_state + 24];
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  *v3 = *a1;
  *(v3 + 1) = v8;
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v12 = *(a1 + 8);
  *(v3 + 2) = v9;
  v13 = v3[48];
  v3[48] = *(a1 + 48);
  sub_20B8A9304(v4, v5, v6, v7, v10, v11, v13);
  v14 = a1;
  v15 = *a1;
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = *(v14 + 48);
  if (v18 > 2)
  {
    if (v18 - 3 < 2)
    {
      sub_20BA9AC1C(v14, &v80);

      [v1 setHidden_];
      v35 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton];
      *&v36 = v15;
      *(&v36 + 1) = v12;
      *&v37 = v17;
      *(&v37 + 1) = v16;
      v80 = v36;
      v81 = v37;
      v82 = 2;
      v22 = v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState;
      v23 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState);
      v24 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8);
      v25 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16);
      v26 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24);
      v27 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32);
      if (v27 == 2)
      {
        if (v24)
        {
          if (!v12)
          {
            goto LABEL_56;
          }

          if (v23 != v15 || v24 != v12)
          {
            v38 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState);
            v39 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8);
            v40 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16);
            v41 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24);
            v42 = *(v35 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32);
            v43 = sub_20C13DFF4();
            LOBYTE(v27) = v42;
            v26 = v41;
            v25 = v40;
            v24 = v39;
            v44 = v43;
            v23 = v38;
            if ((v44 & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        else if (v12)
        {
          goto LABEL_56;
        }

        if (v26)
        {
          if (v16)
          {
            if (v25 == v17 && v26 == v16)
            {
              goto LABEL_57;
            }

            v73 = v23;
            v74 = v24;
            v75 = v25;
            v76 = v26;
            v77 = v27;
            v78 = sub_20C13DFF4();
            LOBYTE(v27) = v77;
            v26 = v76;
            v25 = v75;
            v24 = v74;
            v79 = v78;
            v23 = v73;
            if (v79)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_56;
        }

        goto LABEL_55;
      }

LABEL_56:
      *v22 = v80;
      *(v22 + 16) = v81;
      *(v22 + 32) = v82;
      sub_20B9AB210(v23, v24, v25, v26, v27);

      sub_20B9A9DC0(&v80);
LABEL_57:
    }

    if (v17 | v12 | v15 | v16 | *(v14 + 32) | *(v14 + 40))
    {
      [v1 setHidden_];
      v59 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton];
      v80 = 1uLL;
      v81 = 0uLL;
      v82 = 3;
      v60 = v59 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState;
      result = *(v59 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState);
      v61 = *(v59 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8);
      v62 = *(v59 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16);
      v63 = *(v59 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24);
      v64 = *(v59 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32);
      if (v64 >= 3 && v62 | v61 | result | v63)
      {
        return result;
      }
    }

    else
    {
      [v1 setHidden_];
      v65 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton];
      v80 = 0u;
      v81 = 0u;
      v82 = 3;
      v60 = v65 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState;
      result = *(v65 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState);
      v61 = *(v65 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8);
      v62 = *(v65 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16);
      v63 = *(v65 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24);
      v64 = *(v65 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32);
      if (v64 >= 3 && !(v62 | v61 | result | v63))
      {
        return result;
      }
    }

    *v60 = v80;
    *(v60 + 16) = v81;
    *(v60 + 32) = v82;
    sub_20B9AB210(result, v61, v62, v63, v64);
    return sub_20B9A9DC0(&v80);
  }

  if (*(v14 + 48))
  {
    if (v18 == 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    if (v18 == 1)
    {
      v20 = v17;
    }

    else
    {
      v12 = v16;
      v20 = *(v14 + 32);
    }

    if (v18 != 1)
    {
      v16 = *(v14 + 40);
    }

    sub_20BA9AC1C(v14, &v80);

    [v1 setHidden_];
    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton];
    *&v80 = v19;
    *(&v80 + 1) = v12;
    *&v81 = v20;
    *(&v81 + 1) = v16;
    v82 = 1;
    v22 = v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState;
    v23 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState);
    v24 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8);
    v25 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16);
    v26 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24);
    LOBYTE(v27) = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32);
    if (v27 > 1u || !*(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32))
    {
      goto LABEL_56;
    }

    if (v24)
    {
      if (!v12)
      {
        goto LABEL_56;
      }

      if (v23 != v19 || v24 != v12)
      {
        v28 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState);
        v29 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8);
        v30 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16);
        v31 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24);
        v32 = *(v21 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32);
        v33 = sub_20C13DFF4();
        LOBYTE(v27) = v32;
        v26 = v31;
        v25 = v30;
        v24 = v29;
        v34 = v33;
        v23 = v28;
        if ((v34 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_42;
    }

    if (!v12)
    {
LABEL_42:
      if (v26)
      {
        if (v16)
        {
          if (v25 == v20 && v26 == v16)
          {
            goto LABEL_57;
          }

          v66 = v23;
          v67 = v24;
          v68 = v25;
          v69 = v26;
          v70 = v27;
          v71 = sub_20C13DFF4();
          LOBYTE(v27) = v70;
          v26 = v69;
          v25 = v68;
          v24 = v67;
          v72 = v71;
          v23 = v66;
          if (v72)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_56;
      }

LABEL_55:
      if (!v16)
      {
      }

      goto LABEL_56;
    }

    goto LABEL_56;
  }

  [v1 setHidden_];
  v45 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton];
  *&v80 = v15;
  *(&v80 + 1) = v12;
  v81 = 0uLL;
  v82 = 0;
  v46 = v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState;
  result = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState);
  v48 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8);
  v49 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16);
  v50 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24);
  v51 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32);
  if ((v51 - 1) < 2 || *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32) || (result != v15 || v48 != v12) && (v52 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState), v53 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 8), v54 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 16), v55 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 24), v56 = *(v45 + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState + 32), v57 = sub_20C13DFF4(), LOBYTE(v51) = v56, v50 = v55, v49 = v54, v48 = v53, v58 = v57, result = v52, (v58 & 1) == 0))
  {
    *v46 = v80;
    *(v46 + 16) = v81;
    *(v46 + 32) = v82;
    sub_20B9AB210(result, v48, v49, v50, v51);

    return sub_20B9A9DC0(&v80);
  }

  return result;
}

void sub_20BA9A190()
{
  v1 = v0;
  v67 = *&v0[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton];
  [v0 addSubview_];
  v2 = &v0[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_styleProvider];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_styleProvider + 40];
  v66 = *&v0[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabel];
  v4 = [v0 traitCollection];
  v5 = v4;
  if (v3 < 0)
  {
    v6 = sub_20B992B08();
  }

  else
  {
    v6 = sub_20B7C6A74(v4);
  }

  v7 = v6;

  [v66 setFont_];
  [v66 setLineBreakMode_];
  [v66 setNumberOfLines_];
  [v66 setTextAlignment_];
  [v66 setTextColor_];
  [v1 addSubview_];
  sub_20BABA988(v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_displayStyle], v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_platform]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v1 addLayoutGuide_];
  v17 = [v66 bottomAnchor];
  v18 = [v67 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  v64 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelBottomConstraint;
  v20 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelBottomConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelBottomConstraint] = v19;

  v21 = [v66 heightAnchor];
  v22 = [v21 constraintEqualToConstant_];

  v23 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelZeroHeightConstraint;
  v24 = *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelZeroHeightConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelZeroHeightConstraint] = v22;

  v65 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C152A00;
  v26 = [v16 leadingAnchor];
  v27 = [v1 safeAreaLayoutGuide];
  v28 = [v27 leadingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:v11];
  *(v25 + 32) = v29;
  v30 = [v16 trailingAnchor];
  v31 = [v1 safeAreaLayoutGuide];
  v32 = [v31 trailingAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:-v15];
  *(v25 + 40) = v33;
  v34 = [v16 topAnchor];
  v35 = [v1 safeAreaLayoutGuide];
  v36 = [v35 topAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:v9];
  *(v25 + 48) = v37;
  v38 = [v16 bottomAnchor];
  v39 = [v1 safeAreaLayoutGuide];
  v40 = [v39 bottomAnchor];

  v41 = [v38 constraintEqualToAnchor:v40 constant:-v13];
  *(v25 + 56) = v41;
  v42 = [v66 leadingAnchor];
  v43 = [v16 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v25 + 64) = v44;
  v45 = [v66 trailingAnchor];
  v46 = [v16 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v25 + 72) = v47;
  v48 = [v66 topAnchor];
  v49 = [v16 topAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  v51 = *&v1[v64];
  *(v25 + 80) = v50;
  *(v25 + 88) = v51;
  v52 = *&v1[v23];
  *(v25 + 96) = v52;
  v53 = v51;
  v54 = v52;
  v55 = [v67 leadingAnchor];
  v56 = [v16 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v25 + 104) = v57;
  v58 = [v67 trailingAnchor];
  v59 = [v16 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v25 + 112) = v60;
  v61 = [v67 bottomAnchor];
  v62 = [v16 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v25 + 120) = v63;
  sub_20B5E29D0();
  v68 = sub_20C13CC54();

  [v65 activateConstraints_];
}

void sub_20BA9A934(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabel);
  if (a2)
  {
    v5 = [*(v2 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabel) text];
    if (v5)
    {

      v15 = sub_20C13C914();
      [v4 setText_];

      return;
    }

    [v4 setAlpha_];
    v6 = sub_20C13C914();
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabel) setAlpha_];
    v6 = 0;
  }

  [v4 setText_];

  v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelBottomConstraint);
  if (a2)
  {
    v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_displayStyle);
    v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_platform);
    v10 = v7;
    sub_20BABA988(v8, v9);
    v12 = -v11;
  }

  else
  {
    v13 = v7;
    v12 = 0.0;
  }

  [v7 setConstant_];

  v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelZeroHeightConstraint);

  [v14 setActive_];
}

id sub_20BA9AB04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageActionMagicPocketView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BA9ACCC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 contentView];
  if (qword_27C760B68 != -1)
  {
    swift_once();
  }

  [v5 setBackgroundColor_];

  [v0 addSubview_];
  [v0 addSubview_];
  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C151DF0;
  v7 = [v4 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v4 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v4 topAnchor];
  v14 = [v0 &selRef_setLineBreakMode_];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v4 heightAnchor];
  sub_20C1387F4();
  v17 = [v16 constraintEqualToConstant_];

  *(v6 + 56) = v17;
  v18 = [v3 leadingAnchor];
  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v6 + 64) = v20;
  v21 = [v3 trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v6 + 72) = v23;
  v24 = [v3 topAnchor];
  v25 = [v4 bottomAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v6 + 80) = v26;
  v27 = [v3 bottomAnchor];

  v28 = [v0 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v6 + 88) = v29;
  sub_20B5E29D0();
  v30 = sub_20C13CC54();

  [v32 activateConstraints_];

  return v0;
}

id sub_20BA9B1B0()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();

  return [v1 layoutIfNeeded];
}

uint64_t objectdestroyTm_5()
{
  sub_20B8A9304(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

void sub_20BA9B248()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_styleProvider);
  sub_20BABA8E0(v8);
  v4 = v8[1];
  *v3 = v8[0];
  v3[1] = v4;
  v5 = v8[3];
  v3[2] = v8[2];
  v3[3] = v5;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_backgroundView) = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelBottomConstraint;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v7 = OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_captionLabelZeroHeightConstraint;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BA9B358(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_20BA9B3A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BA9B3F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v20 = v0;
  v4 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider) + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = 32;
    while (v7 < *(v4 + 16))
    {
      v9 = *(v4 + v8);
      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = result;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 16);
        swift_unknownObjectRetain();
        v14 = v13(ObjectType, v11);
        if ((v15 & 1) == 0)
        {
          v16 = v14;

          MEMORY[0x20F2EA980](v16, v7);
          swift_unknownObjectRelease();
          v17 = sub_20C133244();
          (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
          v18 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_lastFocusedIndexPath;
          v19 = v20;
          swift_beginAccess();
          sub_20B59784C(v3, v19 + v18);
          return swift_endAccess();
        }

        result = swift_unknownObjectRelease();
      }

      ++v7;
      v8 += 16;
      if (v5 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
  }

  return result;
}

void sub_20BA9B62C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v21 = v0;
  v4 = sub_20C060B2C();
  v5 = *&v4[OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v5 + v8);
      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = v10;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 16);
        swift_unknownObjectRetain();
        v15 = v14(ObjectType, v12);
        if ((v16 & 1) == 0)
        {
          v17 = v15;

          MEMORY[0x20F2EA980](v17, v7);
          swift_unknownObjectRelease();
          v18 = sub_20C133244();
          (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
          v19 = OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_lastFocusedIndexPath;
          v20 = v21;
          swift_beginAccess();
          sub_20B59784C(v3, v20 + v19);
          swift_endAccess();
          return;
        }

        swift_unknownObjectRelease();
      }

      ++v7;
      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

uint64_t sub_20BA9B86C(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(char *, uint64_t), uint64_t a4, int a5)
{
  LODWORD(v357) = a5;
  v356 = a4;
  v358 = a3;
  v359 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v320 - v7;
  v326 = type metadata accessor for CatalogTipPlayerConfiguration();
  MEMORY[0x28223BE20](v326);
  v327 = (&v320 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325 = type metadata accessor for CatalogTipPlaybackContent();
  MEMORY[0x28223BE20](v325);
  v330 = (&v320 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v11 - 8);
  v332 = &v320 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v320 - v14;
  v334 = sub_20C132C14();
  v333 = *(v334 - 8);
  MEMORY[0x28223BE20](v334);
  v328 = &v320 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v329 = &v320 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v320 - v20);
  v355 = sub_20C134EC4();
  v362 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v337 = &v320 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v340 = &v320 - v24;
  MEMORY[0x28223BE20](v25);
  v353 = &v320 - v26;
  v364 = sub_20C135914();
  v363 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v336 = &v320 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v348 = &v320 - v29;
  MEMORY[0x28223BE20](v30);
  v352 = &v320 - v31;
  MEMORY[0x28223BE20](v32);
  v344 = &v320 - v33;
  v366 = sub_20C135524();
  v354 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v335 = &v320 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v339 = &v320 - v36;
  MEMORY[0x28223BE20](v37);
  v346 = &v320 - v38;
  MEMORY[0x28223BE20](v39);
  v347 = &v320 - v40;
  MEMORY[0x28223BE20](v41);
  v350 = &v320 - v42;
  MEMORY[0x28223BE20](v43);
  v351 = &v320 - v44;
  MEMORY[0x28223BE20](v45);
  v342 = &v320 - v46;
  MEMORY[0x28223BE20](v47);
  v343 = &v320 - v48;
  v365 = sub_20C133E24();
  v361 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v338 = &v320 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v345 = &v320 - v51;
  MEMORY[0x28223BE20](v52);
  v349 = &v320 - v53;
  MEMORY[0x28223BE20](v54);
  v341 = &v320 - v55;
  v360 = sub_20C134014();
  v56 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v58 = &v320 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v61 = &v320 - v60;
  v62 = a1;
  v63 = sub_20C133E94();
  v65 = v63;
  if (v66)
  {
    if (v63 <= 4u)
    {
      if (v63 > 2u)
      {
        if (v63 == 3)
        {
          v79 = v359;

          v80 = sub_20C133E44();
          v82 = v81;
          v83 = type metadata accessor for TVPlaylistViewController();
          v84 = objc_allocWithZone(v83);
          *&v84[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_layout] = xmmword_20C16A0B0;
          type metadata accessor for TVPlaylistPresenter();
          swift_allocObject();
          swift_retain_n();
          v85 = v358;
          swift_unknownObjectRetain_n();
          v86 = sub_20BD8EEC8(v79, 0, 0, v80, v82);
          *&v84[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_presenter] = v86;
          v87 = v86[2];
          v88 = objc_allocWithZone(type metadata accessor for TVPlaylistListViewController());

          v89 = sub_20BAA14DC(v79, v87, v79, v85, v356, v357, v88);

          *&v84[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_listViewController] = v89;
          objc_allocWithZone(type metadata accessor for TVQueueFocusedWorkoutViewController());

          *&v84[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_focusedWorkoutController] = sub_20BC1C728(v90);
          v369.receiver = v84;
          v369.super_class = v83;
          v65 = objc_msgSendSuper2(&v369, sel_initWithNibName_bundle_, 0, 0);
          swift_unknownObjectRelease();
        }

        else
        {
          v258 = *(v56 + 16);
          v331 = v61;
          v259 = v62;
          v260 = v360;
          v258(v61, v259, v360);
          v258(v58, v61, v260);
          v261 = v359;
          swift_retain_n();
          v262 = v358;
          swift_unknownObjectRetain();
          v263 = sub_20C133E44();
          v265 = v264;
          type metadata accessor for TVCatalogProgramPageDataProvider();
          swift_allocObject();

          v266 = sub_20BB82944(v263, v265, v261, 7);

          v267 = sub_20C133E74();

          v268 = *(v56 + 8);
          v268(v58, v260);
          *(v266 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_subtitleTags) = v267;

          v269 = objc_allocWithZone(type metadata accessor for TVCatalogProgramDetailViewController());
          v65 = sub_20BAA16DC(v261, v266, v261, v262, v356, v357, v269);
          v268(v331, v260);
        }

        return v65;
      }

      if (v63 == 1)
      {
        v67 = v61;
        v68 = v360;
        (*(v56 + 16))(v61, a1, v360);
        v69 = v359;

        v70 = sub_20C133E44();
        v72 = v71;
        type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider();
        swift_allocObject();

        v73 = sub_20BC4E62C(v70, v72, v69, 0, 0);

        v74 = objc_allocWithZone(type metadata accessor for TVCatalogEditorialCollectionDetailViewController());

        v75 = v358;
        swift_unknownObjectRetain();
        v65 = sub_20BAA0944(v69, v73, v69, v75, v356, v357, v74);

        (*(v56 + 8))(v67, v68);
        return v65;
      }

      if (v63 == 2)
      {
        v324 = v56;
        v180 = *(v56 + 16);
        v331 = v61;
        v180(v61, a1, v360);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30);
        v330 = sub_20C135C84();
        v334 = *(v330 - 1);
        v181 = (*(v334 + 80) + 32) & ~*(v334 + 80);
        v182 = swift_allocObject();
        *(v182 + 16) = xmmword_20C14F980;
        v183 = v182 + v181;
        *v183 = xmmword_20C15AF00;
        *(v183 + 16) = 1;
        swift_storeEnumTagMultiPayload();
        sub_20BE8C0B0(v182);
        swift_setDeallocating();
        sub_20BAA50C8(v183, MEMORY[0x277D52060]);
        swift_deallocClassInstance();
        v184 = v341;
        sub_20C133DE4();
        v185 = v343;
        sub_20C1354C4();
        v186 = v342;
        sub_20C1354C4();
        v187 = v344;
        sub_20C135884();
        v188 = sub_20C133E44();
        v323 = v188;
        v190 = v189;
        v191 = *(v361 + 16);
        v328 = (v361 + 16);
        v327 = v191;
        v192 = v184;
        v193 = v365;
        (v191)(v349, v192);
        v194 = *(v354 + 16);
        v329 = v194;
        v322 = v354 + 16;
        v195 = v185;
        v196 = v366;
        (v194)(v351, v195, v366);
        (v194)(v350, v186, v196);
        v197 = *(v363 + 16);
        v332 = v363 + 16;
        v333 = v197;
        (v197)(v352, v187, v364);
        v326 = type metadata accessor for TVCatalogModalityDetailViewController();
        v325 = objc_allocWithZone(v326);
        *v21 = v188;
        v21[1] = v190;
        v198 = v330;
        swift_storeEnumTagMultiPayload();
        (*(v334 + 56))(v21, 0, 1, v198);

        sub_20C13CA04();
        v199 = v353;
        sub_20C134E94();
        v200 = v362 + 16;
        v330 = *(v362 + 16);
        v201 = v340;
        (v330)(v340, v199, v355);
        v320 = v200;
        v202 = v345;
        v203 = v349;
        v204 = v327;
        v327(v345, v349, v193);
        type metadata accessor for TVModalityDetailFilterResultPageDataProvider();
        swift_allocObject();
        v205 = v359;

        v334 = sub_20B66D5A4(v206, v323, v190, v201, 0, 0, v202);

        v204(v202, v203, v193);
        v207 = v366;
        v208 = v329;
        (v329)(v347, v351, v366);
        v209 = v201;
        v210 = v355;
        (v330)(v201, v353, v355);
        (v208)(v346, v350, v207);
        (v333)(v348, v352, v364);
        v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C40);
        v211 = objc_allocWithZone(v323);
        *&v211[qword_27C79C038 + 8] = 0;
        swift_unknownObjectWeakInit();
        v212 = v334;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
        sub_20C133AA4();
        *&v211[qword_27C76D2D0] = aBlock;
        v213 = &v211[qword_27C79C000];
        v214 = v211;
        v321 = v211;
        v215 = v209;
        v216 = v330;
        (v330)(v213, v209, v210);
        *&v214[qword_27C79C018] = v212;
        v327(v338, v345, v365);
        v217 = v366;
        v218 = v329;
        (v329)(v339, v347, v366);
        v219 = v337;
        v216(v337, v215, v210);
        v220 = v335;
        (v218)(v335, v346, v217);
        v221 = v336;
        (v333)(v336, v348, v364);
        type metadata accessor for TVFilterOptionsListDataProvider();
        swift_allocObject();

        v222 = v334;

        v223 = sub_20BDF8288(v205, v338, v339, v219, v220, v221, 0, 0);

        v224 = v321;
        *&v321[qword_27C79C020] = v223;
        v225 = objc_allocWithZone(type metadata accessor for TVFilterOptionsListViewController());
        swift_retain_n();

        v226 = v358;
        swift_unknownObjectRetain();
        v227 = v356;
        LOBYTE(v217) = v357;
        v228 = sub_20BAA10EC(v205, v223, v205, v226, v356, v357, v225);

        v229 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765FE8));
        swift_retain_n();

        swift_unknownObjectRetain();
        v230 = sub_20BAA2054(v205, v222, v205, v226, v227, v217, v229, &qword_27C765FE8, &unk_20C182370, &OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_lastFocusedIndexPath, &OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_delegate);

        v231 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
        *&v224[qword_27C79C008] = v231;
        *&v224[qword_27C79C010] = v230;
        *&v224[qword_27C79C030] = v231;
        v232 = &v224[qword_27C79C028];
        *v232 = 0;
        *(v232 + 1) = 0;
        v368.receiver = v224;
        v368.super_class = v323;
        v233 = v231;
        v234 = v230;
        v235 = objc_msgSendSuper2(&v368, sel_init);
        [v233 setDelegate_];

        v236 = *(v363 + 8);
        v363 += 8;
        v359 = v236;
        v237 = v364;
        v236(v348, v364);
        v238 = *(v354 + 8);
        v239 = v366;
        v238(v346, v366);
        v240 = *(v362 + 8);
        v362 += 8;
        v241 = v355;
        v240(v340, v355);
        v238(v347, v239);
        v242 = *(v361 + 8);
        v361 += 8;
        v358 = v242;
        v242(v345, v365);
        *&v234[qword_27C79A4C0 + 8] = &off_2822DCE00;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();

        v243 = v325;
        *&v325[OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator] = v235;
        v367.receiver = v243;
        v367.super_class = v326;
        v244 = objc_msgSendSuper2(&v367, sel_initWithStyle_, 1);
        v245 = *&v244[OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator];
        v246 = objc_opt_self();
        v247 = v244;
        v248 = v245;
        v357 = v248;
        v249 = [v246 mainScreen];
        [v249 bounds];
        v251 = v250;

        [v247 setPreferredPrimaryColumnWidthFraction_];
        v356 = v247;
        [v247 setPrimaryBackgroundStyle_];
        [v247 setViewController:*&v248[qword_27C79C008] forColumn:0];

        v240(v353, v241);
        v252 = v237;
        v253 = v237;
        v254 = v359;
        v359(v352, v253);
        v255 = v366;
        v238(v350, v366);
        v238(v351, v255);
        v256 = v365;
        v257 = v358;
        v358(v349, v365);
        v254(v344, v252);
        v238(v342, v255);
        v238(v343, v255);
        v257(v341, v256);
        v65 = v356;
        goto LABEL_17;
      }

LABEL_27:
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD00000000000003DLL, 0x800000020C1A5750);
      v319 = sub_20C135984();
      MEMORY[0x20F2F4230](v319);

      goto LABEL_28;
    }

    if (v63 > 7u)
    {
      v91 = v8;
      v92 = v56;
      v93 = *(v56 + 16);
      v331 = v61;
      v94 = v360;
      v93(v61, a1, v360);
      v93(v58, v61, v94);
      v95 = v359;
      swift_retain_n();
      v96 = sub_20C133E44();
      v98 = v97;
      v93(v91, v58, v94);
      (*(v92 + 56))(v91, 0, 1, v94);
      type metadata accessor for TVCatalogWorkoutDetailPageDataProvider();
      swift_allocObject();
      v99 = sub_20B809418(v96, v98, v95, 12, v91, 0, 1);
      v100 = *(v92 + 8);
      v100(v58, v94);
      v101 = objc_allocWithZone(type metadata accessor for TVCatalogWorkoutDetailViewController());

      v102 = v358;
      swift_unknownObjectRetain();
      v65 = sub_20BA9F8E8(v95, v99, v95, v102, v356, v357, v101);
      v100(v331, v94);
      return v65;
    }

    if (v63 != 6)
    {
      if (v63 == 7)
      {
        v324 = v56;
        v103 = *(v56 + 16);
        v331 = v61;
        v103(v61, a1, v360);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30);
        v330 = sub_20C135C84();
        v334 = *(v330 - 1);
        v104 = (*(v334 + 80) + 32) & ~*(v334 + 80);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_20C14F980;
        v106 = v105 + v104;
        *v106 = xmmword_20C15AF00;
        *(v106 + 16) = 1;
        swift_storeEnumTagMultiPayload();
        sub_20BE8C0B0(v105);
        swift_setDeallocating();
        sub_20BAA50C8(v106, MEMORY[0x277D52060]);
        swift_deallocClassInstance();
        v107 = v341;
        sub_20C133DE4();
        v108 = v343;
        sub_20C1354C4();
        v109 = v342;
        sub_20C1354C4();
        v110 = v344;
        sub_20C135884();
        v111 = sub_20C133E44();
        v323 = v111;
        v113 = v112;
        v114 = *(v361 + 16);
        v328 = (v361 + 16);
        v327 = v114;
        v115 = v107;
        v116 = v365;
        (v114)(v349, v115);
        v117 = *(v354 + 16);
        v329 = v117;
        v322 = v354 + 16;
        v118 = v108;
        v119 = v366;
        (v117)(v351, v118, v366);
        (v117)(v350, v109, v119);
        v120 = *(v363 + 16);
        v332 = v363 + 16;
        v333 = v120;
        (v120)(v352, v110, v364);
        v326 = type metadata accessor for TVTrainerDetailViewController();
        v325 = objc_allocWithZone(v326);
        *v21 = v111;
        v21[1] = v113;
        v121 = v330;
        swift_storeEnumTagMultiPayload();
        (*(v334 + 56))(v21, 0, 1, v121);

        sub_20C13CA04();
        v122 = v353;
        sub_20C134E94();
        v123 = v362 + 16;
        v330 = *(v362 + 16);
        v124 = v340;
        (v330)(v340, v122, v355);
        v320 = v123;
        v125 = v345;
        v126 = v349;
        v127 = v327;
        v327(v345, v349, v116);
        type metadata accessor for TVTrainerDetailFilterResultPageDataProvider();
        swift_allocObject();
        v128 = v359;

        v334 = sub_20BEBE070(v129, v323, v113, v124, 0, 0, v125);

        v127(v125, v126, v116);
        v130 = v366;
        v131 = v329;
        (v329)(v347, v351, v366);
        v132 = v124;
        v133 = v355;
        (v330)(v124, v353, v355);
        (v131)(v346, v350, v130);
        (v333)(v348, v352, v364);
        v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C38);
        v134 = objc_allocWithZone(v323);
        *&v134[qword_27C79C038 + 8] = 0;
        swift_unknownObjectWeakInit();
        v135 = v334;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
        sub_20C133AA4();
        *&v134[qword_27C76D2D0] = aBlock;
        v136 = &v134[qword_27C79C000];
        v137 = v134;
        v321 = v134;
        v138 = v132;
        v139 = v330;
        (v330)(v136, v132, v133);
        *&v137[qword_27C79C018] = v135;
        v327(v338, v345, v365);
        v140 = v366;
        v141 = v329;
        (v329)(v339, v347, v366);
        v142 = v337;
        v139(v337, v138, v133);
        v143 = v335;
        (v141)(v335, v346, v140);
        v144 = v336;
        (v333)(v336, v348, v364);
        type metadata accessor for TVFilterOptionsListDataProvider();
        swift_allocObject();

        v145 = v334;

        v146 = sub_20BDF8288(v128, v338, v339, v142, v143, v144, 0, 0);

        v147 = v321;
        *&v321[qword_27C79C020] = v146;
        v148 = objc_allocWithZone(type metadata accessor for TVFilterOptionsListViewController());
        swift_retain_n();

        v149 = v358;
        swift_unknownObjectRetain();
        v150 = v356;
        LOBYTE(v140) = v357;
        v151 = sub_20BAA10EC(v128, v146, v128, v149, v356, v357, v148);

        v152 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765FE0));
        swift_retain_n();

        swift_unknownObjectRetain();
        v153 = sub_20BAA2054(v128, v145, v128, v149, v150, v140, v152, &qword_27C765FE0, &unk_20C15B3B0, &OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_lastFocusedIndexPath, &OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_delegate);

        v154 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
        *&v147[qword_27C79C008] = v154;
        *&v147[qword_27C79C010] = v153;
        *&v147[qword_27C79C030] = v154;
        v155 = &v147[qword_27C79C028];
        *v155 = 0;
        *(v155 + 1) = 0;
        v377.receiver = v147;
        v377.super_class = v323;
        v156 = v154;
        v157 = v153;
        v158 = objc_msgSendSuper2(&v377, sel_init);
        [v156 setDelegate_];

        v159 = *(v363 + 8);
        v363 += 8;
        v359 = v159;
        v160 = v364;
        v159(v348, v364);
        v162 = v354 + 8;
        v161 = *(v354 + 8);
        v163 = v366;
        v161(v346, v366);
        v354 = v162;
        v164 = *(v362 + 8);
        v362 += 8;
        v165 = v355;
        v164(v340, v355);
        v161(v347, v163);
        v166 = *(v361 + 8);
        v361 += 8;
        v358 = v166;
        v166(v345, v365);
        *&v157[qword_27C79A4C0 + 8] = &off_2822DCE00;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();

        v167 = v325;
        *&v325[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator] = v158;
        v376.receiver = v167;
        v376.super_class = v326;
        v168 = objc_msgSendSuper2(&v376, sel_initWithStyle_, 1);
        v169 = *&v168[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator];
        v170 = objc_opt_self();
        v65 = v168;
        v171 = v169;
        v357 = v171;
        v172 = [v170 mainScreen];
        [v172 bounds];
        v174 = v173;

        [v65 setPreferredPrimaryColumnWidthFraction_];
        [v65 setPrimaryBackgroundStyle_];
        [v65 setViewController:*&v171[qword_27C79C008] forColumn:0];

        v164(v353, v165);
        v175 = v160;
        v176 = v160;
        v177 = v359;
        v359(v352, v176);
        v178 = v366;
        v161(v350, v366);
        v161(v351, v178);
        v179 = v358;
        v358(v349, v365);
        v177(v344, v175);
        v161(v342, v178);
        v161(v343, v178);
        v179(v341, v365);
LABEL_17:
        (*(v324 + 8))(v331, v360);

        return v65;
      }

      goto LABEL_27;
    }

    sub_20C133E64();
    v76 = v333;
    v77 = v334;
    if (v333[6](v15, 1, v334) == 1)
    {
      sub_20B520158(v15, &unk_27C7617F0);
      sub_20B8B3454();
      swift_allocError();
      *v78 = 0;
      swift_willThrow();
      return v65;
    }

    v270 = v329;
    v76[4](v329, v15, v77);
    sub_20C133EF4();
    v366 = sub_20C133FB4();
    v365 = v271;
    v364 = sub_20C133F14();
    v363 = v272;
    v362 = sub_20C133ED4();
    v361 = v273;
    v274 = v76[2];
    v275 = v328;
    v274(v328, v270, v77);
    v276 = sub_20C133E44();
    v278 = v277;
    v279 = v325;
    v280 = v330;
    v274(v330 + *(v325 + 8), v275, v77);
    sub_20B52F9E8(v332, v280 + v279[5], &unk_27C766680);
    *v280 = v276;
    v280[1] = v278;
    v281 = (v280 + v279[6]);
    v282 = v365;
    *v281 = v366;
    v281[1] = v282;
    v283 = (v280 + v279[7]);
    v284 = v363;
    *v283 = v364;
    v283[1] = v284;
    v285 = (v280 + v279[9]);
    v286 = v361;
    *v285 = v362;
    v285[1] = v286;
    v287 = v280;
    v288 = v327;
    sub_20BAA5048(v287, v327, type metadata accessor for CatalogTipPlaybackContent);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CatalogTipPlayerPresenter();
    v289 = swift_allocObject();
    *(v289 + 88) = 0;
    swift_unknownObjectWeakInit();
    *(v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_activationState) = 0;
    *(v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_currentAudibleMediaSelectionOption) = 0;
    (*(v56 + 56))(v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_trainerTipLockup, 1, 1, v360);
    *(v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_hasPublishedMediaEvent) = 0;
    *(v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_isPresentingSummary) = 0;
    v290 = (v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_periodicTimeObserver);
    *v290 = 0u;
    v290[1] = 0u;
    sub_20C138F44();
    sub_20C133AA4();
    *(v289 + 136) = aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
    sub_20C133AA4();
    sub_20B51C710(&aBlock, v289 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
    sub_20C133AA4();
    sub_20B51C710(&aBlock, v289 + 144);
    sub_20BAA5048(v288, v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, type metadata accessor for CatalogTipPlayerConfiguration);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
    sub_20C133AA4();
    *(v289 + 16) = aBlock;
    *(v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_metricTopicRoutingBehavior) = 0;
    *(v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_options) = 4;
    v291 = (v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext);
    *v291 = 0;
    v291[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870);
    sub_20C133AA4();
    sub_20B51C710(&aBlock, v289 + 32);
    v292 = (v289 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers);
    type metadata accessor for CatalogTipSummaryPresenter();
    *v292 = 0u;
    v292[1] = 0u;
    swift_allocObject();

    v294 = sub_20BE4B50C(v293, 0, 0, 0);

    *(v289 + 72) = v294;
    v295 = swift_allocObject();
    swift_weakInit();
    v296 = *(v294 + 32);
    *(v294 + 32) = sub_20BAA50B0;
    *(v294 + 40) = v295;

    sub_20B583ECC(v296);

    v297 = *(v289 + 72);
    v298 = swift_allocObject();
    swift_weakInit();
    v299 = *(v297 + 48);
    *(v297 + 48) = sub_20BAA50B8;
    *(v297 + 56) = v298;

    sub_20B583ECC(v299);

    v300 = [objc_opt_self() defaultCenter];
    v301 = *MEMORY[0x277CE6100];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v303 = [Strong player];
      swift_unknownObjectRelease();
      if (!v303)
      {
LABEL_24:
        v305 = [objc_opt_self() mainQueue];
        v306 = swift_allocObject();
        swift_weakInit();

        v374 = sub_20BAA50C0;
        v375 = v306;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v372 = sub_20BF3ECF4;
        v373 = &block_descriptor_74;
        v307 = _Block_copy(&aBlock);

        v308 = [v300 addObserverForName:v301 object:v303 queue:v305 usingBlock:v307];
        _Block_release(v307);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_20BAA50C8(v288, type metadata accessor for CatalogTipPlayerConfiguration);
        sub_20BAA50C8(v330, type metadata accessor for CatalogTipPlaybackContent);
        v309 = v333[1];
        v310 = v334;
        (v309)(v328, v334);
        sub_20B520158(v332, &unk_27C766680);
        v311 = type metadata accessor for CatalogTipPlayerViewController();
        v312 = objc_allocWithZone(v311);
        *&v312[OBJC_IVAR____TtC9SeymourUI30CatalogTipPlayerViewController_presenter] = v289;
        v370.receiver = v312;
        v370.super_class = v311;
        v65 = objc_msgSendSuper2(&v370, sel_initWithNibName_bundle_, 0, 0);
        (v309)(v329, v310);
        *(*&v65[OBJC_IVAR____TtC9SeymourUI30CatalogTipPlayerViewController_presenter] + 88) = &off_2822996A0;
        swift_unknownObjectWeakAssign();
        return v65;
      }

      v304 = [v303 currentItem];

      if (v304)
      {
        *&aBlock = v304;
        sub_20B51C88C(0, &qword_27C7689D0);
        v303 = sub_20C13DFD4();

        goto LABEL_24;
      }
    }

    v303 = 0;
    goto LABEL_24;
  }

  sub_20B683084(v63, v64, 0);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_20C13DC94();
  v380 = aBlock;
  MEMORY[0x20F2F4230](0xD00000000000003DLL, 0x800000020C1A5750);
  v314 = sub_20C133E94();
  v316 = v315;
  *&aBlock = v314;
  *(&aBlock + 1) = v315;
  v318 = v317 & 1;
  LOBYTE(v372) = v317 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0);
  sub_20C133BB4();
  sub_20B683084(v314, v316, v318);
  MEMORY[0x20F2F4230](v378, v379);

LABEL_28:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

void sub_20BA9E950(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for TVWorkoutPlanDetailPageDataProvider();
  swift_allocObject();

  v12 = sub_20BE3C968(v11, 0, 0);
  v13 = objc_allocWithZone(type metadata accessor for TVWorkoutPlanDetailViewController());

  swift_unknownObjectRetain();
  v14 = sub_20BAA2A94(a3, v12, a3, a4, a5, a6, v13);

  *(v12 + 3) = &off_2822E7888;
  swift_unknownObjectWeakAssign();

  v15 = [a1 view];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 snapshotViewAfterScreenUpdates_];

    objc_allocWithZone(type metadata accessor for BlurViewController());
    v22 = v14;
    sub_20BADB764(v22, v17);
    v19 = v18;

    v20 = [a1 navigationController];
    if (v20)
    {
      v21 = v20;
      [v20 pushViewController:v19 animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20BA9EB14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a6;
  v38 = a6;
  v36 = a4;
  v37 = a5;
  v40 = a1;
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C137374();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = *(v13 + 16);
  v20(&v35 - v18, a2, v12, v17);
  (v20)(v15, v19, v12);

  sub_20C1372B4();
  type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider(0);
  swift_allocObject();
  v21 = sub_20BDCE950(a3, v11, 0, 0, 1);
  v39 = *(v13 + 8);
  v39(v15, v12);
  v22 = type metadata accessor for WorkoutPlanTemplateDetailViewController();
  v23 = objc_allocWithZone(v22);
  v43[3] = &type metadata for TVCatalogPageNavigator;
  v43[4] = &off_2822C80E8;
  v24 = swift_allocObject();
  v43[0] = v24;
  v26 = v36;
  v25 = v37;
  *(v24 + 16) = a3;
  *(v24 + 24) = v26;
  *(v24 + 32) = v25;
  *(v24 + 40) = v6;
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_resignActiveObserver] = 0;
  v27 = &v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -4;
  v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_isTransitioningContentInset] = 0;
  v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_visibility] = 1;
  v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_allowsPlanActions] = 1;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_bag] = v42;
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dependencies] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_eventHub] = v42;
  sub_20B51CC64(v43, &v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_pageNavigator]);
  sub_20C133AA4();
  v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_platform] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v42, &v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_storefrontLocalizer]);
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider] = v21;
  type metadata accessor for WorkoutPlanStringBuilder();

  sub_20C133AA4();
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_workoutPlanStringBuilder] = v42;
  v28 = &v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior];
  *v28 = 0;
  v28[8] = 3;
  v41.receiver = v23;
  v41.super_class = v22;
  v29 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v43);
  *(*&v29[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate + 8) = &off_2822C9E08;
  swift_unknownObjectWeakAssign();

  v39(v19, v12);
  if (!v38)
  {
    v30 = [v40 navigationController];
    [v30 pushViewController:v29 animated:1];
LABEL_7:

    return;
  }

  v31 = v40;
  if (v38 == 1)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v32 setModalPresentationStyle_];
    v33 = [v31 navigationController];
    if (v33)
    {
      v34 = v33;
      [v33 presentViewController:v32 animated:1 completion:0];
    }

    v30 = v29;
    v29 = v32;
    goto LABEL_7;
  }

  sub_20C13DE24();
  __break(1u);
}

void sub_20BA9F0B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v54 = a6;
  v52 = a4;
  v53 = a5;
  v9 = sub_20C137F24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_20C13BB84();
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v18 = *(v10 + 16);
  v50 = a2;
  v46 = v18;
  v18(v14, a2, v9);
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v45 = a1;
    v22 = v21;
    v42 = v21;
    v44 = swift_slowAlloc();
    v55 = v44;
    *v22 = 136446210;
    v43 = v20;
    v23 = sub_20C137F04();
    v24 = v9;
    v26 = v25;
    v27 = *(v10 + 8);
    v49 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v14, v24);
    v28 = sub_20B51E694(v23, v26, &v55);
    v9 = v24;

    v29 = v42;
    *(v42 + 4) = v28;
    v30 = v29;
    _os_log_impl(&dword_20B517000, v19, v43, "[TVCatalogPageNavigating] Did select trainer %{public}s", v29, 0xCu);
    v31 = v44;
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    a1 = v45;
    MEMORY[0x20F2F6A40](v30, -1, -1);
  }

  else
  {

    v27 = *(v10 + 8);
    v49 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v14, v9);
  }

  (*(v47 + 8))(v17, v48);
  v32 = v51;
  v46(v51, v50, v9);

  v33 = sub_20C137EB4();
  v35 = v34;
  type metadata accessor for TrainerPageDataProvider();
  swift_allocObject();

  v36 = sub_20BF802CC(v33, v35, a3);

  v37 = objc_allocWithZone(type metadata accessor for TrainerDetailViewController());

  v38 = v52;
  swift_unknownObjectRetain();
  v39 = sub_20BAA32DC(a3, v36, a3, v38, v53, v54, v37);

  v27(v32, v9);
  v40 = [a1 navigationController];
  if (v40)
  {
    v41 = v40;
    [v40 pushViewController:v39 animated:1];
  }
}

void sub_20BA9F4D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_20C132C14();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  (*(v14 + 16))(v12, a2, v10);
  objc_allocWithZone(type metadata accessor for MarketingBannerPlayerViewController());

  v15 = sub_20BC4F340(v13, a3, a4, v12);
  [a1 presentViewController:v15 animated:1 completion:0];
}

void sub_20BA9F690(void *a1, uint64_t a2)
{
  v4 = sub_20C1353F4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  v9 = objc_allocWithZone(type metadata accessor for WorkoutPlanCompletionViewController());

  v11 = sub_20C1058BC(v10, v7, 0, 0, 0, 4);

  v12 = [a1 navigationController];
  if (v12)
  {
    v13 = v12;
    [v12 presentViewController:v11 animated:1 completion:0];
  }
}

void sub_20BA9F7E0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = objc_allocWithZone(type metadata accessor for QueuedSessionViewController());

  v7 = QueuedSessionViewController.init(dependencies:queueItems:playContext:)(v5, a2, 0, 0);
  [a1 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_20BA9F884()
{
  swift_getObjectType();
  sub_20BAA4FAC();
  return sub_20C13A764();
}

char *sub_20BA9F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v64[3] = &type metadata for TVCatalogPageNavigator;
  v64[4] = &off_2822C80E8;
  v13 = swift_allocObject();
  v64[0] = v13;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_resignActiveObserver] = 0;
  v14 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseCoordinator;
  *&a7[v14] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v15 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseHandler;
  *&a7[v15] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v16 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dynamicOfferCoordinator;
  *&a7[v16] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v17 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_webUserInterfaceCoordinator;
  *&a7[v17] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v18 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_lastFocusedIndexPath;
  v19 = sub_20C133244();
  (*(*(v19 - 8) + 56))(&a7[v18], 1, 1, v19);
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_settlingTimer] = 0;
  v20 = &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_layout];
  *v20 = xmmword_20C14F590;
  v20[1] = xmmword_20C14F5A0;
  v20[2] = xmmword_20C14F5B0;
  v20[3] = xmmword_20C14F5C0;
  v21 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_artworkView;
  v22 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a7[v21] = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_shroudView;
  v24 = objc_opt_self();
  v25 = [v24 effectWithStyle_];
  v26 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&a7[v23] = v26;
  v27 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_bottomBlurView;
  v28 = [v24 effectWithStyle_];
  v29 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a7[v27] = v29;
  v30 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_titleLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v32 = sub_20BD518BC();

  [v32 setLineBreakMode_];
  [v32 setNumberOfLines_];
  [v32 setAllowsDefaultTighteningForTruncation_];
  v33 = objc_opt_self();
  v34 = [v33 preferredFontForTextStyle_];
  [v34 pointSize];
  v36 = v35;

  v37 = [v33 boldSystemFontOfSize_];
  [v32 setFont_];

  v38 = objc_opt_self();
  v39 = [v38 whiteColor];
  [v32 setTextColor_];

  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAdjustsFontForContentSizeCategory_];
  *&a7[v30] = v32;
  v40 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_subtitleLabel;
  v41 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v42 = sub_20BD518BC();

  [v42 setLineBreakMode_];
  [v42 setNumberOfLines_];
  [v42 setAllowsDefaultTighteningForTruncation_];
  v43 = [v33 preferredFontForTextStyle_];
  [v43 pointSize];
  v45 = v44;

  v46 = [v33 systemFontOfSize:v45 weight:*MEMORY[0x277D74420]];
  [v42 setFont_];

  v47 = [v38 whiteColor];
  [v42 setTextColor_];

  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  [v42 setAdjustsFontForContentSizeCategory_];
  *&a7[v40] = v42;
  v48 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_ellipsisButton;
  v49 = sub_20B8C98E0(1, 0.0, 0.0, 0.0, 0.0);
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a7[v48] = v49;
  v50 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_gradientMaskLayer;
  *&a7[v50] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_bag] = *&v63[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_eventHub] = v63[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090);
  sub_20C133AA4();
  sub_20B51C710(v63, &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_marketingMetricFieldsProvider]);
  sub_20B51CC64(v64, &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_platform] = v63[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v63, &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v63, &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_timerProvider]);
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dataProvider] = a2;
  v51 = *(a2 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier);
  v52 = *(a2 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier + 8);
  type metadata accessor for TVWorkoutDetailMenuPresenter();
  swift_allocObject();
  swift_retain_n();

  v53 = sub_20B875AD4(a1, v51, v52, a2);

  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_menuPresenter] = v53;
  v62.receiver = a7;
  v62.super_class = type metadata accessor for TVCatalogWorkoutDetailViewController();
  v54 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(v64);
  *(*&v54[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_menuPresenter] + 272) = &off_28228FE80;
  swift_unknownObjectWeakAssign();
  *(a2 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_backgroundArtworkDelegate + 8) = &off_28228FE48;
  swift_unknownObjectWeakAssign();
  v55 = *(a2 + 408);
  v56 = v54;
  v57 = v55;

  *&v57[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8] = &off_28228FF20;
  swift_unknownObjectWeakAssign();

  v58 = &v56[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_eventHub];
  *(*&v56[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v56[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v59 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v56[v59] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v58 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(*&v56[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v58 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v56;
}

id sub_20BAA0328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v30[3] = &type metadata for CatalogPageNavigator;
  v30[4] = &off_2822FB218;
  v14 = swift_allocObject();
  v30[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = -4;
  a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_resignActiveObserver] = 0;
  v16 = OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor;
  *&a7[v16] = [objc_opt_self() blackColor];
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentStatusBarStyle] = 3;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dependencies] = a1;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_eventHub] = v29[0];
  sub_20B51CC64(v30, &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_platform] = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v29, &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v29, &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_storefrontLocalizer]);
  type metadata accessor for CatalogPageSortOptionsDataProvider();
  v17 = swift_allocObject();

  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v17 + 4, v17[7]);
  v18 = sub_20C138D34();
  v20 = v19;

  v17[2] = v18;
  v17[3] = v20;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_sortOptionsDataProvider] = v17;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_subscriptionToken] = sub_20C13A914();
  v21 = &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior];
  *v21 = 0;
  v21[8] = 3;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButtonPresenter] = sub_20B887320();
  v22 = sub_20BE8C450(&unk_2822873C0);

  v24 = sub_20BAB9360(v23, v22, 0);

  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButton] = v24;
  v28.receiver = a7;
  v28.super_class = type metadata accessor for TrainerDetailViewController();
  v25 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  *(a2 + 24) = &off_2822B2178;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  sub_20C139404();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BAA5000(&unk_27C769C10, MEMORY[0x277D54398]);
  v26 = v25;
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v29);
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20BAA5000(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v26;
}

char *sub_20BAA0944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v56[3] = &type metadata for TVCatalogPageNavigator;
  v56[4] = &off_2822C80E8;
  v12 = swift_allocObject();
  v56[0] = v12;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  v13 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_lastFocusedIndexPath;
  v14 = sub_20C133244();
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  *&a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_settlingTimer] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_visibility] = 1;
  v15 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_gradientMaskLayer;
  *&a7[v15] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v16 = &a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_layout];
  *v16 = xmmword_20C14F590;
  v16[1] = xmmword_20C14F5A0;
  v16[2] = xmmword_20C14F5B0;
  v16[3] = xmmword_20C14F5C0;
  *&a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_resignActiveObserver] = 0;
  v17 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_artworkView;
  v18 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a7[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_bottomBlurView;
  v20 = objc_opt_self();
  v21 = [v20 effectWithStyle_];
  v22 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v22 &selRef_count + 2];
  *&a7[v19] = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_shroudView;
  v24 = [v20 effectWithStyle_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&a7[v23] = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_titleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v28 = sub_20BD518BC();

  [v28 setLineBreakMode_];
  [v28 setNumberOfLines_];
  [v28 setAllowsDefaultTighteningForTruncation_];
  v29 = objc_opt_self();
  v30 = [v29 preferredFontForTextStyle_];
  [v30 pointSize];
  v32 = v31;

  v33 = [v29 boldSystemFontOfSize_];
  [v28 setFont_];

  v34 = objc_opt_self();
  v35 = [v34 whiteColor];
  [v28 setTextColor_];

  [v28 &selRef_count + 2];
  [v28 setAdjustsFontForContentSizeCategory_];
  *&a7[v26] = v28;
  v36 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_subtitleLabel;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v38 = sub_20BD518BC();

  [v38 setLineBreakMode_];
  [v38 setNumberOfLines_];
  [v38 setAllowsDefaultTighteningForTruncation_];
  v39 = [v29 preferredFontForTextStyle_];
  [v39 pointSize];
  v41 = v40;

  v42 = [v29 systemFontOfSize:v41 weight:*MEMORY[0x277D74410]];
  [v38 setFont_];

  v43 = [v34 whiteColor];
  [v38 setTextColor_];

  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  [v38 setAdjustsFontForContentSizeCategory_];
  *&a7[v36] = v38;
  v44 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_ellipsisButton;
  v45 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v46 = sub_20B8C9328(0);
  v47 = objc_allocWithZone(type metadata accessor for TVButton());
  *&a7[v44] = sub_20BB87F4C(v46, 0, 1, v47, 0.0, 0.0, 0.0, 0.0);
  *&a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_menu] = 0;
  v48 = &a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_editorialLayout];
  *v48 = 2;
  v48[1] = 0x408A300000000000;
  *&a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_dependencies] = a1;
  *&a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_eventHub] = v55[0];
  sub_20B51CC64(v56, &a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_platform] = v55[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v55, &a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v55, &a7[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_timerProvider]);
  v54.receiver = a7;
  v54.super_class = type metadata accessor for TVCatalogEditorialCollectionDetailViewController();
  v49 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v56);
  v50 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_dataProvider;
  *(*&v49[OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_dataProvider] + 24) = &off_2822B93D8;
  swift_unknownObjectWeakAssign();
  *(*&v49[v50] + 40) = &off_2822B93B8;
  swift_unknownObjectWeakAssign();
  *(*(*&v49[v50] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_2822B93F0;
  swift_unknownObjectWeakAssign();
  return v49;
}

char *sub_20BAA10EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v32[3] = &type metadata for TVCatalogPageNavigator;
  v32[4] = &off_2822C80E8;
  v14 = swift_allocObject();
  v32[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = &a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout];
  *v15 = xmmword_20C150E40;
  *(v15 + 1) = xmmword_20C150E50;
  *(v15 + 2) = xmmword_20C150E60;
  *(v15 + 6) = 0;
  *(v15 + 7) = 0;
  *(v15 + 8) = 0x4046800000000000;
  a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_visibility] = 2;
  v16 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_lastFocusedIndexPath;
  v17 = sub_20C133244();
  (*(*(v17 - 8) + 56))(&a7[v16], 1, 1, v17);
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_settlingTimer] = 0;
  v18 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView;
  v19 = [objc_allocWithZone(type metadata accessor for TVOptionsShelfActionView()) initWithFrame_];
  [v19 setAlpha_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  *&a7[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_titleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setNumberOfLines_];
  v22 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v21 setFont_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a7[v20] = v21;
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_metricPublishingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v31, &a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_timerProvider]);
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider] = a2;
  sub_20B51CC64(v32, &a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_pageNavigator]);
  v23 = *&a7[v18];

  v24 = [v23 heightAnchor];
  v25 = [v24 constraintEqualToConstant_];

  *&a7[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionsHeightConstraint] = v25;
  v30.receiver = a7;
  v30.super_class = type metadata accessor for TVFilterOptionsListViewController();
  v26 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  *(*&v26[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider] + 80) = &off_282297F20;
  swift_unknownObjectWeakAssign();
  v27 = *(*&v26[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView] + OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_button);
  v28 = v26;
  [v27 addTarget:v28 action:sel_handleActionButtonTapped forControlEvents:0x2000];
  sub_20BA9B3F4();

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v28;
}

id sub_20BAA14DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v21[3] = &type metadata for TVCatalogPageNavigator;
  v21[4] = &off_2822C80E8;
  v14 = swift_allocObject();
  v21[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  a7[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_resignActiveObserver] = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_lastFocusedIndexPath;
  v16 = sub_20C133244();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *&a7[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_settlingTimer] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v20, &a7[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_timerProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_eventHub] = v20;
  *&a7[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dataProvider] = a2;
  sub_20B51CC64(v21, &a7[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_pageNavigator]);
  v19.receiver = a7;
  v19.super_class = type metadata accessor for TVPlaylistListViewController();
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v17;
}

char *sub_20BAA16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v61[3] = &type metadata for TVCatalogPageNavigator;
  v61[4] = &off_2822C80E8;
  v12 = swift_allocObject();
  v61[0] = v12;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_resignActiveObserver] = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseCoordinator;
  *&a7[v13] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v14 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseHandler;
  *&a7[v14] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v15 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dynamicOfferCoordinator;
  *&a7[v15] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v16 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_webUserInterfaceCoordinator;
  *&a7[v16] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v17 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_lastFocusedIndexPath;
  v18 = sub_20C133244();
  (*(*(v18 - 8) + 56))(&a7[v17], 1, 1, v18);
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_settlingTimer] = 0;
  v19 = &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_layout];
  *v19 = xmmword_20C14F590;
  v19[1] = xmmword_20C14F5A0;
  v19[2] = xmmword_20C14F5B0;
  v19[3] = xmmword_20C14F5C0;
  v20 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_artworkView;
  v21 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a7[v20] = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_shroudView;
  v23 = objc_opt_self();
  v24 = [v23 effectWithStyle_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&a7[v22] = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_bottomBlurView;
  v27 = [v23 effectWithStyle_];
  v28 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v28 &selRef_count + 2];
  *&a7[v26] = v28;
  v29 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_titleLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v31 = sub_20BD518BC();

  [v31 setLineBreakMode_];
  [v31 setNumberOfLines_];
  [v31 setAllowsDefaultTighteningForTruncation_];
  v32 = objc_opt_self();
  v33 = [v32 preferredFontForTextStyle_];
  [v33 pointSize];
  v35 = v34;

  v36 = [v32 boldSystemFontOfSize_];
  [v31 setFont_];

  v37 = objc_opt_self();
  v38 = [v37 whiteColor];
  [v31 setTextColor_];

  [v31 &selRef_count + 2];
  [v31 setAdjustsFontForContentSizeCategory_];
  *&a7[v29] = v31;
  v39 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_subtitleLabel;
  v40 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v41 = sub_20BD518BC();

  [v41 setLineBreakMode_];
  [v41 setNumberOfLines_];
  [v41 setAllowsDefaultTighteningForTruncation_];
  v42 = [v32 preferredFontForTextStyle_];
  [v42 pointSize];
  v44 = v43;

  v45 = [v32 systemFontOfSize:v44 weight:*MEMORY[0x277D74410]];
  [v41 setFont_];

  v46 = [v37 whiteColor];
  [v41 setTextColor_];

  [v41 &selRef_count + 2];
  [v41 setAdjustsFontForContentSizeCategory_];
  *&a7[v39] = v41;
  v47 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_ellipsisButton;
  v48 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v49 = sub_20B8C9328(0);
  v50 = objc_allocWithZone(type metadata accessor for TVButton());
  *&a7[v47] = sub_20BB87F4C(v49, 0, 1, v50, 0.0, 0.0, 0.0, 0.0);
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_menu] = 0;
  v51 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_gradientMaskLayer;
  *&a7[v51] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_bag] = *&v60[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_eventHub] = v60[0];
  sub_20B51CC64(v61, &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_platform] = v60[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v60, &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v60, &a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_timerProvider]);
  *&a7[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider] = a2;
  v59.receiver = a7;
  v59.super_class = type metadata accessor for TVCatalogProgramDetailViewController();
  v52 = objc_msgSendSuper2(&v59, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v53 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider;
  *(*&v52[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_backgroundArtworkDelegate + 8) = &off_28229B2F0;
  swift_unknownObjectWeakAssign();
  *(*(*&v52[v53] + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_28229B3A0;
  swift_unknownObjectWeakAssign();
  v54 = &v52[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_eventHub];
  *(*&v52[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v52[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v55 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v52[v55] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v54 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(*&v52[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v54 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  return v52;
}

char *sub_20BAA2054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7, uint64_t *a8, uint64_t a9, uint64_t *a10, void *a11)
{
  v42 = a11;
  v40 = a8;
  v41 = a10;
  v39 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  v45[3] = &type metadata for TVCatalogPageNavigator;
  v45[4] = &off_2822C80E8;
  v21 = swift_allocObject();
  v45[0] = v21;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  v22 = &a7[qword_27C765EB8];
  *v22 = xmmword_20C15B0B0;
  v22[1] = xmmword_20C150E50;
  a7[qword_27C765EC0] = 2;
  v23 = qword_27C79A480;
  v24 = sub_20C133244();
  (*(*(v24 - 8) + 56))(&a7[v23], 1, 1, v24);
  *&a7[qword_27C79A4B8] = 0;
  *&a7[qword_27C79A4C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a7[qword_27C79A488] = a1;

  sub_20C133AA4();
  a7[qword_27C79A490] = v44[0];
  sub_20B51CC64(v45, &a7[qword_27C79A498]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v44, &a7[qword_27C79A4A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v44, &a7[qword_27C79A4B0]);
  *&a7[qword_27C765EB0] = a2;
  v25 = objc_allocWithZone(MEMORY[0x277D75B80]);

  v26 = [v25 initWithTarget:0 action:{0, v39}];
  *&a7[qword_27C765EC8] = v26;
  *&v44[0] = MEMORY[0x277D84F90];
  v27 = v26;
  sub_20C13DD64();
  sub_20C13D014();
  sub_20C13DD34();
  sub_20C13DD74();
  sub_20C13DD84();
  sub_20C13DD44();
  sub_20B51C88C(0, &qword_27C765490);
  v28 = sub_20C13CC54();

  [v27 setAllowedPressTypes_];

  type metadata accessor for CatalogPageSortOptionsDataProvider();
  v29 = swift_allocObject();

  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v29 + 4, v29[7]);
  v30 = sub_20C138D34();
  v32 = v31;

  v29[2] = v30;
  v29[3] = v32;
  *&a7[qword_27C79A4A8] = v29;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v40);
  v43.receiver = a7;
  v43.super_class = v33;
  v34 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0);
  v35 = *v41;
  swift_beginAccess();
  sub_20B52F9E8(a2 + v35, v20, &unk_27C7629C0);
  v36 = qword_27C79A480;
  swift_beginAccess();
  v37 = v34;
  sub_20B59784C(v20, v34 + v36);
  swift_endAccess();
  *(*&v37[qword_27C765EB0] + *v42 + 8) = &off_2822A9920;
  swift_unknownObjectWeakAssign();
  [*&v37[qword_27C765EC8] addTarget:v37 action:sel_menuTapped];

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v37;
}

void sub_20BAA2584(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(char *, uint64_t), uint64_t a5, int a6)
{
  v33 = sub_20C13BB84();
  MEMORY[0x28223BE20](v33);
  v13 = sub_20C133E94();
  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = sub_20BA9B86C(a2, a3, a4, a5, a6);
  v31 = v15;
  if (v13 > 4u)
  {
    if (v13 <= 7u)
    {
      if (v13 != 6)
      {
        if (v13 != 7)
        {
          goto LABEL_6;
        }

LABEL_13:
        v19 = [a1 view];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 snapshotViewAfterScreenUpdates_];

          v22 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v23 = v32;
          sub_20BADB764(v23, v21);
          v35 = v24;

          v25 = [a1 navigationController];
          if (!v25)
          {

            v18 = v35;
            goto LABEL_17;
          }

          v31 = v25;
          [v25 pushViewController:v35 animated:1];

          goto LABEL_16;
        }

        __break(1u);
LABEL_22:
        sub_20B683084(v13, v12, 0);
        sub_20C13DC94();
        MEMORY[0x20F2F4230](0xD00000000000003DLL, 0x800000020C1A5750);
        v26 = sub_20C133E94();
        v28 = v27;
        v30 = v29 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0);
        sub_20C133BB4();
        sub_20B683084(v26, v28, v30);
        MEMORY[0x20F2F4230]();

        goto LABEL_23;
      }

      [a1 presentViewController:v15 animated:1 completion:0];
LABEL_16:
      v18 = v31;
      goto LABEL_17;
    }
  }

  else if (v13 <= 2u && v13 != 1)
  {
    if (v13 != 2)
    {
LABEL_6:
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD00000000000003DLL, 0x800000020C1A5750);
      v16 = sub_20C135984();
      MEMORY[0x20F2F4230](v16);

LABEL_23:
      sub_20C13DE24();
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

  v17 = [a1 navigationController];
  if (!v17)
  {
    goto LABEL_16;
  }

  v34 = v17;
  [v17 pushViewController:v31 animated:1];

  v18 = v34;
LABEL_17:
}

id sub_20BAA2A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  ObjectType = swift_getObjectType();
  v27[3] = &type metadata for TVCatalogPageNavigator;
  v27[4] = &off_2822C80E8;
  v15 = swift_allocObject();
  v27[0] = v15;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_visibility] = 1;
  v16 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_lastFocusedIndexPath;
  v17 = sub_20C133244();
  (*(*(v17 - 8) + 56))(&a7[v16], 1, 1, v17);
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_settlingTimer] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_resignActiveObserver] = 0;
  v18 = &a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_layout];
  *v18 = xmmword_20C16A0C0;
  *(v18 + 2) = 0x408B080000000000;
  v19 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_titleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  [v20 setAllowsDefaultTighteningForTruncation_];
  v21 = [objc_opt_self() smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v20 setFont_];

  v22 = [objc_opt_self() labelColor];
  [v20 setTextColor_];

  [v20 setTextAlignment_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  *&a7[v19] = v20;
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider] = a2;
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_eventHub] = v26[0];
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_platform] = v26[0];
  sub_20B51CC64(v27, &a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_pageNavigator]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v26, &a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v26, &a7[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider]);
  v25.receiver = a7;
  v25.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v27);
  *(a2 + 40) = &off_2822E7820;
  swift_unknownObjectWeakAssign();
  return v23;
}

void sub_20BAA2E84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v55 = a4;
  v8 = sub_20C132C14();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_20C134284();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v52 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v41[-v16];
  v18 = sub_20C13BB84();
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B534();
  v21 = *(v13 + 16);
  v53 = a2;
  v51 = v12;
  v48 = v21;
  v21(v17, a2, v12);
  v22 = sub_20C13BB74();
  v23 = sub_20C13D1F4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v45 = a1;
    v25 = v24;
    v43 = swift_slowAlloc();
    v56 = v43;
    *v25 = 141558274;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    v26 = v11;
    v42 = v23;
    sub_20C134254();
    sub_20BAA5000(&qword_27C768AB0, MEMORY[0x277CC9260]);
    v27 = v46;
    v28 = sub_20C13DFA4();
    v44 = a5;
    v30 = v29;
    (*(v47 + 8))(v26, v27);
    v31 = v17;
    v32 = v51;
    (*(v13 + 8))(v31, v51);
    v33 = sub_20B51E694(v28, v30, &v56);
    a5 = v44;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_20B517000, v22, v42, "[TVCatalogPageNavigating] Did select preview with URL - %{mask.hash}s", v25, 0x16u);
    v34 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x20F2F6A40](v34, -1, -1);
    v35 = v25;
    a1 = v45;
    MEMORY[0x20F2F6A40](v35, -1, -1);
  }

  else
  {

    v36 = v17;
    v32 = v51;
    (*(v13 + 8))(v36, v51);
  }

  (*(v49 + 8))(v20, v50);
  v37 = v52;
  v48(v52, v53, v32);
  v38 = objc_allocWithZone(type metadata accessor for TVPreviewPlayerViewController());

  v39 = v55;

  v40 = sub_20C0EE000(a5, v37, v54, v39);

  [a1 presentViewController:v40 animated:1 completion:0];
}

id sub_20BAA32DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v30[3] = &type metadata for TVCatalogPageNavigator;
  v30[4] = &off_2822C80E8;
  v14 = swift_allocObject();
  v30[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = -4;
  a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_resignActiveObserver] = 0;
  v16 = OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor;
  *&a7[v16] = [objc_opt_self() blackColor];
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentStatusBarStyle] = 3;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dependencies] = a1;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_eventHub] = v29[0];
  sub_20B51CC64(v30, &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_platform] = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v29, &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v29, &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_storefrontLocalizer]);
  type metadata accessor for CatalogPageSortOptionsDataProvider();
  v17 = swift_allocObject();

  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v17 + 4, v17[7]);
  v18 = sub_20C138D34();
  v20 = v19;

  v17[2] = v18;
  v17[3] = v20;
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_sortOptionsDataProvider] = v17;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_subscriptionToken] = sub_20C13A914();
  v21 = &a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior];
  *v21 = 0;
  v21[8] = 3;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButtonPresenter] = sub_20B887320();
  v22 = sub_20BE8C450(&unk_282287490);

  v24 = sub_20BAB9360(v23, v22, 0);

  *&a7[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButton] = v24;
  v28.receiver = a7;
  v28.super_class = type metadata accessor for TrainerDetailViewController();
  v25 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  *(a2 + 24) = &off_2822B2178;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  sub_20C139404();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BAA5000(&unk_27C769C10, MEMORY[0x277D54398]);
  v26 = v25;
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v29);
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20BAA5000(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v26;
}

id sub_20BAA38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6)
{
  v25[3] = &type metadata for TVCatalogPageNavigator;
  v25[4] = &off_2822C80E8;
  v12 = swift_allocObject();
  v25[0] = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = &a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_layout];
  *v13 = xmmword_20C15B0B0;
  v13[1] = xmmword_20C16A0D0;
  a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_visibility] = 1;
  v14 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_lastFocusedIndexPath;
  v15 = sub_20C133244();
  (*(*(v15 - 8) + 56))(&a6[v14], 1, 1, v15);
  *&a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_settlingTimer] = 0;
  v16 = &a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_titleHeaderHeight];
  *v16 = 0;
  v16[8] = 1;
  v17 = &a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_identifier];
  *v17 = 0xD000000000000014;
  v17[1] = 0x800000020C1A5730;
  *&a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_dependencies] = a1;
  sub_20B51CC64(v25, &a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_pageNavigator]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_eventHub] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v24, &a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_timerProvider]);
  v18 = *v17;
  v19 = v17[1];
  type metadata accessor for TVWorkoutPlanGalleryDataProvider();
  swift_allocObject();

  v20 = sub_20C0B498C(a1, v18, v19);

  *&a6[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanGalleryViewController_dataProvider] = v20;
  v23.receiver = a6;
  v23.super_class = type metadata accessor for TVWorkoutPlanGalleryViewController();
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

void sub_20BAA3B90(void *a1, unint64_t a2, unint64_t a3, void *a4, objc_class *a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v59 = a7;
  v65 = a6;
  v62 = a4;
  v63 = a1;
  v64 = a2;
  v15 = sub_20C1352F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v60 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();

  v22 = sub_20C13BB74();
  v23 = sub_20C13D1F4();

  v24 = os_log_type_enabled(v22, v23);
  v61 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v58 = a5;
    v57 = a8;
    v26 = v25;
    v27 = swift_slowAlloc();
    v68[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_20B51E694(v64, a3, v68);
    _os_log_impl(&dword_20B517000, v22, v23, "[TVCatalogPageNavigating] Did select gallery %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x20F2F6A40](v27, -1, -1);
    v28 = v26;
    a8 = v57;
    a5 = v58;
    MEMORY[0x20F2F6A40](v28, -1, -1);
  }

  (*(v19 + 8))(v21, v18);
  v29 = v65;
  if (((1 << v65) & 0x65E) == 0)
  {
    if (((1 << v65) & 0x121) != 0)
    {
      v68[3] = &type metadata for TVCatalogPageNavigator;
      v68[4] = &off_2822C80E8;
      v30 = swift_allocObject();
      v68[0] = v30;
      *(v30 + 16) = a9;
      *(v30 + 24) = a10;
      *(v30 + 32) = a11;
      *(v30 + 40) = a12;
      v58 = type metadata accessor for TVLibraryGalleryViewController();
      v31 = objc_allocWithZone(v58);
      v32 = &v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_layout];
      *v32 = xmmword_20C15B0B0;
      v32[1] = xmmword_20C150E50;
      v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_visibility] = 1;
      *&v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_resignActiveObserver] = 0;
      v33 = OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_lastFocusedIndexPath;
      v34 = sub_20C133244();
      (*(*(v34 - 8) + 56))(&v31[v33], 1, 1, v34);
      *&v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_settlingTimer] = 0;
      *&v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_dependencies] = a9;
      swift_retain_n();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
      sub_20C133AA4();
      sub_20B51C710(v67, &v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_storefrontLocalizer]);
      v35 = OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_metricPageCategory;
      (*(v16 + 104))(&v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v15);
      sub_20B51CC64(v68, &v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_pageNavigator]);
      sub_20C133AA4();
      v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_platform] = v67[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
      sub_20C133AA4();
      sub_20B51C710(v67, &v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_timerProvider]);
      v36 = v60;
      (*(v16 + 16))(v60, &v31[v35], v15);
      type metadata accessor for TVLibraryGalleryDataProvider();
      swift_allocObject();
      v37 = v61;

      v38 = sub_20B6D9078(a9, v29, v59, v62, a5, a8, v36, v64, v37);

      *&v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_dataProvider] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
      sub_20C133AA4();
      *&v31[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_eventHub] = v67[0];
      v66.receiver = v31;
      v66.super_class = v58;
      v39 = objc_msgSendSuper2(&v66, sel_initWithNibName_bundle_, 0, 0);
      __swift_destroy_boxed_opaque_existential_1(v68);
      v40 = [v63 view];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 snapshotViewAfterScreenUpdates_];

        v43 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v44 = v39;
        sub_20BADB764(v44, v42);
        v46 = v45;

        v47 = [v63 navigationController];
        if (!v47)
        {
LABEL_8:

          return;
        }

LABEL_7:
        v48 = v47;
        [v47 pushViewController:v46 animated:1];

        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
      v49 = objc_allocWithZone(type metadata accessor for TVWorkoutPlanGalleryViewController());
      swift_retain_n();
      swift_unknownObjectRetain();
      v50 = sub_20BAA38F8(a9, a9, a10, a11, a12, v49);

      v51 = [v63 view];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 snapshotViewAfterScreenUpdates_];

        v54 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v44 = v50;
        sub_20BADB764(v44, v53);
        v46 = v55;

        v47 = [v63 navigationController];
        if (!v47)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20BAA42C4(uint64_t a1)
{
  v2 = sub_20C133E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v7;
    v15 = v14;
    v24 = v14;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    sub_20BAA5000(&qword_27C769C00, MEMORY[0x277D504B0]);
    v16 = sub_20C13DFA4();
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    v19 = sub_20B51E694(v16, v18, &v24);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_20B517000, v10, v11, "[TVCatalogPageNavigating] Did select %{mask.hash}s)", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);

    return (*(v22 + 8))(v9, v23);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }
}

void sub_20BAA45B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v40 = sub_20C13BB84();
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v41 = a2;
  sub_20BAA5048(a2, v13, type metadata accessor for WorkoutSessionConfiguration);
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = a3;
    v21 = v20;
    v43 = v20;
    *v19 = 141558274;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2080;
    sub_20C1344C4();
    v39 = a1;
    sub_20BAA5000(&qword_27C769BF0, MEMORY[0x277D50820]);
    v22 = sub_20C13DFA4();
    v24 = v23;
    sub_20BAA50C8(v13, type metadata accessor for WorkoutSessionConfiguration);
    v25 = sub_20B51E694(v22, v24, &v43);
    a1 = v39;

    *(v19 + 14) = v25;
    _os_log_impl(&dword_20B517000, v17, v18, "[TVCatalogPageNavigating] Did select %{mask.hash}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v26 = v21;
    a3 = v38;
    MEMORY[0x20F2F6A40](v26, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  else
  {

    sub_20BAA50C8(v13, type metadata accessor for WorkoutSessionConfiguration);
  }

  (*(v14 + 8))(v16, v40);
  sub_20BAA5048(v41, v10, type metadata accessor for WorkoutSessionConfiguration);
  v27 = v42;
  sub_20BAA5048(v10, v42, type metadata accessor for WorkoutSessionConfiguration);
  v28 = swift_retain_n();
  v29 = sub_20B9C04B4(v28, v27);
  v30 = objc_allocWithZone(type metadata accessor for SessionViewController());
  v31 = sub_20BFE1644(a3, v29, 0, 0, 0, 0);
  sub_20BAA50C8(v10, type metadata accessor for WorkoutSessionConfiguration);
  v32 = [a1 navigationController];
  if (!v32)
  {
    goto LABEL_8;
  }

  v33 = v32;
  ObjectType = swift_getObjectType();
  v35 = swift_conformsToProtocol2();
  if (!v35)
  {

LABEL_8:
    [a1 presentViewController:v31 animated:1 completion:0];
    goto LABEL_9;
  }

  v36 = v35;
  v37 = v31;
  PictureInPictureSurrogateProtocol<>.presentSessionViewController(_:animated:completion:)(v37, &protocol witness table for SessionViewController, 1, 0, 0, ObjectType, v36);

LABEL_9:
}

char *sub_20BAA4A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  ObjectType = swift_getObjectType();
  v23[3] = &type metadata for TVCatalogPageNavigator;
  v23[4] = &off_2822C80E8;
  v15 = swift_allocObject();
  v23[0] = v15;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  a7[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_visibility] = 1;
  v16 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_lastFocusedIndexPath;
  v17 = sub_20C133244();
  (*(*(v17 - 8) + 56))(&a7[v16], 1, 1, v17);
  *&a7[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_settlingTimer] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_resignActiveObserver] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider] = a2;
  sub_20B51CC64(v23, &a7[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_pageNavigator]);
  *&a7[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_eventHub] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v22, &a7[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider]);
  v21.receiver = a7;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v19 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider;
  *(*&v18[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider] + 24) = &off_2822A9CA0;
  swift_unknownObjectWeakAssign();
  *(*(*&v18[v19] + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_2822A9CE0;
  swift_unknownObjectWeakAssign();
  return v18;
}

void sub_20BAA4C6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v43 = a7;
  v41 = a5;
  v42 = a6;
  v39 = a2;
  v40 = a1;
  v9 = type metadata accessor for WorkoutPlanSwappableItem();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = sub_20C133954();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v23 = *(v16 + 16);
  v23(&v38 - v21, a3, v15, v20);
  sub_20BAA5048(v39, v14, type metadata accessor for WorkoutPlanSwappableItem);
  (v23)(v18, v22, v15);
  v24 = v40;
  sub_20BAA5048(v14, v11, type metadata accessor for WorkoutPlanSwappableItem);
  type metadata accessor for TVWorkoutPlanAlternativesPageDataProvider();
  swift_allocObject();

  v26 = sub_20BAE463C(v25, 0, 0, v18, v11);
  v27 = objc_allocWithZone(type metadata accessor for TVWorkoutPlanAlternativesViewController());

  v28 = v41;
  swift_unknownObjectRetain();
  v29 = sub_20BAA4A08(a4, v26, a4, v28, v42, v43, v27);

  sub_20BAA50C8(v14, type metadata accessor for WorkoutPlanSwappableItem);
  (*(v16 + 8))(v22, v15);
  v30 = [v24 view];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 snapshotViewAfterScreenUpdates_];

    objc_allocWithZone(type metadata accessor for BlurViewController());
    v33 = v29;
    sub_20BADB764(v33, v32);
    v35 = v34;

    v36 = [v24 navigationController];
    if (v36)
    {
      v37 = v36;
      [v36 pushViewController:v35 animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_20BAA4FAC()
{
  result = qword_27C769BE8;
  if (!qword_27C769BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769BE8);
  }

  return result;
}

uint64_t sub_20BAA5000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BAA5048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BAA50C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static MultiUserGroupActivity.createConsentedActivity(sessionIdentifier:workout:activityTypeBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = a5;
  v7 = sub_20C137254();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C1344C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a3, v11, v14);
  (*(v8 + 16))(v10, a4, v7);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 16) = v22;
  *(v18 + 24) = v19;
  (*(v12 + 32))(v18 + v16, v15, v11);
  (*(v8 + 32))(v18 + v17, v10, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  return sub_20C137C94();
}

uint64_t sub_20BAA536C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a3;
  v19[1] = a4;
  v24 = a1;
  v25 = a2;
  v6 = sub_20C132C14();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_20C135024();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = sub_20C13BA24();
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v20 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;

  sub_20C134324();
  sub_20C134404();
  sub_20C134334();
  sub_20C1371C4();
  sub_20C134FE4();
  sub_20C13BA04();
  v14 = v20;
  v13 = v21;
  (*(v8 + 16))(v20, v12, v21);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = v25;
  *(v16 + 16) = v24;
  *(v16 + 24) = v17;
  (*(v8 + 32))(v16 + v15, v14, v13);
  sub_20BAA60E8(&unk_27C76BCC0, MEMORY[0x277D4FB20]);

  sub_20C13B774();

  return (*(v8 + 8))(v12, v13);
}

uint64_t sub_20BAA5644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v31 = a2;
  v32 = a3;
  v34 = sub_20C13C4B4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C4F4();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BA24();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_20C13B764();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v29 = sub_20C13D374();
  (*(v12 + 16))(v14, a1, v11);
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v8);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v9 + 80) + v16 + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v15, v14, v11);
  v19 = (v18 + v16);
  v20 = v32;
  *v19 = v31;
  v19[1] = v20;
  (*(v9 + 32))(v18 + v17, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  aBlock[4] = sub_20BAA6008;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_75;
  v21 = _Block_copy(aBlock);

  v22 = v30;
  sub_20C13C4D4();
  v38 = MEMORY[0x277D84F90];
  sub_20BAA60E8(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v24 = v33;
  v23 = v34;
  sub_20C13DA94();
  v25 = v29;
  MEMORY[0x20F2F4AF0](0, v22, v24, v21);
  _Block_release(v21);

  (*(v37 + 8))(v24, v23);
  (*(v35 + 8))(v22, v36);
}

uint64_t sub_20BAA5AB4(uint64_t a1)
{
  v3 = *(sub_20C13BA24() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_20BAA5644(a1, v4, v5, v6);
}

uint64_t sub_20BAA5B28(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642B0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v34 - v6);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_20C13B764();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277CCB1C8])
  {
    sub_20C13B594();
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20B517000, v21, v22, "Prompt: User selected sharing activity", v23, 2u);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    v24 = sub_20C13BA24();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v7, v35, v24);
    (*(v25 + 56))(v7, 0, 1, v24);
  }

  else if (v20 == *MEMORY[0x277CCB1C0])
  {
    v26 = sub_20C13BA24();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  }

  else
  {
    if (v20 != *MEMORY[0x277CCB1D0])
    {
      v33 = sub_20C13BA24();
      (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
      swift_storeEnumTagMultiPayload();
      v37(v7);
      sub_20BAA6130(v7);
      return (*(v16 + 8))(v19, v15);
    }

    sub_20C13B594();
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1F4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20B517000, v28, v29, "Prompt: Error or user cancelled", v30, 2u);
      MEMORY[0x20F2F6A40](v30, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    sub_20BAA6198();
    v31 = swift_allocError();
    *v32 = 0;
    *v7 = v31;
  }

  swift_storeEnumTagMultiPayload();
  v37(v7);
  return sub_20BAA6130(v7);
}

uint64_t sub_20BAA6008()
{
  v1 = *(sub_20C13B764() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_20C13BA24() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_20BAA5B28(v0 + v2, v5, v6, v7);
}

uint64_t sub_20BAA60E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BAA6130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20BAA6198()
{
  result = qword_27C769C48;
  if (!qword_27C769C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769C48);
  }

  return result;
}

char *sub_20BAA61EC(double a1)
{
  v1[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_state] = 0;
  v3 = OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_layout;
  if (qword_27C7609A0 != -1)
  {
    swift_once();
  }

  v4 = &v1[v3];
  v5 = qword_27C79B920;
  *v4 = qword_27C79B920;
  *(v4 + 8) = xmmword_20C16A160;
  *(v4 + 24) = xmmword_20C16A170;
  *&v1[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_highlightedWidth] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_maxWidth] = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_widthConstraint;
  v7 = objc_allocWithZone(MEMORY[0x277CCAAD0]);
  v8 = v5;
  *&v1[v6] = [v7 init];
  v28.receiver = v1;
  v28.super_class = type metadata accessor for PlaybackControlTransitionView();
  v9 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = &v9[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_layout];
  *&v9[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_highlightedWidth] = *&v9[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_layout + 16] * a1;
  v11 = v10[4] * a1;
  v12 = OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_maxWidth;
  *&v9[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_maxWidth] = v11;
  v13 = OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_widthConstraint;
  v14 = *&v9[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_widthConstraint];
  v15 = v9;
  [v14 setConstant_];
  [v15 setAlpha_];
  [v15 setBackgroundColor_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v15 widthAnchor];
  v17 = [v16 constraintEqualToConstant_];

  v18 = *&v9[v13];
  *&v9[v13] = v17;

  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C151490;
  v21 = *&v9[v13];
  *(v20 + 32) = v21;
  v22 = v21;
  v23 = [v15 heightAnchor];
  v24 = [v15 widthAnchor];

  v25 = [v23 constraintEqualToAnchor_];
  *(v20 + 40) = v25;
  sub_20B5E29D0();
  v26 = sub_20C13CC54();

  [v19 activateConstraints_];

  return v15;
}

id sub_20BAA65A0(void (*a1)(void), int a2, char *a3, uint64_t (*a4)(id))
{
  if (a1)
  {
    a1();
  }

  [a3 setAlpha_];
  result = [*&a3[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_widthConstraint] setConstant_];
  if (a4)
  {
    return a4(result);
  }

  return result;
}

id sub_20BAA6634(void (*a1)(void), int a2, char *a3)
{
  if (a1)
  {
    a1();
  }

  v4 = *&a3[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_layout + 24];

  return [a3 setAlpha_];
}

id sub_20BAA6690(uint64_t a1, uint64_t (*a2)(id))
{
  result = [*(a1 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_widthConstraint) setConstant_];
  if (a2)
  {
    return a2(result);
  }

  return result;
}

id sub_20BAA6718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackControlTransitionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20BAA67E0()
{
  result = qword_27C769C78;
  if (!qword_27C769C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769C78);
  }

  return result;
}

void sub_20BAA6834()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_state) = 0;
  v1 = OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_layout;
  if (qword_27C7609A0 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_27C79B920;
  *v2 = qword_27C79B920;
  *(v2 + 8) = xmmword_20C16A160;
  *(v2 + 24) = xmmword_20C16A170;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_highlightedWidth) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_maxWidth) = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_widthConstraint;
  v5 = objc_allocWithZone(MEMORY[0x277CCAAD0]);
  v6 = v3;
  *(v0 + v4) = [v5 init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t MetricEnterEventInterceptor.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t MetricEnterEventInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v81 = type metadata accessor for NavigationRequest();
  v78 = *(v81 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C1391E4();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134C44();
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v12 - 8);
  v68 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = &v60 - v17;
  v18 = sub_20C134F74();
  v72 = *(v18 - 8);
  v73 = v18;
  MEMORY[0x28223BE20](v18);
  v65 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = &v60 - v21;
  v61 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v61);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20C13B604();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C80);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v60 - v29;
  v31 = sub_20C135D24();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v63 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v60 - v35;
  sub_20BAA7464(v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_20BAA7938(v30);
    v37 = v79;
    sub_20BAA8228(a1, v79, type metadata accessor for NavigationRequest);
    v38 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v39 = swift_allocObject();
    sub_20BAA82F0(v37, v39 + v38, type metadata accessor for NavigationRequest);
    return sub_20C137CA4();
  }

  else
  {
    v62 = a1;
    v60 = v3;
    v41 = *(v32 + 32);
    v64 = v36;
    v41(v36, v30, v31);
    v42 = sub_20C1380C4();
    (*(v25 + 104))(v27, *MEMORY[0x277D4F8B8], v24);
    v43 = sub_20B8D7248(v27, v42);

    (*(v25 + 8))(v27, v24);
    if (v43)
    {
      sub_20BAA8228(v62, v23, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v44 = 3;
      }

      else
      {
        v44 = 0;
      }

      LODWORD(v61) = v44;
      sub_20BAA8290(v23, type metadata accessor for NavigationResource);
    }

    else
    {
      LODWORD(v61) = 0;
    }

    (*(v32 + 16))(v63, v64, v31);
    v45 = sub_20C1333A4();
    (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
    v46 = sub_20C135664();
    (*(*(v46 - 8) + 56))(v67, 1, 1, v46);
    v47 = sub_20C135674();
    (*(*(v47 - 8) + 56))(v68, 1, 1, v47);
    v48 = v69;
    sub_20C134F94();
    v49 = sub_20C134FB4();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    (*(*(v50 - 8) + 56))(v71, 1, 1, v50);
    v51 = sub_20C135F14();
    (*(*(v51 - 8) + 56))(v74, 1, 1, v51);
    v52 = v70;
    sub_20C134F54();
    v53 = v72;
    v54 = v73;
    (*(v72 + 16))(v65, v52, v73);
    v55 = v75;
    sub_20C1391F4();
    swift_getObjectType();
    sub_20B52686C(&qword_281103B30, 255, MEMORY[0x277D542C0]);
    v56 = v77;
    sub_20C13A764();
    v57 = v79;
    sub_20BAA8228(v62, v79, type metadata accessor for NavigationRequest);
    v58 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v59 = swift_allocObject();
    sub_20BAA82F0(v57, v59 + v58, type metadata accessor for NavigationRequest);
    sub_20C137CA4();
    (*(v76 + 8))(v55, v56);
    (*(v53 + 8))(v52, v54);
    return (*(v32 + 8))(v64, v31);
  }
}

uint64_t sub_20BAA7464@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationSharingURLInfo();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationRequest();
  sub_20BAA8228(v1 + *(v12 + 24), v8, type metadata accessor for NavigationSource);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20BAA82F0(v8, v11, type metadata accessor for NavigationSharingURLInfo);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764CF0);
    v21 = v20[12];
    v22 = v20[16];
    v23 = v20[20];
    v24 = *MEMORY[0x277D514C8];
    v25 = sub_20C134F84();
    (*(*(v25 - 8) + 104))(a1, v24, v25);
    v26 = sub_20C132C14();
    v27 = *(v26 - 8);
    (*(v27 + 32))(a1 + v21, v11, v26);
    (*(v27 + 56))(a1 + v21, 0, 1, v26);
    sub_20B6A69B4(&v11[*(v9 + 20)], a1 + v22);
    *(a1 + v23) = *&v11[*(v9 + 24)];
LABEL_9:
    v33 = *MEMORY[0x277D52128];
    v34 = sub_20C135D24();
    v35 = *(v34 - 8);
    (*(v35 + 104))(a1, v33, v34);
    return (*(v35 + 56))(a1, 0, 1, v34);
  }

  sub_20BAA8290(v8, type metadata accessor for NavigationSource);
  v13 = *(v1 + *(v12 + 36));
  if ((v13 & 4) != 0)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764CF0);
    v16 = v28[12];
    v17 = v28[16];
    v18 = (a1 + v28[20]);
    v19 = MEMORY[0x277D514D0];
    goto LABEL_8;
  }

  if ((~v13 & 9) == 0 || (sub_20BAA8228(v1, v5, type metadata accessor for NavigationResource), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_20BAA8290(v5, type metadata accessor for NavigationResource), EnumCaseMultiPayload == 12))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764CF0);
    v16 = v15[12];
    v17 = v15[16];
    v18 = (a1 + v15[20]);
    v19 = MEMORY[0x277D514D8];
LABEL_8:
    v29 = *v19;
    v30 = sub_20C134F84();
    (*(*(v30 - 8) + 104))(a1, v29, v30);
    v31 = sub_20C132C14();
    v32 = *(*(v31 - 8) + 56);
    v32(a1 + v16, 1, 1, v31);
    v32(a1 + v17, 1, 1, v31);
    *v18 = 0;
    v18[1] = 0;
    goto LABEL_9;
  }

  v37 = sub_20C135D24();
  return (*(*(v37 - 8) + 56))(a1, 1, 1, v37);
}

uint64_t sub_20BAA7938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_6()
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
      v7 = &qword_27C7710E0;
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

uint64_t sub_20BAA8194(uint64_t a1, uint64_t a2)
{
  result = sub_20B52686C(&qword_27C769C88, a2, type metadata accessor for MetricEnterEventInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20BAA8228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BAA8290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BAA82F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_20BAA8358(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_captionLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separator;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v15 = qword_27C79A1B0;
  v16 = *MEMORY[0x277D769D0];
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];
  if (v20)
  {
    v21 = v20;

    v19 = v21;
  }

  v22 = &v4[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_styleProvider];
  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v19 size:0.0];

  v25 = objc_opt_self();
  v26 = [v25 secondaryLabelColor];
  v27 = [v25 separatorColor];
  v28 = [v23 preferredFontForTextStyle_];
  v29 = [v25 whiteColor];
  *v22 = v18;
  *(v22 + 1) = v24;
  *(v22 + 2) = v26;
  *(v22 + 3) = v27;
  *(v22 + 4) = v28;
  *(v22 + 5) = v29;
  *(v22 + 3) = xmmword_20C1569F0;
  *(v22 + 8) = 0x4014000000000000;
  v30 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_titleLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  *&v4[v30] = v31;
  v32 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separatorHeightConstraint;
  *&v4[v32] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v109.receiver = v4;
  v109.super_class = type metadata accessor for WeekdayPlannerHeaderCell();
  v33 = objc_msgSendSuper2(&v109, sel_initWithFrame_, a1, a2, a3, a4);
  v34 = &v33[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_styleProvider];
  v35 = *&v33[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_styleProvider];
  v36 = v33;
  [v36 setBackgroundColor_];
  v37 = v36;
  v38 = [v37 layer];
  [v38 setCornerRadius_];

  v39 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_titleLabel;
  [*&v37[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_titleLabel] setFont_];
  [*&v37[v39] setTextColor_];
  LODWORD(v40) = 1148846080;
  [*&v37[v39] setContentCompressionResistancePriority:1 forAxis:v40];
  v41 = *&v37[v39];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  v42 = v41;
  sub_20C13BB94();
  LODWORD(v43) = v108;
  [v42 setContentCompressionResistancePriority:0 forAxis:v43];

  v44 = [v37 contentView];
  [v44 addSubview_];

  v45 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_captionLabel;
  [*&v37[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_captionLabel] setFont_];
  [*&v37[v45] setTextColor_];
  v46 = [v37 &selRef_setMaximumFractionDigits_];
  [v46 addSubview_];

  v47 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separator;
  v105 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separator;
  [*&v37[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separator] setBackgroundColor_];
  v48 = [v37 &selRef_setMaximumFractionDigits_];
  [v48 addSubview_];

  v49 = [*&v37[v47] heightAnchor];
  v50 = [v37 window];

  sub_20C138804();
  v52 = v51;

  v53 = [v49 constraintEqualToConstant_];
  v106 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separatorHeightConstraint;
  v54 = *&v37[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separatorHeightConstraint];
  *&v37[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separatorHeightConstraint] = v53;

  v107 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_20C165CF0;
  v56 = [*&v37[v39] leadingAnchor];
  v57 = [v37 &selRef_setMaximumFractionDigits_];
  v58 = [v57 leadingAnchor];

  v59 = [v56 constraintEqualToAnchor:v58 constant:*(v34 + 6)];
  *(v55 + 32) = v59;
  v60 = [*&v37[v39] topAnchor];
  v61 = [v37 &selRef_setMaximumFractionDigits_];
  v62 = [v61 topAnchor];

  v63 = [v60 constraintGreaterThanOrEqualToAnchor:v62 constant:*(v34 + 8)];
  *(v55 + 40) = v63;
  v64 = [*&v37[v39] bottomAnchor];
  v65 = [v37 &selRef_setMaximumFractionDigits_];
  v66 = [v65 &selRef_secondaryLabel + 5];

  v67 = [v64 constraintLessThanOrEqualToAnchor:v66 constant:-*(v34 + 8)];
  *(v55 + 48) = v67;
  v68 = [*&v37[v39] centerYAnchor];
  v69 = [v37 &selRef_setMaximumFractionDigits_];
  v70 = [v69 centerYAnchor];

  v71 = [v68 constraintEqualToAnchor_];
  *(v55 + 56) = v71;
  v72 = [*&v37[v45] leadingAnchor];
  v73 = [*&v37[v39] trailingAnchor];
  v74 = [v72 constraintGreaterThanOrEqualToAnchor:v73 constant:*(v34 + 7)];

  *(v55 + 64) = v74;
  v75 = [*&v37[v45] trailingAnchor];
  v76 = [v37 contentView];
  v77 = [v76 trailingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77 constant:-*(v34 + 6)];
  *(v55 + 72) = v78;
  v79 = [*&v37[v45] centerYAnchor];
  v80 = [*&v37[v39] centerYAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(v55 + 80) = v81;
  v82 = [*&v37[v105] leadingAnchor];
  v83 = [v37 contentView];
  v84 = [v83 leadingAnchor];

  v85 = [v82 constraintEqualToAnchor_];
  *(v55 + 88) = v85;
  v86 = [*&v37[v105] trailingAnchor];
  v87 = [v37 contentView];
  v88 = [v87 trailingAnchor];

  v89 = [v86 constraintEqualToAnchor_];
  *(v55 + 96) = v89;
  v90 = [*&v37[v105] bottomAnchor];
  v91 = [v37 contentView];
  v92 = [v91 bottomAnchor];

  v93 = [v90 constraintEqualToAnchor_];
  *(v55 + 104) = v93;
  v94 = *&v37[v106];
  *(v55 + 112) = v94;
  v95 = v94;
  v96 = [v37 contentView];
  v97 = [v96 heightAnchor];

  v98 = [v97 constraintGreaterThanOrEqualToConstant_];
  *(v55 + 120) = v98;
  v99 = [v37 contentView];

  v100 = [v99 heightAnchor];
  v101 = [v100 constraintEqualToConstant_];

  sub_20C13BBA4();
  LODWORD(v102) = v108;
  [v101 setPriority_];
  *(v55 + 128) = v101;
  sub_20B5E29D0();
  v103 = sub_20C13CC54();

  [v107 activateConstraints_];

  return v37;
}

id sub_20BAA9210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeekdayPlannerHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WeekdayPlannerHeaderCell()
{
  result = qword_27C769CC0;
  if (!qword_27C769CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BAA9378()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BAA9440(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BAA948C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BAA94E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BAA9548(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v50 - v9;
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x42)
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_titleLabel] setAttributedText_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_captionLabel] setAttributedText_];
    v20 = [v1 layer];
    [v20 setMaskedCorners_];

    sub_20C13B534();

    v21 = v1;
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v54 = v3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55[0] = v27;
      *v25 = 138543874;
      *(v25 + 4) = v21;
      *v26 = v21;
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2080;
      v57 = a1;
      v28 = sub_20B5F66D0();
      v29 = v21;
      v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
      v32 = sub_20B51E694(v30, v31, v55);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_20B517000, v22, v23, "Attempted to configure %{public}@ with item: %{mask.hash}s", v25, 0x20u);
      sub_20B520158(v26, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);

      (*(v4 + 8))(v6, v54);
      return;
    }

    v48 = *(v4 + 8);
    v49 = v6;
LABEL_12:
    v48(v49, v3);
    return;
  }

  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v14 = *(v11 + 40);
  if (v14 != 1)
  {
    v33 = *(v11 + 32);
    sub_20C13B534();
    sub_20B7C3220(v13, v12, v33, v14);
    v34 = v1;
    v35 = sub_20C13BB74();
    v36 = sub_20C13D1D4();

    sub_20B7C3288(v13, v12, v33, v14);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v54 = v3;
      v38 = v37;
      v51 = swift_slowAlloc();
      v52 = v35;
      v39 = v51;
      v53 = swift_slowAlloc();
      v57 = v53;
      *v38 = 138543874;
      *(v38 + 4) = v34;
      *v39 = v34;
      *(v38 + 12) = 2160;
      *(v38 + 14) = 1752392040;
      *(v38 + 22) = 2080;
      v55[0] = v13;
      v55[1] = v12;
      v55[2] = v33;
      v56 = v14;
      v40 = sub_20B879DC0();
      v41 = v34;
      v42 = MEMORY[0x20F2EFA40](&type metadata for WeekdayPlannerItem, v40);
      v44 = sub_20B51E694(v42, v43, &v57);

      *(v38 + 24) = v44;
      v45 = v52;
      _os_log_impl(&dword_20B517000, v52, v36, "Attempted to configure %{public}@ with weekday planner item: %{mask.hash}s", v38, 0x20u);
      v46 = v51;
      sub_20B520158(v51, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v46, -1, -1);
      v47 = v53;
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x20F2F6A40](v47, -1, -1);
      MEMORY[0x20F2F6A40](v38, -1, -1);

      (*(v4 + 8))(v10, v54);
      return;
    }

    v48 = *(v4 + 8);
    v49 = v10;
    goto LABEL_12;
  }

  v15 = *(v11 + 41);
  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_titleLabel];
  v17 = v13;
  v18 = v12;
  [v16 setAttributedText_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_captionLabel] setAttributedText_];
  v54 = [v1 layer];
  [v54 setMaskedCorners_];

  v19 = v54;
}

void sub_20BAA9AC4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_captionLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separator;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v7 = qword_27C79A1B0;
  v8 = *MEMORY[0x277D769D0];
  v9 = objc_opt_self();
  v10 = v7;
  v11 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  v12 = [v11 fontDescriptorWithSymbolicTraits_];
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  v14 = v0 + OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_styleProvider;
  v15 = objc_opt_self();
  v16 = [v15 fontWithDescriptor:v11 size:0.0];

  v17 = objc_opt_self();
  v18 = [v17 secondaryLabelColor];
  v19 = [v17 separatorColor];
  v20 = [v15 preferredFontForTextStyle_];
  v21 = [v17 whiteColor];
  *v14 = v10;
  *(v14 + 8) = v16;
  *(v14 + 16) = v18;
  *(v14 + 24) = v19;
  *(v14 + 32) = v20;
  *(v14 + 40) = v21;
  *(v14 + 48) = xmmword_20C1569F0;
  *(v14 + 64) = 0x4014000000000000;
  v22 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_titleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  *(v0 + v22) = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI24WeekdayPlannerHeaderCell_separatorHeightConstraint;
  *(v0 + v24) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BAA9E0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20BAA9E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Platform.previousCustomPlansLimit.getter(unsigned __int8 a1)
{
  if (a1 >= 3u)
  {
    return 6;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

id AccountButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_20BAAA100()
{
  v1 = sub_20C13C514();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = sub_20C13C4B4();
  MEMORY[0x28223BE20](v7);
  v8 = OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightTask;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightTask))
  {

    sub_20C13C534();
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20BAAACEC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_21_1;
  _Block_copy(aBlock);
  v19 = MEMORY[0x277D84F90];
  sub_20B7E9080();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  sub_20C13C544();
  swift_allocObject();
  v10 = sub_20C13C524();

  *(v0 + v8) = v10;

  sub_20B51C88C(0, &qword_281100530);
  v11 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13C574();
  v12 = *(v17 + 8);
  v13 = v3;
  v14 = v18;
  v12(v13, v18);
  sub_20C13D324();

  return (v12)(v6, v14);
}

void sub_20BAAA40C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightView) alpha];
    if (round(v2 * 1000000.0) != 400000.0)
    {
      v3 = objc_opt_self();
      v4 = [v3 smu_coreAnimationDefaultCurve];
      if ((v4 & 0xFFFFFFFFFFFFFFF9) != 0)
      {
        v5 = v4 | 6;
      }

      else
      {
        v5 = 6;
      }

      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      *(v6 + 24) = 0x3FD999999999999ALL;
      aBlock[4] = sub_20BAAAE60;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_28_3;
      v7 = _Block_copy(aBlock);
      v8 = v1;

      [v3 animateWithDuration:v5 delay:v7 options:0 animations:0.17 completion:0.0];
      _Block_release(v7);
    }
  }
}

void sub_20BAAA67C(char a1)
{
  if (a1)
  {
    v3 = 0.4;
  }

  else
  {
    v3 = 0.0;
  }

  [*&v1[OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightView] alpha];
  if (round(v3 * 1000000.0) != round(v4 * 1000000.0))
  {
    v5 = objc_opt_self();
    v6 = [v5 smu_coreAnimationDefaultCurve];
    if (a1)
    {
      v7 = 0.17;
    }

    else
    {
      v7 = 0.3;
    }

    if ((v6 & 0xFFFFFFFFFFFFFFF9) != 0)
    {
      v8 = v6 | 6;
    }

    else
    {
      v8 = 6;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v3;
    v12[4] = sub_20BAAACCC;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_20B7B548C;
    v12[3] = &block_descriptor_76;
    v10 = _Block_copy(v12);
    v11 = v1;

    [v5 animateWithDuration:v8 delay:v10 options:0 animations:v7 completion:0.0];
    _Block_release(v10);
  }
}

void sub_20BAAA818()
{
  v1 = OBJC_IVAR____TtC9SeymourUI13AccountButton_avatarViewController;
  if (!*&v0[OBJC_IVAR____TtC9SeymourUI13AccountButton_avatarViewController])
  {
    v2 = [objc_allocWithZone(SMUAvatarViewController) init];
    v3 = [v2 view];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 setHidden_];
    [v3 setUserInteractionEnabled_];
    [v0 addSubview_];
    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_20C14FE90;
    v6 = [v3 leadingAnchor];
    v7 = [v0 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v3 trailingAnchor];
    v10 = [v0 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    v12 = [v3 topAnchor];
    v13 = [v0 topAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v5 + 48) = v14;
    v15 = [v3 bottomAnchor];
    v16 = [v0 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v5 + 56) = v17;
    sub_20B51C88C(0, &qword_281100500);
    v18 = sub_20C13CC54();

    [v4 activateConstraints_];

    v19 = *&v0[v1];
    *&v0[v1] = v2;
  }
}

id AccountButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BAAACF4()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI13AccountButton_imageView;
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_opt_self() blackColor];
  [v5 setBackgroundColor_];

  [v5 setAlpha_];
  *(v0 + v4) = v5;
  v7 = (v0 + OBJC_IVAR____TtC9SeymourUI13AccountButton_layout);
  sub_20C13D514();
  *v7 = v8;
  v7[1] = v9;
  *(v0 + OBJC_IVAR____TtC9SeymourUI13AccountButton_avatarViewController) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI13AccountButton_highlightTask) = 0;
  sub_20C13DE24();
  __break(1u);
}

id sub_20BAAAE6C(uint64_t a1, double a2)
{
  v4 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_20C14F320;
  v7 = *MEMORY[0x277D76920];
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];

  v14 = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 40) = v13;
  v15 = *MEMORY[0x277D740C0];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = v15;
  if (sub_20C1380F4() == 3)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.607843137 alpha:1.0];
  }

  else
  {
    v17 = [objc_opt_self() systemGrayColor];
  }

  v18 = v17;
  *(inited + 104) = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 80) = v18;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v19 = a2 / 60.0;
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v20 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v22 = [v20 stringFromNumber_];

  if (v22)
  {
    v23 = sub_20C13C954();
    v25 = v24;

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C14F320;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = sub_20B5D91B8();
    *(v28 + 64) = v30;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    sub_20B5F6EB0();

    v31 = sub_20C13D9D4();
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v31;
    *(v28 + 80) = v32;

    v33 = sub_20C13C924();
    v35 = v34;

    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218);
      sub_20B6D6ABC(&qword_27C766B60, &qword_27C765218);
      v36 = sub_20C13C824();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_20C14F320;
      *(v39 + 32) = v33;
      *(v39 + 40) = v35;
      *(v39 + 48) = v36;
      *(v39 + 56) = v38;
      sub_20C13C824();

      v40 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v41 = sub_20C13C914();

      type metadata accessor for Key(0);
      sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
      v42 = sub_20C13C744();

      v4 = [v40 initWithString:v41 attributes:{v42, 0xE000000000000000}];
    }

    else
    {
      v44 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v45 = sub_20C13C914();

      type metadata accessor for Key(0);
      sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
      v46 = sub_20C13C744();

      v4 = [v44 initWithString:v45 attributes:{v46, 0xE000000000000000}];
    }
  }

  else
  {
    sub_20BA18E84();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
  }

  return v4;
}

uint64_t SummaryStringBuilder.init(unitPreferencesProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  *(a3 + 32) = v9;
  *(a3 + 40) = v11;
  v12 = [v7 bundleForClass_];
  v13 = sub_20C132964();
  v15 = v14;

  *(a3 + 48) = v13;
  *(a3 + 56) = v15;
  *(a3 + 64) = 2;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *a3 = a1;
  *(a3 + 8) = a2;

  return swift_unknownObjectRetain();
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_20BAAB6C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_20BAAB70C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryStringBuilder.FontStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for SummaryStringBuilder.FontStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20BAAB8D4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_20BAAB8E8(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *sub_20BAAB954(double a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = v3[1];
  v7 = *(v3 + 2);
  v26 = *(v3 + 1);
  v27 = v7;
  v28 = *(v3 + 3);
  v29 = *(v3 + 32);
  v25[0] = v5;
  v25[1] = v6;
  ObjectType = swift_getObjectType();
  v9 = sub_20BEC6C70(ObjectType, v6, a1);
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v10 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v12 = [v10 stringFromNumber_];

  if (v12)
  {
    v13 = sub_20C13C954();
    v15 = v14;

    v16 = sub_20BEC6B94(ObjectType, v6);
    if (qword_27C760920 != -1)
    {
      swift_once();
    }

    v17 = [qword_27C76A548 unitStringFromValue:qword_20C16A6D8[v16] unit:v9];
    sub_20C13C954();

    sub_20B5F6EB0();
    v18 = sub_20C13D9E4();
    v20 = v19;

    v24[0] = v13;
    v24[1] = v15;
    v24[2] = v18;
    v24[3] = v20;
    v5 = v25;
    sub_20BAAEC1C(v24, &selRef_energyColors);
    if (!v2)
    {
      v5 = v21;
    }
  }

  else
  {
    sub_20BA18E84();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_20BAABBCC(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  ObjectType = swift_getObjectType();
  v7 = sub_20BEC6C70(ObjectType, v5, a1);
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v8 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = [v8 stringFromNumber_];

  if (v10)
  {
    v11 = sub_20C13C954();
    v13 = v12;

    v14 = sub_20BEC6B94(ObjectType, v5);
    if (qword_27C760920 != -1)
    {
      swift_once();
    }

    v15 = [qword_27C76A548 unitStringFromValue:qword_20C16A6D8[v14] unit:v7];
    sub_20C13C954();

    sub_20B5F6EB0();
    v16 = MEMORY[0x277D837D0];
    v17 = sub_20C13D9E4();
    v19 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20C14F320;
    *(v20 + 56) = v16;
    v21 = sub_20B5D91B8();
    *(v20 + 32) = v11;
    *(v20 + 40) = v13;
    *(v20 + 96) = v16;
    *(v20 + 104) = v21;
    *(v20 + 64) = v21;
    *(v20 + 72) = v17;
    *(v20 + 80) = v19;
    v4 = sub_20C13C924();
  }

  else
  {
    sub_20BA18E84();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  return v4;
}

id sub_20BAABE50()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

void *sub_20BAABFD0(double a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = v3[1];
  v7 = *(v3 + 2);
  v25 = *(v3 + 1);
  v26 = v7;
  v27 = *(v3 + 3);
  v28 = *(v3 + 32);
  v24[0] = v5;
  v24[1] = v6;
  ObjectType = swift_getObjectType();
  v9 = sub_20BEC6D50(ObjectType, v6, 0.1);
  if (v9 <= a1)
  {
    v10 = sub_20BEC6E1C(ObjectType, v6, a1);
    v11 = 2;
  }

  else
  {
    v10 = sub_20BEC6E04(ObjectType, v6, a1);
    v11 = 0;
  }

  if (qword_27C760938 != -1)
  {
    swift_once();
  }

  v12 = qword_27C76A560;
  [qword_27C76A560 setMinimumFractionDigits_];
  [v12 setMaximumFractionDigits_];
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v14 = [v12 stringFromNumber_];

  if (v14)
  {
    v15 = sub_20C13C954();
    v17 = v16;

    if (v9 <= a1)
    {
      v18 = sub_20BEC6D38(ObjectType, v6);
    }

    else
    {
      v18 = sub_20BEC6E34(ObjectType, v6);
    }

    v23[0] = v15;
    v23[1] = v17;
    v23[2] = sub_20BB0A218(v18);
    v23[3] = v20;
    v5 = v24;
    sub_20BAAEC1C(v23, &selRef_distanceColors);
    if (!v2)
    {
      v5 = v21;
    }
  }

  else
  {
    sub_20BA18E84();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }

  return v5;
}

id sub_20BAAC21C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

void sub_20BAAC3D4(void *a1, void **a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_20BAB01A0();
    swift_allocError();
    v4 = 1;
LABEL_13:
    *v3 = v4;
    swift_willThrow();
    return;
  }

  if (*a1 != -1)
  {
    v22 = a2;
    v23 = a3;
    swift_once();
    a2 = v22;
    a3 = v23;
  }

  v5 = *a2;
  if (a3 <= 3600.0)
  {
    v6 = 192;
  }

  else
  {
    v6 = 224;
  }

  v7 = a3;
  [v5 setAllowedUnits_];
  v8 = [v5 stringFromTimeInterval_];
  if (!v8)
  {
    sub_20BA18E84();
    swift_allocError();
    v4 = 2;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = sub_20C13C954();
  v12 = v11;

  v13 = [objc_opt_self() elapsedTimeColors];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 nonGradientTextColor];

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_20C14F320;
      v17 = MEMORY[0x277D837D0];
      *(v16 + 56) = MEMORY[0x277D837D0];
      v18 = sub_20B5D91B8();
      *(v16 + 32) = v10;
      *(v16 + 40) = v12;
      *(v16 + 96) = v17;
      *(v16 + 104) = v18;
      *(v16 + 64) = v18;
      *(v16 + 72) = 0;
      *(v16 + 80) = 0xE000000000000000;

      v19 = sub_20C13C924();
      v21 = v20;

      sub_20BAACEB0(v19, v21, v10, v12, 0, 0xE000000000000000, v15, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20BAAC694()
{
  v0 = sub_20C1380F4();
  v1 = *MEMORY[0x277D74368];
  if (v0 == 3)
  {
    v2 = *MEMORY[0x277D74420];
    v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v5 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
    v6 = swift_initStackObject();
    v7 = MEMORY[0x277D74430];
    *(v6 + 16) = xmmword_20C14F980;
    v8 = *v7;
    *(v6 + 32) = *v7;
    *(v6 + 40) = v2;
    v9 = v5;
    v10 = v8;
    v11 = sub_20B6B134C(v6);
    swift_setDeallocating();
    sub_20B520158(v6 + 32, &unk_27C773200);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
    *(inited + 40) = v11;
    sub_20B6B143C(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C773210);
    type metadata accessor for AttributeName(0);
    sub_20B941F60(&qword_27C7618A0, type metadata accessor for AttributeName);
    v12 = sub_20C13C744();

    v13 = [v3 fontDescriptorByAddingAttributes_];

    v14 = [v13 fontDescriptorWithDesign_];
    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = *MEMORY[0x277D74410];
  v16 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_20C14F980;
  v18 = *MEMORY[0x277D74380];
  *(v17 + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v19 = swift_initStackObject();
  v20 = MEMORY[0x277D74430];
  *(v19 + 16) = xmmword_20C14F980;
  v21 = *v20;
  *(v19 + 32) = *v20;
  *(v19 + 40) = v15;
  v22 = v18;
  v23 = v21;
  v24 = sub_20B6B134C(v19);
  swift_setDeallocating();
  sub_20B520158(v19 + 32, &unk_27C773200);
  *(v17 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(v17 + 40) = v24;
  sub_20B6B143C(v17);
  swift_setDeallocating();
  sub_20B520158(v17 + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B941F60(&qword_27C7618A0, type metadata accessor for AttributeName);
  v25 = sub_20C13C744();

  v13 = [v16 fontDescriptorByAddingAttributes_];

  v14 = [v13 fontDescriptorWithDesign_];
  if (v14)
  {
LABEL_5:
    v26 = v14;

    v13 = v26;
  }

LABEL_6:
  v27 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

  return v27;
}

id sub_20BAACB20()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:10.0 weight:v0];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v9 = swift_initStackObject();
  v10 = MEMORY[0x277D74430];
  *(v9 + 16) = xmmword_20C14F980;
  v11 = *v10;
  *(v9 + 32) = *v10;
  *(v9 + 40) = v0;
  v12 = v8;
  v13 = v11;
  v14 = sub_20B6B134C(v9);
  swift_setDeallocating();
  sub_20B520158(v9 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v14;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B941F60(&qword_27C7618A0, type metadata accessor for AttributeName);
  v15 = sub_20C13C744();

  v16 = [v4 fontDescriptorByAddingAttributes_];

  v17 = [v16 fontDescriptorWithDesign_];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  v19 = [v2 fontWithDescriptor:v16 size:{0.0, 1, 2}];

  return v19;
}

id sub_20BAACDE0()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    v2 = sub_20C1380F4();
    v3 = objc_opt_self();
    if (v2 == 3)
    {
      v4 = [v3 preferredFontForTextStyle_];
    }

    else
    {
      v4 = [v3 preferredFontForTextStyle_];
    }
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      return sub_20BAACB20();
    }

    v4 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x277D74410]];
  }

  return v4;
}

id sub_20BAACEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v88 = a8;
  v87 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v85 - v16;
  v89 = *(v8 + 64);
  if (!a3 && a4 == 0xE000000000000000 || (sub_20C13DFF4() & 1) != 0)
  {
    v18 = 0;
    v19 = 0;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v92 = a1;
    v93 = a2;
    v90 = a3;
    v91 = a4;
    v35 = sub_20C132FD4();
    (*(*(v35 - 8) + 56))(v17, 1, 1, v35);
    sub_20B5F6EB0();
    v36 = sub_20C13DA24();
    v38 = v37;
    v40 = v39;
    sub_20B520158(v17, &qword_27C76FEB0);
    if (v40)
    {
      goto LABEL_22;
    }

    v92 = v36;
    v93 = v38;
    v90 = a1;
    v91 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768748);
    sub_20B6D6ABC(&qword_27C768750, &qword_27C768748);
    v18 = sub_20C13D8A4();
    v19 = v41;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  if (a6 == 0xE000000000000000)
  {
LABEL_7:
    v20 = 0;
    v21 = 0;
    goto LABEL_8;
  }

LABEL_6:
  if (sub_20C13DFF4())
  {
    goto LABEL_7;
  }

  v92 = a1;
  v93 = a2;
  v90 = a5;
  v91 = a6;
  v42 = sub_20C132FD4();
  (*(*(v42 - 8) + 56))(v17, 1, 1, v42);
  sub_20B5F6EB0();
  v43 = sub_20C13DA24();
  v45 = v44;
  v47 = v46;
  sub_20B520158(v17, &qword_27C76FEB0);
  if (v47)
  {
LABEL_22:
    sub_20BAB01A0();
    v48 = swift_allocError();
    *v49 = 2;
    swift_willThrow();
    return v48;
  }

  v92 = v43;
  v93 = v45;
  v90 = a1;
  v91 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768748);
  sub_20B6D6ABC(&qword_27C768750, &qword_27C768748);
  v20 = sub_20C13D8A4();
  v21 = v62;
LABEL_8:
  v22 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v23 = sub_20C13C914();
  v24 = [v22 initWithString_];

  v25 = *MEMORY[0x277D740C0];
  v26 = v87;
  [v24 addAttribute:*MEMORY[0x277D740C0] value:v87 range:{v18, v19}];
  v87 = v20;
  v85 = v21;
  [v24 addAttribute:v25 value:v26 range:{v20, v21}];
  v27 = v89;
  v86 = v18;
  if (v88)
  {
    if (v89 == 2)
    {
      v51 = *MEMORY[0x277D74368];
      v28 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
      v29 = [v28 fontDescriptorWithDesign_];
      if (v29)
      {
        v30 = v29;

        v28 = v30;
      }

      v31 = v19;
      v32 = [objc_opt_self() fontWithDescriptor:v28 size:0.0];
    }

    else
    {
      v50 = *MEMORY[0x277D74410];
      v51 = *MEMORY[0x277D74368];
      v52 = objc_opt_self();
      v53 = v52;
      if ((v89 & 0x100) != 0)
      {
        v54 = [v52 systemFontOfSize:30.0 weight:v50];
        v28 = [v54 fontDescriptor];
        v63 = [v28 fontDescriptorWithDesign_];
        if (v63)
        {
          v64 = v63;

          v28 = v64;
        }
      }

      else
      {
        v54 = [v52 systemFontOfSize:24.0 weight:v50];
        v28 = [v54 fontDescriptor];
        v55 = [v28 fontDescriptorWithDesign_];
        if (v55)
        {
          v56 = v55;

          v28 = v56;
        }
      }

      v31 = v19;
      v32 = [v53 fontWithDescriptor:v28 size:0.0];
    }

    v65.super.isa = UIFont.centeredColonsVersion()().super.isa;
    goto LABEL_42;
  }

  if (v89 == 2)
  {
    v51 = *MEMORY[0x277D74368];
    v32 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
    v33 = [v32 fontDescriptorWithDesign_];
    if (v33)
    {
      v34 = v33;
      v31 = v19;

      v32 = v34;
    }

    else
    {
      v31 = v19;
    }

    v65.super.isa = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    v27 = 2;
    goto LABEL_42;
  }

  v57 = *MEMORY[0x277D74410];
  v51 = *MEMORY[0x277D74368];
  v58 = objc_opt_self();
  v59 = v58;
  if ((v89 & 0x100) != 0)
  {
    v60 = [v58 systemFontOfSize:30.0 weight:v57];
    v32 = [v60 fontDescriptor];
    v61 = [v32 fontDescriptorWithDesign_];
    if (!v61)
    {
      v31 = v19;
      goto LABEL_41;
    }
  }

  else
  {
    v60 = [v58 systemFontOfSize:24.0 weight:v57];
    v32 = [v60 fontDescriptor];
    v61 = [v32 fontDescriptorWithDesign_];
    if (!v61)
    {
      v31 = v19;
      goto LABEL_41;
    }
  }

  v66 = v61;
  v31 = v19;

  v32 = v66;
LABEL_41:
  v65.super.isa = [v59 fontWithDescriptor:v32 size:0.0];

LABEL_42:
  isa = UIFont.shortSlashVersion()().super.isa;
  v68.super.isa = UIFont.smallCapsVersion()().super.isa;

  v69 = *MEMORY[0x277D740A8];
  if (v27 == 2)
  {
    v70 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
    v71 = [v70 fontDescriptorWithDesign_];
    v72 = v87;
    if (v71)
    {
      v73 = v71;

      v70 = v73;
    }

    v74 = v86;
    v75 = [objc_opt_self() fontWithDescriptor:v70 size:0.0];
  }

  else
  {
    v76 = *MEMORY[0x277D74410];
    v77 = objc_opt_self();
    v78 = v77;
    if ((v89 & 0x100) != 0)
    {
      v79 = [v77 systemFontOfSize:30.0 weight:v76];
      v70 = [v79 fontDescriptor];
      v82 = [v70 fontDescriptorWithDesign_];
      if (v82)
      {
        v83 = v82;

        v70 = v83;
      }
    }

    else
    {
      v79 = [v77 systemFontOfSize:24.0 weight:v76];
      v70 = [v79 fontDescriptor];
      v80 = [v70 fontDescriptorWithDesign_];
      if (v80)
      {
        v81 = v80;

        v70 = v81;
      }
    }

    v74 = v86;
    v75 = [v78 fontWithDescriptor:v70 size:0.0];

    v72 = v87;
  }

  [v24 addAttribute:v69 value:v75 range:{v74, v31}];
  [v24 addAttribute:v69 value:v68.super.isa range:{v72, v85}];
  v48 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v48;
}

unint64_t sub_20BAAD990()
{
  if (*(v0 + 64) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F320;
    v2 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v3 = v2;
    v4 = sub_20BAACDE0();
    v5 = sub_20B51C88C(0, &qword_27C767A60);
    *(inited + 40) = v4;
    v6 = *MEMORY[0x277D740C0];
    *(inited + 64) = v5;
    *(inited + 72) = v6;
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:dbl_20C16A500[sub_20C1380F4() == 3] alpha:1.0];
    *(inited + 104) = sub_20B51C88C(0, &qword_27C762070);
    *(inited + 80) = v8;
    v9 = sub_20B6B1650(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
    swift_arrayDestroy();
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v10 setAlignment_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_20C1517D0;
    v12 = *MEMORY[0x277D740A8];
    *(v11 + 32) = *MEMORY[0x277D740A8];
    v13 = v12;
    v14 = sub_20BAACDE0();
    v15 = sub_20B51C88C(0, &qword_27C767A60);
    *(v11 + 40) = v14;
    v16 = *MEMORY[0x277D74118];
    *(v11 + 64) = v15;
    *(v11 + 72) = v16;
    v17 = sub_20B51C88C(0, &qword_27C769D08);
    *(v11 + 80) = v10;
    v18 = *MEMORY[0x277D740C0];
    *(v11 + 104) = v17;
    *(v11 + 112) = v18;
    v19 = objc_opt_self();
    v20 = v16;
    v21 = v10;
    v22 = v18;
    v23 = [v19 whiteColor];
    v24 = [v23 colorWithAlphaComponent_];

    *(v11 + 144) = sub_20B51C88C(0, &qword_27C762070);
    *(v11 + 120) = v24;
    v9 = sub_20B6B1650(v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
    swift_arrayDestroy();
  }

  return v9;
}

uint64_t sub_20BAADCAC()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  sub_20BEC6B94(ObjectType, v1);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_20C132964();

  return v5;
}

uint64_t sub_20BAADDCC()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  sub_20BEC6B94(ObjectType, v1);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_20C132964();

  return v5;
}

uint64_t sub_20BAADFB8()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  sub_20BEC6B94(ObjectType, v1);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_20C132964();

  return v5;
}

id sub_20BAAE118()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

id sub_20BAAE2E0()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

_OWORD *sub_20BAAE460(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_20BAB01A0();
LABEL_10:
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    return v1;
  }

  v4 = *(v1 + 5);
  v27 = *(v1 + 4);
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v5 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v7 = [v5 stringFromNumber_];

  if (!v7)
  {
    sub_20BA18E84();
    goto LABEL_10;
  }

  v25 = sub_20C13C954();
  v9 = v8;

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_20C132964();
  v14 = v13;

  v26 = sub_20C138BA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14F320;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v17 = sub_20B5D91B8();
  *(v15 + 32) = v25;
  *(v15 + 40) = v9;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = v12;
  *(v15 + 80) = v14;

  v18 = sub_20C13C924();
  v20 = v19;

  v21 = v1[1];
  v28[0] = *v1;
  v28[1] = v21;
  v29 = v27;
  v30 = v4;
  v31 = v1[3];
  v32 = *(v1 + 32);
  v1 = v28;
  v22 = sub_20BAACEB0(v18, v20, v25, v9, v12, v14, v26, 0);
  if (!v2)
  {
    v1 = v22;
  }

  return v1;
}

id sub_20BAAE77C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

id sub_20BAAE8FC()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

id sub_20BAAEA7C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

void sub_20BAAEC1C(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = [objc_opt_self() *a2];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 nonGradientTextColor];

    v17 = v8;
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_20C14F320;
      v10 = MEMORY[0x277D837D0];
      *(v9 + 56) = MEMORY[0x277D837D0];
      v11 = sub_20B5D91B8();
      *(v9 + 32) = v3;
      *(v9 + 40) = v2;
      *(v9 + 96) = v10;
      *(v9 + 104) = v11;
      *(v9 + 64) = v11;
      *(v9 + 72) = v5;
      *(v9 + 80) = v4;

      v16 = v4;
      v12 = v2;
      v13 = sub_20C13C924();
      v15 = v14;

      sub_20BAACEB0(v13, v15, v3, v12, v5, v16, v17, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20BAAEDB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76A20];
  v4 = v1;
  v5 = [v2 preferredFontForTextStyle_];
  v6 = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x277D740C0];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v7;
  if (sub_20C1380F4() == 3)
  {
    v9 = [objc_opt_self() whiteColor];
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  }

  v10 = v9;
  *(inited + 104) = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 80) = v10;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_20C13C914();
  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v13 = sub_20C13C744();

  v14 = [v11 initWithString:v12 attributes:v13];

  return v14;
}

id sub_20BAAF004()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

id sub_20BAAF18C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

void sub_20BAAF30C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_20C09DDC4(v3, &v18);
  if (!v1)
  {
    v5 = v18;
    v4 = v19;
    v6 = v20;
    sub_20C09DDF0(v3, &v18);
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v18 = v2;
    v19 = v3;
    v10 = *(v0 + 32);
    v20 = *(v0 + 16);
    v21 = v10;
    v22 = *(v0 + 48);
    v23 = *(v0 + 64);
    v16[0] = v5;
    v16[1] = v4;
    v17 = v6;
    v14[0] = v7;
    v14[1] = v8;
    v15 = v9;
    v11 = [objc_opt_self() energyColors];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 nonGradientTextColor];

      if (v13)
      {
        sub_20BAAFA28(v16, v14, v13);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_20BAAF484()
{
  v1 = v0;
  sub_20C133974();
  v3 = v2;
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v4 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v31 = sub_20C13C954();
    v33 = v7;

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    v11 = sub_20C132964();
    v32 = v12;

    sub_20C133964();
    v14 = v13;
    [v4 setMaximumFractionDigits_];
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v16 = [v4 stringFromNumber_];

    if (v16)
    {
      v17 = sub_20C13C954();
      v19 = v18;

      v20 = [v9 bundleForClass_];
      v21 = sub_20C132964();
      v23 = v22;

      v24 = v1[3];
      v38 = v1[2];
      v39 = v24;
      v40 = *(v1 + 32);
      v25 = v1[1];
      v36 = *v1;
      v37 = v25;
      v35[0] = v31;
      v35[1] = v33;
      v35[2] = v11;
      v35[3] = v32;
      v34[0] = v17;
      v34[1] = v19;
      v34[2] = v21;
      v34[3] = v23;
      v26 = [objc_opt_self() briskColors];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 nonGradientTextColor];

        if (v28)
        {
          sub_20BAAFA28(v35, v34, v28);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      sub_20BA18E84();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_20BA18E84();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
  }
}

void sub_20BAAF890()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_20C133974();
  sub_20BB09618(&v20, v4);
  if (!v1)
  {
    v6 = v20;
    v5 = v21;
    v7 = v22;
    sub_20C133964();
    sub_20BB09618(&v20, v8);
    v9 = v20;
    v10 = v21;
    v11 = v22;
    v20 = v2;
    v21 = v3;
    v12 = *(&v22 + 1);
    v13 = *(v0 + 32);
    v22 = *(v0 + 16);
    v23 = v13;
    v24 = *(v0 + 48);
    v25 = *(v0 + 64);
    v18[0] = v6;
    v18[1] = v5;
    v19 = v7;
    v17[0] = v9;
    v17[1] = v10;
    v17[2] = v11;
    v17[3] = v12;
    v14 = [objc_opt_self() sedentaryColors];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 nonGradientTextColor];

      if (v16)
      {
        sub_20BAAFA28(v18, v17, v16);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_20BAAFA28(uint64_t *a1, id *a2, void *a3)
{
  v69 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v54 - v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v55 = *a2;
  v56 = v11;
  v13 = v3[3];
  v66 = v3[2];
  v67 = v13;
  v68 = *(v3 + 32);
  v14 = v3[1];
  v64 = *v3;
  v65 = v14;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();

  v17 = [v16 bundleForClass_];
  sub_20C132964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C1517D0;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v20 = sub_20B5D91B8();
  *(v18 + 32) = v8;
  *(v18 + 40) = v9;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  v21 = v55;
  *(v18 + 64) = v20;
  *(v18 + 72) = v21;
  *(v18 + 80) = v10;
  *(v18 + 136) = v19;
  *(v18 + 144) = v20;
  v22 = v56;
  *(v18 + 112) = v56;
  *(v18 + 120) = v12;

  v23 = sub_20C13C924();
  v25 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v27 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v61 = v66;
  v62 = v67;
  v63 = v68;
  v59 = v64;
  v60 = v65;
  v55 = v27;
  v28 = sub_20BAAC694();
  v29 = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 40) = v28;
  v30 = *MEMORY[0x277D740C0];
  *(inited + 64) = v29;
  *(inited + 72) = v30;
  *(inited + 104) = sub_20B51C88C(0, &qword_27C762070);
  v31 = v69;
  *(inited + 80) = v69;
  v32 = v30;
  v33 = v31;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v35 = sub_20C13C914();
  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v36 = sub_20C13C744();

  v37 = [v34 initWithString:v35 attributes:v36];

  if (!v22 && v12 == 0xE000000000000000 || (sub_20C13DFF4() & 1) != 0)
  {

    v38 = 0;
    v39 = 0;
  }

  else
  {
    *&v59 = v23;
    *(&v59 + 1) = v25;
    v57 = v22;
    v58 = v12;
    v45 = sub_20C132FD4();
    v46 = v54;
    (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
    sub_20B5F6EB0();
    v47 = sub_20C13DA24();
    v49 = v48;
    v51 = v50;
    sub_20B520158(v46, &qword_27C76FEB0);
    if (v51)
    {

      sub_20BAB01A0();
      v43 = swift_allocError();
      *v52 = 2;
      swift_willThrow();

      return v43;
    }

    *&v59 = v47;
    *(&v59 + 1) = v49;
    v57 = v23;
    v58 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768748);
    sub_20B6D6ABC(&qword_27C768750, &qword_27C768748);
    v38 = sub_20C13D8A4();
    v39 = v53;
  }

  v61 = v66;
  v62 = v67;
  v63 = v68;
  v59 = v64;
  v60 = v65;
  v40 = sub_20BAAC694();
  isa = UIFont.shortSlashVersion()().super.isa;

  v42 = UIFont.smallCapsVersion()().super.isa;
  [v37 addAttribute:v55 value:v42 range:{v38, v39}];
  v43 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v43;
}

id sub_20BAB0020()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20BAAD990();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key);
  v4 = sub_20C13C744();

  v5 = [v2 initWithString:v3 attributes:{v4, 0xE000000000000000}];

  return v5;
}

unint64_t sub_20BAB01A0()
{
  result = qword_27C769D00;
  if (!qword_27C769D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769D00);
  }

  return result;
}

unint64_t sub_20BAB0218()
{
  result = qword_27C769D10;
  if (!qword_27C769D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769D10);
  }

  return result;
}