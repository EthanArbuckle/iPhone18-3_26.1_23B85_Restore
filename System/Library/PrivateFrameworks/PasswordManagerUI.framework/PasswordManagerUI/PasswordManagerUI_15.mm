uint64_t sub_21C893180(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v141 = a3;
  v153 = a2;
  v143 = type metadata accessor for PMAccount.MockData(0);
  v6 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v142 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v150 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v150);
  v11 = (v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v137 = (v128 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v128 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (v128 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v140 = (v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v132 = (v128 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v131 = v128 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v136 = (v128 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v133 = v128 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v128 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = v128 - v35;
  MEMORY[0x28223BE20](v34);
  v139 = (v128 - v37);
  v38 = sub_21CB80DD4();
  v146 = *(v38 - 8);
  v39 = *(v146 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v129 = v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v135 = (v128 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = v128 - v45;
  MEMORY[0x28223BE20](v44);
  v138 = v128 - v47;
  v152 = type metadata accessor for PMAccount(0);
  v48 = *(*(v152 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v152);
  v147 = (v128 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = MEMORY[0x28223BE20](v49);
  v144 = v128 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v151 = v128 - v54;
  result = MEMORY[0x28223BE20](v53);
  v149 = (v128 - v56);
  v145 = *(v57 + 72);
  if (!v145)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    return result;
  }

  v58 = v153 - a1;
  if (v153 - a1 == 0x8000000000000000 && v145 == -1)
  {
    goto LABEL_95;
  }

  v59 = v141 - v153;
  if (v141 - v153 == 0x8000000000000000 && v145 == -1)
  {
    goto LABEL_96;
  }

  v156 = a1;
  v155 = a4;
  v148 = v38;
  if (v58 / v145 < v59 / v145)
  {
    v60 = v58 / v145 * v145;
    v135 = v16;
    if (a4 < a1 || a1 + v60 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v144 = a4 + v60;
    v154 = a4 + v60;
    if (v60 < 1 || v153 >= v141)
    {
      goto LABEL_93;
    }

    v147 = (v146 + 48);
    v136 = (v146 + 32);
    v137 = (v146 + 56);
    v134 = (v146 + 8);
    v140 = v18;
    while (1)
    {
      v65 = v149;
      sub_21C7106A8(v153, v149, type metadata accessor for PMAccount);
      sub_21C7106A8(a4, v151, type metadata accessor for PMAccount);
      sub_21C7106A8(v65 + *(v152 + 24), v18, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v66 = v142;
        sub_21C8399BC(v18, v142, type metadata accessor for PMAccount.MockData);
        v67 = v139;
        sub_21C6EDBAC(v66 + *(v143 + 32), v139, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v66, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v68 = *v18;
        v69 = [*v18 creationDate];
        if (v69)
        {
          v70 = v69;
          sub_21CB80D94();

          v71 = 0;
          v68 = v70;
        }

        else
        {
          v71 = 1;
        }

        v38 = v148;
        (*v137)(v36, v71, 1, v148);
        v67 = v139;
        sub_21C6F1098(v36, v139);
        v18 = v140;
      }

      v72 = *v147;
      v73 = (*v147)(v67, 1, v38);
      v74 = v67;
      if (v73 == 1)
      {
        goto LABEL_36;
      }

      v146 = a4;
      v75 = *v136;
      (*v136)(v138, v67, v38);
      v76 = v135;
      sub_21C7106A8(v151 + *(v152 + 24), v135, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = v76;
        v78 = v142;
        sub_21C8399BC(v77, v142, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v78 + *(v143 + 32), v33, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v78, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v79 = *v76;
        v80 = [*v76 creationDate];
        if (v80)
        {
          v132 = v75;
          v81 = v36;
          v82 = v33;
          v83 = v46;
          v84 = v133;
          v85 = v80;
          sub_21CB80D94();

          v86 = 0;
          v79 = v85;
          v87 = v84;
          v46 = v83;
          v33 = v82;
          v36 = v81;
          v75 = v132;
        }

        else
        {
          v86 = 1;
          v87 = v133;
        }

        v38 = v148;
        (*v137)(v87, v86, 1, v148);
        sub_21C6F1098(v87, v33);
        v18 = v140;
      }

      if (v72(v33, 1, v38) == 1)
      {
        break;
      }

      v75(v46, v33, v38);
      v90 = v138;
      v91 = sub_21CB80D34();
      v92 = *v134;
      (*v134)(v46, v38);
      v92(v90, v38);
      sub_21C7126DC(v151, type metadata accessor for PMAccount);
      v18 = v140;
      sub_21C7126DC(v149, type metadata accessor for PMAccount);
      a4 = v146;
      if ((v91 & 1) == 0)
      {
        v88 = v145;
        v93 = v146 + v145;
        if (a1 < v146 || a1 >= v93)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v146)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v155 = v93;
        a4 += v88;
        goto LABEL_43;
      }

LABEL_37:
      v88 = v145;
      v89 = v153 + v145;
      if (a1 < v153 || a1 >= v89)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v153)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v153 = v89;
LABEL_43:
      a1 += v88;
      v156 = a1;
      if (a4 >= v144 || v153 >= v141)
      {
        goto LABEL_93;
      }
    }

    (*v134)(v138, v38);
    v74 = v33;
    a4 = v146;
LABEL_36:
    sub_21C6EA794(v74, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C7126DC(v151, type metadata accessor for PMAccount);
    sub_21C7126DC(v149, type metadata accessor for PMAccount);
    goto LABEL_37;
  }

  v139 = v11;
  v61 = v59 / v145 * v145;
  v62 = v145;
  if (a4 < v153 || v153 + v61 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v63 = v140;
  }

  else
  {
    v63 = v140;
    if (a4 != v153)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v94 = a4 + v61;
  if (v61 < 1)
  {
    goto LABEL_92;
  }

  v95 = -v62;
  v138 = (v146 + 56);
  v149 = (v146 + 48);
  v134 = (v146 + 32);
  v130 = (v146 + 8);
  v96 = a4 + v61;
  v146 = a4;
  v97 = v141;
  v151 = v95;
  while (2)
  {
    while (2)
    {
      v128[0] = v94;
      v98 = v153;
      v153 += v95;
      v145 = v98;
      while (1)
      {
        if (v98 <= a1)
        {
          v156 = v98;
          v154 = v128[0];
          goto LABEL_93;
        }

        v100 = v97;
        v141 = v94;
        v101 = v96 + v95;
        v102 = v144;
        sub_21C7106A8(v101, v144, type metadata accessor for PMAccount);
        sub_21C7106A8(v153, v147, type metadata accessor for PMAccount);
        v103 = v137;
        sub_21C7106A8(v102 + *(v152 + 24), v137, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v104 = v103;
          v105 = v142;
          sub_21C8399BC(v104, v142, type metadata accessor for PMAccount.MockData);
          v106 = v136;
          sub_21C6EDBAC(v105 + *(v143 + 32), v136, &unk_27CDED250, &qword_21CBA64C0);
          sub_21C7126DC(v105, type metadata accessor for PMAccount.MockData);
          v107 = v139;
        }

        else
        {
          v108 = *v103;
          v109 = [*v103 creationDate];
          if (v109)
          {
            v110 = v109;
            v111 = v131;
            sub_21CB80D94();

            v112 = 0;
            v108 = v110;
            v107 = v139;
          }

          else
          {
            v112 = 1;
            v107 = v139;
            v111 = v131;
          }

          v113 = v112;
          v38 = v148;
          (*v138)(v111, v113, 1, v148);
          v106 = v136;
          sub_21C6F1098(v111, v136);
          v63 = v140;
        }

        v114 = *v149;
        if ((*v149)(v106, 1, v38) == 1)
        {
          goto LABEL_76;
        }

        v133 = *v134;
        (v133)(v135, v106, v38);
        sub_21C7106A8(v147 + *(v152 + 24), v107, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v115 = v107;
          v116 = v142;
          sub_21C8399BC(v115, v142, type metadata accessor for PMAccount.MockData);
          v106 = v132;
          sub_21C6EDBAC(v116 + *(v143 + 32), v132, &unk_27CDED250, &qword_21CBA64C0);
          sub_21C7126DC(v116, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v117 = *v107;
          v118 = [v117 creationDate];
          if (v118)
          {
            v119 = v118;
            sub_21CB80D94();

            v120 = 0;
            v117 = v119;
            v63 = v140;
          }

          else
          {
            v120 = 1;
          }

          v121 = v120;
          v38 = v148;
          (*v138)(v63, v121, 1, v148);
          v106 = v132;
          sub_21C6F1098(v63, v132);
        }

        if (v114(v106, 1, v38) == 1)
        {
          (*v130)(v135, v38);
LABEL_76:
          sub_21C6EA794(v106, &unk_27CDED250, &qword_21CBA64C0);
          v122 = 1;
          goto LABEL_78;
        }

        v123 = v129;
        (v133)(v129, v106, v38);
        v124 = v135;
        v125 = v38;
        v122 = sub_21CB80D34();
        v133 = v101;
        v126 = *v130;
        (*v130)(v123, v125);
        v126(v124, v125);
        v101 = v133;
LABEL_78:
        v127 = v146;
        v97 = v100 + v151;
        sub_21C7126DC(v147, type metadata accessor for PMAccount);
        sub_21C7126DC(v144, type metadata accessor for PMAccount);
        if (v122)
        {
          break;
        }

        v94 = v101;
        if (v100 < v96 || v97 >= v96)
        {
          swift_arrayInitWithTakeFrontToBack();
          v38 = v148;
          v63 = v140;
        }

        else
        {
          v38 = v148;
          v63 = v140;
          if (v100 != v96)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v96 = v101;
        v99 = v101 > v127;
        v95 = v151;
        v98 = v145;
        if (!v99)
        {
          v153 = v145;
          goto LABEL_92;
        }
      }

      if (v100 >= v145 && v97 < v145)
      {
        v38 = v148;
        v63 = v140;
        v94 = v141;
        v95 = v151;
        if (v100 != v145)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v96 <= v127)
        {
          goto LABEL_92;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v38 = v148;
    v63 = v140;
    v94 = v141;
    v95 = v151;
    if (v96 > v127)
    {
      continue;
    }

    break;
  }

LABEL_92:
  v156 = v153;
  v154 = v94;
LABEL_93:
  sub_21C864564(&v156, &v155, &v154);
  return 1;
}

uint64_t sub_21C894220(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v78 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v78);
  v69 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v68 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v74 = (&v68 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = (&v68 - v16);
  v18 = type metadata accessor for PMAccount(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v75 = &v68 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  result = MEMORY[0x28223BE20](v23);
  v29 = &v68 - v28;
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_74;
  }

  v32 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_75;
  }

  v73 = a3;
  v33 = (a2 - a1) / v31;
  v81 = a1;
  v80 = a4;
  v76 = v18;
  v77 = v31;
  if (v33 < v32 / v31)
  {
    v34 = v33 * v31;
    if (a4 < a1 || a1 + v34 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v35 = v74;
    }

    else
    {
      v35 = v74;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v75 = a4 + v34;
    v79 = a4 + v34;
    if (v34 < 1 || a2 >= v73)
    {
      goto LABEL_72;
    }

    while (1)
    {
      sub_21C7106A8(a2, v29, type metadata accessor for PMAccount);
      sub_21C7106A8(a4, v25, type metadata accessor for PMAccount);
      sub_21C7106A8(&v29[*(v18 + 24)], v17, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v39 = v17;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_23;
      }

      v40 = *v17;
      sub_21C7106A8(&v25[*(v18 + 24)], v35, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v39 = v35;
LABEL_23:
        sub_21C7126DC(v39, type metadata accessor for PMAccount.Storage);
        sub_21C7126DC(v25, type metadata accessor for PMAccount);
        sub_21C7126DC(v29, type metadata accessor for PMAccount);
LABEL_24:
        v41 = v77;
        v42 = a2 + v77;
        if (a1 < a2 || a1 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_29:
          v41 = v77;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_29;
        }

        a2 = v42;
        goto LABEL_31;
      }

      v43 = a4;
      v44 = *v35;
      v45 = [v40 compare:v44 byType:1];

      a4 = v43;
      v18 = v76;

      sub_21C7126DC(v25, type metadata accessor for PMAccount);
      sub_21C7126DC(v29, type metadata accessor for PMAccount);
      v46 = v45 + 1 == 0;
      v35 = v74;
      if (v46)
      {
        goto LABEL_24;
      }

      v41 = v77;
      v47 = a4 + v77;
      if (a1 < a4 || a1 >= v47)
      {
        break;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_40:
        v41 = v77;
      }

      v80 = v47;
      a4 = v47;
LABEL_31:
      a1 += v41;
      v81 = a1;
      if (a4 >= v75 || a2 >= v73)
      {
        goto LABEL_72;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_40;
  }

  v36 = v32 / v31 * v31;
  v74 = v27;
  if (a4 < a2 || a2 + v36 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else
  {
    if (a4 == a2)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithTakeBackToFront();
  }

  v31 = v77;
LABEL_44:
  v48 = a4 + v36;
  if (v36 < 1)
  {
    goto LABEL_71;
  }

  v49 = -v31;
  v50 = a4 + v36;
  v51 = v73;
  v70 = a4;
  v71 = v13;
  v77 = -v31;
  while (2)
  {
    while (2)
    {
      v68 = v48;
      v52 = a2;
      a2 += v49;
      v72 = v52;
      while (1)
      {
        if (v52 <= a1)
        {
          v81 = v52;
          v79 = v68;
          goto LABEL_72;
        }

        v54 = v51;
        v73 = v48;
        v55 = v50 + v49;
        v56 = v75;
        sub_21C7106A8(v55, v75, type metadata accessor for PMAccount);
        v57 = v74;
        sub_21C7106A8(a2, v74, type metadata accessor for PMAccount);
        v58 = v76;
        sub_21C7106A8(v56 + *(v76 + 24), v13, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v59 = v13;
LABEL_55:
          sub_21C7126DC(v59, type metadata accessor for PMAccount.Storage);
          v63 = 1;
          goto LABEL_57;
        }

        v60 = *v13;
        v61 = v57 + *(v58 + 24);
        v62 = v69;
        sub_21C7106A8(v61, v69, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v59 = v62;
          goto LABEL_55;
        }

        v64 = *v62;
        v65 = [v60 compare:v64 byType:1];

        v63 = v65 == -1;
LABEL_57:
        v48 = v73;
        v51 = v54 + v77;
        sub_21C7126DC(v74, type metadata accessor for PMAccount);
        sub_21C7126DC(v75, type metadata accessor for PMAccount);
        if (v63)
        {
          break;
        }

        v48 = v55;
        v66 = v70;
        if (v54 < v50 || v51 >= v50)
        {
          swift_arrayInitWithTakeFrontToBack();
          v13 = v71;
        }

        else
        {
          v13 = v71;
          if (v54 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v50 = v55;
        v53 = v55 > v66;
        v49 = v77;
        v52 = v72;
        if (!v53)
        {
          a2 = v72;
          goto LABEL_71;
        }
      }

      v67 = v70;
      if (v54 >= v72 && v51 < v72)
      {
        v49 = v77;
        v13 = v71;
        if (v54 != v72)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v50 <= v67)
        {
          goto LABEL_71;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v13 = v71;
    v49 = v77;
    if (v50 > v67)
    {
      continue;
    }

    break;
  }

LABEL_71:
  v81 = a2;
  v79 = v48;
LABEL_72:
  sub_21C864564(&v81, &v80, &v79);
  return 1;
}

uint64_t sub_21C894A14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v78 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v78);
  v69 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v68 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v74 = (&v68 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = (&v68 - v16);
  v18 = type metadata accessor for PMAccount(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v75 = &v68 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  result = MEMORY[0x28223BE20](v23);
  v29 = &v68 - v28;
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_74;
  }

  v32 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_75;
  }

  v73 = a3;
  v33 = (a2 - a1) / v31;
  v81 = a1;
  v80 = a4;
  v76 = v18;
  v77 = v31;
  if (v33 < v32 / v31)
  {
    v34 = v33 * v31;
    if (a4 < a1 || a1 + v34 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v35 = v74;
    }

    else
    {
      v35 = v74;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v75 = a4 + v34;
    v79 = a4 + v34;
    if (v34 < 1 || a2 >= v73)
    {
      goto LABEL_72;
    }

    while (1)
    {
      sub_21C7106A8(a2, v29, type metadata accessor for PMAccount);
      sub_21C7106A8(a4, v25, type metadata accessor for PMAccount);
      sub_21C7106A8(&v29[*(v18 + 24)], v17, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v39 = v17;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_23;
      }

      v40 = *v17;
      sub_21C7106A8(&v25[*(v18 + 24)], v35, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v39 = v35;
LABEL_23:
        sub_21C7126DC(v39, type metadata accessor for PMAccount.Storage);
        sub_21C7126DC(v25, type metadata accessor for PMAccount);
        sub_21C7126DC(v29, type metadata accessor for PMAccount);
LABEL_24:
        v41 = v77;
        v42 = a2 + v77;
        if (a1 < a2 || a1 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_29:
          v41 = v77;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_29;
        }

        a2 = v42;
        goto LABEL_31;
      }

      v43 = a4;
      v44 = *v35;
      v45 = [v40 compare_];

      a4 = v43;
      v18 = v76;

      sub_21C7126DC(v25, type metadata accessor for PMAccount);
      sub_21C7126DC(v29, type metadata accessor for PMAccount);
      v46 = v45 + 1 == 0;
      v35 = v74;
      if (v46)
      {
        goto LABEL_24;
      }

      v41 = v77;
      v47 = a4 + v77;
      if (a1 < a4 || a1 >= v47)
      {
        break;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_40:
        v41 = v77;
      }

      v80 = v47;
      a4 = v47;
LABEL_31:
      a1 += v41;
      v81 = a1;
      if (a4 >= v75 || a2 >= v73)
      {
        goto LABEL_72;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_40;
  }

  v36 = v32 / v31 * v31;
  v74 = v27;
  if (a4 < a2 || a2 + v36 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else
  {
    if (a4 == a2)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithTakeBackToFront();
  }

  v31 = v77;
LABEL_44:
  v48 = a4 + v36;
  if (v36 < 1)
  {
    goto LABEL_71;
  }

  v49 = -v31;
  v50 = a4 + v36;
  v51 = v73;
  v70 = a4;
  v71 = v13;
  v77 = -v31;
  while (2)
  {
    while (2)
    {
      v68 = v48;
      v52 = a2;
      a2 += v49;
      v72 = v52;
      while (1)
      {
        if (v52 <= a1)
        {
          v81 = v52;
          v79 = v68;
          goto LABEL_72;
        }

        v54 = v51;
        v73 = v48;
        v55 = v50 + v49;
        v56 = v75;
        sub_21C7106A8(v55, v75, type metadata accessor for PMAccount);
        v57 = v74;
        sub_21C7106A8(a2, v74, type metadata accessor for PMAccount);
        v58 = v76;
        sub_21C7106A8(v56 + *(v76 + 24), v13, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v59 = v13;
LABEL_55:
          sub_21C7126DC(v59, type metadata accessor for PMAccount.Storage);
          v63 = 1;
          goto LABEL_57;
        }

        v60 = *v13;
        v61 = v57 + *(v58 + 24);
        v62 = v69;
        sub_21C7106A8(v61, v69, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v59 = v62;
          goto LABEL_55;
        }

        v64 = *v62;
        v65 = [v60 compare_];

        v63 = v65 == -1;
LABEL_57:
        v48 = v73;
        v51 = v54 + v77;
        sub_21C7126DC(v74, type metadata accessor for PMAccount);
        sub_21C7126DC(v75, type metadata accessor for PMAccount);
        if (v63)
        {
          break;
        }

        v48 = v55;
        v66 = v70;
        if (v54 < v50 || v51 >= v50)
        {
          swift_arrayInitWithTakeFrontToBack();
          v13 = v71;
        }

        else
        {
          v13 = v71;
          if (v54 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v50 = v55;
        v53 = v55 > v66;
        v49 = v77;
        v52 = v72;
        if (!v53)
        {
          a2 = v72;
          goto LABEL_71;
        }
      }

      v67 = v70;
      if (v54 >= v72 && v51 < v72)
      {
        v49 = v77;
        v13 = v71;
        if (v54 != v72)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v50 <= v67)
        {
          goto LABEL_71;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v13 = v71;
    v49 = v77;
    if (v50 > v67)
    {
      continue;
    }

    break;
  }

LABEL_71:
  v81 = a2;
  v79 = v48;
LABEL_72:
  sub_21C864564(&v81, &v80, &v79);
  return 1;
}

uint64_t sub_21C8951E8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v287 = a3;
  v281 = type metadata accessor for PMAccount.MockData(0);
  v7 = *(*(v281 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v281);
  v264 = v243 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v243 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v249 = v243 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v248 = v243 - v16;
  MEMORY[0x28223BE20](v15);
  v275 = v243 - v17;
  v18 = type metadata accessor for PMAccount.Storage(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v254 = (v243 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v265 = (v243 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v253 = (v243 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v263 = (v243 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v261 = (v243 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v268 = (v243 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v259 = (v243 - v33);
  MEMORY[0x28223BE20](v32);
  v266 = (v243 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v246 = v243 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v244 = v243 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v262 = v243 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v269 = (v243 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v245 = v243 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v247 = v243 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v252 = v243 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v267 = v243 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v251 = v243 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v256 = v243 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v258 = v243 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v272 = v243 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v250 = v243 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v255 = v243 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v257 = v243 - v66;
  MEMORY[0x28223BE20](v65);
  v273 = (v243 - v67);
  v68 = sub_21CB80DD4();
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  v71 = MEMORY[0x28223BE20](v68);
  v271 = v243 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v270 = v243 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v278 = v243 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v260 = v243 - v78;
  MEMORY[0x28223BE20](v77);
  v277 = v243 - v79;
  v80 = type metadata accessor for PMAccount(0);
  v81 = *(*(v80 - 8) + 64);
  v82 = MEMORY[0x28223BE20](v80);
  v280 = (v243 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = MEMORY[0x28223BE20](v82);
  v274 = (v243 - v85);
  v86 = MEMORY[0x28223BE20](v84);
  v288 = (v243 - v87);
  result = MEMORY[0x28223BE20](v86);
  v283 = v243 - v89;
  v91 = *(v90 + 72);
  if (!v91)
  {
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    return result;
  }

  v92 = a1;
  if (a2 - a1 == 0x8000000000000000 && v91 == -1)
  {
    goto LABEL_142;
  }

  v93 = &v287[-a2];
  if (&v287[-a2] == 0x8000000000000000 && v91 == -1)
  {
    goto LABEL_143;
  }

  v94 = (a2 - a1) / v91;
  v291 = a1;
  v290 = a4;
  v282 = v18;
  v279 = v80;
  v276 = v91;
  v285 = a1;
  if (v94 >= v93 / v91)
  {
    v96 = v93 / v91 * v91;
    if (a4 < a2 || a2 + v96 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_77:
        v286 = a2;
        v170 = a4 + v96;
        if (v96 < 1)
        {
          goto LABEL_139;
        }

        v171 = -v91;
        v288 = (v69 + 48);
        v272 = (v69 + 56);
        v273 = (v69 + 32);
        v266 = (v69 + 8);
        v172 = (a4 + v96);
        v173 = &qword_21CBA64C0;
        v284 = a4;
        v243[0] = v12;
        v278 = v171;
        while (1)
        {
          v259 = v170;
          v174 = v286;
          v286 += v171;
          v268 = v174;
          while (1)
          {
            if (v174 <= v92)
            {
              v291 = v174;
              v289 = v259;
              goto LABEL_140;
            }

            v276 = v287;
            v261 = v170;
            v277 = v172;
            v283 = &v172[v171];
            v177 = v274;
            sub_21C7106A8(&v172[v171], v274, type metadata accessor for PMAccount);
            sub_21C7106A8(v286, v280, type metadata accessor for PMAccount);
            v178 = *(v80 + 24);
            v179 = v177 + v178;
            v180 = v263;
            sub_21C7106A8(v179, v263, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v181 = v275;
              sub_21C8399BC(v180, v275, type metadata accessor for PMAccount.MockData);
              v182 = v267;
              sub_21C6EDBAC(v181 + *(v281 + 32), v267, &unk_27CDED250, v173);
              sub_21C7126DC(v181, type metadata accessor for PMAccount.MockData);
            }

            else
            {
              v183 = *v180;
              v184 = [*v180 creationDate];
              v185 = v252;
              if (v184)
              {
                v186 = v184;
                sub_21CB80D94();

                v187 = 0;
                v183 = v186;
                v173 = &qword_21CBA64C0;
                v80 = v279;
              }

              else
              {
                v187 = 1;
              }

              (*v272)(v185, v187, 1, v68);
              v188 = v185;
              v189 = v267;
              sub_21C6F1098(v188, v267);
              v182 = v189;
            }

            v190 = *v288;
            v191 = (*v288)(v182, 1, v68);
            v192 = v265;
            v193 = v269;
            if (v191 != 1)
            {
              (*v273)(v270, v182, v68);
              v200 = v262;
              goto LABEL_104;
            }

            v287 = v190;
            v194 = v253;
            sub_21C7106A8(v274 + v178, v253, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v195 = v194;
              v196 = v243[0];
              sub_21C8399BC(v195, v243[0], type metadata accessor for PMAccount.MockData);
              v197 = v247;
              sub_21C6EDBAC(v196 + *(v281 + 32), v247, &unk_27CDED250, v173);
              v190 = v287;
              if ((v287)(v197, 1, v68) == 1)
              {
                sub_21CB80DA4();
                sub_21C7126DC(v196, type metadata accessor for PMAccount.MockData);
                v198 = v190(v197, 1, v68);
                v193 = v269;
                if (v198 != 1)
                {
                  v199 = &v279;
LABEL_100:
                  sub_21C6EA794(*(v199 - 32), &unk_27CDED250, v173);
                }
              }

              else
              {
                sub_21C7126DC(v196, type metadata accessor for PMAccount.MockData);
                (*v273)(v270, v197, v68);
                v193 = v269;
              }
            }

            else
            {
              v201 = *v194;
              v202 = [*v194 lastModifiedDate];
              if (v202)
              {
                v203 = v260;
                v204 = v202;
                sub_21CB80D94();

                v205 = *v273;
                v206 = v245;
                v207 = v203;
                v173 = &qword_21CBA64C0;
                v80 = v279;
                (*v273)(v245, v207, v68);
                (*v272)(v206, 0, 1, v68);
                v205(v270, v206, v68);
                v193 = v269;
                v192 = v265;
                v190 = v287;
                v208 = (v287)(v267, 1, v68);
                goto LABEL_102;
              }

              v209 = v245;
              (*v272)(v245, 1, 1, v68);
              sub_21CB80D14();

              v190 = v287;
              v210 = (v287)(v209, 1, v68);
              v192 = v265;
              if (v210 != 1)
              {
                v199 = &v277;
                goto LABEL_100;
              }
            }

            v208 = v190(v267, 1, v68);
LABEL_102:
            v200 = v262;
            if (v208 != 1)
            {
              sub_21C6EA794(v267, &unk_27CDED250, v173);
            }

LABEL_104:
            v211 = *(v80 + 24);
            sub_21C7106A8(v280 + v211, v192, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v212 = v192;
              v213 = v275;
              sub_21C8399BC(v212, v275, type metadata accessor for PMAccount.MockData);
              sub_21C6EDBAC(v213 + *(v281 + 32), v193, &unk_27CDED250, v173);
              sub_21C7126DC(v213, type metadata accessor for PMAccount.MockData);
            }

            else
            {
              v214 = *v192;
              v215 = [v214 creationDate];
              if (v215)
              {
                v216 = v215;
                sub_21CB80D94();

                v217 = 0;
                v214 = v216;
                v80 = v279;
              }

              else
              {
                v217 = 1;
              }

              (*v272)(v200, v217, 1, v68);
              v193 = v269;
              sub_21C6F1098(v200, v269);
              v173 = &qword_21CBA64C0;
            }

            v218 = v190(v193, 1, v68);
            v219 = v264;
            if (v218 != 1)
            {
              (*v273)(v271, v193, v68);
              goto LABEL_125;
            }

            v220 = v280 + v211;
            v221 = v254;
            sub_21C7106A8(v220, v254, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_21C8399BC(v221, v219, type metadata accessor for PMAccount.MockData);
              v222 = v244;
              sub_21C6EDBAC(v219 + *(v281 + 32), v244, &unk_27CDED250, v173);
              if (v190(v222, 1, v68) == 1)
              {
                sub_21CB80DA4();
                sub_21C7126DC(v219, type metadata accessor for PMAccount.MockData);
                if (v190(v222, 1, v68) != 1)
                {
                  v223 = v222;
LABEL_121:
                  sub_21C6EA794(v223, &unk_27CDED250, v173);
                }
              }

              else
              {
                sub_21C7126DC(v219, type metadata accessor for PMAccount.MockData);
                (*v273)(v271, v222, v68);
              }
            }

            else
            {
              v224 = *v221;
              v225 = [*v221 lastModifiedDate];
              if (v225)
              {
                v226 = v260;
                v227 = v225;
                sub_21CB80D94();

                v228 = *v273;
                v229 = v246;
                v230 = v226;
                v173 = &qword_21CBA64C0;
                v80 = v279;
                (*v273)(v246, v230, v68);
                (*v272)(v229, 0, 1, v68);
                v228(v271, v229, v68);
                v231 = v190(v193, 1, v68);
                goto LABEL_123;
              }

              v232 = v246;
              (*v272)(v246, 1, 1, v68);
              sub_21CB80D14();

              if (v190(v232, 1, v68) != 1)
              {
                v223 = v246;
                goto LABEL_121;
              }
            }

            v231 = v190(v193, 1, v68);
LABEL_123:
            if (v231 != 1)
            {
              sub_21C6EA794(v193, &unk_27CDED250, v173);
            }

LABEL_125:
            v233 = v173;
            v234 = v276;
            v287 = &v278[v276];
            v235 = v270;
            v236 = v271;
            v237 = sub_21CB80D34();
            v238 = *v266;
            (*v266)(v236, v68);
            v238(v235, v68);
            sub_21C7126DC(v280, type metadata accessor for PMAccount);
            sub_21C7126DC(v274, type metadata accessor for PMAccount);
            if (v237)
            {
              break;
            }

            v239 = v283;
            v170 = v283;
            if (v234 < v277 || v287 >= v277)
            {
              v175 = v283;
              swift_arrayInitWithTakeFrontToBack();
              v170 = v175;
              v176 = v284;
              v173 = v233;
            }

            else
            {
              v240 = v234 == v277;
              v176 = v284;
              v173 = v233;
              if (!v240)
              {
                v241 = v283;
                swift_arrayInitWithTakeBackToFront();
                v170 = v241;
                v239 = v283;
              }
            }

            v172 = v170;
            v171 = v278;
            v92 = v285;
            v174 = v268;
            if (v239 <= v176)
            {
              v286 = v268;
              goto LABEL_139;
            }
          }

          if (v234 < v268 || v287 >= v268)
          {
            swift_arrayInitWithTakeFrontToBack();
            v242 = v284;
            v173 = v233;
          }

          else
          {
            v240 = v234 == v268;
            v242 = v284;
            v173 = v233;
            if (!v240)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v172 = v277;
          v171 = v278;
          v170 = v261;
          v92 = v285;
          if (v277 <= v242)
          {
LABEL_139:
            v291 = v286;
            v289 = v170;
            goto LABEL_140;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v92 = v285;
    v91 = v276;
    goto LABEL_77;
  }

  v95 = v94 * v91;
  if (a4 < a1 || a1 + v95 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v270 = (a4 + v95);
  v289 = (a4 + v95);
  if (v95 >= 1 && a2 < v287)
  {
    v271 = (v69 + 56);
    v97 = v69;
    v98 = (v69 + 48);
    v274 = (v97 + 32);
    v269 = (v97 + 8);
    v280 = v98;
    while (1)
    {
      v99 = v283;
      sub_21C7106A8(a2, v283, type metadata accessor for PMAccount);
      v284 = a4;
      sub_21C7106A8(a4, v288, type metadata accessor for PMAccount);
      v100 = *(v80 + 24);
      v101 = v99 + v100;
      v102 = v266;
      sub_21C7106A8(v101, v266, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v286 = a2;
      if (EnumCaseMultiPayload == 1)
      {
        v104 = v275;
        sub_21C8399BC(v102, v275, type metadata accessor for PMAccount.MockData);
        v105 = v273;
        sub_21C6EDBAC(v104 + *(v281 + 32), v273, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C7126DC(v104, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v106 = *v102;
        v107 = [*v102 creationDate];
        if (v107)
        {
          v108 = v107;
          v109 = v257;
          sub_21CB80D94();

          v110 = 0;
          v106 = v108;
        }

        else
        {
          v110 = 1;
          v109 = v257;
        }

        (*v271)(v109, v110, 1, v68);
        v111 = v109;
        v105 = v273;
        sub_21C6F1098(v111, v273);
        v18 = v282;
        v80 = v279;
      }

      v112 = *v98;
      v113 = (*v98)(v105, 1, v68);
      v114 = v268;
      if (v113 != 1)
      {
        (*v274)(v277, v105, v68);
        goto LABEL_39;
      }

      v115 = v259;
      sub_21C7106A8(v283 + v100, v259, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v120 = *v115;
      v121 = [*v115 lastModifiedDate];
      if (v121)
      {
        v122 = v260;
        v123 = v121;
        sub_21CB80D94();

        v124 = *v274;
        v125 = v250;
        (*v274)(v250, v122, v68);
        (*v271)(v125, 0, 1, v68);
        v124(v277, v125, v68);
        v114 = v268;
        v18 = v282;
        v80 = v279;
        goto LABEL_37;
      }

      v126 = v250;
      (*v271)(v250, 1, 1, v68);
      sub_21CB80D14();

      v127 = v112(v126, 1, v68);
      v18 = v282;
      v80 = v279;
      if (v127 != 1)
      {
        v119 = &v282;
LABEL_36:
        sub_21C6EA794(*(v119 - 32), &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_37:
      v128 = v273;
      if (v112(v273, 1, v68) != 1)
      {
        sub_21C6EA794(v128, &unk_27CDED250, &qword_21CBA64C0);
      }

LABEL_39:
      v129 = *(v80 + 24);
      sub_21C7106A8(v288 + v129, v114, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v130 = v114;
        v131 = v275;
        sub_21C8399BC(v130, v275, type metadata accessor for PMAccount.MockData);
        v132 = v272;
        sub_21C6EDBAC(v131 + *(v281 + 32), v272, &unk_27CDED250, &qword_21CBA64C0);
        v133 = v131;
        v134 = v132;
        sub_21C7126DC(v133, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v135 = *v114;
        v136 = [*v114 creationDate];
        if (v136)
        {
          v137 = v258;
          v138 = v136;
          sub_21CB80D94();

          v139 = 0;
          v135 = v138;
        }

        else
        {
          v139 = 1;
          v137 = v258;
        }

        (*v271)(v137, v139, 1, v68);
        v134 = v272;
        sub_21C6F1098(v137, v272);
        v18 = v282;
        v80 = v279;
      }

      if (v112(v134, 1, v68) == 1)
      {
        v140 = v261;
        sub_21C7106A8(v288 + v129, v261, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v141 = v140;
          v142 = v249;
          sub_21C8399BC(v141, v249, type metadata accessor for PMAccount.MockData);
          v143 = v256;
          sub_21C6EDBAC(v142 + *(v281 + 32), v256, &unk_27CDED250, &qword_21CBA64C0);
          if (v112(v143, 1, v68) == 1)
          {
            sub_21CB80DA4();
            sub_21C7126DC(v142, type metadata accessor for PMAccount.MockData);
            v144 = v112(v143, 1, v68);
            a4 = v284;
            v134 = v272;
            if (v144 != 1)
            {
              v145 = &v288;
              goto LABEL_56;
            }
          }

          else
          {
            sub_21C7126DC(v142, type metadata accessor for PMAccount.MockData);
            (*v274)(v278, v143, v68);
            a4 = v284;
            v134 = v272;
          }
        }

        else
        {
          v148 = *v140;
          v149 = [*v140 lastModifiedDate];
          if (v149)
          {
            v150 = v260;
            v151 = v149;
            sub_21CB80D94();

            v152 = *v274;
            v153 = v251;
            (*v274)(v251, v150, v68);
            (*v271)(v153, 0, 1, v68);
            v152(v278, v153, v68);
            v134 = v272;
            a4 = v284;
            v18 = v282;
            v80 = v279;
          }

          else
          {
            v154 = v251;
            (*v271)(v251, 1, 1, v68);
            sub_21CB80D14();

            v155 = v112(v154, 1, v68);
            a4 = v284;
            v18 = v282;
            v80 = v279;
            if (v155 != 1)
            {
              v145 = &v283;
LABEL_56:
              sub_21C6EA794(*(v145 - 32), &unk_27CDED250, &qword_21CBA64C0);
            }
          }
        }

        v146 = v18;
        v147 = v68;
        if (v112(v134, 1, v68) != 1)
        {
          sub_21C6EA794(v134, &unk_27CDED250, &qword_21CBA64C0);
        }

        goto LABEL_59;
      }

      v146 = v18;
      (*v274)(v278, v134, v68);
      a4 = v284;
      v147 = v68;
LABEL_59:
      v157 = v277;
      v156 = v278;
      v158 = sub_21CB80D34();
      v159 = *v269;
      (*v269)(v156, v147);
      v160 = v157;
      v161 = v147;
      v159(v160, v147);
      sub_21C7126DC(v288, type metadata accessor for PMAccount);
      sub_21C7126DC(v283, type metadata accessor for PMAccount);
      if (v158)
      {
        v162 = v276;
        v163 = v286 + v276;
        v164 = v285;
        if (v285 < v286 || v285 >= v163)
        {
          v168 = v285;
          swift_arrayInitWithTakeFrontToBack();
          v164 = v168;
          v162 = v276;
          a2 = v163;
          v18 = v146;
          v98 = v280;
          v68 = v161;
        }

        else
        {
          v18 = v146;
          v98 = v280;
          v68 = v161;
          if (v285 == v286)
          {
            a2 = v286 + v276;
          }

          else
          {
            v165 = v285;
            swift_arrayInitWithTakeBackToFront();
            v164 = v165;
            v162 = v276;
            a2 = v163;
          }
        }
      }

      else
      {
        v162 = v276;
        v166 = a4 + v276;
        a2 = v286;
        v164 = v285;
        if (v285 < a4 || v285 >= v166)
        {
          v169 = v285;
          swift_arrayInitWithTakeFrontToBack();
          v164 = v169;
          v162 = v276;
          v18 = v146;
          v98 = v280;
          v68 = v161;
        }

        else
        {
          v18 = v146;
          v98 = v280;
          v68 = v161;
          if (v285 != a4)
          {
            v167 = v285;
            swift_arrayInitWithTakeBackToFront();
            v164 = v167;
            v162 = v276;
          }
        }

        v290 = v166;
        a4 = v166;
      }

      v285 = v164 + v162;
      v291 = v164 + v162;
      if (a4 >= v270 || a2 >= v287)
      {
        goto LABEL_140;
      }
    }

    v116 = v115;
    v117 = v248;
    sub_21C8399BC(v116, v248, type metadata accessor for PMAccount.MockData);
    v118 = v255;
    sub_21C6EDBAC(v117 + *(v281 + 32), v255, &unk_27CDED250, &qword_21CBA64C0);
    if (v112(v118, 1, v68) != 1)
    {
      sub_21C7126DC(v117, type metadata accessor for PMAccount.MockData);
      (*v274)(v277, v118, v68);
      goto LABEL_37;
    }

    sub_21CB80DA4();
    sub_21C7126DC(v117, type metadata accessor for PMAccount.MockData);
    if (v112(v118, 1, v68) == 1)
    {
      goto LABEL_37;
    }

    v119 = &v287;
    goto LABEL_36;
  }

LABEL_140:
  sub_21C864564(&v291, &v290, &v289);
  return 1;
}

uint64_t sub_21C897058(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_21C89724C(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_21CB864D4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_21CB86484();

    sub_21CB854C4();
    v15 = sub_21CB864D4();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x21CF15F90](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_21C8973A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21C8974A8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_21CB85C44();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_21C89774C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21C8978A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) = *(v0 + 24);
  return sub_21C713C74(v2);
}

void sub_21C897900()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = v1;
  sub_21C886CB8(v1);
}

uint64_t sub_21C897944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8979B0(uint64_t *a1)
{
  v3 = *(sub_21CB85C44() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21C886364(a1, v4, v5);
}

uint64_t sub_21C897A2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C8854EC(a1, v4, v5, v6);
}

uint64_t sub_21C897AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21C6EDBAC(a1, &v24 - v16, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2, &v17[v18], &unk_27CDF20B0, &unk_21CBA0090);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_21C6EDBAC(v17, v12, &unk_27CDF20B0, &unk_21CBA0090);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_21C713E38(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v21 = sub_21CB85574();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v17, &qword_27CDEAC40, &qword_21CBA1A40);
    v20 = 1;
    return v20 & 1;
  }

  sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
  v20 = 0;
  return v20 & 1;
}

uint64_t keypath_set_375Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_21C897E4C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_21C897E98()
{
  result = qword_27CDF76E0;
  if (!qword_27CDF76E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF76E0);
  }

  return result;
}

uint64_t sub_21C897F5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder) = *(v0 + 24);
  return sub_21C710898();
}

uint64_t sub_21C897FA0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask) = *(v0 + 24);
}

uint64_t sub_21C897FE4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_21C898090()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts) = *(v0 + 24);
}

uint64_t sub_21C898198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8982C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PMAppCommands();
  sub_21C6EDBAC(v1 + *(v12 + 40), v11, &qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82484();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21C8984C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PMAppCommands();
  sub_21C6EDBAC(v1 + *(v12 + 44), v11, &qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82A34();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21C8986D0(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 64);
  *(*a2 + 64) = *a1;
}

void sub_21C898714(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PMAppCommands() + 48) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  sub_21CACC6CC(1, 1);
}

uint64_t sub_21C8987A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF150, &qword_21CBABB60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF160, &qword_21CBABB68);
  sub_21C6EADEC(&qword_27CDEF158, &qword_27CDEF160, &qword_21CBABB68);
  sub_21CB85054();
  v11 = *(a2 + *(type metadata accessor for PMAppCommands() + 52) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v12 = v20;
  if (v20)
  {
  }

  v13 = v12 != 0;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v7 + 32))(a3, v10, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF138, &qword_21CBABB58);
  v17 = (a3 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_21C735744;
  v17[2] = v15;
  return result;
}

uint64_t sub_21C8989CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v185 = sub_21CB81024();
  v190 = *(v185 - 8);
  v3 = *(v190 + 64);
  v4 = MEMORY[0x28223BE20](v185);
  v169 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v161 = &v154 - v6;
  v7 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v154 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v171 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v171);
  v157 = (&v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v156 = (&v154 - v13);
  v14 = sub_21CB82444();
  v15 = *(v14 - 8);
  v192 = v14;
  v193 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v166 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v160 = &v154 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v159 = &v154 - v22;
  MEMORY[0x28223BE20](v21);
  v176 = &v154 - v23;
  v155 = type metadata accessor for PMAccount(0);
  v24 = *(v155 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v155);
  v26 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v27 = *(*(v194 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v194);
  v189 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v172 = &v154 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v158 = &v154 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v154 - v34;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C0, &qword_21CBABC88);
  v167 = *(v162 - 8);
  v36 = *(v167 + 64);
  v37 = MEMORY[0x28223BE20](v162);
  v165 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v164 = &v154 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v163 = &v154 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v174 = &v154 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v173 = &v154 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v188 = &v154 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v187 = &v154 - v50;
  MEMORY[0x28223BE20](v49);
  v186 = &v154 - v51;
  v52 = sub_21C7CDA0C(0);
  v54 = v53;
  sub_21C73A7B0(a1, v26, type metadata accessor for PMAccount);
  v55 = *(v24 + 80);
  v56 = (v55 + 16) & ~v55;
  v57 = v56 + v25;
  v179 = v55;
  v58 = swift_allocObject();
  v180 = v56;
  v184 = v26;
  sub_21C73A8E8(v26, v58 + v56, type metadata accessor for PMAccount);
  v182 = v57;
  v183 = 0x800000021CB91C30;
  *(v58 + v57) = 0;
  v198 = v52;
  v199 = v54;
  v195 = &v198;
  v196 = 0xD000000000000014;
  v197 = 0x800000021CB91C30;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v60 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v181 = v59;
  v178 = v60;
  sub_21CB84DA4();

  v191 = a1;
  sub_21C7CCF60(0);
  v62 = v61;
  if (v61)
  {
  }

  v63 = v62 == 0;
  KeyPath = swift_getKeyPath();
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  v66 = &v35[*(v194 + 36)];
  *v66 = KeyPath;
  v66[1] = sub_21C87E800;
  v66[2] = v65;
  v67 = v176;
  sub_21CB82424();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  inited = swift_initStackObject();
  v170 = xmmword_21CBA15B0;
  *(inited + 16) = xmmword_21CBA15B0;
  v69 = sub_21CB82554();
  *(inited + 32) = v69;
  v70 = sub_21CB82574();
  *(inited + 40) = v70;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v69)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  v71 = sub_21CB82594();
  v72 = v161;
  if (v71 != v70)
  {
    sub_21CB82594();
  }

  v177 = sub_21C735EA0();
  sub_21CB84324();
  v73 = *(v193 + 8);
  v193 += 8;
  v176 = v73;
  (v73)(v67, v192);
  sub_21C6EA794(v35, &qword_27CDEEBA0, &qword_21CBABC80);
  v74 = v156;
  v75 = *(v155 + 24);
  sub_21C73A7B0(v191 + v75, v156, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C8A0514(v74, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v76 = *v74;
    [v76 credentialTypes];
  }

  sub_21CB81014();
  v77 = v169;
  sub_21CB81014();
  v78 = sub_21CB80FF4();
  v80 = v79;
  v81 = v190 + 8;
  v82 = *(v190 + 8);
  v83 = v77;
  v84 = v185;
  v82(v83, v185);
  v190 = v81;
  v169 = v82;
  v82(v72, v84);
  v85 = v191;
  v86 = v184;
  sub_21C73A7B0(v191, v184, type metadata accessor for PMAccount);
  v87 = v182;
  v88 = swift_allocObject();
  v89 = sub_21C73A8E8(v86, v88 + v180, type metadata accessor for PMAccount);
  *(v88 + v87) = 1;
  v198 = v78;
  v199 = v80;
  MEMORY[0x28223BE20](v89);
  *(&v154 - 4) = &v198;
  *(&v154 - 3) = 0xD000000000000014;
  *(&v154 - 2) = v183;
  v90 = v158;
  sub_21CB84DA4();

  v91 = v157;
  sub_21C73A7B0(v85 + v75, v157, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v92 = v154;
    sub_21C73A8E8(v91, v154, type metadata accessor for PMAccount.MockData);
    v93 = *(v92 + 24);

    sub_21C8A0514(v92, type metadata accessor for PMAccount.MockData);
    v94 = v159;
    if (v93)
    {

LABEL_15:
      v97 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v95 = *v91;
    v96 = [v95 password];
    v94 = v159;
    if (v96)
    {

      goto LABEL_15;
    }
  }

  v97 = 1;
LABEL_18:
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  *(v99 + 16) = v97;
  v100 = (v90 + *(v194 + 36));
  *v100 = v98;
  v100[1] = sub_21C87E800;
  v100[2] = v99;
  sub_21CB82424();
  v101 = swift_initStackObject();
  *(v101 + 16) = v170;
  v102 = sub_21CB82564();
  *(v101 + 32) = v102;
  v103 = sub_21CB82574();
  *(v101 + 40) = v103;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v102)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v103)
  {
    sub_21CB82594();
  }

  v104 = v194;
  sub_21CB84324();
  (v176)(v94, v192);
  sub_21C6EA794(v90, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v105 = sub_21CB81004();
  v107 = v106;
  (v169)(v72, v185);
  v108 = v184;
  sub_21C73A7B0(v191, v184, type metadata accessor for PMAccount);
  v109 = v182;
  v110 = swift_allocObject();
  v111 = sub_21C73A8E8(v108, v110 + v180, type metadata accessor for PMAccount);
  *(v110 + v109) = 2;
  v198 = v105;
  v199 = v107;
  MEMORY[0x28223BE20](v111);
  *(&v154 - 4) = &v198;
  *(&v154 - 3) = 0xD000000000000014;
  *(&v154 - 2) = v183;
  v112 = v172;
  sub_21CB84DA4();

  sub_21C7CD7BC(2u);
  v114 = v113;
  v115 = swift_getKeyPath();
  v116 = swift_allocObject();
  *(v116 + 16) = (v114 & 1) == 0;
  v117 = &v112[*(v104 + 36)];
  *v117 = v115;
  v117[1] = sub_21C87E800;
  v117[2] = v116;
  v118 = v160;
  sub_21CB82424();
  v119 = swift_initStackObject();
  *(v119 + 16) = v170;
  v120 = sub_21CB82584();
  *(v119 + 32) = v120;
  v121 = sub_21CB82574();
  *(v119 + 40) = v121;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v120)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v121)
  {
    sub_21CB82594();
  }

  v122 = v172;
  sub_21CB84324();
  (v176)(v118, v192);
  sub_21C6EA794(v122, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v123 = sub_21CB81004();
  v125 = v124;
  (v169)(v72, v185);
  v126 = v184;
  sub_21C73A7B0(v191, v184, type metadata accessor for PMAccount);
  v127 = v182;
  v128 = swift_allocObject();
  v129 = sub_21C73A8E8(v126, v128 + v180, type metadata accessor for PMAccount);
  *(v128 + v127) = 3;
  v198 = v123;
  v199 = v125;
  MEMORY[0x28223BE20](v129);
  *(&v154 - 4) = &v198;
  *(&v154 - 3) = 0xD000000000000014;
  *(&v154 - 2) = v183;
  sub_21CB84DA4();

  PMAccount.userVisibleDomain.getter();
  v131 = v130;
  if (v130)
  {
  }

  v132 = v131 == 0;
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  *(v134 + 16) = v132;
  v135 = &v189[*(v194 + 36)];
  *v135 = v133;
  v135[1] = sub_21C87E800;
  v135[2] = v134;
  v136 = v166;
  sub_21CB82424();
  v137 = swift_initStackObject();
  *(v137 + 16) = xmmword_21CBA15A0;
  v138 = sub_21CB82564();
  *(v137 + 32) = v138;
  v139 = sub_21CB82554();
  *(v137 + 40) = v139;
  v140 = sub_21CB82574();
  *(v137 + 48) = v140;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v138)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v139)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v140)
  {
    sub_21CB82594();
  }

  v141 = v173;
  v142 = v189;
  sub_21CB84324();
  (v176)(v136, v192);
  sub_21C6EA794(v142, &qword_27CDEEBA0, &qword_21CBABC80);
  v143 = v167;
  v144 = *(v167 + 16);
  v145 = v174;
  v146 = v162;
  v144(v174, v186, v162);
  v147 = v163;
  v144(v163, v187, v146);
  v148 = v164;
  v144(v164, v188, v146);
  v149 = v165;
  v144(v165, v141, v146);
  v150 = v168;
  v144(v168, v145, v146);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1D8, &qword_21CBABC90);
  v144(&v150[v151[12]], v147, v146);
  v144(&v150[v151[16]], v148, v146);
  v144(&v150[v151[20]], v149, v146);
  v152 = *(v143 + 8);
  v152(v173, v146);
  v152(v188, v146);
  v152(v187, v146);
  v152(v186, v146);
  v152(v149, v146);
  v152(v148, v146);
  v152(v147, v146);
  return (v152)(v174, v146);
}

uint64_t sub_21C899D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF120, &qword_21CBABB00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF130, &qword_21CBABB08);
  sub_21C6EADEC(&qword_27CDEF128, &qword_27CDEF130, &qword_21CBABB08);
  sub_21CB85054();
  v11 = *(a2 + *(type metadata accessor for PMAppCommands() + 52) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v12 = v20;
  if (v20)
  {
  }

  v13 = v12 != 0;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v7 + 32))(a3, v10, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF108, &qword_21CBABAF8);
  v17 = (a3 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_21C87E800;
  v17[2] = v15;
  return result;
}

uint64_t sub_21C899FA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v103 = a1;
  v102 = a2;
  v101 = sub_21CB82444();
  v106 = *(v101 - 8);
  v2 = *(v106 + 64);
  v3 = MEMORY[0x28223BE20](v101);
  v100 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = v80 - v5;
  v6 = type metadata accessor for PMWiFiNetwork();
  v93 = *(v6 - 8);
  v7 = *(v93 + 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v80 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v17 = *(*(v105 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v105);
  v95 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v80 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C0, &qword_21CBABC88);
  v98 = *(v99 - 8);
  v22 = *(v98 + 64);
  v23 = MEMORY[0x28223BE20](v99);
  v97 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v96 = v80 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v94 = v80 - v28;
  MEMORY[0x28223BE20](v27);
  v104 = v80 - v29;
  sub_21CB81014();
  sub_21CB81014();
  v30 = sub_21CB80FF4();
  v32 = v31;
  v33 = *(v10 + 8);
  v33(v14, v9);
  v92 = v9;
  v90 = v10 + 8;
  v88 = v33;
  v33(v16, v9);
  sub_21C73A7B0(v103, v8, type metadata accessor for PMWiFiNetwork);
  v34 = (v93[80] + 16) & ~v93[80];
  v35 = v34 + v7;
  v85 = v93[80];
  v36 = swift_allocObject();
  v86 = v34;
  v93 = v8;
  sub_21C73A8E8(v8, v36 + v34, type metadata accessor for PMWiFiNetwork);
  v89 = v35;
  *(v36 + v35) = 0;
  v110 = v30;
  v111 = v32;
  v107 = &v110;
  v108 = 0xD000000000000014;
  v109 = 0x800000021CB91C30;
  v91 = 0x800000021CB91C30;
  v37 = v21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v39 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v87 = v38;
  v84 = v39;
  sub_21CB84DA4();

  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = v83;
  v43 = (v37 + *(v105 + 36));
  *v43 = KeyPath;
  v43[1] = sub_21C87E800;
  v43[2] = v41;
  sub_21CB82424();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  inited = swift_initStackObject();
  v81 = xmmword_21CBA15B0;
  *(inited + 16) = xmmword_21CBA15B0;
  v45 = sub_21CB82554();
  *(inited + 32) = v45;
  v46 = sub_21CB82574();
  *(inited + 40) = v46;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v45)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v46)
  {
    sub_21CB82594();
  }

  v47 = sub_21C735EA0();
  v48 = v105;
  v80[1] = v47;
  sub_21CB84324();
  v49 = *(v106 + 8);
  v50 = v101;
  v106 += 8;
  v83 = v49;
  (v49)(v42, v101);
  sub_21C6EA794(v37, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  sub_21CB81014();
  v51 = sub_21CB80FF4();
  v53 = v52;
  v54 = v92;
  v55 = v88;
  v88(v14, v92);
  v55(v16, v54);
  v56 = v103;
  v57 = v93;
  sub_21C73A7B0(v103, v93, type metadata accessor for PMWiFiNetwork);
  v58 = v89;
  v59 = swift_allocObject();
  v60 = sub_21C73A8E8(v57, v59 + v86, type metadata accessor for PMWiFiNetwork);
  *(v59 + v58) = 1;
  v110 = v51;
  v111 = v53;
  MEMORY[0x28223BE20](v60);
  v80[-4] = &v110;
  v80[-3] = 0xD000000000000014;
  v80[-2] = v91;
  v61 = v95;
  sub_21CB84DA4();

  LOBYTE(v53) = *(v56 + 40) == 0;
  v62 = swift_getKeyPath();
  v63 = swift_allocObject();
  *(v63 + 16) = v53;
  v64 = (v61 + *(v48 + 36));
  *v64 = v62;
  v64[1] = sub_21C87E800;
  v64[2] = v63;
  v65 = v100;
  sub_21CB82424();
  v66 = swift_initStackObject();
  *(v66 + 16) = v81;
  v67 = sub_21CB82564();
  *(v66 + 32) = v67;
  v68 = sub_21CB82574();
  *(v66 + 40) = v68;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v67)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v68)
  {
    sub_21CB82594();
  }

  v69 = v94;
  sub_21CB84324();
  (v83)(v65, v50);
  sub_21C6EA794(v61, &qword_27CDEEBA0, &qword_21CBABC80);
  v70 = v98;
  v71 = *(v98 + 16);
  v72 = v96;
  v73 = v104;
  v74 = v99;
  v71(v96, v104, v99);
  v75 = v97;
  v71(v97, v69, v74);
  v76 = v102;
  v71(v102, v72, v74);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1E0, &qword_21CBABC98);
  v71(&v76[*(v77 + 48)], v75, v74);
  v78 = *(v70 + 8);
  v78(v69, v74);
  v78(v73, v74);
  v78(v75, v74);
  return (v78)(v72, v74);
}

uint64_t sub_21C89AAEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v131 = a1;
  v149 = a2;
  v2 = type metadata accessor for PMAppSourceListModel.Source(0);
  v138 = *(v2 - 8);
  v3 = *(v138 + 8);
  MEMORY[0x28223BE20](v2);
  v125 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v5 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v130 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v126 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v147 = (&v124 - v12);
  MEMORY[0x28223BE20](v11);
  v140 = (&v124 - v13);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF340, &qword_21CBABFD0);
  v14 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v146 = &v124 - v15;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF338, &unk_21CBABFC0);
  v16 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v139 = &v124 - v17;
  v150 = sub_21CB82444();
  v153 = *(v150 - 8);
  v18 = *(v153 + 64);
  v19 = MEMORY[0x28223BE20](v150);
  v128 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v136 = &v124 - v22;
  MEMORY[0x28223BE20](v21);
  v129 = &v124 - v23;
  v152 = sub_21CB81024();
  v24 = *(v152 - 8);
  v25 = *(v24 + 8);
  v26 = MEMORY[0x28223BE20](v152);
  v28 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v124 - v29;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v141 = *(v151 - 8);
  v31 = *(v141 + 64);
  v32 = MEMORY[0x28223BE20](v151);
  v127 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v132 = &v124 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v124 - v36;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF288, &qword_21CBABF18);
  v142 = *(v143 - 8);
  v38 = *(v142 + 64);
  v39 = MEMORY[0x28223BE20](v143);
  v41 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39);
  v134 = &v124 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v133 = &v124 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v137 = &v124 - v47;
  MEMORY[0x28223BE20](v46);
  v148 = &v124 - v48;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v154 == 1)
  {
    sub_21CB81014();
    sub_21CB81014();
    v49 = sub_21CB80FF4();
    v51 = v50;
    v52 = *(v24 + 1);
    v138 = v52;
    v53 = v152;
    v52(v28, v152);
    v54 = v52(v30, v53);
    v147 = &v124;
    v154 = v49;
    v155 = v51;
    MEMORY[0x28223BE20](v54);
    *(&v124 - 4) = &v154;
    *(&v124 - 3) = 0x72616D6B63656863;
    *(&v124 - 2) = 0xE90000000000006BLL;

    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21CB84DA4();

    v55 = v129;
    sub_21CB82424();
    sub_21CB82574();
    v56 = sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    v57 = v148;
    v58 = v151;
    v147 = v56;
    sub_21CB84324();
    v59 = *(v153 + 8);
    v153 += 8;
    v140 = v59;
    (v59)(v55, v150);
    v141 = *(v141 + 8);
    (v141)(v37, v58);
    sub_21CB81014();
    sub_21CB81014();
    v60 = sub_21CB80FF4();
    v62 = v61;
    v63 = v28;
    v64 = v152;
    v65 = v138;
    v138(v63, v152);
    v66 = v65(v30, v64);
    v154 = v60;
    v155 = v62;
    MEMORY[0x28223BE20](v66);
    *(&v124 - 4) = &v154;
    *(&v124 - 3) = 0x6B72616D78;
    *(&v124 - 2) = 0xE500000000000000;

    v67 = v132;
    sub_21CB84DA4();

    v68 = v136;
    sub_21CB82424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA15B0;
    v70 = sub_21CB82554();
    *(inited + 32) = v70;
    v71 = sub_21CB82574();
    *(inited + 40) = v71;
    sub_21CB82594();
    sub_21CB82594();
    if (sub_21CB82594() != v70)
    {
      sub_21CB82594();
    }

    sub_21CB82594();
    v72 = v57;
    if (sub_21CB82594() != v71)
    {
      sub_21CB82594();
    }

    v73 = v150;
    v74 = v151;
    v75 = v137;
    sub_21CB84324();
    (v140)(v68, v73);
    (v141)(v67, v74);
    v76 = v142;
    v77 = *(v142 + 16);
    v78 = v133;
    v79 = v143;
    v77(v133, v72, v143);
    v80 = v134;
    v81 = v75;
    v77(v134, v75, v79);
    v82 = v139;
    v77(v139, v78, v79);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF348, &qword_21CBAC048);
    v77((v82 + *(v83 + 48)), v80, v79);
    v84 = *(v76 + 8);
    v84(v80, v79);
    v84(v78, v79);
    sub_21C6EDBAC(v82, v146, &qword_27CDEF338, &unk_21CBABFC0);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEF330, &qword_27CDEF338, &unk_21CBABFC0);
    v154 = v74;
    v155 = v147;
    swift_getOpaqueTypeConformance2();
    v85 = v149;
    sub_21CB83494();
    sub_21C6EA794(v82, &qword_27CDEF338, &unk_21CBABFC0);
    v84(v81, v79);
    v84(v148, v79);
    v86 = 0;
    goto LABEL_25;
  }

  v137 = v28;
  v139 = v30;
  v148 = v24;
  v87 = *(type metadata accessor for PMAppCommands() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  v124 = v41;
  if (v155 == 1)
  {
    v91 = v138;
    v92 = v140;
    v93 = v147;
    v94 = v130;
    if (v154)
    {
      v88 = *(v154 + 64);

      j__swift_release();
      swift_getKeyPath();
      v154 = v88;
      sub_21C6F0700(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
      sub_21CB810D4();
      v93 = v147;

      v89 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
      swift_beginAccess();
      sub_21C6EDBAC(v88 + v89, v92, &qword_27CDEAC20, &qword_21CBAD710);

      v90 = *(v91 + 7);
      goto LABEL_12;
    }
  }

  else
  {
    j__swift_release();
    v91 = v138;
    v92 = v140;
    v93 = v147;
    v94 = v130;
  }

  v90 = *(v91 + 7);
  v90(v92, 1, 1, v2);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v90(v93, 0, 1, v2);
  v95 = *(v135 + 48);
  sub_21C6EDBAC(v92, v94, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v93, v94 + v95, &qword_27CDEAC20, &qword_21CBAD710);
  v96 = *(v91 + 6);
  if (v96(v94, 1, v2) == 1)
  {
    sub_21C6EA794(v93, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EA794(v92, &qword_27CDEAC20, &qword_21CBAD710);
    if (v96(v94 + v95, 1, v2) == 1)
    {
      sub_21C6EA794(v94, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_24:
      v86 = 1;
      v85 = v149;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v97 = v126;
  sub_21C6EDBAC(v94, v126, &qword_27CDEAC20, &qword_21CBAD710);
  if (v96(v94 + v95, 1, v2) == 1)
  {
    sub_21C6EA794(v147, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EA794(v140, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C8A0514(v97, type metadata accessor for PMAppSourceListModel.Source);
LABEL_17:
    sub_21C6EA794(v94, &unk_27CDED310, &unk_21CBA0150);
    v98 = v152;
    v99 = v148;
    goto LABEL_18;
  }

  v120 = v125;
  sub_21C73A8E8(v94 + v95, v125, type metadata accessor for PMAppSourceListModel.Source);
  v121 = sub_21C918FE4(v97, v120);
  sub_21C8A0514(v120, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C6EA794(v147, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v140, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C8A0514(v97, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C6EA794(v94, &qword_27CDEAC20, &qword_21CBAD710);
  v98 = v152;
  v99 = v148;
  if (v121)
  {
    goto LABEL_24;
  }

LABEL_18:
  v100 = v139;
  sub_21CB81014();
  v101 = v137;
  sub_21CB81014();
  v102 = sub_21CB80FF4();
  v104 = v103;
  v105 = *(v99 + 1);
  v105(v101, v98);
  v106 = (v105)(v100, v98);
  v156 = v102;
  v157 = v104;
  MEMORY[0x28223BE20](v106);
  *(&v124 - 4) = &v156;
  *(&v124 - 3) = 0x6C69636E6570;
  *(&v124 - 2) = 0xE600000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v107 = v127;
  sub_21CB84DA4();

  v108 = v128;
  sub_21CB82424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  v109 = swift_initStackObject();
  *(v109 + 16) = xmmword_21CBA15B0;
  v110 = sub_21CB82554();
  *(v109 + 32) = v110;
  v111 = sub_21CB82574();
  *(v109 + 40) = v111;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v110)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  v112 = sub_21CB82594();
  v113 = v151;
  if (v112 != v111)
  {
    sub_21CB82594();
  }

  v114 = v150;
  v115 = v141;
  v116 = sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  v117 = v124;
  sub_21CB84324();
  (*(v153 + 8))(v108, v114);
  (*(v115 + 8))(v107, v113);
  v118 = v142;
  v119 = v143;
  (*(v142 + 16))(v146, v117, v143);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEF330, &qword_27CDEF338, &unk_21CBABFC0);
  v156 = v113;
  v157 = v116;
  swift_getOpaqueTypeConformance2();
  v85 = v149;
  sub_21CB83494();
  (*(v118 + 8))(v117, v119);
  v86 = 0;
LABEL_25:
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF328, &qword_21CBABFB8);
  return (*(*(v122 - 8) + 56))(v85, v86, 1, v122);
}

uint64_t sub_21C89C03C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v1 == 1)
  {
    return sub_21CA4A664();
  }

  return result;
}

uint64_t sub_21C89C0C0@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a1;
  v62 = a4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF350, &qword_21CBAC050);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v52 - v7;
  v8 = sub_21CB82444();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = type metadata accessor for PMAppCommands();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF300, &qword_21CBABFA8);
  v55 = *(v56 - 8);
  v18 = *(v55 + 64);
  v19 = MEMORY[0x28223BE20](v56);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF358, &qword_21CBAC058);
  v59 = *(v54 - 8);
  v24 = *(v59 + 64);
  v25 = MEMORY[0x28223BE20](v54);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  sub_21C73A7B0(a2, v17, type metadata accessor for PMAppCommands);
  v30 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v53)
  {
    v32 = swift_allocObject();
    v33 = sub_21C73A8E8(v17, v32 + v30, type metadata accessor for PMAppCommands);
    *(v32 + v31) = a3;
    MEMORY[0x28223BE20](v33);
    *(&v52 - 2) = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF360, &qword_21CBAC060);
    sub_21C8A059C();
    sub_21CB84DA4();
    v34 = v52;
    sub_21CB82424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA15B0;
    v36 = sub_21CB82554();
    *(inited + 32) = v36;
    v37 = sub_21CB82574();
    *(inited + 40) = v37;
    sub_21CB82594();
    sub_21CB82594();
    if (sub_21CB82594() != v36)
    {
      sub_21CB82594();
    }

    sub_21CB82594();
    if (sub_21CB82594() != v37)
    {
      sub_21CB82594();
    }

    v38 = sub_21C6EADEC(&qword_27CDEF308, &qword_27CDEF300, &qword_21CBABFA8);
    v39 = v56;
    sub_21CB84324();
    (*(v57 + 8))(v34, v58);
    (*(v55 + 8))(v21, v39);
    v40 = v59;
    v41 = v54;
    (*(v59 + 16))(v61, v27, v54);
    swift_storeEnumTagMultiPayload();
    v63 = v39;
    v64 = v38;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    v29 = v27;
  }

  else
  {
    v42 = swift_allocObject();
    v43 = sub_21C73A8E8(v17, v42 + v30, type metadata accessor for PMAppCommands);
    *(v42 + v31) = a3;
    MEMORY[0x28223BE20](v43);
    *(&v52 - 2) = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF360, &qword_21CBAC060);
    sub_21C8A059C();
    sub_21CB84DA4();
    sub_21CB82424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_21CBA15B0;
    v45 = sub_21CB82554();
    *(v44 + 32) = v45;
    v46 = sub_21CB82574();
    *(v44 + 40) = v46;
    sub_21CB82594();
    sub_21CB82594();
    v47 = v13;
    if (sub_21CB82594() != v45)
    {
      sub_21CB82594();
    }

    sub_21CB82594();
    v48 = sub_21CB82594();
    v41 = v54;
    if (v48 != v46)
    {
      sub_21CB82594();
    }

    v40 = v59;
    v49 = sub_21C6EADEC(&qword_27CDEF308, &qword_27CDEF300, &qword_21CBABFA8);
    v50 = v56;
    sub_21CB84324();
    (*(v57 + 8))(v47, v58);
    (*(v55 + 8))(v23, v50);
    (*(v40 + 16))(v61, v29, v41);
    swift_storeEnumTagMultiPayload();
    v63 = v50;
    v64 = v49;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
  }

  return (*(v40 + 8))(v29, v41);
}

uint64_t sub_21C89C940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppCommands();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21C73A7B0(a1, v7, type metadata accessor for PMAppCommands);
  sub_21CB858B4();

  v13 = sub_21CB858A4();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21C73A8E8(v7, v16 + v14, type metadata accessor for PMAppCommands);
  *(v16 + v15) = a2;
  sub_21C98B608(0, 0, v11, &unk_21CBAC080, v16);
}

uint64_t sub_21C89CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  sub_21CB858B4();
  v5[7] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_21C89CBE0, v7, v6);
}

uint64_t sub_21C89CBE0()
{
  v1 = *(v0 + 40);
  v2 = *(type metadata accessor for PMAppCommands() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  sub_21CB821D4();
  v3 = *(v0 + 16);
  *(v0 + 80) = v3;
  if (*(v0 + 24) == 1)
  {
    if (v3)
    {
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v4[1] = sub_21C89CD18;
      v5 = *(v0 + 48);

      return sub_21C900FEC(v5);
    }

    v8 = *(v0 + 56);
  }

  else
  {
    v7 = *(v0 + 56);

    j__swift_release();
  }

  **(v0 + 32) = 1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21C89CD18()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  j__swift_release();
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21C89CE60, v5, v4);
}

uint64_t sub_21C89CE60()
{
  v1 = *(v0 + 56);

  **(v0 + 32) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C89CEC8@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF370, &unk_21CBAC068);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = (v6 + 8);
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  (*v15)(v9, v5);
  v20[2] = v16;
  v20[3] = v18;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v11 + 16))(v4, v14, v10);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB83494();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C89D224(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for PMAppCommands() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  result = sub_21CB821D4();
  if (v6 == 1)
  {
    if (!v5)
    {
      return result;
    }

    sub_21C901704(a2);
  }

  return j__swift_release();
}

uint64_t sub_21C89D2B8@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF370, &unk_21CBAC068);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = (v6 + 8);
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  (*v15)(v9, v5);
  v20[2] = v16;
  v20[3] = v18;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v11 + 16))(v4, v14, v10);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB83494();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C89D5FC(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(type metadata accessor for PMAppCommands() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  result = sub_21CB821D4();
  if (v6 == 1)
  {
    if (!v5)
    {
      return result;
    }

    a2(result);
  }

  return j__swift_release();
}

uint64_t sub_21C89D690(uint64_t *a1)
{
  v2 = sub_21CB82A34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C8984C8(v6);
  v7 = *a1;
  v8 = a1[1];
  sub_21CB82A24();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C89D760()
{
  v0 = *(type metadata accessor for PMAppCommands() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  result = v3;
  if (v4 == 1)
  {
    if (!v3)
    {
      return result;
    }

    v2 = *(v3 + 64);
    sub_21C9175A4(0);
  }

  return j__swift_release();
}

uint64_t sub_21C89D7EC()
{
  v1 = type metadata accessor for PMAppCommands();
  v2 = *(v0 + *(v1 + 52) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v3 = *(v8 + 16);

  if (v3)
  {
    v4 = *(v0 + *(v1 + 48) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v5 = v7 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_21C89D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF260, &qword_21CBABDD8);
  v3 = *(v63 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v63);
  v66 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v57 - v7;
  v8 = type metadata accessor for PMAppCommands();
  v9 = v8 - 8;
  v68 = *(v8 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = v11;
  v70 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB81024();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v18 = *(v17 - 8);
  v61 = v17;
  v62 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF268, &unk_21CBABDE0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v64 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v28 = a1;
  v29 = *(a1 + *(v9 + 68) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v29;
  sub_21CB81DB4();

  v30 = *(v71[0] + 16);

  if (v30)
  {
    sub_21CB81014();
    v31 = sub_21CB81004();
    v33 = v32;
    (*(v13 + 8))(v16, v12);
    v34 = v70;
    sub_21C73A7B0(v28, v70, type metadata accessor for PMAppCommands);
    v35 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v36 = swift_allocObject();
    v37 = sub_21C73A8E8(v34, v36 + v35, type metadata accessor for PMAppCommands);
    v58 = v3;
    v71[0] = v31;
    v71[1] = v33;
    MEMORY[0x28223BE20](v37);
    *(&v57 - 4) = v71;
    *(&v57 - 3) = 2036429428;
    v56 = 0xE400000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21CB84DA4();

    v3 = v58;
    LOBYTE(v33) = sub_21C73BDF0();
    KeyPath = swift_getKeyPath();
    v39 = swift_allocObject();
    *(v39 + 16) = v33 & 1;
    v40 = v61;
    v41 = &v21[*(v61 + 36)];
    *v41 = KeyPath;
    v41[1] = sub_21C87E800;
    v41[2] = v39;
    sub_21C716934(v21, v27, &qword_27CDEEBA0, &qword_21CBABC80);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v40 = v61;
  }

  (*(v62 + 56))(v27, v42, 1, v40);
  swift_getKeyPath();
  v59 = v27;
  swift_getKeyPath();
  sub_21CB81DB4();

  v43 = v70;
  sub_21C73A7B0(v28, v70, type metadata accessor for PMAppCommands);
  v44 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v45 = swift_allocObject();
  sub_21C73A8E8(v43, v45 + v44, type metadata accessor for PMAppCommands);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CB85C44();
  sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380);
  sub_21C735EA0();
  v56 = sub_21C6F0700(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup);
  v46 = v65;
  sub_21CB84FF4();
  v47 = v64;
  sub_21C6EDBAC(v27, v64, &qword_27CDEF268, &unk_21CBABDE0);
  v48 = v3;
  v49 = *(v3 + 16);
  v50 = v66;
  v51 = v63;
  v49(v66, v46, v63);
  v52 = v67;
  sub_21C6EDBAC(v47, v67, &qword_27CDEF268, &unk_21CBABDE0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF270, &unk_21CBABDF0);
  v49((v52 + *(v53 + 48)), v50, v51);
  v54 = *(v48 + 8);
  v54(v46, v51);
  sub_21C6EA794(v59, &qword_27CDEF268, &unk_21CBABDE0);
  v54(v50, v51);
  return sub_21C6EA794(v47, &qword_27CDEF268, &unk_21CBABDE0);
}

uint64_t sub_21C89E0F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = *(type metadata accessor for PMAppCommands() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  result = v8;
  if (v9 == 1)
  {
    if (!v8)
    {
      return result;
    }

    v6 = *(v8 + 64);
    v7 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
    sub_21C742C88(v3);
  }

  return j__swift_release();
}

uint64_t sub_21C89E234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = type metadata accessor for PMSharingGroup();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAppCommands();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (a1 + *(v6 + 28));
  v14 = *v13;
  v15 = v13[1];
  sub_21C73A7B0(a2, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  sub_21C73A7B0(a1, v9, type metadata accessor for PMSharingGroup);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21C73A8E8(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for PMAppCommands);
  sub_21C73A8E8(v9, v18 + v17, type metadata accessor for PMSharingGroup);
  v29[0] = v14;
  v29[1] = v15;
  v26 = v29;
  v27 = 0x322E6E6F73726570;
  v28 = 0xE800000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v19 = v25;
  sub_21CB84DA4();

  LOBYTE(a2) = sub_21C73BDF0();
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = a2 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v23 = (v19 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_21C87E800;
  v23[2] = v21;
  return result;
}

uint64_t sub_21C89E558(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(type metadata accessor for PMAppCommands() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  result = v12;
  if (v13 == 1)
  {
    if (!v12)
    {
      return result;
    }

    v9 = *(v12 + 64);
    v10 = sub_21CB85C44();
    (*(*(v10 - 8) + 16))(v6, a2, v10);
    v11 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    sub_21C742C88(v6);
  }

  return j__swift_release();
}

uint64_t sub_21C89E6CC()
{
  v0 = *(type metadata accessor for PMAppCommands() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  result = v3;
  if (v4 == 1)
  {
    if (!v3)
    {
      return result;
    }

    if (*(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet))
    {
      *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21C6F0700(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
      sub_21CB810C4();
    }
  }

  return j__swift_release();
}

uint64_t sub_21C89E850()
{
  v0 = sub_21CB82484();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_21CB80BE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80BD4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21C6EA794(v8, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_21C8982C0(v4);
  sub_21CB82454();
  (*(v1 + 8))(v4, v0);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_21C89EA90()
{
  v0 = *(type metadata accessor for PMAppCommands() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  result = sub_21CB821D4();
  if (v4 != 1)
  {
    return j__swift_release();
  }

  if (v3)
  {
    swift_getKeyPath();
    sub_21C6F0700(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810D4();

    v2 = *(v3 + 16);
    sub_21C7335A8(v2, *(v3 + 24));
    result = j__swift_release();
    if (v2)
    {
      v2(result);
      return sub_21C71B710(v2);
    }
  }

  return result;
}

uint64_t sub_21C89EBDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C6F0700(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  return sub_21C73A7B0(v3 + v4, a2, type metadata accessor for PMWiFiNetwork);
}

uint64_t sub_21C89ECB8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PMWiFiNetwork();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C73A7B0(a1, v7, type metadata accessor for PMWiFiNetwork);
  v8 = *a2;
  return sub_21C9682A4(v7);
}

uint64_t sub_21C89ED58(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21C89EDD4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C73A7B0(a1, &v13 - v9, type metadata accessor for PMAccount);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C73A7B0(v10, v7, type metadata accessor for PMAccount);

  sub_21CB81DC4();
  return sub_21C8A0514(v10, type metadata accessor for PMAccount);
}

uint64_t sub_21C89EF00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

unint64_t sub_21C89EF80()
{
  result = qword_27CDEF050;
  if (!qword_27CDEF050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF048, &qword_21CBABA10);
    sub_21C739F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF050);
  }

  return result;
}

unint64_t sub_21C89F004()
{
  result = qword_27CDEF088;
  if (!qword_27CDEF088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF090, &qword_21CBABA88);
    sub_21C6EADEC(&qword_27CDEF098, &qword_27CDEF0A0, &unk_21CBABA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF088);
  }

  return result;
}

unint64_t sub_21C89F0C0()
{
  result = qword_27CDEF0B0;
  if (!qword_27CDEF0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF0A8, &qword_21CBABAA0);
    sub_21C89F170(&qword_27CDEF0B8, &qword_27CDEF0C0, &qword_21CBABAA8, sub_21C89F220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF0B0);
  }

  return result;
}

uint64_t sub_21C89F170(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C89F220()
{
  result = qword_27CDEF0C8;
  if (!qword_27CDEF0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF0D0, &qword_21CBABAB0);
    sub_21C6EADEC(&qword_27CDEF0D8, &qword_27CDEF0E0, &qword_21CBABAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF0C8);
  }

  return result;
}

unint64_t sub_21C89F2E4()
{
  result = qword_27CDEF118;
  if (!qword_27CDEF118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF120, &qword_21CBABB00);
    sub_21C6EADEC(&qword_27CDEF128, &qword_27CDEF130, &qword_21CBABB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF118);
  }

  return result;
}

unint64_t sub_21C89F3A8()
{
  result = qword_27CDEF148;
  if (!qword_27CDEF148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF150, &qword_21CBABB60);
    sub_21C6EADEC(&qword_27CDEF158, &qword_27CDEF160, &qword_21CBABB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF148);
  }

  return result;
}

uint64_t sub_21C89F48C(uint64_t a1, unsigned __int8 *a2)
{
  result = sub_21C7CCF60(*a2);
  if (v3)
  {
    if (qword_27CDEA480 != -1)
    {
      v6 = result;
      v7 = v3;
      v8 = v4;
      swift_once();
      v4 = v8;
      result = v6;
      v3 = v7;
    }

    v5 = *(qword_27CE18710 + 16);
    sub_21CADAA84(result, v3, v4 & 1);
  }

  return result;
}

uint64_t objectdestroy_45Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v54 = *(*(v2 - 1) + 64);
  v5 = v0 + v4;
  v6 = *(v0 + v4 + 8);

  v7 = (v0 + v4 + v2[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v5 + v2[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v1;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v4 = (v3 + 16) & ~v3;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    v1 = v53;
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v5 + v2[7];
  if (*(v51 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v54 + v4 + 1, v3 | 7);
}

void *sub_21C89FBDC(void *result, char *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result[5];
    if (!v3)
    {
      return result;
    }

    v4 = result[4];
  }

  else
  {
    v4 = result[2];
    v3 = result[3];
  }

  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v5 = *(qword_27CE18710 + 16);
  sub_21CADAA84(v4, v3, v2);
}

uint64_t objectdestroy_83Tm()
{
  v1 = type metadata accessor for PMWiFiNetwork();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = v1[7];
  v9 = sub_21CB80DD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v1[8];
  if (!v11(v4 + v12, 1, v9))
  {
    (*(v10 + 8))(v4 + v12, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v14 + v3 + 1, v2 | 7);
}

uint64_t sub_21C89FE60(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = v4 + *(v3 + 64);

  return a2(v4, v5);
}

uint64_t sub_21C89FF2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppCommands() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C8A0014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppCommands() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C89E234(a1, v6, a2);
}

uint64_t sub_21C8A0094()
{
  v1 = *(type metadata accessor for PMAppCommands() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMSharingGroup() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21C89E558(v0 + v2, v5);
}

unint64_t sub_21C8A0260()
{
  result = qword_27CDEF2F8;
  if (!qword_27CDEF2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF2F0, &qword_21CBABFA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF300, &qword_21CBABFA8);
    sub_21C6EADEC(&qword_27CDEF308, &qword_27CDEF300, &qword_21CBABFA8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF2F8);
  }

  return result;
}

unint64_t sub_21C8A035C()
{
  result = qword_27CDEF318;
  if (!qword_27CDEF318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF310, &qword_21CBABFB0);
    sub_21C8A03E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF318);
  }

  return result;
}

unint64_t sub_21C8A03E0()
{
  result = qword_27CDEF320;
  if (!qword_27CDEF320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF328, &qword_21CBABFB8);
    sub_21C6EADEC(&qword_27CDEF330, &qword_27CDEF338, &unk_21CBABFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF320);
  }

  return result;
}

uint64_t sub_21C8A0514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C8A059C()
{
  result = qword_27CDEF368;
  if (!qword_27CDEF368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF360, &qword_21CBAC060);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF368);
  }

  return result;
}

uint64_t objectdestroy_305Tm()
{
  v1 = type metadata accessor for PMAppCommands();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = v1[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v1[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = v1[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);
  v16 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB82484();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_21CB82A34();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v5 + v1[12] + 8);

  v24 = *(v5 + v1[13] + 8);

  v25 = *(v5 + v1[14] + 8);

  v26 = *(v5 + v1[15] + 8);

  v27 = *(v0 + v22);

  return MEMORY[0x2821FE8E8](v0, v22 + 8, v2 | 7);
}

uint64_t sub_21C8A0978(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMAppCommands() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_21C8A0A20(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppCommands() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C89CB44(a1, v6, v7, v1 + v5, v8);
}

void sub_21C8A0B58()
{
  v1 = type metadata accessor for PMAppCommands();
  v2 = *(v0 + *(v1 + 48) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 8);
  sub_21C750B10();
}

uint64_t sub_21C8A0BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C8A0C28(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_21C8A0CE8()
{
  sub_21CB81BE4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMCredentialPickerViewController(319);
    if (v1 <= 0x3F)
    {
      sub_21C722330(319, &qword_27CDEF3A0, &qword_27CDEA500, &qword_21CB9E610);
      if (v2 <= 0x3F)
      {
        sub_21C722330(319, &qword_27CDEF3A8, &qword_27CDEF3B0, &qword_21CBAC180);
        if (v3 <= 0x3F)
        {
          sub_21C722330(319, &qword_27CDEF3B8, &qword_27CDEF3C0, &unk_21CBAC188);
          if (v4 <= 0x3F)
          {
            sub_21C722330(319, &qword_27CDF2C90, &unk_27CDED260, &qword_21CBA1C60);
            if (v5 <= 0x3F)
            {
              sub_21C722330(319, &qword_27CDEF3C8, &qword_27CDEF3D0, &qword_21CBAC198);
              if (v6 <= 0x3F)
              {
                sub_21C7210DC();
                if (v7 <= 0x3F)
                {
                  sub_21C722330(319, &qword_27CDEF3D8, qword_27CDEF3E0, &qword_21CBAC1A0);
                  if (v8 <= 0x3F)
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

uint64_t sub_21C8A0EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C8A0F18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 253 - (2u >> (8 * v3));
  if (v3 > 3)
  {
    v4 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 >= a2)
  {
    goto LABEL_25;
  }

  v5 = v3 + 1;
  v6 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v9 = ((~(-1 << v6) + a2 - v4) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v3);
      if (v4 <= (v11 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v11);
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return v4 + (v5 | v10) + 1;
}

void sub_21C8A104C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = 253 - (2u >> (8 * v5));
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_31:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
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

    goto LABEL_31;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_35:
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_35;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_39:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v8)
  {
    a1[v7] = v14;
  }
}

BOOL sub_21C8A122C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_21C8AF988(a4, a5);
  }

  while ((sub_21CB85574() & 1) == 0);
  return v10 != v11;
}

BOOL sub_21C8A137C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_21C8A13AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21C8A1458(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_21C8A1508(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_21CB80E34();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C8A1720(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x21CF15BD0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_21CB85FA4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_21C8A1848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21CB81B54();
  if (sub_21CB81AD4() == a1 && v6 == a2)
  {

    return 1;
  }

  v8 = sub_21CB86344();

  if (v8)
  {
    return 1;
  }

  v12[0] = a1;
  v12[1] = a2;
  MEMORY[0x28223BE20](v9);
  v11[2] = v12;
  sub_21C8A13AC(sub_21C8ADF40, v11, a3);

  return a1;
}

uint64_t sub_21C8A1958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v48 = a2;
  v45 = *(a3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](a1);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = v7;
  v43 = &v41 - v8;
  v9 = type metadata accessor for PMPasskeyAccountRegistrationContentView.PickerSelection();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v22 = &v41 - v21;
  v24 = *(v23 + 48);
  v46 = v10;
  v25 = *(v10 + 16);
  v25(&v41 - v21, v47, v9, v20);
  (v25)(&v22[v24], v48, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v27 = v16;
    v28 = v13;
    v30 = v43;
    v29 = v44;
    if (EnumCaseMultiPayload)
    {
      v32 = v28;
      (v25)(v28, v22, v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = v45;
        (*(v45 + 32))(v29, &v22[v24], a3);
        v35 = *(v42 + 8);
        v33 = sub_21CB85574();
        v36 = *(v34 + 8);
        v36(v29, a3);
        v36(v32, a3);
        goto LABEL_18;
      }
    }

    else
    {
      v31 = v27;
      (v25)(v27, v22, v9);
      if (!swift_getEnumCaseMultiPayload())
      {
        v37 = v45;
        (*(v45 + 32))(v30, &v22[v24], a3);
        v38 = *(v42 + 8);
        v33 = sub_21CB85574();
        v39 = *(v37 + 8);
        v39(v30, a3);
        v39(v31, a3);
        goto LABEL_18;
      }

      v32 = v31;
    }

    (*(v45 + 8))(v32, a3);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_12:
      v33 = 1;
LABEL_18:
      v18 = v46;
      goto LABEL_19;
    }
  }

LABEL_16:
  v33 = 0;
  v9 = TupleTypeMetadata2;
LABEL_19:
  (*(v18 + 8))(v22, v9);
  return v33 & 1;
}

uint64_t sub_21C8A1D98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15, a2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v4 + 32))(v7, v13, v3);
      v18 = 1;
    }

    else
    {
      (*(v4 + 32))(v7, v13, v3);
      v18 = 0;
    }

    MEMORY[0x21CF15F90](v18);
    v20 = *(a2 + 24);
    sub_21CB85494();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = 2;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    return MEMORY[0x21CF15F90](v17);
  }
}

uint64_t sub_21C8A1F88(uint64_t a1)
{
  sub_21CB86484();
  sub_21C8A1D98(v3, a1);
  return sub_21CB864D4();
}

uint64_t sub_21C8A1FD8(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  sub_21C8A1D98(v4, a2);
  return sub_21CB864D4();
}

unint64_t sub_21C8A2048()
{
  result = qword_27CDEF468;
  if (!qword_27CDEF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF468);
  }

  return result;
}

uint64_t sub_21C8A209C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_21CB81BD4();
  v4 = sub_21CB81AB4();

  if (v4 >> 62)
  {
    v5 = sub_21CB85FA4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    return 0;
  }

  v6 = v1 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 32);
  v10 = *v6;
  v11 = v6[8];
  v12 = *(v6 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  if (v9 != 255)
  {
    sub_21C8ADEEC(v8, v9);
    return 0;
  }

  return 1;
}

uint64_t sub_21C8A2180@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v102 = a1;
  v103 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = v86 - v6;
  v7 = sub_21CB80A84();
  v100 = *(v7 - 8);
  v8 = *(v100 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3D0, &qword_21CBAC198);
  v10 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v105 = (v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = v86 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v90 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v86 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v86 - v22;
  v24 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v25 = a3 + v24[6];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v88 = v26;
  v87 = v28;
  v86[1] = v27 + 56;
  (v28)(v23, 1, 1);
  sub_21C6EDBAC(v23, v20, &qword_27CDEA500, &qword_21CB9E610);
  v89 = v25;
  sub_21CB84D44();
  v29 = v100;
  sub_21C6EA794(v23, &qword_27CDEA500, &qword_21CB9E610);
  v30 = a3 + v24[7];
  v110 = 0;
  v111 = 0;
  v112 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3B0, &qword_21CBAC180);
  sub_21CB84D44();
  v31 = v114;
  v32 = v115;
  v33 = v116;
  v94 = v113;
  *v30 = v113;
  *(v30 + 1) = v31;
  v93 = v31;
  v92 = v32;
  v30[16] = v32;
  v95 = v33;
  *(v30 + 3) = v33;
  v34 = (a3 + v24[8]);
  v110 = 0;
  LOBYTE(v111) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3C0, &unk_21CBAC188);
  sub_21CB84D44();
  v35 = v114;
  v36 = v115;
  v97 = v113;
  *v34 = v113;
  v96 = v35;
  *(v34 + 8) = v35;
  v98 = v36;
  v99 = v34;
  v34[2] = v36;
  v110 = 0;
  v111 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  v108 = v114;
  v106 = v115;
  v37 = a3 + v24[10];
  v38 = sub_21CB81B84();
  (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
  sub_21C6EDBAC(v14, v105, &qword_27CDEF3D0, &qword_21CBAC198);
  v107 = v37;
  sub_21CB84D44();
  v109 = v14;
  sub_21C6EA794(v14, &qword_27CDEF3D0, &qword_21CBAC198);
  v39 = a3 + v24[11];
  LOBYTE(v110) = 0;
  sub_21CB84D44();
  v40 = v114;
  *v39 = v113;
  *(v39 + 1) = v40;
  v41 = a3 + v24[12];
  LOBYTE(v110) = 0;
  sub_21CB84D44();
  v42 = v114;
  *v41 = v113;
  *(v41 + 1) = v42;
  v105 = v24;
  v43 = a3 + v24[13];
  LOBYTE(v110) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEF3E0, &qword_21CBAC1A0);
  sub_21CB84D44();
  v44 = v114;
  *v43 = v113;
  *(v43 + 1) = v44;
  v45 = v102;
  v46 = v103;
  *a3 = v102;
  a3[1] = v46;
  v104 = a3;
  v47 = v45;
  v48 = sub_21CB81BD4();
  v49 = v101;
  sub_21CB81B24();

  if ((*(v29 + 48))(v49, 1, v7) == 1)
  {
    sub_21C6EA794(v49, &qword_27CDEF470, &qword_21CBC94D0);
  }

  else
  {
    v50 = *(v29 + 32);
    v51 = v91;
    v50(v91, v49, v7);
    v52 = sub_21CB81BD4();
    v53 = sub_21CB81A94();

    sub_21CB81B54();
    sub_21CB81AD4();

    sub_21C8A122C(v51, v53, MEMORY[0x277CC8E50], &qword_27CDEF478, MEMORY[0x277CC8E50]);

    v54 = v90;
    v50(v90, v51, v7);
    v55 = v88;
    swift_storeEnumTagMultiPayload();
    v87(v54, 0, 1, v55);
    v56 = v30;
    v57 = v89;
    sub_21C6EA794(v89, &qword_27CDEF380, &qword_21CBAC140);
    *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140) + 28)) = 0;
    v58 = v57;
    v30 = v56;
    sub_21C716934(v54, v58, &qword_27CDEA500, &qword_21CB9E610);
  }

  v59 = sub_21CB81BD4();
  v60 = sub_21CB81A74();
  v62 = v61;

  if (v62)
  {
    v63 = sub_21CB81BD4();
    v64 = sub_21CB81AC4();

    v65 = sub_21C8A1848(v60, v62, v64);
    v67 = v66;
    v69 = v68;

    sub_21C8ADF14(v94, v93, v92);

    *v30 = v65;
    *(v30 + 1) = v67;
    v30[16] = v69;
    *(v30 + 3) = 0;
  }

  v70 = sub_21CB81BD4();
  v71 = sub_21CB81A54();

  if (v71)
  {
    v72 = sub_21CB81BD4();
    v73 = sub_21CB81AB4();

    sub_21CB81B54();
    sub_21CB81AD4();

    v113 = v71;
    MEMORY[0x28223BE20](v74);
    v86[-2] = &v113;
    LOBYTE(v72) = sub_21C8A1720(sub_21C8ADED0, &v86[-4], v73);

    sub_21C8ADEEC(v97, v96);

    v75 = v99;
    *v99 = v71;
    *(v75 + 8) = (v72 & 1) == 0;
    v75[2] = 0;
  }

  v76 = sub_21CB81BD4();
  v77 = v109;
  sub_21CB81AE4();

  v78 = v107;
  sub_21C6EA794(v107, &qword_27CDEF388, &qword_21CBAC148);
  *(v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148) + 28)) = 0;
  sub_21C716934(v77, v78, &qword_27CDEF3D0, &qword_21CBAC198);
  v79 = sub_21CB81BD4();

  v80 = sub_21CB81B04();
  v82 = v81;

  if (v82)
  {
    v83 = v80;
  }

  else
  {
    v83 = 0;
  }

  v85 = (v104 + v105[9]);
  *v85 = v83;
  v85[1] = v82;
  v85[2] = 0;
  return result;
}

uint64_t sub_21C8A2AE0@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5A0, &qword_21CB9E6A0);
  v3 = *(v2 - 8);
  v119 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v122 = &v107 - v5;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4F0, &qword_21CBAC458);
  v6 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v107 - v7;
  *&v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4F8, &qword_21CBAC460);
  v8 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v107 - v9;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF500, &qword_21CBAC468);
  v114 = *(v112 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  v111 = &v107 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF508, &qword_21CBAC470);
  v12 = *(*(v121 - 1) + 64);
  MEMORY[0x28223BE20](v121);
  v110 = &v107 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF510, &qword_21CBAC478);
  v109 = *(v108 - 8);
  v14 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  v16 = &v107 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF518, &qword_21CBAC480);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v107 - v20;
  v123 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF520, &qword_21CBAC488);
  sub_21C6EADEC(&qword_27CDEF528, &qword_27CDEF520, &qword_21CBAC488);
  sub_21CB83EF4();
  v22 = sub_21CB829D4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB85294();
  v27 = sub_21C6EADEC(&qword_27CDEF530, &qword_27CDEF518, &qword_21CBAC480);
  v28 = sub_21C8AF988(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  sub_21CB849C4();
  (*(v23 + 8))(v26, v22);
  (*(v18 + 8))(v21, v17);
  *&v126 = v17;
  *(&v126 + 1) = v22;
  v127 = v27;
  v128 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v110;
  v30 = v108;
  sub_21CB845F4();
  (*(v109 + 8))(v16, v30);
  LOBYTE(v30) = sub_21CB83CD4();
  sub_21CB81F24();
  v31 = v121;
  v32 = &v29[*(v121 + 9)];
  v33 = v29;
  *v32 = v30;
  *(v32 + 1) = v34;
  *(v32 + 2) = v35;
  *(v32 + 3) = v36;
  *(v32 + 4) = v37;
  v32[40] = 0;
  v38 = sub_21CB83CF4();
  v39 = sub_21CB83764();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_21CB83754();
  v43 = sub_21C8AE3F4();
  v44 = v111;
  v45 = v31;
  v46 = v33;
  MEMORY[0x21CF13D70](v38, 0, 0, &v107 - v42, v45, v43);
  v47 = *(v40 + 8);
  v47(&v107 - v42, v39);
  sub_21C6EA794(v46, &qword_27CDEF508, &qword_21CBAC470);
  v48 = sub_21CB83D04();
  MEMORY[0x28223BE20](v48);
  sub_21CB83754();
  *&v126 = v121;
  *(&v126 + 1) = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v113;
  v51 = v48;
  v52 = v112;
  MEMORY[0x21CF13D70](v51, 0, 0, &v107 - v42, v112, OpaqueTypeConformance2);
  v47(&v107 - v42, v39);
  (*(v114 + 8))(v44, v52);
  *(v50 + *(v115 + 36)) = 256;
  sub_21C8AE57C();
  sub_21C8AE67C();
  v53 = v116;
  sub_21CB844C4();
  sub_21C6EA794(v50, &qword_27CDEF4F8, &qword_21CBAC460);
  v54 = sub_21CB830D4();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v107 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB830B4();
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF550, &qword_21CBAC490) + 36);
  (*(v55 + 16))(&v53[v59], v58, v54);
  v60 = *(v55 + 56);
  v60(&v53[v59], 0, 1, v54);
  KeyPath = swift_getKeyPath();
  v62 = &v53[*(v118 + 36)];
  v63 = v53;
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v55 + 32))(v62 + v64, v58, v54);
  v60(v62 + v64, 0, 1, v54);
  *v62 = KeyPath;
  sub_21C8AE6D0();
  sub_21CB84604();
  sub_21C6EA794(v63, &qword_27CDEF4F0, &qword_21CBAC458);
  v65 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v66 = v117;
  v67 = v117 + *(v65 + 52);
  v68 = *v67;
  v69 = *(v67 + 8);
  LOBYTE(v126) = v68;
  *(&v126 + 1) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF568, &unk_21CBAC4C8);
  sub_21CB84D54();
  LODWORD(v121) = v124;
  v70 = v66 + *(v65 + 48);
  v71 = *v70;
  v72 = *(v70 + 8);
  LOBYTE(v124) = v71;
  v125 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  v73 = sub_21CB84D74();
  v74 = *(&v126 + 1);
  v118 = v126;
  LODWORD(v116) = v127;
  v75 = *(v65 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_21C8AEA48(v66, &v107 - v77, type metadata accessor for PMPasskeyAccountRegistrationContentView);
  v78 = *(v75 + 80);
  v79 = swift_allocObject();
  sub_21C8AE898(&v107 - v77, v79 + ((v78 + 16) & ~v78));
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_21CB84D44();
  v115 = v126;
  v80 = v127;
  v124 = 0;
  v125 = 0xE000000000000000;
  v81 = sub_21CB84D44();
  v82 = v126;
  v83 = v127;
  v84 = v122 + *(v119 + 44);
  *v84 = v121;
  *(v84 + 1) = v130[0];
  *(v84 + 4) = *(v130 + 3);
  *(v84 + 8) = v118;
  *(v84 + 16) = v74;
  *(v84 + 24) = v116;
  *(v84 + 25) = *v129;
  *(v84 + 28) = *&v129[3];
  *(v84 + 32) = sub_21C8AE8FC;
  *(v84 + 40) = v79;
  *(v84 + 48) = v115;
  *(v84 + 64) = v80;
  *(v84 + 72) = v82;
  *(v84 + 88) = v83;
  MEMORY[0x28223BE20](v81);
  sub_21C8AEA48(v66, &v107 - v77, type metadata accessor for PMPasskeyAccountRegistrationContentView);
  sub_21CB858B4();
  v85 = sub_21CB858A4();
  v86 = swift_allocObject();
  v87 = MEMORY[0x277D85700];
  *(v86 + 16) = v85;
  *(v86 + 24) = v87;
  sub_21C8AE898(&v107 - v77, v86 + ((v78 + 32) & ~v78));
  v88 = sub_21CB858E4();
  v89 = *(v88 - 8);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = &v107 - v91;
  sub_21CB858C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v93 = sub_21CB827C4();
    v121 = &v107;
    v118 = *(v93 - 8);
    v119 = v93;
    v94 = *(v118 + 64);
    MEMORY[0x28223BE20](v93);
    v96 = &v107 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v126 = 0;
    *(&v126 + 1) = 0xE000000000000000;
    sub_21CB86094();

    *&v126 = 0xD00000000000004CLL;
    *(&v126 + 1) = 0x800000021CB92110;
    v124 = 112;
    v97 = sub_21CB862F4();
    MEMORY[0x21CF151F0](v97);

    v99 = MEMORY[0x28223BE20](v98);
    (*(v89 + 16))(&v107 - v91, &v107 - v91, v88, v99);
    sub_21CB827B4();
    (*(v89 + 8))(&v107 - v91, v88);
    v100 = v120;
    sub_21C763D98(v122, v120);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5A8, &qword_21CB9E6A8);
    return (*(v118 + 32))(v100 + *(v101 + 36), v96, v119);
  }

  else
  {
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5B0, &qword_21CB9E6B0);
    v104 = v120;
    v105 = (v120 + *(v103 + 36));
    v106 = sub_21CB824F4();
    (*(v89 + 32))(&v105[*(v106 + 20)], v92, v88);
    *v105 = &unk_21CBAC4E0;
    *(v105 + 1) = v86;
    return sub_21C763D98(v122, v104);
  }
}

uint64_t sub_21C8A3958@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF580, &qword_21CBAC4F8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF588, &qword_21CBAC500);
  v33 = *(v7 - 8);
  v8 = v33;
  v34 = v7;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF590, &qword_21CBAC508);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  sub_21C8A3CAC(&v31 - v20);
  sub_21C8A4524(v14);
  v32 = v6;
  sub_21C8A4964(v6);
  sub_21C6EDBAC(v21, v18, &qword_27CDEF590, &qword_21CBAC508);
  v22 = *(v8 + 16);
  v23 = v11;
  v24 = v34;
  v22(v11, v14, v34);
  v25 = v6;
  v26 = v35;
  sub_21C6EDBAC(v25, v35, &qword_27CDEF580, &qword_21CBAC4F8);
  v27 = v36;
  sub_21C6EDBAC(v18, v36, &qword_27CDEF590, &qword_21CBAC508);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF598, &qword_21CBAC510);
  v22((v27 + *(v28 + 48)), v23, v24);
  sub_21C6EDBAC(v26, v27 + *(v28 + 64), &qword_27CDEF580, &qword_21CBAC4F8);
  sub_21C6EA794(v32, &qword_27CDEF580, &qword_21CBAC4F8);
  v29 = *(v33 + 8);
  v29(v14, v24);
  sub_21C6EA794(v21, &qword_27CDEF590, &qword_21CBAC508);
  sub_21C6EA794(v26, &qword_27CDEF580, &qword_21CBAC4F8);
  v29(v23, v24);
  return sub_21C6EA794(v18, &qword_27CDEF590, &qword_21CBAC508);
}

uint64_t sub_21C8A3CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v68 = *(v3 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = v5;
  v70 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  v6 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = v57 - v7;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF818, &qword_21CBAC720);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v63 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF820, &qword_21CBAC728);
  v66 = *(v22 - 8);
  v67 = v22;
  v23 = *(v66 + 64);
  MEMORY[0x28223BE20](v22);
  v65 = v57 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF828, &qword_21CBAC730);
  v74 = *(v25 - 8);
  v26 = *(v74 + 64);
  MEMORY[0x28223BE20](v25);
  v64 = v57 - v27;
  v28 = *v1;
  v29 = sub_21CB81BC4();
  v30 = sub_21CB81B64();

  if (v30)
  {
    v62 = v25;
    v31 = *(v3 + 24);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
    v61 = v31;
    sub_21CB84D74();
    sub_21CB81014();
    sub_21CB81014();
    sub_21CB80FF4();

    v32 = *(v9 + 8);
    v32(v12, v8);
    v32(v15, v8);
    v33 = sub_21C8A59B0();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
    }

    else
    {
      sub_21CB81014();
      v35 = sub_21CB81004();
      v36 = v40;
      v32(v15, v8);
    }

    v41 = sub_21CB84BB4();
    sub_21C8A59B0();
    if (v42)
    {

      v43 = sub_21CB84B14();
    }

    else
    {
      v43 = sub_21CB84A64();
    }

    v75 = v43;
    v44 = sub_21CB82384();
    v59 = v57;
    MEMORY[0x28223BE20](v44);
    v75 = v35;
    v76 = v36;
    v77 = v41;
    v78 = v45;
    v46 = sub_21C6EDBAC(v21, v63, &qword_27CDEF818, &qword_21CBAC720);
    v57[1] = v57;
    MEMORY[0x28223BE20](v46);

    v57[0] = v21;
    v58 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5B0, &qword_21CBAC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF830, &qword_21CBAC738);
    sub_21C6EADEC(&qword_27CDEF5C0, &qword_27CDEF5B0, &qword_21CBAC530);
    sub_21C8AF6E4();
    sub_21C8AF794();
    v47 = v65;
    sub_21CB84E34();

    sub_21C6EA794(v57[0], &qword_27CDEF818, &qword_21CBAC720);

    v48 = v58;
    v49 = v72;
    sub_21CB84D54();
    v50 = v70;
    sub_21C8AEA48(v48, v70, type metadata accessor for PMPasskeyAccountRegistrationContentView);
    v51 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v52 = swift_allocObject();
    sub_21C8AE898(v50, v52 + v51);
    sub_21C6EADEC(&qword_27CDEF860, &qword_27CDEF820, &qword_21CBAC728);
    sub_21C8AF8D0();
    v53 = v64;
    v54 = v67;
    sub_21CB84924();

    sub_21C6EA794(v49, &qword_27CDEA500, &qword_21CB9E610);
    (*(v66 + 8))(v47, v54);
    v55 = v73;
    v56 = v62;
    (*(v74 + 32))(v73, v53, v62);
    return (*(v74 + 56))(v55, 0, 1, v56);
  }

  else
  {
    v37 = v73;
    v38 = *(v74 + 56);

    return v38(v37, 1, 1, v25);
  }
}

uint64_t sub_21C8A4524@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = v6;
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF610, &qword_21CBAC588);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF618, &qword_21CBAC590);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = &v34 - v14;
  sub_21C8A6F70(v10);
  v15 = v1 + *(v3 + 36);
  v34 = v1;
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  v47 = *v15;
  LOBYTE(v48) = v16;
  v49 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  v18 = v45;
  v19 = v46;
  v47 = v45;
  LOBYTE(v48) = v46;
  v39 = type metadata accessor for PMPasskeyAccountRegistrationContentView;
  v37 = v7;
  sub_21C8AEA48(v1, v7, type metadata accessor for PMPasskeyAccountRegistrationContentView);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_21C8AE898(v7, v21 + v20);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3B0, &qword_21CBAC180);
  v22 = sub_21C8AF168();
  v35 = sub_21C8AF358();
  sub_21CB84924();

  sub_21C8ADF14(v18, *(&v18 + 1), v19);
  sub_21C6EA794(v10, &qword_27CDEF610, &qword_21CBAC588);
  v23 = v34;
  v24 = v34 + *(v3 + 40);
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  *&v47 = v25;
  BYTE8(v47) = v26;
  v48 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  v28 = v45;
  LOBYTE(v3) = BYTE8(v45);
  v29 = v37;
  sub_21C8AEA48(v23, v37, v39);
  v30 = swift_allocObject();
  sub_21C8AE898(v29, v30 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3C0, &unk_21CBAC188);
  *&v47 = v43;
  *(&v47 + 1) = v36;
  v48 = v22;
  v49 = v35;
  swift_getOpaqueTypeConformance2();
  sub_21C8AF488();
  v31 = v40;
  v32 = v44;
  sub_21CB84924();

  sub_21C8ADEEC(v28, v3);
  return (*(v41 + 8))(v32, v31);
}

uint64_t sub_21C8A4964@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = v6;
  v56 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5A0, &qword_21CBAC518);
  v58 = *(v52 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v52);
  v57 = v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5A8, &unk_21CBAC520);
  v15 = *(v14 - 8);
  v59 = v14;
  v60 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v53 = v45 - v17;
  v18 = *v1;
  v19 = sub_21CB81BD4();
  v20 = sub_21CB81AF4();

  v21 = sub_21C967C20(v20, &unk_282E48DC8);

  sub_21C6EA794(&unk_282E48DE8, &unk_27CDED260, &qword_21CBA1C60);
  if (v21)
  {
    v22 = v59;
    v23 = *(v60 + 56);

    return v23(a1, 1, 1, v22);
  }

  else
  {
    v25 = (v2 + *(v4 + 36));
    v26 = *v25;
    v49 = v25[1];
    v50 = v26;
    v48 = v25[2];
    v61 = v26;
    v62 = v49;
    v63 = v48;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
    sub_21CB84D74();
    v27 = v2;
    v28 = v65;
    v29 = v66;
    v30 = v67;
    v31 = v68;
    sub_21CB81014();
    sub_21CB81004();

    (*(v8 + 8))(v11, v7);
    v46 = v27;
    v32 = sub_21C8AB9EC();
    v34 = v33;
    v45[3] = v33;
    v35 = sub_21CB84BB4();
    v45[5] = v45;
    MEMORY[0x28223BE20](v35);
    v65 = sub_21CB84B14();
    v51 = a1;
    v36 = sub_21CB82384();
    v45[4] = v45;
    v65 = v32;
    v66 = v34;
    v67 = v35;
    v68 = v36;
    v45[2] = v28;
    v61 = v28;
    v62 = v29;
    v63 = v30;
    v64 = v31;
    v45[1] = v31;
    MEMORY[0x28223BE20](v36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5B0, &qword_21CBAC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5B8, &qword_21CBAC538);
    sub_21C6EADEC(&qword_27CDEF5C0, &qword_27CDEF5B0, &qword_21CBAC530);
    sub_21C8AEF68(&qword_27CDEF5C8);
    sub_21C8AEB10();
    v37 = v57;
    sub_21CB84E34();

    v65 = v50;
    v66 = v49;
    v67 = v48;
    sub_21CB84D54();
    v65 = v61;
    v66 = v62;
    v38 = v56;
    sub_21C8AEA48(v46, v56, type metadata accessor for PMPasskeyAccountRegistrationContentView);
    v39 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v40 = swift_allocObject();
    sub_21C8AE898(v38, v40 + v39);
    sub_21C6EADEC(&qword_27CDEF5E0, &qword_27CDEF5A0, &qword_21CBAC518);
    sub_21C8AEF68(&qword_27CDEED70);
    v42 = v52;
    v41 = v53;
    sub_21CB84934();

    (*(v58 + 8))(v37, v42);
    v43 = v59;
    v44 = v51;
    (*(v60 + 32))(v51, v41, v59);
    return (*(v60 + 56))(v44, 0, 1, v43);
  }
}

uint64_t sub_21C8A5124(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = sub_21CB80A84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UserInputAlert.Result(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C8AEA48(a1, v19, type metadata accessor for UserInputAlert.Result);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *v19;
      v22 = v19[1];
      v23 = *a2;
      v24 = sub_21CB81BD4();
      v25 = sub_21CB81AC4();

      v26 = sub_21C8A1848(v21, v22, v25);
      v28 = v27;
      v30 = v29;

      v31 = a2 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28);
      v32 = v31[16];
      v33 = *(v31 + 3);
      v51 = *v31;
      LOBYTE(v52) = v32;
      v53 = v33;
      v48 = v26;
      v49 = v28;
      v50 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
      return sub_21CB84D64();
    }

    else
    {
      v39 = *v19;
      v40 = *a2;
      v41 = sub_21CB81BD4();
      v42 = sub_21CB81AB4();

      sub_21CB81B54();
      sub_21CB81AD4();

      *&v51 = v39;
      MEMORY[0x28223BE20](v43);
      *(&v47 - 2) = &v51;
      LOBYTE(v41) = (sub_21C8A1720(sub_21C8AFB68, (&v47 - 4), v42) & 1) == 0;
      sub_21C79B0A8(v39, v41);

      v44 = a2 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 32);
      v46 = *(v44 + 2);
      LOBYTE(v42) = v44[8];
      *&v51 = *v44;
      v45 = v51;
      BYTE8(v51) = v42;
      v52 = v46;
      v48 = v39;
      LOBYTE(v49) = v41;
      sub_21C79B094(v51, v42);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
      sub_21CB84D64();

      sub_21C8ADEEC(v45, v42);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    v35 = *a2;
    v36 = sub_21CB81BD4();
    v37 = sub_21CB81A94();

    sub_21CB81B54();
    sub_21CB81AD4();

    sub_21C8A122C(v15, v37, MEMORY[0x277CC8E50], &qword_27CDEF478, MEMORY[0x277CC8E50]);

    (*(v12 + 16))(v10, v15, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
    swift_storeEnumTagMultiPayload();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
    (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
    LODWORD(v36) = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 24);
    sub_21C6EDBAC(v10, v7, &qword_27CDEA500, &qword_21CB9E610);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
    sub_21CB84D64();
    sub_21C6EA794(v10, &qword_27CDEA500, &qword_21CB9E610);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_21C8A5660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  sub_21CB858B4();
  v3[5] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21C8A56F8, v5, v4);
}

uint64_t sub_21C8A56F8()
{
  v1 = **(v0 + 32);
  *(v0 + 64) = sub_21CB81BD4();
  v2 = *(MEMORY[0x277CF03D8] + 4);
  v5 = (*MEMORY[0x277CF03D8] + MEMORY[0x277CF03D8]);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_21C8A57AC;

  return v5();
}

uint64_t sub_21C8A57AC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 81) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_21C8A58F4, v6, v5);
}

uint64_t sub_21C8A58F4()
{
  v1 = *(v0 + 81);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = (v3 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 44));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21C8A59B0()
{
  v0 = sub_21CB80A84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
  sub_21CB84D54();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v14 = 0;
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
  {
    sub_21C6EDBAC(v11, v8, &qword_27CDEA500, &qword_21CB9E610);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_21C6EA794(v8, &qword_27CDEA518, &unk_21CBAC380);
      v14 = 0;
    }

    else
    {
      (*(v1 + 32))(v4, v8, v0);
      v14 = sub_21CB80A74();
      (*(v1 + 8))(v4, v0);
    }
  }

  sub_21C6EA794(v11, &qword_27CDEA500, &qword_21CB9E610);
  return v14;
}

uint64_t sub_21C8A5C18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF858, &qword_21CBAC740);
  sub_21C6EADEC(&qword_27CDEF850, &qword_27CDEF858, &qword_21CBAC740);
  return sub_21CB85054();
}

uint64_t sub_21C8A5CBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v93 = &v85[-v6];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF878, &qword_21CBAC748);
  v98 = *(v105 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v85[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v95 = &v85[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF880, &qword_21CBAC750);
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x28223BE20](v11);
  v94 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v102 = &v85[-v15];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF888, &qword_21CBAC758);
  v16 = *(v92 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v92);
  v19 = &v85[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v90 = &v85[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v85[-v24];
  v26 = sub_21CB80A84();
  v89 = *(v26 - 8);
  v27 = *(v89 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v85[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF890, &qword_21CBAC760);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v101 = &v85[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v104 = &v85[-v34];
  v35 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
  v100 = a1;
  sub_21CB84D54();
  v36 = (*(v4 + 48))(v25, 1, v3);
  v91 = v3;
  if (v36 == 1)
  {
    v37 = &qword_27CDEA500;
    v38 = &qword_21CB9E610;
LABEL_6:
    sub_21C6EA794(v25, v37, v38);
    v50 = 1;
    v49 = v92;
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = &qword_27CDEA518;
    v38 = &unk_21CBAC380;
    goto LABEL_6;
  }

  v39 = v89;
  (*(v89 + 32))(v29, v25, v26);
  v106 = sub_21CB80A74();
  v107 = v40;
  sub_21C71F3FC();
  v41 = sub_21CB84054();
  v87 = v42;
  v86 = v43;
  v88 = v44;
  v45 = v90;
  sub_21CB84D54();
  (*(v39 + 8))(v29, v26);
  v46 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4F8, &unk_21CBAC790) + 36)];
  sub_21C716934(v45, v46, &qword_27CDEA500, &qword_21CB9E610);
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA508, &qword_21CB9E618) + 36)) = 1;
  v47 = v87;
  *v19 = v41;
  *(v19 + 1) = v47;
  v19[16] = v86 & 1;
  *(v19 + 3) = v88;
  v48 = v92;
  (*(v16 + 32))(v104, v19, v92);
  v49 = v48;
  v50 = 0;
LABEL_7:
  v51 = v104;
  (*(v16 + 56))(v104, v50, 1, v49);
  v52 = *v100;
  v53 = sub_21CB81BD4();
  v54 = sub_21CB81A94();

  v110 = v54;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF898, &qword_21CBAC780);
  sub_21C6EADEC(&qword_27CDEF8A0, &qword_27CDEF898, &qword_21CBAC780);
  sub_21C8AF988(&qword_27CDEF8A8, MEMORY[0x277CC8E50]);
  v55 = sub_21C6EADEC(&qword_27CDEF840, &qword_27CDEA518, &unk_21CBAC380);
  v106 = MEMORY[0x277CE0BD8];
  v107 = v91;
  v108 = MEMORY[0x277CE0BC8];
  v109 = v55;
  swift_getOpaqueTypeConformance2();
  v56 = v102;
  sub_21CB84FD4();
  v106 = sub_21C8A67E4();
  v107 = v57;
  sub_21C71F3FC();
  v58 = sub_21CB84054();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v93;
  swift_storeEnumTagMultiPayload();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA510, &unk_21CB9E620);
  v67 = v95;
  v68 = &v95[*(v66 + 36)];
  sub_21C716934(v65, v68, &qword_27CDEA518, &unk_21CBAC380);
  *(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA520, &unk_21CB9E630) + 36)) = 1;
  *v67 = v58;
  *(v67 + 1) = v60;
  v67[16] = v62 & 1;
  *(v67 + 3) = v64;
  v69 = v101;
  sub_21C6EDBAC(v51, v101, &qword_27CDEF890, &qword_21CBAC760);
  v70 = v96;
  v100 = *(v96 + 16);
  v71 = v94;
  v72 = v56;
  v73 = v97;
  (v100)(v94, v72, v97);
  v74 = v98;
  v75 = *(v98 + 16);
  v75(v103, v67, v105);
  v76 = v69;
  v77 = v99;
  sub_21C6EDBAC(v76, v99, &qword_27CDEF890, &qword_21CBAC760);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF8B0, &qword_21CBAC788);
  (v100)(v77 + *(v78 + 48), v71, v73);
  v79 = v77 + *(v78 + 64);
  v80 = v103;
  v81 = v105;
  v75(v79, v103, v105);
  v82 = *(v74 + 8);
  v82(v67, v81);
  v83 = *(v70 + 8);
  v83(v102, v73);
  sub_21C6EA794(v104, &qword_27CDEF890, &qword_21CBAC760);
  v82(v80, v81);
  v83(v71, v73);
  return sub_21C6EA794(v101, &qword_27CDEF890, &qword_21CBAC760);
}

uint64_t sub_21C8A6660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v19[0] = sub_21CB80A74();
  v19[1] = v8;
  sub_21C71F3FC();
  v9 = sub_21CB84054();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_21CB80A84();
  (*(*(v16 - 8) + 16))(v7, a1, v16);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA510, &unk_21CB9E620) + 36);
  sub_21C716934(v7, v17, &qword_27CDEA518, &unk_21CBAC380);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA520, &unk_21CB9E630);
  *(v17 + *(result + 36)) = 1;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_21C8A67E4()
{
  v1 = v0;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
  sub_21CB84D54();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_21C6EA794(v10, &qword_27CDEA500, &qword_21CB9E610);
  if (v13 == 1)
  {
    v14 = *v1;
    v15 = sub_21CB81BD4();
    v16 = sub_21CB81A94();

    v17 = *(v16 + 16);
  }

  sub_21CB81014();
  v18 = sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  return v18;
}

void sub_21C8A6A20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA500, &qword_21CB9E610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v47 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v25 = *(v47 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
  v26 = a3;
  sub_21CB84D54();
  v27 = *(v5 + 48);
  if (v27(v24, 1, v4) == 1)
  {
    sub_21C6EA794(v24, &qword_27CDEA500, &qword_21CB9E610);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21C6EA794(v24, &qword_27CDEA518, &unk_21CBAC380);
    if (EnumCaseMultiPayload == 2)
    {
      sub_21C6EDBAC(v48, v21, &qword_27CDEA500, &qword_21CB9E610);
      sub_21CB84D64();
      v29 = v47;
      v30 = v26 + *(v47 + 52);
      v31 = *v30;
      v32 = *(v30 + 1);
      v54 = v31;
      v55 = v32;
      v53 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF568, &unk_21CBAC4C8);
      sub_21CB84D64();
      v33 = v26 + *(v29 + 48);
      v34 = *v33;
      v35 = *(v33 + 1);
      v54 = v34;
      v55 = v35;
      v53 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D64();
      return;
    }
  }

  v36 = *v26;
  v37 = sub_21CB81BD4();
  sub_21CB84D54();
  if (v27(v18, 1, v4))
  {
    sub_21C6EA794(v18, &qword_27CDEA500, &qword_21CB9E610);
    v38 = sub_21CB80A84();
    (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
  }

  else
  {
    v39 = v49;
    sub_21C6EDBAC(v18, v49, &qword_27CDEA518, &unk_21CBAC380);
    sub_21C6EA794(v18, &qword_27CDEA500, &qword_21CB9E610);
    v40 = v50;
    sub_21C716934(v39, v50, &qword_27CDEA518, &unk_21CBAC380);
    v41 = swift_getEnumCaseMultiPayload();
    v42 = sub_21CB80A84();
    v43 = *(v42 - 8);
    v44 = v43;
    if (v41 > 1)
    {
      v45 = v51;
      (*(v43 + 56))(v51, 1, 1, v42);
      sub_21C6EA794(v40, &qword_27CDEA518, &unk_21CBAC380);
    }

    else
    {
      v45 = v51;
      (*(v43 + 32))(v51, v40, v42);
      (*(v44 + 56))(v45, 0, 1, v42);
    }

    sub_21C716934(v45, v52, &qword_27CDEF470, &qword_21CBC94D0);
  }

  sub_21CB81B34();
}

uint64_t sub_21C8A6F70@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF660, &qword_21CBAC5B0);
  v38 = *(v42 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v42);
  v37 = v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF698, &qword_21CBAC5C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v35 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6A0, &qword_21CBAC5D0);
  v7 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF640, &qword_21CBAC5A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v41 = v35 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF650, &qword_21CBAC5A8);
  v36 = *(v40 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v15 = v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3D0, &qword_21CBAC198);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v35 - v21;
  v23 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);
  sub_21CB84D54();
  v24 = sub_21CB81B84();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) != 1)
  {
    v35[0] = v10;
    v35[1] = v3;
    sub_21C6EDBAC(v22, v19, &qword_27CDEF3D0, &qword_21CBAC198);
    v26 = (*(v25 + 88))(v19, v24);
    if (v26 == *MEMORY[0x277CF03E0])
    {
      v27 = v37;
      sub_21C8A7AEC(v37);
      v28 = v38;
      v29 = v42;
      (*(v38 + 16))(v9, v27, v42);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDEF648, &qword_27CDEF650, &qword_21CBAC5A8);
      sub_21C6EADEC(&qword_27CDEF658, &qword_27CDEF660, &qword_21CBAC5B0);
      v30 = v41;
      sub_21CB83494();
      sub_21C6EDBAC(v30, v6, &qword_27CDEF640, &qword_21CBAC5A0);
      swift_storeEnumTagMultiPayload();
      sub_21C8AF278();
      sub_21CB83494();
      sub_21C6EA794(v30, &qword_27CDEF640, &qword_21CBAC5A0);
      (*(v28 + 8))(v27, v29);
      return sub_21C6EA794(v22, &qword_27CDEF3D0, &qword_21CBAC198);
    }

    if (v26 == *MEMORY[0x277CF03E8])
    {
      sub_21C8A7614(v15);
      v31 = v36;
      v32 = v40;
      (*(v36 + 16))(v9, v15, v40);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDEF648, &qword_27CDEF650, &qword_21CBAC5A8);
      sub_21C6EADEC(&qword_27CDEF658, &qword_27CDEF660, &qword_21CBAC5B0);
      v33 = v41;
      sub_21CB83494();
      sub_21C6EDBAC(v33, v6, &qword_27CDEF640, &qword_21CBAC5A0);
      swift_storeEnumTagMultiPayload();
      sub_21C8AF278();
      sub_21CB83494();
      sub_21C6EA794(v33, &qword_27CDEF640, &qword_21CBAC5A0);
      (*(v31 + 8))(v15, v32);
      return sub_21C6EA794(v22, &qword_27CDEF3D0, &qword_21CBAC198);
    }

    (*(v25 + 8))(v19, v24);
  }

  swift_storeEnumTagMultiPayload();
  sub_21C8AF278();
  sub_21CB83494();
  return sub_21C6EA794(v22, &qword_27CDEF3D0, &qword_21CBAC198);
}

uint64_t sub_21C8A7614@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = (v1 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28));
  v11 = *(v10 + 16);
  v12 = *(v10 + 3);
  v47 = *v10;
  LOBYTE(v48) = v11;
  v49 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D74();
  v38 = v43;
  v39 = v42;
  v13 = v44;
  v41 = v45;
  v14 = v46;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();

  v15 = *(v3 + 8);
  v15(v6, v2);
  v15(v9, v2);
  v16 = sub_21C8A8BDC();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
  }

  else
  {
    sub_21CB81014();
    v18 = sub_21CB81004();
    v19 = v20;
    v15(v9, v2);
  }

  v21 = sub_21CB84BB4();
  sub_21C8A8BDC();
  if (v22)
  {

    v23 = sub_21CB84B14();
  }

  else
  {
    v23 = sub_21CB84A64();
  }

  v42 = v23;
  v24 = sub_21CB82384();
  v37 = v30;
  MEMORY[0x28223BE20](v24);
  v34 = v29;
  v35 = v19;
  v36 = v30;
  *&v47 = v18;
  *(&v47 + 1) = v19;
  v48 = v21;
  v49 = v25;
  v33 = v25;
  v42 = v39;
  v43 = v38;
  v26 = v41;
  v44 = v13;
  v45 = v41;
  v46 = v14;
  MEMORY[0x28223BE20](v25);

  sub_21C79B068(v13, v26, v14);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5B0, &qword_21CBAC530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3B0, &qword_21CBAC180);
  v32 = v13;
  v31 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6A8, &qword_21CBAC5D8);
  sub_21C6EADEC(&qword_27CDEF5C0, &qword_27CDEF5B0, &qword_21CBAC530);
  v27 = sub_21C8AF540();
  v29[1] = sub_21C6EADEC(&qword_27CDEF6C0, &qword_27CDEF6A8, &qword_21CBAC5D8);
  v29[2] = MEMORY[0x277CE1410];
  v29[0] = v27;
  sub_21CB84E34();

  sub_21C8ADF14(v32, v41, v31);
}

uint64_t sub_21C8A7AEC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = (v1 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 32));
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = v10[2];
  v42 = v11;
  LOBYTE(v43) = v12;
  v44 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D74();
  v14 = v46;
  v15 = v47;
  v16 = v48;
  v17 = v49;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();

  v18 = *(v3 + 8);
  v18(v6, v2);
  v18(v9, v2);
  v19 = sub_21C8AA738();
  if (!v20)
  {
    v19 = sub_21C8AA814();
  }

  v21 = v19;
  v22 = v20;
  v23 = sub_21CB84BB4();
  v24 = sub_21CB84A34();
  sub_21C8AA738();
  if (v25)
  {
  }

  else if ((sub_21C8A209C() & 1) == 0)
  {
    v26 = sub_21CB84A64();
    goto LABEL_7;
  }

  v26 = sub_21CB84B14();
LABEL_7:
  v46 = v26;
  v27 = sub_21CB82384();
  v40 = &v32;
  MEMORY[0x28223BE20](v27);
  v37 = v28;
  v38 = v31;
  v39 = &v32;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v24;
  v50 = v28;
  v42 = v14;
  v43 = v15;
  v44 = v16;
  v45 = v17;
  MEMORY[0x28223BE20](v28);
  v36 = v31;

  sub_21C79B094(v16, v17);
  v35 = v16;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF770, &qword_21CBAC690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3C0, &unk_21CBAC188);
  v33 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF778, &qword_21CBAC698);
  v34 = v22;
  sub_21C6EADEC(&qword_27CDEF780, &qword_27CDEF770, &qword_21CBAC690);
  v29 = sub_21C8AF608();
  v31[1] = sub_21C6EADEC(&qword_27CDEF798, &qword_27CDEF778, &qword_21CBAC698);
  v31[2] = MEMORY[0x277CE1410];
  v31[0] = v29;
  sub_21CB84E34();

  sub_21C8ADEEC(v35, v33);
}

uint64_t sub_21C8A7FA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v57 - v7;
  v63 = sub_21CB81604();
  v61 = *(v63 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3D0, &qword_21CBAC198);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v57 - v14;
  v16 = *a1;
  v15 = *(a1 + 8);
  v17 = *(a1 + 16);
  v59 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v18 = a3 + v59[7];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[16];
  v22 = *(v18 + 3);
  v66 = *v18;
  v67 = v20;
  LOBYTE(v68) = v21;
  v69 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  if (v65 < 2u)
  {
    sub_21C8ADF14(v64, *(&v64 + 1), v65);
    v23 = *a3;
    v24 = sub_21CB81BD4();
    v66 = v19;
    v67 = v20;
    LOBYTE(v68) = v21;
    v69 = v22;
    sub_21CB84D54();
    if (v65 == 255)
    {
      v25 = v62;
    }

    else
    {
      v25 = v62;
      if (v65 >= 2u)
      {
        sub_21C8ADF14(v64, *(&v64 + 1), v65);
      }
    }

    sub_21CB81A84();

    goto LABEL_24;
  }

  if (v65 != 255)
  {
    if (v64 == 0)
    {
      v66 = v19;
      v67 = v20;
      LOBYTE(v68) = v21;
      v69 = v22;
      *&v64 = v16;
      *(&v64 + 1) = v15;
      v65 = v17;
      sub_21C79B068(v16, v15, v17);
      sub_21CB84D64();
      v30 = v59;
      v31 = a3 + v59[13];
      v32 = *v31;
      v33 = *(v31 + 1);
      LOBYTE(v66) = v32;
      v67 = v33;
      LOBYTE(v64) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF568, &unk_21CBAC4C8);
      sub_21CB84D64();
      v34 = a3 + v30[12];
      v35 = *v34;
      v36 = *(v34 + 1);
      LOBYTE(v66) = v35;
      v67 = v36;
      LOBYTE(v64) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
LABEL_22:
      sub_21CB84D64();
      goto LABEL_23;
    }

    if (!(v64 ^ 1 | *(&v64 + 1)))
    {
      v28 = *a3;
      v29 = sub_21CB81BD4();
      sub_21CB81B54();
      sub_21CB81AD4();
      sub_21CB81A84();

      goto LABEL_23;
    }

    v37 = *a3;
    v38 = sub_21CB81BD4();
    v39 = sub_21CB81AB4();

    if (v39 >> 62)
    {
      result = sub_21CB85FA4();
      v41 = v59;
      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = v59;
      if (result)
      {
LABEL_15:
        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x21CF15BD0](0, v39);
        }

        else
        {
          if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v42 = *(v39 + 32);
        }

        v43 = v42;

        v44 = a3 + v41[8];
        v45 = *v44;
        v46 = v44[8];
        v47 = *(v44 + 2);
        v66 = v45;
        LOBYTE(v67) = v46;
        v68 = v47;
        *&v64 = v43;
        BYTE8(v64) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
        sub_21CB84D64();
        goto LABEL_21;
      }
    }

LABEL_21:
    v48 = *MEMORY[0x277CF03E0];
    v49 = sub_21CB81B84();
    v50 = *(v49 - 8);
    v51 = v57;
    (*(v50 + 104))(v57, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = v59[10];
    sub_21C6EDBAC(v51, v58, &qword_27CDEF3D0, &qword_21CBAC198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);
    sub_21CB84D64();
    sub_21C6EA794(v51, &qword_27CDEF3D0, &qword_21CBAC198);
    v66 = v19;
    v67 = v20;
    LOBYTE(v68) = v21;
    v69 = v22;
    v64 = 0uLL;
    v65 = -1;
    goto LABEL_22;
  }

  v26 = *a3;
  v27 = sub_21CB81BD4();
  sub_21CB81A84();

LABEL_23:
  v25 = v62;
LABEL_24:
  v53 = a3[1];
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  v54 = v61;
  v55 = v63;
  if ((*(v61 + 48))(v25, 1, v63) == 1)
  {
    return sub_21C6EA794(v25, &qword_27CDF85D0, &qword_21CBC9430);
  }

  v56 = v60;
  (*(v54 + 32))(v60, v25, v55);
  sub_21CB05380();
  return (*(v54 + 8))(v56, v55);
}

uint64_t sub_21C8A85EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v53 - v7;
  v8 = sub_21CB81604();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF3D0, &qword_21CBAC198);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v20 = a3 + v19[8];
  v21 = *v20;
  v22 = v20[8];
  v23 = *(v20 + 2);
  *&v61 = *v20;
  BYTE8(v61) = v22;
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  v24 = v58;
  if (v59 >= 2u)
  {
    if (v59 == 255)
    {
      v30 = *a3;
      v31 = sub_21CB81BD4();
      sub_21CB81A64();
    }

    else
    {
      if (v58)
      {
        if (v58 != 1)
        {
          v32 = *a3;
          v33 = sub_21CB81BD4();
          v34 = sub_21CB81AC4();

          if (v34[2])
          {
            v36 = v34[4];
            v35 = v34[5];

            v37 = a3 + v19[7];
            v38 = v37[16];
            v39 = *(v37 + 3);
            v61 = *v37;
            LOBYTE(v62) = v38;
            v63 = v39;
            v58 = v36;
            v59 = v35;
            v60 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
            sub_21CB84D64();
          }

          else
          {
          }

          v46 = *MEMORY[0x277CF03E8];
          v47 = sub_21CB81B84();
          v48 = *(v47 - 8);
          (*(v48 + 104))(v16, v46, v47);
          (*(v48 + 56))(v16, 0, 1, v47);
          v49 = v19[10];
          sub_21C6EDBAC(v16, v53, &qword_27CDEF3D0, &qword_21CBAC198);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);
          sub_21CB84D64();
          sub_21C6EA794(v16, &qword_27CDEF3D0, &qword_21CBAC198);
          *&v61 = v21;
          BYTE8(v61) = v22;
          v62 = v23;
          v58 = 0;
          LOBYTE(v59) = -1;
          sub_21C79B094(v21, v22);

          sub_21CB84D64();
          sub_21C8ADEEC(2, 2u);
          sub_21C8ADEEC(v21, v22);

          goto LABEL_17;
        }
      }

      else
      {
        *&v61 = v21;
        BYTE8(v61) = v22;
        v62 = v23;
        v58 = v17;
        LOBYTE(v59) = v18;
        sub_21C79B094(v17, v18);
        sub_21CB84D64();
        v40 = a3 + v19[13];
        v41 = *v40;
        v42 = *(v40 + 1);
        LOBYTE(v61) = v41;
        *(&v61 + 1) = v42;
        LOBYTE(v58) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF568, &unk_21CBAC4C8);
        sub_21CB84D64();
        v43 = a3 + v19[12];
        v44 = *v43;
        v45 = *(v43 + 1);
        LOBYTE(v61) = v44;
        *(&v61 + 1) = v45;
        LOBYTE(v58) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
        sub_21CB84D64();
        v24 = 0;
      }

      sub_21C8ADEEC(v24, 2u);
    }

LABEL_17:
    v28 = v56;
    v27 = v57;
    v29 = v55;
    goto LABEL_18;
  }

  sub_21C8ADEEC(v58, v59);
  v25 = *a3;
  v26 = sub_21CB81BD4();
  *&v61 = v21;
  BYTE8(v61) = v22;
  v62 = v23;
  sub_21CB84D54();
  if (v59 == 255)
  {
    v28 = v56;
    v27 = v57;
    v29 = v55;
  }

  else
  {
    v27 = v57;
    v29 = v55;
    v28 = v56;
    if (v59 >= 2u)
    {
      sub_21C8ADEEC(v58, v59);
    }
  }

  sub_21CB81A64();

LABEL_18:
  v50 = a3[1];
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    return sub_21C6EA794(v27, &qword_27CDF85D0, &qword_21CBC9430);
  }

  v52 = v54;
  (*(v29 + 32))(v54, v27, v28);
  sub_21CB05380();
  return (*(v29 + 8))(v52, v28);
}

uint64_t sub_21C8A8BDC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28);
  v7 = v6[16];
  v8 = *(v6 + 3);
  v27 = *v6;
  v28 = v7;
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  result = v24;
  if (v26 <= 1u)
  {
    if (v26 < 2u)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v26 == 255)
  {
    return 0;
  }

  if (v26 != 2 || v24 != 1 || v25)
  {
LABEL_14:
    sub_21C8ADF14(v24, v25, v26);
    return 0;
  }

  sub_21CB81B54();
  *&v27 = sub_21CB81AD4();
  *(&v27 + 1) = v10;

  MEMORY[0x21CF151F0](10, 0xE100000000000000);

  v11 = v27;
  sub_21CB81014();
  sub_21CB81004();
  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21CBA0690;
  v13 = *v0;
  v14 = sub_21CB81BD4();
  v15 = sub_21CB81AA4();
  v17 = v16;

  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21C7C0050();
  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (v17)
  {
    v19 = v17;
  }

  *(v12 + 32) = v18;
  *(v12 + 40) = v19;
  v20 = sub_21CB85594();
  v22 = v21;

  v27 = v11;

  MEMORY[0x21CF151F0](v20, v22);
  sub_21C8ADF14(1, 0, 2u);

  return v27;
}

uint64_t sub_21C8A8EA0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6C8, &qword_21CBAC5E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v69 - v6;
  v7 = sub_21CB81B84();
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6D0, &qword_21CBAC5E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = &v69 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6D8, &qword_21CBAC5F0);
  v15 = *(v72 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6E0, &qword_21CBAC5F8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v80 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v69 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6E8, &qword_21CBAC600);
  v77 = *(v24 - 8);
  v78 = v24;
  v25 = *(v77 + 64);
  MEMORY[0x28223BE20](v24);
  v76 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  v85 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF6F0, &qword_21CBAC608);
  sub_21C6EADEC(&qword_27CDEF6F8, &qword_27CDEF6F0, &qword_21CBAC608);
  v84 = v29;
  sub_21CB85054();
  v30 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 44);
  v73 = a1;
  v31 = a1 + v30;
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v86) = v32;
  v87 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v82 = v23;
  if (v90 == 1)
  {
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF710, &qword_21CBAC628);
    v34 = v3;
    v35 = v7;
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA528, &qword_21CBAC630);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF678, &qword_21CBAC5B8);
    v38 = sub_21C6EADEC(&qword_27CDEF718, &qword_27CDEA528, &qword_21CBAC630);
    v39 = sub_21C6EADEC(&qword_27CDEF6B8, &qword_27CDEF678, &qword_21CBAC5B8);
    v86 = v36;
    v87 = v37;
    v7 = v35;
    v3 = v34;
    v23 = v82;
    v88 = v38;
    v89 = v39;
    swift_getOpaqueTypeConformance2();
    v40 = v70;
    sub_21CB85054();
    v41 = v40;
    v42 = v72;
    (*(v15 + 32))(v23, v41, v72);
    v43 = 0;
    v44 = v42;
  }

  else
  {
    v43 = 1;
    v44 = v72;
  }

  v45 = 1;
  (*(v15 + 56))(v23, v43, 1, v44);
  v46 = *v73;
  v47 = sub_21CB81BC4();
  v48 = sub_21CB81B74();

  v50 = v74;
  v49 = v75;
  (*(v75 + 104))(v74, *MEMORY[0x277CF03E0], v7);
  LOBYTE(v47) = sub_21C8A122C(v50, v48, MEMORY[0x277CF03F0], &qword_27CDEF740, MEMORY[0x277CF03F0]);

  (*(v49 + 8))(v50, v7);
  if (v47)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF708, &unk_21CBAC618);
    v51 = v3;
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF678, &qword_21CBAC5B8);
    v54 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v55 = sub_21C6EADEC(&qword_27CDEF6B8, &qword_27CDEF678, &qword_21CBAC5B8);
    v86 = v52;
    v87 = v53;
    v3 = v51;
    v88 = v54;
    v89 = v55;
    swift_getOpaqueTypeConformance2();
    v56 = v71;
    sub_21CB85054();
    (*(v4 + 32))(v83, v56, v51);
    v45 = 0;
  }

  v57 = v83;
  (*(v4 + 56))(v83, v45, 1, v3);
  v59 = v76;
  v58 = v77;
  v60 = *(v77 + 16);
  v61 = v78;
  v60(v76, v84, v78);
  v62 = v82;
  v63 = v80;
  sub_21C6EDBAC(v82, v80, &qword_27CDEF6E0, &qword_21CBAC5F8);
  v64 = v79;
  sub_21C6EDBAC(v57, v79, &qword_27CDEF6D0, &qword_21CBAC5E8);
  v65 = v81;
  v60(v81, v59, v61);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF700, &qword_21CBAC610);
  sub_21C6EDBAC(v63, &v65[*(v66 + 48)], &qword_27CDEF6E0, &qword_21CBAC5F8);
  sub_21C6EDBAC(v64, &v65[*(v66 + 64)], &qword_27CDEF6D0, &qword_21CBAC5E8);
  sub_21C6EA794(v57, &qword_27CDEF6D0, &qword_21CBAC5E8);
  sub_21C6EA794(v62, &qword_27CDEF6E0, &qword_21CBAC5F8);
  v67 = *(v58 + 8);
  v67(v84, v61);
  sub_21C6EA794(v64, &qword_27CDEF6D0, &qword_21CBAC5E8);
  sub_21C6EA794(v63, &qword_27CDEF6E0, &qword_21CBAC5F8);
  return (v67)(v59, v61);
}

uint64_t sub_21C8A97DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF748, &qword_21CBAC648);
  v75 = *(v80 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v71 = &v64[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF750, &qword_21CBAC650);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v78 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v77 = &v64[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF758, &qword_21CBAC658);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v64[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF760, &qword_21CBAC660);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v76 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v64[-v21];
  v23 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28);
  v70 = a1;
  v24 = a1 + v23;
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = v24[16];
  v28 = *(v24 + 3);
  *&v83 = *v24;
  *(&v83 + 1) = v26;
  LOBYTE(v84) = v27;
  v85 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  if (v82 == 255)
  {
    goto LABEL_5;
  }

  if (v82 != 1)
  {
    sub_21C8ADF14(v81, *(&v81 + 1), v82);
LABEL_5:
    (*(v13 + 56))(v22, 1, 1, v12);
    goto LABEL_6;
  }

  v83 = v81;
  sub_21C71F3FC();
  v29 = sub_21CB84054();
  v67 = v30;
  v68 = v29;
  v65 = v31;
  v66 = v32;
  *&v83 = v25;
  *(&v83 + 1) = v26;
  LOBYTE(v84) = v27;
  v85 = v28;
  sub_21CB84D54();
  v33 = v82;
  v34 = v81;
  v35 = v65 & 1;
  LOBYTE(v83) = v65 & 1;
  v36 = v67;
  *v16 = v68;
  *(v16 + 1) = v36;
  v16[16] = v35;
  *(v16 + 3) = v66;
  *(v16 + 2) = v34;
  v16[48] = v33;
  v16[49] = 1;
  (*(v13 + 32))(v22, v16, v12);
  (*(v13 + 56))(v22, 0, 1, v12);
LABEL_6:
  v69 = v22;
  v37 = *v70;
  v38 = sub_21CB81BD4();
  v39 = sub_21CB81AC4();

  *&v81 = v39;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  sub_21C6EADEC(&qword_27CDEBEE8, &qword_27CDEBED0, &unk_21CBA1A60);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF678, &qword_21CBAC5B8);
  v41 = sub_21C6EADEC(&qword_27CDEF6B8, &qword_27CDEF678, &qword_21CBAC5B8);
  *&v83 = MEMORY[0x277CE0BD8];
  *(&v83 + 1) = v40;
  v84 = MEMORY[0x277CE0BC8];
  v85 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v77;
  sub_21CB84FD4();
  *&v83 = sub_21C8A9F38();
  *(&v83 + 1) = v43;
  sub_21C71F3FC();
  v44 = sub_21CB84054();
  LOBYTE(v83) = v45 & 1;
  v46 = v71;
  *v71 = v44;
  v46[1] = v47;
  *(v46 + 16) = v45 & 1;
  v46[4] = 0;
  v46[5] = 0;
  v46[3] = v48;
  *(v46 + 24) = 258;
  v49 = v76;
  sub_21C6EDBAC(v22, v76, &qword_27CDEF760, &qword_21CBAC660);
  v51 = v72;
  v50 = v73;
  v70 = *(v72 + 16);
  v52 = v78;
  (v70)(v78, v42, v73);
  v53 = v75;
  v54 = *(v75 + 16);
  v54(v79, v46, v80);
  v55 = v49;
  v56 = v74;
  sub_21C6EDBAC(v55, v74, &qword_27CDEF760, &qword_21CBAC660);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF768, &qword_21CBAC688);
  (v70)(v56 + *(v57 + 48), v52, v50);
  v58 = v56 + *(v57 + 64);
  v59 = v79;
  v60 = v80;
  v54(v58, v79, v80);
  v61 = *(v53 + 8);
  v61(v46, v60);
  v62 = *(v51 + 8);
  v62(v77, v50);
  sub_21C6EA794(v69, &qword_27CDEF760, &qword_21CBAC660);
  v61(v59, v60);
  v62(v78, v50);
  return sub_21C6EA794(v76, &qword_27CDEF760, &qword_21CBAC660);
}

uint64_t sub_21C8A9EB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21C71F3FC();

  *a2 = sub_21CB84054();
  *(a2 + 8) = v6;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = 256;
}

uint64_t sub_21C8A9F38()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 28);
  v7 = v6[16];
  v8 = *(v6 + 3);
  v17 = *v6;
  v18 = v7;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF578, &qword_21CBAC4F0);
  sub_21CB84D54();
  if (v16 == 255)
  {
    v9 = *v0;
    v10 = sub_21CB81BD4();
    v11 = sub_21CB81AC4();

    v12 = *(v11 + 16);
  }

  else
  {
    sub_21C8ADF14(v15[1], v15[2], v16);
  }

  sub_21CB81014();
  v13 = sub_21CB81004();
  (*(v2 + 8))(v5, v1);
  return v13;
}

double sub_21C8AA0E4@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA528, &qword_21CBAC630);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF720, &qword_21CBAC638);
  sub_21C6EADEC(&qword_27CDEF728, &qword_27CDEF720, &qword_21CBAC638);
  sub_21CB84C84();
  (*(v3 + 32))(a1, v6, v2);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA530, &unk_21CB9E640) + 36);
  *&result = 1;
  *v7 = xmmword_21CBA3540;
  *(v7 + 16) = 258;
  return result;
}

uint64_t sub_21C8AA284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0);

  return sub_21CB81FC4();
}

uint64_t sub_21C8AA328@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81B54();
  v27 = sub_21CB81AD4();
  v28 = v7;
  sub_21C71F3FC();
  v8 = sub_21CB84054();
  v10 = v9;
  v25 = v11;
  v13 = v12;
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  v27 = v14;
  v28 = v16;
  v17 = sub_21CB84054();
  v19 = v18;
  v20 = v25 & 1;
  v26 = v25 & 1;
  LOBYTE(v27) = v25 & 1;
  LOBYTE(v16) = v21 & 1;
  v29 = v21 & 1;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v20;
  *(a1 + 24) = v13;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  *(a1 + 48) = v21 & 1;
  *(a1 + 56) = v22;
  sub_21C79B058(v8, v10, v20);

  sub_21C79B058(v17, v19, v16);

  sub_21C74A72C(v17, v19, v16);

  sub_21C74A72C(v8, v10, v26);
}

double sub_21C8AA52C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v17[0] = v12;
  v17[1] = v14;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v8 + 32))(a1, v11, v7);
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA538, &qword_21CBAC640) + 36);
  *&result = 2;
  *v15 = xmmword_21CBAC090;
  *(v15 + 16) = 258;
  return result;
}

uint64_t sub_21C8AA738()
{
  v1 = (v0 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 32));
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  if (v7 != 255)
  {
    if (v7 == 1)
    {
      v2 = sub_21CB81A24();
      v3 = v6;
      v4 = 1;
      goto LABEL_6;
    }

    if (!v7)
    {
      v2 = sub_21CB81A24();
      v3 = v6;
      v4 = 0;
LABEL_6:
      sub_21C8ADEEC(v3, v4);
      return v2;
    }

    sub_21C8ADEEC(v6, v7);
  }

  return 0;
}

uint64_t sub_21C8AA814()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21C8A209C())
  {
    v6 = *v0;
    v7 = sub_21CB81BD4();
    v8 = sub_21CB81AB4();

    if (v8 >> 62)
    {
      sub_21CB85FA4();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  sub_21CB81014();
  v10 = sub_21CB81004();
  (*(v2 + 8))(v5, v1);
  return v10;
}

uint64_t sub_21C8AA994@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7A0, &qword_21CBAC6A0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v48 - v5;
  v6 = sub_21CB81B84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7A8, &qword_21CBAC6A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7B0, &qword_21CBAC6B0);
  v49 = *(v17 - 8);
  v50 = v17;
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17);
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7B8, &qword_21CBAC6B8);
  sub_21C6EADEC(&qword_27CDEF7C0, &qword_27CDEF7B8, &qword_21CBAC6B8);
  v23 = v22;
  sub_21CB85054();
  v24 = *a1;
  v25 = sub_21CB81BC4();
  v26 = sub_21CB81B74();

  (*(v7 + 104))(v10, *MEMORY[0x277CF03E8], v6);
  LOBYTE(v25) = sub_21C8A122C(v10, v26, MEMORY[0x277CF03F0], &qword_27CDEF740, MEMORY[0x277CF03F0]);

  (*(v7 + 8))(v10, v6);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7D0, &unk_21CBAC6C8);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF690, &qword_21CBAC5C0);
    v29 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v30 = sub_21C6EADEC(&qword_27CDEF790, &qword_27CDEF690, &qword_21CBAC5C0);
    v57 = v27;
    v58 = v28;
    v59 = v29;
    v60 = v30;
    swift_getOpaqueTypeConformance2();
    v31 = v48;
    sub_21CB85054();
    v32 = v52;
    v33 = v31;
    v34 = v53;
    (*(v52 + 32))(v16, v33, v53);
    v35 = 0;
    v36 = v34;
    v37 = v32;
  }

  else
  {
    v35 = 1;
    v37 = v52;
    v36 = v53;
  }

  v38 = v16;
  (*(v37 + 56))(v16, v35, 1, v36);
  v39 = v49;
  v40 = v50;
  v41 = *(v49 + 16);
  v42 = v51;
  v41(v51, v23, v50);
  v43 = v54;
  sub_21C6EDBAC(v38, v54, &qword_27CDEF7A8, &qword_21CBAC6A8);
  v44 = v55;
  v41(v55, v42, v40);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7C8, &qword_21CBAC6C0);
  sub_21C6EDBAC(v43, &v44[*(v45 + 48)], &qword_27CDEF7A8, &qword_21CBAC6A8);
  sub_21C6EA794(v38, &qword_27CDEF7A8, &qword_21CBAC6A8);
  v46 = *(v39 + 8);
  v46(v23, v40);
  sub_21C6EA794(v43, &qword_27CDEF7A8, &qword_21CBAC6A8);
  return (v46)(v42, v40);
}

uint64_t sub_21C8AAF68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v74 = sub_21CB81024();
  v77 = *(v74 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  v76 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7D8, &qword_21CBAC6D8);
  v81 = *(v87 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v79 = &v70[-v8];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7E0, &qword_21CBAC6E0);
  v78 = *(v80 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v85 = &v70[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v84 = &v70[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7E8, &qword_21CBAC6E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v70[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7F0, &qword_21CBAC6F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v83 = &v70[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v88 = &v70[-v22];
  v23 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 32);
  v75 = a1;
  v24 = a1 + v23;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v89 = *v24;
  LOBYTE(v90) = v26;
  v91 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF570, &qword_21CBAC4E8);
  sub_21CB84D54();
  if (v94 == 255)
  {
    goto LABEL_5;
  }

  v28 = v93;
  if (v94 != 1)
  {
    sub_21C8ADEEC(v93, v94);
LABEL_5:
    v37 = 1;
    goto LABEL_6;
  }

  v89 = sub_21CB81A24();
  v90 = v29;
  sub_21C71F3FC();
  v73 = sub_21CB84054();
  v72 = v30;
  v71 = v31;
  v33 = v32;
  v89 = v25;
  LOBYTE(v90) = v26;
  v91 = v27;
  sub_21CB84D54();
  sub_21C8ADEEC(v28, 1u);
  v34 = v93;
  v35 = v94;
  v36 = v72;
  *v17 = v73;
  *(v17 + 1) = v36;
  v17[16] = v71 & 1;
  *(v17 + 3) = v33;
  *(v17 + 4) = v34;
  v17[40] = v35;
  v17[41] = 1;
  (*(v14 + 32))(v88, v17, v13);
  v37 = 0;
LABEL_6:
  v38 = v75;
  v39 = v88;
  (*(v14 + 56))(v88, v37, 1, v13);
  v40 = *v38;
  v41 = sub_21CB81BD4();
  v42 = sub_21CB81AB4();

  v93 = v42;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF7F8, &qword_21CBAC710);
  sub_21C6EADEC(&qword_27CDEF800, &qword_27CDEF7F8, &qword_21CBAC710);
  sub_21C8AF988(&qword_27CDEF808, MEMORY[0x277CF03D0]);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF690, &qword_21CBAC5C0);
  v44 = sub_21C6EADEC(&qword_27CDEF790, &qword_27CDEF690, &qword_21CBAC5C0);
  v89 = MEMORY[0x277CE0BD8];
  v90 = v43;
  v91 = MEMORY[0x277CE0BC8];
  v92 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v84;
  v46 = v87;
  sub_21CB84FD4();
  v47 = v76;
  sub_21CB81014();
  v48 = sub_21CB81004();
  v50 = v49;
  (*(v77 + 8))(v47, v74);
  v89 = v48;
  v90 = v50;
  sub_21C71F3FC();
  v51 = sub_21CB84054();
  v52 = v79;
  *v79 = v51;
  v52[1] = v53;
  *(v52 + 16) = v54 & 1;
  v52[3] = v55;
  v52[4] = 0;
  *(v52 + 20) = 258;
  v56 = v83;
  sub_21C6EDBAC(v39, v83, &qword_27CDEF7F0, &qword_21CBAC6F0);
  v57 = v78;
  v77 = *(v78 + 16);
  v58 = v85;
  v59 = v80;
  (v77)(v85, v45, v80);
  v60 = v81;
  v61 = *(v81 + 16);
  v61(v86, v52, v46);
  v62 = v82;
  sub_21C6EDBAC(v56, v82, &qword_27CDEF7F0, &qword_21CBAC6F0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF810, &qword_21CBAC718);
  (v77)(v62 + *(v63 + 48), v58, v59);
  v64 = v62 + *(v63 + 64);
  v65 = v86;
  v66 = v87;
  v61(v64, v86, v87);
  v67 = *(v60 + 8);
  v67(v52, v66);
  v68 = *(v57 + 8);
  v68(v84, v59);
  sub_21C6EA794(v88, &qword_27CDEF7F0, &qword_21CBAC6F0);
  v67(v65, v66);
  v68(v85, v59);
  return sub_21C6EA794(v83, &qword_27CDEF7F0, &qword_21CBAC6F0);
}

id sub_21C8AB760@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  sub_21CB81A24();
  sub_21C71F3FC();
  *a2 = sub_21CB84054();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = 256;

  return v7;
}

uint64_t sub_21C8AB7E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v17[0] = v12;
  v17[1] = v14;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v8 + 32))(a1, v11, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA540, &unk_21CB9E650);
  v16 = a1 + *(result + 36);
  *v16 = 2;
  *(v16 + 8) = 258;
  return result;
}

uint64_t sub_21C8AB9EC()
{
  v1 = v0;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *v0;
  v11 = sub_21CB81BD4();
  v12 = v1 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 36);
  v13 = *(v12 + 2);
  v22 = *v12;
  v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  v14 = sub_21CB81B44();
  v16 = v15;

  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v17 = *(v3 + 8);
  v17(v6, v2);
  v17(v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21CBA0690;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_21C7C0050();
  *(v18 + 32) = v14;
  *(v18 + 40) = v16;
  v19 = sub_21CB85594();

  return v19;
}

uint64_t sub_21C8ABC3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v3 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *a1;
  v7 = sub_21CB81BD4();
  v8 = sub_21CB81AF4();

  v16[5] = v8;
  swift_getKeyPath();
  sub_21C8AEA48(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasskeyAccountRegistrationContentView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_21C8AE898(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5E8, &qword_21CBAC570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF5F0, &qword_21CBAC578);
  sub_21C6EADEC(&qword_27CDEF5F8, &qword_27CDEF5E8, &qword_21CBAC570);
  v11 = sub_21C8AEF68(&qword_27CDEF5C8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA548, qword_21CBAC540);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
  v14 = sub_21C6EADEC(&qword_27CDEF5D8, &qword_27CDEA548, qword_21CBAC540);
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  v16[4] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_21CB84FD4();
}

uint64_t sub_21C8ABECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA548, qword_21CBAC540);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v12 = *a1;
  v11 = a1[1];
  v19 = a2;
  v20 = v12;
  v21 = v11;
  v16 = a2;
  v17 = v12;
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF600, &qword_21CBAC580);
  sub_21C8AF06C();
  sub_21CB84C84();
  (*(v7 + 32))(a3, v10, v6);
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA550, &qword_21CB9E660) + 36);
  *v13 = v12;
  *(v13 + 8) = v11;
  *(v13 + 16) = 1;
}

uint64_t sub_21C8AC060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21CB81BD4();
  sub_21CB81B44();

  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_21C8AC0E8@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    v3 = *MEMORY[0x277D49CC0];
    sub_21CB855C4();
  }

  v4 = objc_opt_self();

  v5 = sub_21CB85584();

  [objc_opt_self() cellIconSize];
  v6 = [v4 iconForApplicationIdentifier:v5 size:?];

  if (v6)
  {
    result = sub_21CB84BA4();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_21C8AC1C8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_21CB81604();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = sub_21CB81BD4();
  v13 = a1 + *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) + 36);
  v14 = *(v13 + 2);
  v18 = *v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  sub_21CB81B14();

  v15 = a1[1];
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_21C6EA794(v5, &qword_27CDF85D0, &qword_21CBC9430);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_21CB05380();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21C8AC414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[8] = a2;
  v12[9] = a1;
  v3 = sub_21C8AC5D4();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v15 = v5;
  v16 = v6;
  v13 = *(v2 + 8);
  v14 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  v12[7] = v12;
  LOBYTE(v13) = *v2;
  v12[12] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF480, &qword_21CBAC390);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF488, &unk_21CBAC398);
  v8 = sub_21C6EADEC(&qword_27CDEF490, &qword_27CDEF480, &qword_21CBAC390);
  v9 = sub_21C71F3FC();
  v10 = sub_21C6EADEC(&qword_27CDEF498, &qword_27CDEF488, &unk_21CBAC398);
  v12[4] = v9;
  v12[5] = v10;
  v12[2] = &type metadata for UserInputAlert.Context;
  v12[3] = v8;
  v12[0] = MEMORY[0x277D837D0];
  v12[1] = v7;
  sub_21CB84734();
}

uint64_t sub_21C8AC5D4()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 <= 1u || (v6 = 0, *v0 == 2))
  {
    sub_21CB81014();
    v6 = sub_21CB81004();
    (*(v2 + 8))(v5, v1);
  }

  return v6;
}

uint64_t sub_21C8AC738@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v120 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v117 = v109 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v119 = *(v121 - 8);
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](v121);
  v118 = v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v129 = v109 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v12 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v130 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v128 = v109 - v15;
  v115 = sub_21CB81024();
  v126 = *(v115 - 8);
  v16 = *(v126 + 64);
  MEMORY[0x28223BE20](v115);
  v112 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v125 = v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4A0, &qword_21CBAC3A8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v132 = v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v135 = v109 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v25 = *(v114 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v114);
  v28 = v109 - v27;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4A8, &qword_21CBAC3B8);
  v29 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v113 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = v109 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B0, &unk_21CBAC3C0);
  v133 = *(v34 - 8);
  v134 = v34;
  v35 = *(v133 + 64);
  MEMORY[0x28223BE20](v34);
  v127 = v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v111 = v109 - v38;
  MEMORY[0x28223BE20](v39);
  v131 = v109 - v40;
  v123 = *a1;
  v41 = sub_21C8AE058();
  v43 = v42;
  v138 = *(a2 + 3);
  v139 = *(a2 + 8);
  v109[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D74();
  v136 = v41;
  v137 = v43;
  v124 = sub_21C71F3FC();
  sub_21CB85314();
  v44 = *a2;
  if (v44 == 3)
  {
    KeyPath = swift_getKeyPath();
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v48 = **(&unk_27831D020 + v44);
    KeyPath = swift_getKeyPath();
    v46 = sub_21CB855C4();
    v47 = v49;
  }

  (*(v25 + 32))(v33, v28, v114);
  v50 = &v33[*(v122 + 36)];
  *v50 = KeyPath;
  v50[1] = v46;
  v50[2] = v47;
  v110 = v44;
  if (v44 != 3)
  {
    v51 = qword_21CBAC7B8[v44];
  }

  v52 = v115;
  LODWORD(v53) = v123;
  sub_21C8AE240();
  sub_21CB841D4();
  sub_21C6EA794(v33, &qword_27CDEF4A8, &qword_21CBAC3B8);
  v54 = 1;
  if (!v53)
  {
    v55 = v125;
    sub_21CB81014();
    v56 = v52;
    v57 = v112;
    sub_21CB81014();
    v58 = sub_21CB80FF4();
    v60 = v59;
    v61 = *(v126 + 8);
    v62 = v57;
    v52 = v56;
    v61(v62, v56);
    v61(v55, v56);
    v138 = *(a2 + 72);
    v139 = *(a2 + 11);
    sub_21CB84D74();
    v136 = v58;
    v137 = v60;
    v63 = v122;
    v64 = v113;
    sub_21CB85314();
    v65 = *MEMORY[0x277D76FC0];
    v66 = swift_getKeyPath();
    v67 = sub_21CB855C4();
    v68 = (v64 + *(v63 + 36));
    *v68 = v66;
    v68[1] = v67;
    v68[2] = v69;
    if (v110 != 3)
    {
      v70 = qword_21CBAC7B8[v110];
    }

    v53 = v111;
    sub_21CB841D4();
    sub_21C6EA794(v64, &qword_27CDEF4A8, &qword_21CBAC3B8);
    (*(v133 + 32))(v135, v53, v134);
    v54 = 0;
    LOBYTE(v53) = v123;
  }

  (*(v133 + 56))(v135, v54, 1, v134);
  v71 = v125;
  sub_21CB81014();
  v72 = sub_21CB81004();
  v74 = v73;
  v75 = *(v126 + 8);
  v75(v71, v52);
  *&v138 = v72;
  *(&v138 + 1) = v74;
  v76 = swift_allocObject();
  v77 = *(a2 + 3);
  *(v76 + 48) = *(a2 + 2);
  *(v76 + 64) = v77;
  v78 = *(a2 + 5);
  *(v76 + 80) = *(a2 + 4);
  *(v76 + 96) = v78;
  v79 = *(a2 + 1);
  *(v76 + 16) = *a2;
  *(v76 + 32) = v79;
  *(v76 + 112) = v53;
  sub_21C8AE330(a2, &v136);
  v80 = v128;
  sub_21CB84DE4();
  LOBYTE(v74) = sub_21C8AD7E8();
  v81 = swift_getKeyPath();
  v82 = swift_allocObject();
  *(v82 + 16) = (v74 & 1) == 0;
  v83 = (v80 + *(v116 + 36));
  *v83 = v81;
  v83[1] = sub_21C735744;
  v83[2] = v82;
  sub_21CB81014();
  v84 = sub_21CB81004();
  v86 = v85;
  v75(v71, v52);
  *&v138 = v84;
  *(&v138 + 1) = v86;
  v87 = v117;
  sub_21CB81EF4();
  v88 = sub_21CB81F14();
  (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
  v89 = swift_allocObject();
  v90 = *(a2 + 3);
  v89[3] = *(a2 + 2);
  v89[4] = v90;
  v91 = *(a2 + 5);
  v89[5] = *(a2 + 4);
  v89[6] = v91;
  v92 = *(a2 + 1);
  v89[1] = *a2;
  v89[2] = v92;
  sub_21C8AE330(a2, &v136);
  v93 = v129;
  sub_21CB84DC4();
  v94 = v134;
  v95 = *(v133 + 16);
  v96 = v127;
  v95(v127, v131, v134);
  sub_21C6EDBAC(v135, v132, &qword_27CDEF4A0, &qword_21CBAC3A8);
  sub_21C6EDBAC(v80, v130, &qword_27CDEDA98, &unk_21CBABCB0);
  v97 = v119;
  v98 = *(v119 + 16);
  v99 = v118;
  v100 = v93;
  v101 = v121;
  v98(v118, v100, v121);
  v102 = v120;
  v95(v120, v96, v94);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4D8, &qword_21CBAC438);
  sub_21C6EDBAC(v132, &v102[v103[12]], &qword_27CDEF4A0, &qword_21CBAC3A8);
  v104 = v130;
  sub_21C6EDBAC(v130, &v102[v103[16]], &qword_27CDEDA98, &unk_21CBABCB0);
  v98(&v102[v103[20]], v99, v101);
  v105 = *(v97 + 8);
  v105(v129, v101);
  sub_21C6EA794(v128, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v135, &qword_27CDEF4A0, &qword_21CBAC3A8);
  v106 = v134;
  v107 = *(v133 + 8);
  v107(v131, v134);
  v105(v99, v101);
  sub_21C6EA794(v104, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v132, &qword_27CDEF4A0, &qword_21CBAC3A8);
  return (v107)(v127, v106);
}

uint64_t sub_21C8AD454(uint64_t a1, char a2)
{
  v4 = type metadata accessor for UserInputAlert.Result(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_21C8AD560(a2, v7);
  v9(v7);
  sub_21C8AE390(v7);
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v11 = 0;
  v12 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D64();
  v13 = *(a1 + 72);
  v14 = *(a1 + 88);
  v11 = 0;
  v12 = 0xE000000000000000;
  return sub_21CB84D64();
}

uint64_t sub_21C8AD560@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v21 = *(v2 + 48);
  v22 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v10 = sub_21CB85584();

  v11 = [v10 safari_stringByTrimmingWhitespace];

  v12 = sub_21CB855C4();
  v14 = v13;

  v21 = *(v3 + 72);
  v22 = *(v3 + 88);
  sub_21CB84D54();
  v15 = sub_21CB85584();

  v16 = [v15 safari_stringByTrimmingWhitespace];

  sub_21CB855C4();
  if (a1)
  {

    if (a1 == 1)
    {
      *a2 = v12;
      a2[1] = v14;
    }

    else
    {
      v18 = objc_allocWithZone(sub_21CB81A44());
      *a2 = sub_21CB81A14();
    }

    type metadata accessor for UserInputAlert.Result(0);
  }

  else
  {
    v17 = sub_21CB80A84();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_21CB80A64();
    type metadata accessor for UserInputAlert.Result(0);
  }

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_21C8AD7E8()
{
  v1 = v0;
  v21 = *(v0 + 3);
  v23 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v2 = sub_21CB85584();

  v3 = [v2 safari_stringByTrimmingWhitespace];

  v4 = v3;
  v5 = v3;
  if (!v3)
  {
    sub_21CB855C4();
    v5 = sub_21CB85584();

    sub_21CB855C4();
    v4 = sub_21CB85584();
  }

  v6 = sub_21CB855C4();
  v8 = v7;
  v22 = *(v1 + 72);
  v24 = *(v1 + 11);
  v9 = v3;
  sub_21CB84D54();
  v10 = sub_21CB85584();

  v11 = [v10 safari_stringByTrimmingWhitespace];

  v12 = sub_21CB855C4();
  v14 = v13;

  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {

      v17 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v17 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = [objc_opt_self() isStringPhoneNumber_];

LABEL_19:

        return v18;
      }
    }

    else
    {
    }

LABEL_26:

    return 0;
  }

  if (*v1)
  {

    v19 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v19 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v18 = [objc_opt_self() isStringEmailAddress_];

      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v15 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    return 1;
  }

  v20 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v20 = v12 & 0xFFFFFFFFFFFFLL;
  }

  return v20 != 0;
}

uint64_t sub_21C8ADA88(uint64_t a1)
{
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D64();
  v4 = *(a1 + 72);
  v6 = *(a1 + 88);
  return sub_21CB84D64();
}

uint64_t sub_21C8ADB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v4 = *v2;
  v5 = v2[1];
  return sub_21C8AC414(a1, a2);
}

uint64_t sub_21C8ADB60@<X0>(char *a1@<X8>)
{
  v31 = sub_21CB83B84();
  v28 = *(v31 - 8);
  v2 = v28;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v27 = &v27 - v6;
  v8 = sub_21CB83B94();
  v29 = *(v8 - 8);
  v9 = v29;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_21CB83BA4();
  sub_21CB83BB4();
  v16 = *(v9 + 16);
  v16(v12, v15, v8);
  v32 = 1;
  v17 = *(v2 + 16);
  v18 = v30;
  v19 = v7;
  v20 = v31;
  v17(v30, v19, v31);
  v16(a1, v12, v8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4E8, &unk_21CBAC448);
  v22 = &a1[*(v21 + 48)];
  v23 = v32;
  *v22 = 0;
  v22[8] = v23;
  v17(&a1[*(v21 + 64)], v18, v20);
  v24 = *(v28 + 8);
  v24(v27, v20);
  v25 = *(v29 + 8);
  v25(v15, v8);
  v24(v18, v20);
  return (v25)(v12, v8);
}

uint64_t sub_21C8ADE04@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB83074();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4E0, &qword_21CBAC440);
  return sub_21C8ADB60((a1 + *(v2 + 44)));
}

uint64_t sub_21C8ADE78(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

void sub_21C8ADEEC(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_21C8ADF00(a1, a2);
  }
}

void sub_21C8ADF00(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_21C8ADF14(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21C8ADF28(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21C8ADF28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21C8ADF40(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

uint64_t sub_21C8ADFA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_21C8ADFF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
}

uint64_t sub_21C8AE058()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  return v8;
}

unint64_t sub_21C8AE240()
{
  result = qword_27CDEF4C0;
  if (!qword_27CDEF4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4A8, &qword_21CBAC3B8);
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
    sub_21C6EADEC(&qword_27CDEF4C8, &qword_27CDEF4D0, &qword_21CBAC400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF4C0);
  }

  return result;
}

uint64_t sub_21C8AE390(uint64_t a1)
{
  v2 = type metadata accessor for UserInputAlert.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C8AE3F4()
{
  result = qword_27CDEF538;
  if (!qword_27CDEF538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF508, &qword_21CBAC470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF510, &qword_21CBAC478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF518, &qword_21CBAC480);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDEF530, &qword_27CDEF518, &qword_21CBAC480);
    sub_21C8AF988(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF538);
  }

  return result;
}

unint64_t sub_21C8AE57C()
{
  result = qword_27CDEF540;
  if (!qword_27CDEF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4F8, &qword_21CBAC460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF500, &qword_21CBAC468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF508, &qword_21CBAC470);
    sub_21C8AE3F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF540);
  }

  return result;
}