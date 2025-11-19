uint64_t sub_1CA4323EC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v71 = a4;
  v70 = sub_1CA94B1C8();
  v7 = *(*(v70 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v70);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v67 = &v58 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v14;
  v78 = a1;
  v77 = v71;
  v65 = (v11 + 8);
  v66 = (v11 + 16);
  v19 = v16 / v14;
  if (v18 >= v16 / v14)
  {
    v64 = a1;
    v36 = v71;
    sub_1CA43F160(a2, v16 / v14, v71);
    v37 = v36 + v19 * v14;
    v38 = -v14;
    v39 = v37;
    v61 = -v14;
LABEL_36:
    v40 = a3;
    v59 = v39;
    v41 = v39;
    v62 = a2 + v38;
    v63 = a2;
    while (1)
    {
      if (v37 <= v71)
      {
        v78 = a2;
        v76 = v41;
        goto LABEL_58;
      }

      if (a2 <= v64)
      {
        break;
      }

      v60 = v41;
      v69 = v40 + v38;
      v42 = v37 + v38;
      v43 = v67;
      v44 = *v66;
      v45 = v37 + v38;
      v46 = v70;
      (*v66)(v67, v45, v70);
      v47 = v37;
      v48 = v68;
      v49 = OUTLINED_FUNCTION_126();
      v44(v49);
      v74 = sub_1CA94B138();
      v75 = v50;
      v72 = sub_1CA94B138();
      v73 = v51;
      sub_1CA27BAF0();
      OUTLINED_FUNCTION_110_2();
      OUTLINED_FUNCTION_101_3();

      v52 = *v65;
      (*v65)(v48, v46);
      v52(v43, v46);
      if (&vars0 == 119)
      {
        v37 = v47;
        a3 = v69;
        if (v40 < v63 || v69 >= v63)
        {
          a2 = v62;
          OUTLINED_FUNCTION_71_4();
          swift_arrayInitWithTakeFrontToBack();
          v39 = v60;
          v38 = v61;
        }

        else
        {
          v56 = v60;
          v39 = v60;
          v38 = v61;
          v57 = v62;
          a2 = v62;
          if (v40 != v63)
          {
            OUTLINED_FUNCTION_71_4();
            swift_arrayInitWithTakeBackToFront();
            a2 = v57;
            v39 = v56;
          }
        }

        goto LABEL_36;
      }

      v53 = v69;
      if (v40 < v47 || v69 >= v47)
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_71_4();
        swift_arrayInitWithTakeFrontToBack();
        v40 = v53;
        v37 = v42;
        v41 = v42;
        a2 = v63;
        v38 = v61;
      }

      else
      {
        v41 = v42;
        v15 = v47 == v40;
        v40 = v69;
        v37 = v42;
        a2 = v63;
        v38 = v61;
        if (!v15)
        {
          OUTLINED_FUNCTION_3_3();
          OUTLINED_FUNCTION_71_4();
          swift_arrayInitWithTakeBackToFront();
          v40 = v53;
          v37 = v42;
          v41 = v42;
        }
      }
    }

    v78 = a2;
    v76 = v59;
  }

  else
  {
    v20 = v71;
    sub_1CA43F160(a1, (a2 - a1) / v14, v71);
    v64 = v20 + v18 * v14;
    v76 = v64;
    v21 = a1;
    v69 = a3;
    while (v71 < v64 && a2 < a3)
    {
      v23 = v14;
      v24 = v67;
      v25 = *v66;
      v26 = OUTLINED_FUNCTION_120();
      v27 = v70;
      v25(v26);
      v28 = a2;
      v29 = v68;
      (v25)(v68, v71, v27);
      v74 = sub_1CA94B138();
      v75 = v30;
      v72 = sub_1CA94B138();
      v73 = v31;
      sub_1CA27BAF0();
      OUTLINED_FUNCTION_110_2();
      OUTLINED_FUNCTION_87();

      v32 = *v65;
      (*v65)(v29, v27);
      v32(v24, v27);
      if (&vars0 == 119)
      {
        v14 = v23;
        a2 = v28 + v23;
        if (v21 < v28 || v21 >= a2)
        {
          OUTLINED_FUNCTION_71_4();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v69;
        }

        else
        {
          a3 = v69;
          if (v21 != v28)
          {
            OUTLINED_FUNCTION_71_4();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v28;
        v14 = v23;
        v33 = v71 + v23;
        if (v21 < v71 || v21 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v69;
        }

        else
        {
          a3 = v69;
          if (v21 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v77 = v33;
        v71 = v33;
      }

      v21 += v14;
      v78 = v21;
    }
  }

LABEL_58:
  sub_1CA434FF4(&v78, &v77, &v76, MEMORY[0x1E69DB328]);
  return 1;
}

uint64_t sub_1CA432950(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1CA9486C8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_1CA43F214(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_1CA9486B8();
      v37 = v36;
      if (v35 == sub_1CA9486B8() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_1CA94D7F8();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_1CA43F214(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_1CA9486B8();
    v55 = v54;
    if (v53 == sub_1CA9486B8() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_1CA94D7F8();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_1CA434FF4(&v78, &v77, &v76, MEMORY[0x1E6996C28]);
  return 1;
}

uint64_t sub_1CA432F6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v126 = sub_1CA94A4E8();
  v8 = *(v126 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1CA94A288();
  v11 = *(v124 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v14 = *(*(v133 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v133);
  v118 = (v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v114 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (v114 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v132 = (v114 - v23);
  v131 = type metadata accessor for DrawerAction(0);
  v24 = *(*(v131 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v131);
  v117 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v127 = v114 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v129 = v114 - v30;
  result = MEMORY[0x1EEE9AC00](v29);
  v33 = v114 - v32;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  v36 = a2 - a1 == 0x8000000000000000 && v35 == -1;
  if (v36)
  {
    goto LABEL_84;
  }

  v37 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_85;
  }

  v128 = v22;
  v130 = a3;
  v39 = (a2 - a1) / v35;
  v140 = a1;
  v139 = a4;
  v121 = (v8 + 8);
  v122 = (v8 + 32);
  v119 = (v11 + 8);
  v120 = (v11 + 32);
  v40 = v37 / v35;
  v41 = v35;
  if (v39 >= v37 / v35)
  {
    sub_1CA43F1B8(a2, v37 / v35, a4);
    v129 = a4;
    v77 = a2;
    v78 = a4 + v40 * v41;
    v79 = -v41;
    v80 = v78;
    v81 = v130;
    v116 = v19;
    v82 = v117;
    v132 = v79;
LABEL_48:
    v130 = v77;
    v128 = (v79 + v77);
    v83 = v81;
    v114[0] = v80;
    while (1)
    {
      if (v78 <= v129)
      {
        v140 = v130;
        v138 = v80;
        goto LABEL_82;
      }

      if (v130 <= a1)
      {
        break;
      }

      v115 = v80;
      v84 = v79 + v78;
      v85 = v127;
      sub_1CA42B9A4(v79 + v78, v127);
      sub_1CA42B9A4(v128, v82);
      sub_1CA42B9A4(v85, v19);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v88 = v123;
          v87 = v124;
          (*v120)(v123, v19, v124);
          v89 = sub_1CA94A268();
          v91 = v90;
          v92 = v119;
        }

        else
        {
          v88 = v125;
          v87 = v126;
          (*v122)(v125, v19, v126);
          v89 = sub_1CA94A4B8();
          v91 = v96;
          v92 = v121;
        }

        (*v92)(v88, v87);
      }

      else
      {
        v93 = *v19;
        v94 = [*v19 localizedName];
        v89 = sub_1CA94C3A8();
        v91 = v95;
      }

      v136 = v89;
      v137 = v91;
      sub_1CA42B9A4(v82, v118);
      v97 = swift_getEnumCaseMultiPayload();
      if (v97)
      {
        if (v97 == 1)
        {
          v99 = v123;
          v98 = v124;
          (*v120)(v123, v118, v124);
          v100 = sub_1CA94A268();
          v102 = v101;
          v103 = v119;
        }

        else
        {
          v99 = v125;
          v98 = v126;
          (*v122)(v125, v118, v126);
          v100 = sub_1CA94A4B8();
          v102 = v107;
          v103 = v121;
        }

        (*v103)(v99, v98);
      }

      else
      {
        v104 = *v118;
        v105 = [*v118 localizedName];
        v100 = sub_1CA94C3A8();
        v102 = v106;
      }

      v81 = v132 + v83;
      v134 = v100;
      v135 = v102;
      sub_1CA27BAF0();
      v108 = sub_1CA94D1F8();

      v82 = v117;
      sub_1CA42B9FC();
      sub_1CA42B9FC();
      if (v108 == -1)
      {
        v110 = v83 < v130 || v81 >= v130;
        v19 = v116;
        if (v110)
        {
          v111 = v128;
          swift_arrayInitWithTakeFrontToBack();
          v77 = v111;
          v80 = v115;
          v79 = v132;
        }

        else
        {
          v112 = v115;
          v80 = v115;
          v36 = v83 == v130;
          v113 = v128;
          v77 = v128;
          v79 = v132;
          if (!v36)
          {
            swift_arrayInitWithTakeBackToFront();
            v77 = v113;
            v80 = v112;
          }
        }

        goto LABEL_48;
      }

      v109 = v83 < v78 || v81 >= v78;
      v19 = v116;
      if (v109)
      {
        swift_arrayInitWithTakeFrontToBack();
        v83 = v81;
        v78 = v84;
        v80 = v84;
        v79 = v132;
      }

      else
      {
        v80 = v84;
        v36 = v78 == v83;
        v83 = v81;
        v78 = v84;
        v79 = v132;
        if (!v36)
        {
          swift_arrayInitWithTakeBackToFront();
          v83 = v81;
          v78 = v84;
          v80 = v84;
        }
      }
    }

    v140 = v130;
    v138 = v114[0];
  }

  else
  {
    sub_1CA43F1B8(a1, (a2 - a1) / v35, a4);
    v127 = a4 + v39 * v41;
    v138 = v127;
    v42 = v130;
    v118 = v41;
    v43 = v129;
    while (a4 < v127 && a2 < v42)
    {
      sub_1CA42B9A4(a2, v33);
      sub_1CA42B9A4(a4, v43);
      sub_1CA42B9A4(v33, v132);
      v45 = swift_getEnumCaseMultiPayload();
      if (v45)
      {
        if (v45 == 1)
        {
          v47 = v123;
          v46 = v124;
          (*v120)(v123, v132, v124);
          v48 = sub_1CA94A268();
          v50 = v49;
          v51 = v119;
        }

        else
        {
          v47 = v125;
          v46 = v126;
          (*v122)(v125, v132, v126);
          v48 = sub_1CA94A4B8();
          v50 = v55;
          v51 = v121;
        }

        (*v51)(v47, v46);
      }

      else
      {
        v52 = *v132;
        v53 = [*v132 localizedName];
        v48 = sub_1CA94C3A8();
        v50 = v54;
      }

      v136 = v48;
      v137 = v50;
      v56 = v128;
      sub_1CA42B9A4(v43, v128);
      v57 = swift_getEnumCaseMultiPayload();
      if (v57)
      {
        if (v57 == 1)
        {
          v59 = v123;
          v58 = v124;
          (*v120)(v123, v56, v124);
          v60 = sub_1CA94A268();
          v62 = v61;
          (*v119)(v59, v58);
        }

        else
        {
          v68 = a2;
          v70 = v125;
          v69 = v126;
          (*v122)(v125, v56, v126);
          v60 = sub_1CA94A4B8();
          v62 = v71;
          v72 = v70;
          a2 = v68;
          (*v121)(v72, v69);
        }
      }

      else
      {
        v63 = *v56;
        v64 = a2;
        v65 = a4;
        v66 = [*v56 localizedName];
        v60 = sub_1CA94C3A8();
        v62 = v67;

        a4 = v65;
        a2 = v64;
      }

      v134 = v60;
      v135 = v62;
      sub_1CA27BAF0();
      v73 = sub_1CA94D1F8();

      v43 = v129;
      sub_1CA42B9FC();
      sub_1CA42B9FC();
      if (v73 == -1)
      {
        v74 = v118;
        v76 = a1 < a2 || a1 >= v118 + a2;
        v42 = v130;
        if (v76)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v74;
      }

      else
      {
        v74 = v118;
        v75 = a1 < a4 || a1 >= v118 + a4;
        v42 = v130;
        if (v75)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v139 = v74 + a4;
        a4 += v74;
      }

      a1 += v74;
      v140 = a1;
    }
  }

LABEL_82:
  sub_1CA434FF4(&v140, &v139, &v138, type metadata accessor for DrawerAction);
  return 1;
}

uint64_t sub_1CA433B14(id *a1, unint64_t a2, unint64_t a3, id *a4, uint64_t a5)
{
  v143 = a5;
  v137 = sub_1CA94A4E8();
  v9 = *(v137 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136 = v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1CA94A288();
  v12 = *(v135 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v134 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v15 = *(*(v144 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v144);
  v18 = (v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v129 = (v125 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (v125 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v139 = (v125 - v24);
  v140 = type metadata accessor for DrawerAction(0);
  v25 = *(*(v140 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v140);
  v142 = v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v141 = v125 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v146 = v125 - v31;
  result = MEMORY[0x1EEE9AC00](v30);
  v145 = v125 - v33;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    return result;
  }

  v36 = a2 - a1 == 0x8000000000000000 && v35 == -1;
  if (v36)
  {
    goto LABEL_96;
  }

  v37 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_97;
  }

  v138 = v23;
  v127 = v18;
  v39 = (a2 - a1) / v35;
  v153 = a1;
  v152 = a4;
  v132 = (v9 + 8);
  v133 = (v9 + 32);
  v131 = (v12 + 32);
  v130 = (v12 + 8);
  v40 = v37 / v35;
  if (v39 < v37 / v35)
  {
    sub_1CA43F1B8(a1, (a2 - a1) / v35, a4);
    v141 = a3;
    v142 = a4 + v39 * v35;
    v151 = v142;
    while (1)
    {
      if (a4 >= v142 || a2 >= a3)
      {
        goto LABEL_94;
      }

      v42 = v35;
      v43 = v145;
      sub_1CA42B9A4(a2, v145);
      v44 = v146;
      sub_1CA42B9A4(a4, v146);
      v45 = *(ActionDrawerDataSource.topHits(for:)(v43) + 16);

      v46 = *(ActionDrawerDataSource.topHits(for:)(v44) + 16);

      if (v45)
      {
        if (!v46)
        {
          v35 = v42;
          sub_1CA42B9FC();
          sub_1CA42B9FC();
LABEL_39:
          if (a1 < a2 || a1 >= a2 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v35;
          goto LABEL_51;
        }
      }

      else if (v46)
      {
        v35 = v42;
        sub_1CA42B9FC();
        sub_1CA42B9FC();
        goto LABEL_33;
      }

      sub_1CA42B9A4(v145, v139);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v48 = v134;
          v49 = v135;
          (*v131)(v134, v139, v135);
          v50 = sub_1CA94A268();
          v52 = v51;
          v53 = v130;
        }

        else
        {
          v48 = v136;
          v49 = v137;
          (*v133)(v136, v139, v137);
          v50 = sub_1CA94A4B8();
          v52 = v58;
          v53 = v132;
        }

        (*v53)(v48, v49);
      }

      else
      {
        v54 = *v139;
        v55 = a4;
        v56 = [*v139 localizedName];
        v50 = sub_1CA94C3A8();
        v52 = v57;

        a4 = v55;
      }

      v149 = v50;
      v150 = v52;
      v59 = v138;
      sub_1CA42B9A4(v146, v138);
      v60 = swift_getEnumCaseMultiPayload();
      if (v60)
      {
        if (v60 == 1)
        {
          v62 = v134;
          v61 = v135;
          (*v131)(v134, v59, v135);
          v63 = sub_1CA94A268();
          v65 = v64;
          (*v130)(v62, v61);
        }

        else
        {
          v71 = a1;
          v72 = a2;
          v74 = v136;
          v73 = v137;
          (*v133)(v136, v59, v137);
          v63 = sub_1CA94A4B8();
          v65 = v75;
          v76 = v74;
          a2 = v72;
          a1 = v71;
          (*v132)(v76, v73);
        }
      }

      else
      {
        v129 = a1;
        v66 = a2;
        v67 = a4;
        v68 = *v59;
        v69 = [*v59 localizedName];
        v63 = sub_1CA94C3A8();
        v65 = v70;

        a4 = v67;
        a2 = v66;
        a1 = v129;
      }

      v147 = v63;
      v148 = v65;
      sub_1CA27BAF0();
      v77 = sub_1CA94D1D8();

      sub_1CA42B9FC();
      sub_1CA42B9FC();
      a3 = v141;
      v35 = v42;
      if (v77 == -1)
      {
        goto LABEL_39;
      }

LABEL_33:
      if (a1 < a4 || a1 >= (a4 + v35))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v152 = (a4 + v35);
      a4 = (a4 + v35);
LABEL_51:
      a1 = (a1 + v35);
      v153 = a1;
    }
  }

  sub_1CA43F1B8(a2, v37 / v35, a4);
  v80 = a4 + v40 * v35;
  v81 = -v35;
  v82 = v80;
  v138 = v81;
  v139 = a4;
LABEL_53:
  v83 = a2 + v81;
  v84 = a3;
  v125[0] = v82;
  v85 = v82;
  v126 = a2;
  while (1)
  {
    if (v80 <= v139)
    {
      v153 = a2;
      v151 = v85;
      goto LABEL_94;
    }

    if (a2 <= a1)
    {
      break;
    }

    v145 = v84;
    v128 = v85;
    v146 = v80;
    v86 = v80 + v81;
    v87 = v80 + v81;
    v88 = v141;
    sub_1CA42B9A4(v87, v141);
    v89 = v83;
    v90 = v83;
    v91 = v142;
    sub_1CA42B9A4(v90, v142);
    v92 = *(ActionDrawerDataSource.topHits(for:)(v88) + 16);

    v93 = *(ActionDrawerDataSource.topHits(for:)(v91) + 16);

    if (v92)
    {
      if (!v93)
      {
        v94 = 1;
        goto LABEL_74;
      }
    }

    else if (v93)
    {
      v94 = 0;
      goto LABEL_74;
    }

    sub_1CA42B9A4(v141, v129);
    v95 = swift_getEnumCaseMultiPayload();
    if (v95)
    {
      if (v95 == 1)
      {
        v97 = v134;
        v96 = v135;
        (*v131)(v134, v129, v135);
        v98 = sub_1CA94A268();
        v100 = v99;
        v101 = v130;
      }

      else
      {
        v97 = v136;
        v96 = v137;
        (*v133)(v136, v129, v137);
        v98 = sub_1CA94A4B8();
        v100 = v105;
        v101 = v132;
      }

      (*v101)(v97, v96);
    }

    else
    {
      v102 = *v129;
      v103 = [*v129 localizedName];
      v98 = sub_1CA94C3A8();
      v100 = v104;
    }

    v149 = v98;
    v150 = v100;
    v106 = v127;
    sub_1CA42B9A4(v142, v127);
    v107 = swift_getEnumCaseMultiPayload();
    if (v107)
    {
      if (v107 == 1)
      {
        v108 = v134;
        v109 = v106;
        v110 = v135;
        (*v131)(v134, v109, v135);
        v111 = sub_1CA94A268();
        v113 = v112;
        v114 = v130;
      }

      else
      {
        v108 = v136;
        v118 = v106;
        v110 = v137;
        (*v133)(v136, v118, v137);
        v111 = sub_1CA94A4B8();
        v113 = v119;
        v114 = v132;
      }

      (*v114)(v108, v110);
    }

    else
    {
      v115 = *v106;
      v116 = [v115 localizedName];
      v111 = sub_1CA94C3A8();
      v113 = v117;
    }

    v147 = v111;
    v148 = v113;
    sub_1CA27BAF0();
    v120 = sub_1CA94D1D8();

    v94 = v120 == -1;
    a2 = v126;
LABEL_74:
    v83 = v89;
    v81 = v138;
    v121 = v145;
    a3 = v138 + v145;
    sub_1CA42B9FC();
    sub_1CA42B9FC();
    if (v94)
    {
      if (v121 < a2 || a3 >= a2)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v83;
        v82 = v128;
        v80 = v146;
      }

      else
      {
        v124 = v128;
        v82 = v128;
        v36 = v121 == a2;
        a2 = v83;
        v80 = v146;
        if (!v36)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v83;
          v82 = v124;
        }
      }

      goto LABEL_53;
    }

    if (v121 < v146 || a3 >= v146)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_83;
    }

    v85 = v86;
    v84 = v121 + v81;
    v80 = v86;
    if (v146 != v121)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_83:
      v84 = v121 + v81;
      v80 = v86;
      v85 = v86;
    }
  }

  v153 = a2;
  v151 = v125[0];
LABEL_94:
  sub_1CA434FF4(&v153, &v152, &v151, type metadata accessor for DrawerAction);

  return 1;
}

uint64_t sub_1CA4347AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = a4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v7 = *(*(v63 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v63);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v55 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v55 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v55 - v16;
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

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_70;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v24 = v20 / v19;
  v70 = a1;
  v25 = v59;
  v69 = v59;
  v26 = v22 / v19;
  if (v20 / v19 < v22 / v19)
  {
    sub_1CA43F2A4();
    v62 = v25 + v24 * v19;
    v68 = v62;
    v58 = a3;
    while (1)
    {
      if (v25 >= v62 || a2 >= a3)
      {
        goto LABEL_68;
      }

      sub_1CA2D9D20(a2, v17, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA2D9D20(v25, v14, &unk_1EC4440B0, &unk_1CA981B10);
      v28 = *(v63 + 36);
      v29 = *&v17[v28];
      v30 = *&v14[v28];
      if (v30 < v29)
      {
        break;
      }

      if (v29 >= v30)
      {
        v61 = a2;
        v66 = sub_1CA429604();
        v67 = v32;
        v64 = sub_1CA429604();
        v65 = v33;
        sub_1CA27BAF0();
        v34 = sub_1CA94D1F8();

        a3 = v58;

        sub_1CA27080C(v14, &unk_1EC4440B0, &unk_1CA981B10);
        a2 = v61;
        sub_1CA27080C(v17, &unk_1EC4440B0, &unk_1CA981B10);
        if (v34 == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_1CA27080C(v14, &unk_1EC4440B0, &unk_1CA981B10);
        sub_1CA27080C(v17, &unk_1EC4440B0, &unk_1CA981B10);
      }

      if (a1 < v25 || a1 >= v25 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v25)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v69 = v25 + v19;
      v25 += v19;
LABEL_39:
      a1 += v19;
      v70 = a1;
    }

    sub_1CA27080C(v14, &unk_1EC4440B0, &unk_1CA981B10);
    sub_1CA27080C(v17, &unk_1EC4440B0, &unk_1CA981B10);
LABEL_18:
    if (a1 < a2 || a1 >= a2 + v19)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a1 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a2 += v19;
    goto LABEL_39;
  }

  sub_1CA43F2A4();
  v36 = v25 + v26 * v19;
  v37 = -v19;
  v38 = v36;
  v60 = -v19;
LABEL_41:
  v39 = v38;
  v58 = a2 + v37;
  v40 = a3;
  v56 = v38;
  while (1)
  {
    if (v36 <= v59)
    {
      v70 = a2;
      v68 = v39;
      goto LABEL_68;
    }

    if (a2 <= a1)
    {
      break;
    }

    v57 = v39;
    v41 = v36 + v37;
    v42 = v61;
    sub_1CA2D9D20(v36 + v37, v61, &unk_1EC4440B0, &unk_1CA981B10);
    v43 = v62;
    sub_1CA2D9D20(v58, v62, &unk_1EC4440B0, &unk_1CA981B10);
    v44 = *(v63 + 36);
    v45 = *(v42 + v44);
    v46 = *(v43 + v44);
    if (v46 >= v45)
    {
      if (v45 >= v46)
      {
        v66 = sub_1CA429604();
        v67 = v48;
        v64 = sub_1CA429604();
        v65 = v49;
        sub_1CA27BAF0();
        v50 = sub_1CA94D1F8();

        v47 = v50 == -1;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 1;
    }

    a3 = v40 + v60;
    sub_1CA27080C(v62, &unk_1EC4440B0, &unk_1CA981B10);
    sub_1CA27080C(v61, &unk_1EC4440B0, &unk_1CA981B10);
    if (v47)
    {
      if (v40 < a2 || a3 >= a2)
      {
        a2 = v58;
        swift_arrayInitWithTakeFrontToBack();
        v38 = v57;
        v37 = v60;
      }

      else
      {
        v54 = v57;
        v53 = v58;
        v38 = v57;
        v21 = v40 == a2;
        a2 = v58;
        v37 = v60;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v53;
          v38 = v54;
        }
      }

      goto LABEL_41;
    }

    if (v40 < v36 || a3 >= v36)
    {
      swift_arrayInitWithTakeFrontToBack();
      v40 = a3;
      v36 = v41;
      v39 = v41;
      v37 = v60;
    }

    else
    {
      v39 = v41;
      v21 = v36 == v40;
      v40 = a3;
      v36 = v41;
      v37 = v60;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v40 = a3;
        v36 = v41;
        v39 = v41;
      }
    }
  }

  v70 = a2;
  v68 = v56;
LABEL_68:
  sub_1CA4350C8(&v70, &v69, &v68);
  return 1;
}

uint64_t sub_1CA434DBC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1CA43F004(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v28 = *v6;
      v30 = *(v6 + 1);
      v24 = *v4;
      v26 = *(v4 + 1);
      sub_1CA27BAF0();
      if (sub_1CA94D1D8() != -1)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_9:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_10;
  }

  sub_1CA43F004(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v29 = *(v10 - 3);
    v31 = *(v10 - 2);
    v25 = *(v6 - 3);
    v27 = *(v6 - 2);
    sub_1CA27BAF0();
    v17 = sub_1CA94D1D8();
    v18 = (v5 + 24);
    if (v17 == -1)
    {
      v13 = v18 == v6;
      v6 -= 24;
      if (!v13)
      {
        v20 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v20;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v18)
    {
      v19 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v19;
    }

    v10 -= 24;
  }

LABEL_28:
  v21 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_1CA434FF4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = OUTLINED_FUNCTION_52(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {
    OUTLINED_FUNCTION_3_3();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_3_3();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1CA4350C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
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

void sub_1CA4351B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1CA94C368();
  [a4 fetchRecommendedDonationsForApplicationBundleIdentifier:v6 completionHandler:a3];
}

unint64_t sub_1CA435218()
{
  result = qword_1EC445428;
  if (!qword_1EC445428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445428);
  }

  return result;
}

uint64_t sub_1CA435294()
{
  result = type metadata accessor for DrawerAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ActionDrawerDataSource.ensureLoaded()()
{
  v2 = *(*v0 + 400);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CA2DF78C;

  return v6();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1CA4356A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1CA4356E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CA435778()
{
  type metadata accessor for DrawerAction(319);
  if (v0 <= 0x3F)
  {
    sub_1CA435804();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CA435804()
{
  if (!qword_1EC445440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC445448, &unk_1CA987340);
    v0 = sub_1CA94C758();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC445440);
    }
  }
}

uint64_t sub_1CA435878(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA4358B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA43591C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CA43595C(uint64_t result, int a2, int a3)
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

void sub_1CA4359B8()
{
  sub_1CA435A2C();
  if (v0 <= 0x3F)
  {
    sub_1CA94B1C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CA435A2C()
{
  if (!qword_1EC442C80)
  {
    type metadata accessor for DrawerAction(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC445458, &unk_1CA987488);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC442C80);
    }
  }
}

unint64_t sub_1CA435AAC()
{
  result = qword_1EC445468;
  if (!qword_1EC445468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445468);
  }

  return result;
}

uint64_t sub_1CA435B00(uint64_t a1)
{
  result = sub_1CA435D64(&qword_1EC4425A8, 255, type metadata accessor for DrawerSearchIndexItem);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA435B60()
{
  result = qword_1EC4425B0;
  if (!qword_1EC4425B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4425B0);
  }

  return result;
}

uint64_t sub_1CA435BB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1CA435BC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1CA435BD4()
{
  result = qword_1EC441B88;
  if (!qword_1EC441B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B88);
  }

  return result;
}

unint64_t sub_1CA435C28()
{
  result = qword_1EC441B90;
  if (!qword_1EC441B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B90);
  }

  return result;
}

id sub_1CA435C7C(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    v6 = a2;

    return a3;
  }

  else
  {
    swift_unknownObjectRetain();

    return sub_1CA94C218();
  }
}

void sub_1CA435CF0(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CA435D64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA435DA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA5C42D4(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

unint64_t sub_1CA435DEC()
{
  result = qword_1EC4454D8;
  if (!qword_1EC4454D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4454D8);
  }

  return result;
}

void sub_1CA435E40(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  if (a2)
  {
    sub_1CA94C218();
    v12 = a3;

    sub_1CA435C7C(a4, a5, a6, a7 & 1);
  }
}

void sub_1CA435EB4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  if (a2)
  {

    sub_1CA435CF0(a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_1CA435F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_206(a1, a2, a3, a4);
  OUTLINED_FUNCTION_52(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return v4;
}

uint64_t sub_1CA435F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1CA418AB8(v5, a1);
}

uint64_t sub_1CA436004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1CA2E9390;

  return sub_1CA41BEE0(a1, v4, v5, v7, v6);
}

uint64_t sub_1CA4360F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA4361DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CA43621C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionDrawerDataLoader.Error(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_11WorkflowKit22ActionDrawerDataLoader33_3DEEF7B2499E1B37D3EC5450A935870FLLC17UnavailableReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA436348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA43639C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DrawerSearchIndexItem.SearchableProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DrawerSearchIndexItem.SearchableProperty(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA43656C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CA4365AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CA4365FC()
{
  result = qword_1EC4455E0[0];
  if (!qword_1EC4455E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4455E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_85_4()
{
  result = v0[12];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  return result;
}

void OUTLINED_FUNCTION_90_4()
{
  v1 = *(v0 - 344);
  v2 = *(v0 - 192);
  v3 = *(v0 - 352);
}

uint64_t OUTLINED_FUNCTION_106_3(uint64_t a1)
{

  return sub_1CA27080C(a1, v2, v1);
}

BOOL OUTLINED_FUNCTION_107_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_111_3()
{
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[14] + 8;

  return sub_1CA94B028();
}

uint64_t OUTLINED_FUNCTION_114_2()
{
}

void OUTLINED_FUNCTION_119_2()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
}

__n128 OUTLINED_FUNCTION_120_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, __int128 a26)
{
  result = a25;
  *v26 = *(v27 - 128);
  v26[1] = a26;
  v26[2] = a25;
  return result;
}

uint64_t OUTLINED_FUNCTION_141_2()
{

  return swift_arrayDestroy();
}

uint64_t sub_1CA436864()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_1CA94C218();
  sub_1CA94C458();

  OUTLINED_FUNCTION_27_2();
  v4 = v0[2];
  v5 = *(v1 + 80);
  type metadata accessor for RadixTree.Node();
  sub_1CA94C218();
  swift_getWitnessTable();
  sub_1CA94C768();
}

uint64_t sub_1CA436934(void *a1, void *a2)
{
  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v5 || (v6 = 0, (sub_1CA94D7F8() & 1) != 0))
  {
    OUTLINED_FUNCTION_27_2();
    v7 = a1[2];
    OUTLINED_FUNCTION_27_2();
    v8 = a2[2];
    v9 = *(v2 + 80);
    type metadata accessor for RadixTree.Node();
    sub_1CA94C218();
    sub_1CA94C218();
    swift_getWitnessTable();
    v6 = sub_1CA94C788();
  }

  return v6 & 1;
}

void *sub_1CA436A18()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1CA436A48()
{
  sub_1CA436A18();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1CA436A94()
{
  sub_1CA94D918();
  sub_1CA436864();
  return sub_1CA94D968();
}

uint64_t sub_1CA436AD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA436B70()
{
  sub_1CA94D918();
  v1 = *v0;
  sub_1CA436864();
  return sub_1CA94D968();
}

uint64_t sub_1CA436BE4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[4];
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](v4, v5);

  MEMORY[0x1CCAA1300](93, 0xE100000000000000);
  OUTLINED_FUNCTION_27_2();
  v15 = v1[5];
  v6 = *(v3 + 80);
  sub_1CA94C758();
  OUTLINED_FUNCTION_0_32();
  if (sub_1CA94CAE8())
  {
    MEMORY[0x1CCAA1300](10, 0xE100000000000000);
  }

  else
  {
    MEMORY[0x1CCAA1300](0x5B203E2D20, 0xE500000000000000);
    v16 = v1[5];
    swift_getWitnessTable();
    sub_1CA94D7C8();
    MEMORY[0x1CCAA1300](2653, 0xE200000000000000);
    MEMORY[0x1CCAA1300](0, 0xE000000000000000);
  }

  OUTLINED_FUNCTION_27_2();
  v17 = v1[2];
  type metadata accessor for RadixTree.Node();
  sub_1CA94C758();
  OUTLINED_FUNCTION_0_32();
  result = sub_1CA94CAE8();
  if (result)
  {
    return 91;
  }

  if (a1 + 0x4000000000000000 >= 0)
  {
    v8 = sub_1CA94C558();
    MEMORY[0x1CCAA1300](v8);

    MEMORY[0x1CCAA1300](2684, 0xE200000000000000);
    v9 = v1[2];
    sub_1CA94C218();
    v10 = sub_1CA94C668();
    for (i = v10; i != sub_1CA94C6F8(); v10 = i)
    {
      v11 = sub_1CA94C6D8();
      sub_1CA94C688();
      if (v11)
      {
        v12 = *(v9 + 32 + 8 * v10);
      }

      else
      {
        sub_1CA94D468();
      }

      sub_1CA94C738();
      v13 = sub_1CA94C558();
      MEMORY[0x1CCAA1300](v13);

      MEMORY[0x1CCAA1300](11563, 0xE200000000000000);
      v14 = sub_1CA436BE4(a1 + 1);
      MEMORY[0x1CCAA1300](v14);
    }

    return 91;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA436F48()
{
  OUTLINED_FUNCTION_0();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_1CA949F78();
  v0[5] = v3;
  v4 = *(v3 - 8);
  v0[6] = v4;
  v5 = *(v4 + 64) + 15;
  v0[7] = swift_task_alloc();
  v6 = sub_1CA94AC88();
  v0[8] = v6;
  v7 = *(v6 - 8);
  v0[9] = v7;
  v8 = *(v7 + 64) + 15;
  v0[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA437060, 0, 0);
}

uint64_t sub_1CA437060()
{
  [**(v0 + 32) multipleStateClass];
  swift_getObjCClassMetadata();
  sub_1CA437644();
  v1 = swift_dynamicCastMetatype();
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = MEMORY[0x1E69E7CC0];
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    result = sub_1CA94A878();
    *(v0 + 96) = result;
    v5 = *(result + 16);
    *(v0 + 112) = 0;
    *(v0 + 120) = v3;
    *(v0 + 104) = v5;
    if (v5)
    {
      if (*(result + 16))
      {
        (*(*(v0 + 72) + 16))(*(v0 + 80), result + ((*(*(v0 + 72) + 80) + 32) & ~*(*(v0 + 72) + 80)), *(v0 + 64));
        v6 = swift_task_alloc();
        *(v0 + 128) = v6;
        *v6 = v0;
        v7 = OUTLINED_FUNCTION_0_33(v6);

        return sub_1CA6337C0(v7);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v20 = *(v0 + 80);
      v21 = *(v0 + 88);
      v22 = *(v0 + 56);

      sub_1CA542800();

      v23 = OUTLINED_FUNCTION_1_3();

      return v24(v23);
    }
  }

  else
  {
    v8 = *(v0 + 56);
    v9 = *MEMORY[0x1E69E10F8];
    sub_1CA949C58();
    v10 = sub_1CA949F68();
    v11 = sub_1CA94CC18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CA256000, v10, v11, "Provided a collection, but the parameter does not support multiple states.", v12, 2u);
      MEMORY[0x1CCAA4BF0](v12, -1, -1);
    }

    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 40);

    (*(v14 + 8))(v13, v15);
    sub_1CA3DBA78();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    v17 = *(v0 + 80);
    v18 = *(v0 + 56);

    v19 = *(v0 + 8);

    return v19();
  }

  return result;
}

uint64_t sub_1CA4372F8()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  v2[17] = v4;
  v2[18] = v0;

  if (v0)
  {
    v5 = v2[15];
    v6 = v2[12];

    v7 = sub_1CA4375C0;
  }

  else
  {
    v7 = sub_1CA43741C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA43741C()
{
  MEMORY[0x1CCAA1490]();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_1CA94C6E8();
  (*(v3 + 8))(v2, v4);
  v5 = v0[2];
  v6 = v0[13];
  v7 = v0[14] + 1;
  v0[14] = v7;
  v0[15] = v5;
  result = v0[12];
  if (v7 == v6)
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[7];

    sub_1CA542800();

    v12 = OUTLINED_FUNCTION_1_3();

    return v13(v12);
  }

  else if (v7 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v0[9] + 16))(v0[10], result + ((*(v0[9] + 80) + 32) & ~*(v0[9] + 80)) + *(v0[9] + 72) * v7, v0[8]);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v15 = OUTLINED_FUNCTION_0_33();

    return sub_1CA6337C0(v15);
  }

  return result;
}

uint64_t sub_1CA4375C0()
{
  OUTLINED_FUNCTION_0();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[18];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

unint64_t sub_1CA437644()
{
  result = qword_1EC446DB0;
  if (!qword_1EC446DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC446DB0);
  }

  return result;
}

uint64_t sub_1CA437688()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA437724;

  return sub_1CA436F48();
}

uint64_t sub_1CA437724(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1CA437834(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_75_3();
            while (1)
            {
              OUTLINED_FUNCTION_16_17();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_8_13();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_53_8();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_79:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_16_17();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_8_13();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_53_8();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_75_3();
          while (1)
          {
            OUTLINED_FUNCTION_16_17();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_8_13();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_53_8();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1CA94D4B8();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_16_17();
                if (!v9 & v8)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_8_13();
                if (!v9)
                {
                  goto LABEL_68;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_53_8();
                if (v9)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_78;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_68;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_68;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v7 = 0;
        v12 = 1;
        goto LABEL_69;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_16_17();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_8_13();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_53_8();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v12 = 0;
LABEL_69:
          v23 = v12;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_1CA43F618(result, a2, 10);
  v7 = v24;
  v23 = v25;
LABEL_70:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void sub_1CA437A9C(char *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = v3;
  v5 = sub_1CA6048D4(v3);

  if (v5 == 1)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v6 = v4;
    v7 = sub_1CA6048D4(v3);
    sub_1CA607C68(v7, v6);
    v9 = sub_1CA360EB0(v8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  if (!v10)
  {
LABEL_8:
    v13 = 9;
  }

  else
  {
    sub_1CA437BCC(&v14);
    if (v15)
    {
      sub_1CA27F268(&v14, v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v12 + 40))(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(v16);
      return;
    }

    sub_1CA27080C(&v14, &unk_1EC4456B0, &unk_1CA985F30);
    v13 = 8;
  }

  *a1 = v13;
}

void sub_1CA437BCC(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = *(v1 + 1);
  *&v18[5] = *v1;
  *&v18[7] = v4;
  *&v18[9] = *(v1 + 2);
  v5 = v3;
  v6 = sub_1CA6048D4(v3);

  if (v6 == 1)
  {
    goto LABEL_2;
  }

  if (v3)
  {
    v8 = v5;
    v9 = sub_1CA6048D4(v3);
    sub_1CA607C68(v9, v8);
    v11 = sub_1CA360EB0(v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1CA3E4D48(sub_1CA440414, v11, &v16);

  if (v17)
  {
    sub_1CA27F268(&v16, v18);
    sub_1CA27F268(v18, a1);
    return;
  }

  v12 = *(v1 + 16);
  sub_1CA27080C(&v16, &unk_1EC4456B0, &unk_1CA985F30);
  if ((v12 & 1) == 0)
  {
    goto LABEL_2;
  }

  v13 = *v1;
  if (!*v1)
  {
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E30, &unk_1CA985F40);
    *(a1 + 32) = sub_1CA276B98(&qword_1EC444E38, &qword_1EC444E30, &unk_1CA985F40);
    v14 = swift_allocObject();
    *a1 = v14;
    *(v14 + 16) = 0;
    goto LABEL_18;
  }

  if (v13 == 2)
  {
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E30, &unk_1CA985F40);
    *(a1 + 32) = sub_1CA276B98(&qword_1EC444E38, &qword_1EC444E30, &unk_1CA985F40);
    v14 = swift_allocObject();
    *a1 = v14;
    *(v14 + 16) = 2;
LABEL_18:
    strcpy((v14 + 24), "WFNumberValue");
    *(v14 + 38) = -4864;
    *(v14 + 40) = 1;
    return;
  }

  if (v13 != 99)
  {
    if (v13 == 4)
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E40, &qword_1CA98F950);
      *(a1 + 32) = sub_1CA276B98(&unk_1EC444E48, &qword_1EC444E40, &qword_1CA98F950);
      strcpy(a1, "WFNumberValue");
      *(a1 + 14) = -4864;
      *(a1 + 16) = 1;
      return;
    }

LABEL_2:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (v3)
  {
    v15 = [v5 isCaseInsensitive];
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
  *(a1 + 32) = sub_1CA276B98(&qword_1EC444E28, &qword_1EC444E20, &unk_1CA9917A0);
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x80000001CA9B28F0;
  *(a1 + 16) = 0;
  *(a1 + 17) = v15;
}

uint64_t sub_1CA437F64(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 24))(v3, v4);
  type metadata accessor for WFContentOperator(0);
  result = swift_dynamicCast();
  if (result)
  {
    return v8 == *a2;
  }

  return result;
}

uint64_t sub_1CA438070(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v33 = a2 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  v34 = *(a2 + 16);
  v4 = &unk_1EC444470;
  v5 = &unk_1CA983510;
  while (1)
  {
    if (v2 == v34)
    {
      return v3;
    }

    v6 = v33 + 48 * v2;
    v7 = *(v6 + 40);
    v8 = *(v6 + 24);
    v9 = *(v6 + 16);
    v10 = *(v6 + 8);
    v39[0] = *v6;
    v39[1] = v10;
    v40 = v9;
    v41 = v8;
    v42 = v7;
    v11 = RowTemplateConditionalParameterState.containedVariables.getter();
    v12 = v11;
    v13 = v11 >> 62;
    v14 = v11 >> 62 ? sub_1CA94D328() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v3 >> 62;
    result = v3 >> 62 ? sub_1CA94D328() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = result + v14;
    if (__OFADD__(result, v14))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v15)
      {
LABEL_15:
        sub_1CA94D328();
      }

      else
      {
        v18 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_14:
        v19 = *(v18 + 16);
      }

      v3 = sub_1CA94D488();
      v18 = v3 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_17;
    }

    if (v15)
    {
      goto LABEL_15;
    }

    v18 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

LABEL_17:
    v38 = v18;
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v13)
    {
      v22 = sub_1CA94D328();
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v2;
    if (v22)
    {
      result = sub_1CA25B410();
      if (((v21 >> 1) - v20) < result)
      {
        goto LABEL_38;
      }

      v36 = v14;
      v23 = v38 + 8 * v20 + 32;
      v37 = v2;
      v35 = result;
      if (v13)
      {
        if (v22 < 1)
        {
          goto LABEL_40;
        }

        sub_1CA276B98(&qword_1EC447B50, v4, v5);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
          v25 = v5;
          v26 = v4;
          v27 = sub_1CA276BDC(v39, i, v12);
          v29 = *v28;
          v27(v39, 0);
          v4 = v26;
          v5 = v25;
          *(v23 + 8 * i) = v29;
        }
      }

      else
      {
        sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
        swift_arrayInitWithCopy();
      }

      v2 = v37;
      if (v35 < v36)
      {
        goto LABEL_37;
      }

      if (v35 > 0)
      {
        v30 = *(v38 + 16);
        v31 = __OFADD__(v30, v35);
        v32 = v30 + v35;
        if (v31)
        {
          goto LABEL_39;
        }

        *(v38 + 16) = v32;
      }
    }

    else
    {

      if (v14 > 0)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CA438380(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA94C1E8();
  v5 = sub_1CA94C988();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = v4;
  OUTLINED_FUNCTION_59_5(v5, v7, 0x80000001CA9B2A90, isUniquelyReferenced_nonNull_native, v31);
  v8 = v31[0];
  v9 = sub_1CA94C7A8();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = v8;
  result = OUTLINED_FUNCTION_59_5(v9, v11, 0x80000001CA9B2A70, v10, v31);
  v13 = 0;
  v14 = v31[0];
  v35 = v3;
  v15 = a2 + 9;
  v16 = a2[2];
LABEL_2:
  v17 = &v15[6 * v13];
  while (1)
  {
    if (v16 == v13)
    {
      OUTLINED_FUNCTION_116();
      sub_1CA94C648();
      OUTLINED_FUNCTION_171();

      swift_isUniquelyReferenced_nonNull_native();
      v31[0] = v14;
      OUTLINED_FUNCTION_67_5();
      sub_1CA32EA0C(a2, v24, v25, v26, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444E68, &unk_1CA987B80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA97EDF0;
      *(inited + 32) = sub_1CA94C3A8();
      *(inited + 40) = v28;
      *(inited + 48) = sub_1CA94C368();
      *(inited + 56) = sub_1CA94C3A8();
      *(inited + 64) = v29;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1A8();
      OUTLINED_FUNCTION_39_6();

      *(inited + 72) = v15;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1E8();
      OUTLINED_FUNCTION_7_19();
      v30 = sub_1CA94C1A8();

      return v30;
    }

    if (v13 >= v16)
    {
      break;
    }

    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_12;
    }

    v19 = *v17;
    v20 = *(v17 - 1);
    v21 = *(v17 - 24);
    v22 = *(v17 - 4);
    v31[0] = *(v17 - 5);
    v31[1] = v22;
    v32 = v21;
    v33 = v20;
    v34 = v19;
    a2 = v31;
    result = RowTemplateConditionalParameterState.serializedRepresentation.getter();
    ++v13;
    v17 += 6;
    if (result)
    {
      a2 = &v35;
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_2(v35);
      if (v23)
      {
        OUTLINED_FUNCTION_80_4();
      }

      result = sub_1CA94C6E8();
      v13 = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1CA438638(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA94C1E8();
  v5 = sub_1CA94C988();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v28[0] = v4;
  OUTLINED_FUNCTION_59_5(v5, v7, 0x80000001CA9B2A90, isUniquelyReferenced_nonNull_native, v28);
  v8 = *&v28[0];
  v9 = sub_1CA94C7A8();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  *&v28[0] = v8;
  result = OUTLINED_FUNCTION_59_5(v9, v11, 0x80000001CA9B2A70, v10, v28);
  v13 = 0;
  v14 = *&v28[0];
  v30 = v3;
  v15 = a2 + 4;
  v16 = a2[2];
LABEL_2:
  v17 = &v15[7 * v13];
  while (1)
  {
    if (v16 == v13)
    {
      OUTLINED_FUNCTION_116();
      sub_1CA94C648();
      OUTLINED_FUNCTION_171();

      swift_isUniquelyReferenced_nonNull_native();
      *&v28[0] = v14;
      OUTLINED_FUNCTION_67_5();
      sub_1CA32EA0C(a2, v21, v22, v23, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444E68, &unk_1CA987B80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA97EDF0;
      *(inited + 32) = sub_1CA94C3A8();
      *(inited + 40) = v25;
      *(inited + 48) = sub_1CA94C368();
      *(inited + 56) = sub_1CA94C3A8();
      *(inited + 64) = v26;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1A8();
      OUTLINED_FUNCTION_39_6();

      *(inited + 72) = v15;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1E8();
      OUTLINED_FUNCTION_7_19();
      v27 = sub_1CA94C1A8();

      return v27;
    }

    if (v13 >= v16)
    {
      break;
    }

    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_12;
    }

    v19 = *(v17 + 1);
    v28[0] = *v17;
    v28[1] = v19;
    v28[2] = *(v17 + 2);
    v29 = v17[6];
    a2 = v28;
    result = RowTemplateFindFilterParameterState.serializedRepresentation.getter();
    ++v13;
    v17 += 7;
    if (result)
    {
      a2 = &v30;
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_2(v30);
      if (v20)
      {
        OUTLINED_FUNCTION_80_4();
      }

      result = sub_1CA94C6E8();
      v13 = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1CA4388E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA94C1E8();
  v5 = sub_1CA94C988();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v4;
  OUTLINED_FUNCTION_59_5(v5, v7, 0x80000001CA9B2A90, isUniquelyReferenced_nonNull_native, v28);
  v8 = v28[0];
  v9 = sub_1CA94C7A8();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v8;
  result = OUTLINED_FUNCTION_59_5(v9, v11, 0x80000001CA9B2A70, v10, v28);
  v13 = 0;
  v14 = v28[0];
  v28[0] = v3;
  v15 = a2 + 56;
  v16 = *(a2 + 16);
LABEL_2:
  for (i = (v15 + (v13 << 6)); ; i += 8)
  {
    if (v16 == v13)
    {
      v22 = sub_1CA94C648();

      v23 = swift_isUniquelyReferenced_nonNull_native();
      v28[0] = v14;
      sub_1CA32EA0C(v22, 0xD000000000000020, 0x80000001CA9B2A40, v23, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444E68, &unk_1CA987B80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA97EDF0;
      *(inited + 32) = sub_1CA94C3A8();
      *(inited + 40) = v25;
      *(inited + 48) = sub_1CA94C368();
      *(inited + 56) = sub_1CA94C3A8();
      *(inited + 64) = v26;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1A8();
      OUTLINED_FUNCTION_39_6();

      *(inited + 72) = i;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1E8();
      OUTLINED_FUNCTION_7_19();
      v27 = sub_1CA94C1A8();

      return v27;
    }

    if (v13 >= v16)
    {
      break;
    }

    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_14;
    }

    result = *i;
    if (*i)
    {
      result = [result value];
      if (result)
      {
        v19 = result;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457D8, &qword_1CA987B78);
        v20 = swift_initStackObject();
        *(v20 + 16) = xmmword_1CA981310;
        strcpy((v20 + 32), "WFRowSubject");
        *(v20 + 45) = 0;
        *(v20 + 46) = -5120;
        *(v20 + 48) = v19;
        sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
        v21 = v19;
        sub_1CA94C1E8();
        sub_1CA94C1A8();

        MEMORY[0x1CCAA1490]();
        if (*((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        result = sub_1CA94C6E8();
        v13 = v18;
        goto LABEL_2;
      }
    }

    ++v13;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1CA438C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  sub_1CA2E764C();
  OUTLINED_FUNCTION_72_4();
  v4 = sub_1CA2BC130();
  sub_1CA28A224();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1CA438D30(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_72_4();
  v6 = a3();
  sub_1CA28A224();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

WorkflowKit::WFConditionalAction::ParameterKey_optional __swiftcall WFConditionalAction.ParameterKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CA94D6E8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WFConditionalAction.ParameterKey.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x756F706D6F434657;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7469646E6F434657;
  }
}

uint64_t sub_1CA438EC4@<X0>(uint64_t *a1@<X8>)
{
  result = WFConditionalAction.ParameterKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1CA438EEC()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = [v0 mode];
  if (v4 == 2)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_1_2();
    sub_1CA94C438();
    v9 = OUTLINED_FUNCTION_58();
    v10 = OUTLINED_FUNCTION_18_0(v9);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_24_12();
    sub_1CA948D98();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_6;
    }

LABEL_9:
    OUTLINED_FUNCTION_0_3();
    goto LABEL_6;
  }

  if (v4 != 1)
  {
    v21.receiver = v0;
    v21.super_class = type metadata accessor for WFConditionalAction();
    v20 = objc_msgSendSuper2(&v21, sel_localizedNameWithContext_, v3);
    goto LABEL_8;
  }

  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438();
  v5 = OUTLINED_FUNCTION_58();
  v6 = OUTLINED_FUNCTION_18_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_12();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v13 = [qword_1EDB9F690 bundleURL];
  OUTLINED_FUNCTION_63_6();
  v14 = sub_1CA948BA8();
  v15 = OUTLINED_FUNCTION_18_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35_8();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = OUTLINED_FUNCTION_9_1();
  v20 = [v3 localize_];

LABEL_8:
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA4392EC()
{
  v1 = v0 + OBJC_IVAR___WFConditionalAction_tableTemplate;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 72);
  while (1)
  {
    v5 = *v4;
    v4 += 6;
    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CA439454()
{
  if ([v0 mode])
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F8, &unk_1CA987A00);
  OUTLINED_FUNCTION_64_5();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA981310;
  *(v1 + 32) = sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  return v1;
}

id sub_1CA4394DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ([v3 mode])
  {
    return (a1 == 0);
  }

  v7.receiver = v3;
  v7.super_class = type metadata accessor for WFConditionalAction();
  return objc_msgSendSuper2(&v7, sel_legacyBehaviorIgnoresOutputFromAction_inWorkflow_, a1, a2);
}

void sub_1CA4395D8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438();
  v3 = OUTLINED_FUNCTION_58();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_12();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v7 = [qword_1EDB9F690 bundleURL];
  OUTLINED_FUNCTION_63_6();
  v8 = sub_1CA948BA8();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35_8();

  v12 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v13 = OUTLINED_FUNCTION_9_1();
  v14 = [v2 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA4397B4()
{
  if ([v0 mode])
  {
    v7.receiver = v0;
    v7.super_class = type metadata accessor for WFConditionalAction();
    v1 = objc_msgSendSuper2(&v7, sel_createAccompanyingActions);
    if (v1)
    {
      v2 = v1;
      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      v3 = sub_1CA94C658();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = [v0 createAccompanyingActionWithMode_];
    v5 = [v0 createAccompanyingActionWithMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1CA981360;
    *(v3 + 32) = v4;
    *(v3 + 40) = v5;
  }

  return v3;
}

id WFConditionalAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1CA94C368();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v9 = sub_1CA94C1A8();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WFConditionalAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___WFConditionalAction_tableTemplate];
  v8 = MEMORY[0x1E69E7CC0];
  *v7 = 0;
  *(v7 + 1) = v8;
  v7[16] = 0;
  *&v4[OBJC_IVAR___WFConditionalAction____lazy_storage___addButtonParameter] = 0;
  v9 = OBJC_IVAR___WFConditionalAction_parameterSerializationKeys;
  *&v4[v9] = sub_1CA94C1E8();
  *&v4[OBJC_IVAR___WFConditionalAction_observedVariables] = v8;
  v4[OBJC_IVAR___WFConditionalAction_truthForTestingOnly] = 0;
  OUTLINED_FUNCTION_69();
  v10 = sub_1CA94C368();

  if (a4)
  {
    sub_1CA94C218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v11 = sub_1CA94C1A8();
  }

  else
  {
    v11 = 0;
  }

  v34.receiver = v4;
  v34.super_class = type metadata accessor for WFConditionalAction();
  v12 = objc_msgSendSuper2(&v34, sel_initWithIdentifier_definition_serializedParameters_, v10, a3, v11);
  v13 = v12;

  if (v13)
  {

    if (a4)
    {
      sub_1CA94C218();
      v14 = OUTLINED_FUNCTION_3_28();
      v16 = sub_1CA323E28(v14, v15);

      if (v16)
      {

        v17 = v13;
        OUTLINED_FUNCTION_52_0();
        sub_1CA698020(0, v18);
        if (v29)
        {
          v19 = &v17[OBJC_IVAR___WFConditionalAction_tableTemplate];
          OUTLINED_FUNCTION_54_4();
          v20 = *(v19 + 1);
          *v19 = v28;
          *(v19 + 1) = v29;
          v19[16] = v30 & 1;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
        sub_1CA94C1A8();

        v21 = v13;
        RowTemplateConditionalParameterState.init(serializedRepresentation:variableProvider:parameter:)();
        if (v29)
        {
          v22 = &v21[OBJC_IVAR___WFConditionalAction_tableTemplate];
          OUTLINED_FUNCTION_28();
          v23 = v33;
          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA69AE28();
          v24 = *(*(v22 + 1) + 16);
          sub_1CA69B03C(v24);
          v25 = *(v22 + 1);
          *(v25 + 16) = v24 + 1;
          v26 = v25 + 48 * v24;
          *(v26 + 32) = v28;
          *(v26 + 40) = v29;
          *(v26 + 48) = v30 & 1;
          *(v26 + 56) = v31;
          *(v26 + 64) = v32;
          *(v26 + 72) = v33;
          *(v22 + 1) = v25;
          swift_endAccess();
          sub_1CA43EFAC(v28, v29, v30, v31, v32, v33);
        }
      }
    }

    sub_1CA43D2A0();
  }

  else
  {

    return 0;
  }

  return v12;
}

void sub_1CA439DB8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v2 = sub_1CA94C1E8();
  v3 = sub_1CA94C3A8();
  v5 = v4;
  sub_1CA43FB24(v0);
  if (!v6)
  {
    v7 = sub_1CA948D28();
    v85 = &v83;
    v8 = OUTLINED_FUNCTION_1_0(v7);
    v10 = v9;
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_6_0();
    v15 = v14 - v13;
    sub_1CA948D18();
    sub_1CA948CC8();
    (*(v10 + 8))(v15, v7);
  }

  v16 = sub_1CA94C368();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v2;
  sub_1CA32EA0C(v16, v3, v5, isUniquelyReferenced_nonNull_native, v88);

  v18 = v88[0];
  v19 = sub_1CA94C3A8();
  v21 = v20;
  if ([v1 UUID])
  {
    OUTLINED_FUNCTION_39_6();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = OUTLINED_FUNCTION_70_7();
    sub_1CA32EA0C(v22, v19, v21, v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_187();
    v25 = sub_1CA271BF8();
    if (v26)
    {
      v27 = v25;
      swift_isUniquelyReferenced_nonNull_native();
      v88[0] = v18;
      v28 = *(v18 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      sub_1CA94D588();
      v29 = v88[0];
      v30 = *(*(v88[0] + 48) + 16 * v27 + 8);

      v31 = *(*(v29 + 56) + 8 * v27);
      sub_1CA94D5A8();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v32 = sub_1CA94C3A8();
  v34 = v33;
  [v1 mode];
  sub_1CA94C988();
  OUTLINED_FUNCTION_39_6();
  swift_isUniquelyReferenced_nonNull_native();
  v35 = OUTLINED_FUNCTION_70_7();
  sub_1CA32EA0C(v35, v32, v34, v36, v37);

  v38 = v88[0];
  if ([v1 mode])
  {
    goto LABEL_9;
  }

  v39 = &v1[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v40 = *(v39 + 1);
  if (*(v40 + 16) != 1)
  {
    v71 = *v39;
    v72 = v39[16];
    sub_1CA94C218();
    v73 = OUTLINED_FUNCTION_188();
    sub_1CA438380(v73, v74);
    OUTLINED_FUNCTION_171();

    if (v72)
    {
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v88[0] = v38;
      swift_getObjectType();
      sub_1CA32EB34(v72, 0x7469646E6F434657, 0xEC000000736E6F69, v75, v88);
    }

    else
    {
      OUTLINED_FUNCTION_3_28();
      v76 = sub_1CA271BF8();
      if (v77)
      {
        v78 = v76;
        swift_isUniquelyReferenced_nonNull_native();
        v88[0] = v38;
        v79 = v38[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
        sub_1CA94D588();
        v80 = v88[0];
        v81 = *(*(v88[0] + 48) + 16 * v78 + 8);

        v82 = *(*(v80 + 56) + 8 * v78);
        OUTLINED_FUNCTION_163();
        sub_1CA94D5A8();
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_9;
  }

  v41 = *(v40 + 40);
  v42 = *(v40 + 48);
  v43 = *(v40 + 56);
  v44 = *(v40 + 72);
  v88[0] = *(v40 + 32);
  v88[1] = v41;
  v89 = v42;
  v90 = v43;
  v91 = v44;
  v45 = RowTemplateConditionalParameterState.serializedRepresentation.getter();
  if (!v45 || (v87 = v45, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    OUTLINED_FUNCTION_36();
    return;
  }

  v46 = 0;
  v48 = v86 + 64;
  v47 = *(v86 + 64);
  v84 = v86 + 64;
  v85 = v86;
  v49 = 1 << *(v86 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v47;
  v52 = (v49 + 63) >> 6;
  v83 = v52;
  if (v51)
  {
    while (1)
    {
      v53 = v46;
LABEL_20:
      v54 = __clz(__rbit64(v51)) | (v53 << 6);
      v55 = (v85[6] + 16 * v54);
      v57 = *v55;
      v56 = v55[1];
      v58 = *(v85[7] + 8 * v54);
      swift_unknownObjectRetain_n();
      sub_1CA94C218();
      swift_isUniquelyReferenced_nonNull_native();
      v88[0] = v38;
      OUTLINED_FUNCTION_204();
      v59 = sub_1CA271BF8();
      if (__OFADD__(v38[2], (v60 & 1) == 0))
      {
        break;
      }

      v61 = v59;
      v62 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      if (sub_1CA94D588())
      {
        OUTLINED_FUNCTION_204();
        v63 = sub_1CA271BF8();
        if ((v62 & 1) != (v64 & 1))
        {
          goto LABEL_38;
        }

        v61 = v63;
      }

      v51 &= v51 - 1;
      if (v62)
      {

        v38 = v88[0];
        v65 = *(v88[0] + 56);
        v66 = *(v65 + 8 * v61);
        *(v65 + 8 * v61) = v58;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = v88[0];
        *(v88[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
        v67 = (v38[6] + 16 * v61);
        *v67 = v57;
        v67[1] = v56;
        *(v38[7] + 8 * v61) = v58;
        swift_unknownObjectRelease();
        v68 = v38[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_37;
        }

        v38[2] = v70;
      }

      v46 = v53;
      v52 = v83;
      v48 = v84;
      if (!v51)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    while (1)
    {
      v53 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v53 >= v52)
      {

        goto LABEL_9;
      }

      v51 = *(v48 + 8 * v53);
      ++v46;
      if (v51)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1CA94D878();
  __break(1u);
}

uint64_t sub_1CA43A4A0()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for WFConditionalAction();
  v1 = objc_msgSendSuper2(&v18, sel_minimumSupportedClientVersion);
  if (!v1)
  {
    sub_1CA94C3A8();
    v1 = sub_1CA94C368();
  }

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_66_3();
  v2 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  if (*(*(v2 + 1) + 16) < 2uLL)
  {
  }

  else
  {

    v3 = sub_1CA94C368();
    v4 = WFMaximumBundleVersion(v3, v1);

    if (v4)
    {
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_66_3();
    }
  }

  v5 = *(v2 + 1);
  v6 = *(v5 + 16);
  result = sub_1CA94C218();
  v8 = 0;
  for (i = (v5 + 72); ; i += 6)
  {
    if (v6 == v8)
    {

      return OUTLINED_FUNCTION_116();
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    if (*(*(i - 4) + 2))
    {
      v10 = *(i - 1);
      v11 = *i;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA271BF8();
      if (v12)
      {

        v13 = sub_1CA94C368();
        OUTLINED_FUNCTION_116();
        v14 = sub_1CA94C368();

        v15 = OUTLINED_FUNCTION_69();
        v17 = WFMaximumBundleVersion(v15, v16);

        if (v17)
        {
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_66_3();
        }

        return OUTLINED_FUNCTION_116();
      }
    }

    ++v8;
  }

  __break(1u);
  return result;
}

id sub_1CA43A750@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___WFConditionalAction_tableTemplate;
  OUTLINED_FUNCTION_14_17();
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  v7 = *(v6 + 16);
  if (v7 <= 1)
  {
    if (v7)
    {
      v9 = *(v6 + 32);
      v8 = *(v6 + 40);
      v10 = *(v6 + 48);
      v11 = *(v6 + 56);
      v12 = *(v6 + 64);
      v13 = *(v6 + 72);
      sub_1CA94C218();
      sub_1CA94C218();
      result = v13;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
      v8 = sub_1CA94C1E8();
      v14 = sub_1CA948D28();
      v15 = OUTLINED_FUNCTION_1_0(v14);
      v17 = v16;
      v19 = *(v18 + 64);
      MEMORY[0x1EEE9AC00](v15);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_24_12();
      sub_1CA948D18();
      v11 = sub_1CA948CC8();
      v12 = v20;
      result = (*(v17 + 8))(v2, v14);
      v9 = 4;
      v10 = 0;
      v13 = 0;
    }

    *a1 = v9;
    a1[1] = v8;
    a1[2] = v10;
    a1[3] = v11;
    a1[4] = v12;
    a1[5] = v13;
  }

  else
  {
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  return result;
}

void sub_1CA43A920()
{
  OUTLINED_FUNCTION_37_0();
  if ([v0 mode])
  {
    goto LABEL_11;
  }

  sub_1CA43A750(&v44);
  v1 = v45;
  if (!v45)
  {
    v11 = OBJC_IVAR___WFConditionalAction_tableTemplate;
    OUTLINED_FUNCTION_14_17();
    swift_beginAccess();
    if (*&v0[v11])
    {
      v12 = sub_1CA94C438();
      v14 = v13;
      v15 = sub_1CA94C438();
      v17 = v16;
      v18 = sub_1CA948E58();
      v19 = OUTLINED_FUNCTION_18_0(v18);
      v21 = *(v20 + 64);
      MEMORY[0x1EEE9AC00](v19);
      OUTLINED_FUNCTION_6_0();
      v24 = v23 - v22;
      sub_1CA948D98();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = sub_1CA94C438();
      v14 = v25;
      v15 = sub_1CA94C438();
      v17 = v26;
      v27 = sub_1CA948E58();
      v28 = OUTLINED_FUNCTION_18_0(v27);
      v30 = *(v29 + 64);
      MEMORY[0x1EEE9AC00](v28);
      OUTLINED_FUNCTION_6_0();
      v24 = v32 - v31;
      sub_1CA948D98();
      if (qword_1EDB9F5F0 == -1)
      {
LABEL_10:
        v33 = [qword_1EDB9F690 bundleURL];
        v34 = sub_1CA948BA8();
        v35 = OUTLINED_FUNCTION_18_0(v34);
        v37 = *(v36 + 64);
        MEMORY[0x1EEE9AC00](v35);
        OUTLINED_FUNCTION_6_0();
        v40 = v39 - v38;
        sub_1CA948B68();

        v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
        v42 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v24, v40);
        [objc_allocWithZone(WFActionParameterSummary) initWithString_];

        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_0_3();
    goto LABEL_10;
  }

  v2 = v44;
  v3 = v47;
  v4 = v48;
  v5 = v49;
  v50 = v44;
  v51 = v45;
  v43 = v46;
  v52 = v46 & 1;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  sub_1CA437A9C(&v44);
  v44 = sub_1CA44CF44();
  v45 = v6;
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v7 = qword_1EDB9F690;
  v8 = sub_1CA94C368();
  v9 = sub_1CA94C368();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  sub_1CA94C3A8();
  sub_1CA27BAF0();
  OUTLINED_FUNCTION_14_17();
  sub_1CA94D1B8();
  OUTLINED_FUNCTION_1_2();

  sub_1CA43ADA0();

  sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  sub_1CA43AE20();
  sub_1CA43EFAC(v2, v1, v43, v3, v4, v5);
LABEL_11:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA43ADA0()
{
  sub_1CA94C218();
  v1 = sub_1CA94C578();
  sub_1CA94C498();
  return v1;
}

id sub_1CA43AE20()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_116();
  v1 = sub_1CA94C368();

  v2 = [v0 initWithLocalizedString_];

  return v2;
}

uint64_t sub_1CA43AEB8()
{
  if ([v0 mode])
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  OUTLINED_FUNCTION_64_5();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA9813B0;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  strcpy((inited + 40), "WFConditions");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v3;
  *(inited + 72) = @"Class";
  type metadata accessor for WFTableTemplateParameter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = @"Key";
  v6 = @"Class";
  v7 = NSStringFromClass(ObjCClassFromMetadata);
  v8 = sub_1CA94C3A8();
  v10 = v9;

  *(inited + 104) = v3;
  *(inited + 80) = v8;
  *(inited + 88) = v10;
  _s3__C3KeyVMa_0(0);
  OUTLINED_FUNCTION_2_32();
  sub_1CA43FD98(v11, v12);
  OUTLINED_FUNCTION_163();
  sub_1CA94C1E8();
  *(v1 + 32) = sub_1CA2F864C();
  return v1;
}

id sub_1CA43B068()
{
  v1 = OBJC_IVAR___WFConditionalAction____lazy_storage___addButtonParameter;
  v2 = *(v0 + OBJC_IVAR___WFConditionalAction____lazy_storage___addButtonParameter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFConditionalAction____lazy_storage___addButtonParameter);
  }

  else
  {
    v4 = sub_1CA43B0CC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CA43B0CC(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 1937075312;
  *(inited + 48) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA43FD98(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v3 = @"Key";
  sub_1CA94C1E8();
  v4 = sub_1CA2F864C();
  v5 = [objc_allocWithZone(WFAddButtonParameter) initWithDefinition_];

  [v5 setDelegate_];
  return v5;
}

void sub_1CA43B220()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  if (![v0 mode])
  {
    OUTLINED_FUNCTION_3_28();
    v4 = sub_1CA94C368();
    v5 = [v1 parameterForKey_];

    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v140 = v5;
      v7 = MEMORY[0x1E69E6158];
      v8 = sub_1CA94C1E8();
      v9 = OBJC_IVAR___WFConditionalAction_parameterSerializationKeys;
      OUTLINED_FUNCTION_54_4();
      v10 = *&v9[v1];
      v146 = v9;
      *&v9[v1] = v8;

      v156 = v6;
      sub_1CA43A750(&v148);
      if (*(&v148 + 1))
      {
        v135 = v148;
        v157 = v148;
        v136 = *(&v151 + 1);
        v137 = v149;
        LOBYTE(v158) = v149 & 1;
        v133 = v151;
        v134 = v150;
        *(&v158 + 1) = v150;
        v159 = v151;
        if (v3)
        {
          v11 = v140;
          MEMORY[0x1CCAA1490](v11, v12, v13, v14);
          OUTLINED_FUNCTION_22_12();
          if (v16)
          {
            OUTLINED_FUNCTION_64(v15);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_188();
          sub_1CA94C6E8();
        }

        sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CA97EDF0;
        *(inited + 32) = @"Key";
        *(inited + 40) = 0x79747265706F7270;
        *(inited + 48) = 0xE800000000000000;
        v18 = v7;
        *(inited + 64) = v7;
        *(inited + 72) = @"Label";
        v19 = @"Key";
        v20 = @"Label";
        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_53;
        }

        while (1)
        {
          v21 = qword_1EDB9F690;
          OUTLINED_FUNCTION_188();
          v22 = sub_1CA94C368();
          OUTLINED_FUNCTION_188();
          v23 = sub_1CA94C368();

          v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

          v25 = sub_1CA94C3A8();
          v27 = v26;

          *(inited + 104) = v18;
          *(inited + 80) = v25;
          *(inited + 88) = v27;
          _s3__C3KeyVMa_0(0);
          OUTLINED_FUNCTION_2_32();
          sub_1CA43FD98(v28, v29);
          sub_1CA94C1E8();
          v30 = sub_1CA2F864C();
          [objc_allocWithZone(WFConditionalSubjectParameter) initWithDefinition_];

          MEMORY[0x1CCAA1490]();
          OUTLINED_FUNCTION_22_12();
          v32 = v136;
          if (v16)
          {
            OUTLINED_FUNCTION_64(v31);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_188();
          sub_1CA94C6E8();
          sub_1CA437A9C(&v148);
          if (v148 != 9)
          {
            if (v136)
            {
              v33 = v136;
              v34 = sub_1CA6048D4(v136);
              sub_1CA607C68(v34, v33);
              sub_1CA360EB0(v35);
            }

            v85 = objc_allocWithZone(type metadata accessor for RowTemplateOperatorPickerParameter());
            sub_1CA3E7A10();
            MEMORY[0x1CCAA1490]();
            OUTLINED_FUNCTION_22_12();
            if (v16)
            {
              OUTLINED_FUNCTION_64(v86);
              sub_1CA94C698();
            }

            OUTLINED_FUNCTION_188();
            sub_1CA94C6E8();
          }

          sub_1CA437BCC(&v148);
          if (!v150)
          {
            break;
          }

          sub_1CA27F268(&v148, v153);
          v87 = v154;
          v88 = v155;
          __swift_project_boxed_opaque_existential_1(v153, v154);
          v147[3] = &type metadata for RowTemplateConditionalParameterState;
          v147[4] = sub_1CA43FDDC();
          v89 = swift_allocObject();
          v147[0] = v89;
          v90 = v158;
          v89[1] = v157;
          v89[2] = v90;
          v89[3] = v159;
          sub_1CA43FE30(v147, &v148);
          sub_1CA43FEA0(v135, *(&v135 + 1), v137, v134, v133, v32);
          sub_1CA27080C(v147, &unk_1EC4456C0, &qword_1CA987A30);
          *(&v151 + 1) = 0x65756C6176;
          v152 = 0xE500000000000000;
          v91 = (*(v88 + 48))(&v148, v87, v88);
          sub_1CA43FEEC(&v148);
          inited = 0;
          v93 = v91 + 64;
          v92 = *(v91 + 64);
          v141 = v91;
          v94 = 1 << *(v91 + 32);
          v95 = -1;
          if (v94 < 64)
          {
            v95 = ~(-1 << v94);
          }

          v18 = v95 & v92;
          v96 = (v94 + 63) >> 6;
          v138 = v96;
          v139 = v91 + 64;
          if ((v95 & v92) != 0)
          {
            while (1)
            {
LABEL_33:
              v98 = __clz(__rbit64(v18)) | (inited << 6);
              v99 = *(v141 + 56);
              v100 = (*(v141 + 48) + 16 * v98);
              v101 = v100[1];
              v144 = *v100;
              v102 = *(v99 + 8 * v98);
              v145 = v101;
              v103 = sub_1CA94C218();
              MEMORY[0x1CCAA1490](v103);
              OUTLINED_FUNCTION_23_2(v156);
              if (v16)
              {
                OUTLINED_FUNCTION_64(v104);
                OUTLINED_FUNCTION_80_4();
              }

              sub_1CA94C6E8();
              v142 = v102;
              v105 = [v102 key];
              v106 = sub_1CA94C3A8();
              v108 = v107;

              OUTLINED_FUNCTION_28();
              v109 = *(v146 + v1);
              swift_isUniquelyReferenced_nonNull_native();
              v147[0] = *(v146 + v1);
              v110 = v147[0];
              v111 = v1;
              *(v146 + v1) = 0x8000000000000000;
              v143 = v106;
              v112 = sub_1CA271BF8();
              v114 = *(v110 + 16);
              v115 = (v113 & 1) == 0;
              v1 = (v114 + v115);
              if (__OFADD__(v114, v115))
              {
                break;
              }

              v116 = v112;
              v117 = v113;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447140, &qword_1CA987A38);
              if (sub_1CA94D588())
              {
                v118 = sub_1CA271BF8();
                if ((v117 & 1) != (v119 & 1))
                {
                  sub_1CA94D878();
                  __break(1u);
                  return;
                }

                v116 = v118;
              }

              v1 = v111;
              if (v117)
              {

                v120 = v147[0];
                v121 = (*(v147[0] + 56) + 16 * v116);
                v122 = v121[1];
                v123 = v145;
                *v121 = v144;
                v121[1] = v123;
              }

              else
              {
                v120 = v147[0];
                *(v147[0] + 8 * (v116 >> 6) + 64) |= 1 << v116;
                v124 = (v120[6] + 16 * v116);
                v125 = v144;
                *v124 = v143;
                v124[1] = v108;
                v126 = (v120[7] + 16 * v116);
                v127 = v145;
                *v126 = v125;
                v126[1] = v127;
                v128 = v120[2];
                v129 = __OFADD__(v128, 1);
                v130 = v128 + 1;
                if (v129)
                {
                  goto LABEL_52;
                }

                v120[2] = v130;
              }

              v131 = v142;
              v18 &= v18 - 1;
              *(v146 + v111) = v120;
              swift_endAccess();

              v96 = v138;
              v93 = v139;
              if (!v18)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
LABEL_29:
            while (1)
            {
              v97 = inited + 1;
              if (__OFADD__(inited, 1))
              {
                break;
              }

              if (v97 >= v96)
              {

                __swift_destroy_boxed_opaque_existential_0(v153);
                goto LABEL_47;
              }

              v18 = *(v93 + 8 * v97);
              ++inited;
              if (v18)
              {
                inited = v97;
                goto LABEL_33;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          OUTLINED_FUNCTION_0_3();
        }

        sub_1CA27080C(&v148, &unk_1EC4456B0, &unk_1CA985F30);
LABEL_47:
        sub_1CA43B068();
        MEMORY[0x1CCAA1490]();
        OUTLINED_FUNCTION_62_4();
        if (v16)
        {
          OUTLINED_FUNCTION_64(v132);
          sub_1CA94C698();
        }

        OUTLINED_FUNCTION_69();
        sub_1CA94C6E8();

        sub_1CA43EFAC(v135, *(&v135 + 1), v137, v134, v133, v136);
      }

      else
      {
        v36 = v140;
        MEMORY[0x1CCAA1490]();
        OUTLINED_FUNCTION_23_2(v156);
        if (v16)
        {
          OUTLINED_FUNCTION_64(v37);
          OUTLINED_FUNCTION_80_4();
        }

        v146 = v36;
        sub_1CA94C6E8();
        v145 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_1CA981370;
        *(v38 + 32) = @"Key";
        strcpy((v38 + 40), "WFCompoundType");
        *(v38 + 55) = -18;
        *(v38 + 64) = v7;
        *(v38 + 72) = @"Items";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1CA97EDF0;
        *&v148 = 0;
        v40 = @"Key";
        v41 = @"Items";
        *(v39 + 32) = sub_1CA94D798();
        *(v39 + 40) = v42;
        *&v148 = 1;
        *(v39 + 48) = sub_1CA94D798();
        *(v39 + 56) = v43;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
        *(v38 + 80) = v39;
        *(v38 + 104) = v44;
        *(v38 + 112) = @"ItemDisplayNames";
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v144 = swift_allocObject();
        *(v144 + 16) = xmmword_1CA981360;
        v45 = @"ItemDisplayNames";
        v46 = sub_1CA94C438();
        v141 = v47;
        v142 = v46;
        v48 = sub_1CA94C438();
        v138 = v49;
        v139 = v48;
        v50 = sub_1CA948E58();
        v140 = &v133;
        v51 = OUTLINED_FUNCTION_18_0(v50);
        v53 = *(v52 + 64);
        MEMORY[0x1EEE9AC00](v51);
        v143 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
        v54 = &v133 - v143;
        sub_1CA948D98();
        if (qword_1EDB9F5F0 != -1)
        {
          OUTLINED_FUNCTION_0_3();
        }

        v55 = qword_1EDB9F690;
        v56 = [qword_1EDB9F690 bundleURL];
        v57 = sub_1CA948BA8();
        v58 = OUTLINED_FUNCTION_18_0(v57);
        v60 = *(v59 + 64);
        MEMORY[0x1EEE9AC00](v58);
        v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
        sub_1CA948B68();

        v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
        v63 = sub_1CA2F9F14(v142, v141, v139, v138, 0, 0, v54, &v133 - v61);
        v64 = v144;
        *(v144 + 32) = v63;
        v65 = sub_1CA94C438();
        v140 = v66;
        v141 = v65;
        v67 = sub_1CA94C438();
        v69 = v68;
        v142 = &v133;
        MEMORY[0x1EEE9AC00](v67);
        v70 = &v133 - v143;
        sub_1CA948D98();
        v71 = [v55 bundleURL];
        MEMORY[0x1EEE9AC00](v71);
        sub_1CA948B68();

        v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
        *(v64 + 40) = sub_1CA2F9F14(v141, v140, v67, v69, 0, 0, v70, &v133 - v61);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
        *(v38 + 120) = v64;
        *(v38 + 144) = v73;
        *(v38 + 152) = @"DefaultValue";
        *&v148 = 0;
        v74 = @"DefaultValue";
        *(v38 + 160) = sub_1CA94D798();
        *(v38 + 168) = v75;
        *(v38 + 184) = MEMORY[0x1E69E6158];
        *(v38 + 192) = @"DisallowedVariableTypes";
        v76 = objc_opt_self();
        v77 = @"DisallowedVariableTypes";
        v78 = [v76 allInsertableVariableTypes];
        type metadata accessor for WFVariableType(0);
        sub_1CA43FD98(&qword_1EC441A60, type metadata accessor for WFVariableType);
        OUTLINED_FUNCTION_52_0();
        v79 = sub_1CA94C8F8();

        v80 = sub_1CA438D30(v79, sub_1CA2E7750, sub_1CA2BAF98);
        *(v38 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456A8, &unk_1CA987A20);
        *(v38 + 200) = v80;
        _s3__C3KeyVMa_0(0);
        OUTLINED_FUNCTION_2_32();
        sub_1CA43FD98(v81, v82);
        sub_1CA94C1E8();
        v83 = sub_1CA2F864C();
        [objc_allocWithZone(WFEnumerationParameter) initWithDefinition_];

        MEMORY[0x1CCAA1490]();
        OUTLINED_FUNCTION_62_4();
        if (v16)
        {
          OUTLINED_FUNCTION_64(v84);
          sub_1CA94C698();
        }

        OUTLINED_FUNCTION_69();
        sub_1CA94C6E8();
      }
    }
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA43C050()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_63_6();
  v8 = sub_1CA949F78();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v16 = (v15 - v14);
  if ([v0 mode])
  {
    goto LABEL_87;
  }

  OUTLINED_FUNCTION_32_9();
  v19 = v7 == v18 && v5 == v17;
  p_opt_inst_meths = &OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_inst_meths;
  if (v19 || (OUTLINED_FUNCTION_26_13(), (sub_1CA94D7F8() & 1) != 0))
  {
    if (v2)
    {
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456D0, &unk_1CA987A40);
      OUTLINED_FUNCTION_18_16();
      sub_1CA276B98(v21, v22, &unk_1CA987A40);
      WFParameterState.swiftParameterState<A>(_:)(&v142);
      v23 = v143;
      if (v143)
      {
        v24 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
        OUTLINED_FUNCTION_54_4();
        v25 = *(*(v24 + 1) + 16) == 1;
        v26 = *(v23 + 16);
        *(v24 + 1) = v23;

        if ((v25 ^ (v26 != 1)))
        {
LABEL_53:
          [v3 lockInputParameter];
          OUTLINED_FUNCTION_26_13();
          v75 = sub_1CA94C368();
          [v3 notifyEventObserversParameterStateDidChangeForKey_];

LABEL_87:
          OUTLINED_FUNCTION_36();
          return;
        }

LABEL_10:
        [v3 visibleParametersUpdated];
        goto LABEL_53;
      }
    }

LABEL_84:
    v117 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    sub_1CA94C218();
    v118 = sub_1CA949F68();
    v119 = sub_1CA94CC18();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v140 = v121;
      *v120 = 136315138;
      v122 = OUTLINED_FUNCTION_26_13();
      *(v120 + 4) = sub_1CA26B54C(v122, v123, v124);
      _os_log_impl(&dword_1CA256000, v118, v119, "Not setting conditional parameter state for key %s, due to unhandled condition", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x1CCAA4BF0](v121, -1, -1);
      MEMORY[0x1CCAA4BF0](v120, -1, -1);
    }

    (*(v11 + 8))(v16, v8);
    goto LABEL_87;
  }

  sub_1CA43A750(&v142);
  if (!v143)
  {
    OUTLINED_FUNCTION_30_12();
    v47 = v7 == v46 && v5 == v45;
    if (v47 || (OUTLINED_FUNCTION_26_13(), (sub_1CA94D7F8() & 1) != 0))
    {
      if (v2)
      {
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v49 = v48;
          swift_unknownObjectRetain();
          v50 = [v49 value];
          if (v50)
          {
            v51 = v50;
            v52 = sub_1CA94C3A8();
            v54 = sub_1CA437834(v52, v53);
            v56 = v55;
            swift_unknownObjectRelease();

            if ((v56 & 1) == 0)
            {
              v57 = OBJC_IVAR___WFConditionalAction_tableTemplate;
              OUTLINED_FUNCTION_54_4();
              *&v3[v57] = v54;
              goto LABEL_53;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      goto LABEL_84;
    }

    if (v7 != 0xD000000000000012 || 0x80000001CA996FE0 != v5)
    {
      OUTLINED_FUNCTION_26_13();
      if ((OUTLINED_FUNCTION_60_4() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    v68 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
    OUTLINED_FUNCTION_14_17();
    swift_beginAccess();
    v41 = (v68 + 8);
    if (*(*(v68 + 1) + 16) < 2uLL)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_28();
    sub_1CA43FB88(&v142);
    if (v143)
    {
      sub_1CA43EFAC(v142, v143, v144, v145, v146, v147);
LABEL_78:
      swift_endAccess();
      goto LABEL_10;
    }

    sub_1CA43EFAC(v142, 0, v144, v145, v146, v147);
    p_opt_inst_meths = *v41;
    v42 = (*v41)[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v41 = p_opt_inst_meths;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_76;
    }

    goto LABEL_91;
  }

  v130 = v11;
  v138 = v143;
  v135 = v142;
  v136 = v144;
  v137 = v145;
  v27 = v147;
  v139 = v146;
  v28 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v134 = v28;
  v133 = v28 + 8;
  if (!*(*(v28 + 1) + 16))
  {
    OUTLINED_FUNCTION_36_9();
    v29 = v27;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA69AE28();
    v30 = OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths[2];
    sub_1CA69B03C(v30);
    opt_class_meths = OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths;
    OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths[2] = (v30 + 1);
    v32 = &opt_class_meths[6 * v30];
    v32[4] = v135;
    v32[5] = v138;
    LOBYTE(v32[6].entrysize) = v136 & 1;
    v32[7] = v137;
    v32[8] = v139;
    v32[9] = v27;
    OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths = opt_class_meths;
    swift_endAccess();
  }

  v132 = v27;
  v33 = OBJC_IVAR___WFConditionalAction_parameterSerializationKeys;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v34 = *&v3[v33];
  sub_1CA94C218();
  v35 = OUTLINED_FUNCTION_26_13();
  v1 = sub_1CA3118E4(v35, v36, v34);
  v37 = v5;
  v38 = v7;
  v40 = v39;

  if (v40)
  {
    v41 = v37;
    v42 = v38;
    OUTLINED_FUNCTION_28();
    v16 = v134[1];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v134[1] = v16;
    if ((v43 & 1) == 0)
    {
      sub_1CA42B2A4(v16);
      v16 = v125;
      *v133 = v125;
    }

    if (v16[2])
    {
      if (v2)
      {
        swift_getObjectType();
        v44 = swift_unknownObjectRetain();
        sub_1CA43FF40(v44, v1, v40, &v16[5]);
      }

      else
      {
        sub_1CA43F494();

        swift_unknownObjectRelease();
      }

      *v133 = v16;
      swift_endAccess();
      v62 = OUTLINED_FUNCTION_15_11();
      sub_1CA43EFAC(v62, v63, v64, v65, v66, v132);
      goto LABEL_53;
    }

    __break(1u);
LABEL_89:
    sub_1CA42B2A4(v2);
    v2 = v126;
    *v133 = v126;
LABEL_50:
    if (*(v2 + 16))
    {
      RowTemplateConditionalParameterState.subject.setter(v1);
      *v133 = v2;
      swift_endAccess();
      goto LABEL_52;
    }

    __break(1u);
LABEL_91:
    sub_1CA42B2A4(p_opt_inst_meths);
    p_opt_inst_meths = v127;
    *v41 = v127;
LABEL_76:
    v100 = p_opt_inst_meths[2];
    if (&v42[-1].count + 3 < v100)
    {
      v101 = (v100 - 1);
      v102 = v100 - v42;
      v103 = &p_opt_inst_meths[6 * v42];
      v105 = v103[2];
      v104 = v103[3];
      v106 = *(v103 - 1);
      memmove(v103 - 2, v103 + 4, 48 * v102);
      p_opt_inst_meths[2] = v101;
      *v41 = p_opt_inst_meths;

      goto LABEL_78;
    }

    __break(1u);
    goto LABEL_93;
  }

  OUTLINED_FUNCTION_73_6();
  v59 = v38 == v58 && v37 == 0xE800000000000000;
  v60 = v38;
  v61 = v37;
  if (v59 || (OUTLINED_FUNCTION_26_13(), (OUTLINED_FUNCTION_81_4() & 1) != 0))
  {
    v42 = v132;
    if (v2)
    {
      objc_opt_self();
      v1 = swift_dynamicCastObjCClass();
      if (v1)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v1 = 0;
    }

    v41 = v134;
    OUTLINED_FUNCTION_28();
    v2 = v134[1];
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v134[1] = v2;
    if (v69)
    {
      goto LABEL_50;
    }

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_68_5();
  v77 = v60 == v76 && v37 == 0xE800000000000000;
  v42 = v132;
  if (!v77)
  {
    OUTLINED_FUNCTION_26_13();
    if ((OUTLINED_FUNCTION_81_4() & 1) == 0)
    {
      v82 = v60 == 0xD000000000000012 && 0x80000001CA996FE0 == v61;
      if (v82 || (OUTLINED_FUNCTION_26_13(), (OUTLINED_FUNCTION_60_4())) && v2)
      {
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456D0, &unk_1CA987A40);
        OUTLINED_FUNCTION_18_16();
        sub_1CA276B98(v83, v84, &unk_1CA987A40);
        WFParameterState.swiftParameterState<A>(_:)(&v140);
        if (v141)
        {
          if (*(v141 + 16))
          {
            v86 = *(v141 + 32);
            v85 = *(v141 + 40);
            v131 = *(v141 + 48);
            v87 = *(v141 + 64);
            v129 = *(v141 + 56);
            v88 = *(v141 + 72);
            v89 = v88;
            sub_1CA94C218();
            sub_1CA94C218();

            OUTLINED_FUNCTION_36_9();
            sub_1CA94C218();
            sub_1CA94C218();
            v90 = v89;
            sub_1CA69AE28();
            v91 = *(off_1EC4456D8 + 2);
            sub_1CA69B03C(v91);
            v92 = off_1EC4456D8;
            *(off_1EC4456D8 + 2) = v91 + 1;
            v93 = &v92[48 * v91];
            *(v93 + 4) = v86;
            *(v93 + 5) = v85;
            v93[48] = v131;
            *(v93 + 7) = v129;
            *(v93 + 8) = v87;
            *(v93 + 9) = v88;
            off_1EC4456D8 = v92;
            swift_endAccess();
            [v3 visibleParametersUpdated];
            v94 = OUTLINED_FUNCTION_15_11();
            sub_1CA43EFAC(v94, v95, v96, v97, v98, v132);

            goto LABEL_53;
          }
        }

        v112 = OUTLINED_FUNCTION_15_11();
        sub_1CA43EFAC(v112, v113, v114, v115, v116, v132);
      }

      else
      {
        v107 = OUTLINED_FUNCTION_15_11();
        sub_1CA43EFAC(v107, v108, v109, v110, v111, v132);
      }

      v11 = v130;
      goto LABEL_84;
    }
  }

  if (!v2 || (objc_opt_self(), (v78 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_52:
    [v3 visibleParametersUpdated];
    v70 = OUTLINED_FUNCTION_15_11();
    sub_1CA43EFAC(v70, v71, v72, v73, v74, v42);
    goto LABEL_53;
  }

  v79 = v78;
  swift_unknownObjectRetain();
  v80 = [v79 number];
  if (!v80)
  {
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v41 = v80;
  v1 = sub_1CA94C978();
  OUTLINED_FUNCTION_36_9();
  v16 = OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths = v16;
  if ((v81 & 1) == 0)
  {
LABEL_93:
    sub_1CA42B2A4(v16);
    v16 = v128;
  }

  if (v16[2])
  {
    v16[4] = v1;
    *v133 = v16;
    swift_endAccess();
    swift_unknownObjectRelease();

    goto LABEL_52;
  }

  __break(1u);
}

id sub_1CA43CB20(uint64_t a1, uint64_t a2)
{
  if ([v2 mode])
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_9();
  if (a1 != v7 || a2 != v6)
  {
    OUTLINED_FUNCTION_204();
    if ((sub_1CA94D7F8() & 1) == 0)
    {
      if (a1 != 0xD000000000000012 || 0x80000001CA996FE0 != a2)
      {
        OUTLINED_FUNCTION_204();
        if ((OUTLINED_FUNCTION_60_4() & 1) == 0)
        {
          sub_1CA43A750(&v78);
          v21 = v79;
          if (v79)
          {
            v5 = v81;
            v74 = v80;
            v22 = OBJC_IVAR___WFConditionalAction_parameterSerializationKeys;
            OUTLINED_FUNCTION_14_17();
            swift_beginAccess();
            v23 = *&v2[v22];
            sub_1CA94C218();
            v24 = OUTLINED_FUNCTION_204();
            sub_1CA3118E4(v24, v25, v23);
            v27 = v26;

            if (v27)
            {
              if (*(v21 + 16))
              {
                v28 = sub_1CA271BF8();
                if (v29)
                {
                  v30 = *(*(v21 + 56) + 8 * v28);
                  swift_unknownObjectRetain();

                  OUTLINED_FUNCTION_11_19(v31, v32, v33, v34, v35, v36, v37, v38, v74);
                  return v30;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_73_6();
              v53 = a1 == v52 && a2 == 0xE800000000000000;
              if (v53 || (OUTLINED_FUNCTION_204(), (OUTLINED_FUNCTION_81_4() & 1) != 0))
              {
                v54 = v5;
                OUTLINED_FUNCTION_11_19(v54, v55, v56, v57, v58, v59, v60, v61, v74);
                return v5;
              }

              OUTLINED_FUNCTION_68_5();
              v63 = a1 == v62 && a2 == 0xE800000000000000;
              if (v63 || (OUTLINED_FUNCTION_204(), v44 = OUTLINED_FUNCTION_81_4(), (v44 & 1) != 0))
              {
                v64 = sub_1CA94C988();
                v65 = [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_];

                OUTLINED_FUNCTION_11_19(v66, v67, v68, v69, v70, v71, v72, v73, v74);
                return v65;
              }
            }

            OUTLINED_FUNCTION_11_19(v44, v45, v46, v47, v48, v49, v50, v51, v74);
          }

          else
          {
            OUTLINED_FUNCTION_30_12();
            v41 = a1 == v40 && a2 == v39;
            if (v41 || (OUTLINED_FUNCTION_204(), (sub_1CA94D7F8() & 1) != 0))
            {
              v42 = OBJC_IVAR___WFConditionalAction_tableTemplate;
              OUTLINED_FUNCTION_14_17();
              swift_beginAccess();
              v77 = *&v2[v42];
              sub_1CA94D798();
              v43 = sub_1CA94C368();

              v5 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

              return v5;
            }
          }

          return 0;
        }
      }

      v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E0, &unk_1CA989F70));
      v18 = v17 + *((*MEMORY[0x1E69E7D40] & *v17) + 0x60);
      v19 = MEMORY[0x1E69E7CC0];
      *v18 = 1;
      *(v18 + 1) = v19;
      v18[16] = 0;
      v76.receiver = v17;
      v76.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E8, &qword_1CA987A50);
      return objc_msgSendSuper2(&v76, sel_init);
    }
  }

  v9 = &v2[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v10 = *(v9 + 1);
  if (*(v10 + 16))
  {
    v11 = *v9;
    v12 = v9[16];
    v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E0, &unk_1CA989F70));
    v14 = v13 + *((*MEMORY[0x1E69E7D40] & *v13) + 0x60);
    *v14 = v11;
    *(v14 + 1) = v10;
    v14[16] = v12;
    sub_1CA94C218();
    v75.receiver = v13;
    v75.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E8, &qword_1CA987A50);
    return objc_msgSendSuper2(&v75, sel_init);
  }

  return 0;
}

uint64_t sub_1CA43CF54()
{
  if ([v0 mode])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = v2[16];
  sub_1CA94C218();
  v6 = OUTLINED_FUNCTION_52_0();
  v1 = sub_1CA438070(v6, v7);

  return v1;
}

id sub_1CA43D010(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  v8 = a1;
  a3();

  sub_1CA25B3D0(0, a4, a5);
  v9 = sub_1CA94C648();

  return v9;
}

uint64_t sub_1CA43D094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFConditionalAction();
  objc_msgSendSuper2(&v2, sel_visibleParametersUpdated);
  return sub_1CA43D2A0();
}

uint64_t sub_1CA43D114(uint64_t a1)
{
  result = sub_1CA25B410(a1);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_20;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCAA22D0](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeDelegate_];
    }
  }

  v8 = *(v1 + OBJC_IVAR___WFConditionalAction_observedVariables);
  result = sub_1CA25B410(v8);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (result < 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_1CA94C218();
  for (j = 0; j != v9; ++j)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCAA22D0](j, v8);
    }

    else
    {
      v11 = *(v8 + 8 * j + 32);
    }

    v12 = v11;
    [v11 addDelegate_];
  }
}

uint64_t sub_1CA43D258(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___WFConditionalAction_observedVariables);
  *(v1 + OBJC_IVAR___WFConditionalAction_observedVariables) = a1;
  sub_1CA43D114(v2);
}

uint64_t sub_1CA43D2A0()
{
  sub_1CA43A750(&v10);
  v0 = v11;
  if (v11 && (v2 = v14, v1 = v15, v4 = v12, v3 = v13, v5 = v10, v6 = v15, sub_1CA43EFAC(v5, v0, v4, v3, v2, v1), v1))
  {
    v7 = [v6 containedVariables];

    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v8 = sub_1CA94C658();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return sub_1CA43D258(v8);
}

uint64_t sub_1CA43D38C()
{
  v1 = 0xE000000000000000;
  v2 = sub_1CA43FB24(v0);
  if (v3)
  {
    v1 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1CCAA1300](v2, v1);

  MEMORY[0x1CCAA1300](0x68747572742DLL, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CA43D470(char a1, void *a2)
{
  v4 = v2;
  if ((a1 & 1) == 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  OUTLINED_FUNCTION_64_5();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CA9813B0;
  v3 = sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  v12[3] = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v12[0] = sub_1CA94CFA8();
  result = sub_1CA469348(v12);
  if (result)
  {
    v9 = result;
    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    *(v7 + 32) = v9;
    v10 = sub_1CA46934C();
LABEL_5:
    sub_1CA43D38C();
    sub_1CA94C368();
    OUTLINED_FUNCTION_39_6();

    [a2 setContent:v10 forVariableWithName:v3];

    v11 = OBJC_IVAR___WFConditionalAction_truthForTestingOnly;
    result = OUTLINED_FUNCTION_54_4();
    *(v4 + v11) = a1 & 1;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1CA43D5CC(void *a1)
{
  sub_1CA43D38C();
  v2 = sub_1CA94C368();

  v3 = [a1 contentForVariableWithName_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 items];
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  OUTLINED_FUNCTION_5_3();
  v5 = sub_1CA94C658();

  if (!sub_1CA25B410())
  {

    return 0;
  }

  v6 = (v5 & 0xC000000000000001);
  sub_1CA275D70(0, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1CCAA22D0](0, v5);
  }

  else
  {
    v7 = *(v5 + 32);
  }

  OUTLINED_FUNCTION_171();

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    return 0;
  }

  v9 = [v8 number];
  v10 = [v9 BOOLValue];

  return v10;
}

uint64_t sub_1CA43D784()
{
  v1 = OBJC_IVAR___WFConditionalAction_truthForTestingOnly;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CA43D7C4(char a1)
{
  v3 = OBJC_IVAR___WFConditionalAction_truthForTestingOnly;
  result = OUTLINED_FUNCTION_54_4();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CA43D864()
{
  v1[28] = v0;
  sub_1CA94C838();
  v1[29] = sub_1CA94C828();
  v3 = sub_1CA94C7C8();
  v1[30] = v3;
  v1[31] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA43D8FC, v3, v2);
}

uint64_t sub_1CA43D8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char **a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  v17 = &selRef_temporaryDirectoryURL;
  v18 = [*(v14 + 224) variableSource];
  *(v14 + 256) = v18;
  if (!v18)
  {
    v35 = *(v14 + 232);

    goto LABEL_35;
  }

  v19 = [*(v14 + 224) mode];
  v20 = &selRef_contentPredicate;
  if (v19 == 2)
  {
    v37 = *(v14 + 224);
    v36 = *(v14 + 232);

    v38 = [v37 controlFlowTracker];
    [v38 leftScopeOfControlFlowAction_];
    swift_unknownObjectRelease();

    goto LABEL_35;
  }

  if (v19)
  {
    v39 = *(v14 + 232);

LABEL_34:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v21 = [*(v14 + 224) controlFlowTracker];
  *(v14 + 264) = v21;
  if (v21)
  {
    v22 = *(v14 + 224);
    *(v14 + 272) = [objc_allocWithZone(MEMORY[0x1E6996D40]) init];
    sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    v16 = @"Key";
    *(inited + 64) = MEMORY[0x1E69E6158];
    *(inited + 32) = @"Key";
    strcpy((inited + 40), "WFConditions");
    *(inited + 53) = 0;
    *(inited + 54) = -5120;
    _s3__C3KeyVMa_0(0);
    OUTLINED_FUNCTION_2_32();
    sub_1CA43FD98(v24, v25);
    v26 = @"Key";
    sub_1CA94C1E8();
    v27 = sub_1CA2F864C();
    v28 = [objc_allocWithZone(type metadata accessor for WFTableTemplateParameter()) initWithDefinition_];
    *(v14 + 280) = v28;

    v29 = [v22 variableSource];
    v30 = [v22 contentAttributionTracker];
    if (!v30)
    {
LABEL_53:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v30);
    }

    v31 = v30;
    v32 = *(v14 + 224);
    objc_allocWithZone(WFParameterStateProcessingContext);
    *(v14 + 288) = sub_1CA4710A8(v29, v28, 0, 0, v31, 0);
    v33 = [v32 containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    OUTLINED_FUNCTION_5_3();
    *(v14 + 296) = sub_1CA94C658();

    v30 = sub_1CA25B410();
    *(v14 + 304) = v30;
    if (v30)
    {
      if (v30 >= 1)
      {
        *(v14 + 312) = 0;
        v34 = *(v14 + 296);
        if ((v34 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCAA22D0](0);
        }

        else
        {
          v59 = *(v34 + 32);
        }

        OUTLINED_FUNCTION_45_7();
        *(v14 + 320) = v60;
        v61 = *(v14 + 288);
        *(v14 + 16) = v62;
        *(v14 + 56) = v14 + 216;
        v63 = OUTLINED_FUNCTION_6_23();
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
        OUTLINED_FUNCTION_4_30(v64);
        *(v14 + 160) = 1107296256;
        *(v14 + 168) = sub_1CA320A2C;
        *(v14 + 176) = &block_descriptor_11;
        *(v14 + 184) = v63;
        [v33 getContentWithContext:v61 completionHandler:v14 + 152];
        OUTLINED_FUNCTION_24();

        return MEMORY[0x1EEE6DEC8](v30);
      }

      __break(1u);
      goto LABEL_52;
    }

    v42 = *(v14 + 288);
    v41 = *(v14 + 296);
    v20 = *(v14 + 272);
    v17 = *(v14 + 280);
    v43 = *(v14 + 264);
    v15 = *(v14 + 224);
    v44 = *(v14 + 232);

    [v43 enteredScopeOfControlFlowAction:v15 withInput:v20];
  }

  else
  {
    v40 = *(v14 + 232);
  }

  v45 = *(v14 + 224);
  v46 = OUTLINED_FUNCTION_116();
  v48 = sub_1CA33A8A0(v46, v47);
  if (!v48)
  {
LABEL_33:
    OUTLINED_FUNCTION_34_11();
    goto LABEL_34;
  }

  v49 = v48;
  v50 = qword_1EC444E18;
  v51 = *(v48 + qword_1EC444E18);
  if (!sub_1CA25B410())
  {

    goto LABEL_33;
  }

  v52 = *&v49[v50];
  v53 = sub_1CA25B410();
  if (v53)
  {
    v20 = v53;
    a10 = v49;
    v30 = OUTLINED_FUNCTION_57_5(v53);
    if (v20 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_61_5();
    do
    {
      if (v16)
      {
        v54 = MEMORY[0x1CCAA22D0](v15, v52);
      }

      else
      {
        v54 = *(v52 + 8 * v15 + 32);
      }

      v55 = v54;
      [v54 (v50 + 1144)];

      a11 = v17;
      OUTLINED_FUNCTION_42_6();
      if (v78)
      {
        v58 = OUTLINED_FUNCTION_64(v56);
        OUTLINED_FUNCTION_79_4(v58);
        v50 = v17;
      }

      OUTLINED_FUNCTION_17_9();
    }

    while (!v57);
  }

  else
  {
    v55 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  OUTLINED_FUNCTION_41_8(qword_1EC444E10);
  if (v57)
  {
    do
    {
      v76 = v55 == 0;
      if (!v55)
      {
        break;
      }

      v77 = *v75++;
      --v55;
    }

    while ((v77 & 1) != 0);
  }

  else
  {
    do
    {
      v78 = v55-- != 0;
      v76 = v78;
      if (!v78)
      {
        break;
      }

      v79 = *v75++;
    }

    while (v79 != 1);
  }

  OUTLINED_FUNCTION_55_5();
  sub_1CA43D470(v76, v20);
  swift_unknownObjectRelease();

LABEL_35:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA43DE90()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);
  if (v3)
  {
    v6 = sub_1CA43E308;
  }

  else
  {
    v6 = sub_1CA43DFC0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1CA43DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  v20 = v14 + 216;
  v19 = *(v14 + 216);

  v21 = [v19 items];
  if (!v21)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
    sub_1CA94C658();
    v21 = sub_1CA94C648();
  }

  v22 = *(v14 + 320);
  [*(v14 + 272) addItems_];

  v23 = *(v14 + 312) + 1;
  if (v23 != *(v14 + 304))
  {
    *(v14 + 312) = v23;
    v39 = *(v14 + 296);
    if ((v39 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0]();
    }

    else
    {
      v40 = *(v39 + 8 * v23 + 32);
    }

    OUTLINED_FUNCTION_45_7();
    *(v14 + 320) = v41;
    v42 = *(v14 + 288);
    *(v14 + 16) = v43;
    *(v14 + 56) = v20;
    v44 = OUTLINED_FUNCTION_6_23();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_4_30(v45);
    OUTLINED_FUNCTION_19_11(COERCE_DOUBLE(1107296256));
    *(v14 + 168) = v46;
    *(v14 + 176) = &block_descriptor_11;
    *(v14 + 184) = v44;
    [v19 getContentWithContext:v42 completionHandler:v14 + 152];
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DEC8](v33);
  }

  OUTLINED_FUNCTION_78_4();

  [v22 enteredScopeOfControlFlowAction:v14 + 216 withInput:v21];

  v24 = *(v14 + 224);
  v25 = OUTLINED_FUNCTION_3_28();
  v27 = sub_1CA33A8A0(v25, v26);
  if (v27)
  {
    v28 = v27;
    v29 = qword_1EC444E18;
    v30 = *(v27 + qword_1EC444E18);
    if (sub_1CA25B410())
    {
      v31 = *&v28[v29];
      v32 = sub_1CA25B410();
      if (!v32)
      {
        v35 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_26:
        OUTLINED_FUNCTION_41_8(qword_1EC444E10);
        if (v37)
        {
          do
          {
            v49 = v35 == 0;
            if (!v35)
            {
              break;
            }

            v50 = *v48++;
            --v35;
          }

          while ((v50 & 1) != 0);
        }

        else
        {
          do
          {
            v51 = v35-- != 0;
            v49 = v51;
            if (!v51)
            {
              break;
            }

            v52 = *v48++;
          }

          while (v52 != 1);
        }

        OUTLINED_FUNCTION_55_5();
        sub_1CA43D470(v49, v20);
        swift_unknownObjectRelease();

        goto LABEL_38;
      }

      v20 = v32;
      a10 = v28;
      v33 = OUTLINED_FUNCTION_57_5(v32);
      if ((v20 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_61_5();
        do
        {
          if (v18)
          {
            v34 = MEMORY[0x1CCAA22D0](v16, v31);
          }

          else
          {
            v34 = *(v31 + 8 * v16 + 32);
          }

          v35 = v34;
          [v34 (v29 + 1144)];

          a11 = v17;
          OUTLINED_FUNCTION_42_6();
          if (v51)
          {
            v38 = OUTLINED_FUNCTION_64(v36);
            OUTLINED_FUNCTION_79_4(v38);
            v29 = v17;
          }

          OUTLINED_FUNCTION_17_9();
        }

        while (!v37);
        goto LABEL_26;
      }

      __break(1u);
      return MEMORY[0x1EEE6DEC8](v33);
    }
  }

  OUTLINED_FUNCTION_34_11();
  swift_unknownObjectRelease();
LABEL_38:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA43E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  v17 = v14[40];
  v18 = v14[41];
  v19 = v14[36];
  swift_willThrow();

  v20 = v14[39] + 1;
  if (v20 != v14[38])
  {
    v14[39] = v20;
    v37 = v14[37];
    if ((v37 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0]();
    }

    else
    {
      v38 = *(v37 + 8 * v20 + 32);
    }

    OUTLINED_FUNCTION_45_7();
    v14[40] = v39;
    v40 = v14[36];
    v14[2] = v41;
    v14[7] = v14 + 27;
    v42 = OUTLINED_FUNCTION_6_23();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_4_30(v43);
    OUTLINED_FUNCTION_19_11(COERCE_DOUBLE(1107296256));
    v14[21] = v44;
    v14[22] = &block_descriptor_11;
    v14[23] = v42;
    [v18 getContentWithContext:v40 completionHandler:v14 + 19];
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DEC8](v30);
  }

  OUTLINED_FUNCTION_78_4();

  [v18 enteredScopeOfControlFlowAction:v19 withInput:v17];

  v21 = v14[28];
  v22 = OUTLINED_FUNCTION_3_28();
  v24 = sub_1CA33A8A0(v22, v23);
  if (v24)
  {
    v25 = v24;
    v26 = qword_1EC444E18;
    v27 = *(v24 + qword_1EC444E18);
    if (sub_1CA25B410())
    {
      v28 = *&v25[v26];
      v29 = sub_1CA25B410();
      if (!v29)
      {
        v33 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_24:
        OUTLINED_FUNCTION_41_8(qword_1EC444E10);
        if (v35)
        {
          do
          {
            v47 = v33 == 0;
            if (!v33)
            {
              break;
            }

            v48 = *v46++;
            --v33;
          }

          while ((v48 & 1) != 0);
        }

        else
        {
          do
          {
            v49 = v33-- != 0;
            v47 = v49;
            if (!v49)
            {
              break;
            }

            v50 = *v46++;
          }

          while (v50 != 1);
        }

        OUTLINED_FUNCTION_55_5();
        sub_1CA43D470(v47, v19);
        swift_unknownObjectRelease();

        goto LABEL_36;
      }

      v19 = v29;
      a9 = v25;
      v60 = MEMORY[0x1E69E7CC0];
      v30 = sub_1CA2B8FA4(0, v29 & ~(v29 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v31 = v60;
        do
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x1CCAA22D0](0, v28);
          }

          else
          {
            v32 = *(v28 + 32);
          }

          v33 = v32;
          [v32 BOOLValue];

          a10 = v31;
          OUTLINED_FUNCTION_42_6();
          if (v49)
          {
            v36 = OUTLINED_FUNCTION_64(v34);
            sub_1CA2B8FA4(v36, v33, 1);
          }

          OUTLINED_FUNCTION_17_9();
        }

        while (!v35);
        goto LABEL_24;
      }

      __break(1u);
      return MEMORY[0x1EEE6DEC8](v30);
    }
  }

  OUTLINED_FUNCTION_34_11();
  swift_unknownObjectRelease();
LABEL_36:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA43E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA43E738, v5, v4);
}

uint64_t sub_1CA43E738()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1CA43E7F4;
  v8 = v0[4];

  return sub_1CA43D864();
}

uint64_t sub_1CA43E7F4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 48);
  if (v2)
  {
    v10 = sub_1CA948AC8();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v11 = *(v8 + 8);

  return v11();
}

id WFConditionalAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFConditionalAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFConditionalAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall WFConditionalAction.showsAddButton(for:)(WFParameter *a1)
{
  sub_1CA43A750(&v10);
  v1 = v11;
  if (v11)
  {
    v3 = v14;
    v2 = v15;
    v5 = v12;
    v4 = v13;
    v6 = v10;
    sub_1CA60465C();
    v8 = v7;
    sub_1CA43EFAC(v6, v1, v5, v4, v3, v2);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

WFAddButtonParameterStateUpdate_optional __swiftcall WFConditionalAction.parameterStateUpdateForPlusButton(for:)(WFParameter *a1)
{
  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  strcpy((inited + 40), "WFConditions");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  _s3__C3KeyVMa_0(0);
  OUTLINED_FUNCTION_2_32();
  sub_1CA43FD98(v4, v5);
  v6 = @"Key";
  sub_1CA94C1E8();
  v7 = sub_1CA2F864C();
  v8 = [objc_allocWithZone(type metadata accessor for WFTableTemplateParameter()) initWithDefinition_];

  sub_1CA50E2D8(&v49);
  v9 = v50;
  if (v50)
  {
    v10 = v49;
    v11 = v51;
    v12 = v52;
    v13 = v53;
    v14 = v54;
    v15 = (v2 + OBJC_IVAR___WFConditionalAction_tableTemplate);
    OUTLINED_FUNCTION_14_17();
    swift_beginAccess();
    v16 = v15[1];
    v46 = *v15;
    v48 = *(v15 + 16);
    sub_1CA94C218();
    v17 = OUTLINED_FUNCTION_37_8();
    sub_1CA43FEA0(v17, v18, v19, v20, v21, v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = *(v16 + 16);
      sub_1CA2E63D4();
      v16 = v44;
    }

    v24 = *(v16 + 16);
    v23 = *(v16 + 24);
    if (v24 >= v23 >> 1)
    {
      OUTLINED_FUNCTION_64(v23);
      sub_1CA2E63D4();
      v16 = v45;
    }

    *(v16 + 16) = v24 + 1;
    v25 = v16 + 48 * v24;
    *(v25 + 32) = v10;
    *(v25 + 40) = v9;
    *(v25 + 48) = v11 & 1;
    *(v25 + 56) = v12;
    *(v25 + 64) = v13;
    *(v25 + 72) = v14;
    v26 = v48;
    v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E0, &unk_1CA989F70));
    v28 = v27 + *((*MEMORY[0x1E69E7D40] & *v27) + 0x60);
    *v28 = v46;
    *(v28 + 1) = v16;
    v28[16] = v26;
    v47.receiver = v27;
    v47.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E8, &qword_1CA987A50);
    v29 = [(WFParameter *)&v47 init];
    v30 = objc_allocWithZone(WFAddButtonParameterStateUpdate);
    OUTLINED_FUNCTION_3_28();
    v31 = sub_1CA94C368();
    v32 = [v30 initWithParameterKey:v31 parameterState:v29];

    v33 = OUTLINED_FUNCTION_37_8();
    sub_1CA43EFAC(v33, v34, v35, v36, v37, v38);
  }

  else
  {

    v32 = 0;
  }

  v42 = v32;
  result.value._parameterState = v40;
  result.value._parameterKey = v39;
  result.value.super.isa = v42;
  result.is_nil = v41;
  return result;
}

Swift::Void __swiftcall WFConditionalAction.variableDidChange(_:)(WFVariable a1)
{
  sub_1CA43A750(&v2);
  if (v3)
  {
    sub_1CA43EFAC(v2, v3, v4, v5, v6, v7);

    [v1 visibleParametersUpdated];
  }
}

void sub_1CA43EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

char *sub_1CA43F004(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F0B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F0D8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F178(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F1E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_14(a3, result, 56 * a2);
  }

  return result;
}

char *sub_1CA43F264(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F2B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F308(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

uint64_t sub_1CA43F3E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_74_3();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_52(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_13_17();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_13_17();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_1CA43F494()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1CA271BF8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_65_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
  OUTLINED_FUNCTION_77_5();
  v7 = *(*(v10 + 48) + 16 * v5 + 8);

  v8 = *(*(v10 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  OUTLINED_FUNCTION_163();
  sub_1CA94D5A8();
  *v1 = v10;
  return v8;
}

uint64_t sub_1CA43F55C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1CA321184(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_65_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4457C0, &qword_1CA983440);
  OUTLINED_FUNCTION_77_5();
  v8 = *(*(v10 + 56) + 8 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
  sub_1CA4403C0();
  OUTLINED_FUNCTION_163();
  sub_1CA94D5A8();
  *v2 = v10;
  return v8;
}

void sub_1CA43F618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a1;
  v84 = a2;
  sub_1CA94C218();
  sub_1CA94C578();
  OUTLINED_FUNCTION_66_3();
  if ((v6 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_116();
    v4 = sub_1CA592144();
    v45 = v44;

    v3 = v45;
    if ((v45 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v3 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v4 & 0x1000000000000000) != 0)
    {
      v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_116();
      v7 = sub_1CA94D4B8();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_47_8();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v31 = 0;
            v32 = (v27 + 1);
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v30)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  OUTLINED_FUNCTION_52_7();
                  if (!v22 || v33 >= v35)
                  {
                    goto LABEL_140;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v31 * a3;
              if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
              {
                v31 = v36 + (v33 + v34);
                if (!__OFADD__(v36, (v33 + v34)))
                {
                  ++v32;
                  if (--v28)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_140;
            }
          }
        }

        goto LABEL_140;
      }

      goto LABEL_144;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v7)
        {
          v40 = 0;
          while (1)
          {
            v41 = *v7;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_140;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            v43 = v40 * a3;
            if ((v40 * a3) >> 64 == (v40 * a3) >> 63)
            {
              v40 = v43 + (v41 + v42);
              if (!__OFADD__(v43, (v41 + v42)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_140;
          }
        }
      }

      goto LABEL_140;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_47_8();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_52_7();
                if (!v22 || v19 >= v21)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 == (v17 * a3) >> 63)
            {
              v17 = v23 - (v19 + v20);
              if (!__OFSUB__(v23, (v19 + v20)))
              {
                ++v18;
                if (--v14)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_140:

      return;
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v46 = HIBYTE(v3) & 0xF;
  v83 = v4;
  v84 = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v4 != 43)
  {
    if (v4 != 45)
    {
      if (v46)
      {
        OUTLINED_FUNCTION_12_17();
        if (v72 ^ v73 | v71)
        {
          v76 = 65;
        }

        if (!(v72 ^ v73 | v71))
        {
          v77 = 58;
        }

        v78 = &v83;
        while (1)
        {
          v79 = *v78;
          if (v79 < 0x30 || v79 >= v77)
          {
            if (v79 < 0x41 || v79 >= v76)
            {
              OUTLINED_FUNCTION_52_7();
              if (!v22 || v79 >= v81)
              {
                goto LABEL_140;
              }

              v80 = -87;
            }

            else
            {
              v80 = -55;
            }
          }

          else
          {
            v80 = -48;
          }

          v82 = v75 * a3;
          if ((v75 * a3) >> 64 == (v75 * a3) >> 63)
          {
            v75 = v82 + (v79 + v80);
            if (!__OFADD__(v82, (v79 + v80)))
            {
              v78 = (v78 + 1);
              if (--v74)
              {
                continue;
              }
            }
          }

          goto LABEL_140;
        }
      }

      goto LABEL_140;
    }

    if (v46)
    {
      if (v46 != 1)
      {
        OUTLINED_FUNCTION_12_17();
        if (v48 ^ v49 | v47)
        {
          v52 = 65;
        }

        if (!(v48 ^ v49 | v47))
        {
          v53 = 58;
        }

        v54 = &v83 + 1;
        while (1)
        {
          v55 = *v54;
          if (v55 < 0x30 || v55 >= v53)
          {
            if (v55 < 0x41 || v55 >= v52)
            {
              OUTLINED_FUNCTION_52_7();
              if (!v22 || v55 >= v57)
              {
                goto LABEL_140;
              }

              v56 = -87;
            }

            else
            {
              v56 = -55;
            }
          }

          else
          {
            v56 = -48;
          }

          v58 = v51 * a3;
          if ((v51 * a3) >> 64 == (v51 * a3) >> 63)
          {
            v51 = v58 - (v55 + v56);
            if (!__OFSUB__(v58, (v55 + v56)))
            {
              ++v54;
              if (--v50)
              {
                continue;
              }
            }
          }

          goto LABEL_140;
        }
      }

      goto LABEL_140;
    }

    goto LABEL_143;
  }

  if (v46)
  {
    if (v46 != 1)
    {
      OUTLINED_FUNCTION_12_17();
      if (v60 ^ v61 | v59)
      {
        v64 = 65;
      }

      if (!(v60 ^ v61 | v59))
      {
        v65 = 58;
      }

      v66 = &v83 + 1;
      while (1)
      {
        v67 = *v66;
        if (v67 < 0x30 || v67 >= v65)
        {
          if (v67 < 0x41 || v67 >= v64)
          {
            OUTLINED_FUNCTION_52_7();
            if (!v22 || v67 >= v69)
            {
              goto LABEL_140;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }
        }

        else
        {
          v68 = -48;
        }

        v70 = v63 * a3;
        if ((v63 * a3) >> 64 == (v63 * a3) >> 63)
        {
          v63 = v70 + (v67 + v68);
          if (!__OFADD__(v70, (v67 + v68)))
          {
            ++v66;
            if (--v62)
            {
              continue;
            }
          }
        }

        goto LABEL_140;
      }
    }

    goto LABEL_140;
  }

LABEL_145:
  __break(1u);
}

uint64_t sub_1CA43FB24(void *a1)
{
  v1 = [a1 groupingIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

void sub_1CA43FB88(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B2A4(v3);
    v3 = v11;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 48 * v4;
    v6 = *(v5 - 16);
    v7 = *(v5 - 8);
    v8 = *v5;
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 40) = v10;
    *(v3 + 16) = v4 - 1;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA43FC10()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B234(v1);
    v1 = v7;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = v1 + 16 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA43FC6C(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B2EC(v3);
    v3 = v7;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = _s10ScopeStackV5EntryOMa(0);
    sub_1CA44035C(v3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1);
    *(v3 + 16) = v5;
    *v1 = v3;

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA43FD60(void *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return sub_1CA437F64(a1, v4) & 1;
}

uint64_t sub_1CA43FD98(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA43FDDC()
{
  result = qword_1EC446050;
  if (!qword_1EC446050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446050);
  }

  return result;
}

uint64_t sub_1CA43FE30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4456C0, &qword_1CA987A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA43FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v6 = a6;
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

uint64_t sub_1CA43FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *a4;
  OUTLINED_FUNCTION_187();
  result = sub_1CA60D430();
  *a4 = v7;
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_1CA25B374(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA43FFE8()
{
  result = qword_1EC4456F0;
  if (!qword_1EC4456F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4456F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFConditionalAction.ParameterKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFConditionalAction.ParameterKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA4402A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA3601B4;

  return sub_1CA43E69C(v2, v3, v4);
}

uint64_t sub_1CA44035C(uint64_t a1, uint64_t a2)
{
  v4 = _s10ScopeStackV5EntryOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA4403C0()
{
  result = qword_1EC4457D0;
  if (!qword_1EC4457D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4457D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_79_4(uint64_t a1)
{

  return sub_1CA2B8FA4(a1, v1, 1);
}

id sub_1CA4404AC(uint64_t a1, uint64_t a2)
{
  Value = type metadata accessor for WFSpotlightQueryValue();
  v5 = objc_allocWithZone(Value);
  v6 = &v5[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = Value;
  sub_1CA94C218();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1CA44051C(void *a1)
{
  v1 = [a1 stringValue];
  sub_1CA94C3A8();

  v2 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryValue());
  OUTLINED_FUNCTION_4_31(v2, OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1CA440598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 4)
  {
    v11 = 34;
    v12 = 0xE100000000000000;
    MEMORY[0x1CCAA1300](a1, a2);
    MEMORY[0x1CCAA1300](6578978, 0xE300000000000000);
    v5 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryValue());
    OUTLINED_FUNCTION_4_31(v5, OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue);
    return objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    Value = type metadata accessor for WFSpotlightQueryValue();
    v8 = objc_allocWithZone(Value);
    v9 = &v8[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
    *v9 = a1;
    *(v9 + 1) = a2;
    v13.receiver = v8;
    v13.super_class = Value;
    sub_1CA94C218();
    return objc_msgSendSuper2(&v13, sel_init);
  }
}

id sub_1CA44066C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445838, &qword_1CA987D28);
  v4 = sub_1CA948CB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CA97EDF0;
  v37 = v8;
  v9 = v8 + v7;
  v10 = *(v5 + 16);
  v5 += 16;
  v10(v9, a1, v4);
  v40 = v9;
  v41 = v6;
  v43 = v4;
  v39 = v10;
  v10(v9 + v6, a2, v4);
  v47 = MEMORY[0x1E69E7CC0];
  sub_1CA271524();
  v12 = 0;
  v13 = v47;
  v38 = (v5 - 8);
  v42 = v5;
  v14 = *(v5 + 48);
  do
  {
    v15 = v12;
    MEMORY[0x1EEE9AC00](v11);
    v17 = v43;
    v39(&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v16 * v41, v43);
    OUTLINED_FUNCTION_8_14();
    v45 = v18;
    v46 = 0xEA0000000000286FLL;
    v19 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v20 = sub_1CA948C58();
    v21 = [v19 stringFromDate_];

    v22 = sub_1CA94C3A8();
    v24 = v23;

    MEMORY[0x1CCAA1300](v22, v24);

    v25 = OUTLINED_FUNCTION_6_24();
    MEMORY[0x1CCAA1300](v25);
    v26 = v45;
    v27 = v46;
    v11 = (*v38)(&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v47 = v13;
    v28 = *(v13 + 16);
    if (v28 >= *(v13 + 24) >> 1)
    {
      sub_1CA271524();
      v13 = v47;
    }

    *(v13 + 16) = v28 + 1;
    v29 = v13 + 16 * v28;
    *(v29 + 32) = v26;
    *(v29 + 40) = v27;
    v12 = 1;
  }

  while ((v15 & 1) == 0);
  swift_setDeallocating();
  sub_1CA32E26C();
  v45 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v30 = sub_1CA94C308();
  v32 = v31;

  Value = type metadata accessor for WFSpotlightQueryValue();
  v34 = objc_allocWithZone(Value);
  v35 = &v34[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
  *v35 = v30;
  v35[1] = v32;
  v44.receiver = v34;
  v44.super_class = Value;
  return objc_msgSendSuper2(&v44, sel_init);
}

id sub_1CA4409B4()
{
  OUTLINED_FUNCTION_8_14();
  v11 = v0;
  v12 = 0xEA0000000000286FLL;
  v1 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v2 = sub_1CA948C58();
  v3 = [v1 stringFromDate_];

  v4 = sub_1CA94C3A8();
  v6 = v5;

  MEMORY[0x1CCAA1300](v4, v6);

  v7 = OUTLINED_FUNCTION_6_24();
  MEMORY[0x1CCAA1300](v7);
  v8 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryValue());
  OUTLINED_FUNCTION_4_31(v8, OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue);
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_1CA440AA8(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1CA440AB8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA440AA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1CA440AEC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_operator] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFSpotlightQueryBuilder();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1CA440B68(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions;
  *&v2[OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_operator] = a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for WFSpotlightQueryBuilder();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1CA440C38(void *a1)
{
  v2 = OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions;
  swift_beginAccess();
  v3 = a1;
  MEMORY[0x1CCAA1490]();
  sub_1CA69B4CC(*((*(v5 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1CA94C6E8();
  swift_endAccess();

  return v5;
}

void sub_1CA440D44()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_operator);
  v2 = OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = sub_1CA25B410(v3);
  if (!v4)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    sub_1CA26E4D4();
    sub_1CA94C308();

    return;
  }

  v5 = v4;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1CA94C218();
  sub_1CA271524();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCAA22D0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x78))();
      MEMORY[0x1CCAA1300](v9);

      v10 = OUTLINED_FUNCTION_6_24();
      MEMORY[0x1CCAA1300](v10);

      v11 = *(v13 + 16);
      if (v11 >= *(v13 + 24) >> 1)
      {
        sub_1CA271524();
      }

      ++v6;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = 40;
      *(v12 + 40) = 0xE100000000000000;
    }

    while (v5 != v6);

    goto LABEL_11;
  }

  __break(1u);
}

id WFSpotlightQueryBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1CA4411A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator] = a3;
  v5 = &v3[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for WFSpotlightQueryCondition();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1CA44123C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = &v4[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key];
  *v6 = a1;
  *(v6 + 1) = a2;
  *&v4[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator] = a3;
  v7 = *&a4[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue + 8];
  v8 = &v4[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue];
  *v8 = *&a4[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
  *(v8 + 1) = v7;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for WFSpotlightQueryCondition();
  sub_1CA94C218();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id sub_1CA4412F0(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryKeywordCondition()) + OBJC_IVAR____TtC11WorkflowKitP33_CDB753D3D56C005953F224F5AE54023732WFSpotlightQueryKeywordCondition_term;
  *v4 = a1;
  v4[1] = a2;
  sub_1CA94C218();
  return sub_1CA4411A4(0, 0xE000000000000000, 4);
}

id sub_1CA441370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1CA94C3A8();
  v6 = a4(v5);

  return v6;
}

uint64_t sub_1CA4413C4()
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator);
  if (!(!v1 & v0))
  {
    v8 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator);
    v9 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator);
    switch(v4)
    {
      case 0:
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        v10 = 2112544;
        goto LABEL_28;
      case 1:
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        v33 = 15392;
        goto LABEL_32;
      case 2:
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        v10 = 2113056;
LABEL_28:
        v31 = 0xE300000000000000;
        goto LABEL_37;
      case 3:
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        v10 = 540884512;
        goto LABEL_36;
      case 4:
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        v10 = 540884256;
        goto LABEL_36;
      case 5:
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        v33 = 8480;
LABEL_32:
        v10 = v33 | 0x203D0000u;
LABEL_36:
        v31 = 0xE400000000000000;
LABEL_37:
        MEMORY[0x1CCAA1300](v10, v31);
        v7 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
        v30 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue + 8);
        goto LABEL_38;
      case 6:
      case 7:
        goto LABEL_46;
      case 8:
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        OUTLINED_FUNCTION_5_24();
        OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
        v7 = 1684219690;
        goto LABEL_34;
      case 9:
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
        v7 = 6578983;
        v30 = 0xE300000000000000;
        goto LABEL_38;
      default:
        goto LABEL_47;
    }
  }

  v5 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator);
  v6 = v4 - 999;
  switch(v6)
  {
    case 0:
      OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
      OUTLINED_FUNCTION_9_20();
      OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
      v7 = 0x647763272ALL;
      goto LABEL_26;
    case 1:
      OUTLINED_FUNCTION_3_29();
      sub_1CA94D408();

      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
      v32 = OUTLINED_FUNCTION_7_20();
      MEMORY[0x1CCAA1300](v32);
      OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
      v7 = OUTLINED_FUNCTION_6_24();
      goto LABEL_38;
    case 2:
      OUTLINED_FUNCTION_3_29();
      sub_1CA94D408();

      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
      MEMORY[0x1CCAA1300](0x742E656D6974242CLL, 0xEE002D287961646FLL);
      OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
      v7 = 0x2E656D6974242C29;
      v30 = 0xEE00297961646F74;
      goto LABEL_38;
    case 3:
      OUTLINED_FUNCTION_3_29();
      sub_1CA94D408();

      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
      v7 = OUTLINED_FUNCTION_7_20();
      goto LABEL_38;
    case 4:
      v12 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue + 8);
      v61 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
      v62 = v12;
      sub_1CA27BAF0();
      sub_1CA94C218();
      v13 = sub_1CA94D248();

      v14 = 0;
      v15 = *(v13 + 16);
      v16 = (v13 + 56);
      v17 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v15 != v14)
        {
          if (v14 < *(v13 + 16))
          {
            v18 = *(v16 - 1);
            v19 = *v16;
            v21 = *(v16 - 3);
            v20 = *(v16 - 2);
            sub_1CA94C218();
            v22 = MEMORY[0x1CCAA1280](v21, v20, v18, v19);
            v24 = v23;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = v17[2];
              sub_1CA26DADC();
              v17 = v28;
            }

            v25 = v17[2];
            if (v25 >= v17[3] >> 1)
            {
              sub_1CA26DADC();
              v17 = v29;
            }

            v17[2] = v25 + 1;
            v26 = &v17[2 * v25];
            v26[4] = v22;
            v26[5] = v24;
            v16 += 4;
            ++v14;
            continue;
          }

          __break(1u);
          goto LABEL_44;
        }

        break;
      }

      v36 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryBuilder());
      v37 = sub_1CA440AEC(0);
      if (!v17[2])
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v38 = v37;
      v39 = v3 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key;
      v40 = *(v3 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
      v41 = *(v39 + 8);
      v43 = v17[4];
      v42 = v17[5];
      Value = type metadata accessor for WFSpotlightQueryValue();
      v45 = objc_allocWithZone(Value);
      v46 = &v45[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
      *v46 = v43;
      *(v46 + 1) = v42;
      v60.receiver = v45;
      v60.super_class = Value;
      sub_1CA94C218();
      sub_1CA94C218();
      v47 = objc_msgSendSuper2(&v60, sel_init);
      Condition = type metadata accessor for WFSpotlightQueryCondition();
      v49 = objc_allocWithZone(Condition);
      sub_1CA94C218();
      v50 = sub_1CA44123C(v40, v41, 3, v47);
      sub_1CA440C38(v50);

      if (v17[2] < 2uLL)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v52 = v17[6];
      v51 = v17[7];
      sub_1CA94C218();

      v53 = objc_allocWithZone(Value);
      v54 = &v53[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
      *v54 = v52;
      *(v54 + 1) = v51;
      v59.receiver = v53;
      v59.super_class = Value;
      v55 = objc_msgSendSuper2(&v59, sel_init);
      v56 = objc_allocWithZone(Condition);
      v57 = sub_1CA44123C(v40, v41, 1, v55);
      sub_1CA440C38(v57);

      sub_1CA440D44();
      v34 = v58;

      return v34;
    default:
      if (v6 == 99)
      {
        OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
        OUTLINED_FUNCTION_5_24();
        OUTLINED_FUNCTION_2_33(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
        v7 = 1685545767;
LABEL_34:
        v30 = 0xE400000000000000;
      }

      else
      {
        if (v6 == 101)
        {
          OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
          v11 = 8480;
        }

        else
        {
          if (v6 != 100)
          {
LABEL_46:
            sub_1CA94D5F8();
            __break(1u);
LABEL_47:
            JUMPOUT(0);
          }

          OUTLINED_FUNCTION_1_30(OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
          v11 = 15648;
        }

        v7 = v11 & 0xFFFF00000000FFFFLL | 0x2A203D0000;
LABEL_26:
        v30 = 0xE500000000000000;
      }

LABEL_38:
      MEMORY[0x1CCAA1300](v7, v30);
      return v61;
  }
}

uint64_t sub_1CA441B10()
{
  MEMORY[0x1CCAA1300](*(v0 + OBJC_IVAR____TtC11WorkflowKitP33_CDB753D3D56C005953F224F5AE54023732WFSpotlightQueryKeywordCondition_term), *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_CDB753D3D56C005953F224F5AE54023732WFSpotlightQueryKeywordCondition_term + 8));
  MEMORY[0x1CCAA1300](0x74647763272ALL, 0xE600000000000000);
  return 658319914;
}

id sub_1CA441CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for WFSpotlightQueryBuilder.MeasurementFormatter(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA441DF0()
{
  result = qword_1EC445828;
  if (!qword_1EC445828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445828);
  }

  return result;
}

uint64_t sub_1CA441E44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445830, &qword_1CA987D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0x6465657073;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_opt_self() kilometersPerHour];
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  v1 = objc_opt_self();
  *(inited + 72) = [v1 seconds];
  strcpy((inited + 80), "exposuretime");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [v1 seconds];
  *(inited + 104) = 0x6E656C6C61636F66;
  *(inited + 112) = 0xEB00000000687467;
  *(inited + 120) = [objc_opt_self() millimeters];
  sub_1CA441FBC();
  result = sub_1CA94C1E8();
  qword_1EC4457E8 = result;
  return result;
}

unint64_t sub_1CA441FBC()
{
  result = qword_1EC444B50;
  if (!qword_1EC444B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC444B50);
  }

  return result;
}

void *sub_1CA442000(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445858, &qword_1CA987ED0);
  sub_1CA4437F0(&unk_1EC4420E0, type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey);
  v2[14] = sub_1CA94C1E8();
  v2[15] = a1;
  v2[16] = a2;
  return v2;
}

void *sub_1CA4420B8(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445840, &qword_1CA987E90);
  sub_1CA4437F0(&qword_1EC442000, type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey);
  v2[14] = sub_1CA94C1E8();
  v2[15] = a1;
  v2[16] = a2;
  return v2;
}

uint64_t sub_1CA442170(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1CA94D7F8() & 1) != 0)
  {
    v3 = *(type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0) + 20);

    JUMPOUT(0x1CCA9FFB0);
  }

  return 0;
}

uint64_t sub_1CA4421EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C458();
  v3 = *(type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0) + 20);
  sub_1CA94B168();
  OUTLINED_FUNCTION_0_36();
  sub_1CA4437F0(v4, v5);
  return sub_1CA94C298();
}

uint64_t sub_1CA44226C()
{
  sub_1CA94D918();
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C458();
  v3 = *(type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0) + 20);
  sub_1CA94B168();
  sub_1CA4437F0(&qword_1EC443B20, MEMORY[0x1E69DB2F0]);
  sub_1CA94C298();
  return sub_1CA94D968();
}

uint64_t sub_1CA442320(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  v4 = *v2;
  v5 = v2[1];
  sub_1CA94C458();
  v6 = *(a2 + 20);
  sub_1CA94B168();
  OUTLINED_FUNCTION_0_36();
  sub_1CA4437F0(v7, v8);
  sub_1CA94C298();
  return sub_1CA94D968();
}

uint64_t sub_1CA4423B8()
{
  sub_1CA94A138();
  sub_1CA94A118();
  type metadata accessor for DatabaseContainerDefinitionProvider();
  v0 = swift_allocObject();

  v2 = sub_1CA443838(v1, v0);

  qword_1EC442010 = v2;
  return result;
}

uint64_t static DatabaseContainerDefinitionProvider.shared.getter()
{
  if (qword_1EC442008 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CA44247C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1CA94B508();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v11 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  v3[14] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v13 = sub_1CA949F78();
  v3[16] = v13;
  v14 = *(v13 - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA442684, 0, 0);
}

uint64_t sub_1CA442684()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[3];
  v4 = *MEMORY[0x1E69E10F0];
  sub_1CA949C58();
  sub_1CA4439BC(v3, v2);
  v5 = sub_1CA949F68();
  v6 = sub_1CA94CBF8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v9 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  if (v7)
  {
    v23 = v0[18];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = *v11;
    v15 = v11[1];
    sub_1CA94C218();
    sub_1CA4432A4(v11);
    v16 = sub_1CA26B54C(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1CA256000, v5, v6, "Fetching definition for container: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1CCAA4BF0](v13, -1, -1);
    MEMORY[0x1CCAA4BF0](v12, -1, -1);

    (*(v8 + 8))(v23, v10);
  }

  else
  {

    sub_1CA4432A4(v11);
    (*(v8 + 8))(v9, v10);
  }

  v17 = v0[4];
  v18 = v17[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v20 = *(MEMORY[0x1E69DAAF8] + 4);
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_1CA44288C;

  return MEMORY[0x1EEE4AAA0](v18, v19);
}

uint64_t sub_1CA44288C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v1;
  v2[20] = v6;
  v2[21] = v0;

  if (v0)
  {
    v7 = v2[18];
    v8 = v2[15];
    v10 = v2[12];
    v9 = v2[13];
    v12 = v2[10];
    v11 = v2[11];
    v13 = v2[7];

    OUTLINED_FUNCTION_5();

    return v14();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA442A24, 0, 0);
  }
}

uint64_t sub_1CA442A24()
{
  v53 = v0[20];
  v54 = v0[21];
  v1 = v0[10];
  v2 = v0[11];
  v50 = v0[9];
  v51 = v0[8];
  v52 = v0[13];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[3];
  v48 = *(v0[14] + 20);
  sub_1CA94B4F8();
  swift_getKeyPath();
  v7 = swift_allocObject();
  v49 = v6;
  v8 = *v6;
  v9 = *(v6 + 1);
  v47 = v8;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *v4 = v7;
  (*(v3 + 104))(v4, *MEMORY[0x1E69DA9C0], v5);
  sub_1CA4437F0(&unk_1EC441CD8, MEMORY[0x1E69DB418]);
  sub_1CA443A20();
  v46 = v9;
  sub_1CA94C218();
  sub_1CA94A838();

  (*(v3 + 8))(v4, v5);
  v10 = *(v50 + 8);
  v10(v1, v51);
  v11 = sub_1CA948E58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  sub_1CA948D98();
  sub_1CA94A808();
  if (v54)
  {
    v15 = v0[20];
    v16 = v0[11];
    v17 = v0[8];

    (*(v12 + 8))(v14, v11);
    v10(v16, v17);

LABEL_5:
    v30 = v0[18];
    v31 = v0[15];
    v33 = v0[12];
    v32 = v0[13];
    v35 = v0[10];
    v34 = v0[11];
    v36 = v0[7];

    OUTLINED_FUNCTION_5();
    goto LABEL_6;
  }

  v18 = v0[12];
  v19 = v0[13];
  v20 = v0[11];
  v21 = v0[8];
  (*(v12 + 8))(v14, v11);
  v10(v20, v21);

  sub_1CA407B48(v19, v18);
  v22 = sub_1CA94B1C8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
  {
    v23 = v0[20];
    v24 = v0[13];
    sub_1CA2FF9AC(v0[12]);
    type metadata accessor for DatabaseContainerDefinitionProvider.Error(0);
    sub_1CA4437F0(&qword_1EC445848, type metadata accessor for DatabaseContainerDefinitionProvider.Error);
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445850, &qword_1CA987EC8) + 48);
    *v26 = v47;
    *(v26 + 1) = v46;
    v28 = sub_1CA94B168();
    OUTLINED_FUNCTION_0_1(v28);
    (*(v29 + 16))(&v26[v27], &v49[v48]);
    swift_willThrow();
    sub_1CA94C218();

    sub_1CA2FF9AC(v24);
    goto LABEL_5;
  }

  v39 = v0[20];
  v40 = v0[18];
  v41 = v0[15];
  v42 = v0[12];
  v44 = v0[10];
  v43 = v0[11];
  v55 = v0[7];
  v45 = v0[2];
  sub_1CA2FF9AC(v0[13]);

  (*(*(v22 - 8) + 32))(v45, v42, v22);

  OUTLINED_FUNCTION_5();
LABEL_6:

  return v37();
}

uint64_t sub_1CA442EE0()
{
  OUTLINED_FUNCTION_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  v1[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA442F78, v0, 0);
}

uint64_t sub_1CA442F78()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v0[7] + 20);
  v7 = sub_1CA94B168();
  OUTLINED_FUNCTION_0_1(v7);
  (*(v8 + 16))(&v1[v6], v2);
  *v1 = v5;
  *(v1 + 1) = v4;
  v9 = *(v3 + 112);
  sub_1CA94C218();
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1CA44308C;
  v11 = v0[8];
  v12 = v0[2];

  return (sub_1CA2C8194)(v12, v11);
}

uint64_t sub_1CA44308C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *(v2 + 72);
  *v4 = *v1;
  *(v3 + 80) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1CA44321C;
  }

  else
  {
    v7 = sub_1CA4431B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1CA4431B4()
{
  OUTLINED_FUNCTION_0();
  sub_1CA4432A4(*(v0 + 64));

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA44321C()
{
  OUTLINED_FUNCTION_0();
  sub_1CA4432A4(*(v0 + 64));

  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_1CA4432A4(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DatabaseContainerDefinitionProvider.deinit()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DatabaseContainerDefinitionProvider.__deallocating_deinit()
{
  DatabaseContainerDefinitionProvider.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1CA443384()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2F0828;

  return sub_1CA442EE0();
}

uint64_t dispatch thunk of ContainerDefinitionProvider.container(with:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 8);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4_4(v14);
  *v15 = v16;
  v15[1] = sub_1CA2F0828;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DatabaseContainerDefinitionProvider.container(with:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 112);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4_4(v11);
  *v12 = v13;
  v12[1] = sub_1CA2F1548;

  return v15(a1, a2, a3, a4);
}

uint64_t sub_1CA44372C()
{
  result = sub_1CA94B168();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA4437F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA443838(uint64_t a1, uint64_t a2)
{
  v8[3] = sub_1CA94A138();
  v8[4] = MEMORY[0x1E69DA938];
  v8[0] = a1;
  swift_defaultActor_initialize();
  sub_1CA2C9578(v8, a2 + 120);
  sub_1CA2C9578(v8, v7);
  v4 = swift_allocObject();
  sub_1CA27F268(v7, v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B30, &qword_1CA981F10);
  swift_allocObject();
  v5 = sub_1CA4420B8(&unk_1CA987E80, v4);
  __swift_destroy_boxed_opaque_existential_0(v8);
  *(a2 + 112) = v5;
  return a2;
}

uint64_t sub_1CA443918(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_4(v5);
  *v6 = v7;
  v6[1] = sub_1CA2F1548;

  return sub_1CA44247C(a1, a2, v2 + 16);
}

uint64_t sub_1CA4439BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA443A20()
{
  result = qword_1EDB9F7C0;
  if (!qword_1EDB9F7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC444CC0, &unk_1CA9867F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F7C0);
  }

  return result;
}

uint64_t sub_1CA443AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445850, &qword_1CA987EC8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA443AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445850, &qword_1CA987EC8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1CA443B5C(uint64_t a1)
{
  sub_1CA443C30();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1CA94B168();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_1CA443C30()
{
  if (!qword_1EC445870)
  {
    sub_1CA94B168();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC445870);
    }
  }
}

uint64_t sub_1CA443C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a1;
  v6[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA443CC0, 0, 0);
}

uint64_t sub_1CA443CC0()
{
  v0[2] = v0[6];
  v1 = v0[8];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  if (swift_dynamicCast())
  {
    v0[10] = v0[3];
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1CA443E28;
    v4 = v0[7];
    v3 = v0[8];

    return WFParameterState.process(context:)(v4, v3);
  }

  else
  {
    v6 = v0[6];
    sub_1CA2A741C();
    swift_allocError();
    *v7 = v6;
    *(v7 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_5();
    v9 = v8;
    swift_unknownObjectRetain();

    return v9();
  }
}

uint64_t sub_1CA443E28()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 88);
  v8 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v6 = sub_1CA444094;
  }

  else
  {
    v6 = sub_1CA443F34;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA443F34()
{
  v1 = v0[12];
  if (!v1)
  {
    v7 = v0[10];
    swift_unknownObjectRelease();
    v6 = 0;
    goto LABEL_5;
  }

  v2 = v0[9];
  v0[4] = v1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550);
  v3 = swift_dynamicCast();
  v4 = v0[10];
  if (v3)
  {
    v5 = v0[10];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v6 = v0[5];
LABEL_5:
    v8 = v0[1];

    return v8(v6);
  }

  sub_1CA2A741C();
  swift_allocError();
  v11 = v10;
  *(v10 + 24) = swift_getObjectType();
  *v11 = v1;
  *(v11 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v12();
}

uint64_t sub_1CA444094()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t RowTemplateParameterOptions.variablesDisabled.getter()
{
  sub_1CA43FE30(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    LOBYTE(v1) = (*(v2 + 72))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1CA444194(v4);
  }

  return v1 & 1;
}