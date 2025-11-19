_OWORD *sub_266318804(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_266318878()
{
  result = qword_2800729F8;
  if (!qword_2800729F8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800729F8);
  }

  return result;
}

uint64_t sub_2663188D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v124 = a2;
  v123 = a1;
  v142 = sub_2664DEC48();
  v4 = *(v142 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v142);
  v135 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v129 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724A8, &unk_2664E5330);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v136 = (&v121 - v14);
  v15 = sub_2663854AC(MEMORY[0x277D84F90]);
  v16 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a3 + 64);
  v126 = (v17 + 63) >> 6;
  v128 = v4 + 16;
  v140 = (v4 + 32);
  v134 = (v4 + 88);
  v133 = *MEMORY[0x277D60170];
  v127 = *MEMORY[0x277D60188];
  v125 = *MEMORY[0x277D60178];
  v122 = (v4 + 8);
  v130 = v4;
  v132 = (v4 + 96);
  v131 = a3;

  v20 = 0;
  v137 = a3 + 64;
  v138 = v13;
  while (1)
  {
    v141 = v15;
    if (!v19)
    {
      break;
    }

    v22 = v142;
    v23 = v20;
LABEL_16:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = v27 | (v23 << 6);
    v29 = (*(v131 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    v32 = v130;
    v33 = v129;
    (*(v130 + 16))(v129, *(v131 + 56) + *(v130 + 72) * v28, v22);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
    v35 = *(v34 + 48);
    v36 = v138;
    *v138 = v31;
    *(v36 + 1) = v30;
    v37 = v33;
    v13 = v36;
    (*(v32 + 32))(&v36[v35], v37, v22);
    (*(*(v34 - 8) + 56))(v13, 0, 1, v34);

    v26 = v136;
    v16 = v137;
LABEL_17:
    sub_266319B8C(v13, v26, &qword_2800724A8, &unk_2664E5330);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
    if ((*(*(v38 - 8) + 48))(v26, 1, v38) == 1)
    {

      return v141;
    }

    v40 = *v26;
    v39 = v26[1];
    v41 = v26 + *(v38 + 48);
    v42 = v135;
    v43 = v142;
    (*v140)(v135, v41, v142);
    v44 = (*v134)(v42, v43);
    v45 = v141;
    if (v44 == v133)
    {
      (*v132)(v42, v142);
      v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v146 = sub_266319BF4();
      *&v145 = v46;
      sub_266318804(&v145, v144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v45;
      v48 = v40;
      v50 = sub_2662A3E98(v40, v39);
      v51 = v45[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_77;
      }

      v54 = v49;
      if (v45[3] >= v53)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266453AC4();
        }

        v13 = v138;
      }

      else
      {
        sub_266450328(v53, isUniquelyReferenced_nonNull_native);
        v55 = sub_2662A3E98(v48, v39);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_85;
        }

        v50 = v55;
        v13 = v138;
      }

      v16 = v137;
      if (v54)
      {

        v15 = v143;
        v21 = (v143[7] + 32 * v50);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        sub_266318804(v144, v21);
      }

      else
      {
        v15 = v143;
        v143[(v50 >> 6) + 8] |= 1 << v50;
        v78 = (v15[6] + 16 * v50);
        *v78 = v48;
        v78[1] = v39;
        sub_266318804(v144, (v15[7] + 32 * v50));
        v79 = v15[2];
        v73 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v73)
        {
          goto LABEL_79;
        }

        v15[2] = v80;
      }
    }

    else
    {
      v139 = v39;
      if (v44 == v127)
      {
        (*v132)(v42, v142);
        v57 = *v42;
        if (*(*v42 + 16))
        {
          v58 = v13;
          v59 = sub_2662A3E98(v123, v124);
          if (v60)
          {
            v61 = v40;
            v62 = *(*(v57 + 56) + 8 * v59);
            goto LABEL_49;
          }
        }

        else
        {
          v58 = v13;
        }

        v61 = v40;
        v62 = -1;
LABEL_49:

        v94 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v146 = sub_266319BF4();
        *&v145 = v94;
        sub_266318804(&v145, v144);
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v143 = v45;
        v69 = sub_2662A3E98(v61, v139);
        v97 = v45[2];
        v98 = (v96 & 1) == 0;
        v73 = __OFADD__(v97, v98);
        v99 = v97 + v98;
        if (v73)
        {
          goto LABEL_78;
        }

        v100 = v96;
        if (v45[3] >= v99)
        {
          if (v95)
          {
            v102 = v139;
            if (v96)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v115 = v69;
            sub_266453AC4();
            v69 = v115;
            v102 = v139;
            if (v100)
            {
              goto LABEL_61;
            }
          }

LABEL_56:
          v15 = v143;
          v143[(v69 >> 6) + 8] |= 1 << v69;
          v103 = (v15[6] + 16 * v69);
          *v103 = v61;
          v103[1] = v102;
          sub_266318804(v144, (v15[7] + 32 * v69));
          v104 = v15[2];
          v73 = __OFADD__(v104, 1);
          v105 = v104 + 1;
          if (v73)
          {
            goto LABEL_82;
          }

          goto LABEL_74;
        }

        sub_266450328(v99, v95);
        v69 = sub_2662A3E98(v61, v139);
        if ((v100 & 1) != (v101 & 1))
        {
          goto LABEL_85;
        }

        v102 = v139;
        if ((v100 & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_61:
        v106 = v69;

        v15 = v143;
        v107 = (v143[7] + 32 * v106);
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        sub_266318804(v144, v107);
        v13 = v58;
      }

      else
      {
        v58 = v13;
        if (v44 == v125)
        {
          (*v132)(v42, v142);
          v63 = *v42;
          v64 = 0;
          v65 = v40;
          if (*(*v42 + 16))
          {
            v66 = sub_2662A3E98(v123, v124);
            if (v67)
            {
              v64 = *(*(v63 + 56) + 8 * v66);
            }
          }

          v146 = MEMORY[0x277D839F8];
          *&v145 = v64;
          sub_266318804(&v145, v144);
          v68 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v45;
          v69 = sub_2662A3E98(v65, v139);
          v71 = v45[2];
          v72 = (v70 & 1) == 0;
          v73 = __OFADD__(v71, v72);
          v74 = v71 + v72;
          if (v73)
          {
            goto LABEL_80;
          }

          v75 = v70;
          if (v45[3] >= v74)
          {
            if (v68)
            {
              v77 = v139;
              if (v70)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v116 = v69;
              sub_266453AC4();
              v69 = v116;
              v77 = v139;
              if (v75)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            sub_266450328(v74, v68);
            v69 = sub_2662A3E98(v65, v139);
            if ((v75 & 1) != (v76 & 1))
            {
              goto LABEL_85;
            }

            v77 = v139;
            if (v75)
            {
              goto LABEL_61;
            }
          }

          v15 = v143;
          v143[(v69 >> 6) + 8] |= 1 << v69;
          v117 = (v15[6] + 16 * v69);
          *v117 = v65;
          v117[1] = v77;
          sub_266318804(v144, (v15[7] + 32 * v69));
          v118 = v15[2];
          v73 = __OFADD__(v118, 1);
          v105 = v118 + 1;
          if (v73)
          {
            goto LABEL_84;
          }

LABEL_74:
          v15[2] = v105;
          v13 = v58;
        }

        else
        {
          v146 = MEMORY[0x277D83B88];
          *&v145 = -1;
          sub_266318804(&v145, v144);
          v82 = swift_isUniquelyReferenced_nonNull_native();
          v83 = v40;
          v84 = v82;
          v143 = v45;
          v85 = v83;
          v86 = sub_2662A3E98(v83, v139);
          v88 = v45[2];
          v89 = (v87 & 1) == 0;
          v73 = __OFADD__(v88, v89);
          v90 = v88 + v89;
          if (v73)
          {
            goto LABEL_81;
          }

          v91 = v87;
          if (v45[3] >= v90)
          {
            if ((v84 & 1) == 0)
            {
              v119 = v86;
              sub_266453AC4();
              v86 = v119;
            }

            v92 = v85;
          }

          else
          {
            sub_266450328(v90, v84);
            v92 = v85;
            v86 = sub_2662A3E98(v85, v139);
            if ((v91 & 1) != (v93 & 1))
            {
              goto LABEL_85;
            }
          }

          v13 = v58;
          v108 = v139;
          if (v91)
          {
            v109 = v86;

            v15 = v143;
            v110 = (v143[7] + 32 * v109);
            __swift_destroy_boxed_opaque_existential_1Tm(v110);
            sub_266318804(v144, v110);
          }

          else
          {
            v111 = v92;
            v15 = v143;
            v143[(v86 >> 6) + 8] |= 1 << v86;
            v112 = (v15[6] + 16 * v86);
            *v112 = v111;
            v112[1] = v108;
            sub_266318804(v144, (v15[7] + 32 * v86));
            v113 = v15[2];
            v73 = __OFADD__(v113, 1);
            v114 = v113 + 1;
            if (v73)
            {
              goto LABEL_83;
            }

            v15[2] = v114;
          }

          (*v122)(v135, v142);
        }
      }
    }
  }

  if (v126 <= v20 + 1)
  {
    v24 = v20 + 1;
  }

  else
  {
    v24 = v126;
  }

  v25 = v24 - 1;
  v26 = v136;
  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v126)
    {
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
      (*(*(v81 - 8) + 56))(v13, 1, 1, v81);
      v19 = 0;
      v20 = v25;
      goto LABEL_17;
    }

    v19 = *(v16 + 8 * v23);
    ++v20;
    if (v19)
    {
      v22 = v142;
      v20 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_77:
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
LABEL_85:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_26631946C(__int128 *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v89 = a2;
  v7 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v73 - v10;
  v11 = sub_2664DEC48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v77 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v73 - v16;
  if (*a3 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v87 = v7;
    v85 = a4;
    v17 = *(*a4 + 16);
    v18 = MEMORY[0x277D837D0];
    v19 = MEMORY[0x277D837E0];
    v80 = v11;
    v20 = MEMORY[0x266783210](v17, MEMORY[0x277D837D0], v11, MEMORY[0x277D837E0]);
    v11 = *(a1 + 2);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v22 = MEMORY[0x266783210](v11, v18, v21, v19);
    v86 = v11;
    v78 = v20;
    v79 = v12;
    v88 = a1;
    if (v11)
    {
      break;
    }

LABEL_17:
    v38 = *v85;
    v39 = *v85 + 56;
    v40 = 1 << *(*v85 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(*v85 + 56);
    a4 = (v40 + 63) >> 6;
    a1 = &v90;
    v82 = (v79 + 48);
    v75 = (v79 + 32);
    v74 = (v79 + 16);
    v73 = (v79 + 8);
    v85 = v38;

    v43 = 0;
    v11 = v87;
    v79 = v88 + 40;
    v12 = v80;
    v44 = v81;
    v83 = a4;
    v84 = v39;
LABEL_20:
    v45 = v43;
    v7 = v86;
    if (!v42)
    {
      goto LABEL_22;
    }

    do
    {
      v43 = v45;
LABEL_25:
      v46 = (v85[6] + ((v43 << 10) | (16 * __clz(__rbit64(v42)))));
      v47 = v46[1];
      v88 = *v46;
      v89 = v47;
      if (v7)
      {
        v87 = v11;
        v93 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v7, 0);
        v48 = v93;
        v49 = v79;
        v50 = v7;
        while (1)
        {
          v51 = *(v49 - 1);
          v52 = *v49;
          *&v90 = v51;
          *(&v90 + 1) = v52;
          v53 = v22[2];
          swift_bridgeObjectRetain_n();
          if (!v53)
          {
            goto LABEL_33;
          }

          v54 = sub_2662A3E98(v51, v52);
          if ((v55 & 1) == 0)
          {
            goto LABEL_33;
          }

          v56 = *(v22[7] + 8 * v54);
          if (!*(v56 + 16))
          {
            goto LABEL_33;
          }

          v57 = *(v22[7] + 8 * v54);

          v58 = sub_2662A3E98(v88, v89);
          if ((v59 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v56 + 56) + 32 * v58, &v91);

LABEL_34:

          v93 = v48;
          v61 = *(v48 + 16);
          v60 = *(v48 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_2662FCF64((v60 > 1), v61 + 1, 1);
            v48 = v93;
          }

          *(v48 + 16) = v61 + 1;
          v62 = (v48 + 48 * v61);
          v63 = v90;
          v64 = v92;
          v62[3] = v91;
          v62[4] = v64;
          v62[2] = v63;
          v49 += 2;
          if (!--v50)
          {

            v11 = v87;
            v12 = v80;
            v44 = v81;
            if (*(v48 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v65 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v91 = 0u;
        v92 = 0u;
        goto LABEL_34;
      }

      v48 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v65 = sub_2664E0C98();
LABEL_41:
      *&v90 = v65;
      sub_266318424(v48, 1, &v90);
      if (v11)
      {
        goto LABEL_52;
      }

      v42 &= v42 - 1;
      sub_266317280(v90);

      sub_2664DEC38();

      v66 = (*v82)(v44, 1, v12);
      v7 = v86;
      a4 = v83;
      v39 = v84;
      if (v66 != 1)
      {
        v67 = v76;
        (*v75)(v76, v44, v12);
        v68 = v77;
        (*v74)(v77, v67, v12);
        v69 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v90 = v69;
        sub_26634F030(v68, v88, v89, isUniquelyReferenced_nonNull_native);

        v71 = v67;
        a4 = v83;
        v39 = v84;
        (*v73)(v71, v12);
        v78 = v90;
        goto LABEL_20;
      }

      sub_2662A9238(v44, &qword_2800729C8, &unk_2664E52E0);
      v45 = v43;
    }

    while (v42);
LABEL_22:
    while (1)
    {
      v43 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v43 >= a4)
      {

        return v78;
      }

      v42 = *(v39 + 8 * v43);
      ++v45;
      if (v42)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v23 = a1 + 5;
  while (1)
  {
    a1 = *(v23 - 1);
    v26 = *v23;

    v27 = sub_2663188D0(a1, v26, v89);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v22;
    a4 = sub_2662A3E98(a1, v26);
    v29 = v22[2];
    v30 = (v28 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_48;
    }

    v12 = v28;
    if (v22[3] < v31)
    {
      break;
    }

    if (v7)
    {
      if (v28)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_266453E1C();
      if (v12)
      {
LABEL_4:

        v22 = v90;
        v24 = *(v90 + 56);
        v25 = *(v24 + 8 * a4);
        *(v24 + 8 * a4) = v27;

        goto LABEL_5;
      }
    }

LABEL_13:
    v22 = v90;
    *(v90 + 8 * (a4 >> 6) + 64) |= 1 << a4;
    v34 = (v22[6] + 16 * a4);
    *v34 = a1;
    v34[1] = v26;
    *(v22[7] + 8 * a4) = v27;
    v35 = v22[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_49;
    }

    v22[2] = v37;
LABEL_5:
    v23 += 2;
    if (!--v11)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v31, v7);
  v32 = sub_2662A3E98(a1, v26);
  if ((v12 & 1) == (v33 & 1))
  {
    a4 = v32;
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_266319B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_266319BF4()
{
  result = qword_280F8F550;
  if (!qword_280F8F550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F550);
  }

  return result;
}

uint64_t sub_266319C40(__int128 *a1, uint64_t a2)
{
  v86 = a2;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v70 - v6;
  v8 = sub_2664DEC48();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v70 - v13;
  if (qword_280F8FE38 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v78 = v7;
    v83 = qword_280F91C70;
    v84 = v3;
    v14 = *(qword_280F91C70 + 16);
    v15 = MEMORY[0x277D837D0];
    v16 = MEMORY[0x277D837E0];
    v77 = v8;
    v17 = MEMORY[0x266783210](v14, MEMORY[0x277D837D0], v8, MEMORY[0x277D837E0]);
    v8 = *(a1 + 2);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v19 = MEMORY[0x266783210](v8, v15, v18, v16);
    v82 = v8;
    v75 = v17;
    v76 = v9;
    v85 = a1;
    if (v8)
    {
      break;
    }

LABEL_17:
    v7 = (v83 + 56);
    v36 = 1 << *(v83 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v83 + 56);
    v9 = ((v36 + 63) >> 6);
    a1 = &v87;
    v79 = (v76 + 6);
    v72 = (v76 + 4);
    v71 = (v76 + 2);
    v70 = (v76 + 1);

    v39 = 0;
    v8 = v84;
    v76 = v85 + 5;
    v41 = v77;
    v40 = v78;
    v80 = v9;
    v81 = v7;
LABEL_20:
    v42 = v39;
    v3 = v82;
    if (!v38)
    {
      goto LABEL_22;
    }

    do
    {
      v39 = v42;
LABEL_25:
      v43 = (*(v83 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v38)))));
      v44 = v43[1];
      v85 = *v43;
      v86 = v44;
      if (v3)
      {
        v84 = v8;
        v90 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v3, 0);
        v45 = v90;
        v46 = v76;
        v47 = v3;
        while (1)
        {
          v48 = *(v46 - 1);
          v49 = *v46;
          *&v87 = v48;
          *(&v87 + 1) = v49;
          v50 = *(v19 + 2);
          swift_bridgeObjectRetain_n();
          if (!v50)
          {
            goto LABEL_33;
          }

          v51 = sub_2662A3E98(v48, v49);
          if ((v52 & 1) == 0)
          {
            goto LABEL_33;
          }

          v53 = *(*(v19 + 7) + 8 * v51);
          if (!*(v53 + 16))
          {
            goto LABEL_33;
          }

          v54 = *(*(v19 + 7) + 8 * v51);

          v55 = sub_2662A3E98(v85, v86);
          if ((v56 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v53 + 56) + 32 * v55, &v88);

LABEL_34:

          v90 = v45;
          v58 = *(v45 + 16);
          v57 = *(v45 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_2662FCF64((v57 > 1), v58 + 1, 1);
            v45 = v90;
          }

          *(v45 + 16) = v58 + 1;
          v59 = (v45 + 48 * v58);
          v60 = v87;
          v61 = v89;
          v59[3] = v88;
          v59[4] = v61;
          v59[2] = v60;
          v46 += 2;
          if (!--v47)
          {

            v8 = v84;
            v41 = v77;
            v40 = v78;
            if (*(v45 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v62 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v88 = 0u;
        v89 = 0u;
        goto LABEL_34;
      }

      v45 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v62 = sub_2664E0C98();
LABEL_41:
      *&v87 = v62;
      sub_266318424(v45, 1, &v87);
      if (v8)
      {
        goto LABEL_52;
      }

      v38 &= v38 - 1;
      sub_266317280(v87);

      sub_2664DEC38();

      v63 = (*v79)(v40, 1, v41);
      v7 = v81;
      v3 = v82;
      v9 = v80;
      if (v63 != 1)
      {
        v64 = v73;
        (*v72)(v73, v40, v41);
        v65 = v74;
        (*v71)(v74, v64, v41);
        v66 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v66;
        sub_26634F030(v65, v85, v86, isUniquelyReferenced_nonNull_native);

        v68 = v64;
        v9 = v80;
        v7 = v81;
        (*v70)(v68, v41);
        v75 = v87;
        goto LABEL_20;
      }

      sub_2662A9238(v40, &qword_2800729C8, &unk_2664E52E0);
      v42 = v39;
    }

    while (v38);
LABEL_22:
    while (1)
    {
      v39 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v39 >= v9)
      {

        return v75;
      }

      v38 = *&v7[8 * v39];
      ++v42;
      if (v38)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v9 = a1 + 5;
  while (1)
  {
    v23 = *(v9 - 1);
    v22 = *v9;

    a1 = sub_2663DAE00(v23, v22, v86);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    *&v87 = v19;
    v7 = v19;
    v25 = sub_2662A3E98(v23, v22);
    v26 = *(v19 + 2);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_48;
    }

    v29 = v24;
    if (*(v19 + 3) < v28)
    {
      break;
    }

    if (v3)
    {
      if (v24)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = &v87;
      sub_266453E1C();
      if (v29)
      {
LABEL_4:

        v19 = v87;
        v20 = *(v87 + 56);
        v21 = *(v20 + 8 * v25);
        *(v20 + 8 * v25) = a1;

        goto LABEL_5;
      }
    }

LABEL_13:
    v19 = v87;
    *(v87 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v32 = (*(v19 + 6) + 16 * v25);
    *v32 = v23;
    v32[1] = v22;
    *(*(v19 + 7) + 8 * v25) = a1;
    v33 = *(v19 + 2);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_49;
    }

    *(v19 + 2) = v35;
LABEL_5:
    v9 += 2;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v28, v3);
  v7 = v87;
  v30 = sub_2662A3E98(v23, v22);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    if (v29)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26631A3F0(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_26631A454(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_26631A50C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t PodcastChannelEntity.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2664DF888();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2664DF8E8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t PodcastChannelEntity.init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t PodcastChannelEntity.__deallocating_deinit()
{
  _s16SiriAudioSupport20PodcastChannelEntityCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PodcastChannelEntity()
{
  result = qword_280072A68;
  if (!qword_280072A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26631A9E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return v6;
}

uint64_t sub_26631AA3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_26631AAD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_26631AB58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastChannelEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26631ABC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_26631AC20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2664DF8A8();
  *a1 = result;
  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

Swift::String_optional __swiftcall PrivateMediaIntentDataProviding.localizedAppName(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = (*(v1 + 24))();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 proxiedThirdPartyAppInfo];

  if (!v6)
  {
LABEL_14:
    v4 = 0;
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v7 = [v6 bundleIdentifier];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = sub_2664E02C8();
  v11 = v10;

  if (v9 == countAndFlagsBits && v11 == object)
  {
  }

  else
  {
    v13 = sub_2664E0D88();

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v14 = [v6 appName];
  if (!v14)
  {
LABEL_13:

    goto LABEL_14;
  }

  v15 = v14;
  v16 = sub_2664E02C8();
  v18 = v17;

  v19 = v18;
  v4 = v16;
LABEL_16:
  result.value._object = v19;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall PrivateMediaIntentDataProviding.getSharedUserID()()
{
  v4 = 0;
  v1 = (*(v0 + 32))(&v4);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_26631BB98(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = (*(a2 + 24))();
  v5 = [v4 *a3];

  sub_266319BF4();
  v6 = sub_2664E08F8();
  if (v5)
  {
    v7 = sub_2664E0918();

    v6 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *PrivateMediaIntentDataProviding.fallbackUsername.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (result)
  {
    v3 = result;
    v4 = [result fallbackUsername];

    if (v4)
    {
      v5 = sub_2664E02C8();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26631BD34()
{
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v3[0] = qword_280F905C8;
  *(v3 + 5) = *(&qword_280F905C8 + 5);
  sub_2664DE8E8();
  type metadata accessor for SEDeviceProvider();
  v0 = swift_allocObject();
  v0[5] = &type metadata for FeatureFlagProvider;
  v0[6] = &protocol witness table for FeatureFlagProvider;
  v0[2] = v3[0];
  *(v0 + 21) = *(v3 + 5);
  result = sub_2662A8618(&v2, (v0 + 7));
  qword_280072A78 = v0;
  return result;
}

uint64_t *SEDeviceProvider.__allocating_init(featureFlagProvider:aceServiceInvoker:)(uint64_t *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_26631C5E4(v10, a2, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t static SEDeviceProvider.shared.getter()
{
  if (qword_280071AB0 != -1)
  {
    swift_once();
  }
}

uint64_t *SEDeviceProvider.init(featureFlagProvider:aceServiceInvoker:)(uint64_t *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_26631C5E4(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t sub_26631C050()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v10 = 67109378;
    v11 = v1[5];
    v12 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
    *(v10 + 4) = (*(v12 + 8))(v11, v12) & 1;

    *(v10 + 8) = 2080;
    v13 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
    sub_2664DEAC8();
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v14 = sub_2664DEB58();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v29[0] = v14;
    v29[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v17 = sub_2664E0318();
    v19 = sub_2662A320C(v17, v18, &v28);

    *(v10 + 10) = v19;
    _os_log_impl(&dword_26629C000, v8, v9, "SEDeviceProvider#isSEDevice SE Logic feature flag is %{BOOL}d and endpoint Id for SE device is %s", v10, 0x12u);
    v20 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  v21 = v1[5];
  v22 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v21);
  if (((*(v22 + 8))(v21, v22) & 1) == 0)
  {
    return 0;
  }

  v23 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_2664DEAC8();
  __swift_project_boxed_opaque_existential_1(v29, v30);
  sub_2664DEB58();
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  if (!v25)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_26631C400(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_2664DEAC8();
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = a1(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t SEDeviceProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t SEDeviceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_26631C550(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 88);
  __swift_project_boxed_opaque_existential_1((*v3 + 56), *(*v3 + 80));
  sub_2664DEAC8();
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = a3(v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

uint64_t *sub_26631C5E4(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  sub_2662A8618(a2, (a3 + 7));
  return a3;
}

void sub_26631C754(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if (a3)
    {
      v8 = sub_2664E02A8();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v6 setName_];
  }
}

uint64_t sub_26631C81C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9[4] = sub_2662F3824;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2663F8490;
  v9[3] = &block_descriptor_53;
  v7 = _Block_copy(v9);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_26631C950(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_26631C99C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v27 = 0x277CD5E40;
    v36 = objc_opt_self();
    v37 = [objc_opt_self() kindWithVariants_];
    v38 = [v36 kindWithSongKind_];

    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_26631D1F4;
    *(v40 + 24) = v39;
    v41 = objc_allocWithZone(MEMORY[0x277CD5DA0]);

    v42 = sub_2664E02A8();
    v43 = swift_allocObject();
    *(v43 + 16) = sub_26631D208;
    *(v43 + 24) = v40;
    v49 = sub_26631D20C;
    v50 = v43;
    v45 = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_26631C950;
    v48 = &block_descriptor_23;
    v44 = _Block_copy(&v45);

    v35 = [v41 initWithSource:v42 modelKind:v38 block:v44];

    _Block_release(v44);

    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 != 3)
  {
LABEL_7:
    v27 = 0x277CD5F58;
    v28 = [objc_opt_self() kindWithVariants_];
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_26631D19C;
    *(v30 + 24) = v29;
    v31 = objc_allocWithZone(MEMORY[0x277CD5DA0]);

    v32 = sub_2664E02A8();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_26631D1AC;
    *(v33 + 24) = v30;
    v49 = sub_2662F3824;
    v50 = v33;
    v45 = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_26631C950;
    v48 = &block_descriptor_8;
    v34 = _Block_copy(&v45);

    v35 = [v31 initWithSource:v32 modelKind:v28 block:v34];

    _Block_release(v34);

    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
LABEL_8:
      v25 = [objc_allocWithZone(*v27) initWithIdentifiers_];

      return v25;
    }

    goto LABEL_12;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = objc_opt_self();

  v12 = [v11 kindWithVariants_];
  v13 = [v10 kindWithSongKind_];

  v14 = [v9 kindWithAlbumKind_];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26631D1F4;
  *(v16 + 24) = v15;
  v17 = objc_allocWithZone(MEMORY[0x277CD5DA0]);

  v18 = sub_2664E02A8();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26631D208;
  *(v19 + 24) = v16;
  v49 = sub_26631D20C;
  v50 = v19;
  v45 = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_26631C950;
  v48 = &block_descriptor_41;
  v20 = _Block_copy(&v45);

  v21 = [v17 initWithSource:v18 modelKind:v14 block:v20];

  _Block_release(v20);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CD5E50]);
    a1 = swift_allocObject();
    *(a1 + 16) = sub_26631D1B4;
    *(a1 + 24) = v8;
    v49 = sub_26631D1BC;
    v50 = a1;
    v45 = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_26631C950;
    v48 = &block_descriptor_47_0;
    v24 = _Block_copy(&v45);

    v25 = [v23 initWithIdentifiers:v21 block:v24];

    _Block_release(v24);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v25;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_26631D1BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26631D2D0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_26631D568(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_26631D568(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v76 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v100[3] = v10;
  v100[4] = &off_2877F3740;
  v100[0] = a1;
  v99[3] = &type metadata for PlaybackStarter;
  v99[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v99[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v98[3] = &type metadata for PlaybackQueueLocationProvider;
  v98[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v98[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v100, v96);
  sub_2662A5550(a2, v95);
  sub_2662A5550(v99, v93);
  sub_2662A5550(v98, v91);
  v17 = v97;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v94;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v92;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v90[3] = v10;
  v90[4] = &off_2877F3740;
  v90[0] = v35;
  v89[3] = &type metadata for PlaybackStarter;
  v89[4] = &off_2877EE098;
  v36 = swift_allocObject();
  v89[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v87 = &type metadata for PlaybackQueueLocationProvider;
  v88 = &off_2877E8100;
  v39 = swift_allocObject();
  *&v86 = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  sub_2662A5550(v90, a5 + 16);
  sub_2662A5550(v95, a5 + 56);
  sub_2662A5550(v89, a5 + 104);
  sub_2662A5550(v90, v84);
  sub_2662A5550(v95, v83);
  sub_2662A5550(v89, v81);
  v42 = v85;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v82;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v46;
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v79 = &off_2877EE098;
  v80[0] = v54;
  v78 = &type metadata for PlaybackStarter;
  v55 = swift_allocObject();
  v77[0] = v55;
  v56 = v52[3];
  v55[3] = v52[2];
  v55[4] = v56;
  v55[5] = v52[4];
  v57 = v52[1];
  v55[1] = *v52;
  v55[2] = v57;
  type metadata accessor for LocalPlaybackHelper();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v10);
  v60 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v78;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v58[5] = v10;
  v58[6] = &off_2877F3740;
  v58[2] = v70;
  v58[15] = &type metadata for PlaybackStarter;
  v58[16] = &off_2877EE098;
  v71 = swift_allocObject();
  v58[12] = v71;
  v72 = v68[3];
  v71[3] = v68[2];
  v71[4] = v72;
  v71[5] = v68[4];
  v73 = v68[1];
  v71[1] = *v68;
  v71[2] = v73;
  sub_2662A8618(v83, (v58 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  *(a5 + 96) = v58;
  sub_2662A8618(&v86, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return a5;
}

uint64_t SearchMusicAppIntent.init(criteria:searchSource:resultScope:)@<X0>(char *a1@<X4>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A80, &qword_2664E57A8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  a2[1] = sub_2664DFA28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A88, &unk_2664E57B0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  a2[2] = sub_2664DFA28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072680, &qword_2664E4578);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *a2 = sub_2664DFA28();
  sub_2664DFA38();
  return sub_2664DFA38();
}

uint64_t sub_26631DE7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26631DEC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t INSpeakerIDConfidence.toIdentifiedUserClassification()(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return sub_2664DEA58();
      }

      return sub_2664DEA38();
    }

    return sub_2664DEA48();
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return sub_2664DEA28();
      }

      return sub_2664DEA38();
    }

    return sub_2664DEA68();
  }
}

uint64_t static INSpeakerIDConfidence.from(confidence:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification.toSpeakerIDConfidence()()
{
  v1 = v0;
  v2 = sub_2664DE5D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D396A8])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D39688])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277D39698])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x277D396A0])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_26631E10C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x277D396A8])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D39688])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D39698])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x277D396A0])
  {
    return 4;
  }

  (*(v2 + 8))(v5, a1);
  return 0;
}

uint64_t IdentifiedUser.Classification.toSpeakerIDConfidence()()
{
  v1 = v0;
  v2 = sub_2664DEA78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  (*(v3 + 16))(&v16 - v8, v1, v2);
  sub_2664DEA68();
  sub_26631E4BC();
  v10 = sub_2664E0298();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v11(v9, v2);
    return 1;
  }

  else
  {
    sub_2664DEA28();
    v13 = sub_2664E0298();
    v11(v7, v2);
    if (v13)
    {
      v11(v9, v2);
      return 2;
    }

    else
    {
      sub_2664DEA48();
      v14 = sub_2664E0298();
      v11(v7, v2);
      if (v14)
      {
        v11(v9, v2);
        return 3;
      }

      else
      {
        sub_2664DEA58();
        v15 = sub_2664E0298();
        v11(v7, v2);
        v11(v9, v2);
        if (v15)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

unint64_t sub_26631E4BC()
{
  result = qword_280072A90;
  if (!qword_280072A90)
  {
    sub_2664DEA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072A90);
  }

  return result;
}

SiriAudioSupport::TypeOfIntent_optional __swiftcall TypeOfIntent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TypeOfIntent.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x63697473756F6361;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6964654D6E65706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E696D7265746564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26631E650()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26631E754()
{
  *v0;
  *v0;
  *v0;
  sub_2664E0368();
}

uint64_t sub_26631E844()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

void sub_26631E950(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0x63697473756F6361;
  v5 = 0x80000002664F1900;
  v6 = 0xD000000000000014;
  v7 = 0xD000000000000010;
  v8 = 0x80000002664F1920;
  if (v2 != 3)
  {
    v7 = 0x6964654D6E65706FLL;
    v8 = 0xED00006D65744961;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6E696D7265746564;
    v3 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26631EA10()
{
  if (qword_280F90D20 != -1)
  {
    swift_once();
  }

  v0 = qword_280F90D28;
  v1 = type metadata accessor for STCAuditProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  v12 = &type metadata for SubscriptionProvider;
  v13 = &protocol witness table for SubscriptionProvider;
  v9 = type metadata accessor for AccountProvider();
  v10 = &protocol witness table for AccountProvider;
  *&v8 = v0;
  v6 = v1;
  v7 = &protocol witness table for STCAuditProvider;
  *&v5 = v2;
  type metadata accessor for SiriKitTaskLoggingProvider();
  v3 = swift_allocObject();
  sub_2662A8618(&v11, v3 + 16);
  sub_2662A8618(&v8, v3 + 56);
  sub_2662A8618(&v5, v3 + 96);
  qword_280F91470 = v3;
}

uint64_t sub_26631EB20()
{
  result = AFIsInternalInstall();
  byte_280F91488 = result;
  return result;
}

uint64_t sub_26631EB48(uint64_t a1, uint64_t a2)
{
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v4 = v2[15];
    v5 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v4);
    (*(v5 + 8))(a2, v4, v5);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2664DE7E8();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_26631EC2C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280F91480 != -1)
  {
    result = swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v3 = v1[15];
    v4 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
    (*(v4 + 32))(&v9, v3, v4);
    v5 = v9;
    v6 = v1[15];
    v7 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v6);
    result = (*(v7 + 24))(v6, v7);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_26631ED1C(int a1, uint64_t a2, char *a3)
{
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v46 = v8[2];
  v47 = v18;
  v46(v17, v18, v7);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v6;
    v22 = v12;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "SiriKitTaskLoggingProvider#submitStateType Submitting state", v23, 2u);
    v24 = v23;
    v12 = v22;
    v6 = v21;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = v8[1];
  v25(v17, v7);
  sub_2664DE8D8();

  LOBYTE(v48[0]) = 1;
  sub_2664DE8C8();
  v46(v15, v47, v7);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45 = v15;
    v29 = v28;
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "SiriKitTaskLoggingProvider#submitStateType siriKitEvent created", v28, 2u);
    v15 = v45;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v25(v15, v7);
  v30 = sub_2664DEA08();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v31 = v42[15];
    v32 = v42[16];
    __swift_project_boxed_opaque_existential_1(v42 + 12, v31);
    (*(v32 + 8))(v6, v31, v32);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_2664DE7E8();
  sub_2662A9238(v6, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v46(v12, v47, v7);

  v33 = sub_2664DFE18();
  v34 = sub_2664E06C8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v47 = v25;
    v36 = v35;
    v37 = swift_slowAlloc();
    v48[0] = v37;
    *v36 = 136315138;
    v38 = sub_2664DE898();
    v40 = sub_2662A320C(v38, v39, v48);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_26629C000, v33, v34, "SiriKitTaskLoggingProvider#submitStateType siriKitEvent sent %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v36, -1, -1);

    return v47(v12, v7);
  }

  else
  {

    return (v25)(v12, v7);
  }
}

uint64_t sub_26631F2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a4;
  v58 = a5;
  v59 = a2;
  v60 = a3;
  v67 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v54 - v12;
  v14 = sub_2664DEA08();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v62 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v56 = &v54 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - v25;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  v63 = v19[2];
  v64 = v27;
  v28 = v18;
  v63(v26, v27, v18);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v19;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v29, v30, "SiriKitTaskLoggingProvider#submitActivityType Submitting activity with status reason", v32, 2u);
    v33 = v32;
    v19 = v31;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v68 = v19[1];
  v68(v26, v28);
  sub_2664DE8D8();
  v34 = *(v65 + 16);
  v34(v17, v67, v66);
  sub_2662A7224(v57, v13, &qword_280072AA0, &qword_2664E9EA0);
  v35 = swift_allocObject();
  *(v35 + 16) = v58;
  *(v35 + 24) = a6;

  v36 = v28;
  sub_2664DE888();
  v37 = v56;
  v63(v56, v64, v36);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06C8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_26629C000, v38, v39, "SiriKitTaskLoggingProvider#submitActivityType siriKitEvent created", v40, 2u);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v68(v37, v36);
  v41 = v61;
  v42 = v66;
  v34(v61, v67, v66);
  (*(v65 + 56))(v41, 0, 1, v42);
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  v43 = v62;
  if (byte_280F91488 == 1)
  {
    v44 = v55[15];
    v45 = v55[16];
    __swift_project_boxed_opaque_existential_1(v55 + 12, v44);
    (*(v45 + 8))(v41, v44, v45);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  sub_2664DE7E8();
  sub_2662A9238(v41, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  v63(v43, v64, v36);

  v46 = sub_2664DFE18();
  v47 = sub_2664E06C8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v69[0] = v49;
    *v48 = 136315138;
    v50 = sub_2664DE898();
    v52 = sub_2662A320C(v50, v51, v69);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_26629C000, v46, v47, "SiriKitTaskLoggingProvider#submitActivityType siriKitEvent sent %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);
  }

  else
  {
  }

  return (v68)(v43, v36);
}

uint64_t sub_26631F9B8(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v122 = a8;
  v124 = a7;
  v123 = a6;
  v110 = a5;
  v121 = a3;
  v138 = a2;
  v125 = a1;
  v10 = sub_2664E0038();
  v130 = *(v10 - 8);
  v131 = v10;
  v11 = *(v130 + 64);
  MEMORY[0x28223BE20](v10);
  v128 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2664E00B8();
  v127 = *(v129 - 8);
  v13 = *(v127 + 64);
  MEMORY[0x28223BE20](v129);
  v126 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v117 = *(v15 - 8);
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v120 = &v106 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v115 = *(v17 - 8);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v135 = &v106 - v18;
  v137 = sub_2664E00E8();
  v140 = *(v137 - 8);
  v19 = *(v140 + 64);
  v20 = MEMORY[0x28223BE20](v137);
  v114 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v136 = &v106 - v22;
  v23 = sub_2664DFE38();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v106 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA8, &qword_2664E58D0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v106 - v33;
  sub_2662A7224(a4, &v106 - v33, &qword_280072AA8, &qword_2664E58D0);
  v35 = sub_2664DEAB8();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_2662A9238(v34, &qword_280072AA8, &qword_2664E58D0);
    v113 = 0;
    v119 = 0;
  }

  else
  {
    v113 = sub_2664DEAA8();
    v119 = v37;
    (*(v36 + 8))(v34, v35);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  v39 = v24;
  v40 = *(v24 + 16);
  v40(v30, v38, v23);
  v41 = sub_2664DFE18();
  v42 = sub_2664E06E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_26629C000, v41, v42, "SiriKitTaskLoggingProvider#submitMetric Submitting metrics", v43, 2u);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v44 = *(v39 + 8);
  v111 = v39 + 8;
  v108 = v44;
  v44(v30, v23);
  v134 = sub_266329994();
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  v45 = *(off_280073BF8 + 3);

  sub_266466830(&aBlock);

  v46 = type metadata accessor for AdditionalPlaybackContext();
  v47 = swift_dynamicCast();
  v48 = MEMORY[0x277D84F90];
  if (v47)
  {
    v112 = v147;
  }

  else
  {
    v49 = *(v46 + 48);
    v50 = *(v46 + 52);
    v51 = swift_allocObject();
    v52 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    v53 = sub_2664DF0D8();
    (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
    *(v51 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = v48;
    *(v51 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    v112 = v51;
    *(v51 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  }

  v54 = v28;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    v133 = sub_2664DFAA8();
    v56 = v55;

    if (static SiriEnvironmentWrapper.retrieve()())
    {
LABEL_15:
      sub_2664DF4C8();

      v132 = sub_2664DE7C8();
      v58 = v57;

      goto LABEL_18;
    }
  }

  else
  {
    v133 = 0;
    v56 = 0;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      goto LABEL_15;
    }
  }

  v132 = 0;
  v58 = 0;
LABEL_18:
  v40(v28, v38, v23);

  v59 = sub_2664DFE18();
  v60 = sub_2664E06E8();

  v61 = os_log_type_enabled(v59, v60);
  v109 = v56;
  v107 = v58;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v147 = v63;
    *v62 = 136446466;
    aBlock = v133;
    v142 = v56;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v64 = sub_2664E0318();
    v66 = v54;
    v67 = sub_2662A320C(v64, v65, &v147);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2082;
    aBlock = v132;
    v142 = v58;

    v68 = sub_2664E0318();
    v70 = sub_2662A320C(v68, v69, &v147);

    *(v62 + 14) = v70;
    _os_log_impl(&dword_26629C000, v59, v60, "SiriKitTaskLoggingProvider#submit (app) using interactionId: '%{public}s' and taskId: '%{public}s'", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v63, -1, -1);
    MEMORY[0x266784AD0](v62, -1, -1);

    v71 = v66;
  }

  else
  {

    v71 = v28;
  }

  v108(v71, v23);
  v72 = v121;
  v73 = v139;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v74 = v73[15];
    v75 = v73[16];
    __swift_project_boxed_opaque_existential_1(v73 + 12, v74);
    (*(v75 + 8))(v72, v74, v75);
  }

  LODWORD(v108) = a9;
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v111 = qword_280F90D38;
  v76 = v114;
  sub_2664E00C8();
  sub_2664E0138();
  v77 = *(v140 + 8);
  v140 += 8;
  v121 = v77;
  v77(v76, v137);
  sub_2662A7224(v72, v135, &qword_280072A98, &unk_2664E58C0);
  v78 = v120;
  sub_2662A7224(v110, v120, &qword_280072AA0, &qword_2664E9EA0);
  v79 = (*(v115 + 80) + 49) & ~*(v115 + 80);
  v80 = (v116 + *(v117 + 80) + v79) & ~*(v117 + 80);
  v81 = (v118 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v88 = v138;
  v87 = v139;
  *(v86 + 16) = v134;
  *(v86 + 24) = v87;
  v89 = v122;
  *(v86 + 32) = v88;
  *(v86 + 40) = v89;
  *(v86 + 48) = v108 & 1;
  sub_266319B8C(v135, v86 + v79, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v78, v86 + v80, &qword_280072AA0, &qword_2664E9EA0);
  *(v86 + v81) = v125;
  v90 = (v86 + v82);
  v91 = v119;
  *v90 = v113;
  v90[1] = v91;
  v92 = (v86 + v83);
  v93 = v124;
  *v92 = v123;
  v92[1] = v93;
  v94 = (v86 + v84);
  v95 = v109;
  *v94 = v133;
  v94[1] = v95;
  v96 = (v86 + v85);
  v97 = v107;
  *v96 = v132;
  v96[1] = v97;
  *(v86 + ((v85 + 23) & 0xFFFFFFFFFFFFFFF8)) = v112;
  v145 = sub_266329C84;
  v146 = v86;
  aBlock = MEMORY[0x277D85DD0];
  v142 = 1107296256;
  v143 = sub_2662A3F90;
  v144 = &block_descriptor_9;
  v98 = _Block_copy(&aBlock);

  v99 = v134;

  v100 = v138;

  v101 = v126;
  sub_2664E0068();
  v147 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v102 = v128;
  v103 = v131;
  sub_2664E0A08();
  v104 = v136;
  MEMORY[0x2667837B0](v136, v101, v102, v98);
  _Block_release(v98);

  (*(v130 + 8))(v102, v103);
  (*(v127 + 8))(v101, v129);
  v121(v104, v137);
}

uint64_t sub_266320854(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, void (*a12)(_BYTE *, uint64_t))
{
  v120 = a8;
  v122 = a7;
  v121 = a6;
  v109 = a5;
  v118 = a3;
  v136 = a2;
  v123 = a1;
  v14 = sub_2664E0038();
  v128 = *(v14 - 8);
  v129 = v14;
  v15 = *(v128 + 64);
  MEMORY[0x28223BE20](v14);
  v126 = &v102[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_2664E00B8();
  v125 = *(v127 - 8);
  v17 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v124 = &v102[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v115 = *(v19 - 8);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v117 = &v102[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v113 = *(v21 - 8);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v133 = &v102[-v22];
  v135 = sub_2664E00E8();
  v138 = *(v135 - 8);
  v23 = *(v138 + 64);
  v24 = MEMORY[0x28223BE20](v135);
  v111 = &v102[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v134 = &v102[-v26];
  v27 = sub_2664DFE38();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v131 = &v102[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v33 = &v102[-v32];
  if (a4)
  {
    v34 = [a4 catId];
    v112 = sub_2664E02C8();
    v119 = v35;
  }

  else
  {
    v112 = 0;
    v119 = 0;
  }

  v137 = v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v27, qword_280F914F0);
  swift_beginAccess();
  v37 = v28[2];
  v37(v33, v36, v27);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_26629C000, v38, v39, "SiriKitTaskLoggingProvider#submitMetric Submitting metrics", v40, 2u);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v106 = v28[1];
  v106(v33, v27);
  v132 = sub_266329994();
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  v41 = *(off_280073BF8 + 3);

  sub_266466830(&aBlock);

  v42 = type metadata accessor for AdditionalPlaybackContext();
  v43 = swift_dynamicCast();
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v110 = v145;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
LABEL_12:
      sub_2664DF4D8();

      v45 = sub_2664DFAA8();
      v47 = v46;

      goto LABEL_15;
    }
  }

  else
  {
    v48 = *(v42 + 48);
    v49 = *(v42 + 52);
    v50 = swift_allocObject();
    v51 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    v52 = sub_2664DF0D8();
    (*(*(v52 - 8) + 56))(v50 + v51, 1, 1, v52);
    *(v50 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = v44;
    *(v50 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    v110 = v50;
    *(v50 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      goto LABEL_12;
    }
  }

  v45 = 0;
  v47 = 0;
LABEL_15:
  v53 = v27;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4C8();

    v130 = sub_2664DE7C8();
    v55 = v54;
  }

  else
  {
    v130 = 0;
    v55 = 0;
  }

  v37(v131, v36, v53);

  v56 = sub_2664DFE18();
  v57 = sub_2664E06E8();

  v58 = os_log_type_enabled(v56, v57);
  v108 = v45;
  v107 = v47;
  v105 = v55;
  if (v58)
  {
    v59 = v47;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v145 = v61;
    *v60 = 136446466;
    aBlock = v45;
    v140 = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v62 = sub_2664E0318();
    v64 = sub_2662A320C(v62, v63, &v145);

    *(v60 + 4) = v64;
    *(v60 + 12) = 2082;
    aBlock = v130;
    v140 = v55;

    v65 = sub_2664E0318();
    v67 = sub_2662A320C(v65, v66, &v145);

    *(v60 + 14) = v67;
    _os_log_impl(&dword_26629C000, v56, v57, "SiriKitTaskLoggingProvider#submit (app) using interactionId: '%{public}s' and taskId: '%{public}s'", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v61, -1, -1);
    MEMORY[0x266784AD0](v60, -1, -1);
  }

  v106(v131, v53);
  v68 = v118;
  v69 = v137;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v70 = v69[15];
    v71 = v69[16];
    __swift_project_boxed_opaque_existential_1(v69 + 12, v70);
    (*(v71 + 8))(v68, v70, v71);
  }

  v106 = a12;
  v104 = a11;
  v103 = a9;
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v118 = qword_280F90D38;
  v72 = v111;
  sub_2664E00C8();
  sub_2664E0138();
  v73 = *(v138 + 8);
  v138 += 8;
  v131 = v73;
  (v73)(v72, v135);
  sub_2662A7224(v68, v133, &qword_280072A98, &unk_2664E58C0);
  v74 = v117;
  sub_2662A7224(v109, v117, &qword_280072AA0, &qword_2664E9EA0);
  v75 = (*(v113 + 80) + 49) & ~*(v113 + 80);
  v76 = (v114 + *(v115 + 80) + v75) & ~*(v115 + 80);
  v77 = (v116 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v84 = v136;
  v83 = v137;
  *(v82 + 16) = v132;
  *(v82 + 24) = v83;
  v85 = v120;
  *(v82 + 32) = v84;
  *(v82 + 40) = v85;
  *(v82 + 48) = v103 & 1;
  sub_266319B8C(v133, v82 + v75, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v74, v82 + v76, &qword_280072AA0, &qword_2664E9EA0);
  *(v82 + v77) = v123;
  v86 = (v82 + v78);
  v87 = v119;
  *v86 = v112;
  v86[1] = v87;
  v88 = (v82 + v79);
  v89 = v122;
  *v88 = v121;
  v88[1] = v89;
  v90 = (v82 + v80);
  v91 = v107;
  *v90 = v108;
  v90[1] = v91;
  v92 = (v82 + v81);
  v93 = v105;
  *v92 = v130;
  v92[1] = v93;
  *(v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8)) = v110;
  v143 = v104;
  v144 = v82;
  aBlock = MEMORY[0x277D85DD0];
  v140 = 1107296256;
  v141 = sub_2662A3F90;
  v142 = v106;
  v94 = _Block_copy(&aBlock);

  v95 = v132;

  v96 = v136;

  v97 = v124;
  sub_2664E0068();
  v145 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v98 = v126;
  v99 = v129;
  sub_2664E0A08();
  v100 = v134;
  MEMORY[0x2667837B0](v134, v97, v98, v94);
  _Block_release(v94);

  (*(v128 + 8))(v98, v99);
  (*(v125 + 8))(v97, v127);
  (v131)(v100, v135);
}

uint64_t sub_266321590(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA8, &qword_2664E58D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22[-v14];
  v23 = *a1;
  sub_2662A7224(a3, &v22[-v14], &qword_280072AA8, &qword_2664E58D0);
  v16 = sub_2664DEAB8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2662A9238(v15, &qword_280072AA8, &qword_2664E58D0);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = sub_2664DEAA8();
    v19 = v20;
    (*(v17 + 8))(v15, v16);
  }

  sub_2663217FC(&v23, a2, v18, v19, a4, a5, a6);
}

uint64_t sub_266321734(unsigned __int8 *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *a1;
  if (a3)
  {
    v9 = a2;
    v10 = [a3 catId];
    v11 = sub_2664E02C8();
    v13 = v12;

    a2 = v9;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_2663217FC(&v15, a2, v11, v13, a4, a5, a6);
}

uint64_t sub_2663217FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v100 = a7;
  v99 = a6;
  v87 = a5;
  v101 = a4;
  v98 = a3;
  v97 = a2;
  v8 = sub_2664E0038();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  MEMORY[0x28223BE20](v8);
  v104 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2664E00B8();
  v103 = *(v105 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v94 = *(v13 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v91 = *(v15 - 8);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = &v84 - v16;
  v17 = sub_2664E00E8();
  v18 = *(v17 - 8);
  v113 = v17;
  v114 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v89 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v112 = &v84 - v22;
  v23 = sub_2664DFE38();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v84 - v29;
  v90 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  v32 = v24[2];
  v32(v30, v31, v23);
  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v28;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26629C000, v33, v34, "SiriKitTaskLoggingProvider#submit Submitting metrics", v36, 2u);
    v37 = v36;
    v28 = v35;
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  v85 = v24[1];
  v85(v30, v23);
  v111 = sub_266329994();
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    v38 = sub_2664DFAA8();
    v110 = v39;

    if (static SiriEnvironmentWrapper.retrieve()())
    {
LABEL_7:
      sub_2664DF4C8();

      v108 = sub_2664DE7C8();
      v41 = v40;

      goto LABEL_10;
    }
  }

  else
  {
    v38 = 0;
    v110 = 0;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      goto LABEL_7;
    }
  }

  v108 = 0;
  v41 = 0;
LABEL_10:
  v42 = v110;
  v32(v28, v31, v23);

  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();

  v45 = os_log_type_enabled(v43, v44);
  v88 = v38;
  v86 = v41;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v84 = v28;
    v47 = v46;
    v48 = swift_slowAlloc();
    v115 = v48;
    aBlock = v38;
    *v47 = 136446466;
    v117 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v49 = sub_2664E0318();
    v51 = sub_2662A320C(v49, v50, &v115);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2082;
    aBlock = v108;
    v117 = v41;

    v52 = sub_2664E0318();
    v54 = sub_2662A320C(v52, v53, &v115);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_26629C000, v43, v44, "SiriKitTaskLoggingProvider#submit (typeof) using interactionId: '%{public}s' and taskId: '%{public}s'", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);

    v55 = v84;
  }

  else
  {

    v55 = v28;
  }

  v85(v55, v23);
  v56 = v97;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v57 = v109[15];
    v58 = v109[16];
    __swift_project_boxed_opaque_existential_1(v109 + 12, v57);
    (*(v58 + 8))(v56, v57, v58);
  }

  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v84 = qword_280F90D38;
  v59 = v89;
  sub_2664E00C8();
  sub_2664E0138();
  v60 = *(v114 + 8);
  v114 += 8;
  v85 = v60;
  v60(v59, v113);
  v61 = v93;
  sub_2662A7224(v56, v93, &qword_280072A98, &unk_2664E58C0);
  v62 = v96;
  sub_2662A7224(v87, v96, &qword_280072AA0, &qword_2664E9EA0);
  v63 = (*(v91 + 80) + 40) & ~*(v91 + 80);
  v64 = (v92 + *(v94 + 80) + v63) & ~*(v94 + 80);
  v65 = (v95 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  *(v68 + 16) = v109;
  *(v68 + 24) = v90;
  *(v68 + 32) = v111;
  sub_266319B8C(v61, v68 + v63, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v62, v68 + v64, &qword_280072AA0, &qword_2664E9EA0);
  v69 = (v68 + v65);
  v70 = v101;
  *v69 = v98;
  v69[1] = v70;
  v71 = (v68 + v66);
  v72 = v100;
  *v71 = v99;
  v71[1] = v72;
  v73 = (v68 + v67);
  v74 = v110;
  *v73 = v88;
  v73[1] = v74;
  v75 = (v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8));
  v76 = v86;
  *v75 = v108;
  v75[1] = v76;
  v120 = sub_26632BA98;
  v121 = v68;
  aBlock = MEMORY[0x277D85DD0];
  v117 = 1107296256;
  v118 = sub_2662A3F90;
  v119 = &block_descriptor_64;
  v77 = _Block_copy(&aBlock);

  v78 = v111;

  v79 = v102;
  sub_2664E0068();
  v115 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v80 = v104;
  v81 = v107;
  sub_2664E0A08();
  v82 = v112;
  MEMORY[0x2667837B0](v112, v79, v80, v77);
  _Block_release(v77);

  (*(v106 + 8))(v80, v81);
  (*(v103 + 8))(v79, v105);
  v85(v82, v113);
}

uint64_t sub_266322328(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v169 = a8;
  v179 = a7;
  v175 = a6;
  v166 = a5;
  v164 = a4;
  v170 = a3;
  v172 = a1;
  v168 = sub_2664DEA08();
  v167 = *(v168 - 8);
  v14 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v159 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v163 = *(v16 - 8);
  v17 = *(v163 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v158 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v189 = &v153 - v20;
  MEMORY[0x28223BE20](v19);
  v165 = &v153 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v162 = *(v22 - 8);
  v23 = *(v162 + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v160 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v155 = &v153 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v153 - v28;
  MEMORY[0x28223BE20](v27);
  v178 = &v153 - v30;
  v176 = sub_2664DE4A8();
  v31 = *(v176 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v176);
  v34 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2664DFE38();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v161 = &v153 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v157 = &v153 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v156 = &v153 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v154 = &v153 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v153 - v46;
  v177 = a2;
  LOBYTE(v192) = a2;
  v185 = sub_26632A4E8(0, &v192);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v35, qword_280F914F0);
  swift_beginAccess();
  v49 = v36;
  v50 = *(v36 + 16);
  v182 = v48;
  v181 = v36 + 16;
  v180 = v50;
  v50(v47, v48, v35);
  v51 = sub_2664DFE18();
  v52 = sub_2664E06C8();
  v53 = os_log_type_enabled(v51, v52);
  v184 = v35;
  if (v53)
  {
    v54 = swift_slowAlloc();
    *v54 = 67109120;
    *(v54 + 4) = v185;
    _os_log_impl(&dword_26629C000, v51, v52, "SiriKitTaskLoggingProvider#submit flowTaskType established %d", v54, 8u);
    v55 = v54;
    v35 = v184;
    MEMORY[0x266784AD0](v55, -1, -1);
  }

  v186 = a13;
  v174 = a12;
  v187 = a11;
  v173 = a10;
  v188 = a9;

  v56 = *(v49 + 8);
  v171 = v49 + 8;
  v183 = v56;
  v56(v47, v35);
  v57 = v170;
  if (v170)
  {
    sub_2664DE498();
    v58 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v59 = sub_2664DE478();
    v60 = [v58 initWithNSUUID_];

    v61 = *(v31 + 8);
    v61(v34, v176);
    [v57 setLinkId_];

    v62 = [v57 radioStationContext];
    if (v62)
    {
      v63 = v62;
      sub_2664DE498();
      v64 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v65 = sub_2664DE478();
      v66 = [v64 initWithNSUUID_];

      v61(v34, v176);
      [v63 &selRef:v66 activateWithCompletion:?];
    }
  }

  v67 = v178;
  sub_2662A7224(v164, v178, &qword_280072A98, &unk_2664E58C0);
  v68 = v165;
  sub_2662A7224(v166, v165, &qword_280072AA0, &qword_2664E9EA0);
  v176 = v29;
  sub_2662A7224(v67, v29, &qword_280072A98, &unk_2664E58C0);
  sub_2662A7224(v68, v189, &qword_280072AA0, &qword_2664E9EA0);
  v69 = (*(v162 + 80) + 17) & ~*(v162 + 80);
  v70 = (v23 + *(v163 + 80) + v69) & ~*(v163 + 80);
  v71 = (v17 + v70 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v72 = (v71 + 11) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  *(v77 + 16) = v177;
  sub_266319B8C(v178, v77 + v69, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v68, v77 + v70, &qword_280072AA0, &qword_2664E9EA0);
  *(v77 + v71) = v185;
  v78 = (v77 + v72);
  v79 = v179;
  *v78 = v175;
  v78[1] = v79;
  v80 = (v77 + v73);
  v81 = v169;
  v83 = v187;
  v82 = v188;
  *v80 = v169;
  v80[1] = v82;
  v84 = (v77 + v74);
  *v84 = v173;
  v84[1] = v83;
  v85 = (v77 + v75);
  v86 = v186;
  *v85 = v174;
  v85[1] = v86;
  v87 = v172;
  v178 = v77;
  *(v77 + v76) = v172;
  v88 = qword_280F90B20;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if (v88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v192);
  v89 = v193;
  v90 = v194;
  __swift_project_boxed_opaque_existential_1(&v192, v193);
  v91 = (v90[2])(v89, v90);
  v93 = v92;
  __swift_destroy_boxed_opaque_existential_1Tm(&v192);
  v94 = type metadata accessor for AirPlayRouteProvider();
  v95 = swift_allocObject();
  type metadata accessor for AirPlayRouteSetupContext();
  v96 = static AirPlayRouteSetupContext.shared(refId:)(v91, v93);

  *(v95 + 16) = v96;
  v193 = v94;
  v194 = &protocol witness table for AirPlayRouteProvider;
  v192 = v95;
  v97 = objc_allocWithZone(MEMORY[0x277D57520]);

  v98 = [v97 init];
  v99 = v184;
  v166 = v95;
  if (v98)
  {
    v100 = v98;
    v101 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v101)
    {
      v102 = v101;
      v103 = v154;
      if (v170)
      {
        v104 = v170;
        if (_s16SiriAudioSupport34MediaPlayerPlaybackContextProviderC10isNotEmpty08playbackG0SbSo019FLOWSchemaFLOWMediaefG0C_tFZ_0(v104))
        {
          [v102 setMediaPlayerPlaybackContext_];

LABEL_29:
          [v102 setMediaType_];
          [v102 clearActiveSubscriptions];
          [v102 setTaskType_];
          v118 = v87[5];
          v119 = v87[6];
          __swift_project_boxed_opaque_existential_1(v87 + 2, v118);
          sub_2662A5550(&v192, &v190);
          v120 = swift_allocObject();
          v120[2] = v102;
          v120[3] = 0;
          sub_2662A8618(&v190, (v120 + 4));
          v120[9] = v100;
          v120[10] = sub_26632BBF0;
          v120[11] = v178;
          v121 = *(v119 + 16);
          v122 = v102;
          v123 = v100;

          v121(0, sub_2662AB530, v120, v118, v119);

          goto LABEL_47;
        }
      }

      v180(v103, v182, v99);
      v115 = sub_2664DFE18();
      v116 = sub_2664E06D8();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_26629C000, v115, v116, "SiriKitTaskLoggingProvider#createFLOWDomainContext mediaPlayerPlaybackContext empty, not attaching to mediaPlayerContext", v117, 2u);
        MEMORY[0x266784AD0](v117, -1, -1);
      }

      v183(v103, v99);
      goto LABEL_29;
    }
  }

  v105 = v156;
  v180(v156, v182, v99);
  v106 = sub_2664DFE18();
  v107 = sub_2664E06D8();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_26629C000, v106, v107, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v108, 2u);
    MEMORY[0x266784AD0](v108, -1, -1);
  }

  v183(v105, v99);
  if (v177 > 1u || v177)
  {
    v110 = sub_2664E0D88();

    v109 = v176;
    if (v110)
    {
      goto LABEL_22;
    }

    if (v177 == 1)
    {
      v111 = v79;
      v114 = v176;

      v109 = v114;
      v112 = v172;
LABEL_32:
      v113 = v167;
      v81 = v169;
      goto LABEL_33;
    }

    v124 = sub_2664E0D88();

    if (v124)
    {
      v111 = v79;
      v112 = v172;
      v109 = v176;
      goto LABEL_32;
    }

    v151 = v176;
    if (v177 <= 1u)
    {
      v111 = v79;
    }

    else
    {
      v111 = v79;
      if (v177 == 2)
      {

        v112 = v172;
        v113 = v167;
        v81 = v169;
        v125 = v155;
        v126 = v168;
        goto LABEL_55;
      }
    }

    v112 = v172;
    v113 = v167;
    v125 = v155;
    v126 = v168;
    v152 = sub_2664E0D88();

    v81 = v169;
    if ((v152 & 1) == 0)
    {
      v109 = v151;
      goto LABEL_34;
    }

LABEL_55:
    v109 = v151;
    goto LABEL_34;
  }

  v109 = v176;
LABEL_22:
  v111 = v79;
  v112 = v172;
  v113 = v167;
LABEL_33:
  v125 = v155;
  v126 = v168;
LABEL_34:
  sub_2662A7224(v109, v125, &qword_280072A98, &unk_2664E58C0);
  v127 = *(v113 + 48);
  if (v127(v125, 1, v126) == 1)
  {
    (*(v113 + 104))(v159, *MEMORY[0x277D5BBE8], v126);
    if (v127(v125, 1, v126) != 1)
    {
      sub_2662A9238(v125, &qword_280072A98, &unk_2664E58C0);
    }
  }

  else
  {
    (*(v113 + 32))(v159, v125, v126);
  }

  sub_2664DE8D8();
  sub_2662A7224(v189, v158, &qword_280072AA0, &qword_2664E9EA0);
  v128 = swift_allocObject();
  *(v128 + 16) = v185;
  v129 = v175;
  *(v128 + 24) = 0;
  *(v128 + 32) = v129;
  *(v128 + 40) = v111;
  *(v128 + 48) = v81;
  v130 = v187;
  v131 = v173;
  *(v128 + 56) = v188;
  *(v128 + 64) = v131;
  v132 = v174;
  *(v128 + 72) = v130;
  *(v128 + 80) = v132;
  *(v128 + 88) = v186;

  sub_2664DE888();
  v133 = v157;
  v134 = v184;
  v180(v157, v182, v184);
  v135 = sub_2664DFE18();
  v136 = sub_2664E06C8();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    _os_log_impl(&dword_26629C000, v135, v136, "SiriKitTaskLoggingProvider#submit siriKitEvent created", v137, 2u);
    MEMORY[0x266784AD0](v137, -1, -1);
  }

  v183(v133, v134);
  v138 = v160;
  (*(v167 + 56))(v160, 1, 1, v168);
  v139 = v161;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v140 = v112[15];
    v141 = v112[16];
    __swift_project_boxed_opaque_existential_1(v112 + 12, v140);
    (*(v141 + 8))(v138, v140, v141);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(&v190, v191);
  sub_2664DE7E8();
  sub_2662A9238(v138, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(&v190);
  v180(v139, v182, v134);

  v142 = sub_2664DFE18();
  v143 = sub_2664E06C8();

  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *&v190 = v145;
    *v144 = 136315138;
    v146 = sub_2664DE898();
    v148 = v134;
    v149 = sub_2662A320C(v146, v147, &v190);

    *(v144 + 4) = v149;
    _os_log_impl(&dword_26629C000, v142, v143, "SiriKitTaskLoggingProvider#submit siriKitEvent sent %s", v144, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v145);
    MEMORY[0x266784AD0](v145, -1, -1);
    MEMORY[0x266784AD0](v144, -1, -1);

    v183(v161, v148);
  }

  else
  {

    v183(v139, v134);
  }

LABEL_47:
  __swift_destroy_boxed_opaque_existential_1Tm(&v192);

  sub_2662A9238(v176, &qword_280072A98, &unk_2664E58C0);
  sub_2662A9238(v189, &qword_280072AA0, &qword_2664E9EA0);
}

uint64_t sub_26632390C(void *a1, char a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v76 = a6;
  v77 = a8;
  v75 = a5;
  v74 = a4;
  v78 = a1;
  v17 = sub_2664DFE38();
  v86 = *(v17 - 8);
  v18 = v86[8];
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v73 = &v68 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v85 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v68 - v29;
  v83 = sub_2664DEA08();
  v31 = *(v83 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = v17;
  v79 = a7;
  v72 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_20;
  }

  v34 = sub_2664E0D88();

  if (v34)
  {
    goto LABEL_3;
  }

  if (a2 == 1)
  {
    goto LABEL_20;
  }

  v67 = sub_2664E0D88();

  if ((v67 & 1) == 0)
  {
    if (a2 == 2)
    {
LABEL_20:

      goto LABEL_3;
    }

    sub_2664E0D88();
  }

LABEL_3:
  v71 = a13;
  v70 = a12;
  v69 = a10;
  sub_2662A7224(a3, v30, &qword_280072A98, &unk_2664E58C0);
  v35 = *(v31 + 48);
  v36 = v83;
  v37 = v35(v30, 1, v83);
  v80 = v31;
  if (v37 == 1)
  {
    (*(v31 + 104))(v72, *MEMORY[0x277D5BBE8], v36);
    if (v35(v30, 1, v36) != 1)
    {
      sub_2662A9238(v30, &qword_280072A98, &unk_2664E58C0);
    }
  }

  else
  {
    (*(v31 + 32))(v72, v30, v36);
  }

  sub_2664DE8D8();
  sub_2662A7224(v74, v73, &qword_280072AA0, &qword_2664E9EA0);
  v38 = swift_allocObject();
  *(v38 + 16) = v75;
  v40 = v78;
  v39 = v79;
  v42 = v76;
  v41 = v77;
  *(v38 + 24) = v78;
  *(v38 + 32) = v42;
  *(v38 + 40) = v39;
  *(v38 + 48) = v41;
  v43 = v69;
  *(v38 + 56) = a9;
  *(v38 + 64) = v43;
  v44 = v70;
  *(v38 + 72) = a11;
  *(v38 + 80) = v44;
  *(v38 + 88) = v71;

  v45 = v40;

  sub_2664DE888();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v46 = v82;
  v47 = __swift_project_value_buffer(v82, qword_280F914F0);
  swift_beginAccess();
  v48 = v86[2];
  v48(v84, v47, v46);
  v49 = sub_2664DFE18();
  v50 = sub_2664E06C8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26629C000, v49, v50, "SiriKitTaskLoggingProvider#submit siriKitEvent created", v51, 2u);
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  v52 = v86[1];
  ++v86;
  v52(v84, v46);
  (*(v80 + 56))(v85, 1, 1, v83);
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  v53 = v81;
  if (byte_280F91488 == 1)
  {
    v54 = a14[15];
    v55 = a14[16];
    __swift_project_boxed_opaque_existential_1(a14 + 12, v54);
    (*(v55 + 8))(v85, v54, v55);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  sub_2664DE7E8();
  sub_2662A9238(v85, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  v48(v53, v47, v46);

  v56 = sub_2664DFE18();
  v57 = sub_2664E06C8();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v87[0] = v59;
    *v58 = 136315138;
    v60 = sub_2664DE898();
    v62 = v46;
    v63 = sub_2662A320C(v60, v61, v87);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_26629C000, v56, v57, "SiriKitTaskLoggingProvider#submit siriKitEvent sent %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x266784AD0](v59, -1, -1);
    MEMORY[0x266784AD0](v58, -1, -1);

    v64 = v53;
    v65 = v62;
  }

  else
  {

    v64 = v53;
    v65 = v46;
  }

  return (v52)(v64, v65);
}

uint64_t sub_266324324(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  sub_2664E08A8();
  sub_2664DE878();
  v5 = a3;
  sub_2664DE828();

  sub_2664DE818();

  sub_2664DE848();

  sub_2664DE838();

  return sub_2664DE868();
}

uint64_t sub_2663243EC(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v114 = a8;
  v113 = a7;
  v103 = a6;
  v116 = a5;
  v112 = a4;
  v111 = a3;
  v129 = a2;
  v115 = a1;
  v10 = sub_2664E0038();
  v121 = *(v10 - 8);
  v122 = v10;
  v11 = *(v121 + 64);
  MEMORY[0x28223BE20](v10);
  v119 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2664E00B8();
  v118 = *(v120 - 8);
  v13 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v117 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v108 = *(v15 - 8);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v110 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v106 = *(v17 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v126 = &v97 - v18;
  v128 = sub_2664E00E8();
  v131 = *(v128 - 8);
  v19 = *(v131 + 64);
  v20 = MEMORY[0x28223BE20](v128);
  v105 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v127 = &v97 - v22;
  v23 = sub_2664DFE38();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v97 - v29;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  v32 = v24[2];
  v32(v30, v31, v23);
  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_26629C000, v33, v34, "SiriKitTaskLoggingProvider#submitMetric Submitting metrics", v35, 2u);
    MEMORY[0x266784AD0](v35, -1, -1);
  }

  v101 = v24[1];
  v101(v30, v23);
  v125 = sub_266329994();
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  v36 = *(off_280073BF8 + 3);

  sub_266466830(&aBlock);

  v37 = type metadata accessor for AdditionalPlaybackContext();
  v38 = swift_dynamicCast();
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v104 = v138;
  }

  else
  {
    v40 = *(v37 + 48);
    v41 = *(v37 + 52);
    v42 = swift_allocObject();
    v43 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    v44 = sub_2664DF0D8();
    (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = v39;
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    v104 = v42;
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  }

  v45 = v28;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    v124 = sub_2664DFAA8();
    v47 = v46;

    if (static SiriEnvironmentWrapper.retrieve()())
    {
LABEL_12:
      sub_2664DF4C8();

      v123 = sub_2664DE7C8();
      v49 = v48;

      goto LABEL_15;
    }
  }

  else
  {
    v124 = 0;
    v47 = 0;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      goto LABEL_12;
    }
  }

  v123 = 0;
  v49 = 0;
LABEL_15:
  v32(v45, v31, v23);

  v50 = sub_2664DFE18();
  v51 = sub_2664E06E8();

  v52 = os_log_type_enabled(v50, v51);
  v102 = v47;
  v100 = v49;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v47;
    v56 = v54;
    v138 = v54;
    *v53 = 136446466;
    aBlock = v124;
    v133 = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v57 = sub_2664E0318();
    v99 = v45;
    v59 = sub_2662A320C(v57, v58, &v138);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2082;
    aBlock = v123;
    v133 = v49;

    v60 = sub_2664E0318();
    v62 = sub_2662A320C(v60, v61, &v138);

    *(v53 + 14) = v62;
    _os_log_impl(&dword_26629C000, v50, v51, "SiriKitTaskLoggingProvider#submit (app) using interactionId: '%{public}s' and taskId: '%{public}s'", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v56, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);

    v63 = v99;
  }

  else
  {

    v63 = v45;
  }

  v101(v63, v23);
  v64 = v111;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v65 = v130[15];
    v66 = v130[16];
    __swift_project_boxed_opaque_existential_1(v130 + 12, v65);
    (*(v66 + 8))(v64, v65, v66);
  }

  LODWORD(v99) = a10;
  v98 = a9;
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v101 = qword_280F90D38;
  v67 = v105;
  sub_2664E00C8();
  sub_2664E0138();
  v68 = *(v131 + 8);
  v131 += 8;
  v111 = v68;
  v68(v67, v128);
  sub_2662A7224(v64, v126, &qword_280072A98, &unk_2664E58C0);
  v69 = v110;
  sub_2662A7224(v103, v110, &qword_280072AA0, &qword_2664E9EA0);
  v70 = (*(v106 + 80) + 49) & ~*(v106 + 80);
  v71 = (v107 + *(v108 + 80) + v70) & ~*(v108 + 80);
  v72 = (v109 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v79 = v129;
  v78 = v130;
  *(v77 + 16) = v125;
  *(v77 + 24) = v78;
  v80 = v98;
  *(v77 + 32) = v79;
  *(v77 + 40) = v80;
  *(v77 + 48) = v99 & 1;
  sub_266319B8C(v126, v77 + v70, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v69, v77 + v71, &qword_280072AA0, &qword_2664E9EA0);
  *(v77 + v72) = v115;
  v81 = (v77 + v73);
  v82 = v116;
  *v81 = v112;
  v81[1] = v82;
  v83 = (v77 + v74);
  v84 = v114;
  *v83 = v113;
  v83[1] = v84;
  v85 = (v77 + v75);
  v86 = v102;
  *v85 = v124;
  v85[1] = v86;
  v87 = (v77 + v76);
  v88 = v100;
  *v87 = v123;
  v87[1] = v88;
  *(v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8)) = v104;
  v136 = sub_26632C278;
  v137 = v77;
  aBlock = MEMORY[0x277D85DD0];
  v133 = 1107296256;
  v134 = sub_2662A3F90;
  v135 = &block_descriptor_98;
  v89 = _Block_copy(&aBlock);

  v90 = v125;

  v91 = v129;

  v92 = v117;
  sub_2664E0068();
  v138 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v93 = v119;
  v94 = v122;
  sub_2664E0A08();
  v95 = v127;
  MEMORY[0x2667837B0](v127, v92, v93, v89);
  _Block_release(v89);

  (*(v121 + 8))(v93, v94);
  (*(v118 + 8))(v92, v120);
  v111(v95, v128);
}

uint64_t sub_2663250BC(void *a1, void (*a2)(char *, uint64_t), void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v142 = a4;
  v143 = a5;
  v139 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v144 = &v132 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v132 - v14;
  v16 = sub_2664DF0D8();
  v140 = *(v16 - 8);
  v141 = v16;
  v17 = *(v140 + 64);
  MEMORY[0x28223BE20](v16);
  v138 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2664DFE38();
  v19 = *(v146 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v146);
  v23 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v132 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v132 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v132 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v33);
  v36 = &v132 - v35;
  if (a3)
  {
    if (a6)
    {
      v135 = v34;
      v137 = v19;
      v37 = objc_allocWithZone(MEMORY[0x277D57640]);
      v136 = a6;

      v38 = a3;
      v39 = [v37 init];
      if (v39)
      {
        v40 = v39;
        v41 = [a1 title];
        if (v41)
        {
          v42 = v41;
          v134 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
          if (v134)
          {
            [v40 setContentTitle_];

            [v40 setLinkId_];
            v43 = [a1 identifier];
            [v40 setAdamIdString_];

            v44 = v136;
            [v40 setIsNlsResult_];
            [v40 setIsNlsContainerResult_];
            sub_26632693C(v44, v139);
            sub_2662C1744(0, &qword_280072AD8, 0x277D57630);
            v45 = sub_2664E0488();

            [v40 setSearchResults_];

            v46 = v137;
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v47 = v146;
            v48 = __swift_project_value_buffer(v146, qword_280F914F0);
            swift_beginAccess();
            v133 = *(v46 + 16);
            v133(v36, v48, v47);
            v49 = v40;
            v50 = sub_2664DFE18();
            v51 = sub_2664E06C8();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 67109376;
              *(v52 + 4) = [v49 isNlsResult];
              *(v52 + 8) = 1024;
              *(v52 + 10) = [v49 isNlsContainerResult];

              _os_log_impl(&dword_26629C000, v50, v51, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 setting nls: %{BOOL}d nlsContainer: %{BOOL}d", v52, 0xEu);
              MEMORY[0x266784AD0](v52, -1, -1);
            }

            else
            {

              v50 = v49;
            }

            v86 = v146;
            v139 = *(v46 + 8);
            v137 = v46 + 8;
            v139(v36, v146);
            v87 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
            v88 = v136;
            swift_beginAccess();
            sub_2662A7224(v88 + v87, v15, &qword_280072850, &qword_2664EDE70);
            v89 = v140;
            v90 = v141;
            if ((*(v140 + 48))(v15, 1, v141) == 1)
            {
              sub_2662A9238(v15, &qword_280072850, &qword_2664EDE70);
            }

            else
            {
              v91 = v38;
              v92 = v138;
              (*(v89 + 32))(v138, v15, v90);
              v93 = sub_26632AFB8();
              v95 = v89;
              if (v93)
              {
                v96 = v93;
                v97 = v94;
                [v49 setU2UsoGraph:v93];
                [v49 setU2UsoGraphTier1:v97];
              }

              (*(v95 + 8))(v92, v90);
              v38 = v91;
            }

            [v134 setMediaPlayerPlaybackContextTier1_];
            v98 = v135;
            v133(v135, v48, v86);
            v99 = v49;
            v100 = sub_2664DFE18();
            v101 = sub_2664E06C8();

            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              v147 = v103;
              *v102 = 136315394;
              v104 = [v99 contentTitle];
              if (v104)
              {
                v105 = v104;
                v106 = sub_2664E02C8();
                v108 = v107;
              }

              else
              {
                v106 = 0;
                v108 = 0;
              }

              v148 = v106;
              v149 = v108;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
              v112 = sub_2664E0318();
              v114 = sub_2662A320C(v112, v113, &v147);

              *(v102 + 4) = v114;
              *(v102 + 12) = 2080;
              v115 = [v99 adamIdString];
              if (v115)
              {
                v116 = v101;
                v117 = v99;
                v118 = v103;
                v119 = v38;
                v120 = v115;
                v121 = sub_2664E02C8();
                v123 = v122;

                v38 = v119;
                v103 = v118;
                v99 = v117;
                v101 = v116;
              }

              else
              {
                v121 = 0;
                v123 = 0;
              }

              v148 = v121;
              v149 = v123;
              v124 = sub_2664E0318();
              v126 = sub_2662A320C(v124, v125, &v147);

              *(v102 + 14) = v126;
              _os_log_impl(&dword_26629C000, v100, v101, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 Logging contentTitle: %s adamIdString: %s", v102, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266784AD0](v103, -1, -1);
              MEMORY[0x266784AD0](v102, -1, -1);

              v109 = v135;
              v110 = v146;
            }

            else
            {

              v109 = v98;
              v110 = v86;
            }

            v139(v109, v110);
            v127 = v144;
            sub_2664DE8D8();

            v128 = v134;
            sub_2664DE8A8();
            v129 = sub_2664DEA08();
            (*(*(v129 - 8) + 56))(v127, 1, 1, v129);
            if (qword_280F91480 != -1)
            {
              swift_once();
            }

            if (byte_280F91488 == 1)
            {
              v130 = v145[15];
              v131 = v145[16];
              __swift_project_boxed_opaque_existential_1(v145 + 12, v130);
              (*(v131 + 8))(v127, v130, v131);
            }

            sub_2664DE7D8();
            __swift_project_boxed_opaque_existential_1(&v148, v150);
            sub_2664DE7E8();

            sub_2662A9238(v127, &qword_280072A98, &unk_2664E58C0);
            return __swift_destroy_boxed_opaque_existential_1Tm(&v148);
          }

          else
          {

            v80 = v137;
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v81 = v146;
            v82 = __swift_project_value_buffer(v146, qword_280F914F0);
            swift_beginAccess();
            (*(v80 + 16))(v32, v82, v81);
            v83 = sub_2664DFE18();
            v84 = sub_2664E06D8();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              *v85 = 0;
              _os_log_impl(&dword_26629C000, v83, v84, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 unable to create FLOWSchemaFLOWClientEvent", v85, 2u);
              MEMORY[0x266784AD0](v85, -1, -1);
            }

            else
            {
            }

            return (*(v80 + 8))(v32, v81);
          }
        }
      }

      v66 = v38;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v67 = v146;
      v68 = __swift_project_value_buffer(v146, qword_280F914F0);
      swift_beginAccess();
      v69 = v137;
      (*(v137 + 16))(v29, v68, v67);
      v70 = a1;
      v71 = sub_2664DFE18();
      v72 = sub_2664E06D8();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v151 = v74;
        *v73 = 136315138;
        v75 = [v70 title];
        if (v75)
        {
          v76 = v75;
          v77 = sub_2664E02C8();
          v79 = v78;

          v67 = v146;
        }

        else
        {
          v77 = 0;
          v79 = 0xE000000000000000;
        }

        v111 = sub_2662A320C(v77, v79, &v151);

        *(v73 + 4) = v111;
        _os_log_impl(&dword_26629C000, v71, v72, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 unable to create FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 with title: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x266784AD0](v74, -1, -1);
        MEMORY[0x266784AD0](v73, -1, -1);
      }

      else
      {
      }

      return (*(v69 + 8))(v29, v67);
    }

    else
    {
      v59 = qword_280F914E8;
      v60 = a3;
      if (v59 != -1)
      {
        swift_once();
      }

      v61 = v146;
      v62 = __swift_project_value_buffer(v146, qword_280F914F0);
      swift_beginAccess();
      (*(v19 + 16))(v26, v62, v61);
      v63 = sub_2664DFE18();
      v64 = sub_2664E06D8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_26629C000, v63, v64, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 additionalPlaybackContext is null", v65, 2u);
        MEMORY[0x266784AD0](v65, -1, -1);
      }

      else
      {
      }

      return (*(v19 + 8))(v26, v61);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v53 = v146;
    v54 = __swift_project_value_buffer(v146, qword_280F914F0);
    swift_beginAccess();
    (*(v19 + 16))(v23, v54, v53);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06D8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26629C000, v55, v56, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 linkId is null", v57, 2u);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    return (*(v19 + 8))(v23, v53);
  }
}

uint64_t sub_266326050(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v71 = a4;
  v72 = a5;
  v74 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v67 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v67 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v67 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  if (a3)
  {
    v70 = v12;
    v27 = objc_allocWithZone(MEMORY[0x277D57658]);
    v73 = a3;
    v28 = [v27 init];
    if (v28)
    {
      v29 = v28;
      v30 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v30 = v74 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v31 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
        if (v31)
        {
          v32 = v31;
          v69 = v6;
          v33 = sub_2664E02A8();
          [v29 setStationSeedName_];

          v34 = v73;
          [v29 setLinkId_];
          v68 = v32;
          [v32 setMediaPlayerRadioStationContextTier1_];
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v35 = __swift_project_value_buffer(v13, qword_280F914F0);
          swift_beginAccess();
          (*(v14 + 16))(v26, v35, v13);
          v36 = v34;

          v37 = sub_2664DFE18();
          v38 = sub_2664E06C8();

          v39 = os_log_type_enabled(v37, v38);
          v40 = v70;
          if (v39)
          {
            v41 = v36;
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v67 = v37;
            v44 = v43;
            v73 = swift_slowAlloc();
            v75[0] = v73;
            *v42 = 136315394;
            *(v42 + 4) = sub_2662A320C(v74, a2, v75);
            *(v42 + 12) = 2112;
            *(v42 + 14) = v41;
            *v44 = a3;
            v45 = v41;
            v46 = v67;
            _os_log_impl(&dword_26629C000, v67, v38, "SiriKitTaskLoggingProvider#emitMediaPlayerRadioStationContextTier1 Logging stationSeedName %s linkId %@", v42, 0x16u);
            sub_2662A9238(v44, &qword_2800734B0, &unk_2664E3670);
            MEMORY[0x266784AD0](v44, -1, -1);
            v47 = v73;
            __swift_destroy_boxed_opaque_existential_1Tm(v73);
            MEMORY[0x266784AD0](v47, -1, -1);
            v48 = v42;
            v36 = v41;
            v40 = v70;
            MEMORY[0x266784AD0](v48, -1, -1);
          }

          else
          {
          }

          (*(v14 + 8))(v26, v13);
          sub_2664DE8D8();

          v63 = v68;
          sub_2664DE8A8();
          v64 = sub_2664DEA08();
          (*(*(v64 - 8) + 56))(v40, 1, 1, v64);
          if (qword_280F91480 != -1)
          {
            swift_once();
          }

          if (byte_280F91488 == 1)
          {
            v65 = v69[15];
            v66 = v69[16];
            __swift_project_boxed_opaque_existential_1(v69 + 12, v65);
            (*(v66 + 8))(v40, v65, v66);
          }

          sub_2664DE7D8();
          __swift_project_boxed_opaque_existential_1(v75, v75[3]);
          sub_2664DE7E8();

          sub_2662A9238(v40, &qword_280072A98, &unk_2664E58C0);
          return __swift_destroy_boxed_opaque_existential_1Tm(v75);
        }

        else
        {
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v59 = __swift_project_value_buffer(v13, qword_280F914F0);
          swift_beginAccess();
          (*(v14 + 16))(v24, v59, v13);
          v60 = sub_2664DFE18();
          v61 = sub_2664E06D8();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&dword_26629C000, v60, v61, "SiriKitTaskLoggingProvider#emitMediaPlayerRadioStationContextTier1 unable to create FLOWSchemaFLOWClientEvent", v62, 2u);
            MEMORY[0x266784AD0](v62, -1, -1);
          }

          else
          {
          }

          return (*(v14 + 8))(v24, v13);
        }
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v21, v54, v13);

    v55 = sub_2664DFE18();
    v56 = sub_2664E06D8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v76 = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_2662A320C(v74, a2, &v76);
      _os_log_impl(&dword_26629C000, v55, v56, "SiriKitTaskLoggingProvider#emitMediaPlayerRadioStationContextTier1 unable to create FLOWSchemaFLOWMediaPlayerRadioStationContextTier1 with stationSeedName: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    else
    {
    }

    return (*(v14 + 8))(v21, v13);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v18, v49, v13);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "SiriKitTaskLoggingProvider#emitMediaPlayerRadioStationContextTier1 linkId is null", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    return (*(v14 + 8))(v18, v13);
  }
}

uint64_t sub_26632693C(uint64_t a1, unint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2664E0A68())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266783B70](v5, a2);
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = v7;
      sub_266326AB0(&v13, a1, &v12);

      if (v12)
      {
        MEMORY[0x266783490]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2664E04C8();
        }

        sub_2664E0518();
        v6 = v14;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

id sub_266326AB0@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [objc_allocWithZone(MEMORY[0x277D57630]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 artist];
    [v13 setArtist_];

    v15 = [v11 title];
    [v13 setTitle_];

    [v13 setMediaType_];
    v16 = [v11 identifier];
    [v13 setEntityId_];

    result = [v11 identifier];
    if (result)
    {
      v18 = result;
      v19 = sub_2664E02C8();
      v21 = v20;

      v22 = *(a2 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds);
      v29[0] = v19;
      v29[1] = v21;
      MEMORY[0x28223BE20](v23);
      *(&v28 - 2) = v29;

      LOBYTE(v18) = sub_2662AA720(sub_2662AA7CC, (&v28 - 4), v22);

      if (v18)
      {
        result = [v13 setIsAlternative_];
      }
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v24, v6);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "SiriKitTaskLoggingProvider#convertToSearchResults unable to create FLOWSchemaFLOWMediaPlayerMediaItem", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    result = (*(v7 + 8))(v10, v6);
    v13 = 0;
  }

  *a3 = v13;
  return result;
}

uint64_t *SiriKitTaskLoggingProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t SiriKitTaskLoggingProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_266326EF4(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v26 = a8;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v25 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA8, &qword_2664E58D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = *v9;
  sub_2662A7224(a4, &v24 - v15, &qword_280072AA8, &qword_2664E58D0);
  v18 = sub_2664DEAB8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    sub_2662A9238(v16, &qword_280072AA8, &qword_2664E58D0);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = sub_2664DEAA8();
    v21 = v22;
    (*(v19 + 8))(v16, v18);
  }

  sub_2663243EC(a1, a2, v25, v20, v21, v27, v28, v29, v26, a9 & 1);
}

uint64_t sub_2663270AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA8, &qword_2664E58D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = *v6;
  v24 = *a1;
  sub_2662A7224(a3, &v23 - v14, &qword_280072AA8, &qword_2664E58D0);
  v17 = sub_2664DEAB8();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_2662A9238(v15, &qword_280072AA8, &qword_2664E58D0);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v19 = sub_2664DEAA8();
    v20 = v21;
    (*(v18 + 8))(v15, v17);
  }

  sub_2663217FC(&v24, a2, v19, v20, a4, a5, v23);
}

uint64_t sub_266327250(unsigned __int8 *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *v6;
  v17 = *a1;
  if (a3)
  {
    v11 = a2;
    v12 = [a3 catId];
    v13 = sub_2664E02C8();
    v15 = v14;

    a2 = v11;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_2663217FC(&v17, a2, v13, v15, a4, a5, a6);
}

uint64_t sub_26632731C(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *v9;
  if (a4)
  {
    v22 = a1;
    v14 = a2;
    v15 = a3;
    v16 = a8;
    v17 = [a4 catId];
    v18 = sub_2664E02C8();
    v20 = v19;

    a8 = v16;
    a1 = v22;
    a2 = v14;
    a3 = v15;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_2663243EC(a1, a2, a3, v18, v20, a5, a6, a7, a8, a9 & 1);
}

uint64_t sub_26632740C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v5 = v4[15];
    v6 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
    (*(v6 + 8))(a2, v5, v6);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2664DE7E8();
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

SiriAudioSupport::AdditionalMetricsDescription::ModuleName_optional __swiftcall AdditionalMetricsDescription.ModuleName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0DA8();

  v5 = 0;
  v6 = 22;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
      goto LABEL_35;
    case 21:
      v5 = 21;
LABEL_35:
      v6 = v5;
      break;
    case 22:
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    default:
      v6 = 40;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AdditionalMetricsDescription.ModuleName.rawValue.getter()
{
  result = 1719100270;
  switch(*v0)
  {
    case 1:
      result = 0x7369686D61;
      break;
    case 2:
      result = 0x73766E6D61;
      break;
    case 3:
      result = 1935960429;
      break;
    case 4:
      result = 1935959149;
      break;
    case 5:
      result = 0x7366696363;
      break;
    case 6:
      result = 1935896163;
      break;
    case 7:
      result = 1937143139;
      break;
    case 8:
      result = 1937143140;
      break;
    case 9:
      result = 1936287844;
      break;
    case 0xA:
      result = 1885629808;
      break;
    case 0xB:
      result = 0x7376756D70;
      break;
    case 0xC:
      v2 = 1768451425;
      goto LABEL_27;
    case 0xD:
      v2 = 1986948449;
LABEL_27:
      result = (v2 & 0xFFFF0000FFFFFFFFLL | 0x7300000000) + 15;
      break;
    case 0xE:
      result = 0x7369686D6673;
      break;
    case 0xF:
      result = 0x73766E6D6673;
      break;
    case 0x10:
      result = 0x736968616D75;
      break;
    case 0x11:
      result = 0x73766E616D75;
      break;
    case 0x12:
      result = 1717856609;
      break;
    case 0x13:
      result = 6710369;
      break;
    case 0x14:
      result = 1717988723;
      break;
    case 0x15:
      result = 6842724;
      break;
    case 0x16:
      result = 6713441;
      break;
    case 0x17:
      result = 6714209;
      break;
    case 0x18:
      result = 6711651;
      break;
    case 0x19:
      result = 1718381683;
      break;
    case 0x1A:
      result = 0x7766726D70;
      break;
    case 0x1B:
      result = 0x66726F6D65;
      break;
    case 0x1C:
      result = 0x6670616673;
      break;
    case 0x1D:
      result = 0x6670736E73;
      break;
    case 0x1E:
      result = 7500389;
      break;
    case 0x1F:
      result = 7696998;
      break;
    case 0x20:
      result = 1718772065;
      break;
    case 0x21:
      result = 2020439152;
      break;
    case 0x22:
      result = 1718185327;
      break;
    case 0x23:
      result = 26227;
      break;
    case 0x24:
      result = 1885629793;
      break;
    case 0x25:
      result = 0x70646D6673;
      break;
    case 0x26:
      result = 0x7064616D75;
      break;
    case 0x27:
      result = 7562851;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2663279DC@<X0>(unint64_t *a1@<X8>)
{
  result = AdditionalMetricsDescription.ModuleName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriAudioSupport::AdditionalMetricsDescription::SourceFunction_optional __swiftcall AdditionalMetricsDescription.SourceFunction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0DA8();

  v5 = 0;
  v6 = 23;
  switch(v3)
  {
    case 0:
      goto LABEL_38;
    case 1:
      v5 = 1;
      goto LABEL_38;
    case 2:
      v5 = 2;
      goto LABEL_38;
    case 3:
      v5 = 3;
      goto LABEL_38;
    case 4:
      v5 = 4;
      goto LABEL_38;
    case 5:
      v5 = 5;
      goto LABEL_38;
    case 6:
      v5 = 6;
      goto LABEL_38;
    case 7:
      v5 = 7;
      goto LABEL_38;
    case 8:
      v5 = 8;
      goto LABEL_38;
    case 9:
      v5 = 9;
      goto LABEL_38;
    case 10:
      v5 = 10;
      goto LABEL_38;
    case 11:
      v5 = 11;
      goto LABEL_38;
    case 12:
      v5 = 12;
      goto LABEL_38;
    case 13:
      v5 = 13;
      goto LABEL_38;
    case 14:
      v5 = 14;
      goto LABEL_38;
    case 15:
      v5 = 15;
      goto LABEL_38;
    case 16:
      v5 = 16;
      goto LABEL_38;
    case 17:
      v5 = 17;
      goto LABEL_38;
    case 18:
      v5 = 18;
      goto LABEL_38;
    case 19:
      v5 = 19;
      goto LABEL_38;
    case 20:
      v5 = 20;
      goto LABEL_38;
    case 21:
      v5 = 21;
      goto LABEL_38;
    case 22:
      v5 = 22;
LABEL_38:
      v6 = v5;
      break;
    case 23:
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    default:
      v6 = 41;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t AdditionalMetricsDescription.SourceFunction.rawValue.getter()
{
  result = 0x70736552646C62;
  switch(*v0)
  {
    case 1:
      return 0x64656C646E6168;
    case 2:
      return 0x48766F7250676C64;
    case 3:
      v3 = 1818845542;
      return v3 | 0x646E614800000000;
    case 4:
      return 0x74706D6F7270;
    case 5:
      return 0x7369446670;
    case 6:
      return 0x707365526A6572;
    case 7:
      return 0x7475706E49746361;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 7304821;
    case 0xA:
      v3 = 1953722224;
      return v3 | 0x646E614800000000;
    case 0xB:
      return 0x6C646E6148657270;
    case 0xC:
      return 0x56676C446E74736CLL;
    case 0xD:
      return 0x686374614D6F6ELL;
    case 0xE:
      return 0x6673736563637573;
    case 0xF:
      v2 = 10;
      return v2 | 0xD000000000000010;
    case 0x10:
      return 0xD000000000000016;
    case 0x11:
      v2 = 5;
      return v2 | 0xD000000000000010;
    case 0x12:
      return 0x676C44727265;
    case 0x13:
      return 0x676C446E616470;
    case 0x14:
      return 0x796C506E6968746ELL;
    case 0x15:
      return 1667594341;
    case 0x16:
      return 0x5374654467697274;
    case 0x17:
      return 0x66646E4872706467;
    case 0x18:
      return 0xD000000000000014;
    case 0x19:
      return 0x6C696146656B616DLL;
    case 0x1A:
      return 0x66646E4872706467;
    case 0x1B:
      return 0x6C50776F4E736572;
    case 0x1C:
      return 0xD000000000000010;
    case 0x1D:
      return 0x6C44656C646E6168;
    case 0x1E:
      v4 = 0x74706D6F7270;
      goto LABEL_34;
    case 0x1F:
      v4 = 0x746E496A6572;
LABEL_34:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
      break;
    case 0x20:
      result = 0x4C796C506C627364;
      break;
    case 0x21:
      result = 0x796C50636F7270;
      break;
    case 0x22:
      result = 0x4F6C636E43627570;
      break;
    case 0x23:
      result = 0x6553646E416B6863;
      break;
    case 0x24:
      result = 0x61486E6F69746361;
      break;
    case 0x25:
      result = 0x746C757365526F6ELL;
      break;
    case 0x26:
      result = 0xD000000000000018;
      break;
    case 0x27:
    case 0x28:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2663280AC@<X0>(uint64_t *a1@<X8>)
{
  result = AdditionalMetricsDescription.SourceFunction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriAudioSupport::AdditionalMetricsDescription::StatusReason_optional __swiftcall AdditionalMetricsDescription.StatusReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0DA8();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AdditionalMetricsDescription.StatusReason.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6F736552746F6C73;
      break;
    case 4:
      result = 0x6E696E657473696CLL;
      break;
    case 5:
      result = 0x46686374614D6F6ELL;
      break;
    case 6:
      result = 0x4E76657250736168;
      break;
    case 7:
      result = 1346925417;
      break;
    case 8:
      result = 0x6374736361;
      break;
    case 9:
      result = 0x6F70707553746F6ELL;
      break;
    case 0xA:
      result = 0x726553736465656ELL;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0x556E776F6E6B6E75;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000016;
      break;
    case 0xF:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0x6863726165536F6ELL;
      break;
    case 0x13:
      result = 0xD000000000000015;
      break;
    case 0x14:
      result = 0xD000000000000021;
      break;
    case 0x15:
      result = 0xD000000000000026;
      break;
    case 0x16:
      result = 0xD00000000000001CLL;
      break;
    case 0x17:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266328518(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2664E0D88();
  }

  return v11 & 1;
}

uint64_t sub_2663285D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_2664E0E68();
  a3(v6);
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_266328660(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_2664E0368();
}

uint64_t sub_2663286E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_2664E0E68();
  a4(v7);
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_266328758@<X0>(unint64_t *a1@<X8>)
{
  result = AdditionalMetricsDescription.StatusReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static AdditionalMetricsDescription.encodeInfo(module:source:parameterName:statusReason:intentResolutionResult:extraInfo:)(char *a1, char *a2, uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t a7, int a8)
{
  v42 = a8;
  v41 = a7;
  v14 = sub_2664DFE38();
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *a2;
  v51 = *a5;
  v19 = AdditionalMetricsDescription.StatusReason.rawValue.getter();
  v21 = v20;
  LOBYTE(v49) = v17;
  v22 = AdditionalMetricsDescription.ModuleName.rawValue.getter();
  v47 = 40;
  v48 = 0xE100000000000000;
  MEMORY[0x2667833B0](v22);

  MEMORY[0x2667833B0](35, 0xE100000000000000);

  v23 = v47;
  v24 = v48;
  LOBYTE(v49) = v18;
  v25 = AdditionalMetricsDescription.SourceFunction.rawValue.getter();
  v27 = v26;
  v47 = v23;
  v48 = v24;

  MEMORY[0x2667833B0](v25, v27);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  v49 = v47;
  v50 = v48;
  v47 = 978219048;
  v48 = 0xE400000000000000;
  MEMORY[0x2667833B0](a3, a4);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v47, v48);

  v47 = 978481960;
  v48 = 0xE400000000000000;
  MEMORY[0x2667833B0](v19, v21);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v47, v48);

  if (a6)
  {
    v47 = [a6 unsupportedReason];
    sub_266329C88();
    v28 = sub_2664E09D8();
    v47 = 978482472;
    v48 = 0xE400000000000000;
    MEMORY[0x2667833B0](v28);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v47, v48);
  }

  if ((v42 & 1) == 0)
  {
    v47 = v41;
    v29 = sub_2664E0D48();
    v47 = 977888552;
    v48 = 0xE400000000000000;
    MEMORY[0x2667833B0](v29);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v47, v48);
  }

  v31 = v44;
  v30 = v45;
  v32 = v43;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v30, qword_280F914F0);
  swift_beginAccess();
  (*(v31 + 16))(v32, v33, v30);
  v34 = v49;
  v35 = v50;

  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_2662A320C(v34, v35, &v46);
    _os_log_impl(&dword_26629C000, v36, v37, "SiriKitTaskLoggingProvider#encodeInfo: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266784AD0](v39, -1, -1);
    MEMORY[0x266784AD0](v38, -1, -1);
  }

  (*(v31 + 8))(v32, v30);
  return v34;
}

uint64_t static AdditionalMetricsDescription.encodeInfo(module:source:parameterName:statusReason:intentResolutionResult:extraInfo:)(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9)
{
  v37 = a8;
  v38 = a5;
  v39 = a6;
  v40 = a9;
  v41 = sub_2664DFE38();
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v41);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  LOBYTE(v45) = *a1;
  v19 = AdditionalMetricsDescription.ModuleName.rawValue.getter();
  v43 = 40;
  v44 = 0xE100000000000000;
  MEMORY[0x2667833B0](v19);

  MEMORY[0x2667833B0](35, 0xE100000000000000);

  v20 = v43;
  v21 = v44;
  LOBYTE(v45) = v18;
  v22 = AdditionalMetricsDescription.SourceFunction.rawValue.getter();
  v24 = v23;
  v43 = v20;
  v44 = v21;

  MEMORY[0x2667833B0](v22, v24);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  v45 = v43;
  v46 = v44;
  v43 = 978219048;
  v44 = 0xE400000000000000;
  MEMORY[0x2667833B0](a3, a4);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v43, v44);

  v43 = 978481960;
  v44 = 0xE400000000000000;
  MEMORY[0x2667833B0](v38, v39);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v43, v44);

  if (a7)
  {
    v43 = [a7 unsupportedReason];
    sub_266329C88();
    v25 = sub_2664E09D8();
    v43 = 978482472;
    v44 = 0xE400000000000000;
    MEMORY[0x2667833B0](v25);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v43, v44);
  }

  if ((v40 & 1) == 0)
  {
    v43 = v37;
    v26 = sub_2664E0D48();
    v43 = 977888552;
    v44 = 0xE400000000000000;
    MEMORY[0x2667833B0](v26);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v43, v44);
  }

  v27 = v41;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v27, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v28, v27);
  v29 = v45;
  v30 = v46;

  v31 = sub_2664DFE18();
  v32 = sub_2664E06E8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_2662A320C(v29, v30, &v42);
    _os_log_impl(&dword_26629C000, v31, v32, "SiriKitTaskLoggingProvider#encodeInfo: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  (*(v14 + 8))(v17, v27);
  return v29;
}

uint64_t static AdditionalMetricsDescription.encodeInfo(module:source:statusReason:extraInfo:)(char *a1, char *a2, char *a3, uint64_t a4, char a5)
{
  v7 = *a2;
  v8 = *a3;
  v14 = *a1;
  v13 = v7;
  v9 = AdditionalMetricsDescription.StatusReason.rawValue.getter();
  v11 = sub_2663291B8(&v14, &v13, v9, v10, a4, a5 & 1);

  return v11;
}

uint64_t sub_2663291B8(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v32 = a5;
  v33 = sub_2664DFE38();
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  LOBYTE(v37) = *a1;
  v16 = AdditionalMetricsDescription.ModuleName.rawValue.getter();
  v35 = 40;
  v36 = 0xE100000000000000;
  MEMORY[0x2667833B0](v16);

  MEMORY[0x2667833B0](35, 0xE100000000000000);

  v17 = v35;
  v18 = v36;
  LOBYTE(v37) = v15;
  v19 = AdditionalMetricsDescription.SourceFunction.rawValue.getter();
  v21 = v20;
  v35 = v17;
  v36 = v18;

  MEMORY[0x2667833B0](v19, v21);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  v37 = v35;
  v38 = v36;
  v35 = 978481960;
  v36 = 0xE400000000000000;
  MEMORY[0x2667833B0](a3, a4);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v35, v36);

  if ((a6 & 1) == 0)
  {
    v35 = v32;
    v22 = sub_2664E0D48();
    v35 = 977888552;
    v36 = 0xE400000000000000;
    MEMORY[0x2667833B0](v22);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v35, v36);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = v33;
  v24 = __swift_project_value_buffer(v33, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v24, v23);
  v25 = v37;
  v26 = v38;

  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_2662A320C(v25, v26, &v34);
    _os_log_impl(&dword_26629C000, v27, v28, "SiriKitTaskLoggingProvider#encodeInfo: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  (*(v11 + 8))(v14, v23);
  return v25;
}

uint64_t sub_26632958C(int a1)
{
  v2 = sub_2664DE4A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v7 = qword_280F90D38;
  sub_2664DE7D8();
  v8 = type metadata accessor for FlowClientEventSender();
  v9 = swift_allocObject();
  sub_2662A8618(&v17, v9 + 16);
  type metadata accessor for SiriAudioDomainExecutionLogger();
  v10 = swift_allocObject();
  v18 = v8;
  v19 = &protocol witness table for FlowClientEventSender;
  *&v17 = v9;
  *(v10 + 96) = 0;
  sub_2664DE498();
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v12 = sub_2664DE478();
  v13 = [v11 initWithNSUUID_];

  (*(v3 + 8))(v6, v2);
  *(v10 + 48) = v13;
  *(v10 + 40) = a1;
  *(v10 + 24) = 0x6E776F6E6B6E75;
  *(v10 + 32) = 0xE700000000000000;
  *(v10 + 16) = v7;
  sub_2662A5550(&v17, v10 + 56);
  v14 = v7;
  sub_26636B4BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v17);
  return v10;
}

uint64_t sub_266329774()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "SiriKitTaskLoggingProvider#curareDonation Making curare donation of Pommes Response", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_2664DFCB8();
  return sub_2662A9238(v10, &qword_280072AF0, &qword_2664E5E18);
}

uint64_t sub_266329954(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;

  return sub_2664DE848();
}

id sub_266329994()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  v5 = off_280073BF8;
  v6 = *(off_280073BF8 + 2);
  v7 = sub_266466A84(v6);

  LOBYTE(v6) = [v7 respondsToSelector_];
  if (v6)
  {
    v8 = v5[2];
    v9 = sub_266466A84(v8);

    return v9;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v11, v0);

    v12 = sub_2664DFE18();
    v13 = sub_2664E06D8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = v5[2];
      v17 = sub_266466A84(v16);

      swift_getObjectType();
      v18 = sub_2664E0F58();
      v20 = sub_2662A320C(v18, v19, &v21);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_26629C000, v12, v13, "SiriKitTaskLoggingProvider#createFLOWDomainContext mediaPlayerPlaybackContext of type: %s, does not respond to required selector", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x266784AD0](v15, -1, -1);
      MEMORY[0x266784AD0](v14, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }
}

unint64_t sub_266329C88()
{
  result = qword_280072AB0;
  if (!qword_280072AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AB0);
  }

  return result;
}

unint64_t sub_266329CE0()
{
  result = qword_280072AB8;
  if (!qword_280072AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AB8);
  }

  return result;
}

unint64_t sub_266329D38()
{
  result = qword_280072AC0;
  if (!qword_280072AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AC0);
  }

  return result;
}

unint64_t sub_266329D90()
{
  result = qword_280072AC8;
  if (!qword_280072AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AC8);
  }

  return result;
}

unint64_t sub_266329DE8()
{
  result = qword_280072AD0;
  if (!qword_280072AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdditionalMetricsDescription.ModuleName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdditionalMetricsDescription.ModuleName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdditionalMetricsDescription.SourceFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_17;
  }

  if (a2 + 40 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 40) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 40;
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

      return (*a1 | (v4 << 8)) - 40;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 40;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v8 = v6 - 41;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdditionalMetricsDescription.SourceFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD8)
  {
    v4 = 0;
  }

  if (a2 > 0xD7)
  {
    v5 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
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
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdditionalMetricsDescription.StatusReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdditionalMetricsDescription.StatusReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26632A4E8(void *a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 2)
  {
    if (!*a2)
    {

      return 11;
    }

    goto LABEL_8;
  }

  if (v2 == 3 || v2 == 4)
  {
LABEL_8:
    v4 = sub_2664E0D88();

    if (v4)
    {
      return 11;
    }

    if (v2 == 1)
    {

      return 4;
    }

    v7 = sub_2664E0D88();

    if (v7)
    {
      return 4;
    }

    if (v2 != 2)
    {
      sub_2664E0D88();
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
    v6 = a1;
    if (sub_2664E0918())
    {

      return 1;
    }
  }

  else
  {
    v8 = a1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
    v9 = a1;
    v10 = sub_2664E0918();

    if (v10)
    {

      return 6;
    }
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30), v11 = a1, v12 = sub_2664E0918(), v11, (v12 & 1) == 0))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
      v16 = sub_2664E0918();

      if (v16)
      {
        return 5;
      }
    }

    else
    {
    }

    return 0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 affinityType];

    if (v14 == 2)
    {
      v15 = 8;
    }

    else
    {
      v15 = 33;
    }

    if (v14 == 1)
    {
      return 7;
    }

    else
    {
      return v15;
    }
  }

  else
  {

    return 33;
  }
}

NSObject *sub_26632A988(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x277D5B270]) init];
  if (!v15)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v30, v4);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "SiriKitTaskLoggingProvider#convertUsoGraphRedactions Failed to initialize USOSchemaUSOGraphTier1", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  v16 = v15;
  v51 = v12;
  [v15 setLinkId:a2];
  v17 = *(a1 + 16);
  if (v17)
  {
    v49 = v14;
    v50 = v4;
    v52 = v5;
    for (i = (a1 + 40); ; i += 2)
    {
      v20 = *(i - 1);
      v19 = *i;
      v21 = objc_allocWithZone(MEMORY[0x277D5B268]);
      v22 = v19;
      v23 = [v21 init];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      result = [v22 nodes];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v26 = result;
      v27 = [result lastObject];

      if (v27)
      {
        sub_2664E09E8();
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v56[0] = v54;
      v56[1] = v55;
      if (!*(&v55 + 1))
      {
        sub_2662A9238(v56, &unk_280074250, &unk_2664E3680);
LABEL_23:
        v41 = v50;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v41, qword_280F914F0);
        swift_beginAccess();
        v42 = v49;
        (*(v52 + 16))();
        v43 = v22;
        v44 = sub_2664DFE18();
        v45 = sub_2664E06D8();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 134217984;
          *(v46 + 4) = v20;

          _os_log_impl(&dword_26629C000, v44, v45, "SiriKitTaskLoggingProvider#convertUsoGraphRedactions No valid UsoNode in redaction at index: %lld", v46, 0xCu);
          v42 = v49;
          MEMORY[0x266784AD0](v46, -1, -1);
          v47 = v43;
        }

        else
        {

          v47 = v16;
          v44 = v24;
          v16 = v43;
          v24 = v43;
        }

        (*(v52 + 8))(v42, v41);
        return 0;
      }

      sub_2662C1744(0, &qword_280072AE0, 0x277D5DDE8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v28 = v53;
      v29 = [objc_opt_self() convertUsoNodeDataTier1:v53 index:v20];
      [v24 setLinkedUsoNodeData:v29];

      [v16 addLinkedUsoGraphNodeData:v24];
      if (!--v17)
      {
        return v16;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = v50;
    v35 = __swift_project_value_buffer(v50, qword_280F914F0);
    swift_beginAccess();
    v37 = v51;
    v36 = v52;
    (*(v52 + 16))(v51, v35, v34);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "SiriKitTaskLoggingProvider#convertUsoGraphRedactions Failed to initialize USOSchemaUSOGraphNodeDataTier1", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    else
    {
    }

    (*(v36 + 8))(v37, v34);
    return 0;
  }

  return v16;
}

id sub_26632AFB8()
{
  v84 = sub_2664DFE38();
  v80 = *(v84 - 8);
  v0 = *(v80 + 64);
  v1 = MEMORY[0x28223BE20](v84);
  v83 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v82 = &v69 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v79 = &v69 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - v7;
  v9 = sub_2664DE4A8();
  v81 = *(v9 - 1);
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DF098();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DF0F8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF0C8();
  sub_2664DF0E8();
  (*(v19 + 8))(v22, v18);
  v30 = sub_2664DF118();
  v77 = v12;
  v78 = v9;
  v76 = v8;
  (*(v14 + 8))(v17, v13);
  sub_2664DF1D8();
  v31 = sub_2664DF1F8();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_2664DF1E8();
  v35 = sub_2664DF208();
  v37 = v36;

  v38 = sub_2664DF128();
  v74 = v35;
  v75 = v30;
  v83 = v34;

  v39 = objc_opt_self();
  v73 = v38;
  v40 = [v39 convertNonTier1UsoGraph_];
  v41 = v77;
  sub_2664DE498();
  v42 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v43 = sub_2664DE478();
  v44 = [v42 initWithNSUUID_];

  (*(v81 + 8))(v41, v78);
  v77 = v40;
  v72 = v44;
  [v40 setLinkId_];
  v45 = *(v37 + 16);
  if (v45)
  {
    v46 = 0;
    v81 = v80 + 16;
    v82 = v45;
    v47 = v37 + 40;
    v70 = v45 - 1;
    v78 = MEMORY[0x277D84F90];
    v71 = v37 + 40;
    while (1)
    {
      v48 = (v47 + 16 * v46);
      v49 = v46;
      if (v46 >= *(v37 + 16))
      {
        break;
      }

      v50 = v37;
      v52 = *(v48 - 1);
      v51 = *v48;
      ++v46;

      v53 = sub_2664DF128();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_266384A9C(0, v78[2] + 1, 1, v78);
      }

      v55 = v78[2];
      v54 = v78[3];
      if (v55 >= v54 >> 1)
      {
        v78 = sub_266384A9C((v54 > 1), v55 + 1, 1, v78);
      }

      v47 = v71;
      v56 = v78;
      v78[2] = v55 + 1;
      v57 = &v56[2 * v55];
      v57[4] = v52;
      v57[5] = v53;
      v58 = v84;
      v37 = v50;
      if (v70 == v49)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    swift_once();
    v23 = v84;
    v24 = __swift_project_value_buffer(v84, qword_280F914F0);
    swift_beginAccess();
    v25 = v80;
    v26 = v83;
    (*(v80 + 16))(v83, v24, v23);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v27, v28, "SiriKitTaskLoggingProvider#convertToUsoGraph Failed to convert graph from Swift proto", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    (*(v25 + 8))(v26, v23);
    return 0;
  }

  v78 = MEMORY[0x277D84F90];
  v58 = v84;
LABEL_16:
  v60 = sub_26645FA24(v78);

  v61 = v72;
  v62 = sub_26632A988(v60, v72);

  if (!v62)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v63 = __swift_project_value_buffer(v58, qword_280F914F0);
    swift_beginAccess();
    v65 = v79;
    v64 = v80;
    (*(v80 + 16))(v79, v63, v58);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06D8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_26629C000, v66, v67, "SiriKitTaskLoggingProvider#convertToUsoGraph Failed to convert redactions to SELF Tier1 graph", v68, 2u);
      MEMORY[0x266784AD0](v68, -1, -1);
    }

    else
    {
    }

    (*(v64 + 8))(v65, v58);
    return 0;
  }

  return v77;
}

uint64_t sub_26632BA98()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_266322328(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_26632BBF0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_26632390C(a1, *(v1 + 16), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v11 + 8), *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_69Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_26632BDBC(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v9 = *(v1 + 88);
  v8 = *(v1 + 72);
  return sub_266324324(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t objectdestroy_72Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);

  v9 = *(v0 + 24);

  v10 = sub_2664DEA08();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3, 1, v10))
  {
    (*(v11 + 8))(v0 + v3, v10);
  }

  v12 = sub_2664DE808();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v14);

  v21 = *(v0 + v15 + 8);

  v22 = *(v0 + v16 + 8);

  v23 = *(v0 + v17 + 8);

  v24 = *(v0 + v18 + 8);

  v25 = *(v0 + v19);

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v2 | v6 | 7);
}

uint64_t sub_26632C0F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = (*(v1 + 80) + 49) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_2662A74FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v9), *(v0 + v9 + 8), *(v0 + v10), *(v0 + v10 + 8), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 9;
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26632C420;

  return v13(a1, a2, v4 + 32, a3, a4);
}

uint64_t sub_26632C420()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26632C554, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t AppIntentInvoking.invokeShowMusicNoticeAppIntent(noticeEntity:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = *a1;
  v6 = *(a3 + 16);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26632C6A4;

  return (v10)(v3 + 32, 0, 0, a2, a3);
}

uint64_t sub_26632C6A4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26632D2D4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:noticeEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2662C1890;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeShowMusicNoticeAppIntent(noticeEntity:musicItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2662C1890;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeSearchMusicAppIntent(criteria:searchSource:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 24);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_2662C1890;

  return (v21)(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenPodcastShowAppIntent(showIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2662C1890;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenPodcastEpisodeAppIntent(episodeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2662C1890;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenPodcastChannelAppIntent(channelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2662C1890;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppIntentInvoking.followShowAppIntent(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2662BD660;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeSearchPodcastsAppIntent(criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2662C1890;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenQueueAppIntent()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662BD660;

  return v9(a1, a2);
}

uint64_t AppleMediaServicesProvider.__allocating_init(featureFlagProvider:siriKitTaskLoggingProvider:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v15 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_26632E840(v10, v17, v4, v6, v12, v5, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

uint64_t AppleMediaServicesProvider.init(featureFlagProvider:siriKitTaskLoggingProvider:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_26632E840(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v20;
}

uint64_t sub_26632D680(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v36 = a1;
  v37 = a2;
  v7 = sub_2664DFE08();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a5;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "AppleMediaServicesProvider#acknowledgementNeeded...", v21, 2u);
    v22 = v21;
    a5 = v20;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v24 = qword_280F91508;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_280F91D48;
  sub_2664DFDE8();
  v27 = v33;
  v26 = v34;
  v28 = v35;
  (*(v34 + 16))(v33, v11, v35);
  v29 = (*(v26 + 80) + 33) & ~*(v26 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = "gdprCheck";
  *(v30 + 24) = 9;
  *(v30 + 32) = 2;
  (*(v26 + 32))(v30 + v29, v27, v28);
  v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_2662D2B60;
  v31[1] = v23;

  sub_2664E0848();
  sub_2664DFDC8();

  sub_26632F1D4(v36, v37, v38, v39, sub_2662D3010, v30);

  (*(v26 + 8))(v11, v28);
}

uint64_t sub_26632DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26632DAD4, 0, 0);
}

uint64_t sub_26632DAD4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 56);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_26632DC00;
  v8 = v0[4];
  v7 = v0[5];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_26632DC00(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_266332828, 0, 0);
}

uint64_t sub_26632DD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26632DD28, 0, 0);
}

uint64_t sub_26632DD28()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 56);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_26632DE54;
  v8 = v0[4];
  v7 = v0[5];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_26632DE54(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_26632DF54, 0, 0);
}

uint64_t sub_26632DF54()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = sub_26632EAC0(v1, *(v0 + 64));

  *v2 = v3 & 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26632DFE4(void *a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = a1;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v14 = 136315138;
    v15 = [v11 response];
    v25 = a3;
    v26 = v15;
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC8, &unk_2664E6038);
    v17 = sub_2664E0938();
    v23 = v5;
    v19 = v18;

    v20 = sub_2662A320C(v17, v19, &v27);

    *(v14 + 4) = v20;
    a3 = v25;
    _os_log_impl(&dword_26629C000, v12, v13, "AppleMediaServicesProvider#makeMediaAPICall Successfully got a response:%s.", v14, 0xCu);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266784AD0](v21, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    (*(v6 + 8))(v9, v23);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  return a3([v11 responseStatusCode], 0);
}

void sub_26632E2A0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t AppleMediaServicesProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t AppleMediaServicesProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_26632E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2664DE198();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_26632E808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleMediaServicesRequestHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26632E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a4;
  v32 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v28 = a5;
  v29 = a7;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a5 - 8) + 32))(v20, a2, a5);
  *(a3 + 16) = [objc_allocWithZone(type metadata accessor for AppleMediaServicesRequestHandler()) init];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v21, v14);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "AppleMediaServicesProvider#init...", v24, 2u);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  sub_2662A8618(&v30, a3 + 24);
  sub_2662A8618(&v27, a3 + 64);
  return a3;
}

id sub_26632EAC0(void *a1, int a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = sub_2664DFE08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v48 = v5;
    v49 = v4;
    v47 = a2;
    v17 = objc_opt_self();
    v18 = a1;
    v19 = sub_2664E02A8();

    v20 = [v17 acknowledgementNeededForPrivacyIdentifier:v19 account:v18];

    sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D83B88];
    *(v21 + 16) = xmmword_2664E36F0;
    v23 = MEMORY[0x277D83C10];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    *(v21 + 32) = v20;
    sub_2664DFDF8();
    sub_2664DFDC8();

    (*(v13 + 8))(v16, v12);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = v49;
    v25 = __swift_project_value_buffer(v49, qword_280F914F0);
    swift_beginAccess();
    v26 = v48;
    (*(v48 + 16))(v11, v25, v24);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v18;
      v31 = v26;
      v32 = v30;
      v50 = v30;
      *v29 = 136315394;
      if (v20)
      {
        v33 = 0x736465656ELL;
      }

      else
      {
        v33 = 0x746F6E2073656F64;
      }

      if (v20)
      {
        v34 = 0xE500000000000000;
      }

      else
      {
        v34 = 0xED00006465656E20;
      }

      v35 = sub_2662A320C(v33, v34, &v50);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      if (v47)
      {
        v36 = 0x7374736163646F50;
      }

      else
      {
        v36 = 0x636973754DLL;
      }

      if (v47)
      {
        v37 = 0xE800000000000000;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      v38 = sub_2662A320C(v36, v37, &v50);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_26629C000, v27, v28, "AppleMediaServicesProvider#isGDPRAckowledgmentNeeded user %s GDPR acknowledgement for %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);

      (*(v31 + 8))(v11, v49);
    }

    else
    {

      (*(v26 + 8))(v11, v24);
    }
  }

  else
  {
    sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2664E36F0;
    v40 = MEMORY[0x277D83C10];
    *(v39 + 56) = MEMORY[0x277D83B88];
    *(v39 + 64) = v40;
    *(v39 + 32) = -1;
    sub_2664DFDF8();
    sub_2664DFDC8();

    (*(v13 + 8))(v16, v12);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v41, v4);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06C8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "AppleMediaServicesProvider#acknowledgementNeeded not needed.", v44, 2u);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  return v20;
}

void sub_26632F1D4(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6)
{
  v66 = a4;
  v64 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v63 - v12;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  v24 = swift_allocObject();
  v63 = a5;
  *(v24 + 16) = a5;
  *(v24 + 24) = a6;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2662D2B6C;
  *(v25 + 24) = v24;

  v68 = v24;

  v26 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(a1);
  if (v27)
  {
    if (v26 == 0xD000000000000012 && v27 == 0x80000002664F2EA0)
    {
      v67 = 1;
    }

    else
    {
      v67 = sub_2664E0D88();
    }

    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v67 = 0;
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  v28 = [a2 privateMediaItemValueData];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 sharedUserIdFromPlayableMusicAccount];

    if (v30)
    {
      v31 = sub_2664E02C8();
      v33 = v32;

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v13, qword_280F914F0);
      swift_beginAccess();
      (*(v14 + 16))(v18, v34, v13);

      v35 = sub_2664DFE18();
      v36 = sub_2664E06C8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v69[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_2662A320C(v31, v33, v69);
        _os_log_impl(&dword_26629C000, v35, v36, "AppleMediaServicesProvider#acknowledgementNeeded checking GDPR for sharedUserIdFromPlayableMusicAccount: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x266784AD0](v38, -1, -1);
        MEMORY[0x266784AD0](v37, -1, -1);
      }

      (*(v14 + 8))(v18, v13);
      v39 = swift_allocObject();
      *(v39 + 16) = sub_2662D2B74;
      *(v39 + 24) = v25;
      sub_2662A5550(v64, v69);
      v40 = swift_allocObject();
      sub_2662A8618(v69, v40 + 16);
      *(v40 + 56) = v31;
      *(v40 + 64) = v33;
      *(v40 + 72) = v66;
      *(v40 + 80) = v67 & 1;
      v41 = sub_2664E05C8();
      v42 = v65;
      (*(*(v41 - 8) + 56))(v65, 1, 1, v41);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = sub_2662D31E8;
      v43[5] = v39;
      v43[6] = &unk_2664E6068;
      v43[7] = v40;

      v44 = &unk_2664E6070;
LABEL_22:
      sub_26633E760(0, 0, v42, v44, v43);

      return;
    }
  }

LABEL_16:
  v45 = sub_26636E9A0(0);
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v23, v49, v13);

    v50 = sub_2664DFE18();
    v51 = sub_2664E06C8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v69[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_2662A320C(v47, v48, v69);
      _os_log_impl(&dword_26629C000, v50, v51, "AppleMediaServicesProvider#acknowledgementNeeded checking GDPR for requestingUserId: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x266784AD0](v53, -1, -1);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    (*(v14 + 8))(v23, v13);
    v54 = swift_allocObject();
    *(v54 + 16) = sub_2662D2B74;
    *(v54 + 24) = v25;
    sub_2662A5550(v64, v69);
    v55 = swift_allocObject();
    sub_2662A8618(v69, v55 + 16);
    *(v55 + 56) = v47;
    *(v55 + 64) = v48;
    *(v55 + 72) = v66;
    *(v55 + 80) = v67 & 1;
    v56 = sub_2664E05C8();
    v42 = v65;
    (*(*(v56 - 8) + 56))(v65, 1, 1, v56);
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = sub_2662D31E8;
    v43[5] = v54;
    v43[6] = &unk_2664E6050;
    v43[7] = v55;

    v44 = &unk_2664E6058;
    goto LABEL_22;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v21, v57, v13);
  v58 = sub_2664DFE18();
  v59 = sub_2664E06C8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_26629C000, v58, v59, "AppleMediaServicesProvider#acknowledgementNeeded checking GDPR for active account", v60, 2u);
    MEMORY[0x266784AD0](v60, -1, -1);
  }

  (*(v14 + 8))(v21, v13);
  v61 = [objc_opt_self() ams_sharedAccountStore];
  v62 = [v61 ams_activeiTunesAccount];

  v70[0] = sub_26632EAC0(v62, v67 & 1) & 1;
  v63(v70);
}

uint64_t sub_26632FAF4()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "AppleMediaServicesProvider#subscribeToPromotion called but not expected.", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26632FC98()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "AppleMediaServicesProvider#getBuyParams called, but not expected.", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_26632FE44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(void, uint64_t), uint64_t a7)
{
  v213 = a6;
  v209 = a5;
  v199 = a4;
  v210 = a3;
  v198 = a2;
  v212 = a1;
  aBlock[9] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BB8, &qword_2664E6028);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v203 = &v191 - v10;
  v208 = sub_2664DE0D8();
  v207 = *(v208 - 8);
  v11 = *(v207 + 64);
  v12 = MEMORY[0x28223BE20](v208);
  v204 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v206 = &v191 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v191 - v17;
  v19 = sub_2664DE268();
  v218 = *(v19 - 8);
  v20 = *(v218 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2664DFE38();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v196 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v211 = &v191 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v197 = (&v191 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v194 = &v191 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v193 = &v191 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v195 = &v191 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v202 = &v191 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v201 = &v191 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v200 = &v191 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v205 = &v191 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v191 - v46;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  v49 = v24;
  v50 = *(v24 + 16);
  v216 = v24 + 16;
  v217 = v48;
  v214 = v23;
  v215 = v50;
  v50(v47, v48, v23);
  v51 = sub_2664DFE18();
  v52 = sub_2664E06C8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = v19;
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_26629C000, v51, v52, "AppleMediaServicesProvider#makeMediaAPICall Reached this logic.", v54, 2u);
    v55 = v54;
    v19 = v53;
    MEMORY[0x266784AD0](v55, -1, -1);
  }

  v56 = v49 + 8;
  v57 = *(v49 + 8);
  v58 = v214;
  v57(v47, v214);
  sub_2663324F8(v212, v18);
  if ((*(v218 + 48))(v18, 1, v19) == 1)
  {
    sub_2662A9238(v18, &qword_280072BC0, &qword_2664E6030);
LABEL_13:
    v74 = v211;
    v215(v211, v217, v58);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06D8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_26629C000, v75, v76, "AppleMediaServicesProvider#makeMediaAPICall Nil values were passed in to function.", v77, 2u);
      MEMORY[0x266784AD0](v77, -1, -1);
    }

    v57(v74, v58);
    result = v213(0, 1);
    goto LABEL_16;
  }

  (*(v218 + 32))(v22, v18, v19);
  if (!v210 || !v209)
  {
    (*(v218 + 8))(v22, v19);
    goto LABEL_13;
  }

  v211 = v22;
  v59 = [objc_opt_self() ams_sharedAccountStore];
  v60 = [v59 ams_activeiTunesAccount];

  v212 = v56;
  if (v60)
  {
    v61 = v205;
    v215(v205, v217, v58);
    v62 = v60;
    v63 = sub_2664DFE18();
    v64 = sub_2664E06C8();

    v65 = os_log_type_enabled(v63, v64);
    v197 = v57;
    v192 = v19;
    v191 = a7;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock[0] = v67;
      *v66 = 136315138;
      v68 = [v62 debugDescription];
      v69 = sub_2664E02C8();
      v71 = v70;

      v72 = sub_2662A320C(v69, v71, aBlock);
      v58 = v214;

      *(v66 + 4) = v72;
      _os_log_impl(&dword_26629C000, v63, v64, "AppleMediaServicesProvider#makeMediaAPICall amsAccount: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x266784AD0](v67, -1, -1);
      v73 = v66;
      v57 = v197;
      MEMORY[0x266784AD0](v73, -1, -1);

      v57(v205, v58);
    }

    else
    {

      v57(v61, v58);
    }

    v84 = v200;
    v85 = [objc_opt_self() defaultSessionConfiguration];
    v86 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

    v200 = objc_opt_self();
    v87 = [v200 currentProcess];
    v88 = v62;
    v89 = sub_2664E02A8();
    v90 = sub_2664E02A8();
    v91 = [objc_opt_self() bagForProfile:v89 profileVersion:v90 processInfo:v87 account:v88];

    v210 = v88;
    v92 = objc_allocWithZone(MEMORY[0x277CEE578]);
    v93 = v91;
    v94 = sub_2664E02A8();
    v95 = [v92 initWithClientIdentifier:v94 bag:v93];

    v209 = v93;
    [v95 setSession_];
    v215(v84, v217, v58);
    v96 = v95;
    v97 = sub_2664DFE18();
    v98 = sub_2664E06C8();

    v99 = os_log_type_enabled(v97, v98);
    v205 = v96;
    if (v99)
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      aBlock[0] = v101;
      *v100 = 136315138;
      v102 = [v96 debugDescription];
      v103 = sub_2664E02C8();
      v105 = v104;

      v106 = v103;
      v96 = v205;
      v107 = sub_2662A320C(v106, v105, aBlock);
      v58 = v214;

      *(v100 + 4) = v107;
      _os_log_impl(&dword_26629C000, v97, v98, "AppleMediaServicesProvider#makeMediaAPICall amsMediaTokenService: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      v108 = v101;
      v57 = v197;
      MEMORY[0x266784AD0](v108, -1, -1);
      MEMORY[0x266784AD0](v100, -1, -1);
    }

    v57(v84, v58);
    v109 = v201;
    v110 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
    [v86 setProtocolHandler_];

    v215(v109, v217, v58);
    v111 = v86;
    v112 = sub_2664DFE18();
    v113 = sub_2664E06C8();

    v114 = os_log_type_enabled(v112, v113);
    v201 = v111;
    if (v114)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      aBlock[0] = v116;
      *v115 = 136315138;
      v117 = [v111 debugDescription];
      v118 = sub_2664E02C8();
      v120 = v119;

      v121 = v118;
      v58 = v214;
      v122 = sub_2662A320C(v121, v120, aBlock);
      v57 = v197;

      *(v115 + 4) = v122;
      _os_log_impl(&dword_26629C000, v112, v113, "AppleMediaServicesProvider#makeMediaAPICall amsSession: %s", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      v123 = v116;
      v96 = v205;
      MEMORY[0x266784AD0](v123, -1, -1);
      MEMORY[0x266784AD0](v115, -1, -1);
    }

    v57(v109, v58);
    v124 = v202;
    v125 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v96 bag:v209];
    [v125 setAccount_];
    v126 = [v200 currentProcess];
    [v125 setClientInfo_];

    v215(v124, v217, v58);
    v127 = v125;
    v128 = sub_2664DFE18();
    v129 = sub_2664E06C8();

    v130 = os_log_type_enabled(v128, v129);
    v202 = v127;
    if (v130)
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      aBlock[0] = v132;
      *v131 = 136315138;
      v133 = [v127 debugDescription];
      v134 = sub_2664E02C8();
      v135 = v57;
      v137 = v136;

      v138 = v134;
      v58 = v214;
      v139 = sub_2662A320C(v138, v137, aBlock);

      *(v131 + 4) = v139;
      _os_log_impl(&dword_26629C000, v128, v129, "AppleMediaServicesProvider#makeMediaAPICall amsMediaRequestEncoder: %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      MEMORY[0x266784AD0](v132, -1, -1);
      MEMORY[0x266784AD0](v131, -1, -1);

      v135(v124, v58);
    }

    else
    {

      v57(v124, v58);
    }

    v19 = v192;
    v140 = v208;
    v141 = v207;
    v142 = v204;
    sub_2664DE1E8();
    v143 = v203;
    sub_2664DE0C8();

    if ((*(v141 + 48))(v143, 1, v140) == 1)
    {
      sub_2662A9238(v143, &qword_280072BB8, &qword_2664E6028);
      v144 = v194;
      v215(v194, v217, v58);
      v145 = sub_2664DFE18();
      v146 = sub_2664E06D8();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_26629C000, v145, v146, "AppleMediaServicesProvider#makeMediaAPICall AMS URL Components issue.", v147, 2u);
        MEMORY[0x266784AD0](v147, -1, -1);
      }

      v197(v144, v58);
      v213(0, 1);
    }

    else
    {
      v148 = v206;
      (*(v141 + 32))(v206, v143, v140);
      v149 = v195;
      v215(v195, v217, v58);
      (*(v141 + 16))(v142, v148, v140);
      v150 = sub_2664DFE18();
      v151 = sub_2664E06C8();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = v142;
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        aBlock[0] = v154;
        *v153 = 136315138;
        v155 = MEMORY[0x2667810C0]();
        v157 = v156;
        v204 = *(v141 + 8);
        (v204)(v152, v208);
        v158 = sub_2662A320C(v155, v157, aBlock);
        v58 = v214;

        *(v153 + 4) = v158;
        _os_log_impl(&dword_26629C000, v150, v151, "AppleMediaServicesProvider#makeMediaAPICall amsURLComponents: %s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v154);
        v159 = v154;
        v19 = v192;
        v140 = v208;
        MEMORY[0x266784AD0](v159, -1, -1);
        MEMORY[0x266784AD0](v153, -1, -1);
      }

      else
      {

        v204 = *(v141 + 8);
        (v204)(v142, v140);
      }

      v197(v149, v58);
      v160 = v196;
      v161 = sub_2664DE0B8();
      v162 = [v202 requestWithComponents_];

      aBlock[0] = 0;
      v163 = [v162 resultWithError_];

      v164 = aBlock[0];
      if (v163)
      {
        v165 = v163;
        v166 = v164;
        v167 = sub_2664E02A8();
        [v165 setHTTPMethod_];

        v168 = swift_allocObject();
        v169 = v191;
        v168[2] = v213;
        v168[3] = v169;
        aBlock[4] = sub_266332568;
        aBlock[5] = v168;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_26632E2A0;
        aBlock[3] = &block_descriptor_34;
        v170 = _Block_copy(aBlock);

        v171 = [v201 dataTaskWithRequest:v165 completionHandler:v170];
        _Block_release(v170);

        v172 = v193;
        v215(v193, v217, v58);
        v173 = sub_2664DFE18();
        v174 = sub_2664E06C8();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = v19;
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_26629C000, v173, v174, "SwitchPodcastNewsPreferenceFlow#makeMediaAPICall Resuming task.", v176, 2u);
          v177 = v176;
          v19 = v175;
          v58 = v214;
          MEMORY[0x266784AD0](v177, -1, -1);
        }

        v197(v172, v58);
        [v171 resume];
      }

      else
      {
        v178 = aBlock[0];
        v179 = sub_2664DE1A8();

        swift_willThrow();
        v215(v160, v217, v58);
        v180 = v179;
        v181 = sub_2664DFE18();
        v182 = sub_2664E06D8();

        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = v58;
          v185 = swift_slowAlloc();
          aBlock[0] = v185;
          *v183 = 136315138;
          swift_getErrorValue();
          v186 = sub_2664E0DE8();
          v188 = sub_2662A320C(v186, v187, aBlock);

          *(v183 + 4) = v188;
          v140 = v208;
          _os_log_impl(&dword_26629C000, v181, v182, "AppleMediaServicesProvider#makeMediaAPICall AMS Promise Result error: %s.", v183, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v185);
          MEMORY[0x266784AD0](v185, -1, -1);
          v189 = v183;
          v19 = v192;
          v190 = v209;
          MEMORY[0x266784AD0](v189, -1, -1);

          v197(v160, v184);
        }

        else
        {

          v197(v160, v58);
          v190 = v209;
        }

        v213(0, 1);
      }

      (v204)(v206, v140);
    }
  }

  else
  {
    v80 = v197;
    v215(v197, v217, v58);
    v81 = sub_2664DFE18();
    v82 = sub_2664E06D8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_26629C000, v81, v82, "AppleMediaServicesProvider#makeMediaAPICall Account was not retrieved.", v83, 2u);
      MEMORY[0x266784AD0](v83, -1, -1);
    }

    v57(v80, v58);
    v213(0, 1);
  }

  result = (*(v218 + 8))(v211, v19);
LABEL_16:
  v79 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2663317E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "AppleMediaServicesProvider#purchaseItem handle dialogRequest", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = [objc_allocWithZone(MEMORY[0x277CEE460]) initWithRequest_];
  v16 = [v15 present];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26633283C;
  aBlock[3] = &block_descriptor_21_0;
  v17 = _Block_copy(aBlock);

  [v16 addFinishBlock_];
  _Block_release(v17);
}

void sub_266331A64(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "AppleMediaServicesProviding#purchase purchase handle engagementRequest", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = sub_2664E02A8();
  v12 = sub_2664E02A8();
  v13 = AMSError();

  v14 = sub_2664DE198();
  (*(a1 + 16))(a1, 0, v14);
}

void sub_266331CAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = a4;
    v20 = a2;
    v21 = a5;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, v19, v18, 2u);
    v23 = v22;
    a5 = v21;
    a2 = v20;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v24 = [objc_allocWithZone(MEMORY[0x277CEE3E8]) initWithRequest_];
  v25 = [v24 performAuthentication];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26633283C;
  aBlock[3] = a5;
  v26 = _Block_copy(aBlock);

  [v25 addFinishBlock_];
  _Block_release(v26);
}

void sub_266331F3C(void *a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v53[4] = *MEMORY[0x277D85DE8];
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v51 = v3[2];
  v51(v14, v15, v2);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "AppleMediaServicesProvider#purchase purchase handle dialogRequest", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = v3[1];
  v19(v14, v2);
  v52 = [objc_allocWithZone(MEMORY[0x277D7FA50]) init];
  v51(v12, v15, v2);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v2;
    v23 = v9;
    v24 = v19;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "AppleMediaServicesProvider#purchase starting createMusicNotification", v25, 2u);
    v26 = v25;
    v19 = v24;
    v9 = v23;
    v2 = v22;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v19(v12, v2);
  v53[0] = 0;
  v27 = [v52 createMusicNotificationFromAMSDialogRequest:v49 error:v53];
  v28 = v53[0];
  if (v27)
  {
    v51(v9, v15, v2);
    v29 = v28;
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v9;
      v33 = v19;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "AppleMediaServicesProvider#purchase createMusicNotification complete", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);

      v33(v32, v2);
    }

    else
    {

      v19(v9, v2);
    }
  }

  else
  {
    v47 = v19;
    v49 = v3 + 1;
    v35 = v53[0];
    v36 = sub_2664DE1A8();

    swift_willThrow();
    v37 = v48;
    v51(v48, v15, v2);
    v38 = v36;
    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53[0] = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v43 = sub_2664E0DE8();
      v45 = sub_2662A320C(v43, v44, v53);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_26629C000, v39, v40, "AppleMediaServicesProviding#purchase error %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    else
    {
    }

    v47(v37, v2);
  }

  (*(v50 + 16))(v50, 0, 0);

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2663324F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266332570(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2662BD660;

  return sub_26632DD00(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t sub_266332638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2662C1890;

  return sub_26633992C(a1, v4, v5, v6, v7, v9);
}

uint64_t objectdestroy_46Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_266332754(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2662C1890;

  return sub_26632DAAC(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t sub_266332854()
{
  v4 = *MEMORY[0x277D85DE8];
  type metadata accessor for Reachability();
  v0 = swift_allocObject();
  *&address.sa_data[6] = 0;
  *address.sa_data = 0;
  *&address.sa_len = 528;
  result = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (result)
  {
    *(v0 + 16) = result;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    v0 = 0;
  }

  qword_280072BD8 = v0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26633293C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  flags = 0;
  v3 = *(a1 + 16);
  result = SCNetworkReachabilityGetFlags(v3, &flags);
  v5 = 0;
  if (result)
  {
    v6 = (flags & 2) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    flags = 0;
    result = SCNetworkReachabilityGetFlags(v3, &flags);
    if (result)
    {
      v7 = (flags & 4) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v5 = 1;
    }

    else
    {
      flags = 0;
      result = SCNetworkReachabilityGetFlags(v3, &flags);
      v5 = (flags & 1) == 0 || result == 0;
    }
  }

  *a2 = v5;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_266332A0C()
{

  return swift_deallocClassInstance();
}

BOOL sub_266332A44()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071AB8 != -1)
  {
    swift_once();
  }

  v10 = qword_280072BD8;
  if (qword_280072BD8)
  {
    v11 = qword_280F91508;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = qword_280F91D48;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDC8();
    sub_26633293C(v10, &v20);
    sub_2664E0838();
    sub_2664DFDD8();

    (*(v6 + 8))(v9, v5);
    return !v20;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v14, v0);
    v15 = sub_2664DFE18();
    v16 = sub_2664E06D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26629C000, v15, v16, "Unable to get Reachability object", v17, 2u);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }
}

uint64_t AccountProvider.__allocating_init(serviceController:multiuserConnection:accountStoreProvider:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_266339C5C(a1, a2, v12, v6, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v14;
}

id Identity.userIdentity.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *Identity.privateListening.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void sub_266332FBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v1 = qword_280F8F808;
  v4[3] = type metadata accessor for MultiUserConnectionProvider();
  v4[4] = &protocol witness table for MultiUserConnectionProvider;
  v4[0] = v1;
  type metadata accessor for AccountProvider();
  v2 = swift_allocObject();

  v3 = sub_266360778(v0, v4, v2);

  qword_280F90D28 = v3;
}

uint64_t static AccountProvider.shared.getter()
{
  if (qword_280F90D20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2663330EC()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000035, 0x80000002664F4F60, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280072BE0 = v10;
  return result;
}