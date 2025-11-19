uint64_t __swift_get_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 32);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_39Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 32);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_26C456664()
{
  sub_26C431884(319, &qword_280498230, type metadata accessor for ModelData.PropertyDataMap, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_280498238, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26C46BD24();
      if (v2 <= 0x3F)
      {
        sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26C4567CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26C456898(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26C46BD24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C456958()
{
  result = sub_26C46BD24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C4569E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C456B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C456C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_26C46BD24();
  if (v8 <= 0x3F)
  {
    sub_26C431884(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C456D9C(unint64_t a1, uint64_t a2)
{
  v149 = a2;
  v171 = a1;
  v3 = *v2;
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 328);
  v7 = *(*v2 + 336);
  *v193 = *(*v2 + 280);
  v4 = *v193;
  v192 = *(v3 + 288);
  *&v193[8] = v192;
  v194 = v5;
  v190 = *(v3 + 312);
  v195 = v190;
  v196 = v6;
  v197 = v7;
  v152 = v7;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v147 = *(TupleTypeMetadata2 - 8);
  v9 = *(v147 + 64);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v146 = (&v144 - v11);
  v12 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v145 = &v144 - v13;
  v14 = v192;
  v184 = sub_26C46C474();
  v189 = *(v184 - 8);
  v15 = *(v189 + 64);
  v16 = MEMORY[0x28223BE20](v184);
  v156 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v155 = &v144 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v161 = &v144 - v21;
  v170 = *(v14 - 8);
  v22 = *(v170 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v151 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v185 = &v144 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v186 = &v144 - v28;
  v169 = *(v4 - 8);
  v29 = *(v169 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v154 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v144 - v33;
  MEMORY[0x28223BE20](v32);
  v159 = &v144 - v35;
  v36 = swift_getTupleTypeMetadata2();
  v180 = sub_26C46C474();
  v37 = *(v180 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v180);
  v174 = &v144 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v144 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v144 - v45;
  MEMORY[0x28223BE20](v44);
  v168 = &v144 - v47;
  *v193 = sub_26C46C284();
  *&v193[8] = sub_26C46C284();
  *&v193[16] = sub_26C46C284();
  v48 = qword_280498288;
  swift_beginAccess();
  v158 = v2;
  v157 = v48;
  v49 = *(v2 + v48);
  if ((v49 & 0xC000000000000001) != 0)
  {
    v50 = sub_26C46C5C4();
    v173 = 0;
    v51 = 0;
    v52 = 0;
    i = v50 | 0x8000000000000000;
  }

  else
  {
    v53 = -1 << *(v49 + 32);
    v51 = ~v53;
    v54 = *(v49 + 64);
    v173 = v49 + 64;
    v55 = -v53;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v52 = v56 & v54;
    i = v49;
  }

  *&v192 = v169 + 32;
  v188 = (v170 + 32);
  v167 = v36 - 8;
  v150 = v51;
  v57 = (v51 + 64) >> 6;
  v181 = (v169 + 16);
  v163 = v170 + 16;
  v179 = (v37 + 32);
  v191 = (v170 + 48);
  v183 = (v170 + 8);
  v176 = (v169 + 8);
  v182 = (v189 + 8);

  v189 = v4;
  v59 = v159;
  v187 = v36;
  v153 = v43;
  v60 = 0;
  v164 = v57;
  v166 = v14;
  v162 = v46;
  v160 = v34;
  while (1)
  {
    v165 = v52;
    v175 = v60;
    if ((i & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_26C46C5D4())
    {
      sub_26C46C754();
      swift_unknownObjectRelease();
      sub_26C46C754();
      swift_unknownObjectRelease();
      v178 = v52;
      v36 = v187;
      goto LABEL_22;
    }

    v69 = 1;
    v177 = v60;
    v178 = v52;
    v36 = v187;
LABEL_23:
    v70 = *(v36 - 8);
    v71 = v70;
    v72 = *(v70 + 56);
    v73 = v70 + 56;
    v72(v46, v69, 1, v36);
    v74 = *v179;
    v75 = v168;
    (*v179)(v168, v46, v180);
    v76 = *(v71 + 48);
    if ((v76)(v75, 1, v36) == 1)
    {
      v162 = v76;
      v164 = v74;
      v167 = v73;
      v168 = v72;
      sub_26C40B328();
      if ((v171 & 0xC000000000000001) != 0)
      {
        v91 = sub_26C46C5C4();
        v175 = 0;
        v92 = 0;
        v93 = 0;
        v94 = v91 | 0x8000000000000000;
      }

      else
      {
        v95 = -1 << *(v171 + 32);
        v92 = ~v95;
        v96 = *(v171 + 64);
        v175 = v171 + 64;
        v97 = -v95;
        if (v97 < 64)
        {
          v98 = ~(-1 << v97);
        }

        else
        {
          v98 = -1;
        }

        v93 = (v98 & v96);
        v94 = v171;
      }

      v99 = v154;
      v100 = v153;
      v165 = v92;
      v173 = (v92 + 64) >> 6;

      v101 = 0;
      v102 = v166;
      for (i = v94; ; v94 = i)
      {
        v178 = v93;
        v177 = v101;
        if ((v94 & 0x8000000000000000) != 0)
        {
          if (sub_26C46C5D4())
          {
            v122 = v189;
            sub_26C46C754();
            swift_unknownObjectRelease();
            v123 = v186;
            sub_26C46C754();
            swift_unknownObjectRelease();
            v124 = *(v36 + 48);
            v108 = v174;
            (*v192)(v174, v59, v122);
            (*v188)(&v108[v124], v123, v102);
            v125 = v108;
            v126 = 0;
          }

          else
          {
            v108 = v174;
            v125 = v174;
            v126 = 1;
          }

          (v168)(v125, v126, 1, v36);
          v106 = v177;
          v185 = v178;
        }

        else
        {
          v103 = v93;
          v104 = v101;
          if (!v93)
          {
            if (v173 <= v101 + 1)
            {
              v105 = v101 + 1;
            }

            else
            {
              v105 = v173;
            }

            v106 = v105 - 1;
            v107 = v101;
            v108 = v174;
            do
            {
              v104 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                goto LABEL_62;
              }

              if (v104 >= v173)
              {
                (v168)(v174, 1, 1, v36);
                v185 = 0;
                goto LABEL_57;
              }

              v103 = *(v175 + 8 * v104);
              ++v107;
            }

            while (!v103);
          }

          v185 = ((v103 - 1) & v103);
          v109 = __clz(__rbit64(v103)) | (v104 << 6);
          v110 = v169;
          v111 = *(v94 + 48) + *(v169 + 72) * v109;
          v112 = v94;
          v113 = v189;
          (*(v169 + 16))(v59, v111, v189);
          v114 = *(v112 + 56);
          v115 = v59;
          v116 = v186;
          v117 = v170;
          (*(v170 + 16))(v186, v114 + *(v170 + 72) * v109, v102);
          v118 = *(v187 + 48);
          v119 = *(v110 + 32);
          v99 = v154;
          v108 = v174;
          v120 = v115;
          v36 = v187;
          v119(v174, v120, v113);
          v121 = &v108[v118];
          v100 = v153;
          (*(v117 + 32))(v121, v116, v102);
          (v168)(v108, 0, 1, v36);
          v106 = v104;
        }

LABEL_57:
        v164(v100, v108, v180);
        if ((v162)(v100, 1, v36) == 1)
        {
          sub_26C40B328();
          v133 = v158;
          v134 = *(v158 + v157);
          *(v158 + v157) = v171;

          v135 = *(v133 + qword_2804988B0);
          v136 = *&v193[16];
          v137 = sub_26C46BCD4();
          v138 = *(v137 - 8);
          v139 = *(v138 + 16);
          v192 = *v193;
          v140 = v145;
          v139(v145, v149, v137);
          (*(v138 + 56))(v140, 0, 1, v137);
          v141 = TupleTypeMetadata2;
          v142 = *(TupleTypeMetadata2 + 48);
          v143 = v146;
          *v146 = v192;
          *(v143 + 2) = v136;
          sub_26C3E9F28(v140, v143 + v142, &qword_280497268, &qword_26C46CFE0);
          sub_26C46BFE4();
          return (*(v147 + 8))(v143, v141);
        }

        v127 = *(v36 + 48);
        v128 = v189;
        (*v192)(v99, v100, v189);
        v129 = v158;
        v130 = v157;
        swift_beginAccess();
        v131 = *(v129 + v130);
        v132 = v156;
        sub_26C46C184();
        swift_endAccess();
        if ((*v191)(v132, 1, v102) == 1)
        {
          (*v182)(v132, v184);
          v59 = v159;
          (*v181)(v159, v99, v128);
          sub_26C46C2E4();
          sub_26C46C2C4();
          (*v176)(v99, v128);
        }

        else
        {
          (*v176)(v99, v128);
          (*v182)(v132, v184);
          v59 = v159;
        }

        result = (*v183)(&v100[v127], v102);
        v101 = v106;
        v93 = v185;
      }
    }

    v77 = v59;
    v78 = *(v36 + 48);
    v79 = v160;
    v80 = v75;
    v4 = v189;
    (*v192)(v160, v75, v189);
    v81 = *v188;
    v14 = v166;
    (*v188)(v185, &v80[v78], v166);
    v82 = v161;
    sub_26C46C184();
    v83 = *v191;
    if ((*v191)(v82, 1, v14) == 1)
    {
      (*v182)(v82, v184);
      v84 = v79;
      goto LABEL_28;
    }

    v85 = v151;
    v81(v151, v82, v14);
    v86 = v85;
    v87 = v185;
    if (sub_26C46C1C4())
    {
      (*v183)(v86, v14);
      v84 = v79;
      v57 = v164;
LABEL_28:
      v88 = v155;
      sub_26C46C184();
      v59 = v77;
      if (v83(v88, 1, v14) == 1)
      {
        (*v182)(v88, v184);
        (*v181)(v77, v84, v4);
        sub_26C46C2E4();
        sub_26C46C2C4();
        (*v183)(v185, v14);
        result = (*v176)(v84, v4);
      }

      else
      {
        (*v183)(v185, v14);
        (*v176)(v84, v4);
        result = (*v182)(v88, v184);
      }

      v60 = v177;
      v52 = v178;
      v36 = v187;
      v46 = v162;
    }

    else
    {
      v89 = v79;
      v59 = v77;
      (*v181)(v77, v89, v4);
      sub_26C46C2E4();
      sub_26C46C2C4();
      v90 = *v183;
      (*v183)(v86, v14);
      v90(v87, v14);
      result = (*v176)(v89, v4);
      v60 = v177;
      v52 = v178;
      v36 = v187;
      v46 = v162;
      v57 = v164;
    }
  }

  v61 = v52;
  if (v52)
  {
LABEL_19:
    v178 = (v61 - 1) & v61;
    v65 = __clz(__rbit64(v61)) | (v60 << 6);
    v66 = i;
    (*(v169 + 16))(v59, *(i + 48) + *(v169 + 72) * v65, v4);
    v67 = *(v66 + 56);
    v57 = v164;
    (*(v170 + 16))(v186, v67 + *(v170 + 72) * v65, v14);
LABEL_22:
    v68 = *(v36 + 48);
    (*v192)(v46, v59, v4);
    (*v188)(&v46[v68], v186, v14);
    v69 = 0;
    v177 = v60;
    goto LABEL_23;
  }

  v62 = v175;
  if (v57 <= v175 + 1)
  {
    v63 = v175 + 1;
  }

  else
  {
    v63 = v57;
  }

  v64 = v63 - 1;
  while (1)
  {
    v60 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v60 >= v57)
    {
      v177 = v64;
      v178 = 0;
      v69 = 1;
      goto LABEL_23;
    }

    v61 = *(v173 + 8 * v60);
    ++v62;
    if (v61)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_26C45826C(void (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for LamportTimestamp(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_26C42FBFC(0, v11, 0);
  v12 = v22;
  v13 = (a3 + 32);
  while (1)
  {
    v14 = *v13++;
    v21 = v14;
    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_26C42FBFC(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_26C40C2E8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for LamportTimestamp);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C458410(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v7 = type metadata accessor for LamportTimestamp(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v11 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v30 = MEMORY[0x277D84F90];
  sub_26C42FBFC(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v13 = 0;
    v12 = v30;
    v14 = v27;
    if (v27 <= a3)
    {
      v14 = a3;
    }

    v23 = v14 - a3 + 1;
    while (v13 < v11)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_17;
      }

      v29 = a3 + v13;
      v16 = v10;
      v17 = v28;
      v25(&v29);
      v28 = v17;
      if (v17)
      {
        goto LABEL_22;
      }

      v30 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26C42FBFC(v18 > 1, v19 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v10 = v16;
      sub_26C40C2E8(v16, v20, type metadata accessor for LamportTimestamp);
      if (v27 < a3)
      {
        goto LABEL_18;
      }

      if (v23 == ++v13)
      {
        goto LABEL_19;
      }

      if (v15 == v11)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_26C45863C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972 || (sub_26C46C764() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F7473626D6F74 && a2 == 0xEA00000000007365 || (sub_26C46C764() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v5 = sub_26C46C764();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26C45876C(char a1)
{
  if (!a1)
  {
    return 0x616E6F6974636964;
  }

  if (a1 == 1)
  {
    return 0x6E6F7473626D6F74;
  }

  return 0x6D617473656D6974;
}

uint64_t sub_26C4587CC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v19 = *(a2 + 16);
  v17 = *(a2 + 24);
  v20 = v17;
  v21 = *(a2 + 40);
  v22 = v4;
  v16 = *(a2 + 64);
  v23 = v16;
  type metadata accessor for SyncedDictionary.Element.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_26C46C6E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C8B4();
  LOBYTE(v19) = 0;
  v11 = v18;
  sub_26C46C6D4();
  if (!v11)
  {
    v12 = *(a2 + 84);
    LOBYTE(v19) = 1;
    type metadata accessor for LamportTimestamp(0);
    sub_26C46B8C4(&qword_280497448, type metadata accessor for LamportTimestamp);
    sub_26C46C6D4();
    v13 = *(a2 + 88);
    LOBYTE(v19) = 2;
    sub_26C46BB54();
    sub_26C46B8C4(&qword_2804973D0, MEMORY[0x277CC95F0]);
    sub_26C46C6B4();
    v14 = *(a2 + 92);
    LOBYTE(v19) = 3;
    sub_26C46C6B4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26C458ADC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v61 = a2;
  v72 = a1;
  v51 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = &v49 - v21;
  v58 = type metadata accessor for LamportTimestamp(0);
  v22 = *(*(v58 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a3 - 8);
  v25 = *(v54 + 64);
  MEMORY[0x28223BE20](v23);
  v60 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v70 = a8;
  v71 = a10;
  type metadata accessor for SyncedDictionary.Element.CodingKeys();
  swift_getWitnessTable();
  v59 = sub_26C46C694();
  v55 = *(v59 - 8);
  v27 = *(v55 + 64);
  MEMORY[0x28223BE20](v59);
  v29 = &v49 - v28;
  v64 = v61;
  v65 = a3;
  v56 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v61 = a7;
  v70 = a8;
  v71 = v62;
  v30 = v72;
  v31 = type metadata accessor for SyncedDictionary.Element();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v49 - v34;
  v36 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v62 = v29;
  v37 = v63;
  sub_26C46C894();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v38 = v57;
  v49 = v32;
  v39 = v55;
  v63 = v35;
  v50 = v31;
  LOBYTE(v64) = 0;
  v40 = v56;
  sub_26C46C684();
  (*(v54 + 32))(v63, v60, v40);
  LOBYTE(v64) = 1;
  sub_26C46B8C4(&qword_280497438, type metadata accessor for LamportTimestamp);
  sub_26C46C684();
  v41 = v50;
  sub_26C40C2E8(v38, &v63[*(v50 + 84)], type metadata accessor for LamportTimestamp);
  sub_26C46BB54();
  LOBYTE(v64) = 2;
  sub_26C46B8C4(&qword_2804973B8, MEMORY[0x277CC95F0]);
  v42 = v53;
  sub_26C46C664();
  v43 = v41;
  sub_26C3E9F28(v42, &v63[*(v41 + 88)], &qword_280497430, &unk_26C46D3D0);
  LOBYTE(v64) = 3;
  v44 = v52;
  v45 = v59;
  sub_26C46C664();
  (*(v39 + 8))(v62, v45);
  v46 = v63;
  sub_26C3E9F28(v44, &v63[*(v43 + 92)], &qword_280497430, &unk_26C46D3D0);
  v47 = v49;
  (*(v49 + 16))(v51, v46, v43);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return (*(v47 + 8))(v46, v43);
}

uint64_t sub_26C459198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for SyncedDictionary.Element();
  sub_26C40C2E8(a2, a6 + v10[21], type metadata accessor for LamportTimestamp);
  sub_26C3E9F28(a3, a6 + v10[22], &qword_280497430, &unk_26C46D3D0);
  return sub_26C3E9F28(a4, a6 + v10[23], &qword_280497430, &unk_26C46D3D0);
}

uint64_t sub_26C4592C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C459338(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26C4593A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C459414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_26C459484@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3FDAB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C4594B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C3E184C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26C459510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C45863C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_26C459568@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3FDAB0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C459598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26C4595EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

BOOL sub_26C459640(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  v11 = a3[9];
  return sub_26C3FDB18(*a1, *a2);
}

uint64_t sub_26C459684(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_26C3FDB50(*v1);
}

uint64_t sub_26C4596BC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  return sub_26C3FDB28(a1, *v2);
}

uint64_t sub_26C4596F4(uint64_t a1, void *a2)
{
  sub_26C46C814();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  sub_26C3FDB28(v13, *v2);
  return sub_26C46C844();
}

uint64_t sub_26C45974C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_26C3E1854(*v1);
}

uint64_t sub_26C459784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_26C3E16D4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_26C4597CC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  result = sub_26C40B6EC();
  *a2 = result;
  return result;
}

uint64_t sub_26C459808(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26C45985C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SyncedDictionary.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SyncedDictionary.init(from:)(a1);
  return v5;
}

uint64_t SyncedDictionary.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v183 = a1;
  v3 = *v1;
  v4 = type metadata accessor for LamportTimestamp(0);
  v191 = *(v4 - 8);
  v5 = *(v191 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v167 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v168 = &v162 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v200 = &v162 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v186 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v185 = &v162 - v16;
  v195 = sub_26C46BB54();
  v190 = *(v195 - 8);
  v17 = *(v190 + 64);
  v18 = MEMORY[0x28223BE20](v195);
  v184 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v3;
  v192 = *(*(v3 + 288) - 8);
  v20 = *(v192 + 64);
  MEMORY[0x28223BE20](v18);
  v199 = &v162 - v21;
  v23 = v22;
  v24 = sub_26C46C474();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v198 = &v162 - v26;
  v27 = *(v3 + 280);
  v28 = *(v3 + 312);
  v29 = *(v3 + 320);
  v30 = *(v3 + 328);
  v31 = *(v3 + 336);
  *&v32 = v27;
  *(&v32 + 1) = v23;
  v33 = v23;
  v209 = v23;
  v232 = v28;
  v233 = v29;
  v34 = v28;
  v214 = v28;
  v35 = v29;
  v197 = v29;
  v234 = v30;
  v235 = v31;
  v36 = v30;
  v196 = v30;
  v37 = v31;
  i = v31;
  v216 = *(v3 + 296);
  v231 = v216;
  v230 = v32;
  v38 = type metadata accessor for SyncedDictionary.Element();
  v206 = *(v38 - 8);
  v39 = *(v206 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v213 = &v162 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v205 = &v162 - v43;
  v204 = *(v27 - 8);
  v44 = *(v204 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v217 = &v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v215 = &v162 - v47;
  v219 = v48;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v203 = sub_26C46C474();
  v193 = *(v203 - 8);
  v49 = *(v193 + 64);
  v50 = MEMORY[0x28223BE20](v203);
  v202 = &v162 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v201 = &v162 - v52;
  *&v230 = v27;
  *(&v230 + 1) = v33;
  v231 = v216;
  v232 = v34;
  v233 = v35;
  v234 = v36;
  v235 = v37;
  v210 = type metadata accessor for SyncedDictionary.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v174 = sub_26C46C694();
  v173 = *(v174 - 8);
  v53 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v55 = &v162 - v54;
  v56 = qword_280498260;
  swift_getTupleTypeMetadata2();
  v57 = sub_26C46C284();
  v58 = v214;
  v59 = sub_26C40AFD4(v57, v27, v4, v214);

  v178 = v56;
  *(v2 + v56) = v59;
  v60 = qword_280498268;
  v61 = sub_26C46C284();
  v208 = v4;
  v62 = sub_26C40AFD4(v61, v27, v4, v58);

  v181 = v60;
  *(v2 + v60) = v62;
  v179 = qword_280498270;
  *(v2 + qword_280498270) = 0;
  v180 = qword_280498278;
  *(v2 + qword_280498278) = 0;
  v63 = v209;
  v64 = swift_conformsToProtocol2();
  if (v63)
  {
    v65 = v64 == 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = !v65;
  *(v2 + qword_280498280) = v66;
  v67 = qword_2804988B0;
  v218 = v27;
  *&v230 = v27;
  *(&v230 + 1) = v63;
  v231 = v216;
  v232 = v58;
  v233 = v197;
  v68 = v183;
  v234 = v196;
  v235 = i;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  swift_getTupleTypeMetadata2();
  sub_26C46C014();
  v69 = sub_26C46C004();
  v176 = v67;
  *(v2 + v67) = v69;
  v70 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  v71 = v212;
  sub_26C46C894();
  if (!v71)
  {
    sub_26C46C174();
    v224 = 0;
    v72 = swift_getWitnessTable();
    v73 = v216;
    v228 = v216;
    v229 = v72;
    swift_getWitnessTable();
    sub_26C46C684();
    v163 = v73;
    v164 = 0;
    v165 = v55;
    v166 = v2;
    v83 = v230;
    v236 = sub_26C46C114();
    v227 = sub_26C46C114();
    v226 = sub_26C46C114();
    result = sub_26C46C114();
    v84 = 0;
    v86 = v83 + 64;
    v85 = *(v83 + 64);
    v188 = v83;
    v87 = 1 << *(v83 + 32);
    v225 = result;
    v88 = -1;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    v89 = v88 & v85;
    v175 = (v87 + 63) >> 6;
    v197 = TupleTypeMetadata2 - 8;
    v90 = v204;
    *&v216 = v204 + 16;
    v91 = v206;
    v187 = v206 + 16;
    WitnessTable = (v204 + 32);
    v210 = (v206 + 32);
    v196 = (v193 + 32);
    v193 = v192 + 16;
    v192 += 56;
    v182 = (v190 + 48);
    v172 = (v190 + 32);
    v171 = (v190 + 16);
    v170 = (v190 + 56);
    v169 = (v190 + 8);
    v191 += 56;
    v190 = v206 + 8;
    v189 = (v204 + 8);
    v92 = v217;
    v93 = v215;
    for (i = v86; ; v86 = i)
    {
      v101 = v205;
      if (!v89)
      {
        if (v175 <= v84 + 1)
        {
          v103 = v84 + 1;
        }

        else
        {
          v103 = v175;
        }

        v104 = v103 - 1;
        while (1)
        {
          v102 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            break;
          }

          if (v102 >= v175)
          {
            v89 = 0;
            v115 = 1;
            v84 = v104;
            v111 = TupleTypeMetadata2;
            v114 = v202;
            goto LABEL_29;
          }

          v89 = *(v86 + 8 * v102);
          ++v84;
          if (v89)
          {
            v84 = v102;
            goto LABEL_28;
          }
        }

        __break(1u);
        return result;
      }

      v102 = v84;
LABEL_28:
      v105 = __clz(__rbit64(v89));
      v89 &= v89 - 1;
      v106 = v105 | (v102 << 6);
      v107 = v188;
      v108 = v93;
      v109 = v218;
      (*(v90 + 16))(v108, *(v188 + 48) + *(v90 + 72) * v106, v218);
      v110 = v219;
      (*(v91 + 16))(v101, *(v107 + 56) + *(v91 + 72) * v106, v219);
      v111 = TupleTypeMetadata2;
      v112 = *(TupleTypeMetadata2 + 48);
      v113 = *(v90 + 32);
      v114 = v202;
      v113(v202, v215, v109);
      (*(v91 + 32))(&v114[v112], v101, v110);
      v115 = 0;
      v92 = v217;
LABEL_29:
      v116 = *(v111 - 8);
      (*(v116 + 56))(v114, v115, 1, v111);
      v117 = v201;
      (*v196)(v201, v114, v203);
      v118 = (*(v116 + 48))(v117, 1, v111);
      v119 = v213;
      if (v118 == 1)
      {

        v139 = qword_280498288;
        v2 = v166;
        *(v166 + qword_280498288) = v236;
        v140 = v227;
        v141 = v179;
        swift_beginAccess();
        v142 = *(v2 + v141);
        *(v2 + v141) = v140;

        v143 = v226;
        v144 = v180;
        swift_beginAccess();
        v145 = *(v2 + v144);
        *(v2 + v144) = v143;

        v146 = v225;
        v147 = v181;
        swift_beginAccess();
        v148 = *(v2 + v147);
        *(v2 + v147) = v146;

        sub_26C46C174();
        v220 = 1;
        v149 = sub_26C46B8C4(&qword_280497438, type metadata accessor for LamportTimestamp);
        v221 = v163;
        v222 = v149;
        swift_getWitnessTable();
        v150 = v174;
        v151 = v165;
        v152 = v164;
        sub_26C46C684();
        if (!v152)
        {
          v153 = v223;
          v154 = v178;
          swift_beginAccess();
          v155 = *(v2 + v154);
          *(v2 + v154) = v153;

          LOBYTE(v223) = 2;
          v156 = v168;
          sub_26C46C684();
          v157 = v173;
          v159 = v167;
          sub_26C46B83C(v156, v167, type metadata accessor for LamportTimestamp);
          *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
          *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
          *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
          v160 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
          v161 = sub_26C3E8EF0(MEMORY[0x277D84F90]);
          sub_26C46B90C(v156, type metadata accessor for LamportTimestamp);
          (*(v157 + 8))(v151, v150);
          *(v2 + v160) = v161;
          sub_26C40C2E8(v159, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
          __swift_destroy_boxed_opaque_existential_1(v183);
          return v2;
        }

        (*(v173 + 8))(v151, v150);
        __swift_destroy_boxed_opaque_existential_1(v183);
        v158 = *(v2 + v139);

        goto LABEL_10;
      }

      v120 = *(v111 + 48);
      v121 = v117;
      v122 = v117;
      v123 = v218;
      (*WitnessTable)(v92, v121, v218);
      (*v210)(v119, &v122[v120], v219);
      v124 = v215;
      v212 = *v216;
      v212(v215, v92, v123);
      v125 = *v193;
      v126 = v198;
      v127 = v209;
      (*v193)(v198, v119, v209);
      (*v192)(v126, 0, 1, v127);
      v93 = v124;
      sub_26C46C174();
      sub_26C46C194();
      v125(v199, v119, v127);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
      v128 = v185;
      sub_26C3DDD48(&v119[v219[22]], v185, &qword_280497430, &unk_26C46D3D0);
      v129 = v195;
      v130 = (*v182)(v128, 1, v195);
      v131 = v186;
      if (v130 == 1)
      {
        break;
      }

      v132 = v184;
      (*v172)(v184, v128, v129);
      v133 = v93;
      v134 = v218;
      v135 = v212;
      v212(v133, v217, v218);
      (*v171)(v131, v132, v129);
      (*v170)(v131, 0, 1, v129);
      sub_26C46C174();
      v136 = v131;
      v95 = v135;
      sub_26C46C194();
      v137 = v217;
      v138 = v134;
      v93 = v215;
      v135(v215, v217, v138);
      sub_26C3DDD48(&v119[v219[23]], v136, &qword_280497430, &unk_26C46D3D0);
      sub_26C46C194();
      (*v169)(v184, v195);
      v94 = v137;
LABEL_17:
      v96 = v218;
      v95(v93, v94, v218);
      v97 = v219;
      v98 = v213;
      v99 = v200;
      sub_26C46B83C(&v213[v219[21]], v200, type metadata accessor for LamportTimestamp);
      (*v191)(v99, 0, 1, v208);
      sub_26C46C174();
      v100 = v97;
      v92 = v217;
      sub_26C46C194();
      (*v190)(v98, v100);
      result = (*v189)(v92, v96);
      v91 = v206;
      v90 = v204;
    }

    sub_26C3DE270(v128, &qword_280497430, &unk_26C46D3D0);
LABEL_16:
    v94 = v217;
    v95 = v212;
    goto LABEL_17;
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
LABEL_10:
  v74 = v176;
  v75 = *(v2 + v178);

  v76 = *(v2 + v181);

  v77 = *(v2 + v179);

  v78 = *(v2 + v180);

  v79 = *(v2 + v74);

  v80 = *(*v2 + 48);
  v81 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t SyncedDictionary.encode(to:)(void *a1)
{
  v190 = a1;
  v2 = *v1;
  v165 = type metadata accessor for LamportTimestamp(0);
  v187 = *(v165 - 8);
  v3 = *(v187 + 64);
  MEMORY[0x28223BE20](v165);
  v136 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v157 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v156 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v144 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v160 = &v135 - v14;
  v15 = v1;
  v16 = v2[35];
  v17 = v2[36];
  v18 = v2[37];
  v19 = v2[38];
  v20 = v2[39];
  v21 = v2[40];
  v22 = v2[41];
  v23 = v2[42];
  v24 = v15;
  v199 = v16;
  v200 = v17;
  v201 = v18;
  v202 = v19;
  v203 = v20;
  v204 = v21;
  v205 = v22;
  v206 = v23;
  v176 = type metadata accessor for SyncedDictionary.Element();
  v25 = sub_26C46C474();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v143 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v142 = &v135 - v30;
  v147 = *(v17 - 8);
  v31 = *(v147 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v185 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v159 = &v135 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v163 = &v135 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v189 = &v135 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v148 = &v135 - v41;
  v146 = *(v16 - 1);
  v42 = *(v146 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v184 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v158 = &v135 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v188 = &v135 - v48;
  MEMORY[0x28223BE20](v47);
  v175 = &v135 - v49;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v173 = sub_26C46C474();
  v186 = *(v173 - 8);
  v50 = *(v186 + 64);
  v51 = MEMORY[0x28223BE20](v173);
  v183 = &v135 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v172 = &v135 - v53;
  v199 = v16;
  v200 = v17;
  v145 = v17;
  v155 = v18;
  v201 = v18;
  v202 = v19;
  v168 = v19;
  v203 = v20;
  v204 = v21;
  v154 = v21;
  v153 = v22;
  v205 = v22;
  v206 = v23;
  v152 = v23;
  type metadata accessor for SyncedDictionary.CodingKeys();
  swift_getWitnessTable();
  v140 = sub_26C46C6E4();
  v139 = *(v140 - 8);
  v54 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v56 = &v135 - v55;
  v57 = v190[4];
  __swift_project_boxed_opaque_existential_1(v190, v190[3]);
  v138 = v56;
  sub_26C46C8B4();
  v190 = v16;
  v171 = v20;
  v207 = sub_26C46C114();
  v58 = qword_280498288;
  swift_beginAccess();
  v59 = *&v24[v58];
  if ((v59 & 0xC000000000000001) != 0)
  {
    v60 = sub_26C46C5C4();
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = v60 | 0x8000000000000000;
  }

  else
  {
    v65 = -1 << *(v59 + 32);
    v62 = ~v65;
    v61 = v59 + 64;
    v66 = -v65;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v63 = v67 & *(v59 + 64);
    v64 = v59;
  }

  v182 = (v146 + 32);
  v162 = qword_280498268;
  v181 = (v147 + 32);
  v170 = TupleTypeMetadata2 - 8;
  v137 = v62;
  v174 = (v62 + 64) >> 6;
  v180 = (v146 + 16);
  v179 = (v147 + 16);
  v169 = (v186 + 32);
  v161 = (v187 + 48);
  v151 = v176 - 8;
  v150 = (v147 + 8);
  v149 = (v146 + 8);

  v69 = 0;
  v164 = v24;
  v70 = v145;
  v71 = v185;
  v72 = v184;
  v73 = v183;
  v167 = v61;
  v177 = v64;
  v74 = v175;
  while (1)
  {
    v166 = v63;
    v186 = v69;
    if ((v64 & 0x8000000000000000) == 0)
    {
      v86 = v63;
      v87 = v69;
      if (!v63)
      {
        if (v174 <= v69 + 1)
        {
          v88 = v69 + 1;
        }

        else
        {
          v88 = v174;
        }

        v89 = v88 - 1;
        v90 = v69;
        v91 = TupleTypeMetadata2;
        while (1)
        {
          v87 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            break;
          }

          if (v87 >= v174)
          {
            v187 = v89;
            v63 = 0;
            v96 = 1;
            goto LABEL_25;
          }

          v86 = *(v61 + 8 * v87);
          ++v90;
          if (v86)
          {
            v64 = v177;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

LABEL_21:
      v63 = (v86 - 1) & v86;
      v92 = v70;
      v93 = __clz(__rbit64(v86)) | (v87 << 6);
      (*(v146 + 16))(v74, *(v64 + 48) + *(v146 + 72) * v93, v190);
      v94 = v148;
      (*(v147 + 16))(v148, *(v64 + 56) + *(v147 + 72) * v93, v92);
      goto LABEL_24;
    }

    if (sub_26C46C5D4())
    {
      sub_26C46C754();
      swift_unknownObjectRelease();
      v94 = v148;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v87 = v186;
      v92 = v70;
LABEL_24:
      v91 = TupleTypeMetadata2;
      v95 = *(TupleTypeMetadata2 + 48);
      v73 = v183;
      (*v182)(v183, v74, v190);
      (*v181)(&v73[v95], v94, v92);
      v96 = 0;
      v187 = v87;
      v70 = v92;
      v71 = v185;
      v72 = v184;
      goto LABEL_25;
    }

    v96 = 1;
    v187 = v186;
    v71 = v185;
    v91 = TupleTypeMetadata2;
LABEL_25:
    v97 = *(v91 - 8);
    (*(v97 + 56))(v73, v96, 1, v91);
    v98 = v172;
    (*v169)();
    if ((*(v97 + 48))(v98, 1, v91) == 1)
    {
      break;
    }

    v186 = v63;
    v99 = v72;
    v100 = *(v91 + 48);
    v101 = v188;
    (*v182)(v188, v98, v190);
    v102 = v189;
    (*v181)(v189, &v98[v100], v70);
    v103 = *v179;
    (*v179)(v163, v102, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v104 = v102;
      v106 = v195;
      v105 = v196;
      (*v180)(v158, v101, v190);
      v103(v159, v104, v70);
      v107 = v164;
      v108 = v162;
      swift_beginAccess();
      v109 = *&v107[v108];
      v110 = v160;
      v111 = v165;
      sub_26C46C184();
      swift_endAccess();
      result = (*v161)(v110, 1, v111);
      if (result == 1)
      {
        goto LABEL_38;
      }

      ObjectType = swift_getObjectType();
      v166 = v106;
      v113 = ObjectType;
      v114 = sub_26C3F8720(ObjectType, v105);
      v115 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v116 = sub_26C46BB54();
      v117 = *(v116 - 8);
      v118 = v156;
      (*(v117 + 16))(v156, v114 + v115, v116);

      (*(v117 + 56))(v118, 0, 1, v116);
      v119 = sub_26C3F8720(v113, v105);
      v120 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
      swift_beginAccess();
      v121 = v119 + v120;
      v122 = v157;
      sub_26C3DDD48(v121, v157, &qword_280497430, &unk_26C46D3D0);

      v123 = v142;
      v70 = v145;
      sub_26C459198(v159, v160, v118, v122, v145, v142);
      (*(*(v176 - 8) + 56))(v123, 0, 1, v176);
      sub_26C46C174();
      sub_26C46C194();
      swift_unknownObjectRelease();
      v72 = v184;
    }

    else
    {
      (*v180)(v99, v101, v190);
      v103(v71, v102, v70);
      v75 = v164;
      v76 = v162;
      swift_beginAccess();
      v77 = *&v75[v76];
      v78 = v144;
      v79 = v165;
      sub_26C46C184();
      swift_endAccess();
      result = (*v161)(v78, 1, v79);
      if (result == 1)
      {
        goto LABEL_37;
      }

      v80 = v70;
      v81 = sub_26C46BB54();
      v82 = *(*(v81 - 8) + 56);
      v83 = v156;
      v82(v156, 1, 1, v81);
      v84 = v157;
      v82(v157, 1, 1, v81);
      v85 = v143;
      sub_26C459198(v71, v78, v83, v84, v80, v143);
      (*(*(v176 - 8) + 56))(v85, 0, 1, v176);
      sub_26C46C174();
      v72 = v184;
      sub_26C46C194();
      v70 = v80;
    }

    (*v150)(v189, v70);
    result = (*v149)(v188, v190);
    v69 = v187;
    v63 = v186;
    v71 = v185;
    v74 = v175;
    v73 = v183;
    v61 = v167;
    v64 = v177;
  }

  sub_26C40B328();
  v195 = v207;
  LOBYTE(v191) = 0;
  sub_26C46C174();
  WitnessTable = swift_getWitnessTable();
  v125 = v168;
  v197 = v168;
  v198 = WitnessTable;
  swift_getWitnessTable();
  v126 = v140;
  v127 = v138;
  v128 = v141;
  sub_26C46C6D4();
  if (v128)
  {
  }

  else
  {

    v129 = qword_280498260;
    v130 = v164;
    swift_beginAccess();
    v191 = *&v130[v129];
    v194 = 1;
    sub_26C46C174();
    v131 = sub_26C46B8C4(&qword_280497448, type metadata accessor for LamportTimestamp);
    v192 = v125;
    v193 = v131;
    swift_getWitnessTable();
    sub_26C46C6D4();
    v132 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    swift_beginAccess();
    v133 = &v130[v132];
    v134 = v136;
    sub_26C46B83C(v133, v136, type metadata accessor for LamportTimestamp);
    v194 = 2;
    sub_26C46C6D4();
    sub_26C46B90C(v134, type metadata accessor for LamportTimestamp);
  }

  return (*(v139 + 8))(v127, v126);
}

uint64_t SyncedDictionary.__allocating_init(wrappedValue:)(unint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SyncedDictionary.init(wrappedValue:)(a1);
  return v5;
}

void *SyncedDictionary.init(wrappedValue:)(unint64_t a1)
{
  v2 = v1;
  v28 = *v1;
  v3 = v28;
  v29 = a1;
  v4 = type metadata accessor for LamportTimestamp(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_280498260;
  v9 = *(v28 + 280);
  swift_getTupleTypeMetadata2();
  v10 = sub_26C46C284();
  v11 = v3[39];
  v12 = sub_26C40AFD4(v10, v9, v4, v11);

  *(v2 + v8) = v12;
  v13 = qword_280498268;
  v14 = sub_26C46C284();
  v15 = sub_26C40AFD4(v14, v9, v4, v11);

  *(v2 + v13) = v15;
  *(v2 + qword_280498270) = 0;
  *(v2 + qword_280498278) = 0;
  v16 = v3[36];
  if (swift_conformsToProtocol2())
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  *(v2 + qword_280498280) = v18;
  v19 = qword_2804988B0;
  v20 = v3[42];
  v30 = v9;
  v31 = v16;
  v32 = *(v28 + 296);
  v33 = v11;
  v34 = *(v28 + 320);
  v35 = v20;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  swift_getTupleTypeMetadata2();
  sub_26C46C014();
  *(v2 + v19) = sub_26C46C004();
  swift_getTupleTypeMetadata2();
  v21 = sub_26C46C284();
  v22 = sub_26C40AFD4(v21, v9, v16, v11);

  *(v2 + qword_280498288) = v22;
  *v7 = 0;
  v23 = &v7[*(v4 + 20)];
  sub_26C46BD14();
  v24 = *(v4 + 24);
  v25 = type metadata accessor for PBUUID(0);
  (*(*(v25 - 8) + 56))(&v7[v24], 1, 1, v25);
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
  v26 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
  *(v2 + v26) = sub_26C3E8EF0(MEMORY[0x277D84F90]);
  sub_26C40C2E8(v7, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

  sub_26C45C8FC(v29);

  return v2;
}

void sub_26C45C8FC(unint64_t a1)
{
  v463 = a1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 296);
  v5 = *(*v1 + 304);
  v6 = *(*v1 + 312);
  v7 = *(*v1 + 320);
  v8 = *(*v1 + 328);
  v9 = *(*v1 + 336);
  v488[0] = *(*v1 + 280);
  v2 = v488[0];
  v488[1] = v3;
  v407 = v4;
  v488[2] = v4;
  v489 = v5;
  v406 = v5;
  v484 = v6;
  v490 = v6;
  v491 = v7;
  v405 = v7;
  v404 = v8;
  v492 = v8;
  v493 = v9;
  v445 = v9;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v410 = *(TupleTypeMetadata2 - 8);
  v11 = *(v410 + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v409 = &v385[-v13];
  v14 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v408 = &v385[-v15];
  v16 = type metadata accessor for ValueData(0);
  v397 = *(v16 - 8);
  v17 = *(v397 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v401 = &v385[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v393 = &v385[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v421 = &v385[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v415 = &v385[-v26];
  MEMORY[0x28223BE20](v25);
  v396 = &v385[-v27];
  v439 = type metadata accessor for LamportTimestamp(0);
  v28 = *(v439 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v439);
  v431 = &v385[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v432 = &v385[-v33];
  MEMORY[0x28223BE20](v32);
  v420 = &v385[-v34];
  v480 = sub_26C46C474();
  v483 = *(v480 - 8);
  v35 = *(v483 + 64);
  v36 = MEMORY[0x28223BE20](v480);
  v392 = &v385[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v446 = &v385[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v451 = &v385[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v391 = &v385[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v452 = &v385[-v45];
  v458 = *(v3 - 8);
  v46 = *(v458 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v450 = &v385[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = MEMORY[0x28223BE20](v47);
  v444 = &v385[-v50];
  v51 = MEMORY[0x28223BE20](v49);
  v476 = &v385[-v52];
  v53 = MEMORY[0x28223BE20](v51);
  v470 = &v385[-v54];
  v457 = *(v2 - 8);
  v55 = *(v457 + 64);
  v56 = MEMORY[0x28223BE20](v53);
  v443 = &v385[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v385[-v59];
  MEMORY[0x28223BE20](v58);
  v471 = &v385[-v61];
  v481 = v2;
  v456 = swift_getTupleTypeMetadata2();
  v475 = sub_26C46C474();
  v482 = *(v475 - 8);
  v62 = *(v482 + 64);
  v63 = MEMORY[0x28223BE20](v475);
  v448 = &v385[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = MEMORY[0x28223BE20](v63);
  v449 = &v385[-v66];
  v67 = MEMORY[0x28223BE20](v65);
  v459 = &v385[-v68];
  MEMORY[0x28223BE20](v67);
  v465 = &v385[-v69];
  v441 = type metadata accessor for PBUUID(0);
  v440 = *(v441 - 8);
  v70 = *(v440 + 64);
  MEMORY[0x28223BE20](v441);
  v438 = &v385[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v72 - 8);
  v403 = &v385[-((v75 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = MEMORY[0x28223BE20](v74);
  v414 = &v385[-v77];
  v78 = MEMORY[0x28223BE20](v76);
  v402 = &v385[-v79];
  v80 = MEMORY[0x28223BE20](v78);
  v419 = &v385[-v81];
  v82 = MEMORY[0x28223BE20](v80);
  v395 = &v385[-v83];
  MEMORY[0x28223BE20](v82);
  v85 = &v385[-v84];
  v436 = sub_26C46BB54();
  v86 = *(v436 - 8);
  v87 = *(v86 + 64);
  v88 = MEMORY[0x28223BE20](v436);
  v90 = &v385[-((v89 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = MEMORY[0x28223BE20](v88);
  v413 = &v385[-v92];
  v93 = MEMORY[0x28223BE20](v91);
  v417 = &v385[-v94];
  v95 = MEMORY[0x28223BE20](v93);
  v435 = &v385[-v96];
  v97 = MEMORY[0x28223BE20](v95);
  v434 = &v385[-v98];
  MEMORY[0x28223BE20](v97);
  *&v485 = &v385[-v99];
  v100 = type metadata accessor for DictionaryChangedMessage(0);
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v437 = &v385[-((v102 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v442 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller;
  v103 = *(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  v466 = v1;
  if (v103)
  {
    v479 = v85;
    v104 = *(*v103 + 744);

    if ((v104(v105) & 1) == 0)
    {
      if (qword_280497148 != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_7;
    }

    v1 = v466;
    v85 = v479;
  }

  v479 = v28;
  v477 = v3;
  v478 = v86;
  *&v486 = sub_26C46C284();
  *(&v486 + 1) = sub_26C46C284();
  v487 = sub_26C46C284();
  v106 = *(v1 + v442);
  v462 = v60;
  v418 = v90;
  if (!v106)
  {
    v109 = v436;
    v430 = *(v86 + 56);
    v430(v85, 1, 1, v436);
    v116 = v485;
    if (qword_280497190 != -1)
    {
      goto LABEL_183;
    }

    goto LABEL_12;
  }

  v107 = *(v86 + 16);
  v108 = (v86 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v109 = v436;
  v107(v85, v106 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v436);
  v430 = *(v86 + 56);
  v430(v85, 0, 1, v109);
  v110 = v485;
  (*(v86 + 32))(v485, v85, v109);
  v111 = v86;
LABEL_15:
  LODWORD(v485) = *(v466 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID);
  v118 = v437;
  *v437 = 0;
  v119 = MEMORY[0x277D84F90];
  *(v118 + 1) = MEMORY[0x277D84F90];
  *(v118 + 2) = v119;
  *(v118 + 3) = v119;
  *(v118 + 4) = v119;
  *(v118 + 5) = v119;
  *(v118 + 6) = v119;
  *(v118 + 7) = v119;
  *(v118 + 8) = v119;
  v120 = &v118[*(v100 + 52)];
  sub_26C46BD14();
  v121 = *(v100 + 56);
  v122 = v440 + 56;
  v123 = *(v440 + 56);
  v123(&v118[v121], 1, 1, v441);
  v124 = v434;
  v107(v434, v110, v109);
  v125 = v107;
  v126 = v435;
  v428 = v125;
  v433 = v108;
  v125(v435, v124, v109);
  v127 = v438;
  sub_26C40F280(v126, v438);
  v128 = *(v111 + 8);
  v128(v110, v109);
  v425 = v111 + 8;
  v424 = v128;
  v128(v124, v109);
  sub_26C3DE270(&v118[v121], &qword_280497458, &unk_26C46D3F0);
  sub_26C40C2E8(v127, &v118[v121], type metadata accessor for PBUUID);
  v440 = v122;
  v426 = v123;
  v123(&v118[v121], 0, 1, v441);
  *v118 = v485;
  v129 = qword_280498288;
  v130 = v466;
  swift_beginAccess();
  v447 = v129;
  v131 = *(v130 + v129);
  if ((v131 & 0xC000000000000001) != 0)
  {
    v132 = sub_26C46C5C4();
    v133 = 0;
    v134 = 0;
    v468 = 0;
    v461 = v132 | 0x8000000000000000;
  }

  else
  {
    v135 = -1 << *(v131 + 32);
    v134 = ~v135;
    v133 = (v131 + 64);
    v136 = -v135;
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    else
    {
      v137 = -1;
    }

    v468 = (v137 & *(v131 + 64));
    v461 = v131;
  }

  v100 = v481;
  v138 = v482;
  v86 = v462;
  v139 = v459;
  v140 = v465;
  v141 = v483;
  v412 = qword_280498268;
  *&v485 = v457 + 32;
  v422 = qword_280498280;
  v482 = v458 + 32;
  v142 = v456;
  v453 = (v456 - 8);
  v398 = v134;
  v454 = (v134 + 64) >> 6;
  v464 = (v457 + 16);
  v460 = (v458 + 16);
  v472 = (v138 + 32);
  v483 = v458 + 48;
  v423 = (v479 + 6);
  v429 = v478 + 7;
  v416 = v478 + 4;
  v394 = (v478 + 6);
  v388 = (v458 + 56);
  v479 = (v141 + 8);
  v478 = (v458 + 8);
  v469 = (v457 + 8);

  v143 = 0;
  v427 = 0;
  v387 = MEMORY[0x277D84F90];
  v389 = MEMORY[0x277D84F90];
  v400 = MEMORY[0x277D84F90];
  v390 = MEMORY[0x277D84F90];
  v399 = MEMORY[0x277D84F90];
  v144 = v470;
  v455 = v133;
  v145 = v468;
  while (1)
  {
    v468 = v145;
    v467 = v143;
    if ((v461 & 0x8000000000000000) == 0)
    {
      if (v145)
      {
        v146 = v86;
        v147 = v139;
        v148 = v145;
        v149 = v143;
        goto LABEL_35;
      }

      if (v454 <= (v143 + 1))
      {
        v153 = (v143 + 1);
      }

      else
      {
        v153 = v454;
      }

      v154 = (v153 - 1);
      v155 = v143;
      v156 = v482;
      while (1)
      {
        v149 = (v155 + 1);
        if (__OFADD__(v155, 1))
        {
          break;
        }

        if (v149 >= v454)
        {
          v146 = v86;
          v150 = v140;
          v473 = v154;
          v474 = 0;
          v161 = 1;
          goto LABEL_37;
        }

        v148 = *&v133[8 * v149];
        ++v155;
        if (v148)
        {
          v146 = v86;
          v147 = v139;
LABEL_35:
          v150 = v140;
          v474 = (v148 - 1) & v148;
          v157 = __clz(__rbit64(v148)) | (v149 << 6);
          v151 = v471;
          v158 = v461;
          (*(v457 + 16))(v471, *(v461 + 48) + *(v457 + 72) * v157, v100);
          v152 = v477;
          (*(v458 + 16))(v144, *(v158 + 56) + *(v458 + 72) * v157, v477);
          v139 = v147;
          v142 = v456;
LABEL_36:
          v159 = *(v142 + 48);
          (*v485)(v139, v151, v100);
          v160 = &v139[v159];
          v156 = v482;
          (*v482)(v160, v144, v152);
          v161 = 0;
          v473 = v149;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_167;
    }

    v146 = v86;
    if (sub_26C46C5D4())
    {
      v150 = v140;
      v151 = v471;
      sub_26C46C754();
      v100 = v481;
      swift_unknownObjectRelease();
      v152 = v477;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v149 = v467;
      v474 = v468;
      goto LABEL_36;
    }

    v150 = v140;
    v161 = 1;
    v473 = v467;
    v474 = v468;
    v156 = v482;
LABEL_37:
    v162 = *(v142 - 8);
    v163 = v162;
    v164 = *(v162 + 56);
    v165 = v162 + 56;
    (v164)(v139, v161, 1, v142);
    v166 = v139;
    v167 = *v472;
    (*v472)(v150, v166, v475);
    v168 = *(v163 + 48);
    if (v168(v150, 1, v142) == 1)
    {
      break;
    }

    v169 = *(v142 + 48);
    (*v485)(v146, v150, v100);
    v170 = *v156;
    v110 = v477;
    (*v156)(v476, v150 + v169, v477);
    v171 = v452;
    sub_26C46C184();
    v172 = *v483;
    if ((*v483)(v171, 1, v110) == 1)
    {
      (*v479)(v171, v480);
    }

    else
    {
      v173 = v171;
      v174 = v444;
      v170(v444, v173, v110);
      if ((sub_26C46C1C4() & 1) == 0)
      {
        v86 = v462;
        (*v464)(v471, v462, v100);
        sub_26C46C2E4();
        sub_26C46C2C4();
        v187 = v466;
        v188 = v412;
        swift_beginAccess();
        v189 = *(v187 + v188);
        v179 = v396;
        v190 = v439;
        sub_26C46C184();
        v191 = (*v423)(v179, 1, v190);
        v139 = v459;
        v140 = v465;
        if (v191 == 1)
        {
LABEL_184:
          sub_26C3DE270(v179, &qword_280497468, &unk_26C46D400);
          swift_endAccess();
          sub_26C46C5E4();
          __break(1u);
          return;
        }

        sub_26C40C2E8(v179, v420, type metadata accessor for LamportTimestamp);
        swift_endAccess();
        v192 = *(v187 + v442);
        if (v192)
        {
          v193 = v395;
          v194 = v436;
          v428(v395, v192 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v436);
          v430(v193, 0, 1, v194);
          v195 = v417;
          (*v416)(v417, v193, v194);
        }

        else
        {
          v224 = v395;
          v194 = v436;
          v430(v395, 1, 1, v436);
          if (qword_280497190 != -1)
          {
            swift_once();
          }

          v225 = __swift_project_value_buffer(v194, qword_2804985C0);
          v195 = v417;
          v428(v417, v225, v194);
          if ((*v394)(v224, 1, v194) != 1)
          {
            sub_26C3DE270(v224, &qword_280497430, &unk_26C46D3D0);
          }
        }

        v226 = v434;
        v227 = v428;
        v428(v434, v195, v194);
        v227(v435, v226, v194);
        v228 = v438;
        sub_26C40F280(v435, v438);
        v229 = v226;
        v85 = v424;
        (v424)(v229, v194);
        (v85)(v417, v194);
        v109 = *(v439 + 24);
        v116 = v420;
        sub_26C3DE270(v420 + v109, &qword_280497458, &unk_26C46D3F0);
        sub_26C40C2E8(v228, v116 + v109, type metadata accessor for PBUUID);
        v426(v116 + v109, 0, 1, v441);
        v230 = __CFADD__(*v116, 1);
        v386 = *v116 + 1;
        if (v230)
        {
          __break(1u);
LABEL_183:
          swift_once();
LABEL_12:
          v117 = __swift_project_value_buffer(v109, qword_2804985C0);
          v107 = *(v86 + 16);
          v107(v116, v117, v109);
          if ((*(v86 + 48))(v85, 1, v109) != 1)
          {
            sub_26C3DE270(v85, &qword_280497430, &unk_26C46D3D0);
          }

          v111 = v86;
          v108 = (v86 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v110 = v485;
          goto LABEL_15;
        }

        *v116 = v386;
        v231 = v116;
        v232 = v466;
        sub_26C4608BC(v86, v231);
        if (*(v232 + v422) == 1)
        {
          v489 = v110;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v488);
          v234 = *v460;
          (*v460)(boxed_opaque_existential_0, v476, v110);
          sub_26C3E13DC(v488);
          __swift_destroy_boxed_opaque_existential_1(v488);
          v489 = v110;
          v235 = __swift_allocate_boxed_opaque_existential_0(v488);
          v234(v235, v444, v110);
          v100 = v481;
          v236 = v436;
          v237 = v430;
          v430(v419, 1, 1, v436);
          v238 = v402;
          v237(v402, 1, 1, v236);
          v86 = v462;
          v239 = v419;
          sub_26C3E0D08(v488, v419, v238);
          sub_26C3DE270(v238, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v239, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v488, &qword_280497450, &qword_26C471080);
        }

        if (*(v232 + v442) && swift_weakLoadStrong())
        {

          v240 = v100;
          v241 = v427;
          v242 = sub_26C46AB74(v86, v240);
          v244 = v243;
          if (v241)
          {
            v427 = v241;
            sub_26C40B328();
            v373 = *v478;
            (*v478)(v444, v110);
            (v373)(v476, v110);
            v372 = v481;
            v371 = v420;
            goto LABEL_174;
          }

          v245 = v242;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v427 = v244;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v390 = sub_26C42BA84(0, *(v390 + 2) + 1, 1, v390);
          }

          v248 = *(v390 + 2);
          v247 = *(v390 + 3);
          if (v248 >= v247 >> 1)
          {
            v390 = sub_26C42BA84((v247 > 1), v248 + 1, 1, v390);
          }

          v249 = v390;
          *(v390 + 2) = v248 + 1;
          v250 = &v249[16 * v248];
          v251 = v427;
          *(v250 + 4) = v245;
          *(v250 + 5) = v251;
          *(v437 + 3) = v249;
          v252 = v391;
          (*v460)(v391, v444, v110);
          (*v388)(v252, 0, 1, v110);
          sub_26C460AA8(v252, v393);
          v427 = 0;
          (*v479)(v252, v480);
          v253 = v387;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v253 = sub_26C42BCBC(0, v253[2] + 1, 1, v253);
          }

          v255 = v253[2];
          v254 = v253[3];
          if (v255 >= v254 >> 1)
          {
            v253 = sub_26C42BCBC(v254 > 1, v255 + 1, 1, v253);
          }

          v253[2] = v255 + 1;
          sub_26C40C2E8(v393, v253 + ((*(v397 + 80) + 32) & ~*(v397 + 80)) + *(v397 + 72) * v255, type metadata accessor for ValueData);
          *(v437 + 4) = v253;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v389 = sub_26C42BCE4(0, *(v389 + 2) + 1, 1, v389);
          }

          v257 = *(v389 + 2);
          v256 = *(v389 + 3);
          v387 = v253;
          if (v257 >= v256 >> 1)
          {
            v389 = sub_26C42BCE4((v256 > 1), v257 + 1, 1, v389);
          }

          v258 = *v478;
          (*v478)(v444, v110);
          (v258)(v476, v110);
          v100 = v481;
          (*v469)(v86, v481);
          v259 = v389;
          *(v389 + 2) = v257 + 1;
          *&v259[4 * v257 + 32] = v386;
          *(v437 + 5) = v259;
          v133 = v455;
          v139 = v459;
        }

        else
        {
          v260 = *v478;
          (*v478)(v444, v110);
          (v260)(v476, v110);
          (*v469)(v86, v100);
          v133 = v455;
        }

        v223 = &v452;
        goto LABEL_98;
      }

      (*v478)(v174, v110);
    }

    v86 = v462;
    v175 = v451;
    v139 = v459;
    v140 = v465;
    sub_26C46C184();
    if (v172(v175, 1, v110) == 1)
    {
      (*v479)(v175, v480);
      (*v464)(v471, v86, v100);
      sub_26C46C2E4();
      sub_26C46C2C4();
      v176 = v466;
      v177 = v412;
      swift_beginAccess();
      v178 = *(v176 + v177);
      v179 = v415;
      v180 = v439;
      sub_26C46C184();
      v181 = (*v423)(v179, 1, v180);
      v182 = v428;
      if (v181 == 1)
      {
        goto LABEL_184;
      }

      sub_26C40C2E8(v179, v432, type metadata accessor for LamportTimestamp);
      swift_endAccess();
      v183 = *(v176 + v442);
      if (v183)
      {
        v184 = v414;
        v185 = v436;
        (v182)(v414, v183 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v436);
        v430(v184, 0, 1, v185);
        v186 = v413;
        (*v416)();
      }

      else
      {
        v196 = v414;
        v185 = v436;
        v430(v414, 1, 1, v436);
        if (qword_280497190 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v185, qword_2804985C0);
        v186 = v413;
        v182();
        if ((*v394)(v196, 1, v185) != 1)
        {
          sub_26C3DE270(v196, &qword_280497430, &unk_26C46D3D0);
        }
      }

      v197 = v434;
      (v182)(v434, v186, v185);
      v198 = v435;
      (v182)(v435, v197, v185);
      v199 = v438;
      sub_26C40F280(v198, v438);
      v200 = v197;
      v201 = v424;
      (v424)(v200, v185);
      v201(v186, v185);
      v202 = *(v439 + 24);
      v203 = v432;
      sub_26C3DE270(v432 + v202, &qword_280497458, &unk_26C46D3F0);
      sub_26C40C2E8(v199, v203 + v202, type metadata accessor for PBUUID);
      v426(v203 + v202, 0, 1, v441);
      v204 = *v203 + 1;
      if (*v203 == -1)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        swift_once();
LABEL_7:
        v112 = sub_26C46BFA4();
        __swift_project_value_buffer(v112, qword_280498530);
        v113 = sub_26C46BF84();
        v114 = sub_26C46C3D4();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_26C3D6000, v113, v114, "SyncedDictionary: Property not registered or is owned by somebody else", v115, 2u);
          MEMORY[0x26D6A18D0](v115, -1, -1);
        }

LABEL_10:

        return;
      }

      *v203 = v204;
      v86 = v462;
      v205 = v203;
      v206 = v466;
      sub_26C46114C(v462, v205);
      if (*(v206 + v422) == 1)
      {
        v489 = v110;
        v207 = __swift_allocate_boxed_opaque_existential_0(v488);
        (*v460)(v207, v476, v110);
        sub_26C3E13DC(v488);
        __swift_destroy_boxed_opaque_existential_1(v488);
      }

      v133 = v455;
      v140 = v465;
      if (*(v206 + v442) && swift_weakLoadStrong())
      {

        v208 = v100;
        v209 = v427;
        v210 = sub_26C46AB74(v86, v208);
        v427 = v209;
        if (v209)
        {
          goto LABEL_168;
        }

        v212 = v210;
        v213 = v211;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v399 = sub_26C42BA84(0, *(v399 + 2) + 1, 1, v399);
        }

        v215 = *(v399 + 2);
        v214 = *(v399 + 3);
        if (v215 >= v214 >> 1)
        {
          v399 = sub_26C42BA84((v214 > 1), v215 + 1, 1, v399);
        }

        v216 = v399;
        *(v399 + 2) = v215 + 1;
        v217 = &v216[16 * v215];
        *(v217 + 4) = v212;
        *(v217 + 5) = v213;
        *(v437 + 1) = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v400 = sub_26C42BCE4(0, *(v400 + 2) + 1, 1, v400);
        }

        v219 = *(v400 + 2);
        v218 = *(v400 + 3);
        if (v219 >= v218 >> 1)
        {
          v400 = sub_26C42BCE4((v218 > 1), v219 + 1, 1, v400);
        }

        (*v478)();
        v220 = v481;
        (*v469)(v86, v481);
        v221 = v400;
        *(v400 + 2) = v219 + 1;
        v222 = &v221[4 * v219];
        v100 = v220;
        *(v222 + 8) = v204;
        *(v437 + 2) = v221;
        v133 = v455;
      }

      else
      {
        (*v478)(v476, v110);
        (*v469)(v86, v100);
      }

      v223 = &v464;
LABEL_98:
      sub_26C46B90C(*(v223 - 32), type metadata accessor for LamportTimestamp);
      v143 = v473;
      v145 = v474;
      v144 = v470;
    }

    else
    {
      (*v478)(v476, v110);
      (*v469)(v86, v100);
      (*v479)(v175, v480);
      v143 = v473;
      v145 = v474;
      v144 = v470;
      v133 = v455;
    }
  }

  v459 = v167;
  v454 = v165;
  v473 = v164;
  sub_26C40B328();
  if ((v463 & 0xC000000000000001) != 0)
  {
    v261 = sub_26C46C5C4();
    v262 = 0;
    v263 = 0;
    v468 = 0;
    v465 = v261 | 0x8000000000000000;
  }

  else
  {
    v264 = -1 << *(v463 + 32);
    v263 = ~v264;
    v262 = v463 + 64;
    v265 = -v264;
    if (v265 < 64)
    {
      v266 = ~(-1 << v265);
    }

    else
    {
      v266 = -1;
    }

    v468 = (v266 & *(v463 + 64));
    v465 = v463;
  }

  v267 = v443;
  v268 = v471;
  v86 = v469;
  v269 = v473;
  v110 = v477;
  v451 = qword_280498260;
  v452 = v263;
  v462 = ((v263 + 64) >> 6);

  v270 = 0;
  v453 = MEMORY[0x277D84F90];
  v455 = MEMORY[0x277D84F90];
  v444 = MEMORY[0x277D84F90];
  v461 = v262;
  v271 = v468;
  while (2)
  {
    v468 = v271;
    v467 = v270;
    if ((v465 & 0x8000000000000000) != 0)
    {
      if (sub_26C46C5D4())
      {
        sub_26C46C754();
        swift_unknownObjectRelease();
        v274 = v470;
        sub_26C46C754();
        swift_unknownObjectRelease();
        v275 = *(v142 + 48);
        v276 = v448;
        (*v485)();
        (*v482)(&v276[v275], v274, v110);
        (v473)(v276, 0, 1, v142);
      }

      else
      {
        v276 = v448;
        (v269)(v448, 1, 1, v142);
      }

      v474 = v467;
      v476 = v468;
      goto LABEL_122;
    }

    if (!v271)
    {
      if (v462 <= v270 + 1)
      {
        v277 = v270 + 1;
      }

      else
      {
        v277 = v462;
      }

      v278 = v277 - 1;
      v279 = v270;
      while (1)
      {
        v273 = v279 + 1;
        if (__OFADD__(v279, 1))
        {
          break;
        }

        if (v273 >= v462)
        {
          v474 = v278;
          v276 = v448;
          (v269)(v448, 1, 1, v142);
          v476 = 0;
          goto LABEL_122;
        }

        v272 = *(v262 + 8 * v273);
        ++v279;
        if (v272)
        {
          goto LABEL_118;
        }
      }

LABEL_167:
      __break(1u);
LABEL_168:
      sub_26C40B328();
      (*v478)(v476, v110);
      v370 = &v464;
      goto LABEL_172;
    }

    v272 = v271;
    v273 = v270;
LABEL_118:
    v476 = ((v272 - 1) & v272);
    v280 = __clz(__rbit64(v272)) | (v273 << 6);
    v281 = v457;
    v282 = v465;
    v283 = v481;
    (*(v457 + 16))(v268, *(v465 + 48) + *(v457 + 72) * v280, v481);
    v284 = v458;
    v285 = *(v282 + 56) + *(v458 + 72) * v280;
    v286 = v268;
    v287 = v470;
    v110 = v477;
    (*(v458 + 16))(v470, v285, v477);
    v288 = *(v456 + 48);
    v289 = *(v281 + 32);
    v290 = v448;
    v291 = v286;
    v142 = v456;
    v289(v448, v291, v283);
    v292 = v287;
    v276 = v290;
    (*(v284 + 32))(&v290[v288], v292, v110);
    (v473)(v290, 0, 1, v142);
    v474 = v273;
    v267 = v443;
    v86 = v469;
LABEL_122:
    v293 = v449;
    (v459)(v449, v276, v475);
    if (v168(v293, 1, v142) == 1)
    {
      sub_26C40B328();
      v353 = v466;
      v354 = *(v466 + v447);
      *(v466 + v447) = v463;

      v355 = *(v353 + qword_2804988B0);
      v356 = v487;
      v357 = sub_26C46BCD4();
      v358 = *(*(v357 - 8) + 56);
      v485 = v486;
      v359 = v408;
      v358(v408, 1, 1, v357);
      v360 = TupleTypeMetadata2;
      v361 = *(TupleTypeMetadata2 + 48);
      v362 = v409;
      *v409 = v485;
      *(v362 + 2) = v356;
      sub_26C3E9F28(v359, v362 + v361, &qword_280497268, &qword_26C46CFE0);
      sub_26C46BFE4();
      (*(v410 + 8))(v362, v360);
      v363 = *(v353 + v442);
      if (v363 && (Strong = swift_weakLoadStrong()) != 0)
      {
        v365 = Strong;

        v366 = sub_26C3EA940();
        if (v366 && *(v365 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options) != 1)
        {
          sub_26C46B90C(v437, type metadata accessor for DictionaryChangedMessage);

          goto LABEL_10;
        }

        v367 = *(v363 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock);
        MEMORY[0x28223BE20](v366);
        v368 = v437;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497478, &qword_26C46D410);
        sub_26C46BB64();

        v369 = v368;
      }

      else
      {
        v369 = v437;
      }

      sub_26C46B90C(v369, type metadata accessor for DictionaryChangedMessage);
      return;
    }

    v294 = *(v142 + 48);
    v295 = v481;
    (*v485)(v267, v293, v481);
    v296 = &v293[v294];
    v297 = v450;
    (*v482)(v450, v296, v110);
    v298 = v447;
    v299 = v466;
    swift_beginAccess();
    v300 = *(v299 + v298);
    v301 = v446;
    sub_26C46C184();
    swift_endAccess();
    if ((*v483)(v301, 1, v110) != 1)
    {
      (*v478)(v297, v110);
      (*v86)(v267, v295);
      (*v479)(v301, v480);
      v270 = v474;
      v271 = v476;
      v268 = v471;
LABEL_125:
      v269 = v473;
      v262 = v461;
      continue;
    }

    break;
  }

  v420 = *v479;
  (v420)(v301, v480);
  (*v464)(v471, v267, v295);
  sub_26C46C2E4();
  sub_26C46C2C4();
  v302 = v451;
  v303 = v466;
  swift_beginAccess();
  v304 = *&v302[v303];
  v305 = v421;
  v306 = v439;
  sub_26C46C184();
  swift_endAccess();
  v432 = *v423;
  if ((v432)(v305, 1, v306) == 1)
  {
    v307 = v431;
    *v431 = 0;
    v308 = v307 + *(v306 + 20);
    sub_26C46BD14();
    v309 = v307 + *(v306 + 24);
    v310 = v421;
    v426(v309, 1, 1, v441);
    v311 = (v432)(v310, 1, v306);
    v312 = v403;
    if (v311 != 1)
    {
      sub_26C3DE270(v310, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    sub_26C40C2E8(v421, v431, type metadata accessor for LamportTimestamp);
    v312 = v403;
  }

  v313 = *(v303 + v442);
  if (v313)
  {
    v314 = v436;
    v315 = v428;
    v428(v312, v313 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v436);
    v430(v312, 0, 1, v314);
    v316 = v418;
    (*v416)(v418, v312, v314);
  }

  else
  {
    v314 = v436;
    v430(v312, 1, 1, v436);
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v317 = __swift_project_value_buffer(v314, qword_2804985C0);
    v316 = v418;
    v315 = v428;
    v428(v418, v317, v314);
    if ((*v394)(v312, 1, v314) != 1)
    {
      sub_26C3DE270(v312, &qword_280497430, &unk_26C46D3D0);
    }
  }

  v318 = v434;
  v315(v434, v316, v314);
  v319 = v315;
  v320 = v435;
  v319(v435, v318, v314);
  sub_26C40F280(v320, v438);
  v321 = v424;
  (v424)(v318, v314);
  v321(v418, v314);
  v322 = *(v439 + 24);
  v323 = v431;
  sub_26C3DE270(v431 + v322, &qword_280497458, &unk_26C46D3F0);
  sub_26C40C2E8(v438, v323 + v322, type metadata accessor for PBUUID);
  v426(v323 + v322, 0, 1, v441);
  v324 = *v323 + 1;
  if (*v323 == -1)
  {
    goto LABEL_180;
  }

  LODWORD(v432) = *v323 + 1;
  *v323 = v324;
  v325 = v323;
  v326 = v466;
  sub_26C461398(v267, v325);
  if (*(v326 + v422))
  {
    v489 = v110;
    v327 = __swift_allocate_boxed_opaque_existential_0(v488);
    (*v460)(v327, v450, v110);
    v328 = v436;
    v329 = v430;
    v430(v419, 1, 1, v436);
    v330 = v402;
    v329(v402, 1, 1, v328);
    v326 = v466;
    v331 = v419;
    sub_26C3E0D08(v488, v419, v330);
    sub_26C3DE270(v330, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v331, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v488, &qword_280497450, &qword_26C471080);
  }

  v86 = v469;
  v332 = v478;
  v268 = v471;
  if (!*(v326 + v442) || !swift_weakLoadStrong())
  {
    (*v332)(v450, v110);
    (*v86)(v267, v295);
LABEL_157:
    sub_26C46B90C(v431, type metadata accessor for LamportTimestamp);
    v270 = v474;
    v271 = v476;
    goto LABEL_125;
  }

  v333 = v295;
  v334 = v427;
  v335 = sub_26C46AB74(v267, v333);
  v427 = v334;
  if (v334)
  {
    sub_26C40B328();
    (*v332)(v450, v110);
    goto LABEL_171;
  }

  v337 = v335;
  v417 = v336;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v455 = sub_26C42BA84(0, *(v455 + 2) + 1, 1, v455);
  }

  v339 = *(v455 + 2);
  v338 = *(v455 + 3);
  v340 = v339 + 1;
  if (v339 >= v338 >> 1)
  {
    v352 = sub_26C42BA84((v338 > 1), v339 + 1, 1, v455);
    v340 = v339 + 1;
    v455 = v352;
  }

  v341 = v455;
  *(v455 + 2) = v340;
  v342 = &v341[16 * v339];
  v343 = v417;
  *(v342 + 4) = v337;
  *(v342 + 5) = v343;
  *(v437 + 6) = v341;
  v344 = v392;
  (*v460)(v392, v450, v110);
  (*v388)(v344, 0, 1, v110);
  v345 = v427;
  sub_26C460AA8(v344, v401);
  v427 = v345;
  if (!v345)
  {
    (v420)(v344, v480);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v453 = sub_26C42BCBC(0, v453[2] + 1, 1, v453);
    }

    v347 = v453[2];
    v346 = v453[3];
    if (v347 >= v346 >> 1)
    {
      v453 = sub_26C42BCBC(v346 > 1, v347 + 1, 1, v453);
    }

    v348 = v453;
    v453[2] = v347 + 1;
    sub_26C40C2E8(v401, v348 + ((*(v397 + 80) + 32) & ~*(v397 + 80)) + *(v397 + 72) * v347, type metadata accessor for ValueData);
    *(v437 + 7) = v348;
    v349 = v444;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v349 = sub_26C42BCE4(0, *(v349 + 2) + 1, 1, v349);
    }

    v351 = *(v349 + 2);
    v350 = *(v349 + 3);
    if (v351 >= v350 >> 1)
    {
      v349 = sub_26C42BCE4((v350 > 1), v351 + 1, 1, v349);
    }

    (*v478)();
    (*v86)(v267, v481);
    *(v349 + 2) = v351 + 1;
    *&v349[4 * v351 + 32] = v432;
    v444 = v349;
    *(v437 + 8) = v349;
    goto LABEL_157;
  }

  sub_26C40B328();
  (v420)(v344, v480);
  (*v478)(v450, v110);
LABEL_171:
  v86 = v267;
  v370 = &v463;
LABEL_172:
  v371 = *(v370 - 32);
  v372 = v481;
LABEL_174:
  (*v469)(v86, v372);

  sub_26C46B90C(v371, type metadata accessor for LamportTimestamp);
  sub_26C46B90C(v437, type metadata accessor for DictionaryChangedMessage);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v374 = sub_26C46BFA4();
  __swift_project_value_buffer(v374, qword_280498530);
  v375 = v427;
  v376 = v427;
  v377 = sub_26C46BF84();
  v378 = sub_26C46C3E4();

  if (os_log_type_enabled(v377, v378))
  {
    v379 = swift_slowAlloc();
    v380 = swift_slowAlloc();
    v488[0] = v380;
    *v379 = 136315138;
    *&v486 = v375;
    v381 = v375;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
    v382 = sub_26C46C1D4();
    v384 = sub_26C3E80A8(v382, v383, v488);

    *(v379 + 4) = v384;
    _os_log_impl(&dword_26C3D6000, v377, v378, "SyncedDictionary: failed to encode data in setter: %s", v379, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v380);
    MEMORY[0x26D6A18D0](v380, -1, -1);
    MEMORY[0x26D6A18D0](v379, -1, -1);
  }

  else
  {
  }
}

uint64_t SyncedDictionary.wrappedValue.getter()
{
  sub_26C46AD0C();
}

uint64_t SyncedDictionary.wrappedValue.setter(unint64_t a1)
{
  sub_26C46AD50(a1);
}

void (*SyncedDictionary.wrappedValue.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_280498288;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_26C4607EC;
}

void sub_26C4607EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_26C45C8FC(v5);

    v6 = *v3;
  }

  else
  {
    sub_26C45C8FC(*v3);
  }

  free(v2);
}

uint64_t sub_26C460868@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26C46C284();
  a1[1] = sub_26C46C284();
  result = sub_26C46C284();
  a1[2] = result;
  return result;
}

uint64_t sub_26C4608BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(v5 + 280);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v14 + 16))(&v18 - v13, a1, v11);
  sub_26C46B83C(a2, v10, type metadata accessor for LamportTimestamp);
  v15 = type metadata accessor for LamportTimestamp(0);
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  swift_beginAccess();
  v16 = *(v5 + 312);
  sub_26C46C174();
  sub_26C46C194();
  return swift_endAccess();
}

uint64_t sub_26C460AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = a1;
  v4 = *v2;
  v5 = *v2;
  v69 = v3;
  v70 = v5;
  v6 = *(v4 + 288);
  v7 = sub_26C46C474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v63 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v63 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v63 - v28;
  MEMORY[0x28223BE20](v27);
  v34 = &v63 - v33;
  if (*(v2 + qword_280498280))
  {
    v64 = v30;
    v65 = v32;
    v63 = v31;
    v35 = v72;
    v66 = *(v8 + 16);
    v66(v16, v72, v7);
    if ((*(*(v6 - 8) + 48))(v16, 1, v6) == 1)
    {
      (*(v8 + 8))(v16, v7);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
      if (swift_dynamicCast())
      {
        v45 = v75;
        ObjectType = swift_getObjectType();
        v47 = sub_26C3F8720(ObjectType, v45);
        v48 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v49 = sub_26C46BB54();
        v50 = *(v49 - 8);
        v51 = v63;
        (*(v50 + 16))(v63, v47 + v48, v49);

        v52 = *(v50 + 56);
        v52(v51, 0, 1, v49);
        v53 = v67;
        v66(v67, v72, v7);
        v54 = v64;
        v52(v64, 1, 1, v49);
        v55 = v70;
        v74 = *(v70 + 320);
        swift_getWitnessTable();
        v73 = *(v55 + 328);
        WitnessTable = swift_getWitnessTable();
        sub_26C40C88C(v51, v53, v54, v7, WitnessTable, v71);
        return swift_unknownObjectRelease();
      }
    }

    v58 = sub_26C46BB54();
    v59 = *(*(v58 - 8) + 56);
    v59(v24, 1, 1, v58);
    v60 = v68;
    v66(v68, v35, v7);
    v61 = v65;
    v59(v65, 1, 1, v58);
    v62 = v70;
    v77 = *(v70 + 320);
    swift_getWitnessTable();
    v76 = *(v62 + 328);
    v39 = swift_getWitnessTable();
    v40 = v71;
    v41 = v24;
    v42 = v60;
    v43 = v61;
    v44 = v7;
  }

  else
  {
    v36 = sub_26C46BB54();
    v37 = *(*(v36 - 8) + 56);
    v37(v34, 1, 1, v36);
    (*(v8 + 16))(v18, v72, v7);
    v37(v29, 1, 1, v36);
    v38 = v70;
    v79 = *(v70 + 320);
    swift_getWitnessTable();
    v78 = *(v38 + 328);
    v39 = swift_getWitnessTable();
    v40 = v71;
    v41 = v34;
    v42 = v18;
    v43 = v29;
    v44 = v7;
  }

  return sub_26C40C88C(v41, v42, v43, v44, v39, v40);
}

uint64_t sub_26C46114C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(v5 + 280);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v14 + 16))(&v18 - v13, a1, v11);
  sub_26C46B83C(a2, v10, type metadata accessor for LamportTimestamp);
  v15 = type metadata accessor for LamportTimestamp(0);
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  swift_beginAccess();
  v16 = *(v5 + 312);
  sub_26C46C174();
  sub_26C46C194();
  swift_endAccess();
  swift_beginAccess();
  sub_26C46C134();
  swift_endAccess();
  return sub_26C3DE270(v10, &qword_280497468, &unk_26C46D400);
}

uint64_t sub_26C461398(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v4 = *v2;
  v5 = *(v4 + 280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  swift_beginAccess();
  v14 = type metadata accessor for LamportTimestamp(255);
  v15 = *(v4 + 312);
  sub_26C46C174();
  sub_26C46C134();
  swift_endAccess();
  sub_26C3DE270(v13, &qword_280497468, &unk_26C46D400);
  (*(v6 + 16))(v9, a1, v5);
  sub_26C46B83C(v17, v13, type metadata accessor for LamportTimestamp);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  swift_beginAccess();
  sub_26C46C194();
  return swift_endAccess();
}

uint64_t sub_26C4615E4@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = *(*v1 + 280);
  v6 = sub_26C46C474();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v12 - v8;
  if (qword_280497160 != -1)
  {
    swift_once();
  }

  sub_26C46C2E4();
  v12[1] = *(v4 + 296);
  swift_getWitnessTable();
  result = sub_26C46BA34();
  if (!v2)
  {
    v12[0] = v12[3];
    swift_getWitnessTable();
    sub_26C46C3B4();

    v11 = *(v5 - 8);
    result = (*(v11 + 48))(v9, 1, v5);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v11 + 32))(a1, v9, v5);
    }
  }

  return result;
}

uint64_t sub_26C461808@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_26C461818(uint64_t *a1, uint64_t a2)
{
  v315 = a2;
  v357 = 0;
  v4 = *v2;
  v6 = *(*v2 + 304);
  v7 = *(*v2 + 312);
  v8 = *(*v2 + 320);
  v362 = *(*v2 + 280);
  v5 = v362;
  v355 = *(v4 + 288);
  v363 = v355;
  v364 = v6;
  v365 = v7;
  v356 = v7;
  v334 = v8;
  v366 = v8;
  v301 = *(v4 + 328);
  v367 = v301;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v313 = *(TupleTypeMetadata2 - 8);
  v10 = *(v313 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v312 = (&v283 - v12);
  v13 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v311 = &v283 - v14;
  v320 = type metadata accessor for PBUUID(0);
  v300 = *(v320 - 8);
  v15 = *(v300 + 64);
  v16 = MEMORY[0x28223BE20](v320);
  v294 = (&v283 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v293 = (&v283 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v292 = (&v283 - v21);
  MEMORY[0x28223BE20](v20);
  v291 = (&v283 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v296 = &v283 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v306 = &v283 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v290 = &v283 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v305 = &v283 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v295 = &v283 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v304 = &v283 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v289 = &v283 - v38;
  MEMORY[0x28223BE20](v37);
  v303 = &v283 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v309 = &v283 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v319 = (&v283 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v288 = &v283 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v287 = (&v283 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v308 = (&v283 - v51);
  MEMORY[0x28223BE20](v50);
  v318 = (&v283 - v52);
  v322 = type metadata accessor for ValueData(0);
  v333 = *(v322 - 8);
  v53 = *(v333 + 64);
  MEMORY[0x28223BE20](v322);
  v346 = &v283 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v355;
  v326 = sub_26C46C474();
  v56 = *(v326 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v326);
  v302 = &v283 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v338 = &v283 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v317 = (&v283 - v63);
  *&v355 = v55;
  v64 = *(v55 - 8);
  v65 = *(v64 + 64);
  v66 = MEMORY[0x28223BE20](v62);
  v286 = &v283 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v348 = &v283 - v69;
  MEMORY[0x28223BE20](v68);
  v307 = &v283 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v71 - 8);
  v321 = &v283 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v73);
  v332 = &v283 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v327 = &v283 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v81 = (&v283 - v80);
  MEMORY[0x28223BE20](v79);
  v336 = &v283 - v82;
  v351 = type metadata accessor for LamportTimestamp(0);
  v83 = *(v351 - 8);
  v84 = *(v83 + 64);
  v85 = MEMORY[0x28223BE20](v351 - 8);
  v316 = (&v283 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = MEMORY[0x28223BE20](v85);
  v331 = (&v283 - v88);
  v89 = MEMORY[0x28223BE20](v87);
  v329 = (&v283 - v90);
  v91 = MEMORY[0x28223BE20](v89);
  v328 = (&v283 - v92);
  v93 = MEMORY[0x28223BE20](v91);
  v344 = &v283 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v350 = (&v283 - v96);
  v97 = *(v5 - 8);
  v98 = *(v97 + 64);
  v99 = MEMORY[0x28223BE20](v95);
  v330 = &v283 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x28223BE20](v99);
  v347 = &v283 - v102;
  MEMORY[0x28223BE20](v101);
  v324 = &v283 - v103;
  *&v360 = sub_26C46C284();
  *(&v360 + 1) = sub_26C46C284();
  v361 = sub_26C46C284();
  v354 = a1;
  v104 = a1[3];
  v105 = *(v104 + 16);
  v340 = qword_280498260;
  v341 = qword_280498268;
  v337 = qword_280498280;
  v352 = qword_280498288;
  *&v358 = v2;
  swift_beginAccess();
  v349 = v83;
  v345 = v105;
  v299 = v56;
  v298 = v64;
  v297 = v97;
  if (!v105)
  {
LABEL_21:
    v368 = *v354;
    v141 = *(v368 + 16);

    v143 = v355;
    v144 = v329;
    v145 = v330;
    v339 = v141;
    if (!v141)
    {
LABEL_74:
      sub_26C3DE270(&v368, &qword_280498490, &qword_26C471088);
      goto LABEL_82;
    }

    v146 = 0;
    v147 = v349 + 48;
    v285 = (v298 + 48);
    v284 = (v298 + 32);
    v328 = (v298 + 16);
    v342 = (v298 + 8);
    ++v299;
    v323 = (v300 + 48);
    v325 = (v297 + 16);
    v324 = (v298 + 56);
    v335 = (v297 + 8);
    v336 = v301;
    v148 = (v142 + 40);
    v345 = v5;
    v327 = v349 + 48;
    while (1)
    {
      v162 = v147;
      v163 = *(v148 - 1);
      v161 = *v148;
      v353 = v148;
      sub_26C3DDDB0(v163, v161);
      v164 = v357;
      sub_26C4615E4(v145);
      v357 = v164;
      if (v164)
      {
        sub_26C3DE270(&v368, &qword_280498490, &qword_26C471088);
        v149 = v163;
        v150 = v161;
        goto LABEL_76;
      }

      v165 = v354[1];
      if (v146 >= *(v165 + 16))
      {
        goto LABEL_84;
      }

      sub_26C46B83C(v165 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + *(v333 + 72) * v146, v346, type metadata accessor for ValueData);
      v166 = v357;
      sub_26C40CC14(v143, v334, v348);
      v357 = v166;
      if (v166)
      {
        sub_26C3DDEA8(v163, v161);
        sub_26C46B90C(v346, type metadata accessor for ValueData);
        (*v335)(v145, v5);
        sub_26C3DE270(&v368, &qword_280498490, &qword_26C471088);
        goto LABEL_78;
      }

      v167 = v354[2];
      if (v146 >= *(v167 + 16))
      {
        goto LABEL_85;
      }

      v350 = v163;
      v168 = v349;
      sub_26C46B83C(v167 + ((*(v349 + 80) + 32) & ~*(v349 + 80)) + *(v349 + 72) * v146, v144, type metadata accessor for LamportTimestamp);
      v169 = v341;
      v170 = v358;
      swift_beginAccess();
      v171 = *(v170 + v169);
      v172 = v332;
      v173 = v144;
      v174 = v351;
      sub_26C46C184();
      v175 = *(v168 + 48);
      v147 = v162;
      if (v175(v172, 1, v174) != 1)
      {
        v199 = v331;
        sub_26C40C2E8(v172, v331, type metadata accessor for LamportTimestamp);
        swift_endAccess();
        v200 = sub_26C41111C(v199, v173);
        v144 = v173;
        v160 = v353;
        if (v200)
        {
          v344 = v161;
          v343 = v146;
          v155 = v328;
          if (*(v358 + v337) == 1)
          {
            v201 = v352;
            v202 = v358;
            swift_beginAccess();
            v203 = *(v202 + v201);
            v204 = v302;
            v205 = v355;
            sub_26C46C184();
            v206 = (*v285)(v204, 1, v205);
            v207 = v348;
            if (v206 == 1)
            {
              (*v299)(v204, v326);
              swift_endAccess();
            }

            else
            {
              v222 = v286;
              (*v284)(v286, v204, v205);
              swift_endAccess();
              v364 = v205;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v362);
              (*v155)(boxed_opaque_existential_0, v222, v205);
              sub_26C3E13DC(&v362);
              (*v342)(v222, v205);
              __swift_destroy_boxed_opaque_existential_1(&v362);
            }

            v224 = v320;
            v225 = v323;
            v364 = v205;
            v226 = __swift_allocate_boxed_opaque_existential_0(&v362);
            (*v155)(v226, v207, v205);
            v227 = *(v322 + 24);
            v228 = v346;
            v229 = v303;
            sub_26C3DDD48(v346 + v227, v303, &qword_280497458, &unk_26C46D3F0);
            v230 = *v225;
            v231 = 1;
            v232 = (*v225)(v229, 1, v224);
            sub_26C3DE270(v229, &qword_280497458, &unk_26C46D3F0);
            v233 = v224;
            if (v232 != 1)
            {
              v234 = v289;
              sub_26C3DDD48(v228 + v227, v289, &qword_280497458, &unk_26C46D3F0);
              if (v230(v234, 1, v224) == 1)
              {
                v235 = v291;
                *v291 = 0;
                v235[1] = 0;
                v236 = v235 + *(v224 + 24);
                sub_26C46BD14();
                v237 = v230;
                if (v230(v234, 1, v224) != 1)
                {
                  sub_26C3DE270(v234, &qword_280497458, &unk_26C46D3F0);
                }
              }

              else
              {
                v237 = v230;
                v235 = v291;
                sub_26C40C2E8(v234, v291, type metadata accessor for PBUUID);
              }

              sub_26C40F3CC();
              sub_26C46B90C(v235, type metadata accessor for PBUUID);
              v231 = 0;
              v228 = v346;
              v230 = v237;
            }

            v250 = sub_26C46BB54();
            v251 = *(v250 - 8);
            v152 = 1;
            v317 = *(v251 + 56);
            v310 = (v251 + 56);
            v317(v318, v231, 1, v250);
            v252 = v233;
            v253 = *(v322 + 28);
            v254 = v304;
            sub_26C3DDD48(v228 + v253, v304, &qword_280497458, &unk_26C46D3F0);
            LODWORD(v252) = v230(v254, 1, v252);
            sub_26C3DE270(v254, &qword_280497458, &unk_26C46D3F0);
            v194 = v252 == 1;
            v5 = v345;
            if (!v194)
            {
              v255 = v295;
              sub_26C3DDD48(v346 + v253, v295, &qword_280497458, &unk_26C46D3F0);
              v256 = v320;
              if (v230(v255, 1, v320) == 1)
              {
                v151 = v292;
                *v292 = 0;
                v151[1] = 0;
                v257 = v151 + *(v256 + 24);
                sub_26C46BD14();
                if (v230(v255, 1, v256) != 1)
                {
                  sub_26C3DE270(v295, &qword_280497458, &unk_26C46D3F0);
                }
              }

              else
              {
                v151 = v292;
                sub_26C40C2E8(v255, v292, type metadata accessor for PBUUID);
              }

              sub_26C40F3CC();
              sub_26C46B90C(v151, type metadata accessor for PBUUID);
              v152 = 0;
            }

            v153 = v308;
            v317(v308, v152, 1, v250);
            v154 = v318;
            sub_26C3E0D08(&v362, v318, v153);
            sub_26C3DE270(v153, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v154, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(&v362, &qword_280497450, &qword_26C471080);
            v145 = v330;
            v155 = v328;
          }

          v156 = *v325;
          v157 = v347;
          (*v325)(v347, v145, v5);
          v158 = v338;
          v159 = v355;
          (*v155)(v338, v348, v355);
          (*v324)(v158, 0, 1, v159);
          swift_beginAccess();
          sub_26C46C174();
          v145 = v330;
          sub_26C46C194();
          swift_endAccess();
          v156(v157, v145, v5);
          sub_26C46C2E4();
          sub_26C46C2C4();
          v144 = v329;
          sub_26C4608BC(v145, v329);
          v147 = v327;
          v146 = v343;
          v160 = v353;
          v161 = v344;
        }

        sub_26C3DDEA8(v350, v161);
        sub_26C46B90C(v331, type metadata accessor for LamportTimestamp);
        sub_26C46B90C(v144, type metadata accessor for LamportTimestamp);
        v143 = v355;
        (*v342)(v348, v355);
        sub_26C46B90C(v346, type metadata accessor for ValueData);
        (*v335)(v145, v5);
        goto LABEL_29;
      }

      v344 = v161;
      sub_26C3DE270(v172, &qword_280497468, &unk_26C46D400);
      swift_endAccess();
      v176 = v358;
      v177 = v5;
      v178 = v340;
      swift_beginAccess();
      v179 = *(v176 + v178);
      v5 = v177;
      v180 = v321;
      sub_26C46C184();
      if (v175(v180, 1, v174) == 1)
      {
        break;
      }

      v208 = v316;
      sub_26C40C2E8(v180, v316, type metadata accessor for LamportTimestamp);
      swift_endAccess();
      v209 = v329;
      if (sub_26C41111C(v208, v329))
      {
        v343 = v146;
        v210 = *v325;
        v211 = v347;
        v212 = v330;
        (*v325)(v347, v330, v345);
        v213 = v338;
        v214 = v355;
        v317 = *v328;
        (v317)(v338, v348, v355);
        (*v324)(v213, 0, 1, v214);
        v215 = v358;
        swift_beginAccess();
        sub_26C46C174();
        v145 = v212;
        sub_26C46C194();
        swift_endAccess();
        v210(v211, v212, v345);
        v5 = v345;
        sub_26C46C2E4();
        sub_26C46C2C4();
        sub_26C461398(v212, v209);
        if (*(v215 + v337) == 1)
        {
          v216 = v355;
          v364 = v355;
          v217 = __swift_allocate_boxed_opaque_existential_0(&v362);
          v218 = v348;
          (v317)(v217, v348, v216);
          v219 = v287;
          sub_26C40CE7C(v287);
          v220 = v288;
          sub_26C40D13C(v288);
          sub_26C3E0D08(&v362, v219, v220);
          sub_26C3DDEA8(v350, v344);
          sub_26C3DE270(v220, &qword_280497430, &unk_26C46D3D0);
          v221 = v219;
          v145 = v330;
          sub_26C3DE270(v221, &qword_280497430, &unk_26C46D3D0);
          sub_26C46B90C(v208, type metadata accessor for LamportTimestamp);
          sub_26C46B90C(v209, type metadata accessor for LamportTimestamp);
          (*v342)(v218, v216);
          sub_26C46B90C(v346, type metadata accessor for ValueData);
          (*v335)(v145, v5);
          sub_26C3DE270(&v362, &qword_280497450, &qword_26C471080);
          v143 = v216;
        }

        else
        {
          sub_26C3DDEA8(v350, v344);
          sub_26C46B90C(v208, type metadata accessor for LamportTimestamp);
          sub_26C46B90C(v209, type metadata accessor for LamportTimestamp);
          v143 = v355;
          (*v342)(v348, v355);
          sub_26C46B90C(v346, type metadata accessor for ValueData);
          (*v335)(v145, v5);
        }

        v144 = v209;
LABEL_57:
        v147 = v327;
        v146 = v343;
        goto LABEL_73;
      }

      sub_26C3DDEA8(v350, v344);
      sub_26C46B90C(v208, type metadata accessor for LamportTimestamp);
      sub_26C46B90C(v209, type metadata accessor for LamportTimestamp);
      v143 = v355;
      (*v342)(v348, v355);
      sub_26C46B90C(v346, type metadata accessor for ValueData);
      v145 = v330;
      (*v335)(v330, v177);
      v144 = v209;
LABEL_73:
      v160 = v353;
LABEL_29:
      v146 = (v146 + 1);
      v148 = (v160 + 16);
      if (v339 == v146)
      {
        goto LABEL_74;
      }
    }

    v343 = v146;
    sub_26C3DE270(v180, &qword_280497468, &unk_26C46D400);
    swift_endAccess();
    v181 = *v325;
    v182 = v347;
    (*v325)(v347, v145, v345);
    v183 = v145;
    v184 = v348;
    v185 = v338;
    v143 = v355;
    v317 = *v328;
    (v317)(v338, v348, v355);
    (*v324)(v185, 0, 1, v143);
    v186 = v358;
    swift_beginAccess();
    sub_26C46C174();
    sub_26C46C194();
    swift_endAccess();
    v181(v182, v183, v345);
    v5 = v345;
    sub_26C46C2E4();
    sub_26C46C2C4();
    v144 = v329;
    sub_26C461398(v183, v329);
    if (*(v186 + v337) == 1)
    {
      v364 = v143;
      v187 = __swift_allocate_boxed_opaque_existential_0(&v362);
      (v317)(v187, v184, v143);
      v188 = *(v322 + 24);
      v189 = v346;
      v190 = v305;
      sub_26C3DDD48(v346 + v188, v305, &qword_280497458, &unk_26C46D3F0);
      v191 = *v323;
      v192 = v320;
      v193 = (*v323)(v190, 1, v320);
      sub_26C3DE270(v190, &qword_280497458, &unk_26C46D3F0);
      v194 = v193 == 1;
      v195 = 1;
      v147 = v327;
      if (!v194)
      {
        v196 = v290;
        sub_26C3DDD48(v189 + v188, v290, &qword_280497458, &unk_26C46D3F0);
        if ((v191)(v196, 1, v192) == 1)
        {
          v197 = v293;
          *v293 = 0;
          v197[1] = 0;
          v198 = v197 + *(v192 + 24);
          sub_26C46BD14();
          if ((v191)(v196, 1, v192) != 1)
          {
            sub_26C3DE270(v196, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v197 = v293;
          sub_26C40C2E8(v196, v293, type metadata accessor for PBUUID);
        }

        sub_26C40F3CC();
        sub_26C46B90C(v197, type metadata accessor for PBUUID);
        v195 = 0;
        v189 = v346;
        v192 = v320;
      }

      v238 = sub_26C46BB54();
      v239 = *(v238 - 8);
      v240 = *(v239 + 56);
      v241 = 1;
      v317 = v238;
      v310 = v240;
      v307 = (v239 + 56);
      (v240)(v319, v195, 1);
      v242 = *(v322 + 28);
      v243 = v306;
      sub_26C3DDD48(v189 + v242, v306, &qword_280497458, &unk_26C46D3F0);
      v244 = (v191)(v243, 1, v192);
      sub_26C3DE270(v243, &qword_280497458, &unk_26C46D3F0);
      v194 = v244 == 1;
      v5 = v345;
      v146 = v343;
      if (!v194)
      {
        v245 = v189 + v242;
        v246 = v296;
        sub_26C3DDD48(v245, v296, &qword_280497458, &unk_26C46D3F0);
        v247 = v320;
        if ((v191)(v246, 1, v320) == 1)
        {
          v248 = v294;
          *v294 = 0;
          v248[1] = 0;
          v249 = v248 + *(v247 + 24);
          sub_26C46BD14();
          if ((v191)(v246, 1, v247) != 1)
          {
            sub_26C3DE270(v296, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v248 = v294;
          sub_26C40C2E8(v246, v294, type metadata accessor for PBUUID);
        }

        sub_26C40F3CC();
        sub_26C46B90C(v248, type metadata accessor for PBUUID);
        v241 = 0;
        v189 = v346;
      }

      v258 = v309;
      (v310)(v309, v241, 1, v317);
      v259 = v319;
      sub_26C3E0D08(&v362, v319, v258);
      sub_26C3DDEA8(v350, v344);
      sub_26C3DE270(v258, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v259, &qword_280497430, &unk_26C46D3D0);
      sub_26C46B90C(v144, type metadata accessor for LamportTimestamp);
      v143 = v355;
      (*v342)(v348, v355);
      sub_26C46B90C(v189, type metadata accessor for ValueData);
      v145 = v330;
      (*v335)(v330, v5);
      sub_26C3DE270(&v362, &qword_280497450, &qword_26C471080);
      goto LABEL_73;
    }

    sub_26C3DDEA8(v350, v344);
    sub_26C46B90C(v144, type metadata accessor for LamportTimestamp);
    (*v342)(v184, v143);
    sub_26C46B90C(v346, type metadata accessor for ValueData);
    (*v335)(v183, v5);
    v145 = v183;
    goto LABEL_57;
  }

  v335 = v81;
  v106 = 0;
  v343 = (v83 + 48);
  v342 = (v97 + 8);
  v339 = (v97 + 16);
  v325 = (v83 + 56);
  v310 = (v64 + 48);
  v285 = (v64 + 32);
  v284 = (v64 + 16);
  v283 = (v64 + 8);
  v323 = (v56 + 8);
  v107 = (v104 + 40);
  v108 = v350;
  v109 = v324;
  while (1)
  {
    v114 = *(v107 - 1);
    v113 = *v107;
    sub_26C3DDDB0(v114, *v107);
    v353 = v113;
    v115 = v357;
    sub_26C4615E4(v109);
    v357 = v115;
    if (v115)
    {
      break;
    }

    v116 = v354[4];
    if (v106 >= *(v116 + 16))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
      goto LABEL_79;
    }

    sub_26C46B83C(v116 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v106, v108, type metadata accessor for LamportTimestamp);
    v117 = v358;
    v362 = *(v358 + v352);
    v118 = v356;
    sub_26C46C144();
    v119 = v5;
    swift_getWitnessTable();
    v120 = *(v118 + 8);
    if (sub_26C46C224())
    {
      v121 = v341;
      swift_beginAccess();
      v122 = *(v117 + v121);
      v123 = v336;
      v124 = v351;
      sub_26C46C184();
      swift_endAccess();
      result = (*v343)(v123, 1, v124);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v126 = v344;
      sub_26C40C2E8(v123, v344, type metadata accessor for LamportTimestamp);
      v108 = v350;
      v127 = sub_26C41111C(v126, v350);
      v83 = v349;
      if (v127)
      {
        if (*(v358 + v337) == 1)
        {
          v128 = v352;
          v129 = v358;
          swift_beginAccess();
          v130 = *(v129 + v128);
          v131 = v317;
          v132 = v355;
          sub_26C46C184();
          if ((*v310)(v131, 1, v132) == 1)
          {
            (*v323)(v131, v326);
            swift_endAccess();
          }

          else
          {
            v110 = v307;
            (*v285)(v307, v131, v132);
            swift_endAccess();
            v364 = v132;
            v111 = __swift_allocate_boxed_opaque_existential_0(&v362);
            (*v284)(v111, v110, v132);
            sub_26C3E13DC(&v362);
            (*v283)(v110, v132);
            __swift_destroy_boxed_opaque_existential_1(&v362);
          }
        }

        swift_beginAccess();
        sub_26C46C174();
        v112 = v338;
        sub_26C46C134();
        swift_endAccess();
        (*v323)(v112, v326);
        (*v339)(v347, v109, v5);
        sub_26C46C2E4();
        sub_26C46C2C4();
        v108 = v350;
        sub_26C46114C(v109, v350);
      }

      sub_26C3DDEA8(v114, v353);
      sub_26C46B90C(v344, type metadata accessor for LamportTimestamp);
    }

    else
    {
      v133 = v340;
      swift_beginAccess();
      v134 = *(v117 + v133);
      v135 = v335;
      v136 = v351;
      sub_26C46C184();
      if ((*v343)(v135, 1, v136) == 1)
      {
        sub_26C3DE270(v135, &qword_280497468, &unk_26C46D400);
        swift_endAccess();
        (*v339)(v347, v109, v119);
        v137 = v350;
        v138 = v327;
        sub_26C46B83C(v350, v327, type metadata accessor for LamportTimestamp);
        (*v325)(v138, 0, 1, v136);
        swift_beginAccess();
        v108 = v137;
        v109 = v324;
        sub_26C46C174();
        sub_26C46C194();
        swift_endAccess();
        sub_26C3DDEA8(v114, v353);
LABEL_20:
        v83 = v349;
        v5 = v119;
        goto LABEL_6;
      }

      v139 = v328;
      sub_26C40C2E8(v135, v328, type metadata accessor for LamportTimestamp);
      swift_endAccess();
      v108 = v350;
      if ((sub_26C41111C(v139, v350) & 1) == 0)
      {
        sub_26C3DDEA8(v114, v353);
        sub_26C46B90C(v139, type metadata accessor for LamportTimestamp);
        goto LABEL_20;
      }

      (*v339)(v347, v109, v119);
      v140 = v327;
      sub_26C46B83C(v350, v327, type metadata accessor for LamportTimestamp);
      (*v325)(v140, 0, 1, v351);
      swift_beginAccess();
      sub_26C46C174();
      v5 = v119;
      v108 = v350;
      sub_26C46C194();
      swift_endAccess();
      sub_26C3DDEA8(v114, v353);
      sub_26C46B90C(v328, type metadata accessor for LamportTimestamp);
      v83 = v349;
    }

LABEL_6:
    ++v106;
    v107 += 2;
    sub_26C46B90C(v108, type metadata accessor for LamportTimestamp);
    (*v342)(v109, v5);
    if (v345 == v106)
    {
      goto LABEL_21;
    }
  }

  v149 = v114;
  v150 = v353;
LABEL_76:
  sub_26C3DDEA8(v149, v150);
LABEL_78:
  if (qword_280497148 != -1)
  {
    goto LABEL_86;
  }

LABEL_79:
  v260 = sub_26C46BFA4();
  __swift_project_value_buffer(v260, qword_280498530);
  v261 = v357;
  v262 = v357;
  v263 = sub_26C46BF84();
  v264 = sub_26C46C3E4();

  if (os_log_type_enabled(v263, v264))
  {
    v265 = swift_slowAlloc();
    v266 = swift_slowAlloc();
    v362 = v266;
    *v265 = 136315138;
    v267 = v357;
    v359 = v357;
    v268 = v357;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
    v269 = sub_26C46C1D4();
    v271 = sub_26C3E80A8(v269, v270, &v362);

    *(v265 + 4) = v271;
    _os_log_impl(&dword_26C3D6000, v263, v264, "SyncedDictionary: failed to decode data when handling message: %s", v265, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v266);
    MEMORY[0x26D6A18D0](v266, -1, -1);
    MEMORY[0x26D6A18D0](v265, -1, -1);
  }

  else
  {
  }

LABEL_82:
  v272 = v315;
  v273 = TupleTypeMetadata2;
  v274 = v313;
  v275 = *(v358 + qword_2804988B0);
  v276 = v361;
  v277 = sub_26C46BCD4();
  v278 = *(v277 - 8);
  v279 = *(v278 + 16);
  v358 = v360;
  v280 = v311;
  v279(v311, v272, v277);
  (*(v278 + 56))(v280, 0, 1, v277);
  v281 = *(v273 + 48);
  v282 = v312;
  *v312 = v358;
  *(v282 + 2) = v276;
  sub_26C3E9F28(v280, v282 + v281, &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  return (*(v274 + 8))(v282, v273);
}

uint64_t sub_26C46460C(void *a1, uint64_t a2)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for PBUUID(0);
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55 - v14;
  v16 = sub_26C46BB54();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v23 = &v55 - v22;
  v58 = v2;
  v24 = *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  if (!v24)
  {
    (*(v21 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v25 = v21;
  v26 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  v27 = v24 + v26;
  v28 = v25;
  sub_26C3DDD48(v27, v15, &qword_280497430, &unk_26C46D3D0);
  if ((*(v25 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_26C3DE270(v15, &qword_280497430, &unk_26C46D3D0);
LABEL_8:
    v33 = a1[3];
    v59[0] = a1[6];

    sub_26C46A8F8(v34);
    v35 = v59[0];
    v36 = a1[4];
    v59[0] = a1[7];

    sub_26C46AA18(v37, sub_26C42BCBC, type metadata accessor for ValueData);
    v38 = v59[0];
    v39 = a1[5];
    v59[0] = a1[8];

    v41 = sub_26C46A80C(v40);
    v42 = v59[0];
    MEMORY[0x28223BE20](v41);
    *(&v55 - 2) = a1;
    v43 = sub_26C45826C(sub_26C46B9E8, (&v55 - 4), v42);

    v46 = a1[1];
    v45 = a1[2];
    MEMORY[0x28223BE20](v44);
    *(&v55 - 2) = a1;

    v47 = sub_26C45826C(sub_26C46B8A4, (&v55 - 4), v45);
    v59[0] = v35;
    v59[1] = v38;
    v59[2] = v43;
    v59[3] = v46;
    v59[4] = v47;
    sub_26C461818(v59, v57);
    v64 = v35;
    sub_26C3DE270(&v64, &qword_280498490, &qword_26C471088);
    v63 = v38;
    sub_26C3DE270(&v63, &qword_280498498, &qword_26C471090);
    v62 = v43;
    sub_26C3DE270(&v62, qword_2804984A0, qword_26C471098);
    v61 = v46;
    sub_26C3DE270(&v61, &qword_280498490, &qword_26C471088);
    v60 = v47;
    return sub_26C3DE270(&v60, qword_2804984A0, qword_26C471098);
  }

  (*(v25 + 32))(v23, v15, v16);
  v29 = type metadata accessor for DictionaryChangedMessage(0);
  sub_26C3DDD48(a1 + *(v29 + 56), v7, &qword_280497458, &unk_26C46D3F0);
  v30 = v56;
  v31 = *(v55 + 48);
  if (v31(v7, 1, v56) == 1)
  {
    *v11 = 0;
    v11[1] = 0;
    v32 = v11 + *(v30 + 24);
    sub_26C46BD14();
    if (v31(v7, 1, v30) != 1)
    {
      sub_26C3DE270(v7, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C40C2E8(v7, v11, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C46B90C(v11, type metadata accessor for PBUUID);
  sub_26C46B8C4(&qword_2804975A8, MEMORY[0x277CC95F0]);
  v49 = sub_26C46C1C4();
  v50 = *(v28 + 8);
  v50(v20, v16);
  if (v49)
  {
    v50(v23, v16);
    goto LABEL_8;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v51 = sub_26C46BFA4();
  __swift_project_value_buffer(v51, qword_280498530);
  v52 = sub_26C46BF84();
  v53 = sub_26C46C3D4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_26C3D6000, v52, v53, "SyncedDictionary: Cannot apply dictionary change message. Not the current owner or unowned", v54, 2u);
    MEMORY[0x26D6A18D0](v54, -1, -1);
  }

  return (v50)(v23, v16);
}

uint64_t sub_26C464D18@<X0>(int *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v47 = a3;
  v49 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for PBUUID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v11 = MEMORY[0x28223BE20](v8);
  v46 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - v13);
  v15 = sub_26C46BB54();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v45 = *v49;
  v25 = type metadata accessor for DictionaryChangedMessage(0);
  sub_26C3DDD48(a2 + *(v25 + 56), v7, &qword_280497458, &unk_26C46D3F0);
  v49 = v9;
  v26 = *(v9 + 6);
  v27 = v26(v7, 1, v8);
  v48 = v8;
  if (v27 == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v28 = v14 + *(v8 + 24);
    sub_26C46BD14();
    if (v26(v7, 1, v8) != 1)
    {
      sub_26C3DE270(v7, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C40C2E8(v7, v14, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C46B90C(v14, type metadata accessor for PBUUID);
  v29 = v47;
  *v47 = 0;
  v30 = type metadata accessor for LamportTimestamp(0);
  v31 = &v29[*(v30 + 20)];
  sub_26C46BD14();
  v32 = *(v30 + 24);
  v33 = *(v49 + 7);
  v49 += 14;
  v42 = v33;
  v33(&v29[v32], 1, 1, v48);
  v34 = v43;
  v35 = *(v43 + 16);
  v36 = v22;
  v37 = v22;
  v38 = v44;
  v35(v37, v24, v44);
  v35(v19, v36, v38);
  v39 = v46;
  sub_26C40F280(v19, v46);
  v40 = *(v34 + 8);
  v40(v36, v38);
  v40(v24, v38);
  sub_26C3DE270(&v29[v32], &qword_280497458, &unk_26C46D3F0);
  sub_26C40C2E8(v39, &v29[v32], type metadata accessor for PBUUID);
  result = v42(&v29[v32], 0, 1, v48);
  *v29 = v45;
  return result;
}

uint64_t sub_26C465134(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v84 = a3;
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v78 - v10;
  v11 = type metadata accessor for LamportTimestamp(0);
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v11);
  v91 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  v90 = *(v14 - 8);
  v15 = *(v90 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = (&v78 - v18);
  v19 = sub_26C46BD44();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = type metadata accessor for DictionaryCatchupData(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v3 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  v88 = v11;
  if (v25)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v27 = *(Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options);

      if ((v27 & 1) == 0)
      {
        v82 = v24;
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v80 = a1;
        v81 = a2;
        v85 = v14;
        v28 = sub_26C46BFA4();
        __swift_project_value_buffer(v28, qword_280498530);
        v29 = sub_26C46BF84();
        v30 = sub_26C46C404();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_26C3D6000, v29, v30, "SyncedDictionary: clearing existing data due to catchup response and replaceFromLeader option", v31, 2u);
          MEMORY[0x26D6A18D0](v31, -1, -1);
        }

        v32 = v7[35];
        v33 = v7[36];
        swift_getTupleTypeMetadata2();
        v34 = sub_26C46C284();
        v35 = v7[39];
        v36 = sub_26C40AFD4(v34, v32, v33, v35);

        v37 = qword_280498288;
        swift_beginAccess();
        v38 = *(v4 + v37);
        *(v4 + v37) = v36;

        swift_getTupleTypeMetadata2();
        v39 = sub_26C46C284();
        v40 = sub_26C40AFD4(v39, v32, v11, v35);

        v41 = qword_280498260;
        swift_beginAccess();
        v42 = *(v4 + v41);
        *(v4 + v41) = v40;

        v43 = sub_26C46C284();
        v44 = sub_26C40AFD4(v43, v32, v88, v35);

        v45 = qword_280498268;
        swift_beginAccess();
        v46 = *(v4 + v45);
        *(v4 + v45) = v44;

        v24 = v82;
        v14 = v85;
        a2 = v81;
        a1 = v80;
      }
    }
  }

  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_26C3DDDB0(a1, a2);
  sub_26C46BD34();
  sub_26C46B8C4(&qword_280497E90, type metadata accessor for DictionaryCatchupData);
  sub_26C46BE54();
  v48 = *v24;
  v47 = v24[1];
  v50 = v24[2];
  v49 = v24[3];
  v51 = *(v49 + 16);
  if (v51)
  {
    v85 = v14;
    v82 = v24;
    v81 = v4;
    *&v92 = MEMORY[0x277D84F90];
    v78 = v48;

    v79 = v47;

    v80 = v50;

    sub_26C42FC40(0, v51, 0);
    v52 = v92;
    v53 = v49 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v90 = *(v90 + 72);
    v54 = v53;
    v55 = v51;
    v56 = v83;
    do
    {
      sub_26C46B83C(v54, v56, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
      v58 = *v56;
      v57 = v56[1];
      sub_26C3DDDB0(*v56, v57);
      sub_26C46B90C(v56, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
      *&v92 = v52;
      v60 = *(v52 + 16);
      v59 = *(v52 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_26C42FC40((v59 > 1), v60 + 1, 1);
        v56 = v83;
        v52 = v92;
      }

      *(v52 + 16) = v60 + 1;
      v61 = v52 + 16 * v60;
      *(v61 + 32) = v58;
      *(v61 + 40) = v57;
      v54 += v90;
      --v55;
    }

    while (v55);
    *&v92 = MEMORY[0x277D84F90];
    sub_26C42FBFC(0, v51, 0);
    v62 = v92;
    v63 = (v89 + 48);
    v64 = v85;
    do
    {
      v65 = v86;
      sub_26C46B83C(v53, v86, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
      v66 = v87;
      sub_26C3DDD48(v65 + *(v64 + 24), v87, &qword_280497468, &unk_26C46D400);
      v67 = *v63;
      v68 = v88;
      if ((*v63)(v66, 1, v88) == 1)
      {
        v69 = v91;
        *v91 = 0;
        v70 = v69 + *(v68 + 20);
        sub_26C46BD14();
        sub_26C46B90C(v65, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
        v71 = *(v68 + 24);
        v72 = type metadata accessor for PBUUID(0);
        v73 = v69 + v71;
        v64 = v85;
        (*(*(v72 - 8) + 56))(v73, 1, 1, v72);
        if (v67(v66, 1, v68) != 1)
        {
          sub_26C3DE270(v66, &qword_280497468, &unk_26C46D400);
        }
      }

      else
      {
        sub_26C46B90C(v65, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
        sub_26C40C2E8(v66, v91, type metadata accessor for LamportTimestamp);
      }

      *&v92 = v62;
      v75 = *(v62 + 16);
      v74 = *(v62 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_26C42FBFC(v74 > 1, v75 + 1, 1);
        v62 = v92;
      }

      *(v62 + 16) = v75 + 1;
      sub_26C40C2E8(v91, v62 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v75, type metadata accessor for LamportTimestamp);
      v53 += v90;
      --v51;
    }

    while (v51);
    v24 = v82;
    v50 = v80;
    v47 = v79;
    v48 = v78;
  }

  else
  {
    v76 = *v24;

    v62 = MEMORY[0x277D84F90];
    v52 = MEMORY[0x277D84F90];
  }

  *&v92 = v48;
  *(&v92 + 1) = v47;
  *&v93 = v50;
  *(&v93 + 1) = v52;
  v94 = v62;
  sub_26C461818(&v92, v84);
  v99 = v48;
  sub_26C3DE270(&v99, &qword_280498490, &qword_26C471088);
  v98 = v47;
  sub_26C3DE270(&v98, &qword_280498498, &qword_26C471090);
  v97 = v50;
  sub_26C3DE270(&v97, qword_2804984A0, qword_26C471098);
  v96 = v52;
  sub_26C3DE270(&v96, &qword_280498490, &qword_26C471088);
  v95 = v62;
  sub_26C3DE270(&v95, qword_2804984A0, qword_26C471098);
  return sub_26C46B90C(v24, type metadata accessor for DictionaryCatchupData);
}

uint64_t sub_26C465CCC()
{
  v201 = *v0;
  v1 = v201;
  v165 = type metadata accessor for DictionaryCatchupData(0);
  v2 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v167 = (&v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v213 = &v164 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v182 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v181 = &v164 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v174 = &v164 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v173 = &v164 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v172 = &v164 - v18;
  MEMORY[0x28223BE20](v17);
  v171 = &v164 - v19;
  v20 = type metadata accessor for ValueData(0);
  v191 = *(v20 - 8);
  v21 = *(v191 + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v192 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v178 = &v164 - v25;
  MEMORY[0x28223BE20](v24);
  v177 = &v164 - v26;
  v27 = v1[35];
  v28 = v1[36];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v212 = &v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v180 = &v164 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v170 = &v164 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v169 = &v164 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v179 = &v164 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v220 = &v164 - v43;
  v186 = *(v28 - 8);
  v44 = *(v186 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v188 = &v164 - v46;
  v185 = *(v27 - 8);
  v47 = *(v185 + 64);
  MEMORY[0x28223BE20](v45);
  v187 = &v164 - v48;
  v49 = sub_26C46C474();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v164 - v51;
  v53 = qword_280498288;
  swift_beginAccess();
  v54 = *(v0 + v53);
  v55 = v1[39];

  v206 = v27;
  v225 = v28;
  v196 = v55;
  v56 = sub_26C46C154();

  v57 = v56 & ~(v56 >> 63);
  v58 = MEMORY[0x277D84F90];
  v215 = sub_26C42BCBC(0, v57, 0, MEMORY[0x277D84F90]);
  v217 = sub_26C42BC94(0, v215[2], 0, v58);
  v166 = v53;
  v216 = v0;
  v59 = *(v0 + v53);
  if ((v59 & 0xC000000000000001) != 0)
  {
    v60 = sub_26C46C5C4();
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = v60 | 0x8000000000000000;
  }

  else
  {
    v65 = -1 << *(v59 + 32);
    v62 = ~v65;
    v61 = v59 + 64;
    v66 = -v65;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v63 = v67 & *(v59 + 64);
    v64 = v59;
  }

  v195 = qword_280498280;
  v210 = (v185 + 32);
  v209 = (v186 + 32);
  v190 = qword_280498268;
  v200 = (v30 + 56);
  v168 = v62;
  v202 = (v62 + 64) >> 6;
  v184 = v185 + 16;
  v183 = v186 + 16;
  v198 = (v30 + 48);
  v194 = (v30 + 16);
  v214 = (v185 + 8);
  v193 = (v30 + 8);
  v189 = (v186 + 8);

  v69 = 0;
  v70 = v206;
  v222 = TupleTypeMetadata2;
  v204 = v52;
  v199 = v61;
  v197 = v64;
  v71 = v63;
  while (1)
  {
    v203 = v71;
    v205 = v69;
    if ((v64 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_26C46C5D4())
    {
      (*v200)(v52, 1, 1, TupleTypeMetadata2);
LABEL_45:
      sub_26C40B328();
      v153 = v216;
      v223 = *(v216 + v166);
      v154 = v196;
      sub_26C46C144();

      swift_getWitnessTable();
      v98 = sub_26C46C2F4();
      v155 = qword_280498260;
      swift_beginAccess();
      v156 = *(v153 + v155);
      v157 = v201[37];
      v158 = v201[38];

      v159 = v167;
      v160 = v156;
      v161 = v219;
      sub_26C40E43C(v98, v215, v217, v160, v70, v157, v158, v154, v167);
      v219 = v161;
      if (!v161)
      {
        sub_26C46B8C4(&qword_280497E90, type metadata accessor for DictionaryCatchupData);
        v162 = v219;
        v98 = sub_26C46BE64();
        sub_26C46B90C(v159, type metadata accessor for DictionaryCatchupData);
        v219 = v162;
      }

      return v98;
    }

    v74 = v187;
    sub_26C46C754();
    swift_unknownObjectRelease();
    v75 = v188;
    v76 = v225;
    sub_26C46C754();
    swift_unknownObjectRelease();
    v77 = *(TupleTypeMetadata2 + 48);
    v78 = v74;
    v79 = v70;
    (*v210)(v52, v78, v70);
    (*v209)(&v52[v77], v75, v76);
    (*v200)(v52, 0, 1, TupleTypeMetadata2);
    v80 = v69;
    v211 = v203;
LABEL_21:
    if ((*v198)(v52, 1, TupleTypeMetadata2) == 1)
    {
      v70 = v79;
      goto LABEL_45;
    }

    v207 = v80;
    v91 = *(TupleTypeMetadata2 + 48);
    v92 = v79;
    v93 = v220;
    (*v210)();
    (*v209)(&v93[v91], &v52[v91], v225);
    v94 = *(v216 + v195);
    v95 = v194;
    v208 = v194 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    if (v94 != 1)
    {
      v98 = v92;
      v121 = sub_26C46BB54();
      v122 = *(*(v121 - 8) + 56);
      v123 = v181;
      v122(v181, 1, 1, v121);
      v124 = v180;
      v218 = *v95;
      v218(v180, v93, TupleTypeMetadata2);
      v125 = *(TupleTypeMetadata2 + 48);
      v126 = v182;
      v122(v182, 1, 1, v121);
      v127 = v201[40];
      v128 = v219;
      sub_26C40C88C(v123, &v124[v125], v126, v225, v201[41], v192);
      v219 = v128;
      if (v128)
      {
        (*v193)(v220, v222);
        sub_26C40B328();

        (*v214)(v124, v98);
        return v98;
      }

      v129 = *v214;
      (*v214)(v124, v98);
      v115 = v215;
      v117 = v215[2];
      v130 = v215[3];
      v118 = v117 + 1;
      v221 = v129;
      if (v117 >= v130 >> 1)
      {
        v115 = sub_26C42BCBC(v130 > 1, v117 + 1, 1, v215);
      }

      v120 = v192;
      v119 = v191;
      v52 = v204;
      goto LABEL_36;
    }

    v96 = v179;
    v218 = *v194;
    v218(v179, v93, TupleTypeMetadata2);
    v97 = *(TupleTypeMetadata2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    v98 = TupleTypeMetadata2;
    if (!swift_dynamicCast())
    {
      v221 = *v214;
      v221(v96, v92);
      v131 = sub_26C46BB54();
      v132 = *(*(v131 - 8) + 56);
      v133 = v173;
      v132(v173, 1, 1, v131);
      v134 = v170;
      v218(v170, v93, TupleTypeMetadata2);
      v135 = *(TupleTypeMetadata2 + 48);
      v98 = v134;
      v136 = v174;
      v132(v174, 1, 1, v131);
      v137 = v201[40];
      v138 = v219;
      sub_26C40C88C(v133, v98 + v135, v136, v225, v201[41], v178);
      v219 = v138;
      if (v138)
      {
        (*v193)(v220, v222);
        sub_26C40B328();

        v163 = v98;
        goto LABEL_49;
      }

      v221(v98, v206);
      v115 = v215;
      v117 = v215[2];
      v139 = v215[3];
      v118 = v117 + 1;
      if (v117 >= v139 >> 1)
      {
        v115 = sub_26C42BCBC(v139 > 1, v117 + 1, 1, v215);
      }

      v120 = v178;
      v52 = v204;
      v119 = v191;
LABEL_36:
      v114 = v218;
      goto LABEL_37;
    }

    v99 = v224;
    v176 = v224;
    v221 = *v214;
    v221(v96, v92);
    ObjectType = swift_getObjectType();
    v100 = sub_26C3F8720(ObjectType, v99);
    v101 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v102 = sub_26C46BB54();
    v103 = *(v102 - 8);
    v104 = v171;
    (*(v103 + 16))(v171, v100 + v101, v102);

    (*(v103 + 56))(v104, 0, 1, v102);
    v105 = v169;
    v106 = v218;
    v218(v169, v220, v98);
    v107 = *(v98 + 48);
    v108 = sub_26C3F8720(ObjectType, v176);
    v109 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    swift_beginAccess();
    v110 = v108 + v109;
    v111 = v172;
    sub_26C3DDD48(v110, v172, &qword_280497430, &unk_26C46D3D0);

    v112 = v201[40];
    v113 = v219;
    sub_26C40C88C(v104, &v105[v107], v111, v225, v201[41], v177);
    v219 = v113;
    if (v113)
    {
      sub_26C40B328();
      swift_unknownObjectRelease();
      (*v193)(v220, v222);

      v163 = v105;
LABEL_49:
      v221(v163, v206);
      return v98;
    }

    v114 = v106;
    v221(v105, v206);
    v115 = v215;
    v117 = v215[2];
    v116 = v215[3];
    v118 = v117 + 1;
    if (v117 >= v116 >> 1)
    {
      v115 = sub_26C42BCBC(v116 > 1, v117 + 1, 1, v215);
    }

    v119 = v191;
    v52 = v204;
    swift_unknownObjectRelease();
    v120 = v177;
LABEL_37:
    v115[2] = v118;
    v140 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v215 = v115;
    sub_26C40C2E8(v120, v115 + v140 + *(v119 + 72) * v117, type metadata accessor for ValueData);
    v141 = v220;
    v114(v212, v220, v222);
    v142 = v216;
    v143 = v190;
    swift_beginAccess();
    v144 = *(v142 + v143);
    v145 = type metadata accessor for LamportTimestamp(0);
    v146 = v213;
    v70 = v206;
    sub_26C46C184();
    swift_endAccess();
    v147 = *(v145 - 8);
    result = (*(v147 + 48))(v146, 1, v145);
    if (result == 1)
    {
      goto LABEL_52;
    }

    v149 = v217[2];
    v148 = v217[3];
    if (v149 >= v148 >> 1)
    {
      v217 = sub_26C42BC94(v148 > 1, v149 + 1, 1, v217);
    }

    TupleTypeMetadata2 = v222;
    v150 = *(v222 + 48);
    (*v193)(v141, v222);
    v151 = v217;
    v217[2] = v149 + 1;
    sub_26C40C2E8(v213, v151 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v149, type metadata accessor for LamportTimestamp);
    v152 = v212;
    (*v189)(&v212[v150], v225);
    result = (v221)(v152, v70);
    v69 = v207;
    v71 = v211;
    v61 = v199;
    v64 = v197;
  }

  if (v71)
  {
    v72 = v71;
    v73 = v69;
LABEL_20:
    v211 = (v72 - 1) & v72;
    v83 = __clz(__rbit64(v72)) | (v73 << 6);
    v84 = v185;
    (*(v185 + 16))(v187, *(v64 + 48) + *(v185 + 72) * v83, v70);
    v85 = *(v64 + 56);
    v86 = v186;
    v87 = v188;
    v88 = v225;
    (*(v186 + 16))(v188, v85 + *(v186 + 72) * v83, v225);
    TupleTypeMetadata2 = v222;
    v89 = *(v222 + 48);
    v90 = *(v84 + 32);
    v52 = v204;
    v79 = v70;
    v90();
    (*(v86 + 32))(&v52[v89], v87, v88);
    (*v200)(v52, 0, 1, TupleTypeMetadata2);
    v80 = v73;
    goto LABEL_21;
  }

  if (v202 <= v69 + 1)
  {
    v81 = v69 + 1;
  }

  else
  {
    v81 = v202;
  }

  v80 = v81 - 1;
  v82 = v69;
  while (1)
  {
    v73 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v73 >= v202)
    {
      v79 = v70;
      (*v200)(v52, 1, 1, TupleTypeMetadata2);
      v211 = 0;
      goto LABEL_21;
    }

    v72 = *(v61 + 8 * v73);
    ++v82;
    if (v72)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_26C46726C()
{
  v210 = *v0;
  v1 = v210;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v195 = (&v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v199 = (&v193 - v6);
  v246 = type metadata accessor for PBUUID(0);
  v220 = *(v246 - 8);
  v7 = v220[8];
  v8 = MEMORY[0x28223BE20](v246);
  v197 = (&v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v209 = (&v193 - v11);
  MEMORY[0x28223BE20](v10);
  v200 = (&v193 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v196 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v204 = &v193 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v201 = &v193 - v20;
  MEMORY[0x28223BE20](v19);
  v215 = &v193 - v21;
  v245 = sub_26C46BB54();
  v239 = *(v245 - 8);
  v22 = *(v239 + 64);
  v23 = MEMORY[0x28223BE20](v245);
  v226 = &v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v208 = &v193 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v207 = &v193 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v193 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v193 - v33;
  MEMORY[0x28223BE20](v32);
  v231 = &v193 - v35;
  v36 = type metadata accessor for LamportTimestamp(0);
  v224 = *(v36 - 8);
  v37 = *(v224 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v193 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v236 = (&v193 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v223 = &v193 - v44;
  v45 = *(v1 + 280);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v43);
  v203 = &v193 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v233 = &v193 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v214 = &v193 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v235 = &v193 - v55;
  MEMORY[0x28223BE20](v54);
  v221 = &v193 - v56;
  v243 = v57;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v230 = sub_26C46C474();
  v59 = *(v230 - 8);
  v60 = *(v59 + 64);
  v61 = MEMORY[0x28223BE20](v230);
  v225 = &v193 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v205 = &v193 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v218 = &v193 - v66;
  MEMORY[0x28223BE20](v65);
  v217 = &v193 - v67;
  v68 = qword_280498268;
  swift_beginAccess();
  v228 = v0;
  v198 = v68;
  v69 = *(v0 + v68);
  v70 = v69 + 64;
  v71 = 1 << *(v69 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v69 + 64);
  v194 = (v71 + 63) >> 6;
  v234 = TupleTypeMetadata2;
  v216 = TupleTypeMetadata2 - 8;
  v237 = (v46 + 16);
  v242 = (v46 + 32);
  v229 = (v59 + 32);
  v74 = (v220 + 6);
  v241 = (v239 + 16);
  v239 += 8;
  v222 = v46;
  v227 = (v46 + 8);
  v220 += 7;
  v206 = (v224 + 56);
  v202 = v69;

  v76 = 0;
  v238 = v31;
  v240 = v34;
  v219 = v40;
  v244 = v45;
  v232 = v74;
  v213 = v70;
  while (v73)
  {
    v85 = v76;
LABEL_16:
    v89 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v90 = v89 | (v85 << 6);
    v91 = v202;
    v92 = v222;
    v93 = v221;
    (*(v222 + 16))(v221, *(v202 + 48) + *(v222 + 72) * v90, v45);
    v94 = *(v91 + 56) + *(v224 + 72) * v90;
    v95 = v223;
    sub_26C46B83C(v94, v223, type metadata accessor for LamportTimestamp);
    v88 = v234;
    v96 = *(v234 + 48);
    v97 = v218;
    (*(v92 + 32))(v218, v93, v45);
    sub_26C40C2E8(v95, &v97[v96], type metadata accessor for LamportTimestamp);
    v98 = 0;
LABEL_17:
    v99 = *(v88 - 8);
    v100 = v99;
    v101 = *(v99 + 56);
    v102 = (v99 + 56);
    v101(v97, v98, 1, v88);
    v103 = *v229;
    v104 = v217;
    (*v229)(v217, v97, v230);
    v107 = *(v100 + 48);
    v106 = (v100 + 48);
    v105 = v107;
    if ((v107)(v104, 1, v88) == 1)
    {
      v217 = v105;
      v218 = v103;
      v235 = v102;
      v236 = v101;
      v231 = v106;

      v132 = qword_280498260;
      v133 = v228;
      swift_beginAccess();
      v211 = v132;
      v134 = *(v133 + v132);
      v135 = v134 + 64;
      v136 = 1 << *(v134 + 32);
      v137 = -1;
      if (v136 < 64)
      {
        v137 = ~(-1 << v136);
      }

      v138 = v137 & *(v134 + 64);
      v202 = (v136 + 63) >> 6;
      v212 = v134;

      v139 = 0;
      v140 = v219;
      v141 = v232;
      v142 = v244;
      v216 = v135;
      v143 = v225;
      while (1)
      {
        v144 = v236;
        if (!v138)
        {
          break;
        }

        v145 = v139;
LABEL_48:
        v149 = __clz(__rbit64(v138));
        v138 &= v138 - 1;
        v150 = v149 | (v145 << 6);
        v151 = v212;
        v152 = v222;
        v153 = v221;
        (*(v222 + 16))(v221, *(v212 + 48) + *(v222 + 72) * v150, v142);
        v154 = *(v151 + 56) + *(v224 + 72) * v150;
        v155 = v223;
        sub_26C46B83C(v154, v223, type metadata accessor for LamportTimestamp);
        v156 = v234;
        v157 = *(v234 + 48);
        v158 = *(v152 + 32);
        v143 = v225;
        v158(v225, v153, v142);
        v159 = &v143[v157];
        v148 = v156;
        sub_26C40C2E8(v155, v159, type metadata accessor for LamportTimestamp);
        v160 = 0;
        v141 = v232;
        v144 = v236;
LABEL_49:
        v144(v143, v160, 1, v148);
        v161 = v205;
        (v218)(v205, v143, v230);
        if ((v217)(v161, 1, v148) == 1)
        {
        }

        v162 = *(v148 + 48);
        (*v242)(v233, v161, v142);
        sub_26C40C2E8(&v161[v162], v140, type metadata accessor for LamportTimestamp);
        v163 = *(v243 + 24);
        v164 = v204;
        sub_26C3DDD48(v140 + v163, v204, &qword_280497458, &unk_26C46D3F0);
        v165 = *v141;
        v166 = (*v141)(v164, 1, v246);
        sub_26C3DE270(v164, &qword_280497458, &unk_26C46D3F0);
        if (v166 == 1)
        {
          v167 = v241;
          if (qword_280497190 != -1)
          {
            swift_once();
          }

          v168 = v245;
          v169 = __swift_project_value_buffer(v245, qword_2804985C0);
          (*v167)(v226, v169, v168);
        }

        else
        {
          v170 = v196;
          sub_26C3DDD48(v140 + v163, v196, &qword_280497458, &unk_26C46D3F0);
          v171 = v165(v170, 1, v246);
          v167 = v241;
          if (v171 == 1)
          {
            v172 = v197;
            *v197 = 0;
            v172[1] = 0;
            v173 = v246;
            v174 = v172 + *(v246 + 24);
            sub_26C46BD14();
            if (v165(v170, 1, v173) != 1)
            {
              sub_26C3DE270(v170, &qword_280497458, &unk_26C46D3F0);
            }
          }

          else
          {
            v172 = v197;
            sub_26C40C2E8(v170, v197, type metadata accessor for PBUUID);
          }

          sub_26C40F3CC();
          sub_26C46B90C(v172, type metadata accessor for PBUUID);
          v168 = v245;
        }

        if (qword_280497190 != -1)
        {
          swift_once();
        }

        v175 = __swift_project_value_buffer(v168, qword_2804985C0);
        v176 = *v167;
        v177 = v240;
        (*v167)(v240, v175, v168);
        v178 = v226;
        v179 = sub_26C46BB14();
        v180 = *v239;
        (*v239)(v177, v168);
        v180(v178, v168);
        v142 = v244;
        if (v179)
        {
          result = (*v237)(v203, v233, v244);
          v181 = *(v228 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
          if (!v181)
          {
            goto LABEL_72;
          }

          v182 = v240;
          v183 = v245;
          v176(v240, v181 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v245);
          result = (v176)(v238, v182, v183);
          v184 = *v219 + 1;
          if (*v219 == -1)
          {
            goto LABEL_70;
          }

          v185 = v195;
          *v195 = 0;
          v186 = v243;
          LODWORD(v215) = v184;
          v187 = v185 + *(v243 + 20);
          sub_26C46BD14();
          v213 = *(v186 + 24);
          v214 = *v220;
          (v214)(v185 + v213, 1, 1, v246);
          v188 = v207;
          v176(v207, v238, v183);
          v189 = v208;
          v176(v208, v188, v183);
          v190 = v209;
          sub_26C40F280(v189, v209);
          v180(v188, v183);
          v180(v238, v183);
          v180(v182, v183);
          v191 = v213;
          sub_26C3DE270(v185 + v213, &qword_280497458, &unk_26C46D3F0);
          sub_26C40C2E8(v190, v185 + v191, type metadata accessor for PBUUID);
          (v214)(v185 + v191, 0, 1, v246);
          *v185 = v215;
          (*v206)(v185, 0, 1, v243);
          swift_beginAccess();
          v192 = *(v210 + 312);
          v142 = v244;
          sub_26C46C174();
          v141 = v232;
          sub_26C46C194();
          swift_endAccess();
        }

        v140 = v219;
        sub_26C46B90C(v219, type metadata accessor for LamportTimestamp);
        result = (*v227)(v233, v142);
        v143 = v225;
        v135 = v216;
      }

      if (v202 <= v139 + 1)
      {
        v146 = v139 + 1;
      }

      else
      {
        v146 = v202;
      }

      v147 = v146 - 1;
      v148 = v234;
      while (1)
      {
        v145 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          goto LABEL_68;
        }

        if (v145 >= v202)
        {
          v138 = 0;
          v160 = 1;
          v139 = v147;
          goto LABEL_49;
        }

        v138 = *(v135 + 8 * v145);
        ++v139;
        if (v138)
        {
          v139 = v145;
          goto LABEL_48;
        }
      }
    }

    v108 = *(v88 + 48);
    (*v242)(v235, v104, v244);
    v109 = v236;
    sub_26C40C2E8(&v104[v108], v236, type metadata accessor for LamportTimestamp);
    v110 = *(v243 + 24);
    v111 = v215;
    sub_26C3DDD48(v109 + v110, v215, &qword_280497458, &unk_26C46D3F0);
    v112 = *v232;
    v113 = (*v232)(v111, 1, v246);
    sub_26C3DE270(v111, &qword_280497458, &unk_26C46D3F0);
    if (v113 == 1)
    {
      if (qword_280497190 != -1)
      {
        swift_once();
      }

      v114 = v245;
      v115 = __swift_project_value_buffer(v245, qword_2804985C0);
      (*v241)(v231, v115, v114);
    }

    else
    {
      v116 = v201;
      sub_26C3DDD48(v109 + v110, v201, &qword_280497458, &unk_26C46D3F0);
      if (v112(v116, 1, v246) == 1)
      {
        v117 = v200;
        *v200 = 0;
        v117[1] = 0;
        v118 = v116;
        v119 = v246;
        v120 = v117 + *(v246 + 24);
        sub_26C46BD14();
        v121 = v112(v118, 1, v119);
        v114 = v245;
        if (v121 != 1)
        {
          sub_26C3DE270(v201, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v117 = v200;
        sub_26C40C2E8(v116, v200, type metadata accessor for PBUUID);
        v114 = v245;
      }

      sub_26C40F3CC();
      sub_26C46B90C(v117, type metadata accessor for PBUUID);
    }

    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v122 = __swift_project_value_buffer(v114, qword_2804985C0);
    v123 = v240;
    v124 = *v241;
    (*v241)(v240, v122, v114);
    v125 = v231;
    v126 = sub_26C46BB14();
    v127 = *v239;
    (*v239)(v123, v114);
    v127(v125, v114);
    v45 = v244;
    if (v126)
    {
      result = (*v237)(v214, v235, v244);
      v128 = *(v228 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
      v129 = v236;
      if (!v128)
      {
        goto LABEL_71;
      }

      v130 = v240;
      v124(v240, v128 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v114);
      result = (v124)(v238, v130, v114);
      v131 = *v129 + 1;
      if (*v129 == -1)
      {
        goto LABEL_69;
      }

      v77 = v199;
      *v199 = 0;
      v78 = v243;
      LODWORD(v212) = v131;
      v79 = v77 + *(v243 + 20);
      sub_26C46BD14();
      v80 = *(v78 + 24);
      v211 = *v220;
      (v211)(v77 + v80, 1, 1, v246);
      v81 = v207;
      v124(v207, v238, v245);
      v82 = v208;
      v124(v208, v81, v245);
      v83 = v209;
      sub_26C40F280(v82, v209);
      v127(v81, v245);
      v127(v238, v245);
      v127(v240, v245);
      sub_26C3DE270(v77 + v80, &qword_280497458, &unk_26C46D3F0);
      sub_26C40C2E8(v83, v77 + v80, type metadata accessor for PBUUID);
      v45 = v244;
      (v211)(v77 + v80, 0, 1, v246);
      *v77 = v212;
      (*v206)(v77, 0, 1, v243);
      swift_beginAccess();
      v84 = *(v210 + 312);
      sub_26C46C174();
      sub_26C46C194();
      swift_endAccess();
    }

    sub_26C46B90C(v236, type metadata accessor for LamportTimestamp);
    result = (*v227)(v235, v45);
    v70 = v213;
  }

  if (v194 <= v76 + 1)
  {
    v86 = v76 + 1;
  }

  else
  {
    v86 = v194;
  }

  v87 = v86 - 1;
  v88 = v234;
  while (1)
  {
    v85 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v85 >= v194)
    {
      v73 = 0;
      v98 = 1;
      v76 = v87;
      v97 = v218;
      goto LABEL_17;
    }

    v73 = *(v70 + 8 * v85);
    ++v76;
    if (v73)
    {
      v76 = v85;
      goto LABEL_16;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_26C468A68()
{
  v1 = v0;
  v2 = *v0;
  v90 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (v71 - v9);
  v11 = *(v2 + 288);
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = v71 - v14;
  v16 = *(v2 + 280);
  v72 = *(v16 - 8);
  v17 = *(v72 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v78 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v71 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = sub_26C46C474();
  v23 = *(v89 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v89);
  v77 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v25);
  if (*(v1 + qword_280498280) != 1)
  {
    return result;
  }

  v87 = v71 - v28;
  v93 = v11;
  v80 = v10;
  v81 = v7;
  v29 = qword_280498288;
  swift_beginAccess();
  v30 = *(v1 + v29);
  v76 = v15;
  v74 = v21;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = sub_26C46C5C4();
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v88 = v31 | 0x8000000000000000;
  }

  else
  {
    v35 = -1 << *(v30 + 32);
    v33 = ~v35;
    v32 = v30 + 64;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v30 + 64);
    v88 = v30;
  }

  v38 = v78;
  v39 = v77;
  v84 = qword_280498270;
  v92 = (v72 + 32);
  v85 = qword_280498278;
  v91 = (v73 + 32);
  v83 = TupleTypeMetadata2 - 8;
  v71[0] = v33;
  v40 = (v33 + 64) >> 6;
  v71[2] = v72 + 16;
  v71[1] = v73 + 16;
  v82 = (v23 + 32);
  v79 = (v72 + 8);

  v41 = 0;
  v75 = v1;
  v86 = v32;
  while ((v88 & 0x8000000000000000) != 0)
  {
    if (sub_26C46C5D4())
    {
      sub_26C46C754();
      swift_unknownObjectRelease();
      v51 = v76;
      v52 = v93;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v44 = v41;
      v95 = v34;
      goto LABEL_23;
    }

    v54 = 1;
    v94 = v41;
    v95 = v34;
LABEL_24:
    v55 = *(TupleTypeMetadata2 - 8);
    (*(v55 + 56))(v39, v54, 1, TupleTypeMetadata2);
    v56 = v87;
    (*v82)(v87, v39, v89);
    if ((*(v55 + 48))(v56, 1, TupleTypeMetadata2) == 1)
    {
      sub_26C40B328();
      v67 = v84;
      swift_beginAccess();
      v68 = *(v1 + v67);
      *(v1 + v67) = 0;

      v69 = v85;
      swift_beginAccess();
      v70 = *(v1 + v69);
      *(v1 + v69) = 0;
    }

    v57 = *(TupleTypeMetadata2 + 48);
    (*v92)(v38, v56, v16);
    v58 = v93;
    v96[3] = v93;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v96);
    (*v91)(boxed_opaque_existential_0, &v56[v57], v58);
    v60 = v84;
    swift_beginAccess();
    if (*(v1 + v60))
    {
      sub_26C46BB54();
      v61 = *(v90 + 312);
      v62 = v80;
      sub_26C46C184();
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v63 = sub_26C46BB54();
      v62 = v80;
      (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
    }

    v64 = v81;
    v65 = v85;
    swift_beginAccess();
    v32 = v86;
    if (*(v1 + v65))
    {
      sub_26C46BB54();
      v42 = *(v90 + 312);
      sub_26C46C184();
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v66 = sub_26C46BB54();
      (*(*(v66 - 8) + 56))(v64, 1, 1, v66);
    }

    sub_26C3E0D08(v96, v62, v64);
    sub_26C3DE270(v64, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v62, &qword_280497430, &unk_26C46D3D0);
    (*v79)(v38, v16);
    result = sub_26C3DE270(v96, &qword_280497450, &qword_26C471080);
    v41 = v94;
    v34 = v95;
  }

  v43 = v34;
  v44 = v41;
  if (v34)
  {
LABEL_20:
    v95 = (v43 - 1) & v43;
    v48 = __clz(__rbit64(v43)) | (v44 << 6);
    v49 = v88;
    (*(v72 + 16))(v74, *(v88 + 48) + *(v72 + 72) * v48, v16);
    v50 = *(v49 + 56) + *(v73 + 72) * v48;
    v51 = v76;
    v52 = v93;
    (*(v73 + 16))(v76, v50, v93);
LABEL_23:
    v53 = *(TupleTypeMetadata2 + 48);
    v39 = v77;
    (*v92)();
    (*v91)(&v39[v53], v51, v52);
    v54 = 0;
    v94 = v44;
    v1 = v75;
    v38 = v78;
    goto LABEL_24;
  }

  if (v40 <= v41 + 1)
  {
    v45 = v41 + 1;
  }

  else
  {
    v45 = v40;
  }

  v46 = v45 - 1;
  v47 = v41;
  while (1)
  {
    v44 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v44 >= v40)
    {
      v94 = v46;
      v95 = 0;
      v54 = 1;
      goto LABEL_24;
    }

    v43 = *(v32 + 8 * v44);
    ++v47;
    if (v43)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C4693B0(uint64_t a1)
{
  v53 = a1;
  v2 = *(*v1 + 288);
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v67 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v52 - v7;
  v10 = *(v9 + 280);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v13 = v52 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = sub_26C46C474();
  v15 = *(v69 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v69);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v60 = v52 - v21;
  if (*(v1 + qword_280498280) != 1)
  {
    return result;
  }

  v70 = v2;
  v22 = qword_280498288;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v58 = v13;
  v59 = v8;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = sub_26C46C5C4();
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v68 = v24 | 0x8000000000000000;
  }

  else
  {
    v28 = -1 << *(v23 + 32);
    v26 = ~v28;
    v25 = v23 + 64;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v23 + 64);
    v68 = v23;
  }

  v31 = v60;
  v56 = (v54 + 32);
  v32 = (v55 + 32);
  v66 = TupleTypeMetadata2 - 8;
  v52[0] = v26;
  v33 = (v26 + 64) >> 6;
  v52[2] = v54 + 16;
  v52[1] = v55 + 16;
  v65 = (v15 + 32);
  v62 = (v54 + 8);

  v34 = 0;
  v63 = v10;
  v57 = v19;
  v61 = v25;
  while (1)
  {
    v64 = v27;
    if ((v68 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_26C46C5D4())
    {
      v47 = 1;
      v51 = v27;
      v39 = v34;
      v71 = v51;
      goto LABEL_23;
    }

    sub_26C46C754();
    swift_unknownObjectRelease();
    v44 = v59;
    v45 = v70;
    sub_26C46C754();
    swift_unknownObjectRelease();
    v37 = v34;
    v71 = v27;
LABEL_22:
    v46 = *(TupleTypeMetadata2 + 48);
    v19 = v57;
    (*v56)();
    (*v32)(&v19[v46], v44, v45);
    v47 = 0;
    v39 = v37;
    v31 = v60;
LABEL_23:
    v25 = v61;
LABEL_24:
    v48 = *(TupleTypeMetadata2 - 8);
    (*(v48 + 56))(v19, v47, 1, TupleTypeMetadata2);
    (*v65)(v31, v19, v69);
    if ((*(v48 + 48))(v31, 1, TupleTypeMetadata2) == 1)
    {
      return sub_26C40B328();
    }

    (*v32)(v67, &v31[*(TupleTypeMetadata2 + 48)], v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v49 = v72;
      ObjectType = swift_getObjectType();
      sub_26C3F8720(ObjectType, v49);
      sub_26C415270(v53);
      swift_unknownObjectRelease();
    }

    v10 = v63;
    v35 = v71;
    result = (*v62)(v31, v63);
    v34 = v39;
    v27 = v35;
  }

  v36 = v27;
  v37 = v34;
  if (v27)
  {
LABEL_19:
    v71 = (v36 - 1) & v36;
    v41 = __clz(__rbit64(v36)) | (v37 << 6);
    v42 = v68;
    (*(v54 + 16))(v58, *(v68 + 48) + *(v54 + 72) * v41, v10);
    v43 = *(v42 + 56) + *(v55 + 72) * v41;
    v44 = v59;
    v45 = v70;
    (*(v55 + 16))(v59, v43, v70);
    goto LABEL_22;
  }

  if (v33 <= v34 + 1)
  {
    v38 = v34 + 1;
  }

  else
  {
    v38 = v33;
  }

  v39 = v38 - 1;
  v40 = v34;
  while (1)
  {
    v37 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v37 >= v33)
    {
      v71 = 0;
      v47 = 1;
      goto LABEL_24;
    }

    v36 = *(v25 + 8 * v37);
    ++v40;
    if (v36)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C469A30()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_26C46BB54();
  v75 = *(v3 - 8);
  v4 = v75[8];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(*(v2 + 288) - 8);
  v8 = *(v82 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v74 - v10;
  v12 = *(v2 + 280);
  v81 = *(v12 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v74 - v14;
  v95 = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = sub_26C46C474();
  v18 = *(v94 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v94);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v74 - v24;
  if (*(v1 + qword_280498280) != 1)
  {
    return result;
  }

  v86 = v11;
  v26 = qword_280498288;
  swift_beginAccess();
  v27 = *(v1 + v26);
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = sub_26C46C5C4();
    v93 = 0;
    v29 = 0;
    v102 = 0;
    v92 = v28 | 0x8000000000000000;
  }

  else
  {
    v30 = -1 << *(v27 + 32);
    v29 = ~v30;
    v31 = *(v27 + 64);
    v93 = v27 + 64;
    v32 = -v30;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v102 = v33 & v31;
    v92 = v27;
  }

  v85 = v15;
  v83 = (v81 + 32);
  v100 = (v82 + 32);
  v90 = TupleTypeMetadata2 - 8;
  v74 = v29;
  v91 = (v29 + 64) >> 6;
  v80 = v81 + 16;
  v79 = v82 + 16;
  v89 = (v18 + 32);
  v77 = (v75 + 2);
  v78 = (v75 + 1);
  v87 = (v81 + 8);

  v34 = 0;
  v76 = v7;
  v88 = v12;
  v84 = TupleTypeMetadata2;
  v97 = v22;
  v96 = v25;
  v35 = v92;
  while (1)
  {
    ObjectType = v34;
    v99 = v102;
    if ((v35 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_26C46C5D4())
    {
      v42 = v7;
      v43 = v1;
      v44 = v3;
      v46 = v85;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v48 = v12;
      v49 = v86;
      v50 = v95;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v38 = ObjectType;
      v102 = v99;
      goto LABEL_23;
    }

    v53 = 1;
    v101 = ObjectType;
    v102 = v99;
LABEL_26:
    v50 = v95;
LABEL_27:
    v54 = *(TupleTypeMetadata2 - 8);
    (*(v54 + 56))(v22, v53, 1, TupleTypeMetadata2);
    (*v89)(v25, v22, v94);
    if ((*(v54 + 48))(v25, 1, TupleTypeMetadata2) == 1)
    {
      return sub_26C40B328();
    }

    v55 = *(TupleTypeMetadata2 + 48);
    v106[3] = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v106);
    (*v100)(boxed_opaque_existential_0, &v25[v55], v50);
    sub_26C3DE214(v106, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v57 = v104;
      ObjectType = swift_getObjectType();
      v99 = v57;
      v58 = sub_26C3F8720(ObjectType, v57);
      v59 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      (*v77)(v7, v58 + v59, v3);
      v60 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
      swift_beginAccess();
      v61 = *(v1 + v60);
      v62 = sub_26C42C210(v7);
      if (v63)
      {
        v64 = v62;
        v65 = v3;
        v66 = *(v1 + v60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = *(v1 + v60);
        v103 = v68;
        *(v1 + v60) = 0x8000000000000000;
        v69 = v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26C42EBCC();
          v68 = v103;
        }

        v70 = v75[1];
        v70(*(v68 + 48) + v75[9] * v64, v65);
        v71 = *(*(v68 + 56) + 8 * v64);

        sub_26C42D490(v64, v68);
        v72 = v76;
        v70(v76, v65);
        *(v69 + v60) = v68;
        v1 = v69;
        v7 = v72;
        v3 = v65;
      }

      else
      {
        (*v78)(v7, v3);
      }

      v12 = v88;
      swift_endAccess();
      v25 = v96;
      if (*(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) && swift_weakLoadStrong())
      {
        v73 = sub_26C3F8720(ObjectType, v99);
        sub_26C3EA514(v73);
        swift_unknownObjectRelease();

        v7 = v76;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v22 = v97;
    }

    else
    {
      v12 = v88;
    }

    __swift_destroy_boxed_opaque_existential_1(v106);
    result = (*v87)(v25, v12);
    v35 = v92;
    v34 = v101;
  }

  v36 = v34;
  v37 = v102;
  v38 = v36;
  if (v102)
  {
LABEL_20:
    v42 = v7;
    v43 = v1;
    v44 = v3;
    v102 = (v37 - 1) & v37;
    v45 = __clz(__rbit64(v37)) | (v38 << 6);
    v46 = v85;
    (*(v81 + 16))(v85, *(v35 + 48) + *(v81 + 72) * v45, v12);
    v47 = *(v35 + 56) + *(v82 + 72) * v45;
    v48 = v12;
    v49 = v86;
    v50 = v95;
    (*(v82 + 16))(v86, v47, v95);
LABEL_23:
    v51 = *(v84 + 48);
    v22 = v97;
    v52 = v46;
    TupleTypeMetadata2 = v84;
    (*v83)(v97, v52, v48);
    (*v100)(&v22[v51], v49, v50);
    v53 = 0;
    v101 = v38;
    v3 = v44;
    v1 = v43;
    v7 = v42;
    v25 = v96;
    goto LABEL_27;
  }

  if (v91 <= v36 + 1)
  {
    v39 = v36 + 1;
  }

  else
  {
    v39 = v91;
  }

  v40 = v39 - 1;
  v41 = v36;
  while (1)
  {
    v38 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v38 >= v91)
    {
      v101 = v40;
      v102 = 0;
      v53 = 1;
      goto LABEL_26;
    }

    v37 = *(v93 + 8 * v38);
    ++v41;
    if (v37)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t SyncedDictionary.SyncedDictionaryChangeInfo.keysRemoved.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SyncedDictionary.SyncedDictionaryChangeInfo.keysChanged.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncedDictionary.SyncedDictionaryChangeInfo.keysAdded.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SyncedDictionary.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = *(v2 + qword_2804988B0);
  (*(v6 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26C46BFF4();
}

uint64_t sub_26C46A5C8()
{
  v1 = *(v0 + qword_280498288);

  v2 = *(v0 + qword_280498260);

  v3 = *(v0 + qword_280498268);

  v4 = *(v0 + qword_280498270);

  v5 = *(v0 + qword_280498278);

  v6 = *(v0 + qword_2804988B0);
}

uint64_t SyncedDictionary.deinit()
{
  sub_26C46B90C(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
  v1 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);

  v2 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers);

  v3 = *(v0 + qword_280498288);

  v4 = *(v0 + qword_280498260);

  v5 = *(v0 + qword_280498268);

  v6 = *(v0 + qword_280498270);

  v7 = *(v0 + qword_280498278);

  v8 = *(v0 + qword_2804988B0);

  return v0;
}

uint64_t SyncedDictionary.__deallocating_deinit()
{
  SyncedDictionary.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26C46A790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SyncedDictionary.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26C46A80C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26C42BCE4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C46A8F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26C42BA84(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C46AA18(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26C46AB74(uint64_t a1, uint64_t a2)
{
  if (qword_280497158 != -1)
  {
    swift_once();
  }

  v4 = sub_26C410654(a2, a2);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = *(a2 - 8);
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  swift_allocObject();
  v10 = sub_26C46C264();
  (*(v7 + 16))(v11, a1, a2);
  sub_26C40D3FC(v10);
  sub_26C46C2E4();
  swift_getWitnessTable();
  v12 = sub_26C46BA74();

  return v12;
}

uint64_t sub_26C46AD0C()
{
  v1 = qword_280498288;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26C46AD54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_26C46AD0C();
}

uint64_t sub_26C46AD90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_26C46AD50(v4);
}

__n128 sub_26C46ADE0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_26C46AEE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_26C46AF30(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for LamportTimestamp(319);
    if (v3 <= 0x3F)
    {
      sub_26C3E959C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C46AFD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v37 = sub_26C46BD24();
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_26C46BB54() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  v15 = *(v8 + 80);
  if (v9)
  {
    v16 = -2;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v13)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 | 7;
  v21 = v16 + *(v8 + 64) - ((-17 - v15) | v15) - ((((-5 - v15) | v15) - ((v15 | 7) + *(v8 + 64))) | v15 | 7);
  v22 = (v15 | 7) + *(v6 + 64);
  if (a2 > v14)
  {
    v23 = ((v19 + v17 + (((v22 & ~v20) + v17 + v21) & ~v17)) & ~v17) + v19;
    v24 = 8 * v23;
    if (v23 <= 3)
    {
      v26 = ((a2 - v14 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v26))
      {
        v25 = *(a1 + v23);
        if (!v25)
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v26 > 0xFF)
      {
        v25 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v26 < 2)
      {
LABEL_37:
        if (v14)
        {
          goto LABEL_38;
        }

        return 0;
      }
    }

    v25 = *(a1 + v23);
    if (!*(a1 + v23))
    {
      goto LABEL_37;
    }

LABEL_24:
    v27 = (v25 - 1) << v24;
    if (v23 > 3)
    {
      v27 = 0;
    }

    if (v23)
    {
      if (v23 <= 3)
      {
        v28 = v23;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v29 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v29 = *a1;
        }
      }

      else if (v28 == 1)
      {
        v29 = *a1;
      }

      else
      {
        v29 = *a1;
      }
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v27) + 1;
  }

LABEL_38:
  if (v7 == v14)
  {
    v30 = *(v6 + 48);
    v31 = a1;
    v32 = v7;
    v33 = v5;
  }

  else
  {
    v35 = (a1 + v22) & ~v20;
    if (v9 != v14)
    {
      v36 = (*(v12 + 48))((v35 + v17 + v21) & ~v17);
      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    v30 = *(v8 + 48);
    v31 = (v15 + v35 + 4) & ~v15;
    v32 = v9;
    v33 = v37;
  }

  return v30(v31, v32, v33);
}

void sub_26C46B33C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v47 = *(a4 + 24);
  v6 = *(v47 - 8);
  v46 = v6;
  v7 = *(v6 + 84);
  v45 = sub_26C46BD24();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(sub_26C46BB54() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v6 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = v17 | 7;
  v22 = -2;
  if (!v9)
  {
    v22 = -1;
  }

  v23 = v22 + *(v8 + 64) - ((-17 - v17) | v17) - ((((-5 - v17) | v17) - ((v17 | 7) + *(v8 + 64))) | v17 | 7);
  v24 = v21 + v18;
  v25 = (((v21 + v18) & ~v21) + v19 + v23) & ~v19;
  if (v14)
  {
    v26 = v20;
  }

  else
  {
    v26 = v20 + 1;
  }

  v27 = ((v26 + v19 + v25) & ~v19) + v26;
  if (a3 <= v16)
  {
    goto LABEL_25;
  }

  if (v27 <= 3)
  {
    v28 = ((a3 - v16 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v28))
    {
      v11 = 4;
      if (v16 >= a2)
      {
        goto LABEL_35;
      }

LABEL_26:
      v30 = ~v16 + a2;
      if (v27 >= 4)
      {
        bzero(a1, v27);
        *a1 = v30;
        v31 = 1;
        if (v11 > 1)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v32 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v32;
            if (v11 > 1)
            {
LABEL_67:
              if (v11 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v11 > 1)
            {
              goto LABEL_67;
            }
          }

LABEL_64:
          if (v11)
          {
            a1[v27] = v31;
          }

          return;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v11 > 1)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }

LABEL_25:
    if (v16 >= a2)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v11 = 1;
  if (v16 < a2)
  {
    goto LABEL_26;
  }

LABEL_35:
  v33 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v27] = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v11)
  {
    goto LABEL_41;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v7 == v16)
  {
    v34 = v47;
    v35 = *(v46 + 56);
    v36 = a2;
    v37 = v7;
LABEL_46:

    v35(v33, v36, v37, v34);
    return;
  }

  v38 = &a1[v24] & ~v21;
  if (v9 == v16)
  {
    v35 = *(v8 + 56);
    v33 = (v17 + v38 + 4) & ~v17;
    v36 = a2;
    v37 = v9;
    v34 = v45;
    goto LABEL_46;
  }

  v39 = v38 + v19 + v23;
  v40 = (v39 & ~v19);
  if (v15 >= a2)
  {
    v44 = *(v13 + 56);

    v44(v39 & ~v19, (a2 + 1));
  }

  else
  {
    if (v26 <= 3)
    {
      v41 = ~(-1 << (8 * v26));
    }

    else
    {
      v41 = -1;
    }

    if (v26)
    {
      v42 = v41 & (~v15 + a2);
      if (v26 <= 3)
      {
        v43 = v26;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v26);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}

uint64_t sub_26C46B83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C46B8C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C46B90C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}