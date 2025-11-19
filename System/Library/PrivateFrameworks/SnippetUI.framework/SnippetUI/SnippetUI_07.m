uint64_t sub_26A5416D8(char a1, double a2, double a3)
{
  result = swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(v3 + 24);
  v12 = 1;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = 0.0;
  v18 = 1.79769313e308;
  v19 = 1;
  while (v15)
  {
LABEL_9:
    v21 = __clz(__rbit64(v15)) | (v10 << 6);
    v15 &= v15 - 1;
    result = *(v11 + 56) + 16 * v21;
    v22 = *(result + 8);
    v23 = vabdd_f64(v22, a2) < 0.01 || v22 <= a2;
    if (!v23 && ((v24 = *result, vabdd_f64(a3, *result) >= 0.01) ? (v25 = v24 < a3) : (v25 = 0), v25))
    {
      if (v22 > a3)
      {
        v22 = a3;
      }

      if (v24 <= a2)
      {
        v24 = a2;
      }

      v28 = vabdd_f64(v24, v22);
      result = v17 >= v28;
      if (v17 < v28)
      {
        v9 = *(*(v11 + 48) + 8 * v21);
      }

      v19 &= result;
      if (v17 < v28)
      {
        v17 = v28;
      }
    }

    else if ((a1 & 1) != 0 && vabdd_f64(a2, v22) >= 0.01 && v22 < a2 && a2 - v22 < v18)
    {
      v12 = 0;
      v8 = *(*(v11 + 48) + 8 * v21);
      v18 = a2 - v22;
    }
  }

  while (1)
  {
    v20 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v16)
    {
      break;
    }

    v15 = *(v11 + 64 + 8 * v20);
    ++v10;
    if (v15)
    {
      v10 = v20;
      goto LABEL_9;
    }
  }

  if (v12)
  {
    v8 = 0;
  }

  if (v19)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

BOOL sub_26A541858()
{
  sub_26A540D10();
  v1 = v0;
  sub_26A540D10();
  v3 = vabdd_f64(v1, v2);
  v4 = sub_26A540D10();
  v6 = v5;
  v7 = sub_26A540D10();
  if (v3 < 0.01)
  {
    if (vabdd_f64(v4, v7) >= 0.01)
    {
      return v7 < v4;
    }

    return 0;
  }

  if (vabdd_f64(v6, v8) < 0.01)
  {
    return 0;
  }

  return v8 < v6;
}

uint64_t sub_26A541908()
{

  return v0;
}

uint64_t sub_26A541948()
{
  sub_26A541908();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_26A5419D0()
{
  sub_26A541A7C();
  if (v0 <= 0x3F)
  {
    sub_26A54532C(319, &qword_2803ACCC0, MEMORY[0x277CC95F0], type metadata accessor for CGRect);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26A541A7C()
{
  if (!qword_2803ACCB8)
  {
    sub_26A850798();
    type metadata accessor for CGPoint();
    type metadata accessor for CGRect();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2803ACCB8);
    }
  }
}

void *sub_26A541B48()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v3;
  v0[4] = 0;
  v0[5] = v2;
  v0[6] = v2;
  return result;
}

uint64_t sub_26A541B6C()
{
  v2 = OUTLINED_FUNCTION_2_11();
  v3(v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 32))(v0, v1);
  return v0;
}

void sub_26A541BC4(uint64_t *a1)
{
  v2 = *(type metadata accessor for SmartDialogCollatableItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A544FB8();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_26A541C6C(v6);
  *a1 = v3;
}

void sub_26A541C6C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SmartDialogCollatableItem(0);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SmartDialogCollatableItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26A542570(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A541D9C(0, v2, 1, a1);
  }
}

void sub_26A541D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SmartDialogCollatableItem(0);
  MEMORY[0x28223BE20](v8);
  v65 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v54 - v11;
  MEMORY[0x28223BE20](v12);
  v70 = &v54 - v13;
  MEMORY[0x28223BE20](v14);
  v69 = &v54 - v15;
  MEMORY[0x28223BE20](v16);
  v68 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v72 = &v54 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  MEMORY[0x28223BE20](v26);
  v29 = &v54 - v28;
  v56 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v27 + 72);
    v66 = v72 + 8;
    v67 = v22 + 8;
    v61 = v71 + 8;
    v62 = v70 + 8;
    v32 = v30 + v31 * (a3 - 1);
    v63 = -v31;
    v64 = v30;
    v33 = a1 - a3;
    v55 = v31;
    v34 = v30 + v31 * a3;
    while (2)
    {
      v59 = v32;
      v60 = a3;
      v57 = v34;
      v58 = v33;
      v35 = v32;
      while (1)
      {
        sub_26A544FD0();
        sub_26A544FD0();
        sub_26A544FD0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
          v37 = sub_26A84ACC8();
        }

        else
        {
          v36 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
          v37 = sub_26A850798();
        }

        v38 = *&v67[*v36];
        (*(*(v37 - 8) + 8))(v22, v37);
        sub_26A544FD0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v39 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
          v40 = sub_26A84ACC8();
        }

        else
        {
          v39 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
          v40 = sub_26A850798();
        }

        v41 = *&v66[*v39];
        (*(*(v40 - 8) + 8))(v72, v40);
        if (vabdd_f64(v38, v41) >= 0.01)
        {
          sub_26A544FD0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
            v45 = sub_26A84ACC8();
          }

          else
          {
            v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
            v45 = sub_26A850798();
          }

          v46 = *&v62[*v44];
          (*(*(v45 - 8) + 8))(v70, v45);
          sub_26A544FD0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v49 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
            v50 = sub_26A84ACC8();
          }

          else
          {
            v49 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
            v50 = sub_26A850798();
          }

          v51 = *&v61[*v49];
          v52 = *(*(v50 - 8) + 8);
        }

        else
        {
          sub_26A544FD0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v42 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
            v43 = sub_26A84ACC8();
          }

          else
          {
            v42 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
            v43 = sub_26A850798();
          }

          v46 = *&v68[*v42];
          (*(*(v43 - 8) + 8))();
          sub_26A544FD0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
            v48 = sub_26A84ACC8();
          }

          else
          {
            v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
            v48 = sub_26A850798();
          }

          v51 = *&v69[*v47];
          v52 = *(*(v48 - 8) + 8);
        }

        v52();
        if (vabdd_f64(v46, v51) < 0.01)
        {
          break;
        }

        sub_26A545090(v25, type metadata accessor for SmartDialogCollatableItem);
        sub_26A545090(v29, type metadata accessor for SmartDialogCollatableItem);
        if (v51 < v46)
        {
          if (!v64)
          {
            __break(1u);
            return;
          }

          sub_26A541B6C();
          swift_arrayInitWithTakeFrontToBack();
          sub_26A541B6C();
          v35 += v63;
          v34 += v63;
          if (!__CFADD__(v33++, 1))
          {
            continue;
          }
        }

        goto LABEL_32;
      }

      sub_26A545090(v25, type metadata accessor for SmartDialogCollatableItem);
      sub_26A545090(v29, type metadata accessor for SmartDialogCollatableItem);
LABEL_32:
      a3 = v60 + 1;
      v32 = v59 + v55;
      v33 = v58 - 1;
      v34 = v57 + v55;
      if (v60 + 1 != v56)
      {
        continue;
      }

      break;
    }
  }
}

void sub_26A542570(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v179 = a1;
  v8 = type metadata accessor for SmartDialogCollatableItem(0);
  v194 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v184 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v174 = &v171 - v11;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v209 = &v171 - v15;
  MEMORY[0x28223BE20](v16);
  v208 = &v171 - v17;
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v171 - v20;
  MEMORY[0x28223BE20](v22);
  v213 = &v171 - v23;
  MEMORY[0x28223BE20](v24);
  v211 = &v171 - v25;
  MEMORY[0x28223BE20](v26);
  v190 = &v171 - v27;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v189 = &v171 - v30;
  MEMORY[0x28223BE20](v31);
  v188 = &v171 - v32;
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v35);
  v201 = &v171 - v36;
  MEMORY[0x28223BE20](v37);
  v200 = &v171 - v38;
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v195 = a3;
  v50 = a3[1];
  if (v50 < 1)
  {
    v52 = MEMORY[0x277D84F90];
LABEL_151:
    v213 = *v179;
    if (!v213)
    {
      goto LABEL_194;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_153;
    }

    goto LABEL_188;
  }

  v175 = &v171 - v46;
  v176 = v45;
  v51 = 0;
  v196 = v44;
  v186 = v44 + 8;
  v197 = v43;
  v185 = v43 + 8;
  v187 = v42;
  v183 = v42 + 8;
  v182 = v190 + 8;
  v203 = v49 + 8;
  v204 = v21 + 8;
  v198 = v47 + 8;
  v199 = v48 + 8;
  v52 = MEMORY[0x277D84F90];
  v178 = a4;
  v206 = v48;
  v207 = v47;
  v205 = v49;
  v210 = v21;
  v212 = v41;
  while (1)
  {
    v53 = v51++;
    if (v51 < v50)
    {
      v192 = v50;
      v54 = *v195;
      v55 = *(v194 + 72);
      v56 = *v195 + v55 * v51;
      v57 = v175;
      sub_26A544FD0();
      v202 = v54;
      v58 = v176;
      sub_26A544FD0();
      LODWORD(v191) = sub_26A541858();
      if (v5)
      {
        sub_26A545090(v58, type metadata accessor for SmartDialogCollatableItem);
        sub_26A545090(v57, type metadata accessor for SmartDialogCollatableItem);
LABEL_163:

        return;
      }

      sub_26A545090(v58, type metadata accessor for SmartDialogCollatableItem);
      sub_26A545090(v57, type metadata accessor for SmartDialogCollatableItem);
      v177 = v53;
      v59 = v53 + 2;
      v60 = v202 + v55 * (v53 + 2);
      v61 = v55;
      v193 = v55;
      v62 = v192;
      while (1)
      {
        v63 = v59;
        if (v51 + 1 >= v62)
        {
          break;
        }

        v202 = v51;
        sub_26A544FD0();
        sub_26A544FD0();
        sub_26A544FD0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v64 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
          v65 = sub_26A84ACC8();
        }

        else
        {
          v64 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
          v65 = sub_26A850798();
        }

        v66 = *(v186 + *v64);
        (*(*(v65 - 8) + 8))(v196, v65);
        sub_26A544FD0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
          v68 = sub_26A84ACC8();
        }

        else
        {
          v67 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
          v68 = sub_26A850798();
        }

        v69 = *(v185 + *v67);
        (*(*(v68 - 8) + 8))(v197, v68);
        if (vabdd_f64(v66, v69) >= 0.01)
        {
          sub_26A544FD0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v72 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
            v73 = sub_26A84ACC8();
          }

          else
          {
            v72 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
            v73 = sub_26A850798();
          }

          v74 = *(v183 + *v72);
          (*(*(v73 - 8) + 8))(v187, v73);
          sub_26A544FD0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v77 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
            v78 = sub_26A84ACC8();
          }

          else
          {
            v77 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
            v78 = sub_26A850798();
          }

          v79 = *&v182[*v77];
          v80 = *(*(v78 - 8) + 8);
        }

        else
        {
          sub_26A544FD0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v70 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
            v71 = sub_26A84ACC8();
          }

          else
          {
            v70 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
            v71 = sub_26A850798();
          }

          v74 = *&v188[*v70];
          (*(*(v71 - 8) + 8))();
          sub_26A544FD0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v75 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
            v76 = sub_26A84ACC8();
          }

          else
          {
            v75 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
            v76 = sub_26A850798();
          }

          v79 = *&v189[*v75];
          v80 = *(*(v76 - 8) + 8);
        }

        v80();
        v81 = vabdd_f64(v74, v79) >= 0.01 && v79 < v74;
        sub_26A545090(v201, type metadata accessor for SmartDialogCollatableItem);
        sub_26A545090(v200, type metadata accessor for SmartDialogCollatableItem);
        v61 = v193;
        v60 += v193;
        v56 += v193;
        v51 = v202 + 1;
        v59 = v63 + 1;
        v62 = v192;
        if ((v191 ^ v81))
        {
          goto LABEL_34;
        }
      }

      v51 = v62;
LABEL_34:
      if (v191)
      {
        a4 = v178;
        if (v51 < v177)
        {
          goto LABEL_187;
        }

        if (v177 >= v51)
        {
          v53 = v177;
          goto LABEL_57;
        }

        v173 = v52;
        if (v62 >= v63)
        {
          v82 = v63;
        }

        else
        {
          v82 = v62;
        }

        v83 = v61 * (v82 - 1);
        v84 = v61 * v82;
        v85 = v177 * v61;
        v202 = v51;
        v86 = v177;
        do
        {
          if (v86 != --v51)
          {
            v87 = *v195;
            if (!*v195)
            {
              goto LABEL_192;
            }

            sub_26A541B6C();
            v88 = v85 < v83 || v87 + v85 >= v87 + v84;
            if (v88)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v85 != v83)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_26A541B6C();
            v61 = v193;
          }

          ++v86;
          v83 -= v61;
          v84 -= v61;
          v85 += v61;
        }

        while (v86 < v51);
        a4 = v178;
        v52 = v173;
        v51 = v202;
      }

      else
      {
        a4 = v178;
      }

      v53 = v177;
    }

LABEL_57:
    v89 = v195[1];
    if (v51 < v89)
    {
      if (__OFSUB__(v51, v53))
      {
        goto LABEL_184;
      }

      if (v51 - v53 < a4)
      {
        break;
      }
    }

LABEL_97:
    if (v51 < v53)
    {
      goto LABEL_183;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v52 = v161;
    }

    v116 = *(v52 + 2);
    v117 = v116 + 1;
    if (v116 >= *(v52 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v52 = v162;
    }

    *(v52 + 2) = v117;
    v118 = v52 + 32;
    v119 = &v52[16 * v116 + 32];
    *v119 = v53;
    *(v119 + 1) = v51;
    v193 = *v179;
    if (!v193)
    {
      goto LABEL_193;
    }

    if (v116)
    {
      v202 = v51;
      while (1)
      {
        v120 = v117 - 1;
        v121 = &v118[16 * v117 - 16];
        v122 = &v52[16 * v117];
        if (v117 >= 4)
        {
          break;
        }

        if (v117 == 3)
        {
          v123 = *(v52 + 4);
          v124 = *(v52 + 5);
          v133 = __OFSUB__(v124, v123);
          v125 = v124 - v123;
          v126 = v133;
LABEL_118:
          if (v126)
          {
            goto LABEL_170;
          }

          v138 = *v122;
          v137 = *(v122 + 1);
          v139 = __OFSUB__(v137, v138);
          v140 = v137 - v138;
          v141 = v139;
          if (v139)
          {
            goto LABEL_173;
          }

          v142 = *(v121 + 1);
          v143 = v142 - *v121;
          if (__OFSUB__(v142, *v121))
          {
            goto LABEL_176;
          }

          if (__OFADD__(v140, v143))
          {
            goto LABEL_178;
          }

          if (v140 + v143 >= v125)
          {
            if (v125 < v143)
            {
              v120 = v117 - 2;
            }

            goto LABEL_140;
          }

          goto LABEL_133;
        }

        if (v117 < 2)
        {
          goto LABEL_172;
        }

        v145 = *v122;
        v144 = *(v122 + 1);
        v133 = __OFSUB__(v144, v145);
        v140 = v144 - v145;
        v141 = v133;
LABEL_133:
        if (v141)
        {
          goto LABEL_175;
        }

        v147 = *v121;
        v146 = *(v121 + 1);
        v133 = __OFSUB__(v146, v147);
        v148 = v146 - v147;
        if (v133)
        {
          goto LABEL_177;
        }

        if (v148 < v140)
        {
          goto LABEL_147;
        }

LABEL_140:
        if (v120 - 1 >= v117)
        {
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        if (!*v195)
        {
          goto LABEL_190;
        }

        v152 = v52;
        v153 = &v118[16 * v120 - 16];
        v154 = *v153;
        v155 = v118;
        v156 = v120;
        v157 = &v118[16 * v120];
        v158 = *(v157 + 1);
        sub_26A543B70(*v195 + *(v194 + 72) * *v153, *v195 + *(v194 + 72) * *v157, *v195 + *(v194 + 72) * v158, v193);
        if (v5)
        {
          goto LABEL_163;
        }

        if (v158 < v154)
        {
          goto LABEL_165;
        }

        v5 = *(v152 + 2);
        if (v156 > v5)
        {
          goto LABEL_166;
        }

        *v153 = v154;
        *(v153 + 1) = v158;
        if (v156 >= v5)
        {
          goto LABEL_167;
        }

        v159 = v156;
        v117 = v5 - 1;
        memmove(v157, v157 + 16, 16 * (v5 - 1 - v159));
        v52 = v152;
        *(v152 + 2) = v5 - 1;
        v160 = v5 > 2;
        v5 = 0;
        v51 = v202;
        v118 = v155;
        if (!v160)
        {
          goto LABEL_147;
        }
      }

      v127 = &v118[16 * v117];
      v128 = *(v127 - 8);
      v129 = *(v127 - 7);
      v133 = __OFSUB__(v129, v128);
      v130 = v129 - v128;
      if (v133)
      {
        goto LABEL_168;
      }

      v132 = *(v127 - 6);
      v131 = *(v127 - 5);
      v133 = __OFSUB__(v131, v132);
      v125 = v131 - v132;
      v126 = v133;
      if (v133)
      {
        goto LABEL_169;
      }

      v134 = *(v122 + 1);
      v135 = v134 - *v122;
      if (__OFSUB__(v134, *v122))
      {
        goto LABEL_171;
      }

      v133 = __OFADD__(v125, v135);
      v136 = v125 + v135;
      if (v133)
      {
        goto LABEL_174;
      }

      if (v136 >= v130)
      {
        v150 = *v121;
        v149 = *(v121 + 1);
        v133 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v133)
        {
          goto LABEL_182;
        }

        if (v125 < v151)
        {
          v120 = v117 - 2;
        }

        goto LABEL_140;
      }

      goto LABEL_118;
    }

LABEL_147:
    v50 = v195[1];
    a4 = v178;
    if (v51 >= v50)
    {
      goto LABEL_151;
    }
  }

  v90 = v53 + a4;
  if (__OFADD__(v53, a4))
  {
    goto LABEL_185;
  }

  if (v90 >= v89)
  {
    v90 = v195[1];
  }

  if (v90 < v53)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v52 = sub_26A544B3C();
LABEL_153:
    v163 = v52 + 16;
    v164 = *(v52 + 2);
    while (v164 >= 2)
    {
      if (!*v195)
      {
        goto LABEL_191;
      }

      v165 = v52;
      v166 = &v52[16 * v164];
      v167 = *v166;
      v168 = &v163[2 * v164];
      v169 = v168[1];
      sub_26A543B70(*v195 + *(v194 + 72) * *v166, *v195 + *(v194 + 72) * *v168, *v195 + *(v194 + 72) * v169, v213);
      if (v5)
      {
        break;
      }

      if (v169 < v167)
      {
        goto LABEL_179;
      }

      if (v164 - 2 >= *v163)
      {
        goto LABEL_180;
      }

      *v166 = v167;
      *(v166 + 1) = v169;
      v170 = *v163 - v164;
      if (*v163 < v164)
      {
        goto LABEL_181;
      }

      v164 = *v163 - 1;
      memmove(v168, v168 + 2, 16 * v170);
      *v163 = v164;
      v52 = v165;
    }

    goto LABEL_163;
  }

  if (v51 == v90)
  {
    goto LABEL_97;
  }

  v172 = v5;
  v173 = v52;
  v91 = *v195;
  v92 = *(v194 + 72);
  v93 = *v195 + v92 * (v51 - 1);
  v94 = -v92;
  v177 = v53;
  v95 = v53 - v51;
  v96 = v91;
  v180 = v92;
  v97 = v91 + v51 * v92;
  v181 = v90;
LABEL_66:
  v202 = v51;
  v191 = v97;
  v192 = v95;
  v193 = v93;
  while (1)
  {
    sub_26A544FD0();
    sub_26A544FD0();
    sub_26A544FD0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v98 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
      v99 = sub_26A84ACC8();
    }

    else
    {
      v98 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
      v99 = sub_26A850798();
    }

    v100 = v205;
    v101 = *&v204[*v98];
    (*(*(v99 - 8) + 8))(v210, v99);
    sub_26A544FD0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v102 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
      v103 = sub_26A84ACC8();
    }

    else
    {
      v102 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
      v103 = sub_26A850798();
    }

    v104 = *(v203 + *v102);
    (*(*(v103 - 8) + 8))(v100, v103);
    if (vabdd_f64(v101, v104) >= 0.01)
    {
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v107 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v108 = sub_26A84ACC8();
      }

      else
      {
        v107 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v108 = sub_26A850798();
      }

      v109 = *(v199 + *v107);
      (*(*(v108 - 8) + 8))(v206, v108);
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v112 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v113 = sub_26A84ACC8();
      }

      else
      {
        v112 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v113 = sub_26A850798();
      }

      v114 = *(v198 + *v112);
      v115 = *(*(v113 - 8) + 8);
    }

    else
    {
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v105 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v106 = sub_26A84ACC8();
      }

      else
      {
        v105 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v106 = sub_26A850798();
      }

      v109 = *&v208[*v105];
      (*(*(v106 - 8) + 8))();
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v110 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v111 = sub_26A84ACC8();
      }

      else
      {
        v110 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v111 = sub_26A850798();
      }

      v114 = *&v209[*v110];
      v115 = *(*(v111 - 8) + 8);
    }

    v115();
    if (vabdd_f64(v109, v114) < 0.01)
    {
      sub_26A545090(v213, type metadata accessor for SmartDialogCollatableItem);
      sub_26A545090(v211, type metadata accessor for SmartDialogCollatableItem);
LABEL_95:
      v51 = v202 + 1;
      v93 = v193 + v180;
      v95 = v192 - 1;
      v97 = v191 + v180;
      if (v202 + 1 == v181)
      {
        v51 = v181;
        v52 = v173;
        v53 = v177;
        v5 = v172;
        goto LABEL_97;
      }

      goto LABEL_66;
    }

    sub_26A545090(v213, type metadata accessor for SmartDialogCollatableItem);
    sub_26A545090(v211, type metadata accessor for SmartDialogCollatableItem);
    if (v114 >= v109)
    {
      goto LABEL_95;
    }

    if (!v96)
    {
      break;
    }

    sub_26A541B6C();
    swift_arrayInitWithTakeFrontToBack();
    sub_26A541B6C();
    v93 += v94;
    v97 += v94;
    v88 = __CFADD__(v95++, 1);
    if (v88)
    {
      goto LABEL_95;
    }
  }

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
}

void sub_26A543B70(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v120 = a3;
  v7 = type metadata accessor for SmartDialogCollatableItem(0);
  MEMORY[0x28223BE20](v7);
  v114 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v113 = &v107 - v10;
  MEMORY[0x28223BE20](v11);
  v111 = &v107 - v12;
  MEMORY[0x28223BE20](v13);
  v110 = &v107 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v117 = &v107 - v17;
  MEMORY[0x28223BE20](v18);
  v122 = &v107 - v19;
  MEMORY[0x28223BE20](v20);
  v121 = &v107 - v21;
  MEMORY[0x28223BE20](v22);
  v119 = &v107 - v23;
  MEMORY[0x28223BE20](v24);
  v118 = &v107 - v25;
  MEMORY[0x28223BE20](v26);
  v116 = &v107 - v27;
  MEMORY[0x28223BE20](v28);
  v115 = &v107 - v29;
  MEMORY[0x28223BE20](v30);
  v123 = &v107 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v107 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v107 - v36;
  MEMORY[0x28223BE20](v38);
  v41 = &v107 - v40;
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    return;
  }

  v44 = a2 - a1 == 0x8000000000000000 && v43 == -1;
  if (v44)
  {
    goto LABEL_108;
  }

  v45 = v120 - a2;
  if (v120 - a2 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_109;
  }

  v112 = v39;
  v126 = a4;
  v127 = a1;
  v47 = v45 / v43;
  if ((a2 - a1) / v43 < v45 / v43)
  {
    sub_26A7A3820(a1, (a2 - a1) / v43, a4);
    v48 = a2;
    v122 = a4 + (a2 - a1) / v43 * v43;
    v125 = v122;
    v121 = v34 + 8;
    v117 = (v123 + 8);
    v49 = v120;
    v113 = v119 + 8;
    v114 = v118 + 8;
    v50 = v43;
    while (1)
    {
      if (a4 >= v122 || v48 >= v49)
      {
        goto LABEL_106;
      }

      v52 = v50;
      v124 = v48;
      sub_26A544FD0();
      sub_26A544FD0();
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v54 = sub_26A84ACC8();
      }

      else
      {
        v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v54 = sub_26A850798();
      }

      v55 = *&v121[*v53];
      (*(*(v54 - 8) + 8))(v34, v54);
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v57 = sub_26A84ACC8();
      }

      else
      {
        v56 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v57 = sub_26A850798();
      }

      v58 = *&v117[*v56];
      (*(*(v57 - 8) + 8))(v123, v57);
      if (vabdd_f64(v55, v58) >= 0.01)
      {
        sub_26A544FD0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
          v62 = sub_26A84ACC8();
        }

        else
        {
          v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
          v62 = sub_26A850798();
        }

        v63 = *&v114[*v61];
        (*(*(v62 - 8) + 8))(v118, v62);
        sub_26A544FD0();
        v64 = a4;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
          v68 = sub_26A84ACC8();
        }

        else
        {
          v67 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
          v68 = sub_26A850798();
        }

        v69 = *&v113[*v67];
        v70 = *(*(v68 - 8) + 8);
      }

      else
      {
        sub_26A544FD0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
          v60 = sub_26A84ACC8();
        }

        else
        {
          v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
          v60 = sub_26A850798();
        }

        v63 = *&v115[*v59];
        (*(*(v60 - 8) + 8))();
        sub_26A544FD0();
        v64 = a4;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v65 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
          v66 = sub_26A84ACC8();
        }

        else
        {
          v65 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
          v66 = sub_26A850798();
        }

        v69 = *&v116[*v65];
        v70 = *(*(v66 - 8) + 8);
      }

      v70();
      if (vabdd_f64(v63, v69) < 0.01)
      {
        break;
      }

      sub_26A545090(v37, type metadata accessor for SmartDialogCollatableItem);
      sub_26A545090(v41, type metadata accessor for SmartDialogCollatableItem);
      if (v69 >= v63)
      {
        goto LABEL_46;
      }

      v71 = v124 + v52;
      if (a1 < v124 || a1 >= v71)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v124)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v50 = v52;
      v48 = v71;
      a4 = v64;
      v49 = v120;
LABEL_58:
      a1 += v50;
      v127 = a1;
    }

    sub_26A545090(v37, type metadata accessor for SmartDialogCollatableItem);
    sub_26A545090(v41, type metadata accessor for SmartDialogCollatableItem);
LABEL_46:
    v73 = v64;
    a4 = v64 + v52;
    if (a1 < v64 || a1 >= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v52;
      v49 = v120;
    }

    else
    {
      v50 = v52;
      v49 = v120;
      if (a1 != v73)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v52;
      }
    }

    v126 = a4;
    v48 = v124;
    goto LABEL_58;
  }

  sub_26A7A3820(a2, v45 / v43, a4);
  v75 = a2;
  v76 = a4 + v47 * v43;
  v118 = v117 + 8;
  v77 = v112;
  v116 = (v112 + 8);
  v109 = v113 + 8;
  v108 = v114 + 8;
  v78 = -v43;
  v79 = v76;
  v80 = v120;
  v123 = -v43;
LABEL_60:
  v119 = (v75 + v78);
  v120 = v79;
  v81 = v80;
  v82 = v79;
  v124 = v75;
  while (1)
  {
    if (v76 <= a4)
    {
      v127 = v75;
      v125 = v82;
      goto LABEL_106;
    }

    if (v75 <= a1)
    {
      break;
    }

    v115 = v82;
    v83 = v76 + v78;
    sub_26A544FD0();
    sub_26A544FD0();
    sub_26A544FD0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
      v85 = sub_26A84ACC8();
    }

    else
    {
      v84 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
      v85 = sub_26A850798();
    }

    v86 = *&v118[*v84];
    (*(*(v85 - 8) + 8))(v117, v85);
    sub_26A544FD0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v87 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
      v88 = sub_26A84ACC8();
    }

    else
    {
      v87 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
      v88 = sub_26A850798();
    }

    v89 = *&v116[*v87];
    (*(*(v88 - 8) + 8))(v77, v88);
    if (vabdd_f64(v86, v89) >= 0.01)
    {
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v92 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v93 = sub_26A84ACC8();
      }

      else
      {
        v92 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v93 = sub_26A850798();
      }

      v94 = *&v109[*v92];
      (*(*(v93 - 8) + 8))(v113, v93);
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v97 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v98 = sub_26A84ACC8();
      }

      else
      {
        v97 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v98 = sub_26A850798();
      }

      v99 = *&v108[*v97];
      v100 = *(*(v98 - 8) + 8);
    }

    else
    {
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v90 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v91 = sub_26A84ACC8();
      }

      else
      {
        v90 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v91 = sub_26A850798();
      }

      v94 = *&v110[*v90];
      (*(*(v91 - 8) + 8))();
      sub_26A544FD0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v95 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48);
        v96 = sub_26A84ACC8();
      }

      else
      {
        v95 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660) + 64);
        v96 = sub_26A850798();
      }

      v99 = *&v111[*v95];
      v100 = *(*(v96 - 8) + 8);
    }

    v100();
    v101 = vabdd_f64(v94, v99) >= 0.01 && v99 < v94;
    v80 = &v81[v123];
    sub_26A545090(v122, type metadata accessor for SmartDialogCollatableItem);
    sub_26A545090(v121, type metadata accessor for SmartDialogCollatableItem);
    if (v101)
    {
      if (v81 < v124 || v80 >= v124)
      {
        v104 = v119;
        swift_arrayInitWithTakeFrontToBack();
        v75 = v104;
        v79 = v115;
        v77 = v112;
        v78 = v123;
      }

      else
      {
        v79 = v115;
        v105 = v119;
        v75 = v119;
        v77 = v112;
        v78 = v123;
        if (v81 != v124)
        {
          v106 = v115;
          swift_arrayInitWithTakeBackToFront();
          v75 = v105;
          v79 = v106;
        }
      }

      goto LABEL_60;
    }

    if (v81 < v76 || v80 >= v76)
    {
      swift_arrayInitWithTakeFrontToBack();
      v81 = v80;
      v76 = v83;
      v82 = v83;
      v78 = v123;
      v75 = v124;
      v77 = v112;
      v79 = v120;
    }

    else
    {
      v82 = v83;
      v44 = v76 == v81;
      v81 = v80;
      v76 = v83;
      v78 = v123;
      v75 = v124;
      v77 = v112;
      v79 = v120;
      if (!v44)
      {
        swift_arrayInitWithTakeBackToFront();
        v79 = v120;
        v75 = v124;
        v81 = v80;
        v76 = v83;
        v82 = v83;
      }
    }
  }

  v127 = v75;
  v125 = v79;
LABEL_106:
  sub_26A544B7C(&v127, &v126, &v125);
}

uint64_t sub_26A544B7C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SmartDialogCollatableItem(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_26A544CC0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  OUTLINED_FUNCTION_46();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_26A544D9C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_26A544DC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_26A544EC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_46();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26A544FD0()
{
  v2 = OUTLINED_FUNCTION_2_11();
  v3(v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A545028(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A545090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_26A545280()
{
  sub_26A54532C(319, &qword_2803ACD38, MEMORY[0x277CE0B68], type metadata accessor for CGPoint);
  if (v0 <= 0x3F)
  {
    sub_26A5453B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26A54532C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_26A5453B4()
{
  if (!qword_2803ACD40)
  {
    v0 = sub_26A84ACC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803ACD40);
    }
  }
}

uint64_t sub_26A545424()
{
  result = type metadata accessor for SmartDialogAnimationDrawableType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_26A544FD0();
}

uint64_t type metadata accessor for FactItemConstants()
{
  result = qword_2803ACD58;
  if (!qword_2803ACD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A545580()
{
  result = sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A54561C()
{
  v0 = type metadata accessor for FactItemConstants();
  MEMORY[0x28223BE20](v0);
  v99 = &v92 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  __swift_allocate_value_buffer(v2, qword_2803D1A70);
  v98 = __swift_project_value_buffer(v2, qword_2803D1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD68);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD70);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A85C600;
  v97 = v6;
  v7 = (v6 + v5);
  v104 = v3;
  v8 = (v6 + v5 + *(v3 + 48));
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v102 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_11_1(&qword_281588968);
  OUTLINED_FUNCTION_5_14(v10, v11);
  *v7 = v12;
  v13 = *(v0 + 52);
  v14 = *MEMORY[0x277D62B38];
  v15 = sub_26A84B1D8();
  v16 = *(*(v15 - 8) + 104);
  v106 = v14;
  v16(&v8[v13], v14, v15);
  v17 = &v8[*(v0 + 56)];
  v105 = *MEMORY[0x277D62B28];
  (v16)(v17);
  __asm { FMOV            V0.2D, #2.0 }

  v103 = _Q0;
  *v8 = _Q0;
  *(v8 + 1) = xmmword_26A85C610;
  v107 = xmmword_26A85C610;
  __asm { FMOV            V1.2D, #6.0 }

  *(v8 + 2) = xmmword_26A85C620;
  *(v8 + 3) = _Q1;
  OUTLINED_FUNCTION_1_15();
  v24 = (v7 + v4 + *(v104 + 48));
  *(swift_initStackObject() + 16) = v102;
  v25 = v4;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v26 = OUTLINED_FUNCTION_11_1(&qword_281588938);
  OUTLINED_FUNCTION_5_14(v26, v27);
  *(v7 + v4) = v28;
  v29 = OUTLINED_FUNCTION_2_12();
  (v16)(v29);
  v30 = OUTLINED_FUNCTION_3_13();
  (v16)(v30);
  v96 = xmmword_26A85C630;
  v31 = v107;
  *v24 = xmmword_26A85C630;
  v24[1] = v31;
  __asm { FMOV            V1.2D, #8.0 }

  v94 = _Q1;
  v24[2] = _Q1;
  v24[3] = xmmword_26A85C640;
  OUTLINED_FUNCTION_1_15();
  v33 = (v7 + 2 * v4);
  v34 = (v33 + *(v104 + 48));
  *(swift_initStackObject() + 16) = v102;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v35 = OUTLINED_FUNCTION_11_1(&qword_281588998);
  OUTLINED_FUNCTION_5_14(v35, v36);
  *v33 = v37;
  v38 = OUTLINED_FUNCTION_2_12();
  (v16)(v38);
  v39 = OUTLINED_FUNCTION_3_13();
  (v16)(v39);
  *v34 = xmmword_26A85AB20;
  v34[1] = xmmword_26A85C650;
  v95 = xmmword_26A85C650;
  v34[2] = xmmword_26A85C660;
  v34[3] = xmmword_26A85C670;
  OUTLINED_FUNCTION_1_15();
  v40 = *(v104 + 48);
  v41 = swift_initStackObject();
  v101 = xmmword_26A8570F0;
  *(v41 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v42 = (v7 + 3 * v25);
  v100 = v7;
  v43 = (v42 + v40);
  v44 = OUTLINED_FUNCTION_11_1(&qword_281588978);
  *(v41 + 48) = 1;
  *(v41 + 56) = 3;
  OUTLINED_FUNCTION_5_14(v44, v45);
  *v42 = v46;
  v47 = OUTLINED_FUNCTION_2_12();
  (v16)(v47);
  v48 = OUTLINED_FUNCTION_3_13();
  (v16)(v48);
  v49 = v107;
  *v43 = xmmword_26A85C680;
  v43[1] = v49;
  v50 = v94;
  v43[2] = xmmword_26A85C690;
  v43[3] = v50;
  OUTLINED_FUNCTION_1_15();
  v51 = (v7 + 4 * v25);
  v52 = v25;
  v93 = v25;
  v53 = v51 + *(v104 + 48);
  v54 = swift_initStackObject();
  *(v54 + 16) = v101;
  v55 = OUTLINED_FUNCTION_11_1(&qword_281588968);
  *(v54 + 48) = 1;
  *(v54 + 56) = 3;
  OUTLINED_FUNCTION_5_14(v55, v56);
  *v51 = v57;
  v16(&v53[*(v0 + 52)], v106, v15);
  v58 = v105;
  v16(&v53[*(v0 + 56)], v105, v15);
  v59 = v107;
  *v53 = v103;
  *(v53 + 1) = v59;
  v102 = xmmword_26A85C6B0;
  *(v53 + 2) = xmmword_26A85C6A0;
  *(v53 + 3) = xmmword_26A85C6B0;
  *(v53 + 8) = 0x4024000000000000;
  OUTLINED_FUNCTION_4_12();
  *&v53[v60] = v61;
  v62 = (v100 + 5 * v52);
  v63 = v104;
  v64 = v62 + *(v104 + 48);
  v65 = swift_initStackObject();
  *(v65 + 16) = v101;
  v66 = OUTLINED_FUNCTION_11_1(&qword_281588968);
  *(v65 + 48) = 0;
  *(v65 + 56) = 1;
  OUTLINED_FUNCTION_5_14(v66, v67);
  *v62 = v68;
  v69 = v106;
  v16(&v64[*(v0 + 52)], v106, v15);
  v16(&v64[*(v0 + 56)], v58, v15);
  v70 = v107;
  *v64 = v103;
  *(v64 + 1) = v70;
  v71 = v102;
  *(v64 + 2) = xmmword_26A85C6C0;
  *(v64 + 3) = v71;
  *(v64 + 8) = 0x4024000000000000;
  OUTLINED_FUNCTION_4_12();
  *&v64[v72] = v73;
  v74 = (v100 + 6 * v93);
  v75 = v74 + *(v63 + 48);
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_26A857110;
  v77 = OUTLINED_FUNCTION_11_1(&qword_281588968);
  *(v76 + 48) = 3;
  *(v76 + 56) = 1;
  *(v76 + 64) = 1;
  *(v76 + 72) = 5;
  OUTLINED_FUNCTION_5_14(v77, v78);
  *v74 = v79;
  v16(&v75[*(v0 + 52)], v69, v15);
  v80 = v105;
  v16(&v75[*(v0 + 56)], v105, v15);
  v81 = v107;
  *v75 = v103;
  *(v75 + 1) = v81;
  v82 = v102;
  *(v75 + 2) = v95;
  *(v75 + 3) = v82;
  *(v75 + 8) = 0x4024000000000000;
  OUTLINED_FUNCTION_4_12();
  *&v75[v83] = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v85 = sub_26A8516A8();
  v86 = v99;
  v16(&v99[*(v0 + 52)], v69, v15);
  v16(&v86[*(v0 + 56)], v80, v15);
  v87 = v107;
  *v86 = v96;
  *(v86 + 1) = v87;
  v88 = v102;
  *(v86 + 2) = xmmword_26A85C6D0;
  *(v86 + 3) = v88;
  *(v86 + 8) = 0x4024000000000000;
  OUTLINED_FUNCTION_4_12();
  *&v86[v89] = v90;
  return sub_26A80DB00(v85, v86);
}

void OUTLINED_FUNCTION_5_14(uint64_t a1, char a2)
{
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

uint64_t static ViewBuilder.buildBlock(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_26A53ACC8();

  result = sub_26A850898();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_26A545EE0()
{
  result = type metadata accessor for EnvironmentDependent();
  if (v1 <= 0x3F)
  {
    result = sub_26A5046B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A545F78(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = ((result + v9 + 191) & ~v9);
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((v7 + ((((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7, v6, v4);
    }

    else
    {
      v19 = *v18;
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  else
  {
    v10 = ((*(*(v4 - 8) + 64) - ((-33 - v7) | v7) - ((-192 - v9) | v9) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26A5460F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v12 = ((*(*(v6 - 8) + 64) - ((-33 - v10) | v10) - ((-192 - (v10 | 7)) | v10 | 7) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((*(*(v6 - 8) + 64) - ((-33 - v10) | v10) - ((-192 - (v10 | 7)) | v10 | 7) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v11 = v10 | 7;
          v19 = (&a1[v11 + 191] & ~v11);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v10 + ((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v20 = a2 & 0x7FFFFFFF;
              *((&a1[v11 + 191] & ~v11) + 8) = 0;
            }

            else
            {
              v20 = (a2 - 1);
            }

            *v19 = v20;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) - ((-33 - v10) | v10) - ((-192 - (v10 | 7)) | v10 | 7) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((*(*(v6 - 8) + 64) - ((-33 - v10) | v10) - ((-192 - (v10 | 7)) | v10 | 7) + 5) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, v12);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A546374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v6 = *(a2 + 24);
  v47 = a1;
  v48 = v6;
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v46 = &v38[-v9];
  v43 = *(v10 + 16);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v3 + 160);
  v40 = *(a2 + 44);
  v41 = v14;
  v42 = *(v3 + 176);
  v15 = *(v3 + 184);
  v16 = *(v3 + 185);
  v17 = v4[186];
  v18 = v4[187];
  v19 = v4[188];
  v20 = v4[189];
  v21 = v4[190];
  v39 = v4[168];
  v22 = type metadata accessor for EnvironmentDependent();
  v23 = 256;
  if ((v16 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = v23 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
  v25 = 0x10000;
  if ((v17 & 1) == 0)
  {
    v25 = 0;
  }

  v26 = 0x1000000;
  if ((v18 & 1) == 0)
  {
    v26 = 0;
  }

  v27 = v24 | v25 | v26;
  v28 = 0x100000000;
  if ((v19 & 1) == 0)
  {
    v28 = 0;
  }

  v29 = 0x10000000000;
  if ((v20 & 1) == 0)
  {
    v29 = 0;
  }

  v30 = 0x1000000000000;
  if ((v21 & 1) == 0)
  {
    v30 = 0;
  }

  sub_26A6AE718(v41, v39, v42, v27 | v28 | v29 | v30, v22, v13);
  v31 = *&v4[*(a2 + 48)];
  swift_getWitnessTable();
  v32 = sub_26A84FE88();
  swift_getWitnessTable();
  View.eraseToAnyView()(v32);
  v33 = v45;
  v31();

  (*(v44 + 8))(v13, v43);
  v34 = v46;
  v35 = v48;
  sub_26A80757C(v33);
  v36 = *(v49 + 8);
  v36(v33, v35);
  sub_26A80757C(v34);
  return (v36)(v34, v35);
}

uint64_t sub_26A54669C()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v7, 0);
    (*(v3 + 8))(v6, v1);
    return v10[1];
  }

  return v7;
}

uint64_t sub_26A5467D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for TableHeaderView();
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t TableHeaderView.init(header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84AE88();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v35 - v11;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  type metadata accessor for TableState();
  sub_26A549E9C();
  *(a2 + 16) = sub_26A84F678();
  *(a2 + 24) = v12;
  v13 = type metadata accessor for TableHeaderView();
  v14 = *(v13 + 24);
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v15 = sub_26A8516A8();
  v16 = sub_26A84AEA8();
  v46 = *(v16 + 16);
  if (v46)
  {
    v36 = v13;
    v37 = a1;
    v17 = 0;
    v18 = 0;
    v45 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v43 = v6;
    v44 = v6 + 16;
    v40 = (v6 + 32);
    v41 = v16;
    v38 = a2;
    v39 = (v6 + 40);
    v42 = (v6 + 8);
    while (v18 < *(v16 + 16))
    {
      v19 = *(v6 + 72);
      v20 = *(v6 + 16);
      v21 = v47;
      v20(v47, v45 + v19 * v18, v4);
      v20(v9, v21, v4);
      swift_isUniquelyReferenced_nonNull_native();
      v48 = v15;
      v22 = sub_26A5484D4(v17);
      if (__OFADD__(v15[2], (v23 & 1) == 0))
      {
        goto LABEL_18;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD78);
      if (sub_26A8523E8())
      {
        v26 = sub_26A5484D4(v17);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_21;
        }

        v24 = v26;
      }

      v15 = v48;
      if (v25)
      {
        (*v39)(v48[7] + v24 * v19, v9, v4);
      }

      else
      {
        v48[(v24 >> 6) + 8] |= 1 << v24;
        *(v15[6] + 8 * v24) = v17;
        (*v40)(v15[7] + v24 * v19, v9, v4);
        v28 = v15[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_20;
        }

        v15[2] = v30;
      }

      v31 = v47;
      v32 = sub_26A84AE58();
      (*v42)(v31, v4);
      v29 = __OFADD__(v17, v32);
      v17 += v32;
      v6 = v43;
      if (v29)
      {
        goto LABEL_19;
      }

      ++v18;
      v16 = v41;
      if (v46 == v18)
      {

        a1 = v37;
        a2 = v38;
        v13 = v36;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_26A852618();
    __break(1u);
  }

  else
  {

LABEL_16:
    sub_26A84AEB8();
    OUTLINED_FUNCTION_1_4();
    result = (*(v33 + 8))(a1);
    *(a2 + *(v13 + 28)) = v15;
  }

  return result;
}

uint64_t type metadata accessor for TableHeaderView()
{
  result = qword_2803ACD90;
  if (!qword_2803ACD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A546E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE90);
  MEMORY[0x28223BE20](v68);
  v69 = &v50 - v5;
  v6 = type metadata accessor for TableHeaderView();
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = v7;
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26A84DFD8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A84F3A8();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26A84E4A8();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE30);
  MEMORY[0x28223BE20](v67);
  v66 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE98);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50 - v17;
  v19 = sub_26A84AE88();
  v65 = *(v19 - 8);
  v20 = v65[8];
  MEMORY[0x28223BE20](v19);
  v53 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v64 = &v50 - v22;
  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

  v23 = a1;
  sub_26A531490(a1);
  v25 = v24;

  sub_26A507768(v25, *(v3 + *(v6 + 28)));
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_26A54A088();
    swift_storeEnumTagMultiPayload();
    sub_26A549C14();
    return sub_26A84FDF8();
  }

  v27 = v65 + 4;
  v52 = v65[4];
  v52(v64, v18, v19);

  sub_26A84AE68();
  sub_26A5467D4(v11);
  v28 = sub_26A54669C();
  v29 = v66;
  sub_26A5314D0(v14, v11, v28, v66);

  (v62[1])(v11, v63);
  (*(v60 + 8))(v14, v61);

  v30 = sub_26A52F5B0();

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v30 + 16) <= v23)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    type metadata accessor for TableState();
    sub_26A549E9C();
    result = sub_26A84F668();
    __break(1u);
    return result;
  }

  v51 = v23;
  v63 = v19;

  v31 = v54;
  v32 = v64;
  sub_26A84AE78();
  sub_26A61AE88();
  (*(v55 + 8))(v31, v56);
  sub_26A84F028();
  v33 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE50) + 36));
  v34 = v72;
  *v33 = v71;
  v33[1] = v34;
  v33[2] = v73;
  sub_26A549810();
  v35 = v65;
  v36 = v65[2];
  v62 = v27;
  v37 = v53;
  v38 = v63;
  v36(v53, v32, v63);
  v39 = (v58 + ((*(v57 + 80) + 16) & ~*(v57 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v35 + 80) + v39 + 8) & ~*(v35 + 80);
  v41 = swift_allocObject();
  sub_26A549868();
  *(v41 + v39) = v51;
  v52((v41 + v40), v37, v38);
  v42 = sub_26A851448();
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE40);
  v46 = v66;
  v47 = (v66 + *(v45 + 36));
  *v47 = sub_26A8027E0;
  v47[1] = 0;
  v47[2] = v42;
  v47[3] = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_26A549F94;
  *(v48 + 24) = v41;
  v49 = (v46 + *(v67 + 36));
  *v49 = sub_26A52E998;
  v49[1] = v48;
  sub_26A4EF6D0();
  swift_storeEnumTagMultiPayload();
  sub_26A549C14();
  sub_26A84FDF8();
  sub_26A54A088();
  return (v35[1])(v32, v38);
}

uint64_t sub_26A5476A8(uint64_t a1, unint64_t a2, double a3)
{
  if (*(a1 + 16))
  {

    sub_26A84AE58();
    sub_26A52FD5C(a2, a3);
  }

  else
  {
    type metadata accessor for TableState();
    sub_26A549E9C();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t TableHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26A84FA78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD80);
  sub_26A5477E8(v1, (a1 + *(v3 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD88);
  *(a1 + *(result + 36)) = 66;
  return result;
}

uint64_t sub_26A5477E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for TableHeaderView();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACDD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(*(v11 + OBJC_IVAR____TtC9SnippetUI10TableState_columns) + 16);
    v38 = 0;
    v39 = v12;
    swift_getKeyPath();
    sub_26A549810();
    swift_allocObject();
    sub_26A549868();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACDD8);
    sub_26A4EEF40();
    sub_26A549940();
    sub_26A8512F8();

    sub_26A52F9CC();
    v33 = v13;

    sub_26A52F6B0();

    sub_26A851448();
    sub_26A84F028();
    v31 = v40;
    v32 = v38;
    v29 = v43;
    v30 = v42;
    v37 = 1;
    v36 = v39;
    v35 = v41;
    v14 = *(v5 + 16);
    v14(v7, v10, v4);
    v15 = v37;
    v16 = v10;
    v17 = v36;
    v18 = v35;
    v19 = v7;
    v20 = v34;
    v14(v34, v19, v4);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE70);
    v22 = &v20[*(v21 + 48)];
    *v22 = 0;
    v22[8] = 0;
    v22[9] = (v33 & 1) == 0;
    v23 = &v20[*(v21 + 64)];
    *v23 = 0;
    v23[8] = v15;
    v24 = v31;
    *(v23 + 2) = v32;
    v23[24] = v17;
    *(v23 + 4) = v24;
    v23[40] = v18;
    v25 = v29;
    *(v23 + 6) = v30;
    *(v23 + 7) = v25;
    v26 = *(v5 + 8);
    v26(v16, v4);
    return (v26)(v19, v4);
  }

  else
  {
    type metadata accessor for TableState();
    sub_26A549E9C();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A547C20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE20);
  MEMORY[0x28223BE20](v32);
  v6 = &v29 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE78);
  MEMORY[0x28223BE20](v33);
  v8 = (&v29 - v7);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE80);
  MEMORY[0x28223BE20](v31);
  v10 = &v29 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACDF0);
  MEMORY[0x28223BE20](v34);
  v11 = sub_26A84E048();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v17 = *(a2 + 16);
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = *a1;
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = *(v17 + OBJC_IVAR____TtC9SnippetUI10TableState_columns);
  if (v18 >= *(v19 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    type metadata accessor for TableState();
    sub_26A549E9C();
    result = sub_26A84F668();
    __break(1u);
    return result;
  }

  (*(v12 + 16))(v15, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v11, v13);
  v20 = (*(v12 + 88))(v15, v11);
  if (v20 == *MEMORY[0x277D63670])
  {
    (*(v12 + 96))(v15, v11);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE88) + 48);
    sub_26A546E3C(v18, v6);
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE00);
    sub_26A549A78();
    sub_26A549B88();
    sub_26A84FDF8();
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A5499EC();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68);
    sub_26A84FDF8();
    sub_26A54A088();
    sub_26A54A088();
    v21 = sub_26A84DFD8();
    (*(*(v21 - 8) + 8))(&v15[v30], v21);
    v22 = sub_26A84DFB8();
    return (*(*(v22 - 8) + 8))(v15, v22);
  }

  else if (v20 == *MEMORY[0x277D63678])
  {

    sub_26A52F9CC();
    v25 = v24;
    v27 = v26;

    MEMORY[0x28223BE20](v28);
    *(&v29 - 2) = v16;
    sub_26A736938(v25, v27 & 1, sub_26A549F8C, 0, 0, __src);
    memcpy(v10, __src, 0x41uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE00);
    sub_26A549A78();
    sub_26A549B88();
    sub_26A84FDF8();
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A5499EC();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68);
    sub_26A84FDF8();
    return sub_26A54A088();
  }

  else
  {
    *v8 = &sub_26A548480;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A5499EC();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68);
    sub_26A84FDF8();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_26A548338@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16))
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *a2;

    v8 = sub_26A52F59C();

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(v8 + 16))
    {

      sub_26A851448();
      result = sub_26A84F028();
      *a4 = v5;
      *(a4 + 8) = v6;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = v12;
      *(a4 + 40) = v13;
      *(a4 + 48) = v14;
      return result;
    }

    __break(1u);
  }

  type metadata accessor for TableState();
  sub_26A549E9C();
  result = sub_26A84F668();
  __break(1u);
  return result;
}

unint64_t sub_26A548510(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_10();
  sub_26A851848();
  v4 = sub_26A8526F8();

  return sub_26A54899C(a1, a2, v4);
}

unint64_t sub_26A548580(uint64_t a1)
{
  OUTLINED_FUNCTION_8_10();
  sub_26A6B0DB4(__src, a1);
  v2 = sub_26A8526F8();

  return sub_26A548A50(a1, v2);
}

unint64_t sub_26A5485E4()
{
  OUTLINED_FUNCTION_3_14();
  sub_26A84ACC8();
  sub_26A549E9C();
  v0 = OUTLINED_FUNCTION_6_15();
  return OUTLINED_FUNCTION_7_12(v0, v0, MEMORY[0x277CC95F0], &unk_2803ACDC8, v1, MEMORY[0x277CC9610]);
}

unint64_t sub_26A548694()
{
  OUTLINED_FUNCTION_3_14();
  sub_26A84A778();
  sub_26A549E9C();
  v0 = OUTLINED_FUNCTION_6_15();
  return OUTLINED_FUNCTION_7_12(v0, v0, MEMORY[0x277CC8678], &unk_281580020, v1, MEMORY[0x277CC8688]);
}

unint64_t sub_26A548744()
{
  sub_26A8521A8();
  v0 = OUTLINED_FUNCTION_10_6();

  return sub_26A548CF0(v0, v1);
}

unint64_t sub_26A548784(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_8_10();
  MEMORY[0x26D664930](a1);
  v2 = sub_26A8526F8();

  return sub_26A548DB4(a1, v2);
}

unint64_t sub_26A5487E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_10();
  sub_26A851848();
  MEMORY[0x26D664930](a3);
  MEMORY[0x26D664930](a4);
  v8 = sub_26A8526F8();

  return sub_26A548E14(a1, a2, a3, a4, v8);
}

unint64_t sub_26A548888(uint64_t a1)
{
  OUTLINED_FUNCTION_8_10();
  sub_26A538DC4();
  v2 = sub_26A8526F8();

  return sub_26A548EF4(a1, v2);
}

unint64_t sub_26A5488EC()
{
  OUTLINED_FUNCTION_3_14();
  sub_26A84E2D8();
  sub_26A549E9C();
  v0 = OUTLINED_FUNCTION_6_15();
  return OUTLINED_FUNCTION_7_12(v0, v0, MEMORY[0x277D637A8], &unk_28157FF98, v1, MEMORY[0x277D637B8]);
}

unint64_t sub_26A54899C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26A852598() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26A548A50(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {

    sub_26A6B07D0(v6, a1);
    v8 = v7;

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26A548B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v18 = a1;
  v8 = a3(0);
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v23 = v6 + 64;
  v19 = v6;
  v14 = ~(-1 << *(v6 + 32));
  for (i = a2 & v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_26A549E9C();
    v16 = sub_26A851758();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26A548C90(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_26A548CF0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_26A549760(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D664420](v8, a1);
    sub_26A5497BC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26A548DB4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_26A548E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_26A852598()) && v17 == a3 && v16 == a4)
      {
        break;
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_26A548EF4(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = type metadata accessor for LoadableText.Source.URLImage(0);
  MEMORY[0x28223BE20](v4 - 8);
  v28[1] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930);
  MEMORY[0x28223BE20](v29);
  v7 = v28 - v6;
  v8 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v34 = v2;
  v14 = -1 << *(v2 + 32);
  v15 = a2 & ~v14;
  v32 = v2 + 64;
  if ((*(v2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = *(v13 + 72);
    v30 = ~v14;
    v31 = v16;
    v17 = v29;
    do
    {
      sub_26A549810();
      v18 = &v7[*(v17 + 48)];
      sub_26A549810();
      sub_26A549810();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A549810();
        v19 = v10[1];
        v41[0] = *v10;
        v41[1] = v19;
        v42[0] = v10[2];
        *(v42 + 9) = *(v10 + 41);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_26A549710();
          sub_26A5393B4(v41);
          goto LABEL_10;
        }

        v20 = *(v18 + 1);
        v39[0] = *v18;
        v39[1] = v20;
        v22 = *v18;
        v21 = *(v18 + 1);
        v40[0] = *(v18 + 2);
        *(v40 + 9) = *(v18 + 41);
        v23 = v10[1];
        v37[0] = *v10;
        v37[1] = v23;
        v38[0] = v10[2];
        *(v38 + 9) = *(v10 + 41);
        v35[0] = v22;
        v35[1] = v21;
        v36[0] = *(v18 + 2);
        *(v36 + 9) = *(v18 + 41);
        v24 = sub_26A538794(v37, v35);
        sub_26A549710();
        sub_26A5393B4(v39);
        sub_26A5393B4(v41);
        if (v24)
        {
          goto LABEL_15;
        }

        sub_26A549710();
      }

      else
      {
        sub_26A549810();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_26A549710();
          sub_26A549710();
LABEL_10:
          sub_26A54A088();
          goto LABEL_13;
        }

        sub_26A549868();
        sub_26A538054();
        v26 = v25;
        sub_26A549710();
        sub_26A549710();
        sub_26A549710();
        if (v26)
        {
LABEL_15:
          sub_26A549710();
          return v15;
        }

        sub_26A549710();
        v17 = v29;
      }

LABEL_13:
      v15 = (v15 + 1) & v30;
    }

    while (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

void sub_26A549420()
{
  sub_26A5495A0(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v0 <= 0x3F)
  {
    sub_26A54950C();
    if (v1 <= 0x3F)
    {
      sub_26A5495A0(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_26A5495F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A54950C()
{
  if (!qword_2803ACDA0)
  {
    type metadata accessor for TableState();
    sub_26A549E9C();
    v0 = sub_26A84F688();
    if (!v1)
    {
      atomic_store(v0, &qword_2803ACDA0);
    }
  }
}

void sub_26A5495A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_10_6();
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A5495F0()
{
  if (!qword_2803ACDA8)
  {
    sub_26A84AE88();
    v0 = sub_26A8516D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803ACDA8);
    }
  }
}

unint64_t sub_26A549658()
{
  result = qword_2803ACDB0;
  if (!qword_2803ACDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACD88);
    sub_26A549F4C();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACDB0);
  }

  return result;
}

uint64_t sub_26A549710()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A549810()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A549868()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A5498C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TableHeaderView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A547C20(a1, v6, a2);
}

unint64_t sub_26A549940()
{
  result = qword_2803ACDE0;
  if (!qword_2803ACDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACDD8);
    sub_26A5499EC();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACDE0);
  }

  return result;
}

unint64_t sub_26A5499EC()
{
  result = qword_2803ACDE8;
  if (!qword_2803ACDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACDF0);
    sub_26A549A78();
    sub_26A549B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACDE8);
  }

  return result;
}

unint64_t sub_26A549A78()
{
  result = qword_2803ACDF8;
  if (!qword_2803ACDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACE00);
    sub_26A549B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACDF8);
  }

  return result;
}

unint64_t sub_26A549B04()
{
  result = qword_2803ACE08;
  if (!qword_2803ACE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACE08);
  }

  return result;
}

unint64_t sub_26A549B88()
{
  result = qword_2803ACE18;
  if (!qword_2803ACE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACE20);
    sub_26A549C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACE18);
  }

  return result;
}

unint64_t sub_26A549C14()
{
  result = qword_2803ACE28;
  if (!qword_2803ACE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACE30);
    sub_26A549CCC();
    sub_26A549F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACE28);
  }

  return result;
}

unint64_t sub_26A549CCC()
{
  result = qword_2803ACE38;
  if (!qword_2803ACE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACE40);
    sub_26A549D84();
    sub_26A549F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACE38);
  }

  return result;
}

unint64_t sub_26A549D84()
{
  result = qword_2803ACE48;
  if (!qword_2803ACE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACE50);
    sub_26A549E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACE48);
  }

  return result;
}

unint64_t sub_26A549E10()
{
  result = qword_2803ACE58;
  if (!qword_2803ACE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACE60);
    sub_26A533AEC();
    sub_26A534110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACE58);
  }

  return result;
}

unint64_t sub_26A549E9C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A549EDC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A549F4C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A549F94(double a1)
{
  v3 = *(type metadata accessor for TableHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_26A84AE88();
  v6 = *(v1 + v5);

  return sub_26A5476A8(v1 + v4, v6, a1);
}

uint64_t sub_26A54A088()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return sub_26A8516E8();
}

unint64_t OUTLINED_FUNCTION_7_12(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_26A548B04(v6, a2, a3, a4, v7, a6);
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_26A8526B8();
}

BOOL sub_26A54A170()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail_1];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50);
  return v5 != 0;
}

id sub_26A54A258@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_26A84BD28();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v3 text_1];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [v3 thumbnail_2];
  if (!v12)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v17 = v3;
    *(v17 + 8) = &unk_287B132B0;
    *(v17 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  v13 = v12;
  v59 = v6;
  RFTextProperty.asPartialText()(v79);
  v14 = sub_26A54AB40(v3, &selRef_text_2);
  if (v14)
  {
    sub_26A51B744(v14, v70);
    sub_26A54AAEC();
    v14 = sub_26A851248();
    v15 = &protocol witness table for AnyView;
    v16 = MEMORY[0x277CE11C8];
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v78[2] = 0;
    v78[1] = 0;
  }

  v78[0] = v14;
  v78[3] = v16;
  v78[4] = v15;
  v19 = sub_26A54AB40(v3, &selRef_text_3);
  if (v19)
  {
    sub_26A51B744(v19, v70);
    sub_26A54AAEC();
    v19 = sub_26A851248();
    v20 = &protocol witness table for AnyView;
    v21 = MEMORY[0x277CE11C8];
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v77[2] = 0;
    v77[1] = 0;
  }

  v77[0] = v19;
  v77[3] = v21;
  v77[4] = v20;
  v22 = [v3 text_4];
  if (v22)
  {
    v23 = v22;
    *(&v75 + 1) = &type metadata for PartialText;
    v76 = &protocol witness table for PartialText;
    *&v74 = swift_allocObject();
    RFTextProperty.asPartialText()(v74 + 16);
  }

  else
  {
    v76 = 0;
    v75 = 0u;
    v74 = 0u;
  }

  v24 = [v3 thumbnail_1];
  v60 = v5;
  if (v24)
  {
    v25 = v24;
    *(&v72 + 1) = v5;
    v73 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v71);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v73 = 0;
    v72 = 0u;
    v71 = 0u;
  }

  v57 = v11;
  v81 = v2;
  v58 = v9;
  v56 = v13;
  RFVisualProperty.asVisualProperty()();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v26 = type metadata accessor for SummaryItemImageRightView();
  v27 = v26[5];
  *(a1 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v28 = (a1 + v26[6]);
  v29 = a1;
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v31 = __swift_project_value_buffer(v30, qword_281588798);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v33 = v28 + *(v32 + 32);
  sub_26A4EA070(v31, v33, &qword_2803B3890);
  sub_26A6AEE74(v80);
  memcpy(v28, v80, 0xBFuLL);
  sub_26A4DB4E0(v33 + *(v30 + 36), v28 + *(v32 + 28));
  v34 = v26[7];
  *(v29 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v35 = (v29 + v26[8]);
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v64[0] = xmmword_281588758[0];
  v64[1] = unk_281588768;
  v64[2] = xmmword_281588778;
  v64[3] = unk_281588788;
  v65 = xmmword_281588758[0];
  v66 = unk_281588768;
  v67 = xmmword_281588778;
  v68 = unk_281588788;
  v54 = unk_281588788;
  v55 = xmmword_281588778;
  sub_26A4EA070(v64, v70, &qword_2803A91B0);
  sub_26A6AEE74(v69);
  memcpy(v35, v69, 0xC0uLL);
  v36 = v54;
  v35[12] = v55;
  v35[13] = v36;
  v37 = v66;
  v35[14] = v65;
  v35[15] = v37;
  v38 = v68;
  v35[16] = v67;
  v35[17] = v38;
  memcpy(v70, v79, 0xFAuLL);
  memcpy(v63, v79, 0xFAuLL);
  sub_26A4EC458(v70, v61);
  sub_26A4EC4B4();
  *(v29 + v26[9]) = sub_26A851248();
  sub_26A4EA070(v78, v63, &qword_2803A91B8);
  v39 = v57;
  if (v63[3])
  {
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v40 = OUTLINED_FUNCTION_0_18();
    v42 = v41(v40);
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    sub_26A4E2544(v63, &qword_2803A91B8);
    v42 = 0;
  }

  v43 = v58;
  *(v29 + v26[10]) = v42;
  sub_26A4EA070(v77, v63, &qword_2803A91B8);
  if (v63[3])
  {
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v44 = OUTLINED_FUNCTION_0_18();
    v46 = v45(v44);
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    sub_26A4E2544(v63, &qword_2803A91B8);
    v46 = 0;
  }

  *(v29 + v26[11]) = v46;
  sub_26A4EA070(&v74, v63, &qword_2803A91B8);
  if (v63[3])
  {
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v47 = OUTLINED_FUNCTION_0_18();
    v49 = v48(v47);
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    sub_26A4E2544(v63, &qword_2803A91B8);
    v49 = 0;
  }

  *(v29 + v26[12]) = v49;
  sub_26A4EA070(&v71, v61, &qword_2803A91B8);
  if (v62)
  {
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v50 = OUTLINED_FUNCTION_0_18();
    v52 = v51(v50);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    sub_26A4E2544(v61, &qword_2803A91B8);
    v52 = 0;
  }

  *(v29 + v26[13]) = v52;
  v53 = VisualProperty.asAnyView()();

  (*(v59 + 8))(v43, v60);
  memcpy(v63, v79, 0xFAuLL);
  sub_26A4EC508(v63);
  OUTLINED_FUNCTION_3_2(&v71);
  OUTLINED_FUNCTION_3_2(&v74);
  OUTLINED_FUNCTION_3_2(v77);
  result = OUTLINED_FUNCTION_3_2(v78);
  *(v29 + v26[14]) = v53;
  return result;
}

unint64_t sub_26A54AA94()
{
  result = qword_2803ACEA0;
  if (!qword_2803ACEA0)
  {
    type metadata accessor for SummaryItemImageRightView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACEA0);
  }

  return result;
}

unint64_t sub_26A54AAEC()
{
  result = qword_28157DEE0[0];
  if (!qword_28157DEE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157DEE0);
  }

  return result;
}

uint64_t sub_26A54AB40(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_26A5377B4();
  v4 = sub_26A851A98();

  return v4;
}

uint64_t Component.containsComponentsWithAction.getter(uint64_t a1, uint64_t a2)
{
  v392[1] = a1;
  v392[2] = a2;
  v2 = sub_26A84DEB8();
  v3 = OUTLINED_FUNCTION_0_9(v2, &v368);
  v357 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v5);
  v6 = sub_26A84DF48();
  v7 = OUTLINED_FUNCTION_0_9(v6, &v372);
  v361 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v9);
  v10 = sub_26A84DE58();
  v11 = OUTLINED_FUNCTION_0_9(v10, &v371);
  v360 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v13);
  v14 = sub_26A84D9B8();
  v15 = OUTLINED_FUNCTION_0_9(v14, &v370);
  v359 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v17);
  v18 = sub_26A84DD98();
  v19 = OUTLINED_FUNCTION_0_9(v18, &v369);
  v358 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v21);
  v22 = sub_26A84D8A8();
  v23 = OUTLINED_FUNCTION_0_9(v22, &v367);
  v356 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v25);
  v26 = sub_26A84DBB8();
  v27 = OUTLINED_FUNCTION_0_9(v26, &v366);
  v355 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v29);
  v30 = sub_26A84DF68();
  v31 = OUTLINED_FUNCTION_0_9(v30, &v365);
  v354 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v33);
  v34 = sub_26A84DF08();
  v35 = OUTLINED_FUNCTION_0_9(v34, &v364);
  v353 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v37);
  v38 = sub_26A84DDB8();
  v39 = OUTLINED_FUNCTION_0_9(v38, &v363);
  v352 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v41);
  v42 = sub_26A84DB78();
  v43 = OUTLINED_FUNCTION_0_9(v42, &v362);
  v351 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v45);
  v46 = sub_26A84CE48();
  v47 = OUTLINED_FUNCTION_0_9(v46, &v361);
  v350 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v49);
  v50 = sub_26A84D978();
  v51 = OUTLINED_FUNCTION_0_9(v50, &v360);
  v349 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v53);
  v54 = sub_26A84D348();
  v55 = OUTLINED_FUNCTION_0_9(v54, &v359);
  v348 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v57);
  v58 = sub_26A84D9D8();
  v59 = OUTLINED_FUNCTION_0_9(v58, &v358);
  v347 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v61);
  v62 = sub_26A84DDD8();
  v63 = OUTLINED_FUNCTION_0_9(v62, &v357);
  v346 = v64;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v65);
  v66 = sub_26A84D9F8();
  v67 = OUTLINED_FUNCTION_0_9(v66, &v356);
  v345 = v68;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v69);
  v70 = sub_26A84D5C8();
  v71 = OUTLINED_FUNCTION_0_9(v70, &v355);
  v344 = v72;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v73);
  v74 = sub_26A84D058();
  v75 = OUTLINED_FUNCTION_0_9(v74, &v354);
  v341 = v76;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v77);
  v78 = sub_26A84D038();
  v79 = OUTLINED_FUNCTION_0_9(v78, &v353);
  v338 = v80;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v81);
  v82 = sub_26A84D998();
  v83 = OUTLINED_FUNCTION_0_9(v82, &v352);
  v335 = v84;
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v85);
  v86 = sub_26A84DED8();
  v87 = OUTLINED_FUNCTION_0_9(v86, &v373);
  v362 = v88;
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v89);
  v90 = sub_26A84DF28();
  v91 = OUTLINED_FUNCTION_0_9(v90, &v374);
  v363 = v92;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v93);
  v94 = sub_26A84DCD8();
  v95 = OUTLINED_FUNCTION_0_9(v94, &v377);
  v364 = v96;
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v97);
  v98 = sub_26A84DE18();
  v99 = OUTLINED_FUNCTION_0_9(v98, &v380);
  v365 = v100;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v101);
  v102 = sub_26A84DE78();
  v103 = OUTLINED_FUNCTION_0_9(v102, &v383);
  v366 = v104;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v105);
  v106 = sub_26A84D958();
  v107 = OUTLINED_FUNCTION_0_9(v106, &v386);
  v367 = v108;
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v109);
  v110 = sub_26A84DCB8();
  v111 = OUTLINED_FUNCTION_0_9(v110, &v389);
  v368 = v112;
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v113);
  v114 = sub_26A84DD78();
  v115 = OUTLINED_FUNCTION_0_9(v114, v392);
  v369 = v116;
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v117);
  v118 = sub_26A84D868();
  v119 = OUTLINED_FUNCTION_0_9(v118, v393);
  v370 = v120;
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v121);
  v122 = sub_26A84D368();
  v123 = OUTLINED_FUNCTION_0_9(v122, &v394);
  v371 = v124;
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v125);
  v126 = sub_26A84DB38();
  v127 = OUTLINED_FUNCTION_0_9(v126, &v395);
  v372 = v128;
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v129);
  v130 = sub_26A84DE98();
  v131 = OUTLINED_FUNCTION_0_9(v130, &v396);
  v373 = v132;
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v133);
  sub_26A84DCF8();
  OUTLINED_FUNCTION_15();
  v374 = v135;
  v375 = v134;
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v136);
  sub_26A84D5E8();
  OUTLINED_FUNCTION_15();
  v377 = v138;
  v378 = v137;
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_3_15();
  v376 = v139;
  OUTLINED_FUNCTION_25_2();
  sub_26A84DE38();
  OUTLINED_FUNCTION_15();
  v380 = v141;
  v381 = v140;
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_3_15();
  v379 = v142;
  OUTLINED_FUNCTION_25_2();
  sub_26A84DC78();
  OUTLINED_FUNCTION_15();
  v383 = v144;
  v384 = v143;
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_3_15();
  v382 = v145;
  OUTLINED_FUNCTION_25_2();
  sub_26A84DB18();
  OUTLINED_FUNCTION_15();
  v386 = v147;
  v387 = v146;
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_3_15();
  v385 = v148;
  OUTLINED_FUNCTION_25_2();
  sub_26A84DC58();
  OUTLINED_FUNCTION_15();
  v389 = v150;
  v390 = v149;
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_3_15();
  v388 = v151;
  OUTLINED_FUNCTION_25_2();
  sub_26A84D818();
  OUTLINED_FUNCTION_15();
  v391 = v153;
  v392[0] = v152;
  MEMORY[0x28223BE20](v152);
  v155 = v330 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C90);
  MEMORY[0x28223BE20](v156 - 8);
  v158 = v330 - v157;
  v159 = sub_26A84BD98();
  OUTLINED_FUNCTION_15();
  v161 = v160;
  MEMORY[0x28223BE20](v162);
  v164 = v330 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_26A84BD78();
  OUTLINED_FUNCTION_15();
  v167 = v166;
  MEMORY[0x28223BE20](v168);
  v333 = v330 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v170);
  v172 = v330 - v171;
  v332 = v173;
  MEMORY[0x28223BE20](v174);
  v176 = v330 - v175;
  sub_26A84E4E8();
  sub_26A84BD88();
  (*(v161 + 8))(v164, v159);
  v177 = v165;
  if (__swift_getEnumTagSinglePayload(v158, 1, v165) != 1)
  {
    v179 = *(v167 + 32);
    v179(v176, v158, v165);
    v180 = v167 + 16;
    v181 = *(v167 + 16);
    v181(v172, v176, v165);
    v182 = (*(v167 + 88))(v172, v165);
    v183 = v176;
    if (v182 == *MEMORY[0x277D62FD8])
    {
LABEL_5:
      v184 = *(v167 + 8);
      v185 = OUTLINED_FUNCTION_15_4();
      v184(v185);
      (v184)(v172, v177);
      v178 = 1;
      return v178 & 1;
    }

    v186 = v172;
    if (v182 == *MEMORY[0x277D63040])
    {
      v187 = OUTLINED_FUNCTION_4_13();
      v188(v187);
      v190 = v391;
      v189 = v392[0];
      OUTLINED_FUNCTION_9_11();
      v191(v155, v186, v189);
      v192 = sub_26A84D808();
LABEL_10:
      v178 = v192;
      (*(v190 + 8))(v155, v189);
LABEL_32:
      v232 = OUTLINED_FUNCTION_15_4();
      v233(v232);
      return v178 & 1;
    }

    if (v182 == *MEMORY[0x277D630D0])
    {
      v193 = OUTLINED_FUNCTION_4_13();
      v194(v193);
      v155 = v388;
      v190 = v389;
      OUTLINED_FUNCTION_9_11();
      v189 = v390;
      v195(v155, v186, v390);
      v192 = sub_26A84DC48();
      goto LABEL_10;
    }

    if (v182 == *MEMORY[0x277D630A8])
    {
      v196 = OUTLINED_FUNCTION_7_13();
      v197(v196);
      v181 = v385;
      v172 = v386;
      OUTLINED_FUNCTION_9_11();
      v198 = OUTLINED_FUNCTION_13_9();
      v180 = v387;
      v199(v198);
      v200 = sub_26A84DB08();
LABEL_31:
      v178 = v200;
      (*(v172 + 1))(v181, v180);
      goto LABEL_32;
    }

    if (v182 == *MEMORY[0x277D630D8])
    {
      v201 = OUTLINED_FUNCTION_7_13();
      v202(v201);
      v181 = v382;
      v172 = v383;
      OUTLINED_FUNCTION_9_11();
      v203 = OUTLINED_FUNCTION_13_9();
      v180 = v384;
      v204(v203);
      v200 = sub_26A84DC68();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D63130])
    {
      v205 = OUTLINED_FUNCTION_7_13();
      v206(v205);
      v181 = v379;
      v172 = v380;
      OUTLINED_FUNCTION_9_11();
      v207 = OUTLINED_FUNCTION_13_9();
      v180 = v381;
      v208(v207);
      v200 = sub_26A84DE28();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D63038])
    {
      v209 = OUTLINED_FUNCTION_7_13();
      v210(v209);
      v181 = v376;
      v172 = v377;
      OUTLINED_FUNCTION_9_11();
      v211 = OUTLINED_FUNCTION_13_9();
      v180 = v378;
      v212(v211);
      v200 = sub_26A84D5D8();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D630F8])
    {
      v213 = OUTLINED_FUNCTION_7_13();
      v214(v213);
      v172 = v374;
      v180 = v375;
      OUTLINED_FUNCTION_9_11();
      v215 = OUTLINED_FUNCTION_11_8();
      v216(v215, v186, v180);
      v200 = sub_26A84DCE8();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D63148])
    {
      v217 = OUTLINED_FUNCTION_7_13();
      v218(v217);
      OUTLINED_FUNCTION_6_16();
      OUTLINED_FUNCTION_11_8();
      OUTLINED_FUNCTION_29_1();
      v219();
      v200 = sub_26A84DE88();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D630B0])
    {
      v220 = OUTLINED_FUNCTION_7_13();
      v221(v220);
      OUTLINED_FUNCTION_6_16();
      OUTLINED_FUNCTION_11_8();
      OUTLINED_FUNCTION_29_1();
      v222();
      v200 = sub_26A84DB28();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D63018])
    {
      v223 = OUTLINED_FUNCTION_7_13();
      v224(v223);
      OUTLINED_FUNCTION_6_16();
      OUTLINED_FUNCTION_11_8();
      OUTLINED_FUNCTION_29_1();
      v225();
      v200 = sub_26A84D358();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D63050])
    {
      v226 = OUTLINED_FUNCTION_7_13();
      v227(v226);
      OUTLINED_FUNCTION_6_16();
      OUTLINED_FUNCTION_11_8();
      OUTLINED_FUNCTION_29_1();
      v228();
      v200 = sub_26A84D858();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D63100])
    {
      v229 = OUTLINED_FUNCTION_7_13();
      v230(v229);
      OUTLINED_FUNCTION_6_16();
      OUTLINED_FUNCTION_11_8();
      OUTLINED_FUNCTION_29_1();
      v231();
      v200 = sub_26A84DD68();
      goto LABEL_31;
    }

    if (v182 == *MEMORY[0x277D630E8])
    {
      v235 = OUTLINED_FUNCTION_1_16();
      v236(v235);
      OUTLINED_FUNCTION_6_16();
      OUTLINED_FUNCTION_8_11();
      OUTLINED_FUNCTION_12_5();
      v237();
      v238 = sub_26A84DCA8();
    }

    else if (v182 == *MEMORY[0x277D63068])
    {
      v239 = OUTLINED_FUNCTION_1_16();
      v240(v239);
      OUTLINED_FUNCTION_6_16();
      OUTLINED_FUNCTION_8_11();
      OUTLINED_FUNCTION_12_5();
      v241();
      v238 = sub_26A84D948();
    }

    else if (v182 == *MEMORY[0x277D63140])
    {
      v242 = OUTLINED_FUNCTION_1_16();
      v243(v242);
      OUTLINED_FUNCTION_6_16();
      OUTLINED_FUNCTION_8_11();
      OUTLINED_FUNCTION_12_5();
      v244();
      v238 = sub_26A84DE68();
    }

    else
    {
      if (v182 == *MEMORY[0x277D63188] || v182 == *MEMORY[0x277D62FD0])
      {
        goto LABEL_5;
      }

      if (v182 == *MEMORY[0x277D63128])
      {
        v247 = OUTLINED_FUNCTION_1_16();
        v248(v247);
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_12_5();
        v249();
        v238 = sub_26A84DE08();
      }

      else if (v182 == *MEMORY[0x277D630F0])
      {
        v250 = OUTLINED_FUNCTION_1_16();
        v251(v250);
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_12_5();
        v252();
        v238 = sub_26A84DCC8();
      }

      else if (v182 == *MEMORY[0x277D63168])
      {
        v253 = OUTLINED_FUNCTION_1_16();
        v254(v253);
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_12_5();
        v255();
        v238 = sub_26A84DF18();
      }

      else
      {
        if (v182 != *MEMORY[0x277D63158])
        {
          if (v182 == *MEMORY[0x277D63198] || v182 == *MEMORY[0x277D62FF8] || v182 == *MEMORY[0x277D62FF0] || v182 == *MEMORY[0x277D630C8])
          {
            goto LABEL_5;
          }

          if (v182 == *MEMORY[0x277D63190])
          {
            goto LABEL_57;
          }

          if (v182 == *MEMORY[0x277D63078])
          {
            v260 = OUTLINED_FUNCTION_1_16();
            v261(v260);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v262();
            v238 = sub_26A84D988();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63000])
          {
            v263 = OUTLINED_FUNCTION_1_16();
            v264(v263);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v265();
            v238 = sub_26A84D028();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63008])
          {
            v266 = OUTLINED_FUNCTION_1_16();
            v267(v266);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v268();
            v238 = sub_26A84D048();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63028])
          {
            goto LABEL_5;
          }

          if (v182 == *MEMORY[0x277D63030])
          {
            v269 = OUTLINED_FUNCTION_1_16();
            v270(v269);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v271();
            v238 = sub_26A84D5B8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63090])
          {
            v272 = OUTLINED_FUNCTION_1_16();
            v273(v272);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v274();
            v238 = sub_26A84D9E8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63118])
          {
            v275 = OUTLINED_FUNCTION_1_16();
            v276(v275);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v277();
            v238 = sub_26A84DDC8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63150])
          {
            v278 = OUTLINED_FUNCTION_1_16();
            v279(v278);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v280();
            v238 = sub_26A84DEA8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63088])
          {
            v281 = OUTLINED_FUNCTION_1_16();
            v282(v281);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v283();
            v238 = sub_26A84D9C8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63010])
          {
            v284 = OUTLINED_FUNCTION_1_16();
            v285(v284);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v286();
            v238 = sub_26A84D338();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63180])
          {
            goto LABEL_57;
          }

          if (v182 == *MEMORY[0x277D63070])
          {
            v287 = OUTLINED_FUNCTION_1_16();
            v288(v287);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v289();
            v238 = sub_26A84D968();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D62FE0])
          {
            v290 = OUTLINED_FUNCTION_1_16();
            v291(v290);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v292();
            v238 = sub_26A84CE38();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D630B8])
          {
            v293 = OUTLINED_FUNCTION_1_16();
            v294(v293);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v295();
            v238 = sub_26A84DB68();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63098] || v182 == *MEMORY[0x277D63048])
          {
            goto LABEL_5;
          }

          if (v182 == *MEMORY[0x277D63110])
          {
            v296 = OUTLINED_FUNCTION_1_16();
            v297(v296);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v298();
            v238 = sub_26A84DDA8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63160])
          {
            v299 = OUTLINED_FUNCTION_1_16();
            v300(v299);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v301();
            v238 = sub_26A84DEF8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D630A0])
          {
            goto LABEL_5;
          }

          if (v182 == *MEMORY[0x277D63178])
          {
            v302 = OUTLINED_FUNCTION_1_16();
            v303(v302);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v304();
            v238 = sub_26A84DF58();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D630C0])
          {
            v305 = OUTLINED_FUNCTION_1_16();
            v306(v305);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v307();
            v238 = sub_26A84DBA8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63058])
          {
            v308 = OUTLINED_FUNCTION_1_16();
            v309(v308);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v310();
            v238 = sub_26A84D898();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63020] || v182 == *MEMORY[0x277D63060] || v182 == *MEMORY[0x277D62FE8] || v182 == *MEMORY[0x277D62FC8] || v182 == *MEMORY[0x277D63120])
          {
            goto LABEL_57;
          }

          if (v182 == *MEMORY[0x277D63108])
          {
            v311 = OUTLINED_FUNCTION_1_16();
            v312(v311);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v313();
            v238 = sub_26A84DD88();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D63080])
          {
            v314 = OUTLINED_FUNCTION_1_16();
            v315(v314);
            OUTLINED_FUNCTION_6_16();
            OUTLINED_FUNCTION_8_11();
            OUTLINED_FUNCTION_12_5();
            v316();
            v238 = sub_26A84D9A8();
            goto LABEL_40;
          }

          if (v182 == *MEMORY[0x277D62FC0])
          {
LABEL_57:
            v259 = *(v167 + 8);
            v259(v183, v177);
          }

          else
          {
            if (v182 == *MEMORY[0x277D63138])
            {
              v317 = OUTLINED_FUNCTION_1_16();
              v318(v317);
              OUTLINED_FUNCTION_6_16();
              OUTLINED_FUNCTION_8_11();
              OUTLINED_FUNCTION_12_5();
              v319();
              v238 = sub_26A84DE48();
              goto LABEL_40;
            }

            if (v182 == *MEMORY[0x277D63170])
            {
              v320 = OUTLINED_FUNCTION_1_16();
              v321(v320);
              OUTLINED_FUNCTION_6_16();
              OUTLINED_FUNCTION_8_11();
              OUTLINED_FUNCTION_12_5();
              v322();
              v238 = sub_26A84DF38();
              goto LABEL_40;
            }

            if (v182 == *MEMORY[0x277D630E0])
            {
              goto LABEL_5;
            }

            v323 = v333;
            v331 = v183;
            v181(v333, v183, v177);
            v324 = (*(v167 + 80) + 16) & ~*(v167 + 80);
            v325 = swift_allocObject();
            v326 = v325;
            v179((v325 + v324), v323, v177);
            v327 = sub_26A851E98();
            LOBYTE(v328) = 2;
            sub_26A7C7120(v327, sub_26A54CFCC, v326, 1, "SnippetUI/ContainsComponentsWithAction.swift", 44, 2, 140, "containsComponentsWithAction", 28, v328, v329, v330[0], v330[1], v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343);

            v259 = *(v167 + 8);
            v259(v331, v177);
          }

          v259(v186, v177);
          goto LABEL_3;
        }

        v256 = OUTLINED_FUNCTION_1_16();
        v257(v256);
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_12_5();
        v258();
        v238 = sub_26A84DEC8();
      }
    }

LABEL_40:
    v178 = v238;
    (*(v172 + 1))(v181, v167);
    v245 = OUTLINED_FUNCTION_15_4();
    v246(v245);
    return v178 & 1;
  }

  sub_26A54CE1C(v158);
LABEL_3:
  v178 = 0;
  return v178 & 1;
}

uint64_t sub_26A54CE1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A54CE84(uint64_t a1)
{
  v2 = sub_26A84BD78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_26A852248();
  MEMORY[0x26D663B00](0x206E776F6E6B6E55, 0xED00002065707974);
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_26A8517F8();
  MEMORY[0x26D663B00](v6);

  MEMORY[0x26D663B00](0xD000000000000036, 0x800000026A88BC60);
  return v8[0];
}

uint64_t sub_26A54CFCC()
{
  v1 = *(sub_26A84BD78() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A54CE84(v2);
}

uint64_t Response.hasAction(for:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_26A510388(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19[0], v19[1], v19[2], v20, v21, v22, v23, v24, v25, v26, v27);
  v9 = v8;
  v10 = *(v8 + 16);
  result = v8 + 32;
  v12 = -v10;
  v13 = -1;
  while (1)
  {
    v14 = v12 + v13;
    if (v12 + v13 == -1)
    {
LABEL_5:

      return v14 != -1;
    }

    if (++v13 >= *(v9 + 16))
    {
      break;
    }

    v15 = result + 40;
    sub_26A50429C(result, v19);
    v16 = v20;
    v17 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    LOBYTE(v16) = Component.containsComponentsWithAction.getter(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = v15;
    if (v16)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t View.reportAConcernContent(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A54D24C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACEA8);
  sub_26A851048();
  MEMORY[0x26D662ED0](v7, a3, &type metadata for ReportAConcernModifier, a4);
  sub_26A54D2B8(v7[0], v7[1]);
}

uint64_t sub_26A54D24C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26A54D260(a1, a2);
  }

  return a1;
}

uint64_t sub_26A54D260(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26A54D2B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26A513D40(a1, a2);
  }

  return a1;
}

uint64_t sub_26A54D2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACEB8);
  sub_26A851058();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACEC8);
  v6 = (a2 + *(result + 36));
  *v6 = v7;
  v6[1] = v8;
  return result;
}

double sub_26A54D3AC(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t))
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    v5 = sub_26A54D2B8(*a1, v3);
    a2(&v7, v5);
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t *static ReportAConcernContent.reduce(value:nextValue:)(uint64_t *result, uint64_t (*a2)(uint64_t))
{
  v3 = result[1];
  if (v3 >> 60 == 15)
  {
    v4 = result;
    v5 = sub_26A54D2B8(*result, v3);
    result = a2(v5);
    *v4 = result;
    v4[1] = v6;
  }

  return result;
}

double sub_26A54D464@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26A85CA10;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportAConcernContent(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_26A54D52C()
{
  result = qword_2803ACEB0;
  if (!qword_2803ACEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACEB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A54D5C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A54D618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_26A54D698()
{
  result = qword_2803ACED0;
  if (!qword_2803ACED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACEC8);
    sub_26A4DBCC8(&qword_2803ACED8, &qword_2803ACEC0);
    sub_26A4DBCC8(&qword_2803ACEE0, &qword_2803ACEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACED0);
  }

  return result;
}

id sub_26A54D7A4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 player];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v1 text_1];
  if (!v6)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v9 = v1;
    *(v9 + 8) = &unk_287B132F0;
    *(v9 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v78 = v6;
  RFTextProperty.asPartialText()(v76);
  v7 = [v1 text_2];
  if (v7)
  {
    v8 = v7;
    *(&v74 + 1) = &type metadata for PartialText;
    v75 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v73 = swift_allocObject();
    RFTextProperty.asPartialText()(v73 + 16);
  }

  else
  {
    v75 = 0;
    v74 = 0u;
    v73 = 0u;
  }

  v11 = [v2 text_3];
  if (v11)
  {
    v12 = v11;
    *(&v71 + 1) = &type metadata for PartialText;
    v72 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v70 = swift_allocObject();
    RFTextProperty.asPartialText()(v70 + 16);
  }

  else
  {
    v72 = 0;
    v71 = 0u;
    v70 = 0u;
  }

  v13 = [v2 text_4];
  if (v13)
  {
    v14 = v13;
    *(&v68 + 1) = &type metadata for PartialText;
    v69 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v67 = swift_allocObject();
    RFTextProperty.asPartialText()(v67 + 16);
  }

  else
  {
    v69 = 0;
    v68 = 0u;
    v67 = 0u;
  }

  v15 = [v2 thumbnail];
  if (v15)
  {
    v22 = v15;
    *(&v65 + 1) = sub_26A84BD28();
    v66 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v64);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v66 = 0;
    v65 = 0u;
    v64 = 0u;
  }

  sub_26A6F9608(0, 0, v16, v17, v18, v19, v20, v21, v54);
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v24 = __swift_project_value_buffer(v23, qword_281588798);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v26 = &a1[*(v25 + 32)];
  sub_26A4EA070(v24, v26, &qword_2803B3890);
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  sub_26A4DB4E0(v26 + *(v23 + 36), &a1[*(v25 + 28)]);
  v27 = type metadata accessor for SummaryItemPlayerView();
  v28 = v27[5];
  if (qword_2803A8AE8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, qword_2803D1B00, sizeof(__dst));
  memcpy(&v53[368], qword_2803D1B00, 0xD0uLL);
  sub_26A4EA070(__dst, v63, &qword_2803ACEF8);
  sub_26A6AEE74(v53);
  memcpy(v56, &v53[400], sizeof(v56));
  memcpy(&v53[192], &v53[400], 0xB0uLL);
  memcpy(&a1[v28], v53, 0x240uLL);
  v29 = &a1[v27[6]];
  sub_26A54DFFC(v56, v63);
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v57[0] = xmmword_281588758[0];
  v57[1] = unk_281588768;
  v57[2] = xmmword_281588778;
  v57[3] = unk_281588788;
  v58 = xmmword_281588758[0];
  v59 = unk_281588768;
  v60 = xmmword_281588778;
  v61 = unk_281588788;
  v48 = unk_281588788;
  v49 = xmmword_281588778;
  sub_26A4EA070(v57, v63, &qword_2803A91B0);
  sub_26A6AEE74(v62);
  memcpy(v29, v62, 0xC0uLL);
  *(v29 + 12) = v49;
  *(v29 + 13) = v48;
  v30 = v59;
  *(v29 + 14) = v58;
  *(v29 + 15) = v30;
  v31 = v61;
  *(v29 + 16) = v60;
  *(v29 + 17) = v31;
  v32 = v27[7];
  *&a1[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v33 = &a1[v27[8]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v27[9];
  *&a1[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  memcpy(v63, v76, 0xFAuLL);
  memcpy(v52, v76, 0xFAuLL);
  sub_26A4EC458(v63, v50);
  sub_26A4EC4B4();
  *&a1[v27[10]] = sub_26A851248();
  sub_26A4EA070(&v73, v52, &qword_2803A91B8);
  if (v52[3])
  {
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v35 = OUTLINED_FUNCTION_0_11();
    v37 = v36(v35);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    sub_26A537648(v52);
    v37 = 0;
  }

  *&a1[v27[11]] = v37;
  sub_26A4EA070(&v70, v52, &qword_2803A91B8);
  if (v52[3])
  {
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v38 = OUTLINED_FUNCTION_0_11();
    v40 = v39(v38);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    sub_26A537648(v52);
    v40 = 0;
  }

  *&a1[v27[12]] = v40;
  sub_26A4EA070(&v67, v52, &qword_2803A91B8);
  if (v52[3])
  {
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v41 = OUTLINED_FUNCTION_0_11();
    v43 = v42(v41);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    sub_26A537648(v52);
    v43 = 0;
  }

  *&a1[v27[13]] = v43;
  sub_26A4EA070(&v64, v50, &qword_2803A91B8);
  if (v51)
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v44 = OUTLINED_FUNCTION_0_11();
    v46 = v45(v44);
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_26A537648(v50);
    v46 = 0;
  }

  *&a1[v27[14]] = v46;
  sub_26A5376B0(v54, v52);
  sub_26A53770C();
  v47 = sub_26A851248();

  sub_26A537760(v54);
  memcpy(v52, v76, 0xFAuLL);
  sub_26A4EC508(v52);
  sub_26A537648(&v64);
  sub_26A537648(&v67);
  sub_26A537648(&v70);
  result = sub_26A537648(&v73);
  *&a1[v27[15]] = v47;
  return result;
}

unint64_t sub_26A54DFA4()
{
  result = qword_2803ACEF0;
  if (!qword_2803ACEF0)
  {
    type metadata accessor for SummaryItemPlayerView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACEF0);
  }

  return result;
}

uint64_t sub_26A54E058(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x79616C70736964;
  }

  else
  {
    if (a1)
    {
      type metadata accessor for VRXMode();
      result = sub_26A8525E8();
      __break(1u);
      return result;
    }

    v1 = 0xE500000000000000;
    v2 = 0x6563696F76;
  }

  MEMORY[0x26D663B00](v2, v1);
}

uint64_t sub_26A54E0F4(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      type metadata accessor for VRXPlayerState();
      result = sub_26A8525E8();
      __break(1u);
      return result;
    }

    v1 = 0xE600000000000000;
    v2 = 0x646573756150;
  }

  else
  {
    v1 = 0xE700000000000000;
    v2 = 0x676E6979616C50;
  }

  MEMORY[0x26D663B00](v2, v1);
}

uint64_t sub_26A54E190()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5D70A0();
  *v0 = result;
  return result;
}

uint64_t sub_26A54E1E0()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.mode.getter();
  *v0 = result;
  return result;
}

uint64_t PluginView.init(snippetModel:bundleName:mode:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for Form();
  swift_allocObject();
  Form.init()();
  OUTLINED_FUNCTION_1_17();
  sub_26A54FF28(v12, v13);
  a6[7] = sub_26A84F258();
  a6[8] = v14;
  a6[9] = 0xD000000000000023;
  a6[10] = 0x800000026A88B1A0;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  type metadata accessor for Context();
  OUTLINED_FUNCTION_2_13();
  sub_26A54FF28(v15, v16);
  result = sub_26A84F258();
  a6[5] = result;
  a6[6] = v18;
  return result;
}

uint64_t PluginView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  sub_26A84F5E8();
  OUTLINED_FUNCTION_15();
  v84 = v4;
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF00);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v80 = &v76 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA128);
  OUTLINED_FUNCTION_15();
  v77 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v76 = &v76 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF08);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  memcpy(__dst, v2, 0x58uLL);
  v14 = __dst[10];
  v78 = __dst[9];
  v15 = __dst[2];
  v16 = __dst[3];
  v17 = __dst[4];
  v18 = __dst[6];
  swift_beginAccess();
  v75 = v14;
  v86 = v16;
  v87 = v15;
  v19 = v13;
  v88 = v17;
  sub_26A5CA0C0();
  v21 = v20;
  *v19 = sub_26A84FBF8();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF10);
  if (v21)
  {
    v90 = v21;

    v22 = MEMORY[0x277CE11C8];
    v78 = v18;
    v23 = MEMORY[0x277CE11C0];
    v24 = v76;
    sub_26A850AF8();
    v25 = v77;
    v26 = v81;
    (*(v77 + 16))(v80, v24, v81);
    swift_storeEnumTagMultiPayload();
    v90 = v22;
    v91 = v23;
    OUTLINED_FUNCTION_3_16();
    sub_26A84FDF8();

    (*(v25 + 8))(v24, v26);
    v27 = v78;
  }

  else
  {
    if (AFIsInternalInstall())
    {
      sub_26A54F284(__dst, &v90);
      v28 = sub_26A851E88();
      LOBYTE(v75) = 2;
      sub_26A7B3FE8(v28, 1, "SnippetUI/PluginView.swift", 26, 2, 51, "noSnippetView", 13, v75, __dst, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
    }

    swift_storeEnumTagMultiPayload();
    v90 = MEMORY[0x277CE11C8];
    v91 = MEMORY[0x277CE11C0];
    OUTLINED_FUNCTION_3_16();
    sub_26A84FDF8();
    v27 = v18;
  }

  v29 = v83;
  sub_26A84F5D8();
  sub_26A54FF6C(&qword_2803ACF18, &qword_2803ACF08);
  v30 = v89;
  sub_26A850C98();
  (*(v84 + 8))(v29, v85);
  sub_26A496348(v19);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF20) + 36);
  v32 = type metadata accessor for OnVisualResponseShownModifier();
  sub_26A51D0F8(v95, v31 + v32[9], &qword_2803ACF28);
  v94 = 0;
  v33 = v86;

  sub_26A851048();
  v34 = v91;
  *v31 = v90;
  *(v31 + 8) = v34;
  *(v31 + 16) = swift_getKeyPath();
  *(v31 + 25) = 0;
  swift_unknownObjectWeakInit();
  v35 = v32[6];
  *(v31 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v36 = v31 + v32[7];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  v37 = v31 + v32[8];
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  v38 = (v31 + v32[10]);
  *v38 = v87;
  v38[1] = v33;
  type metadata accessor for Context();
  OUTLINED_FUNCTION_2_13();
  sub_26A54FF28(v39, v40);
  v41 = v27;
  v42 = sub_26A84EB78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF30);
  OUTLINED_FUNCTION_4_14();
  *v43 = v42;
  v43[1] = v41;
  v44 = v41;
  v45 = sub_26A84F258();
  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF38);
  OUTLINED_FUNCTION_4_14();
  *v48 = v45;
  v48[1] = v47;
  KeyPath = swift_getKeyPath();
  v50 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  swift_beginAccess();
  v51 = *&v44[v50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF40);
  OUTLINED_FUNCTION_4_14();
  *v52 = KeyPath;
  v52[1] = v51;
  v53 = swift_getKeyPath();
  LOBYTE(v44) = v44[OBJC_IVAR____TtC9SnippetUI7Context_currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF48);
  OUTLINED_FUNCTION_4_14();
  *v54 = v53;
  *(v54 + 8) = v44;
  v55 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF50) + 36));
  *v55 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9F0);
  OUTLINED_FUNCTION_10_6();
  swift_storeEnumTagMultiPayload();
  v56 = v55 + *(type metadata accessor for VibrancyTraitCheck() + 20);
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = __dst[8];
  type metadata accessor for Form();
  OUTLINED_FUNCTION_1_17();
  sub_26A54FF28(v58, v59);

  v60 = sub_26A84EB78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF58);
  OUTLINED_FUNCTION_4_14();
  *v61 = v60;
  v61[1] = v57;
  v62 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF60);
  OUTLINED_FUNCTION_4_14();
  v63 = v88;
  *v64 = v62;
  v64[1] = v63;
  OUTLINED_FUNCTION_7_14();
  v65 = swift_allocObject();
  OUTLINED_FUNCTION_10_7(v65);
  sub_26A54F284(__dst, &v90);
  v66 = sub_26A851448();
  v68 = v67;

  sub_26A54F2BC(v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF68);
  OUTLINED_FUNCTION_4_14();
  *v69 = sub_26A8027E0;
  v69[1] = 0;
  v69[2] = v66;
  v69[3] = v68;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_26A54F27C;
  *(v70 + 24) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF70);
  OUTLINED_FUNCTION_4_14();
  *v71 = sub_26A52E998;
  v71[1] = v70;
  OUTLINED_FUNCTION_7_14();
  v72 = swift_allocObject();
  OUTLINED_FUNCTION_10_7(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF78);
  OUTLINED_FUNCTION_4_14();
  *v73 = sub_26A54F324;
  v73[1] = v62;
  return sub_26A54F284(__dst, &v90);
}

void *sub_26A54EC38(double a1, double a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 informHostOfViewResize_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26A54ECD4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 60 != 15)
  {
    if (v1 < 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v6 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v6 informHostOfBackgroundMaterial_];
      }
    }

    else
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (!v2)
      {
        return;
      }

      v3 = v2;
      if ([v2 respondsToSelector_])
      {
        sub_26A54FFB0();
        sub_26A54FFF4(v1);
        sub_26A550008(v1);
        v4 = sub_26A851FB8();
        [v3 informHostOfBackgroundColor_];
        swift_unknownObjectRelease();
        sub_26A550014(v1);

        return;
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t PluginView.asAnyRootView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-v8];
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v9, v2, 0x58uLL);
  swift_storeEnumTagMultiPayload();
  sub_26A54F32C(v9, a1);
  sub_26A54F32C(v9, v6);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  v10 = (a1 + *(type metadata accessor for AnyRootView(0) + 20));
  if (v2 == 1)
  {
    v10[3] = &type metadata for PluginView;
    v10[4] = sub_26A54F390();
    OUTLINED_FUNCTION_7_14();
    v11 = swift_allocObject();
    *v10 = v11;
    memcpy((v11 + 16), v6, 0x58uLL);
  }

  else
  {
    v10[3] = type metadata accessor for ResponseView();
    v10[4] = sub_26A54FF28(&qword_2803ACF80, type metadata accessor for ResponseView);
    __swift_allocate_boxed_opaque_existential_1(v10);
    v12 = OUTLINED_FUNCTION_10_6();
    sub_26A54F494(v12, v13);
  }

  sub_26A54F284(__dst, v15);
  return sub_26A54F438(v9);
}

uint64_t PluginView.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[6];
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000011, 0x800000026A88BCD0);
  sub_26A54E058(v5);
  MEMORY[0x26D663B00](0x3A6D6F696469202CLL, 0xE900000000000020);
  v7 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  swift_beginAccess();
  v8 = VRXIdiom.description.getter(*(v6 + v7));
  MEMORY[0x26D663B00](v8);

  MEMORY[0x26D663B00](0xD000000000000018, 0x800000026A88BCF0);
  MEMORY[0x26D65CE70](v1, v2);
  v9 = sub_26A852568();
  MEMORY[0x26D663B00](v9);

  MEMORY[0x26D663B00](0x6E7562206E69202CLL, 0xED0000203A656C64);
  MEMORY[0x26D663B00](v3, v4);
  return 0;
}

uint64_t sub_26A54F14C()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.responseViewId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A54F174(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.responseViewId.setter(v1, v2);
}

uint64_t sub_26A54F1D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD030);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  sub_26A51D0F8(a1, &v5 - v3, &qword_2803AD030);
  return sub_26A84F7E8();
}

uint64_t sub_26A54F2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A54F32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyRootView.ContentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A54F390()
{
  result = qword_2803B3620;
  if (!qword_2803B3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3620);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  sub_26A513D40(*(v0 + 16), *(v0 + 24));

  OUTLINED_FUNCTION_7_14();

  return swift_deallocObject();
}

uint64_t sub_26A54F438(uint64_t a1)
{
  v2 = type metadata accessor for AnyRootView.ContentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A54F494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A54F51C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A54F55C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A54F5C0()
{
  result = qword_2803ACF88;
  if (!qword_2803ACF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF78);
    sub_26A54F678();
    sub_26A54FF6C(&qword_2803AD020, &qword_2803AD028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACF88);
  }

  return result;
}

unint64_t sub_26A54F678()
{
  result = qword_2803ACF90;
  if (!qword_2803ACF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF70);
    sub_26A54F730();
    sub_26A54FF6C(&qword_2803A9C20, &qword_2803A9C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACF90);
  }

  return result;
}

unint64_t sub_26A54F730()
{
  result = qword_2803ACF98;
  if (!qword_2803ACF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF68);
    sub_26A54F7E8();
    sub_26A54FF6C(&qword_2803A9C10, &qword_2803A9C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACF98);
  }

  return result;
}

unint64_t sub_26A54F7E8()
{
  result = qword_2803ACFA0;
  if (!qword_2803ACFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF60);
    sub_26A54F8A0();
    sub_26A54FF6C(&qword_28157FB30, &qword_2803ACAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFA0);
  }

  return result;
}

unint64_t sub_26A54F8A0()
{
  result = qword_2803ACFA8;
  if (!qword_2803ACFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF58);
    sub_26A54F958();
    sub_26A54FF6C(&qword_28157FB98, &qword_2803ACB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFA8);
  }

  return result;
}

unint64_t sub_26A54F958()
{
  result = qword_2803ACFB0;
  if (!qword_2803ACFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF50);
    sub_26A54FA14();
    sub_26A54FF28(&qword_2803ACB08, type metadata accessor for VibrancyTraitCheck);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFB0);
  }

  return result;
}

unint64_t sub_26A54FA14()
{
  result = qword_2803ACFB8;
  if (!qword_2803ACFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF48);
    sub_26A54FACC();
    sub_26A54FF6C(&qword_2803ACAD0, &qword_2803ACAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFB8);
  }

  return result;
}

unint64_t sub_26A54FACC()
{
  result = qword_2803ACFC0;
  if (!qword_2803ACFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF40);
    sub_26A54FB84();
    sub_26A54FF6C(&qword_2803AD010, &qword_2803AD018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFC0);
  }

  return result;
}

unint64_t sub_26A54FB84()
{
  result = qword_2803ACFC8;
  if (!qword_2803ACFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF38);
    sub_26A54FC10();
    sub_26A54FED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFC8);
  }

  return result;
}

unint64_t sub_26A54FC10()
{
  result = qword_2803ACFD0;
  if (!qword_2803ACFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF30);
    sub_26A54FCC8();
    sub_26A54FF6C(&qword_28157FB90, &qword_2803AD000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFD0);
  }

  return result;
}

unint64_t sub_26A54FCC8()
{
  result = qword_2803ACFD8;
  if (!qword_2803ACFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACFE0);
    sub_26A54FD54();
    sub_26A54FE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFD8);
  }

  return result;
}

unint64_t sub_26A54FD54()
{
  result = qword_2803ACFE8;
  if (!qword_2803ACFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACF08);
    sub_26A54FF6C(&qword_2803ACF18, &qword_2803ACF08);
    swift_getOpaqueTypeConformance2();
    sub_26A54FF28(&qword_2803ACFF0, type metadata accessor for OnVisualResponseShownModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFE8);
  }

  return result;
}

unint64_t sub_26A54FE80()
{
  result = qword_2803ACFF8;
  if (!qword_2803ACFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACFF8);
  }

  return result;
}

unint64_t sub_26A54FED4()
{
  result = qword_2803AD008;
  if (!qword_2803AD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD008);
  }

  return result;
}

uint64_t sub_26A54FF28(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A54FF6C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A54FFB0()
{
  result = qword_28157D7E8;
  if (!qword_28157D7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D7E8);
  }

  return result;
}

uint64_t sub_26A54FFF4(uint64_t result)
{
  if (result >> 60 != 15)
  {
    return sub_26A550008(result);
  }

  return result;
}

uint64_t sub_26A550008(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_26A550014(uint64_t result)
{
  if (result >> 60 != 15)
  {
    return sub_26A550028(result);
  }

  return result;
}

uint64_t sub_26A550028(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return swift_getOpaqueTypeConformance2();
}

void *OUTLINED_FUNCTION_10_7(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 176), 0x58uLL);
}

uint64_t sub_26A5500C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v71 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v73 = &v69 - v7;
  v74 = sub_26A850338();
  OUTLINED_FUNCTION_15();
  v70 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v72 = v11 - v10;
  v12 = sub_26A84C838();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = sub_26A84C858();
  OUTLINED_FUNCTION_15();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v25 = v24 - v23;
  v26 = sub_26A84AEF8();
  OUTLINED_FUNCTION_15();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_41();
  v32 = v31 - v30;
  (*(v28 + 16))(v31 - v30, v1, v26);
  v33 = (*(v28 + 88))(v32, v26);
  if (v33 == *MEMORY[0x277D628C8])
  {
    (*(v28 + 96))(v32, v26);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD060);
    v35 = *(v34 + 64);
    (*(v21 + 32))(v25, v32 + *(v34 + 48), v19);
    v36 = (*(v14 + 32))(v18, v32 + v35, v12);
    v37 = sub_26A5506E0(v36);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_9_12();
      v40(v39);
      v41 = OUTLINED_FUNCTION_8_12();
      v42(v41);
    }

    else
    {
      v44 = v37;
      v45 = v73;
      sub_26A551510();
      v46 = v74;
      if (__swift_getEnumTagSinglePayload(v45, 1, v74) != 1)
      {
        v52 = v70;
        v53 = *(v70 + 32);
        v69 = v44;
        v54 = v72;
        v53(v72);
        v55 = v71;
        (*(v52 + 16))(v71, v54, v46);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v46);
        v51 = sub_26A8503E8();
        sub_26A4DBD10(v55, &qword_2803AB208);
        (*(v52 + 8))(v72, v46);
        v56 = OUTLINED_FUNCTION_9_12();
        v57(v56);
        v58 = OUTLINED_FUNCTION_8_12();
        v59(v58);
        return v51;
      }

      v47 = OUTLINED_FUNCTION_9_12();
      v48(v47);
      v49 = OUTLINED_FUNCTION_8_12();
      v50(v49);
      sub_26A4DBD10(v45, &qword_2803AB208);
    }

    return 0;
  }

  else
  {
    if (v33 == *MEMORY[0x277D628A8])
    {
      return sub_26A8502C8();
    }

    if (v33 == *MEMORY[0x277D628C0])
    {
      return sub_26A850328();
    }

    if (v33 == *MEMORY[0x277D628D0])
    {
      return sub_26A850408();
    }

    if (v33 == *MEMORY[0x277D628D8])
    {
      return sub_26A850418();
    }

    if (v33 == *MEMORY[0x277D62900])
    {
      return sub_26A8504A8();
    }

    if (v33 == *MEMORY[0x277D628B0])
    {
      return sub_26A8502D8();
    }

    if (v33 == *MEMORY[0x277D628B8])
    {
      return sub_26A8502F8();
    }

    if (v33 == *MEMORY[0x277D628E0])
    {
      return sub_26A850458();
    }

    if (v33 == *MEMORY[0x277D628F8])
    {
      return sub_26A850498();
    }

    if (v33 == *MEMORY[0x277D628E8])
    {
      return sub_26A850468();
    }

    if (v33 != *MEMORY[0x277D628F0])
    {
      sub_26A851E98();
      LOBYTE(v67) = 2;
      OUTLINED_FUNCTION_6_17();
      sub_26A7AB374(v61, v62, v63, v64, v65, 95, v66, 5, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      v51 = sub_26A8502F8();
      (*(v28 + 8))(v32, v26);
      return v51;
    }

    return sub_26A850488();
  }
}

uint64_t TextElement.asView()@<X0>(void *a1@<X8>)
{
  result = sub_26A550984(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_26A550984@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  type metadata accessor for RichTextView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v10 = type metadata accessor for PlainTextView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  v15 = sub_26A84AF58();
  OUTLINED_FUNCTION_15();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v21 = v20 - v19;
  sub_26A84AF68();
  v22 = (*(v17 + 88))(v21, v15);
  if (v22 == *MEMORY[0x277D62910])
  {
    v23 = OUTLINED_FUNCTION_7_15();
    v24(v23);
    (*(v4 + 16))(v14 + v10[8], v1, v2);
    *v14 = swift_getKeyPath();
    *(v14 + 8) = 0;
    *(v14 + 16) = swift_getKeyPath();
    *(v14 + 24) = 0;
    v25 = v10[6];
    *(v14 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
    swift_storeEnumTagMultiPayload();
    v26 = v14 + v10[7];
    *v26 = swift_getKeyPath();
    *(v26 + 8) = 0;
    sub_26A55180C(&qword_2803AD058, type metadata accessor for PlainTextView);
    result = sub_26A851248();
    *a1 = result;
  }

  else if (v22 == *MEMORY[0x277D62908])
  {
    v28 = OUTLINED_FUNCTION_7_15();
    v29(v28);
    (*(v4 + 16))(v8, v1, v2);
    sub_26A7EC600();
    sub_26A55180C(&qword_2803AD050, type metadata accessor for RichTextView);
    result = sub_26A851248();
    *a1 = result;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A551788();
    *a1 = sub_26A851248();
    v30 = OUTLINED_FUNCTION_7_15();
    return v31(v30);
  }

  return result;
}

uint64_t sub_26A550D88(int a1, int a2)
{
  LODWORD(v92) = a2;
  LODWORD(v91) = a1;
  sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v83 = v3;
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v82 = v5 - v4;
  v89 = sub_26A84AF58();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v94 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  v22 = OUTLINED_FUNCTION_79(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v88 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v82 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD040);
  v29 = OUTLINED_FUNCTION_79(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v85 = v30 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v82 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD048);
  v36 = OUTLINED_FUNCTION_79(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v82 - v41;
  sub_26A84AF28();
  v93 = v34;
  sub_26A84AED8();
  v43 = sub_26A84AF18();
  v44 = v91;
  if (v43 != 2)
  {
    v44 = v43;
  }

  v86 = v44;
  v45 = sub_26A84AF78();
  v46 = v92;
  if (v45 != 2)
  {
    v46 = v45;
  }

  v87 = v46;
  v90 = v27;
  sub_26A84AF88();
  sub_26A84AF68();
  sub_26A84AF38();
  (*(v7 + 8))(v11, v89);
  v47 = *(v94 + 16);
  v91 = v20;
  v92 = v12;
  v47(v17, v20, v12);
  v48 = sub_26A850888();
  v50 = v49;
  v52 = v51;
  v89 = v42;
  sub_26A51D0F8(v42, v39, &qword_2803AD048);
  v53 = sub_26A84AEF8();
  if (__swift_getEnumTagSinglePayload(v39, 1, v53) == 1)
  {
    sub_26A4DBD10(v39, &qword_2803AD048);
  }

  else
  {
    v54 = sub_26A5500C8();
    (*(*(v53 - 8) + 8))(v39, v53);
    if (v54)
    {

      v55 = sub_26A850738();

      goto LABEL_10;
    }
  }

  sub_26A4EF6C0(v48, v50, v52 & 1);

  v55 = v48;
LABEL_10:
  v56 = v85;
  sub_26A4EC448(v48, v50, v52 & 1);

  sub_26A51D0F8(v93, v56, &qword_2803AD040);
  v57 = sub_26A84C858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v57);
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v56, &qword_2803AD040);
    v59 = v90;
  }

  else
  {
    sub_26A5506E0(EnumTagSinglePayload);
    v61 = v60;
    (*(*(v57 - 8) + 8))(v56, v57);
    v59 = v90;
    if ((v61 & 1) == 0)
    {
      sub_26A850578();
      OUTLINED_FUNCTION_10_8();
      v62 = OUTLINED_FUNCTION_2_14();
      sub_26A4EC448(v62, v63, v64);

      OUTLINED_FUNCTION_5_15();
    }
  }

  if (v86)
  {
    OUTLINED_FUNCTION_2_14();
    sub_26A850718();
    OUTLINED_FUNCTION_10_8();
    v65 = OUTLINED_FUNCTION_2_14();
    sub_26A4EC448(v65, v66, v67);

    OUTLINED_FUNCTION_5_15();
  }

  if (v87)
  {
    OUTLINED_FUNCTION_2_14();
    sub_26A8507E8();
    OUTLINED_FUNCTION_10_8();
    v68 = OUTLINED_FUNCTION_2_14();
    sub_26A4EC448(v68, v69, v70);

    OUTLINED_FUNCTION_5_15();
  }

  v71 = v88;
  sub_26A51D0F8(v59, v88, &qword_2803AD038);
  v72 = sub_26A84DFA8();
  if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
  {
    sub_26A4DBD10(v71, &qword_2803AD038);
LABEL_22:
    v75 = OUTLINED_FUNCTION_2_14();
    sub_26A4EF6C0(v75, v76, v77);

    v72 = v55;
    goto LABEL_23;
  }

  v73 = v82;
  sub_26A84DF78();
  v74 = _ProtoColor.swiftValue.getter();
  (*(v83 + 8))(v73, v84);
  (*(*(v72 - 8) + 8))(v71, v72);
  if (!v74)
  {
    goto LABEL_22;
  }

  sub_26A8506A8();
  OUTLINED_FUNCTION_10_8();

LABEL_23:
  (*(v94 + 8))(v91, v92);
  sub_26A4DBD10(v59, &qword_2803AD038);
  sub_26A4DBD10(v93, &qword_2803AD040);
  sub_26A4DBD10(v89, &qword_2803AD048);
  v78 = OUTLINED_FUNCTION_2_14();
  sub_26A4EC448(v78, v79, v80);

  return v72;
}

unint64_t sub_26A551788()
{
  result = qword_28157FDC8;
  if (!qword_28157FDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDC8);
  }

  return result;
}

uint64_t sub_26A55180C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_26A5518C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_26A551CEC(0xD000000000000017, 0x800000026A88BD90);
  qword_2815886C0 = result;
  return result;
}

uint64_t sub_26A551918()
{
  v0 = sub_26A8524B8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A55196C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x4667756265444652;
  }
}

uint64_t sub_26A5519D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A551918();
  *a1 = result;
  return result;
}

uint64_t sub_26A551A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A55196C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_26A551AFC(uint64_t a1, char a2)
{
  if (AFIsInternalInstall())
  {
    if (qword_28157D868 != -1)
    {
      OUTLINED_FUNCTION_0_19();
    }

    if (qword_2815886C0)
    {
      v3 = qword_2815886C0;
      sub_26A551C38(a2 & 1);
    }
  }
}

id sub_26A551B9C()
{
  v1 = sub_26A851788();

  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_26A551C38(char a1)
{
  v3 = sub_26A851788();

  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_26A551CEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26A851788();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

_BYTE *_s3KeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A551E30()
{
  result = qword_2803AD068;
  if (!qword_2803AD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD068);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_once();
}

uint64_t sub_26A551EA4@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v15[-v4];
  sub_26A851DA8();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_26A851A28();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  if (v6)
  {
    v7 = sub_26A851E18();
    v9 = v8;
    v10 = swift_getAssociatedTypeWitness();
    (*(*(v10 - 8) + 16))(a1, v9, v10);
    v7(v15, 0);
    v11 = a1;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = swift_getAssociatedTypeWitness();
    v11 = a1;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_26A552104(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = 0;
  v6 = a5 >> 1;
  v7 = 72 * a4 + 32;
  for (i = a4; v6 != i; ++i)
  {
    if (i >= v6)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v5 >= result)
    {
      v6 = i;
      break;
    }

    v5 += (*(a3 + v7) & 1) == 0;
    v7 += 72;
  }

  if (v6 >= a4)
  {
    return sub_26A796B98(a4);
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_26A5521A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for TableRowViewModel();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_26A559E0C(v2, a1, v8);

    if (!v3)
    {
      sub_26A83D898(a2);
    }
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v10 = v2;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    swift_willThrow();
    return v2;
  }
}

unint64_t sub_26A5522F4()
{
  result = qword_2803AD070;
  if (!qword_2803AD070)
  {
    type metadata accessor for TableRowV2View(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD070);
  }

  return result;
}

uint64_t sub_26A55234C()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SashStandardView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A552534()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SashStandardView() + 76);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A55268C()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for SashStandardView() + 80);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

void SashStandardView.init(model:)()
{
  OUTLINED_FUNCTION_85();
  v1 = v0;
  v3 = v2;
  v104 = type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_0(&v102 - v6);
  v111 = type metadata accessor for VisualPropertyView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_0(&v102 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD078);
  v11 = OUTLINED_FUNCTION_79(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0(&v102 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  v16 = OUTLINED_FUNCTION_79(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  v20 = sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v108 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v24 - v23);
  v25 = type metadata accessor for SashStandardView();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  v113 = v25[10];
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
  v114 = v25[11];
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v20);
  v32 = (v3 + v25[12]);
  v119 = 0;
  v118 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8);
  sub_26A851048();
  *v32 = OUTLINED_FUNCTION_13_10();
  v32[1].n128_u64[0] = v33;
  v34 = v3 + v25[13];
  LOBYTE(v118) = 1;
  sub_26A851048();
  OUTLINED_FUNCTION_12_6();
  *v34 = v35;
  *(v34 + 8) = v36;
  *(v3 + v25[14]) = 0x4020000000000000;
  v37 = v3 + v25[15];
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  *(v37 + 24) = swift_getKeyPath();
  *(v37 + 32) = 0;
  v38 = type metadata accessor for ActionHandler(0);
  v39 = v38[6];
  *(v37 + v39) = swift_getKeyPath();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v40 = v37 + v38[7];
  *v40 = swift_getKeyPath();
  *(v40 + 8) = 0;
  *(v40 + 16) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(KeyPath);
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v42);
  v43 = v37 + v38[10];
  *v43 = swift_getKeyPath();
  *(v43 + 9) = 0;
  swift_unknownObjectWeakInit();
  v44 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
  v51 = v3 + v25[16];
  *v51 = swift_getKeyPath();
  *(v51 + 9) = 0;
  swift_unknownObjectWeakInit();
  v52 = v3 + v25[17];
  if (qword_2803A8CE0 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v53 = xmmword_2803D1FA8;
  v54 = qword_2803D1FB8;
  v55 = unk_2803D1FC0;
  v56 = qword_2803D1FC8;

  sub_26A6AEE74(v122);
  memcpy(v52, v122, 0xC0uLL);
  *(v52 + 192) = v56;
  *(v52 + 200) = v53;
  *(v52 + 216) = v54;
  *(v52 + 224) = v55;
  *(v52 + 232) = v56;
  v57 = v25[18];
  *(v3 + v57) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v58 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v58);
  v59 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v59);
  sub_26A84B828();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v61 = MEMORY[0x277D62DB8];
  if (EnumTagSinglePayload != 1)
  {
    v67 = v108;
    v68 = v107;
    (*(v108 + 32))(v107, v19, v20);
    v69 = v110;
    (*(v67 + 16))(v110, v68, v20);
    v70 = v111;
    v71 = v69 + *(v111 + 20);
    *v71 = swift_getKeyPath();
    *(v71 + 9) = 0;
    swift_unknownObjectWeakInit();
    v72 = swift_getKeyPath();
    OUTLINED_FUNCTION_15_5(v72);
    v73 = swift_getKeyPath();
    OUTLINED_FUNCTION_15_5(v73);
    v74 = *(v70 + 32);
    *(v69 + v74) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v75 = v69 + *(v70 + 36);
    v117 = 0;
    sub_26A851048();
    v76 = v119;
    *v75 = v118;
    *(v75 + 8) = v76;
    sub_26A5563DC();
    sub_26A5577C8();
    v77 = sub_26A851248();
    sub_26A557548();
    (*(v67 + 8))(v68, v20);
    v66 = v115;
    v65 = v112;
    goto LABEL_11;
  }

  sub_26A4D6FD8();
  v62 = v106;
  sub_26A84B808();
  v63 = sub_26A84B7E8();
  v64 = OUTLINED_FUNCTION_29_5(v62);
  v65 = v112;
  if (v64 == 1)
  {
    sub_26A4D6FD8();
    v66 = v115;
  }

  else
  {
    v78 = *(v63 - 8);
    v79 = (*(v78 + 88))(v62, v63);
    v66 = v115;
    if (v79 == *v61)
    {
      (*(v78 + 96))(v62, v63);
      v80 = *v62;
      v81 = v62[1];
      *(v3 + 8) = *v62;
      *(v3 + 16) = v81;

      OUTLINED_FUNCTION_26_1(v80, v103);
      OUTLINED_FUNCTION_9_13();
      sub_26A5563DC();
      OUTLINED_FUNCTION_8_13();
      sub_26A5577C8();
      v77 = sub_26A851248();
      OUTLINED_FUNCTION_7_16();
      sub_26A557548();
      goto LABEL_11;
    }

    (*(v78 + 8))(v62, v63);
  }

  v77 = sub_26A851248();
LABEL_11:
  *v3 = v77;
  sub_26A84B808();
  sub_26A84B7E8();
  if (OUTLINED_FUNCTION_29_5(v66) != 1)
  {
    sub_26A4D7E54();
    v82 = OUTLINED_FUNCTION_22_4();
    v84 = v83(v82);
    if (v84 == *v61)
    {
      v85 = OUTLINED_FUNCTION_22_4();
      v86(v85);
      v87 = *v65;
      v88 = v65[1];
      *(v3 + 24) = sub_26A851248();
      *(v3 + 40) = v87;
      *(v3 + 48) = v88;
      goto LABEL_15;
    }

    if (v84 == *MEMORY[0x277D62DC8])
    {
      v91 = OUTLINED_FUNCTION_22_4();
      v92(v91);
      v93 = v65[1];
      v118 = *v65;
      v119 = v93;
      sub_26A53ACC8();
      v118 = sub_26A850898();
      v119 = v94;
      v120 = v95 & 1;
      v121 = v96;
    }

    else
    {
      v97 = OUTLINED_FUNCTION_22_4();
      v98(v97);
      v99 = sub_26A851E98();
      LOBYTE(v100) = 2;
      sub_26A7AB550(v99, 1, "SnippetUI/SashStandardView.swift", 32, 2, 76, "init(model:)", 12, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    }
  }

  *(v3 + 24) = sub_26A851248();
LABEL_15:
  sub_26A4D6FD8();
  *(v3 + 32) = sub_26A84B7B8() & 1;
  v89 = v116;
  sub_26A84B7A8();
  sub_26A55636C(v89, v3 + v113);
  sub_26A84B7D8();
  sub_26A84B838();
  OUTLINED_FUNCTION_46();
  (*(v90 + 8))(v1);
  sub_26A55636C(v89, v3 + v114);
  OUTLINED_FUNCTION_86();
}

uint64_t type metadata accessor for SashStandardView()
{
  result = qword_2803AD110;
  if (!qword_2803AD110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SashStandardView.init(_:titleColor:showOnWatch:)()
{
  OUTLINED_FUNCTION_85();
  v39 = v0;
  v38 = v1;
  v3 = v2;
  v37 = v4;
  v6 = v5;
  v36 = type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = (&v36 - v9);
  v11 = type metadata accessor for SashStandardView();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v12 = sub_26A84BD28();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
  v19 = (v6 + v11[12]);
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8);
  OUTLINED_FUNCTION_27_3();
  *v19 = OUTLINED_FUNCTION_13_10();
  v19[1].n128_u64[0] = v20;
  v21 = v6 + v11[13];
  v40 = 1;
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_12_6();
  *v21 = v22;
  *(v21 + 8) = v23;
  *(v6 + v11[14]) = 0x4020000000000000;
  ActionHandler.init()(v6 + v11[15]);
  v24 = v6 + v11[16];
  *v24 = swift_getKeyPath();
  *(v24 + 9) = 0;
  swift_unknownObjectWeakInit();
  v25 = v11[17];
  if (qword_2803A8CE0 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v26 = v6 + v25;
  v27 = xmmword_2803D1FA8;
  v28 = qword_2803D1FB8;
  v29 = unk_2803D1FC0;
  v30 = qword_2803D1FC8;

  sub_26A6AEE74(v41);
  memcpy((v6 + v25), v41, 0xC0uLL);
  *(v26 + 192) = v30;
  *(v26 + 200) = v27;
  *(v26 + 216) = v28;
  *(v26 + 224) = v29;
  *(v26 + 232) = v30;
  v31 = v11[18];
  *(v6 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v32 = v6 + v11[19];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  v33 = v6 + v11[20];
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;

  v34 = v37;
  OUTLINED_FUNCTION_26_1(v37, v10);
  OUTLINED_FUNCTION_9_13();
  sub_26A5563DC();
  OUTLINED_FUNCTION_8_13();
  sub_26A5577C8();
  v35 = sub_26A851248();
  OUTLINED_FUNCTION_7_16();
  sub_26A557548();
  *v6 = v35;
  *(v6 + 24) = sub_26A851248();
  *(v6 + 40) = v34;
  *(v6 + 48) = v3;
  *(v6 + 56) = v38;
  *(v6 + 32) = v39 & 1;
  OUTLINED_FUNCTION_86();
}

void SashStandardView.init(icon:title:showOnWatch:)()
{
  OUTLINED_FUNCTION_85();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SashStandardView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 40) = 0;
  v11 = sub_26A84BD28();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  v18 = (v10 + v6[12]);
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8);
  OUTLINED_FUNCTION_27_3();
  *v18 = OUTLINED_FUNCTION_13_10();
  v18[1].n128_u64[0] = v19;
  v20 = v10 + v6[13];
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_12_6();
  *v20 = v21;
  *(v20 + 8) = v22;
  *(v10 + v6[14]) = 0x4020000000000000;
  v23 = v10 + v6[15];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = swift_getKeyPath();
  *(v23 + 32) = 0;
  v24 = type metadata accessor for ActionHandler(0);
  v25 = v24[6];
  *(v23 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v26 = v23 + v24[7];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  v27 = v23 + v24[8];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = v23 + v24[9];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v29 = v23 + v24[10];
  *v29 = swift_getKeyPath();
  *(v29 + 9) = 0;
  swift_unknownObjectWeakInit();
  v30 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  v37 = v10 + v6[16];
  *v37 = swift_getKeyPath();
  *(v37 + 9) = 0;
  swift_unknownObjectWeakInit();
  v38 = v6[17];
  if (qword_2803A8CE0 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v39 = v10 + v38;
  v40 = xmmword_2803D1FA8;
  v41 = qword_2803D1FB8;
  v42 = unk_2803D1FC0;
  v43 = qword_2803D1FC8;

  sub_26A6AEE74(v51);
  memcpy(v39, v51, 0xC0uLL);
  *(v39 + 192) = v43;
  *(v39 + 200) = v40;
  *(v39 + 216) = v41;
  *(v39 + 224) = v42;
  *(v39 + 232) = v43;
  v44 = v6[18];
  *(v10 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v45 = v10 + v6[19];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = v10 + v6[20];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v47 = OUTLINED_FUNCTION_16_5();
  *v10 = v48(v47);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v49 = OUTLINED_FUNCTION_16_5();
  *(v10 + 24) = v50(v49);
  *(v10 + 32) = v1 & 1;
  sub_26A5563DC();
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_26A557548();
  OUTLINED_FUNCTION_86();
}

uint64_t SashStandardView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD080);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = sub_26A55268C();
  if (sub_26A61B05C(v7, &unk_287B133E0) && *(v1 + 32) != 1 || (v8 = sub_26A55268C(), sub_26A61B05C(v8, &unk_287B13248)) || (sub_26A552534() & 1) != 0)
  {
    result = sub_26A851248();
    v10 = result;
  }

  else
  {
    sub_26A553C1C(v6);
    sub_26A4965A8();
    sub_26A556430();
    v10 = sub_26A851248();
    result = sub_26A4D6FD8();
  }

  *a1 = v10;
  return result;
}

uint64_t sub_26A553C1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for SashStandardView();
  v46 = *(v3 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD0F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD140);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD090);
  MEMORY[0x28223BE20](v44);
  v13 = &v42 - v12;
  *v7 = sub_26A84FA78();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD148);
  sub_26A555358(v2, &v7[*(v14 + 44)]);
  sub_26A4D7DCC();
  sub_26A850AF8();
  v15 = sub_26A4D6FD8();
  sub_26A58BA54(v15, 16.0, 0.0);
  (*(v9 + 8))(v11, v8);
  LOBYTE(v8) = sub_26A850238();
  sub_26A84ED48();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD0D8) + 36)];
  *v24 = v8;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_26A554180();
  v26 = sub_26A851448();
  v28 = v27;
  v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD0B8) + 36)];
  *v29 = v25;
  v29[1] = v26;
  v29[2] = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26A68CB14;
  *(v30 + 24) = 0;
  v31 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD0A8) + 36)];
  *(v31 + 2) = swift_getKeyPath();
  v31[24] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v33 = *(v32 + 40);
  *&v31[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v34 = &v31[*(v32 + 44)];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *v31 = sub_26A4D1F7C;
  *(v31 + 1) = v30;
  v13[*(v44 + 36)] = 57;
  v35 = v43;
  sub_26A5563DC();
  v36 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v37 = swift_allocObject();
  sub_26A556E04(v35, v37 + v36);
  sub_26A556528();
  v38 = v47;
  sub_26A850A38();

  sub_26A4D6FD8();
  sub_26A5563DC();
  v39 = swift_allocObject();
  sub_26A556E04(v35, v39 + v36);
  v40 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD080) + 36));
  sub_26A84F198();
  result = sub_26A851BF8();
  *v40 = &unk_26A85D4A0;
  v40[1] = v39;
  return result;
}

uint64_t sub_26A554180()
{
  v0 = sub_26A84B048();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x28223BE20](v0);
  v35 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26A84DFA8();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26A84B0E8();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_26A84B058();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_26A84BA88();
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = &v30 - v17;
  type metadata accessor for SashStandardView();
  sub_26A4D7E54();
  v18 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
  {
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
LABEL_4:
    sub_26A4D6FD8();
    return 0;
  }

  sub_26A84BCE8();
  (*(*(v18 - 8) + 8))(v9, v18);
  v19 = sub_26A55268C();
  VRXIdiom.idiom.getter(v19, v6);
  sub_26A851AD8();

  (*(v4 + 8))(v6, v41);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  v23 = v39;
  v22 = v40;
  (*(v40 + 32))(v39, v12, v13);
  (*(v22 + 16))(v15, v23, v13);
  if ((*(v22 + 88))(v15, v13) == *MEMORY[0x277D62E90])
  {
    (*(v22 + 96))(v15, v13);
    v25 = v30;
    v24 = v31;
    v26 = v33;
    (*(v31 + 32))(v30, v15, v33);
    v27 = v32;
    sub_26A84B0D8();
    v28 = v35;
    sub_26A84DF78();
    v20 = _ProtoColor.swiftValue.getter();
    (*(v37 + 8))(v28, v38);
    (*(v34 + 8))(v27, v36);
    (*(v24 + 8))(v25, v26);
    (*(v22 + 8))(v23, v13);
    return v20;
  }

  v29 = *(v22 + 8);
  v29(v23, v13);
  v29(v15, v13);
  return 0;
}

uint64_t sub_26A55479C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v46 - v3;
  v4 = sub_26A84E278();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_26A84ACC8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v46 - v11;
  v12 = sub_26A84F988();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v17 - 8);
  v46 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v56 = type metadata accessor for SashStandardView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A4D7EA8();
  }

  else
  {
    sub_26A851EA8();
    v22 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
  }

  v23 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v21, 1, v23) == 1)
  {
    result = sub_26A4D6FD8();
  }

  else
  {
    v25 = sub_26A55268C();
    v26 = sub_26A6ACFB8(v25);
    result = sub_26A557548();
    if (v26)
    {
      type metadata accessor for ActionHandler(0);
      v27 = v48;
      sub_26A4D7E54();
      v28 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
      {
        return sub_26A4D6FD8();
      }

      sub_26A55234C();
      v57 = 3;
      sub_26A573B9C();
      sub_26A4D6FD8();
      return sub_26A557548();
    }
  }

  if (!*(v1 + 48))
  {
    return result;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v30 = v49;
  sub_26A84ACB8();
  v31 = sub_26A84AC78();
  v33 = v32;
  (*(v50 + 8))(v30, v51);
  sub_26A67B418(v31, v33, v29);
  [v29 setAppAvailableInStorefront_];
  v34 = sub_26A851788();
  [v29 setBundleId_];

  v36 = v53;
  v35 = v54;
  *v53 = v29;
  *(v36 + 8) = 0;
  v37 = v55;
  (*(v35 + 104))(v36, *MEMORY[0x277D63720], v55);
  type metadata accessor for ActionHandler(0);
  v38 = v52;
  sub_26A4D7E54();
  v39 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    (*(v35 + 8))(v36, v37);
    return sub_26A4D6FD8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD158);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26A8570D0;
  v41 = MEMORY[0x277D63778];
  *(v40 + 56) = v37;
  *(v40 + 64) = v41;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v40 + 32));
  (*(v35 + 16))(boxed_opaque_existential_1, v36, v37);
  v43 = v29;
  v44 = v47;
  sub_26A84BAC8();
  v45 = sub_26A84BAB8();
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
  v58 = 3;
  StandardActionHandler.perform(_:interactionType:)();

  sub_26A4D6FD8();
  (*(v35 + 8))(v36, v37);
  return sub_26A557548();
}

uint64_t sub_26A554F60(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_26A851BD8();
  *(v1 + 40) = sub_26A851BC8();
  v3 = sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A554FF8, v3, v2);
}

uint64_t sub_26A554FF8()
{

  v1 = sub_26A55511C();
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = v1;
    sub_26A555204(v1);
    v4 = v2 + *(type metadata accessor for SashStandardView() + 52);
    v5 = *(v4 + 8);
    *(v0 + 16) = *v4;
    *(v0 + 24) = v5;
    *(v0 + 48) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
    sub_26A851068();
  }

  else
  {
    v6 = (v2 + *(type metadata accessor for SashStandardView() + 52));
    v7 = *v6;
    v8 = *(v6 + 1);
    *(v0 + 16) = v7;
    *(v0 + 24) = v8;
    *(v0 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
    sub_26A851068();
  }

  v9 = *(v0 + 8);

  return v9();
}

id sub_26A55511C()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 40);
  v3 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();
  v4 = sub_26A59F558(v2, v1, 1);

  return v4;
}

uint64_t sub_26A555204(void *a1)
{
  v2 = [objc_opt_self() sharedPreferences];
  v3 = sub_26A588548(v2);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB38);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26A8570D0;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    v8 = sub_26A851A88();

    v9 = [a1 localizedNameWithPreferredLocalizations_];
  }

  else
  {
    v9 = [a1 localizedName];
  }

  sub_26A8517B8();

  type metadata accessor for SashStandardView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD150);
  return sub_26A851068();
}

uint64_t sub_26A555358@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_26A84B1D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v38 - v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = *a1;
  if (*a1)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D62BD8], v3, v13);
    KeyPath = swift_getKeyPath();
    *&v39 = v15;
    *&v38 = KeyPath;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v19 = v11 + *(v18 + 36);
    v20 = a1;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v4 + 32))(&v19[v21], v6, v3);
    v22 = &v19[v21];
    a1 = v20;
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v3);
    *v19 = v38;
    *v11 = v16;
    v23 = v11;
    v24 = 0;
    v25 = v18;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v23 = v11;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  sub_26A4D7EA8();

  sub_26A5557D4(a1, v43);
  v38 = *&v43[16];
  v39 = *v43;
  v26 = v43[32];
  if (qword_2803A9050 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v52);
  memcpy(&v42[2] + 8, v52, 0xBFuLL);
  *(&v42[19] + 1) = sub_26A80A810;
  *&v42[20] = 0;
  v42[1] = v38;
  v42[0] = v39;
  LOBYTE(v42[2]) = v26;
  v27 = sub_26A5558D8();
  if (!v27)
  {
    v27 = sub_26A850E88();
  }

  v28 = swift_getKeyPath();
  memcpy(v43, v42, sizeof(v43));
  v44 = v28;
  v45 = v27;
  v29 = sub_26A850278();
  sub_26A84ED48();
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v51 = 0;
  sub_26A4D7E54();
  sub_26A4D7E54();
  v34 = v41;
  sub_26A4D7E54();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD170);
  sub_26A4D7E54();
  v36 = v34 + *(v35 + 64);
  *v36 = 0;
  *(v36 + 8) = 0;
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

double sub_26A5557D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SashStandardView() + 48));
  v6 = *v3;
  *&v7 = *(v3 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD150);
  sub_26A851058();
  if (*(&v5 + 1))
  {
    v6 = v5;
    sub_26A53ACC8();
    sub_26A850898();
  }

  else
  {
  }

  sub_26A84FDF8();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_26A5558D8()
{
  v1 = v0;
  v2 = sub_26A84B048();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_26A84DFA8();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_26A84B0E8();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_26A84B058();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_26A84BA88();
  v44 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v43 = &v34 - v19;
  type metadata accessor for SashStandardView();
  sub_26A4D7E54();
  v20 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v11, 1, v20) == 1)
  {
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    v21 = v1;
LABEL_4:
    sub_26A4D6FD8();
    goto LABEL_5;
  }

  sub_26A84BCE8();
  (*(*(v20 - 8) + 8))(v11, v20);
  v21 = v1;
  v22 = sub_26A55268C();
  VRXIdiom.idiom.getter(v22, v8);
  sub_26A851AD8();

  (*(v6 + 8))(v8, v45);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  v26 = v43;
  v25 = v44;
  (*(v44 + 32))(v43, v14, v15);
  (*(v25 + 16))(v17, v26, v15);
  if ((*(v25 + 88))(v17, v15) == *MEMORY[0x277D62E90])
  {
    (*(v25 + 96))(v17, v15);
    v28 = v34;
    v27 = v35;
    v29 = v17;
    v30 = v37;
    (*(v35 + 32))(v34, v29, v37);
    v31 = v36;
    sub_26A84B0D8();
    v32 = v39;
    sub_26A84DF78();
    v23 = _ProtoColor.swiftValue.getter();
    (*(v41 + 8))(v32, v42);
    (*(v38 + 8))(v31, v40);
    (*(v27 + 8))(v28, v30);
    (*(v25 + 8))(v26, v15);
    return v23;
  }

  v33 = *(v25 + 8);
  v33(v26, v15);
  v33(v17, v15);
LABEL_5:
  v23 = *(v21 + 56);

  return v23;
}

uint64_t sub_26A555F04()
{
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v45 = v2;
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v44 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_26A84B838();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v12 = type metadata accessor for SashStandardView();
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACC0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACC8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v47 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_211();
  v26(v25);
  v48 = v16;
  SashStandardView.init(model:)();
  v50 = v0;
  sub_26A84B818();
  v27 = v46;
  sub_26A4D7EA8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v27) == 1)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v29 = &v20[*(v17 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    type metadata accessor for ActionType();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    *v29 = KeyPath;
  }

  else
  {
    v34 = v44;
    v35 = *(v45 + 32);
    v35(v44, v9, v27);
    v36 = swift_getKeyPath();
    v37 = &v20[*(v17 + 36)];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v35(v37 + v38, v34, v27);
    v39 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v37 + v38, 0, 1, v39);
    *v37 = v36;
  }

  sub_26A556E04(v48, v20);
  v40 = sub_26A84B7C8();
  sub_26A4DC77C(v40);

  sub_26A4D6FD8();
  sub_26A4D7E54();
  sub_26A55759C();
  v41 = sub_26A851248();
  sub_26A4D6FD8();
  return v41;
}

uint64_t sub_26A55636C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5563DC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A556430()
{
  result = qword_2803AD088;
  if (!qword_2803AD088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD090);
    sub_26A556528();
    swift_getOpaqueTypeConformance2();
    sub_26A5577C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD088);
  }

  return result;
}

unint64_t sub_26A556528()
{
  result = qword_2803AD098;
  if (!qword_2803AD098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD090);
    sub_26A5565B4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD098);
  }

  return result;
}

unint64_t sub_26A5565B4()
{
  result = qword_2803AD0A0;
  if (!qword_2803AD0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD0A8);
    sub_26A55666C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD0A0);
  }

  return result;
}

unint64_t sub_26A55666C()
{
  result = qword_2803AD0B0;
  if (!qword_2803AD0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD0B8);
    sub_26A556724();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD0B0);
  }

  return result;
}

unint64_t sub_26A556724()
{
  result = qword_2803AD0C0;
  if (!qword_2803AD0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD0C8);
    sub_26A5567A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD0C0);
  }

  return result;
}

unint64_t sub_26A5567A8()
{
  result = qword_2803AD0D0;
  if (!qword_2803AD0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD0D8);
    sub_26A556834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD0D0);
  }

  return result;
}

unint64_t sub_26A556834()
{
  result = qword_2803AD0E0;
  if (!qword_2803AD0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD0E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD0F0);
    sub_26A4D7DCC();
    swift_getOpaqueTypeConformance2();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD0E0);
  }

  return result;
}

unint64_t sub_26A55694C(uint64_t a1)
{
  result = sub_26A5577C8();
  *(a1 + 8) = result;
  return result;
}

void sub_26A5569CC()
{
  sub_26A556D40(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A556D40(319, &qword_2803AC920, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26A556D40(319, &qword_2803AD120, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A556D90(319, &qword_2803AD128, MEMORY[0x277D62F88], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26A556CDC(319, &qword_2803AD130, &qword_2803ABFB8, &unk_26A85A410, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_26A556D40(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ActionHandler(319);
              if (v6 <= 0x3F)
              {
                sub_26A556D40(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
                if (v7 <= 0x3F)
                {
                  sub_26A556CDC(319, &qword_2803A9220, &qword_2803A91C8, &unk_26A856820, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_26A556D40(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_26A556D90(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
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
  }
}

void sub_26A556CDC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_26A556D40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26A556D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26A556DF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26A556E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SashStandardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A556E68()
{
  v0 = type metadata accessor for SashStandardView();
  OUTLINED_FUNCTION_79(v0);
  return sub_26A55479C();
}

uint64_t objectdestroy_47Tm()
{
  v1 = type metadata accessor for SashStandardView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[10];
  v4 = sub_26A84BD28();
  if (!OUTLINED_FUNCTION_29_5(v2 + v3))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[11];
  if (!OUTLINED_FUNCTION_29_5(v2 + v6))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v7 + 8))(v2 + v6, v4);
  }

  v8 = v2 + v1[15];
  sub_26A556DF4(*v8, *(v8 + 8), *(v8 + 16));
  sub_26A49035C(*(v8 + 24), *(v8 + 32));
  v9 = type metadata accessor for ActionHandler(0);
  v10 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v12 + 8))(v8 + v10, v11);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v8 + v9[7]), *(v8 + v9[7] + 8), *(v8 + v9[7] + 16));
  OUTLINED_FUNCTION_60_0(v8 + v9[8]);
  OUTLINED_FUNCTION_60_0(v8 + v9[9]);
  v13 = v8 + v9[10];
  if (*(v13 + 9))
  {
    if ((*(v13 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v8 + v9[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v13 + 16);
  v14 = v8 + v9[11];
  v15 = type metadata accessor for StandardActionHandler(0);
  if (!OUTLINED_FUNCTION_25_6(v15))
  {
    MEMORY[0x26D665710](v14);
    v16 = *(v13 + 24);
    v17 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v2 + v1[16];
  if (*(v19 + 9))
  {
    if ((*(v19 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v2 + v1[16]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v19 + 16);
  v20 = v2 + v1[17];
  sub_26A49035C(*v20, *(v20 + 8));
  sub_26A49035C(*(v20 + 16), *(v20 + 24));
  sub_26A49035C(*(v20 + 32), *(v20 + 40));
  sub_26A49035C(*(v20 + 48), *(v20 + 56));
  sub_26A49035C(*(v20 + 64), *(v20 + 72));
  sub_26A49035C(*(v20 + 80), *(v20 + 88));
  sub_26A49035C(*(v20 + 96), *(v20 + 104));
  sub_26A49035C(*(v20 + 112), *(v20 + 120));
  sub_26A49035C(*(v20 + 128), *(v20 + 136));
  sub_26A49035C(*(v20 + 144), *(v20 + 152));

  v21 = (v2 + v1[18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_26:

    goto LABEL_27;
  }

  v22 = type metadata accessor for ActionType();
  if (OUTLINED_FUNCTION_25_6(v22))
  {
    goto LABEL_27;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v25 + 8))(v21);
  }

LABEL_27:
  OUTLINED_FUNCTION_60_0(v2 + v1[19]);
  OUTLINED_FUNCTION_60_0(v2 + v1[20]);

  return swift_deallocObject();
}

uint64_t sub_26A55738C()
{
  v2 = type metadata accessor for SashStandardView();
  OUTLINED_FUNCTION_79(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26A557454;

  return sub_26A554F60(v0 + v4);
}

uint64_t sub_26A557454()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26A557548()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A55759C()
{
  result = qword_2803AD178;
  if (!qword_2803AD178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACC8);
    sub_26A557654();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD178);
  }

  return result;
}

unint64_t sub_26A557654()
{
  result = qword_2803AD180;
  if (!qword_2803AD180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACB8);
    sub_26A5576E0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD180);
  }

  return result;
}

unint64_t sub_26A5576E0()
{
  result = qword_2803AD188;
  if (!qword_2803AD188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACC0);
    sub_26A5577C8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD188);
  }

  return result;
}

unint64_t sub_26A5577C8()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

id OUTLINED_FUNCTION_26_1@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  return sub_26A83115C(a1, v2, 0, 0, 1, a2);
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return sub_26A851048();
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

BOOL sub_26A557978()
{
  v0 = [objc_opt_self() _carScreen];
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

id sub_26A5579C8@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 text_1];
  if (v3)
  {
    v4 = v3;
    v16 = &type metadata for PartialText;
    v17 = &protocol witness table for PartialText;
    *&v15 = swift_allocObject();
    RFTextProperty.asPartialText()(v15 + 16);
    v5 = [v1 thumbnail];
    if (v5)
    {
      v6 = v5;
      *(&v13 + 1) = sub_26A84BD28();
      v14 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v12);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {

      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }

    KeyPath = swift_getKeyPath();
    v10 = swift_getKeyPath();
    *a1 = KeyPath;
    *(a1 + 8) = 0;
    *(a1 + 16) = v10;
    *(a1 + 24) = 0;
    result = sub_26A4C2314(&v15, a1 + 32);
    v11 = v13;
    *(a1 + 72) = v12;
    *(a1 + 88) = v11;
    *(a1 + 104) = v14;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v7 = v1;
    *(v7 + 8) = &unk_287B13408;
    *(v7 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

uint64_t sub_26A557B50()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void sub_26A557C98(__int128 *a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) == 1)
  {
    v24 = *v1;
  }

  else
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v4 + 8))(v6, v3);
    v7 = v24;
  }

  v9 = xmmword_26A85D560;
  v10 = xmmword_26A85D570;
  v11 = xmmword_26A85D580;
  __asm { FMOV            V3.2D, #14.0 }

  if (v7 > 8)
  {
    goto LABEL_13;
  }

  if (((1 << v7) & 0x15E) != 0)
  {
    goto LABEL_6;
  }

  if (v7 != 5)
  {
    if (v7 == 7)
    {
      v10 = xmmword_26A85D590;
      v11 = xmmword_26A85D5A0;
      __asm { FMOV            V3.2D, #16.0 }

      goto LABEL_6;
    }

LABEL_13:
    v21 = xmmword_26A85D570;
    v22 = xmmword_26A85D560;
    v19 = _Q3;
    v20 = xmmword_26A85D580;
    v17 = sub_26A851E98();
    LOBYTE(v18) = 2;
    sub_26A7AEFE4(v17, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v18, v7, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25, v26, v27, v28, v29, v30);
    _Q3 = v19;
    v11 = v20;
    v10 = v21;
    v9 = v22;
    goto LABEL_6;
  }

  if (qword_2803A8E48 != -1)
  {
    swift_once();
  }

  v11 = xmmword_2803D23C0;
  _Q3 = *&qword_2803D23D0;
  v10 = xmmword_2803D23E0;
  v9 = unk_2803D23F0;
LABEL_6:
  *a1 = v11;
  a1[1] = _Q3;
  a1[2] = v10;
  a1[3] = v9;
}

uint64_t sub_26A557EF0@<X0>(uint64_t a1@<X8>)
{
  sub_26A50429C(v1 + 32, &v38);
  sub_26A5582C8(v1 + 72, v37);
  KeyPath = swift_getKeyPath();
  v4 = v39;
  v5 = v40;
  __swift_project_boxed_opaque_existential_1(&v38, v39);
  v6 = (*(v5 + 8))(v4, v5);
  sub_26A5582C8(v37, &v34);
  v7 = v35;
  if (v35)
  {
    v8 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    v7 = (*(v8 + 8))(v7, v8);
    sub_26A537648(v37);
    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    sub_26A537648(v37);
    sub_26A537648(&v34);
  }

  __swift_destroy_boxed_opaque_existential_1(&v38);
  v9 = sub_26A850258();
  if ((sub_26A557B50() & 1) == 0)
  {
    sub_26A557C98(v33);
  }

  sub_26A84ED48();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_26A850238();
  if ((sub_26A557B50() & 1) == 0)
  {
    sub_26A557C98(&v34);
    sub_26A557C98(v37);
  }

  sub_26A84ED48();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_26A850268();
  if ((sub_26A557B50() & 1) == 0)
  {
    sub_26A557C98(&v38);
  }

  result = sub_26A84ED48();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0;
  *(a1 + 80) = v18;
  *(a1 + 88) = v20;
  *(a1 + 96) = v22;
  *(a1 + 104) = v24;
  *(a1 + 112) = v26;
  *(a1 + 120) = 0;
  *(a1 + 128) = v27;
  *(a1 + 136) = v29;
  *(a1 + 144) = v30;
  *(a1 + 152) = v31;
  *(a1 + 160) = v32;
  *(a1 + 168) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI18AnyViewConvertible_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A5581AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A5581EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A558258()
{
  result = qword_2803AD198;
  if (!qword_2803AD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD198);
  }

  return result;
}

uint64_t sub_26A5582C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A558398(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A55841C()
{
  result = qword_2803AD1D0;
  if (!qword_2803AD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD1D0);
  }

  return result;
}

uint64_t sub_26A558470()
{
  OUTLINED_FUNCTION_23_5();
  if (v2)
  {
    sub_26A4C2314(v1, v12);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    sub_26A654ECC(v3, v4, v5, v6);

    *v0 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_27_4(v1);
    v8 = OUTLINED_FUNCTION_22_5();
    sub_26A5EBF4C(v8, v9, v10);

    return OUTLINED_FUNCTION_27_4(v12);
  }

  return result;
}

uint64_t sub_26A558504()
{
  OUTLINED_FUNCTION_23_5();
  if (v2)
  {
    sub_26A4C2314(v1, v12);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    sub_26A655024(v3, v4, v5, v6);

    *v0 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_27_4(v1);
    v8 = OUTLINED_FUNCTION_22_5();
    sub_26A5EC158(v8, v9, v10);

    return OUTLINED_FUNCTION_27_4(v12);
  }

  return result;
}

void sub_26A558598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TableRowViewModel();
  MEMORY[0x28223BE20](v9);
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_26A4DBD10(a1, &qword_2803AD200);
    sub_26A5484D4(a2);
    if (v10)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D70);
      sub_26A8523E8();
      v11 = v14;
      sub_26A55E5AC();
      sub_26A852408();
      v12 = 0;
      *v3 = v11;
    }

    else
    {
      v12 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v12, 1, v9);
    sub_26A4DBD10(v8, &qword_2803AD200);
  }

  else
  {
    sub_26A55E5AC();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_26A6552D0();
    *v3 = v14;
  }
}

uint64_t sub_26A5587FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  MEMORY[0x28223BE20](v9);
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    sub_26A4DBD10(a1, &qword_2803AD238);
    sub_26A5EC220(v8);
    v11 = sub_26A84ACC8();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_26A4DBD10(v8, &qword_2803AD238);
  }

  else
  {
    sub_26A55E5AC();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_26A6553D4();
    *v3 = v15;
    v13 = sub_26A84ACC8();
    return (*(*(v13 - 8) + 8))(a2, v13);
  }
}

uint64_t sub_26A5589E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD278);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DE0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    sub_26A4DBD10(a1, &qword_2803AD278);
    sub_26A5484D4(a2);
    if (v12)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD280);
      sub_26A8523E8();
      v13 = v17;
      sub_26A4D7EA8();
      sub_26A852408();
      v14 = 0;
      *v3 = v13;
    }

    else
    {
      v14 = 1;
    }

    __swift_storeEnumTagSinglePayload(v9, v14, 1, v10);
    return sub_26A4DBD10(v9, &qword_2803AD278);
  }

  else
  {
    sub_26A4D7EA8();
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    result = sub_26A655518();
    *v3 = v17;
  }

  return result;
}

uint64_t sub_26A558C34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v13 = v12;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  v71 = v64 - v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  v73 = v64 - v17;
  type metadata accessor for TableRowViewModel();
  *(v1 + 40) = sub_26A8516A8();
  type metadata accessor for TableLayoutManager();
  OUTLINED_FUNCTION_5_16();
  sub_26A55E600(v18, v19);
  v20 = v8;
  *(v1 + 48) = sub_26A8516A8();
  *(v1 + 56) = xmmword_26A85D7D0;
  *(v1 + 72) = -1;
  sub_26A55926C(a1);
  v22 = v21;

  v65 = v2;
  *(v2 + 16) = v22;
  swift_bridgeObjectRetain_n();
  v64[1] = v22;
  v23 = sub_26A559684(v22);
  v64[0] = 0;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD230);
  sub_26A852468();
  v67 = v24 + 64;
  OUTLINED_FUNCTION_11_9();
  v27 = v26 & v25;
  v66 = (v28 + 63) >> 6;
  v81 = v10 + 16;
  v83 = v10 + 32;
  v72 = v29 + 8;
  v30 = v20;
  v31 = v10;
  v32 = v29;
  v33 = v13;
  v35 = v34;
  v36 = v71;
  v68 = v29;
  v69 = v24;
  if (v27)
  {
    while (1)
    {
      v37 = __clz(__rbit64(v27));
      v76 = (v27 - 1) & v27;
LABEL_8:
      v40 = v37 | (v35 << 6);
      v41 = *(v24 + 48);
      v80 = *(v31 + 72);
      v42 = *(v31 + 16);
      v77 = v80 * v40;
      v43 = v73;
      v79 = v42;
      v42(v73, v41 + v80 * v40, v30);
      v44 = *(v24 + 56);
      v78 = v40;
      v45 = *(v44 + 8 * v40);
      v82 = *(v31 + 32);
      v82(v36, v43, v30);
      v46 = v45;
      v47 = *(v45 + 16);
      if (v47)
      {
        v75 = v35;
        v84[0] = MEMORY[0x277D84F90];
        v48 = v46;

        sub_26A7DCFF0();
        v49 = v84[0];
        v50 = *(v70 + 80);
        v74 = v48;
        v51 = v48 + ((v50 + 32) & ~v50);
        v52 = *(v70 + 72);
        do
        {
          sub_26A55E738();
          v79(v33, v7, v30);
          OUTLINED_FUNCTION_6_18();
          sub_26A55E648(v7, v53);
          v84[0] = v49;
          v54 = v33;
          v55 = *(v49 + 16);
          if (v55 >= *(v49 + 24) >> 1)
          {
            sub_26A7DCFF0();
            v49 = v84[0];
          }

          *(v49 + 16) = v55 + 1;
          v82((v49 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v55 * v80), v54, v30);
          v51 += v52;
          --v47;
          v33 = v54;
        }

        while (v47);

        v36 = v71;
        v32 = v68;
        v24 = v69;
        v35 = v75;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }

      v56 = v78;
      *(v72 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
      v82((v32[6] + v77), v36, v30);
      *(v32[7] + 8 * v56) = v49;
      v57 = v32[2];
      v58 = __OFADD__(v57, 1);
      v38 = v57 + 1;
      if (v58)
      {
        break;
      }

      v32[2] = v38;
      v27 = v76;
      if (!v76)
      {
        goto LABEL_3;
      }
    }

LABEL_21:
    __break(1u);

    v63 = v65;

    sub_26A55C6D4(*(v63 + 64), *(v63 + 72));
    type metadata accessor for TableManager();
    swift_deallocPartialClassInstance();
    __break(1u);
LABEL_22:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_3:
    v38 = v35;
    while (1)
    {
      v35 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v35 >= v66)
      {
        break;
      }

      v39 = *(v67 + 8 * v35);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v76 = (v39 - 1) & v39;
        goto LABEL_8;
      }
    }

    v59 = v65;
    *(v65 + 32) = v32;
    v84[0] = MEMORY[0x277D84F98];

    v61 = v64[0];
    sub_26A55D578(v60, sub_26A559B7C, 0, 1, v84);
    if (v61)
    {
      goto LABEL_22;
    }

    *(v59 + 24) = v84[0];
    return v59;
  }

  return result;
}