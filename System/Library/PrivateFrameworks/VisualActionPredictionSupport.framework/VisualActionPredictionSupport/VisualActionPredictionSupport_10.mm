uint64_t sub_1D9F15240(void *a1, unint64_t a2, char a3)
{
  v84 = a1;
  v6 = type metadata accessor for DateTimeSchedule();
  v83 = *(v6 - 8);
  v7 = *(v83 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67 - v10;
  v12 = sub_1D9F2AC4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v67 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74430, &unk_1D9F386F0);
  v21 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v67 - v22;
  v75 = type metadata accessor for CalendarEvent();
  v23 = *(v75 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v26 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(*v3 + 16);
  v28 = *(*v3 + 24);
  v77 = v3;
  v76 = v23;
  if (v28 > v27 && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  if ((a3 & 1) == 0)
  {
    if (v28 <= v27)
    {
      sub_1D9F1A14C(v27 + 1);
      goto LABEL_11;
    }

    sub_1D9F17F58();
LABEL_7:
    v29 = v84;
    goto LABEL_8;
  }

  sub_1D9F122E4(v27 + 1);
LABEL_11:
  v35 = *v3;
  v36 = *(*v3 + 40);
  sub_1D9F2BAFC();
  v37 = v84;
  CalendarEvent.hash(into:)();
  v38 = sub_1D9F2BB4C();
  v39 = v35 + 56;
  v87 = v35 + 56;
  v88 = v35;
  v40 = -1 << *(v35 + 32);
  a2 = v38 & ~v40;
  if (((*(v39 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_52;
  }

  v69 = v20;
  v68 = v16;
  v72 = v12;
  v85 = ~v40;
  v41 = v37[1];
  v82 = *v37;
  v71 = (v13 + 48);
  v67 = (v13 + 32);
  v70 = (v13 + 8);
  v86 = *(v23 + 72);
  v29 = v37;
  v80 = v41;
  while (1)
  {
    sub_1D9F1BEE0(*(v88 + 48) + v86 * a2, v26, type metadata accessor for CalendarEvent);
    v42 = v26[1];
    if (v42)
    {
      if (!v41)
      {
        goto LABEL_14;
      }

      v43 = *v26 == v82 && v42 == v41;
      if (!v43 && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v41)
    {
      goto LABEL_14;
    }

    v44 = v26[3];
    v45 = v29[3];
    if (v44)
    {
      if (!v45 || (v26[2] != v29[2] || v44 != v45) && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v45)
    {
      goto LABEL_14;
    }

    v46 = v26[5];
    v47 = v29[5];
    if (v46)
    {
      if (!v47 || (v26[4] != v29[4] || v46 != v47) && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v47)
    {
      goto LABEL_14;
    }

    v48 = *(v75 + 28);
    v49 = *(v74 + 48);
    v50 = v73;
    sub_1D9E51E70(v26 + v48, v73, &qword_1ECB73890, &qword_1D9F38430);
    sub_1D9E51E70(v29 + v48, v50 + v49, &qword_1ECB73890, &qword_1D9F38430);
    v51 = *v71;
    v52 = v72;
    if ((*v71)(v50, 1, v72) == 1)
    {
      break;
    }

    v53 = v69;
    sub_1D9E51E70(v50, v69, &qword_1ECB73890, &qword_1D9F38430);
    if (v51(v50 + v49, 1, v52) == 1)
    {
      (*v70)(v53, v52);
      goto LABEL_41;
    }

    v54 = v68;
    (*v67)(v68, v50 + v49, v52);
    sub_1D9F1C010(&qword_1ECB731C0, MEMORY[0x1E6968FB0]);
    LODWORD(v79) = sub_1D9F2B10C();
    v55 = *v70;
    (*v70)(v54, v52);
    v55(v53, v52);
    result = sub_1D9E51FE8(v50, &qword_1ECB73890, &qword_1D9F38430);
    v41 = v80;
    if (v79)
    {
      goto LABEL_43;
    }

LABEL_14:
    sub_1D9F1BF48(v26, type metadata accessor for CalendarEvent);
    a2 = (a2 + 1) & v85;
    if (((*(v87 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v51(v50 + v49, 1, v52) != 1)
  {
LABEL_41:
    sub_1D9E51FE8(v50, &qword_1ECB74430, &unk_1D9F386F0);
    v41 = v80;
    goto LABEL_14;
  }

  result = sub_1D9E51FE8(v50, &qword_1ECB73890, &qword_1D9F38430);
  v41 = v80;
LABEL_43:
  v56 = *(v75 + 32);
  v37 = *(v29 + v56);
  v79 = *(v26 + v56);
  v57 = v37[2];
  v78 = v79[2];
  if (v78 != v57)
  {
    goto LABEL_14;
  }

  if (v78 && v79 != v37)
  {
    v58 = 0;
    v59 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v60 = v79 + v59;
    v61 = v37 + v59;
    while (v58 < v79[2])
    {
      v62 = *(v83 + 72) * v58;
      result = sub_1D9F1BEE0(&v60[v62], v11, type metadata accessor for DateTimeSchedule);
      if (v58 >= v37[2])
      {
        goto LABEL_54;
      }

      v63 = v11;
      v64 = v81;
      sub_1D9F1BEE0(&v61[v62], v81, type metadata accessor for DateTimeSchedule);
      v65 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v63, v64);
      v66 = v64;
      v11 = v63;
      v41 = v80;
      sub_1D9F1BF48(v66, type metadata accessor for DateTimeSchedule);
      v29 = v84;
      result = sub_1D9F1BF48(v11, type metadata accessor for DateTimeSchedule);
      if ((v65 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v78 == ++v58)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return result;
  }

LABEL_51:
  sub_1D9F1BF48(v26, type metadata accessor for CalendarEvent);
  sub_1D9F2BA5C();
  __break(1u);
LABEL_52:
  v29 = v37;
LABEL_8:
  v30 = *v77;
  *(*v77 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D9F1BFA8(v29, *(v30 + 48) + *(v76 + 72) * a2, type metadata accessor for CalendarEvent);
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    goto LABEL_55;
  }

  *(v30 + 16) = v34;
  return result;
}

uint64_t sub_1D9F15ACC(uint64_t a1, unint64_t a2, char a3)
{
  v139 = a1;
  v6 = type metadata accessor for Contact.Identity.Person(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v129 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Contact.Identity(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v132 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v102 - v13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75858, &qword_1D9F42FE8);
  v14 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v16 = &v102 - v15;
  v130 = type metadata accessor for Contact(0);
  v127 = *(v130 - 1);
  v17 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*v3 + 16);
  v21 = *(*v3 + 24);
  v126 = v3;
  if (v21 <= v20 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D9F125EC(v20 + 1);
    }

    else
    {
      if (v21 > v20)
      {
        sub_1D9F18164();
        goto LABEL_127;
      }

      sub_1D9F1A424(v20 + 1);
    }

    v22 = *v3;
    v23 = *(*v3 + 40);
    sub_1D9F2BAFC();
    v24 = v139;
    Contact.Identity.hash(into:)();
    v25 = v130;
    v26 = *(v24 + v130[5]);
    sub_1D9E4F0BC(v140, v26);
    v27 = *(v24 + v25[6]);
    sub_1D9E4F0BC(v140, v27);
    v28 = *(v24 + v25[7]);
    sub_1D9E4EEB4(v140, v28);
    v120 = *(v24 + v25[8]);
    sub_1D9E4EDA4(v140, v120);
    v29 = *(v24 + v25[9]);
    sub_1D9E4EBD0(v140, v29);
    v30 = sub_1D9F2BB4C();
    v136 = v22 + 56;
    v137 = v22;
    v31 = -1 << *(v22 + 32);
    a2 = v30 & ~v31;
    if ((*(v22 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v111 = v29;
      v133 = ~v31;
      v135 = *(v127 + 72);
      v128 = v26;
      v123 = (v26 + 56);
      v125 = v27;
      v119 = (v27 + 56);
      v124 = v28;
      v112 = (v28 + 64);
      v134 = v9;
      do
      {
        sub_1D9F1BEE0(*(v137 + 48) + v135 * a2, v19, type metadata accessor for Contact);
        v32 = &v16[*(v138 + 48)];
        sub_1D9F1BEE0(v19, v16, type metadata accessor for Contact.Identity);
        sub_1D9F1BEE0(v139, v32, type metadata accessor for Contact.Identity);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v33 = v132;
          sub_1D9F1BEE0(v16, v132, type metadata accessor for Contact.Identity);
          v34 = *v33;
          v35 = v33[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {

            goto LABEL_27;
          }

          v36 = *(v32 + 1);
          if (!v35)
          {

            if (v36)
            {
              goto LABEL_11;
            }

            goto LABEL_33;
          }

          if (!v36)
          {

LABEL_11:

LABEL_12:
            sub_1D9F1BF48(v16, type metadata accessor for Contact.Identity);
            goto LABEL_13;
          }

          if (v34 == *v32 && v35 == v36)
          {

LABEL_33:

            goto LABEL_34;
          }

          v38 = *(v32 + 1);
          v39 = sub_1D9F2BA1C();

          if ((v39 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v40 = v131;
          sub_1D9F1BEE0(v16, v131, type metadata accessor for Contact.Identity);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D9F1BF48(v40, type metadata accessor for Contact.Identity.Person);
LABEL_27:
            sub_1D9E51FE8(v16, &qword_1ECB75858, &qword_1D9F42FE8);
            goto LABEL_13;
          }

          v41 = v129;
          sub_1D9F1BFA8(v32, v129, type metadata accessor for Contact.Identity.Person);
          v42 = v40;
          v43 = _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV2eeoiySbAG_AGtFZ_0(v40, v41);
          sub_1D9F1BF48(v41, type metadata accessor for Contact.Identity.Person);
          sub_1D9F1BF48(v42, type metadata accessor for Contact.Identity.Person);
          if ((v43 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

LABEL_34:
        sub_1D9F1BF48(v16, type metadata accessor for Contact.Identity);
        v44 = *&v19[v130[5]];
        v45 = *(v44 + 16);
        if (v45 == *(v128 + 16))
        {
          if (v45)
          {
            v46 = v44 == v128;
          }

          else
          {
            v46 = 1;
          }

          if (!v46)
          {
            v53 = (v44 + 56);
            v54 = v123;
            while (v45)
            {
              v56 = *(v53 - 1);
              v55 = *v53;
              v57 = *(v54 - 1);
              v58 = *v54;
              v59 = *(v53 - 3) == *(v54 - 3) && *(v53 - 2) == *(v54 - 2);
              if (!v59 && (sub_1D9F2BA1C() & 1) == 0)
              {
                goto LABEL_13;
              }

              if (v55)
              {
                if (!v58 || (v56 != v57 || v55 != v58) && (sub_1D9F2BA1C() & 1) == 0)
                {
                  goto LABEL_13;
                }
              }

              else if (v58)
              {
                goto LABEL_13;
              }

              v54 += 4;
              v53 += 4;
              if (!--v45)
              {
                goto LABEL_40;
              }
            }

            __break(1u);
            goto LABEL_130;
          }

LABEL_40:
          v47 = *&v19[v130[6]];
          v48 = *(v47 + 16);
          if (v48 == *(v125 + 16))
          {
            if (v48)
            {
              v49 = v47 == v125;
            }

            else
            {
              v49 = 1;
            }

            if (!v49)
            {
              v60 = (v47 + 56);
              v61 = v119;
              while (v48)
              {
                v63 = *(v60 - 1);
                v62 = *v60;
                v64 = *(v61 - 1);
                v65 = *v61;
                v66 = *(v60 - 3) == *(v61 - 3) && *(v60 - 2) == *(v61 - 2);
                if (!v66 && (sub_1D9F2BA1C() & 1) == 0)
                {
                  goto LABEL_13;
                }

                if (v62)
                {
                  if (!v65 || (v63 != v64 || v62 != v65) && (sub_1D9F2BA1C() & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                else if (v65)
                {
                  goto LABEL_13;
                }

                v61 += 4;
                v60 += 4;
                if (!--v48)
                {
                  goto LABEL_46;
                }
              }

LABEL_130:
              __break(1u);
              goto LABEL_131;
            }

LABEL_46:
            v50 = *&v19[v130[7]];
            v51 = *(v50 + 16);
            if (v51 == *(v124 + 16))
            {
              if (v51)
              {
                v52 = v50 == v124;
              }

              else
              {
                v52 = 1;
              }

              if (!v52)
              {
                v67 = (v50 + 64);
                v68 = v112;
                while (v51)
                {
                  v69 = *(v67 - 3);
                  v70 = *(v67 - 2);
                  v71 = *(v67 - 1);
                  v72 = *v67;
                  v73 = v67[1];
                  v74 = v67[2];
                  v75 = v67[3];
                  v118 = v67[4];
                  v76 = v67[5];
                  v113 = v67[6];
                  v122 = v67[7];
                  v77 = *(v68 - 3);
                  v78 = *(v68 - 2);
                  v80 = *(v68 - 1);
                  v79 = *v68;
                  v82 = v68[1];
                  v81 = v68[2];
                  v83 = v68[3];
                  v117 = v68[4];
                  v84 = v68[5];
                  v114 = v68[6];
                  v121 = v68[7];
                  if (v69)
                  {
                    if (!v77)
                    {
                      goto LABEL_13;
                    }

                    if (*(v67 - 4) != *(v68 - 4) || v69 != v77)
                    {
                      v107 = v79;
                      v116 = v76;
                      v85 = v84;
                      v110 = v75;
                      v86 = v74;
                      v115 = v83;
                      v87 = v81;
                      v109 = v73;
                      v106 = v72;
                      v108 = v82;
                      v105 = v71;
                      v104 = v70;
                      v103 = v78;
                      v88 = sub_1D9F2BA1C();
                      v78 = v103;
                      v70 = v104;
                      v71 = v105;
                      v79 = v107;
                      v82 = v108;
                      v72 = v106;
                      v73 = v109;
                      v81 = v87;
                      v83 = v115;
                      v74 = v86;
                      v75 = v110;
                      v84 = v85;
                      v76 = v116;
                      if ((v88 & 1) == 0)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  else if (v77)
                  {
                    goto LABEL_13;
                  }

                  if (v71)
                  {
                    if (!v80)
                    {
                      goto LABEL_13;
                    }

                    if (v70 != v78 || v71 != v80)
                    {
                      v107 = v79;
                      v116 = v76;
                      v110 = v75;
                      v115 = v83;
                      v89 = v81;
                      v109 = v73;
                      v90 = v72;
                      v108 = v82;
                      v91 = sub_1D9F2BA1C();
                      v79 = v107;
                      v82 = v108;
                      v72 = v90;
                      v73 = v109;
                      v81 = v89;
                      v83 = v115;
                      v75 = v110;
                      v76 = v116;
                      if ((v91 & 1) == 0)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  else if (v80)
                  {
                    goto LABEL_13;
                  }

                  if (v73)
                  {
                    if (!v82)
                    {
                      goto LABEL_13;
                    }

                    if (v72 != v79 || v73 != v82)
                    {
                      v116 = v76;
                      v92 = v75;
                      v115 = v83;
                      v93 = v81;
                      v94 = sub_1D9F2BA1C();
                      v81 = v93;
                      v83 = v115;
                      v75 = v92;
                      v76 = v116;
                      if ((v94 & 1) == 0)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  else if (v82)
                  {
                    goto LABEL_13;
                  }

                  if (v75)
                  {
                    if (!v83)
                    {
                      goto LABEL_13;
                    }

                    if (v74 != v81 || v75 != v83)
                    {
                      v95 = v76;
                      v96 = sub_1D9F2BA1C();
                      v76 = v95;
                      if ((v96 & 1) == 0)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  else if (v83)
                  {
                    goto LABEL_13;
                  }

                  if (v76)
                  {
                    if (!v84 || (v118 != v117 || v76 != v84) && (sub_1D9F2BA1C() & 1) == 0)
                    {
                      goto LABEL_13;
                    }
                  }

                  else if (v84)
                  {
                    goto LABEL_13;
                  }

                  if (v122)
                  {
                    if (!v121 || (v113 != v114 || v122 != v121) && (sub_1D9F2BA1C() & 1) == 0)
                    {
                      goto LABEL_13;
                    }
                  }

                  else if (v121)
                  {
                    goto LABEL_13;
                  }

                  v67 += 12;
                  v68 += 12;
                  if (!--v51)
                  {
                    goto LABEL_52;
                  }
                }

                goto LABEL_132;
              }

LABEL_52:
              if (sub_1D9E4A370(*&v19[v130[8]], v120) & 1) != 0 && (sub_1D9E4A49C(*&v19[v130[9]], v111))
              {
                goto LABEL_133;
              }
            }
          }
        }

LABEL_13:
        sub_1D9F1BF48(v19, type metadata accessor for Contact);
        a2 = (a2 + 1) & v133;
      }

      while (((*(v136 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_127:
  v97 = *v126;
  *(*v126 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D9F1BFA8(v139, *(v97 + 48) + *(v127 + 72) * a2, type metadata accessor for Contact);
  v99 = *(v97 + 16);
  v100 = __OFADD__(v99, 1);
  v101 = v99 + 1;
  if (v100)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    sub_1D9F1BF48(v19, type metadata accessor for Contact);
    result = sub_1D9F2BA5C();
    __break(1u);
  }

  else
  {
    *(v97 + 16) = v101;
  }

  return result;
}

uint64_t sub_1D9F166D8(uint64_t result, unint64_t a2, char a3)
{
  v37 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v7 = v38;
      sub_1D9F12CA4(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        result = sub_1D9F18370();
        goto LABEL_57;
      }

      v7 = v38;
      sub_1D9F1AAB4(v5 + 1);
    }

    v8 = *v7;
    v9 = *(*v7 + 40);
    v46 = *v37;
    v47 = *(v37 + 1);
    v48 = *(v37 + 2);
    v49 = *(v37 + 6);
    sub_1D9F2BAFC();
    Identification.hash(into:)();
    result = sub_1D9F2BB4C();
    v44 = v8 + 56;
    v45 = v8;
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v43 = ~v10;
      v11 = *v37;
      v41 = *(v37 + 2);
      v39 = *(v37 + 1);
      v40 = *(v37 + 4);
      v12 = *(v37 + 5);
      v34 = v12;
      v35 = *(v37 + 3);
      v36 = *(v37 + 6);
      v42 = v11;
      do
      {
        v13 = *(v45 + 48) + 56 * a2;
        if (*v13)
        {
          if (*v13 == 1)
          {
            v14 = 0xE600000000000000;
            v15 = 0x72656B636F4CLL;
            if (!v11)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v14 = 0xE700000000000000;
            v15 = 0x676E696B726150;
            if (!v11)
            {
LABEL_20:
              v17 = 0xE400000000000000;
              v16 = 1768319319;
              goto LABEL_21;
            }
          }
        }

        else
        {
          v14 = 0xE400000000000000;
          v15 = 1768319319;
          if (!v11)
          {
            goto LABEL_20;
          }
        }

        if (v11 == 1)
        {
          v16 = 0x72656B636F4CLL;
        }

        else
        {
          v16 = 0x676E696B726150;
        }

        if (v11 == 1)
        {
          v17 = 0xE600000000000000;
        }

        else
        {
          v17 = 0xE700000000000000;
        }

LABEL_21:
        v19 = *(v13 + 8);
        v18 = *(v13 + 16);
        v20 = *(v13 + 24);
        v21 = *(v13 + 32);
        v23 = *(v13 + 40);
        v22 = *(v13 + 48);
        if (v15 == v16 && v14 == v17)
        {
          v24 = *(v13 + 48);
        }

        else
        {
          v25 = sub_1D9F2BA1C();

          if ((v25 & 1) == 0)
          {

            goto LABEL_52;
          }
        }

        if (v18)
        {
          if (!v41 || (v19 == v39 ? (v26 = v18 == v41) : (v26 = 0), !v26 && (sub_1D9F2BA1C() & 1) == 0))
          {
LABEL_50:

            goto LABEL_51;
          }
        }

        else if (v41)
        {
          goto LABEL_50;
        }

        if (v21)
        {
          if (!v40 || (v20 != v35 || v21 != v40) && (sub_1D9F2BA1C() & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else if (v40)
        {
          goto LABEL_50;
        }

        if (!v22)
        {

          if (!v36)
          {
            goto LABEL_61;
          }

LABEL_51:

LABEL_52:

          goto LABEL_53;
        }

        if (!v36)
        {
          goto LABEL_50;
        }

        if (v23 == v34 && v22 == v36)
        {
          goto LABEL_60;
        }

        v27 = sub_1D9F2BA1C();

        if (v27)
        {
          goto LABEL_62;
        }

LABEL_53:
        a2 = (a2 + 1) & v43;
        v11 = v42;
      }

      while (((*(v44 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_57:
  v28 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = *(v28 + 48) + 56 * a2;
  v30 = *(v37 + 1);
  *v29 = *v37;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(v37 + 2);
  *(v29 + 48) = *(v37 + 6);
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_60:

LABEL_61:

LABEL_62:
    result = sub_1D9F2BA5C();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }

  return result;
}

uint64_t sub_1D9F16B34(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 48);
  v50 = *(result + 32);
  v51 = v7;
  v52 = *(result + 64);
  v53 = *(result + 80);
  v8 = *(result + 16);
  v48 = *result;
  v49 = v8;
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D9F132B0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1D9F18664();
      goto LABEL_12;
    }

    sub_1D9F1B094(v9 + 1);
  }

  v11 = *v3;
  v12 = *(*v3 + 40);
  v13 = *(v6 + 48);
  v44 = *(v6 + 32);
  v45 = v13;
  v46 = *(v6 + 64);
  v47 = *(v6 + 80);
  v14 = *(v6 + 16);
  v42 = *v6;
  v43 = v14;
  sub_1D9F2BAFC();
  Transaction.hash(into:)(v40);
  result = sub_1D9F2BB4C();
  v15 = -1 << *(v11 + 32);
  a2 = result & ~v15;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    do
    {
      v17 = *(v11 + 48) + 88 * a2;
      v18 = *(v17 + 16);
      v40[0] = *v17;
      v40[1] = v18;
      v20 = *(v17 + 48);
      v19 = *(v17 + 64);
      v21 = *(v17 + 32);
      v41 = *(v17 + 80);
      v40[3] = v20;
      v40[4] = v19;
      v40[2] = v21;
      v22 = *(v17 + 16);
      v34 = *v17;
      v35 = v22;
      v23 = *(v17 + 32);
      v24 = *(v17 + 48);
      v25 = *(v17 + 64);
      v39 = *(v17 + 80);
      v37 = v24;
      v38 = v25;
      v36 = v23;
      sub_1D9E77240(v40, &v42);
      v26 = _s29VisualActionPredictionSupport11TransactionV2eeoiySbAC_ACtFZ_0(&v34, &v48);
      v44 = v36;
      v45 = v37;
      v46 = v38;
      v47 = v39;
      v42 = v34;
      v43 = v35;
      result = sub_1D9E77278(&v42);
      if (v26)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v27 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = *(v27 + 48) + 88 * a2;
  v29 = v49;
  *v28 = v48;
  *(v28 + 16) = v29;
  *(v28 + 80) = v53;
  v30 = v52;
  *(v28 + 48) = v51;
  *(v28 + 64) = v30;
  *(v28 + 32) = v50;
  v31 = *(v27 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v27 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F16D74(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v50 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_1D9F134FC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D9F18800();
      goto LABEL_45;
    }

    sub_1D9F1B2A4(v6 + 1);
  }

  v8 = *(v5 + 96);
  v64 = *v3;
  v9 = *(*v3 + 40);
  sub_1D9F2BAFC();
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v16 = *(v5 + 48);
  v17 = *(v5 + 56);
  v18 = *(v5 + 64);
  v19 = *(v5 + 72);
  v20 = *(v5 + 80);
  v21 = *(v5 + 88);
  v66 = v11;
  v67 = v10;
  sub_1D9F2B18C();
  v62 = v13;
  v63 = v12;
  sub_1D9F2B18C();
  v57 = v15;
  v58 = v14;
  sub_1D9F2B18C();
  v55 = v17;
  v56 = v16;
  sub_1D9F2B18C();
  v53 = v19;
  v54 = v18;
  sub_1D9F2B18C();
  v51 = v21;
  v52 = v20;
  sub_1D9F2B18C();
  v22 = 0.0;
  if (v8 != 0.0)
  {
    v22 = v8;
  }

  MEMORY[0x1DA743920](*&v22);
  result = sub_1D9F2BB4C();
  v23 = -1 << *(v64 + 32);
  a2 = result & ~v23;
  v61 = v64 + 56;
  if ((*(v64 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v60 = ~v23;
    v59 = *(v64 + 48);
    do
    {
      v24 = v59 + 104 * a2;
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      v27 = *(v24 + 32);
      v28 = *(v24 + 40);
      v29 = *(v24 + 48);
      v30 = *(v24 + 56);
      v31 = *(v24 + 64);
      v32 = *(v24 + 72);
      v33 = *(v24 + 88);
      v65 = *(v24 + 80);
      v34 = *(v24 + 96);
      v35 = *v24 == v67 && *(v24 + 8) == v66;
      if (v35 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        v36 = v26 == v63 && v25 == v62;
        if (v36 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
        {
          v37 = v27 == v58 && v28 == v57;
          if (v37 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
          {
            v38 = v29 == v56 && v30 == v55;
            if (v38 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
            {
              v39 = v31 == v54 && v32 == v53;
              if (v39 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
              {
                result = v65;
                v40 = v65 == v52 && v33 == v51;
                if (v40 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
                {
                  if (v34 == v8)
                  {
                    goto LABEL_48;
                  }
                }
              }
            }
          }
        }
      }

      a2 = (a2 + 1) & v60;
    }

    while (((*(v61 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v41 = *v49;
  *(*v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v42 = *(v41 + 48) + 104 * a2;
  v43 = *(v50 + 16);
  *v42 = *v50;
  *(v42 + 16) = v43;
  *(v42 + 96) = *(v50 + 96);
  v44 = *(v50 + 80);
  *(v42 + 64) = *(v50 + 64);
  *(v42 + 80) = v44;
  v45 = *(v50 + 48);
  *(v42 + 32) = *(v50 + 32);
  *(v42 + 48) = v45;
  v46 = *(v41 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (!v47)
  {
    *(v41 + 16) = v48;
    return result;
  }

  __break(1u);
LABEL_48:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F170C0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v35 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1D9F13850(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D9F189A4();
      goto LABEL_27;
    }

    sub_1D9F1B5E8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D9F2BAFC();
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[2];
  v13 = v5[3];
  v15 = v5[4];
  v14 = v5[5];
  sub_1D9F2B18C();
  v38 = v13;
  v39 = v12;
  sub_1D9F2B18C();
  v36 = v14;
  v37 = v15;
  sub_1D9F2B18C();
  result = sub_1D9F2BB4C();
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = v8 + 56;
    v18 = ~v16;
    v19 = *(v8 + 48);
    while (1)
    {
      v20 = (v19 + 48 * a2);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      v24 = v20[5];
      v25 = *v20 == v10 && v20[1] == v11;
      if (v25 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        v26 = v21 == v39 && v22 == v38;
        if (v26 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
        {
          if (v23 == v37 && v24 == v36)
          {
            break;
          }

          result = sub_1D9F2BA1C();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v18;
      if (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    result = sub_1D9F2BA5C();
    __break(1u);
  }

LABEL_27:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = (*(v28 + 48) + 48 * a2);
  v30 = v35[1];
  *v29 = *v35;
  v29[1] = v30;
  v29[2] = v35[2];
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }

  return result;
}

uint64_t sub_1D9F172E8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D9F13AFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D9F18B2C();
      goto LABEL_16;
    }

    sub_1D9F1B89C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  result = sub_1D9F2BB4C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D9F2BA1C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

void *sub_1D9F17468()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D88, &unk_1D9F455B0);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v19;
        *(v22 + 24) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F175DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D80, &qword_1D9F455A8);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F17744()
{
  v1 = v0;
  v2 = type metadata accessor for DateTimeSchedule();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D78, &qword_1D9F455A0);
  v7 = *v0;
  v8 = sub_1D9F2B65C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D9F1BEE0(*(v7 + 48) + v22, v6, type metadata accessor for DateTimeSchedule);
        result = sub_1D9F1BFA8(v6, *(v9 + 48) + v22, type metadata accessor for DateTimeSchedule);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1D9F17950()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D68, &qword_1D9F45590);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v20;
        v21[2] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F17AB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D58, &qword_1D9F45580);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F17C24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D48, &qword_1D9F45568);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 56);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 96 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[5];
        v24[4] = v18[4];
        v24[5] = v21;
        v24[3] = v20;
        v22 = v18[1];
        v24[0] = *v18;
        v24[1] = v22;
        v24[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x60uLL);
        result = sub_1D9E51E70(v24, &v23, &qword_1ECB731D0, &qword_1D9F42160);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F17DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D40, &qword_1D9F45560);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v23 = v18[4];
        v22 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v23;
        v24[5] = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F17F58()
{
  v1 = v0;
  v2 = type metadata accessor for CalendarEvent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D38, &unk_1D9F45550);
  v7 = *v0;
  v8 = sub_1D9F2B65C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D9F1BEE0(*(v7 + 48) + v22, v6, type metadata accessor for CalendarEvent);
        result = sub_1D9F1BFA8(v6, *(v9 + 48) + v22, type metadata accessor for CalendarEvent);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1D9F18164()
{
  v1 = v0;
  v2 = type metadata accessor for Contact(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D30, &qword_1D9F45548);
  v7 = *v0;
  v8 = sub_1D9F2B65C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D9F1BEE0(*(v7 + 48) + v22, v6, type metadata accessor for Contact);
        result = sub_1D9F1BFA8(v6, *(v9 + 48) + v22, type metadata accessor for Contact);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1D9F18370()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D28, &qword_1D9F45540);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 48);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        v23 = *(v18 + 32);
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v22;
        *(v21 + 32) = v23;
        *(v21 + 48) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F18508(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D9F2B65C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 32 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v24 = (*(v6 + 48) + v19);
        *v24 = *v20;
        v24[1] = v21;
        v24[2] = v22;
        v24[3] = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1D9F18664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D10, &qword_1D9F45528);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1D9E77240(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 80);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x51uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F18800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D00, &qword_1D9F45518);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1D9E51C04(v24, v23))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 104 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[5];
      v25 = *(v17 + 12);
      v24[4] = v19;
      v24[5] = v20;
      v24[3] = v18;
      v22 = v17[1];
      v21 = v17[2];
      v24[0] = *v17;
      v24[1] = v22;
      v24[2] = v21;
      memmove((*(v4 + 48) + v16), v17, 0x68uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F189A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF8, &qword_1D9F45510);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        v24[5] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9F18B2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF0, &qword_1D9F45508);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D9F18C88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D88, &unk_1D9F455B0);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v38 = v2;
    v39 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v40 = result;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_17:
      v21 = *(v3 + 48) + 32 * (v18 | (v7 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v6 + 40);
      sub_1D9F2BAFC();

      sub_1D9F2B18C();

      v42 = v24;
      v43 = v23;
      sub_1D9F2BB1C();
      if (v24)
      {
        sub_1D9F2B18C();
      }

      MEMORY[0x1DA7438F0](*(v25 + 16));
      v27 = *(v25 + 16);
      if (v27)
      {
        v28 = (v25 + 40);
        do
        {
          v29 = *(v28 - 1);
          v30 = *v28;

          sub_1D9F2B18C();

          v28 += 2;
          --v27;
        }

        while (v27);
      }

      result = sub_1D9F2BB4C();
      v6 = v40;
      v31 = -1 << *(v40 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v16 = v42;
        v15 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v13 + 8 * v33);
          if (v37 != -1)
          {
            v14 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_35;
      }

      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v16 = v42;
      v15 = v43;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v40 + 48) + 32 * v14;
      *v17 = v22;
      *(v17 + 8) = v15;
      *(v17 + 16) = v16;
      *(v17 + 24) = v25;
      ++*(v40 + 16);
      v3 = v39;
      v11 = v41;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v38;
        goto LABEL_33;
      }

      v20 = *(v8 + 8 * v7);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D9F1900C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D80, &qword_1D9F455A8);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 24 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v6 + 40);
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      if (v21 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v21;
      }

      MEMORY[0x1DA743920](*&v23);
      result = sub_1D9F2BB4C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v31;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D9F19274(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DateTimeSchedule();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D78, &qword_1D9F455A0);
  result = sub_1D9F2B66C();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1D9F1BEE0(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for DateTimeSchedule);
      v23 = *(v11 + 40);
      sub_1D9F2BAFC();
      DateTimeSchedule.hash(into:)();
      result = sub_1D9F2BB4C();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D9F1BFA8(v7, *(v11 + 48) + v18 * v22, type metadata accessor for DateTimeSchedule);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D9F1954C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D68, &qword_1D9F45590);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 24 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v6 + 40);
      sub_1D9F2BAFC();
      if (v19 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v19;
      }

      MEMORY[0x1DA743920](*&v23);

      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v31;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D9F197B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D58, &qword_1D9F45580);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_1D9F2BAFC();

      v35 = v20;
      sub_1D9F2B18C();
      if (v23)
      {
        sub_1D9F2BB1C();

        v25 = v22;
        sub_1D9F2B18C();
      }

      else
      {
        v25 = v22;
        sub_1D9F2BB1C();
      }

      result = sub_1D9F2BB4C();
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

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      v3 = v34;
      *v15 = v35;
      v15[1] = v21;
      v15[2] = v25;
      v15[3] = v23;
      ++*(v6 + 16);
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D9F19A60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D48, &qword_1D9F45568);
  result = sub_1D9F2B66C();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_42:
    *v2 = v6;
    return result;
  }

  v7 = 0;
  v39 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  v40 = v11;
  v41 = result;
  v42 = v3;
  while (v10)
  {
    v19 = __clz(__rbit64(v10));
    v43 = (v10 - 1) & v10;
LABEL_17:
    v22 = (*(v3 + 48) + 96 * (v19 | (v7 << 6)));
    v23 = v22[5];
    v25 = v22[2];
    v24 = v22[3];
    v49 = v22[4];
    v50 = v23;
    v47 = v25;
    v48 = v24;
    v26 = v22[1];
    v45 = *v22;
    v46 = v26;
    v27 = *(v6 + 40);
    sub_1D9F2BAFC();
    v28 = *(&v46 + 1);
    v29 = *(&v47 + 1);
    v30 = *(&v48 + 1);
    v31 = *(&v49 + 1);
    if (*(&v45 + 1))
    {
      sub_1D9F2BB1C();
      sub_1D9E51E70(&v45, v44, &qword_1ECB731D0, &qword_1D9F42160);
      sub_1D9F2B18C();
      if (v28)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1D9F2BB1C();
      sub_1D9E51E70(&v45, v44, &qword_1ECB731D0, &qword_1D9F42160);
      if (v28)
      {
LABEL_19:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v29)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }
    }

    sub_1D9F2BB1C();
    if (v29)
    {
LABEL_20:
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
      goto LABEL_24;
    }

LABEL_23:
    sub_1D9F2BB1C();
LABEL_24:
    v3 = v42;
    if (v30)
    {
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
      if (v31)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1D9F2BB1C();
      if (v31)
      {
LABEL_26:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (*(&v50 + 1))
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    sub_1D9F2BB1C();
    if (*(&v50 + 1))
    {
LABEL_27:
      sub_1D9F2BB1C();

      sub_1D9F2B18C();

      goto LABEL_31;
    }

LABEL_30:
    sub_1D9F2BB1C();
LABEL_31:
    result = sub_1D9F2BB4C();
    v6 = v41;
    v32 = -1 << *(v41 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      v10 = v43;
      while (++v34 != v36 || (v35 & 1) == 0)
      {
        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *(v12 + 8 * v34);
        if (v38 != -1)
        {
          v13 = __clz(__rbit64(~v38)) + (v34 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_44;
    }

    v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v10 = v43;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = (*(v41 + 48) + 96 * v13);
    v15 = v46;
    *v14 = v45;
    v16 = v47;
    v17 = v48;
    v18 = v50;
    v14[4] = v49;
    v14[5] = v18;
    v14[2] = v16;
    v14[3] = v17;
    v14[1] = v15;
    ++*(v41 + 16);
    v11 = v40;
  }

  v20 = v7;
  while (1)
  {
    v7 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v7 >= v11)
    {

      v2 = v1;
      goto LABEL_42;
    }

    v21 = *(v39 + 8 * v7);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v43 = (v21 - 1) & v21;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1D9F19E74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D40, &qword_1D9F45560);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v37 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v25 = v19[5];
      v26 = *(v6 + 40);
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
      if (v25)
      {

        sub_1D9F2B18C();
      }

      result = sub_1D9F2BB4C();
      v6 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v37 + 48) + 48 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      v15[4] = v24;
      v15[5] = v25;
      ++*(v37 + 16);
      v3 = v36;
      v11 = v38;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_30;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_30:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_1D9F1A14C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CalendarEvent();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D38, &unk_1D9F45550);
  result = sub_1D9F2B66C();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1D9F1BEE0(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for CalendarEvent);
      v23 = *(v11 + 40);
      sub_1D9F2BAFC();
      CalendarEvent.hash(into:)();
      result = sub_1D9F2BB4C();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D9F1BFA8(v7, *(v11 + 48) + v18 * v22, type metadata accessor for CalendarEvent);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D9F1A424(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - v6;
  v8 = type metadata accessor for Contact(0);
  v69 = *(v8 - 1);
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v13 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D30, &qword_1D9F45548);
  result = sub_1D9F2B66C();
  v15 = result;
  if (*(v12 + 16))
  {
    v60 = v1;
    v16 = 0;
    v17 = *(v12 + 56);
    v61 = v12 + 56;
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v64 = result + 56;
    v65 = v21;
    v67 = v12;
    v68 = v8;
    v72 = v11;
    v66 = result;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v71 = (v20 - 1) & v20;
LABEL_16:
      v28 = *(v12 + 48);
      v70 = *(v69 + 72);
      sub_1D9F1BEE0(v28 + v70 * (v25 | (v16 << 6)), v11, type metadata accessor for Contact);
      v29 = v15[5];
      sub_1D9F2BAFC();
      Contact.Identity.hash(into:)();
      v30 = *&v11[v8[5]];
      MEMORY[0x1DA7438F0](*(v30 + 16));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (v30 + 56);
        do
        {
          v34 = *(v32 - 3);
          v33 = *(v32 - 2);
          v36 = *(v32 - 1);
          v35 = *v32;

          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v35)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v32 += 4;
          --v31;
        }

        while (v31);
      }

      v37 = *&v11[v8[6]];
      MEMORY[0x1DA7438F0](*(v37 + 16));
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = (v37 + 56);
        do
        {
          v41 = *(v39 - 3);
          v40 = *(v39 - 2);
          v43 = *(v39 - 1);
          v42 = *v39;

          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v42)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v39 += 4;
          --v38;
        }

        while (v38);
      }

      sub_1D9E4EEB4(v73, *&v11[v8[7]]);
      v44 = *&v11[v8[8]];
      MEMORY[0x1DA7438F0](*(v44 + 16));
      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = (v44 + 72);
        do
        {
          v47 = *(v46 - 5);
          v48 = *(v46 - 4);
          v50 = *(v46 - 3);
          v49 = *(v46 - 2);
          v52 = *(v46 - 1);
          v51 = *v46;

          sub_1D9F2B18C();
          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v51)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v46 += 6;
          --v45;
        }

        while (v45);
      }

      v8 = v68;
      v53 = *&v72[v68[9]];
      MEMORY[0x1DA7438F0](*(v53 + 16));
      v54 = *(v53 + 16);
      if (v54)
      {
        v55 = &v7[*(v63 + 28)];
        v56 = v53 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
        v57 = *(v62 + 72);
        do
        {
          sub_1D9E51E70(v56, v7, &qword_1ECB731B8, &unk_1D9F2F580);
          sub_1D9F2AC4C();
          sub_1D9F1C010(&qword_1ECB731C8, MEMORY[0x1E6968FB0]);
          sub_1D9F2B0EC();
          if (*(v55 + 1))
          {
            v58 = *v55;
            sub_1D9F2BB1C();
            sub_1D9F2B18C();
          }

          else
          {
            sub_1D9F2BB1C();
          }

          sub_1D9E51FE8(v7, &qword_1ECB731B8, &unk_1D9F2F580);
          v56 += v57;
          --v54;
        }

        while (v54);
      }

      sub_1D9F2BB4C();
      v15 = v66;
      v22 = -1 << *(v66 + 32);
      v23 = v64;
      v24 = sub_1D9F2B62C();
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v11 = v72;
      result = sub_1D9F1BFA8(v72, v15[6] + v24 * v70, type metadata accessor for Contact);
      ++v15[2];
      v12 = v67;
      v21 = v65;
      v20 = v71;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v2 = v60;
        goto LABEL_42;
      }

      v27 = *(v61 + 8 * v16);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v71 = (v27 - 1) & v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_42:
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1D9F1AAB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D28, &qword_1D9F45540);
  result = sub_1D9F2B66C();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_35:
    *v2 = v6;
    return result;
  }

  v31 = v1;
  v7 = 0;
  v8 = v3 + 56;
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
  v32 = (v9 + 63) >> 6;
  v33 = v3;
  v12 = result + 56;
  v34 = result;
  while (v11)
  {
    v15 = __clz(__rbit64(v11));
    v35 = (v11 - 1) & v11;
LABEL_17:
    v18 = *(v3 + 48) + 56 * (v15 | (v7 << 6));
    v19 = *v18;
    v20 = *(v18 + 16);
    v21 = *(v18 + 32);
    v37 = *(v18 + 24);
    v38 = *(v18 + 8);
    v22 = *(v18 + 48);
    v36 = *(v18 + 40);
    v23 = *(v6 + 40);
    sub_1D9F2BAFC();

    sub_1D9F2B18C();

    sub_1D9F2BB1C();
    if (v20)
    {
      sub_1D9F2B18C();
    }

    v6 = v34;
    if (v21)
    {
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
      if (v22)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1D9F2BB1C();
      if (v22)
      {
LABEL_21:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        goto LABEL_24;
      }
    }

    sub_1D9F2BB1C();
LABEL_24:
    result = sub_1D9F2BB4C();
    v24 = -1 << *(v34 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v26);
        if (v30 != -1)
        {
          v13 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_37;
    }

    v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v34 + 48) + 56 * v13;
    *v14 = v19;
    *(v14 + 8) = v38;
    *(v14 + 16) = v20;
    *(v14 + 24) = v37;
    *(v14 + 32) = v21;
    *(v14 + 40) = v36;
    *(v14 + 48) = v22;
    ++*(v34 + 16);
    v3 = v33;
    v11 = v35;
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v32)
    {

      v2 = v31;
      goto LABEL_35;
    }

    v17 = *(v8 + 8 * v7);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v35 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D9F1AE38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D9F2B66C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v9 = 0;
    v10 = v5 + 56;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = (*(v5 + 48) + 32 * (v18 | (v9 << 6)));
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = *(v8 + 40);
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v22;
      v17[1] = v23;
      v17[2] = v24;
      v17[3] = v25;
      ++*(v8 + 16);
      v5 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v4 = v34;
        goto LABEL_28;
      }

      v20 = *(v10 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

unint64_t sub_1D9F1B094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D10, &qword_1D9F45528);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = *(v3 + 48) + 88 * (v12 | (v7 << 6));
      v17 = *(v15 + 48);
      v16 = *(v15 + 64);
      v18 = *(v15 + 32);
      v42 = *(v15 + 80);
      v40 = v17;
      v41 = v16;
      v39 = v18;
      v19 = *(v15 + 16);
      v37 = *v15;
      v38 = v19;
      v20 = *(v6 + 40);
      v21 = *(v15 + 48);
      v33 = *(v15 + 32);
      v34 = v21;
      v35 = *(v15 + 64);
      v36 = *(v15 + 80);
      v22 = *(v15 + 16);
      v31 = *v15;
      v32 = v22;
      sub_1D9F2BAFC();
      sub_1D9E77240(&v37, &v29);
      Transaction.hash(into:)(v30);
      sub_1D9F2BB4C();
      v23 = -1 << *(v6 + 32);
      result = sub_1D9F2B62C();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v24 = *(v6 + 48) + 88 * result;
      v25 = v38;
      *v24 = v37;
      *(v24 + 16) = v25;
      v26 = v39;
      v27 = v40;
      v28 = v41;
      *(v24 + 80) = v42;
      *(v24 + 48) = v27;
      *(v24 + 64) = v28;
      *(v24 + 32) = v26;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_16;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D9F1B2A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D00, &qword_1D9F45518);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v39 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v40 = v11;
    v41 = result;
    v42 = v3;
    while (v10)
    {
      v20 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_17:
      v23 = *(v3 + 48) + 104 * (v20 | (v7 << 6));
      v25 = *v23;
      v24 = *(v23 + 16);
      v47 = *(v23 + 32);
      v26 = *(v23 + 48);
      v27 = *(v23 + 64);
      v28 = *(v23 + 80);
      v51 = *(v23 + 96);
      v49 = v27;
      v50 = v28;
      v48 = v26;
      v45 = v25;
      v46 = v24;
      v29 = *(v6 + 40);
      sub_1D9F2BAFC();
      v30 = v51;
      sub_1D9E51C04(&v45, v44);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      if (v30 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v30;
      }

      MEMORY[0x1DA743920](*&v31);
      result = sub_1D9F2BB4C();
      v6 = v41;
      v32 = -1 << *(v41 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v3 = v42;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v12 + 8 * v34);
          if (v38 != -1)
          {
            v13 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v3 = v42;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v41 + 48) + 104 * v13;
      v15 = v47;
      v16 = v45;
      *(v14 + 16) = v46;
      *(v14 + 32) = v15;
      v17 = v48;
      v18 = v49;
      v19 = v50;
      *(v14 + 96) = v51;
      *(v14 + 64) = v18;
      *(v14 + 80) = v19;
      *(v14 + 48) = v17;
      *v14 = v16;
      ++*(v41 + 16);
      v11 = v40;
      v10 = v43;
    }

    v21 = v7;
    while (1)
    {
      v7 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        goto LABEL_31;
      }

      v22 = *(v39 + 8 * v7);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D9F1B5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF8, &qword_1D9F45510);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v37 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v25 = v19[4];
      v24 = v19[5];
      v26 = *(v6 + 40);
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v6 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v37 + 48) + 48 * v14);
      *v15 = v20;
      v15[1] = v21;
      v11 = v38;
      v15[2] = v22;
      v15[3] = v23;
      v15[4] = v25;
      v15[5] = v24;
      ++*(v37 + 16);
      v3 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_28:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_1D9F1B89C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF0, &qword_1D9F45508);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D9F1BAD4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48) + 32 * result;
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  v8 = *(v5 + 24);
  *a4 = *v5;
  *(a4 + 8) = v7;
  *(a4 + 16) = v6;
  *(a4 + 24) = v8;
}

uint64_t sub_1D9F1BB6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xEF4449747865746ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9F49C80 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9F1BE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1D9F1BEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9F1BF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9F1BFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9F1C010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9F1C058(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D9F1C0A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D9F1C134(void *a1, uint64_t a2)
{
  v4 = sub_1D9F2AEFC();
  v5 = MEMORY[0x1DA744500](a1);
  if (v5 == v4)
  {
    xpc_string_get_string_ptr(a1);
    xpc_string_get_length(a1);
    v6 = sub_1D9F2B17C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9F2F8F0;
    *(v7 + 32) = v4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return v6;
}

uint64_t sub_1D9F1C248@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D9F1C134(a1, &v9);
  if (v3)
  {
    v8 = v10;
    *a2 = v9;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

xpc_object_t sub_1D9F1C29C(uint64_t a1, unint64_t a2)
{
  v2 = BYTE5(a2);
  bytes[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(bytes, 0, 14);
      v4 = 0;
      goto LABEL_25;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = sub_1D9F2AA7C();
    v7 = a1;
    if (a1)
    {
      a1 = sub_1D9F2AA9C();
      if (__OFSUB__(v5, a1))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 += v5 - a1;
    }

    v8 = __OFSUB__(v6, v5);
    v9 = v6 - v5;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v3)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    v4 = BYTE6(a2);
    BYTE5(bytes[1]) = v2;
LABEL_25:
    result = xpc_data_create(bytes, v4);
    v17 = *MEMORY[0x1E69E9840];
    return result;
  }

  v10 = a1;
  v9 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = sub_1D9F2AA7C();
  if (v7)
  {
    v11 = sub_1D9F2AA9C();
    if (!__OFSUB__(v10, v11))
    {
      v7 += v10 - v11;
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
  }

LABEL_15:
  v12 = sub_1D9F2AA8C();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return xpc_data_create(v7, v14);
}

uint64_t sub_1D9F1C470(void *a1, uint64_t a2)
{
  v4 = sub_1D9F2AEAC();
  v5 = MEMORY[0x1DA744500](a1);
  if (v5 == v4)
  {
    length = xpc_data_get_length(a1);
    if (length <= 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v9 = length;
      bytes_ptr = xpc_data_get_bytes_ptr(a1);
      if (bytes_ptr)
      {
        a2 = sub_1D9F1C6D8(bytes_ptr, v9);
      }

      else
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 5;
        sub_1D9E56B78();
        swift_willThrowTypedImpl();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9F2F8F0;
    *(v7 + 32) = v4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return a2;
}

uint64_t sub_1D9F1C5CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D9F1C470(a1, &v9);
  if (v3)
  {
    v8 = v10;
    *a2 = v9;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_1D9F1C620(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9F1C6D8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D9F1C620(a1, &a1[a2]);
  }

  v3 = sub_1D9F2AAAC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D9F2AA6C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D9F2AC6C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t ImageRepresentation.RetrievalFailure.hashValue.getter()
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](0);
  return sub_1D9F2BB4C();
}

uint64_t ImageRepresentation.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D9F2AC4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v67 - v9;
  v11 = [*v1 inImage];
  v12 = [v11 _imageData];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D9F2AC8C();
    v16 = v15;

    *a1 = v14;
    a1[1] = v16;
    type metadata accessor for ImageRepresentation.Content();

    return swift_storeEnumTagMultiPayload();
  }

  v18 = [v11 _uri];
  if (v18)
  {
    v19 = v18;
    sub_1D9F2AC1C();

    if ((sub_1D9F2ABEC() & 1) == 0 || (v20 = [objc_opt_self() defaultManager], sub_1D9F2AC3C(), v21 = sub_1D9F2B11C(), , v22 = objc_msgSend(v20, sel_isReadableFileAtPath_, v21), v20, v21, v22))
    {

      (*(v4 + 32))(a1, v10, v3);
      type metadata accessor for ImageRepresentation.Content();
      return swift_storeEnumTagMultiPayload();
    }

    if (qword_1EE0F1238 != -1)
    {
      swift_once();
    }

    v23 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v23, qword_1EE0F1240);
    (*(v4 + 16))(v8, v10, v3);
    v24 = sub_1D9F2AE6C();
    v25 = sub_1D9F2B42C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v67 = v26;
      v69 = swift_slowAlloc();
      v70 = v69;
      *v26 = 136315138;
      sub_1D9F200E0();
      v27 = sub_1D9F2B9FC();
      v29 = v28;
      v68 = *(v4 + 8);
      v68(v8, v3);
      v30 = sub_1D9E71CA4(v27, v29, &v70);

      v31 = v67;
      *(v67 + 1) = v30;
      v32 = v31;
      _os_log_impl(&dword_1D9E39000, v24, v25, "Image file URL '%s' is not readable, fallback to proxy image.", v31, 0xCu);
      v33 = v69;
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x1DA744270](v33, -1, -1);
      MEMORY[0x1DA744270](v32, -1, -1);

      v68(v10, v3);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
      v34(v10, v3);
    }
  }

  v35 = [v11 _name];
  if (!v35)
  {
    goto LABEL_40;
  }

  v36 = v35;
  v37 = sub_1D9F2B12C();
  v39 = v38;

  if ([v11 _isSystem])
  {

    *a1 = v37;
    a1[1] = v39;
    type metadata accessor for ImageRepresentation.Content();
    return swift_storeEnumTagMultiPayload();
  }

  v40 = [v11 _bundleIdentifier];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1D9F2B12C();
    v44 = v43;
    v45 = [objc_opt_self() bundleWithIdentifier_];

    if (!v45)
    {
      if (qword_1EE0F1238 != -1)
      {
        swift_once();
      }

      v55 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v55, qword_1EE0F1240);

      v56 = sub_1D9F2AE6C();
      v57 = sub_1D9F2B43C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v70 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_1D9E71CA4(v42, v44, &v70);
        _os_log_impl(&dword_1D9E39000, v56, v57, "Image bundle identifier '%s' not found, passthrough as bundle image.", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x1DA744270](v59, -1, -1);
        MEMORY[0x1DA744270](v58, -1, -1);
      }

      *a1 = v37;
      a1[1] = v39;
      a1[2] = v42;
      goto LABEL_33;
    }

    v69 = v42;
    v46 = [v45 bundlePath];
    if (!v46)
    {
      sub_1D9F2B12C();
      v46 = sub_1D9F2B11C();
    }

    v68 = sub_1D9F2B12C();
    v48 = v47;
    v49 = [objc_opt_self() defaultManager];
    v50 = [v49 isReadableFileAtPath_];

    if (v50)
    {

      *a1 = v37;
      a1[1] = v39;
      a1[2] = v69;
LABEL_33:
      a1[3] = v44;
      type metadata accessor for ImageRepresentation.Content();
      return swift_storeEnumTagMultiPayload();
    }

    if (qword_1EE0F1238 != -1)
    {
      swift_once();
    }

    v60 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v60, qword_1EE0F1240);

    v61 = sub_1D9F2AE6C();
    v62 = sub_1D9F2B42C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70 = v64;
      *v63 = 136315138;
      v65 = sub_1D9E71CA4(v68, v48, &v70);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_1D9E39000, v61, v62, "Image bundle path '%s' is not readable, fallback to proxy image.", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1DA744270](v64, -1, -1);
      MEMORY[0x1DA744270](v63, -1, -1);
    }

    else
    {
    }

LABEL_40:
    v66 = swift_allocObject();
    *(v66 + 16) = v11;
    *a1 = &unk_1D9F45628;
    a1[1] = v66;
    type metadata accessor for ImageRepresentation.Content();
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v51 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v51, qword_1EE0F1240);
  v52 = sub_1D9F2AE6C();
  v53 = sub_1D9F2B43C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1D9E39000, v52, v53, "Image bundle identifier not found, passthrough as bundle image with no bundle identifier.", v54, 2u);
    MEMORY[0x1DA744270](v54, -1, -1);
  }

  *a1 = v37;
  a1[1] = v39;
  type metadata accessor for ImageRepresentation.Content();
  a1[2] = 0;
  a1[3] = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D9F1D0F4(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F40, &qword_1D9F46170);
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9F1D1C0, 0, 0);
}

uint64_t sub_1D9F1D1C0()
{
  *(v0 + 224) = CFAbsoluteTimeGetCurrent();
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v1 = sub_1D9F2AE8C();
  *(v0 + 232) = __swift_project_value_buffer(v1, qword_1EE0F1240);
  v2 = sub_1D9F2AE6C();
  v3 = sub_1D9F2B42C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D9E39000, v2, v3, "Retrieving proxy image...", v4, 2u);
    MEMORY[0x1DA744270](v4, -1, -1);
  }

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v10 = *(v0 + 192);

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1D9F1D444;
  swift_continuation_init();
  *(v0 + 136) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F48, qword_1D9F46178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
  sub_1D9F2B2DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D9F1DBA8;
  *(v0 + 104) = &block_descriptor_5;
  [v10 _retrieveImageDataWithReply_];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D9F1D444()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1D9F1D8B4;
  }

  else
  {
    v3 = sub_1D9F1D554;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9F1D554()
{
  v32 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 232);
    v3 = v1;
    v4 = sub_1D9F2AE6C();
    v5 = sub_1D9F2B42C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 224);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v3;
      *v8 = v1;
      *(v7 + 12) = 2048;
      v9 = v3;
      *(v7 + 14) = CFAbsoluteTimeGetCurrent() - v6;
      _os_log_impl(&dword_1D9E39000, v4, v5, "Retrieved proxy image as %@. (latency = %f)", v7, 0x16u);
      sub_1D9F21180(v8);
      MEMORY[0x1DA744270](v8, -1, -1);
      MEMORY[0x1DA744270](v7, -1, -1);
    }

    v10 = *(v0 + 216);
    v11 = *(v0 + 184);

    v12 = [objc_allocWithZone(MEMORY[0x1E69AC878]) initWithINImage:v3 displayStyle:0 size:0];
    *v11 = v12;

    v13 = *(v0 + 8);
  }

  else
  {
    sub_1D9F2112C();
    v14 = swift_allocError();
    swift_willThrow();
    v15 = *(v0 + 232);
    v16 = v14;
    v17 = sub_1D9F2AE6C();
    v18 = sub_1D9F2B43C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = *(v0 + 144);
      v22 = *(*(v0 + 152) - 8);
      v23 = *(v22 + 64) + 15;
      v24 = swift_task_alloc();
      (*(v22 + 16))(v24);
      v25 = sub_1D9F2B13C();
      v27 = v26;

      v28 = sub_1D9E71CA4(v25, v27, &v31);

      *(v19 + 4) = v28;
      _os_log_impl(&dword_1D9E39000, v17, v18, "Error occurred while retrieving proxy image: %s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA744270](v20, -1, -1);
      MEMORY[0x1DA744270](v19, -1, -1);
    }

    v29 = *(v0 + 216);
    swift_willThrow();

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_1D9F1D8B4()
{
  v19 = v0;
  v1 = v0[30];
  swift_willThrow();
  v2 = v0[30];
  v3 = v2;
  v4 = sub_1D9F2AE6C();
  v5 = sub_1D9F2B43C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = v0[18];
    v9 = *(v0[19] - 8);
    v10 = *(v9 + 64) + 15;
    swift_task_alloc();
    (*(v9 + 16))();
    v11 = sub_1D9F2B13C();
    v13 = v12;

    v14 = sub_1D9E71CA4(v11, v13, &v18);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_1D9E39000, v4, v5, "Error occurred while retrieving proxy image: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA744270](v7, -1, -1);
    MEMORY[0x1DA744270](v6, -1, -1);
  }

  v15 = v0[27];
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D9F1DABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9E7ECAC;

  return sub_1D9F1D0F4(a1, v4);
}

uint64_t type metadata accessor for ImageRepresentation.Content()
{
  result = qword_1EE0F1620;
  if (!qword_1EE0F1620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9F1DBA8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F40, &qword_1D9F46170);
    sub_1D9F2B2EC();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F40, &qword_1D9F46170);
    sub_1D9F2B2FC();
  }
}

VisualActionPredictionSupport::ImageRepresentation::Size __swiftcall ImageRepresentation.Size.init(width:height:)(Swift::Double width, Swift::Double height)
{
  *v2 = width;
  v2[1] = height;
  result.height = height;
  result.width = width;
  return result;
}

uint64_t sub_1D9F1DC94()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_1D9F1DCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9F1DD9C(uint64_t a1)
{
  v2 = sub_1D9F20138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1DDD8(uint64_t a1)
{
  v2 = sub_1D9F20138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRepresentation.Size.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DB8, &qword_1D9F45630);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F20138();
  sub_1D9F2BB8C();
  v13[15] = 0;
  sub_1D9F2B97C();
  if (!v2)
  {
    v13[14] = 1;
    sub_1D9F2B97C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ImageRepresentation.Size.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA743920](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA743920](*&v3);
}

uint64_t ImageRepresentation.Size.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA743920](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA743920](*&v4);
  return sub_1D9F2BB4C();
}

uint64_t ImageRepresentation.Size.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DC8, &qword_1D9F45638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F20138();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v18 = 0;
    sub_1D9F2B86C();
    v12 = v11;
    v17 = 1;
    sub_1D9F2B86C();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9F1E248()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA743920](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA743920](*&v4);
  return sub_1D9F2BB4C();
}

void ImageRepresentation.size.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 size];
  if (v4)
  {
    v5 = v4;
    [v4 sizeValue];
  }

  else
  {
    v5 = [v3 inImage];
    [v5 _imageSize];
  }

  v8 = v6;
  v9 = v7;

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
}

uint64_t sub_1D9F1E390(uint64_t a1)
{
  v2 = sub_1D9F20288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1E3CC(uint64_t a1)
{
  v2 = sub_1D9F20288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1E408()
{
  v1 = 0x6C616E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1D9F1E468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9F20FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9F1E490(uint64_t a1)
{
  v2 = sub_1D9F2018C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1E4CC(uint64_t a1)
{
  v2 = sub_1D9F2018C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1E508(uint64_t a1)
{
  v2 = sub_1D9F20234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1E544(uint64_t a1)
{
  v2 = sub_1D9F20234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1E580(uint64_t a1)
{
  v2 = sub_1D9F201E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1E5BC(uint64_t a1)
{
  v2 = sub_1D9F201E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRepresentation.RenderingMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DD0, &qword_1D9F45640);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DD8, &qword_1D9F45648);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DE0, &qword_1D9F45650);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DE8, &qword_1D9F45658);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F2018C();
  sub_1D9F2BB8C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D9F20234();
      v12 = v26;
      sub_1D9F2B8FC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D9F201E0();
      v12 = v29;
      sub_1D9F2B8FC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D9F20288();
    sub_1D9F2B8FC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ImageRepresentation.RenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t ImageRepresentation.RenderingMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E10, &qword_1D9F45660);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E18, &qword_1D9F45668);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E20, &qword_1D9F45670);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E28, &unk_1D9F45678);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D9F2018C();
  v20 = v43;
  sub_1D9F2BB7C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D9F2B8DC();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D9E46190();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D9F2B6BC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v30 = &type metadata for ImageRepresentation.RenderingMode;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1D9F20234();
          sub_1D9F2B7DC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D9F201E0();
          v33 = v22;
          sub_1D9F2B7DC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D9F20288();
        sub_1D9F2B7DC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

void ImageRepresentation.renderingMode.getter(char *a1@<X8>)
{
  v3 = [*v1 inImage];
  v4 = [v3 _renderingMode];

  v5 = v4 == 1;
  if (v4 == 2)
  {
    v5 = 2;
  }

  *a1 = v5;
}

uint64_t sub_1D9F1F000(uint64_t a1)
{
  v2 = sub_1D9F20330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1F03C(uint64_t a1)
{
  v2 = sub_1D9F20330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1F078()
{
  if (*v0)
  {
    result = 0x72616C7563726963;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_1D9F1F0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72616C7563726963 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9F1F190(uint64_t a1)
{
  v2 = sub_1D9F202DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1F1CC(uint64_t a1)
{
  v2 = sub_1D9F202DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1F208(uint64_t a1)
{
  v2 = sub_1D9F20384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1F244(uint64_t a1)
{
  v2 = sub_1D9F20384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRepresentation.DisplayStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E30, &qword_1D9F45688);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E38, &qword_1D9F45690);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E40, &qword_1D9F45698);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F202DC();
  sub_1D9F2BB8C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D9F20330();
    v18 = v22;
    sub_1D9F2B8FC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D9F20384();
    sub_1D9F2B8FC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ImageRepresentation.DisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t ImageRepresentation.DisplayStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E60, &qword_1D9F456A0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E68, &qword_1D9F456A8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E70, &qword_1D9F456B0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F202DC();
  v16 = v36;
  sub_1D9F2BB7C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D9F2B8DC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D9E4618C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D9F2B6BC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v26 = &type metadata for ImageRepresentation.DisplayStyle;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D9F20330();
        sub_1D9F2B7DC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D9F20384();
        sub_1D9F2B7DC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

id ImageRepresentation.displayStyle.getter@<X0>(BOOL *a1@<X8>)
{
  result = [*v1 displayStyle];
  *a1 = result == 1;
  return result;
}

void ImageRepresentation.init(content:size:renderingMode:displayStyle:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  v71 = a5;
  v9 = sub_1D9F2AC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v68 - v18;
  v20 = type metadata accessor for ImageRepresentation.Content();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v69 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v70 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v68 - v26);
  v28 = *a2;
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v31 = *a3;
  v32 = *a4;
  v72 = a1;
  sub_1D9F203D8(a1, &v68 - v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v10 + 32))(v19, v27, v9);
      v49 = *(v10 + 16);
      v68 = (v10 + 8);
      if (v30)
      {
        v49(v17, v19, v9);
        v50 = objc_allocWithZone(MEMORY[0x1E69AC878]);
        v51 = sub_1D9F2ABFC();
        v39 = [v50 initWithURL:v51 renderingMode:v31 displayStyle:v32];

        v52 = *v68;
        (*v68)(v17, v9);
        v52(v19, v9);
      }

      else
      {
        v49(v14, v19, v9);
        v53 = objc_allocWithZone(MEMORY[0x1E69AC878]);
        v54 = sub_1D9F2ABFC();
        v39 = [v53 initWithURL:v54 width:v31 height:v32 renderingMode:v28 displayStyle:v29];

        v55 = *v68;
        (*v68)(v14, v9);
        v55(v19, v9);
      }
    }

    else
    {
      v40 = *v27;
      v41 = v27[1];
      v42 = objc_allocWithZone(MEMORY[0x1E69AC878]);
      v43 = sub_1D9F2AC7C();
      v39 = [v42 initWithData:v43 renderingMode:v31 displayStyle:v32];

      sub_1D9E4015C(v40, v41);
    }

LABEL_13:
    v34 = v72;
    if (!v39)
    {
      goto LABEL_14;
    }

LABEL_20:
    sub_1D9F2043C(v34);
    *v71 = v39;
    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v44 = *v27;
    v45 = v27[1];
    v46 = v27[3];

    v47 = objc_allocWithZone(MEMORY[0x1E69AC878]);
    v48 = sub_1D9F2B11C();

    v39 = [v47 initWithImageNamed:v48 renderingMode:v31 displayStyle:v32];

    goto LABEL_13;
  }

  v34 = v72;
  if (EnumCaseMultiPayload != 3)
  {
    sub_1D9F2043C(v27);
    goto LABEL_14;
  }

  v35 = *v27;
  v36 = v27[1];
  v37 = objc_allocWithZone(MEMORY[0x1E69AC878]);
  v38 = sub_1D9F2B11C();

  v39 = [v37 initWithSystemImageNamed_];

  if (v39)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v56 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v56, qword_1EE0F1240);
  v57 = v70;
  sub_1D9F203D8(v34, v70);
  v58 = sub_1D9F2AE6C();
  v59 = sub_1D9F2B43C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v73 = v61;
    *v60 = 136315138;
    sub_1D9F203D8(v57, v69);
    v62 = sub_1D9F2B13C();
    v64 = v63;
    sub_1D9F2043C(v57);
    v65 = sub_1D9E71CA4(v62, v64, &v73);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_1D9E39000, v58, v59, "Unable to create LNImage from content %s.", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x1DA744270](v61, -1, -1);
    MEMORY[0x1DA744270](v60, -1, -1);
  }

  else
  {

    sub_1D9F2043C(v57);
  }

  v66 = objc_allocWithZone(MEMORY[0x1E69AC878]);
  v67 = sub_1D9F2B11C();
  v39 = [v66 initWithSystemImageNamed_];

  if (v39)
  {
    goto LABEL_20;
  }

  __break(1u);
}

unint64_t sub_1D9F200E0()
{
  result = qword_1ECB75DB0;
  if (!qword_1ECB75DB0)
  {
    sub_1D9F2AC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75DB0);
  }

  return result;
}

unint64_t sub_1D9F20138()
{
  result = qword_1ECB75DC0;
  if (!qword_1ECB75DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75DC0);
  }

  return result;
}

unint64_t sub_1D9F2018C()
{
  result = qword_1ECB75DF0;
  if (!qword_1ECB75DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75DF0);
  }

  return result;
}

unint64_t sub_1D9F201E0()
{
  result = qword_1ECB75DF8;
  if (!qword_1ECB75DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75DF8);
  }

  return result;
}

unint64_t sub_1D9F20234()
{
  result = qword_1ECB75E00;
  if (!qword_1ECB75E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E00);
  }

  return result;
}

unint64_t sub_1D9F20288()
{
  result = qword_1ECB75E08;
  if (!qword_1ECB75E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E08);
  }

  return result;
}

unint64_t sub_1D9F202DC()
{
  result = qword_1ECB75E48;
  if (!qword_1ECB75E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E48);
  }

  return result;
}

unint64_t sub_1D9F20330()
{
  result = qword_1ECB75E50;
  if (!qword_1ECB75E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E50);
  }

  return result;
}

unint64_t sub_1D9F20384()
{
  result = qword_1ECB75E58;
  if (!qword_1ECB75E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E58);
  }

  return result;
}

uint64_t sub_1D9F203D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageRepresentation.Content();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9F2043C(uint64_t a1)
{
  v2 = type metadata accessor for ImageRepresentation.Content();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9F2049C()
{
  result = qword_1ECB75E78;
  if (!qword_1ECB75E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E78);
  }

  return result;
}

unint64_t sub_1D9F204F4()
{
  result = qword_1ECB75E80;
  if (!qword_1ECB75E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E80);
  }

  return result;
}

unint64_t sub_1D9F2054C()
{
  result = qword_1ECB75E88;
  if (!qword_1ECB75E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E88);
  }

  return result;
}

unint64_t sub_1D9F205A4()
{
  result = qword_1ECB75E90;
  if (!qword_1ECB75E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E90);
  }

  return result;
}

void sub_1D9F20618()
{
  sub_1D9F2AC4C();
  if (v0 <= 0x3F)
  {
    sub_1D9F206C0();
    if (v1 <= 0x3F)
    {
      sub_1D9F20738();
      if (v2 <= 0x3F)
      {
        sub_1D9F20768();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9F206C0()
{
  if (!qword_1EE0F11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734F8, &qword_1D9F45A20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0F11B0);
    }
  }
}

uint64_t sub_1D9F20738()
{
  result = qword_1EE0F11A8;
  if (!qword_1EE0F11A8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE0F11A8);
  }

  return result;
}

void sub_1D9F20768()
{
  if (!qword_1ECB75E98)
  {
    v0 = sub_1D9F207B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB75E98);
    }
  }
}

unint64_t sub_1D9F207B0()
{
  result = qword_1ECB75EA0;
  if (!qword_1ECB75EA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ECB75EA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageRepresentation.Size(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageRepresentation.Size(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1D9F208FC()
{
  result = qword_1ECB75EA8;
  if (!qword_1ECB75EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EA8);
  }

  return result;
}

unint64_t sub_1D9F20954()
{
  result = qword_1ECB75EB0;
  if (!qword_1ECB75EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EB0);
  }

  return result;
}

unint64_t sub_1D9F209AC()
{
  result = qword_1ECB75EB8;
  if (!qword_1ECB75EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EB8);
  }

  return result;
}

unint64_t sub_1D9F20A04()
{
  result = qword_1ECB75EC0;
  if (!qword_1ECB75EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EC0);
  }

  return result;
}

unint64_t sub_1D9F20A5C()
{
  result = qword_1ECB75EC8;
  if (!qword_1ECB75EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EC8);
  }

  return result;
}

unint64_t sub_1D9F20AB4()
{
  result = qword_1ECB75ED0;
  if (!qword_1ECB75ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75ED0);
  }

  return result;
}

unint64_t sub_1D9F20B0C()
{
  result = qword_1ECB75ED8;
  if (!qword_1ECB75ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75ED8);
  }

  return result;
}

unint64_t sub_1D9F20B64()
{
  result = qword_1ECB75EE0;
  if (!qword_1ECB75EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EE0);
  }

  return result;
}

unint64_t sub_1D9F20BBC()
{
  result = qword_1ECB75EE8;
  if (!qword_1ECB75EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EE8);
  }

  return result;
}

unint64_t sub_1D9F20C14()
{
  result = qword_1ECB75EF0;
  if (!qword_1ECB75EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EF0);
  }

  return result;
}

unint64_t sub_1D9F20C6C()
{
  result = qword_1ECB75EF8;
  if (!qword_1ECB75EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EF8);
  }

  return result;
}

unint64_t sub_1D9F20CC4()
{
  result = qword_1ECB75F00;
  if (!qword_1ECB75F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F00);
  }

  return result;
}

unint64_t sub_1D9F20D1C()
{
  result = qword_1ECB75F08;
  if (!qword_1ECB75F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F08);
  }

  return result;
}

unint64_t sub_1D9F20D74()
{
  result = qword_1ECB75F10;
  if (!qword_1ECB75F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F10);
  }

  return result;
}

unint64_t sub_1D9F20DCC()
{
  result = qword_1ECB75F18;
  if (!qword_1ECB75F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F18);
  }

  return result;
}

unint64_t sub_1D9F20E24()
{
  result = qword_1ECB75F20;
  if (!qword_1ECB75F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F20);
  }

  return result;
}

unint64_t sub_1D9F20E7C()
{
  result = qword_1ECB75F28;
  if (!qword_1ECB75F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F28);
  }

  return result;
}

unint64_t sub_1D9F20ED4()
{
  result = qword_1ECB75F30;
  if (!qword_1ECB75F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F30);
  }

  return result;
}

unint64_t sub_1D9F20F2C()
{
  result = qword_1ECB75F38;
  if (!qword_1ECB75F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F38);
  }

  return result;
}

void sub_1D9F20FA8(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1D9F20FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D9F2112C()
{
  result = qword_1ECB75F50;
  if (!qword_1ECB75F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F50);
  }

  return result;
}

uint64_t sub_1D9F21180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB73B60, &unk_1D9F32210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9F211E8(void *a1, uint64_t a2)
{
  v4 = sub_1D9F2AEBC();
  v5 = MEMORY[0x1DA744500](a1);
  if (v5 == v4)
  {
    xpc_date_get_value(a1);
    sub_1D9F2ACBC();
    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9F2F8F0;
    *(v7 + 32) = v4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return result;
}

double sub_1D9F212E8(void *a1, uint64_t a2)
{
  sub_1D9F211E8(a1, &v6);
  if (v2)
  {
    v5 = v7;
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t ParkingLocation.spotID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ParkingLocation.spotID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ParkingLocation.zoneID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ParkingLocation.zoneID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

VisualActionPredictionSupport::ParkingLocation __swiftcall ParkingLocation.init(spotID:zoneID:)(Swift::String spotID, Swift::String zoneID)
{
  *v2 = spotID;
  v2[1] = zoneID;
  result.zoneID = zoneID;
  result.spotID = spotID;
  return result;
}

uint64_t static ParkingLocation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

uint64_t sub_1D9F214F0()
{
  if (*v0)
  {
    return 0x4449656E6F7ALL;
  }

  else
  {
    return 0x4449746F7073;
  }
}

uint64_t sub_1D9F2151C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449746F7073 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656E6F7ALL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9F215F0(uint64_t a1)
{
  v2 = sub_1D9F217FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F2162C(uint64_t a1)
{
  v2 = sub_1D9F217FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParkingLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F58, &qword_1D9F46190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F217FC();
  sub_1D9F2BB8C();
  v16 = 0;
  v12 = v14[3];
  sub_1D9F2B95C();
  if (!v12)
  {
    v15 = 1;
    sub_1D9F2B95C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9F217FC()
{
  result = qword_1ECB75F60;
  if (!qword_1ECB75F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F60);
  }

  return result;
}

uint64_t ParkingLocation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t ParkingLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t ParkingLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F68, &qword_1D9F46198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F217FC();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D9F2B84C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D9F2B84C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9F21B3C()
{
  result = qword_1ECB75F70;
  if (!qword_1ECB75F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F70);
  }

  return result;
}

unint64_t sub_1D9F21BB4()
{
  result = qword_1ECB75F78;
  if (!qword_1ECB75F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F78);
  }

  return result;
}

unint64_t sub_1D9F21C0C()
{
  result = qword_1ECB75F80;
  if (!qword_1ECB75F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F80);
  }

  return result;
}

unint64_t sub_1D9F21C64()
{
  result = qword_1ECB75F88;
  if (!qword_1ECB75F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F88);
  }

  return result;
}

uint64_t sub_1D9F21CB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D9F2AF0C();
  v7 = MEMORY[0x1DA744500](a1);
  if (v7 == v6)
  {
    value = xpc_uint64_get_value(a1);
    result = swift_unknownObjectRelease();
    *a3 = value;
  }

  else
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 1;
  }

  return result;
}

NSObject *ImageFrame.pixelBuffer.getter()
{
  v1 = *(v0 + 32);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      return _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(v1, &v5);
    }

    else
    {
      sub_1D9E8EE20();
      swift_willThrowTypedImpl();
      return 0;
    }
  }

  else
  {
    v3 = *(v0 + 32);
    v4 = v1;
    return v3;
  }
}

__n128 ImageFrame.metadata.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u32[2];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u32[2] = v3;
  return result;
}

id ImageFrame.buffer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  v3 = *(v1 + 40);
  *(a1 + 8) = v3;
  return sub_1D9F21E60(v2, v3);
}

id sub_1D9F21E60(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_unknownObjectRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

__n128 ImageFrame.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ImageFrame.init(metadata:buffer:regionOfInterest:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a3 + 32);
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 48) = *a3;
  *(a4 + 64) = v10;
  *(a4 + 80) = v8;
  return result;
}

__n128 ImageFrame.init(from:hostTime:regionOfInterest:)@<Q0>(__CVBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  *a4 = a2;
  *(a4 + 8) = Width;
  *(a4 + 16) = Height;
  *(a4 + 24) = PixelFormatType;
  *(a4 + 32) = a1;
  *(a4 + 40) = 0;
  result = *a3;
  v13 = *(a3 + 16);
  *(a4 + 48) = *a3;
  *(a4 + 64) = v13;
  *(a4 + 80) = v8;
  return result;
}

uint64_t sub_1D9F21F50()
{
  v1 = 0x726566667562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1D9F21FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9F247B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9F21FD4(uint64_t a1)
{
  v2 = sub_1D9F22280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F22010(uint64_t a1)
{
  v2 = sub_1D9F22280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageFrame.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F98, &qword_1D9F46400);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v19 = *v1;
  v8 = *(v1 + 2);
  v9 = *(v1 + 6);
  v18 = *(v1 + 4);
  v24 = *(v1 + 40);
  v10 = v1[3];
  v15 = v1[4];
  v16 = v10;
  v17 = *(v1 + 80);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F22280();
  sub_1D9F2BB8C();
  v21 = v19;
  *&v22 = v8;
  DWORD2(v22) = v9;
  v25 = 0;
  sub_1D9F222D4();
  v12 = v20;
  sub_1D9F2B9AC();
  if (!v12)
  {
    v13 = v17;
    *&v21 = v18;
    BYTE8(v21) = v24;
    v25 = 1;
    sub_1D9F21E60(v18, v24);
    sub_1D9F22328();
    sub_1D9F2B9AC();
    sub_1D9F2237C(v21, SBYTE8(v21));
    v22 = v15;
    v21 = v16;
    v23 = v13;
    v25 = 2;
    sub_1D9F22398();
    sub_1D9F2B94C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9F22280()
{
  result = qword_1ECB75FA0;
  if (!qword_1ECB75FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FA0);
  }

  return result;
}

unint64_t sub_1D9F222D4()
{
  result = qword_1ECB75FA8;
  if (!qword_1ECB75FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FA8);
  }

  return result;
}

unint64_t sub_1D9F22328()
{
  result = qword_1ECB75FB0;
  if (!qword_1ECB75FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FB0);
  }

  return result;
}

void sub_1D9F2237C(id a1, char a2)
{
  if (a2 == 1)
  {
    swift_unknownObjectRelease();
  }

  else if (!a2)
  {
  }
}

unint64_t sub_1D9F22398()
{
  result = qword_1ECB75FB8;
  if (!qword_1ECB75FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FB8);
  }

  return result;
}

void ImageFrame.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75FC0, &qword_1D9F46408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F22280();
  sub_1D9F2BB7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_1D9F22784();
    sub_1D9F2B89C();
    v32 = v39;
    v31 = v40;
    v11 = v41;
    v12 = v42;
    LOBYTE(v33) = 1;
    sub_1D9F227D8();
    sub_1D9F2B89C();
    v53 = v12;
    v30 = v11;
    v13 = v39;
    LOBYTE(v11) = v40;
    v54 = 2;
    sub_1D9F2282C();
    sub_1D9F2B83C();
    (*(v6 + 8))(v9, v5);
    v28 = *(&v50 + 1);
    v29 = v50;
    v26 = *(&v51 + 1);
    v27 = v51;
    v14 = v13;
    v25 = v13;
    v15 = v32;
    *&v33 = v32;
    v16 = v31;
    *(&v33 + 1) = v31;
    v17 = v11;
    v18 = v30;
    *&v34 = v30;
    v19 = v53;
    DWORD2(v34) = v53;
    *&v35 = v14;
    BYTE8(v35) = v17;
    v36 = v50;
    v37 = v51;
    v20 = v52;
    v38 = v52;
    v21 = v34;
    *a2 = v33;
    *(a2 + 16) = v21;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    *(a2 + 80) = v20;
    *(a2 + 48) = v23;
    *(a2 + 64) = v24;
    *(a2 + 32) = v22;
    sub_1D9E585C4(&v33, &v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = v15;
    v40 = v16;
    v41 = v18;
    v42 = v19;
    v43 = v25;
    v44 = v17;
    v45 = v29;
    v46 = v28;
    v47 = v27;
    v48 = v26;
    v49 = v20;
    sub_1D9E58D28(&v39);
  }
}

unint64_t sub_1D9F22784()
{
  result = qword_1ECB75FC8;
  if (!qword_1ECB75FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FC8);
  }

  return result;
}

unint64_t sub_1D9F227D8()
{
  result = qword_1ECB75FD0;
  if (!qword_1ECB75FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FD0);
  }

  return result;
}

unint64_t sub_1D9F2282C()
{
  result = qword_1ECB75FD8;
  if (!qword_1ECB75FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FD8);
  }

  return result;
}

uint64_t ImageFrame.hydrated()@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v26 = v1[2];
  v27 = v4;
  v28 = v1[4];
  v29 = *(v1 + 80);
  v5 = v1[1];
  v24 = *v1;
  v25 = v5;
  v6 = v26;
  v7 = BYTE8(v26);
  if (BYTE8(v26) == 1)
  {
    sub_1D9E585C4(&v24, v22);
    v8 = _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(v6, &v21);
    if (v2)
    {
      v9 = v21;
      sub_1D9E8EE20();
      swift_allocError();
      *v10 = v9;
      return sub_1D9E58D28(&v24);
    }

    v6 = v8;
    result = sub_1D9E58D28(&v24);
    v7 = 0;
    v17 = v24;
    v13 = *(&v25 + 1);
    v12 = v25;
    v15 = v27;
    v16 = v28;
    v14 = v29;
  }

  else
  {
    v13 = *(&v25 + 1);
    v12 = v25;
    v23[0] = *(v1 + 41);
    *(v23 + 3) = *(v1 + 11);
    v19 = v27;
    v20 = v24;
    v18 = v28;
    v14 = v29;
    result = sub_1D9E585C4(&v24, v22);
    v16 = v18;
    v15 = v19;
    v17 = v20;
  }

  *a1 = v17;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 41) = v23[0];
  *(a1 + 44) = *(v23 + 3);
  *(a1 + 48) = v15;
  *(a1 + 64) = v16;
  *(a1 + 80) = v14;
  return result;
}

uint64_t sub_1D9F22A1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6675426567616D69;
  }

  else
  {
    v4 = 0x4965636166727573;
  }

  if (v3)
  {
    v5 = 0xE900000000000044;
  }

  else
  {
    v5 = 0xEB00000000726566;
  }

  if (*a2)
  {
    v6 = 0x6675426567616D69;
  }

  else
  {
    v6 = 0x4965636166727573;
  }

  if (*a2)
  {
    v7 = 0xEB00000000726566;
  }

  else
  {
    v7 = 0xE900000000000044;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();
  }

  return v9 & 1;
}

uint64_t sub_1D9F22AD0()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9F22B60()
{
  *v0;
  sub_1D9F2B18C();
}

uint64_t sub_1D9F22BDC()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9F22C68@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D9F2B7BC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D9F22CC8(uint64_t *a1@<X8>)
{
  v2 = 0x4965636166727573;
  if (*v1)
  {
    v2 = 0x6675426567616D69;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xEB00000000726566;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D9F22D14()
{
  if (*v0)
  {
    result = 0x6675426567616D69;
  }

  else
  {
    result = 0x4965636166727573;
  }

  *v0;
  return result;
}

uint64_t sub_1D9F22D5C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D9F2B7BC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D9F22DC0(uint64_t a1)
{
  v2 = sub_1D9F237D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F22DFC(uint64_t a1)
{
  v2 = sub_1D9F237D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageFrame.Buffer.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = sub_1D9F2AD7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75FE0, &qword_1D9F46410);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v73 - v14;
  v16 = *v1;
  v17 = *(v1 + 8);
  if (v17 == 2 && !v16)
  {
    return result;
  }

  v73 = v6;
  LODWORD(v92) = v17;
  v74 = v13;
  v75 = v16;
  v77 = result;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F237D4();
  v76 = v15;
  sub_1D9F2BB8C();
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D9EE9F78(v19, v20, &v83);
  if (!*(&v84 + 1))
  {
    sub_1D9E51FE8(&v83, &qword_1ECB75FF0, &unk_1D9F46418);
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  sub_1D9E3EE4C(&v83, &v88);
  if (v92)
  {
    if (v92 == 1)
    {
      XPCObject = v75;
      swift_unknownObjectRetain();
LABEL_13:
      v29 = *__swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      sub_1D9F2A93C();
      sub_1D9F2AD2C();
      v30 = sub_1D9F2B15C();

      xpc_dictionary_set_value(v29, (v30 + 32), XPCObject);

      LOBYTE(v83) = 0;
      sub_1D9E963F4(&qword_1EE0F3868);
      v31 = v76;
      v32 = v77;
      sub_1D9F2B9AC();
      if (!v3)
      {
        (*(v73 + 8))(v9, v5);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v88);
        return (*(v74 + 8))(v31, v32);
      }

      (*(v73 + 8))(v9, v5);
      swift_unknownObjectRelease();
      v26 = v3;
      v3 = 0;
      goto LABEL_15;
    }

    v83 = xmmword_1D9F37C60;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
    v24 = 0;
    v25 = 0x8000000000000000;
  }

  else
  {
    v23 = _s29VisualActionPredictionSupport15ImageProcessingO12getIOSurface7backingSo0H3RefaSo08CVBufferJ0a_tAC7FailureOYKFZ(v75, &v83);
    if (!v2)
    {
      v3 = 0;
      v28 = v23;
      XPCObject = IOSurfaceCreateXPCObject(v23);

      goto LABEL_13;
    }

    v3 = 0;
    v24 = *(&v83 + 1);
    v25 = v83;
  }

  sub_1D9E8EE20();
  v26 = swift_allocError();
  *v27 = v25;
  v27[1] = v24;
LABEL_15:
  if (qword_1ECB72A78 != -1)
  {
    swift_once();
  }

  v33 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v33, qword_1ECB738F8);
  v34 = v26;
  v35 = sub_1D9F2AE6C();
  v36 = sub_1D9F2B43C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v83 = v38;
    *v37 = 136315138;
    swift_getErrorValue();
    v39 = sub_1D9F2BAAC();
    v41 = sub_1D9E71CA4(v39, v40, &v83);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1D9E39000, v35, v36, "Error %s occurred when encoding IOSurface's XPC object to OOLV container.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1DA744270](v38, -1, -1);
    MEMORY[0x1DA744270](v37, -1, -1);
  }

  v22 = sub_1D9F0CAE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v43 = v22[2];
  v42 = v22[3];
  if (v43 >= v42 >> 1)
  {
    v22 = sub_1D9F0CAE4((v42 > 1), v43 + 1, 1, v22);
  }

  v22[2] = v43 + 1;
  v22[v43 + 4] = v26;
  __swift_destroy_boxed_opaque_existential_1(&v88);
LABEL_22:
  if (qword_1ECB72A78 != -1)
  {
    swift_once();
  }

  v44 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v44, qword_1ECB738F8);
  v45 = sub_1D9F2AE6C();
  v46 = sub_1D9F2B44C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1D9E39000, v45, v46, "Using slow and memory consuming encoding path for CVPixelBuffer. Please file a radar.", v47, 2u);
    MEMORY[0x1DA744270](v47, -1, -1);
  }

  if (!v92)
  {
    v51 = v75;
LABEL_34:
    sub_1D9EA1834(v51, v87, &v88);
    if (!v3)
    {
      v83 = v88;
      v84 = v89;
      v85 = v90;
      v86 = v91;
      v79 = v88;
      v80 = v89;
      v81 = v90;
      v82 = v91;
      v78 = 1;
      sub_1D9F24364();
      v57 = v76;
      v58 = v77;
      sub_1D9F2B9AC();
      (*(v74 + 8))(v57, v58);

      sub_1D9EA6B94(&v83);
    }

    v54 = v87[0];
    v55 = v87[1];
    sub_1D9E8EE20();
    v52 = swift_allocError();
    *v56 = v54;
    v56[1] = v55;

    goto LABEL_37;
  }

  if (v92 != 1)
  {
    v88 = xmmword_1D9F37C60;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
    v49 = 0;
    v50 = 0x8000000000000000;
    goto LABEL_32;
  }

  v48 = _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(v75, &v88);
  if (!v3)
  {
    v51 = v48;
    v3 = 0;
    goto LABEL_34;
  }

  v49 = *(&v88 + 1);
  v50 = v88;
LABEL_32:
  sub_1D9E8EE20();
  v52 = swift_allocError();
  *v53 = v50;
  v53[1] = v49;
LABEL_37:
  v59 = v52;
  v60 = sub_1D9F2AE6C();
  v61 = sub_1D9F2B43C();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v88 = v92;
    *v62 = 136315138;
    swift_getErrorValue();
    v63 = sub_1D9F2BAAC();
    v65 = sub_1D9E71CA4(v63, v64, &v88);

    *(v62 + 4) = v65;
    _os_log_impl(&dword_1D9E39000, v60, v61, "Error %s occurred when encoding CVPixelBuffer as ImageBuffer.", v62, 0xCu);
    v66 = v92;
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x1DA744270](v66, -1, -1);
    MEMORY[0x1DA744270](v62, -1, -1);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1D9F0CAE4(0, v22[2] + 1, 1, v22);
  }

  v68 = v22[2];
  v67 = v22[3];
  if (v68 >= v67 >> 1)
  {
    v22 = sub_1D9F0CAE4((v67 > 1), v68 + 1, 1, v22);
  }

  v22[2] = v68 + 1;
  v22[v68 + 4] = v52;
  v69 = sub_1D9F2AE6C();
  v70 = sub_1D9F2B43C();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_1D9E39000, v69, v70, "Failed to encode ImageFrame.Buffer as either IOSurface or ImageBuffer.", v71, 2u);
    MEMORY[0x1DA744270](v71, -1, -1);
  }

  sub_1D9F24310();
  swift_allocError();
  *v72 = v22;
  *(v72 + 8) = 0;
  swift_willThrow();
  return (*(v74 + 8))(v76, v77);
}

unint64_t sub_1D9F237D4()
{
  result = qword_1ECB75FE8;
  if (!qword_1ECB75FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FE8);
  }

  return result;
}

uint64_t ImageFrame.Buffer.init(from:)@<X0>(void *a1@<X0>, __CVBuffer **a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v67 - v5;
  v6 = sub_1D9F2AD7C();
  v73 = *(v6 - 8);
  v7 = *(v73 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB76018, &qword_1D9F46428);
  v75 = *(v10 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F237D4();
  v15 = v76;
  sub_1D9F2BB7C();
  if (!v15)
  {
    v76 = a1;
    LOBYTE(v89) = 0;
    sub_1D9E963F4(&qword_1EE0F3860);
    v16 = v74;
    sub_1D9F2B83C();
    v17 = v10;
    v18 = v73;
    v19 = (*(v73 + 6))(v16, 1, v6);
    v20 = v75;
    if (v19 == 1)
    {
      sub_1D9E51FE8(v16, &qword_1ECB76010, &unk_1D9F3A9C0);
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v22 = v16;
      v23 = v9;
      (*(v18 + 4))(v9, v22, v6);
      v24 = v18;
      v25 = v76[3];
      v26 = v76[4];
      __swift_project_boxed_opaque_existential_1(v76, v25);
      sub_1D9EE9F98(v25, v26, &v81);
      if (*(&v82 + 1))
      {
        v71 = v6;
        v74 = v17;
        sub_1D9E3EE4C(&v81, &v89);
        v27 = *__swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
        sub_1D9F2AD2C();
        v28 = sub_1D9F2B15C();

        v29 = xpc_dictionary_get_value(v27, (v28 + 32));

        if (v29)
        {
          (*(v73 + 1))(v23, v71);
          (*(v75 + 8))(v13, v74);
          __swift_destroy_boxed_opaque_existential_1(&v89);
          v30 = 1;
          goto LABEL_33;
        }

        v70 = v23;
        v31 = sub_1D9F2AD2C();
        v33 = v32;
        *&v81 = v31;
        *(&v81 + 1) = v32;
        LOBYTE(v82) = 2;
        v34 = sub_1D9E56B78();
        swift_willThrowTypedImpl();
        if (qword_1ECB72A78 != -1)
        {
          swift_once();
        }

        v35 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v35, qword_1ECB738F8);

        v36 = sub_1D9F2AE6C();
        v37 = sub_1D9F2B43C();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v68 = v38;
          v39 = swift_slowAlloc();
          v69 = v34;
          v40 = v39;
          *&v77[0] = v39;
          *v38 = 136315138;
          *&v81 = v31;
          *(&v81 + 1) = v33;
          LOBYTE(v82) = 2;
          v93 = v37;
          v41 = sub_1D9F2BAAC();
          v43 = v31;
          v44 = sub_1D9E71CA4(v41, v42, v77);

          v45 = v68;
          *(v68 + 1) = v44;
          _os_log_impl(&dword_1D9E39000, v36, v93, "Error %s occurred when decoding IOSurface's XPC object from OOLV container.", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          MEMORY[0x1DA744270](v40, -1, -1);
          MEMORY[0x1DA744270](v45, -1, -1);
        }

        else
        {

          v43 = v31;
        }

        v17 = v74;
        v74 = swift_allocError();
        *v46 = v43;
        *(v46 + 8) = v33;
        *(v46 + 16) = 2;

        v47 = sub_1D9F0CAE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v49 = v47[2];
        v48 = v47[3];
        v50 = v47;
        if (v49 >= v48 >> 1)
        {
          v50 = sub_1D9F0CAE4((v48 > 1), v49 + 1, 1, v47);
        }

        (*(v73 + 1))(v70, v71);
        v50[2] = v49 + 1;
        v51 = &v50[v49];
        v21 = v50;
        v51[4] = v74;
        __swift_destroy_boxed_opaque_existential_1(&v89);
      }

      else
      {
        (*(v24 + 1))(v23, v6);
        sub_1D9E51FE8(&v81, &unk_1ECB76038, &qword_1D9F46438);
        v21 = MEMORY[0x1E69E7CC0];
      }

      v20 = v75;
    }

    v94 = 1;
    sub_1D9F243B8();
    sub_1D9F2B83C();
    v73 = v13;
    v74 = v17;
    v81 = v89;
    v82 = v90;
    v83 = v91;
    v84 = v92;
    v86 = v89;
    v87 = v90;
    v52 = *(&v91 + 1);
    v88 = v91;
    v85 = v92;
    if (BYTE8(v91) == 2)
    {
      v53 = v74;
      v58 = v73;
      if (v21[2])
      {
        if (qword_1ECB72A78 != -1)
        {
          swift_once();
        }

        v59 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v59, qword_1ECB738F8);
        v60 = sub_1D9F2AE6C();
        v61 = sub_1D9F2B43C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_1D9E39000, v60, v61, "Failed to decode ImageFrame.Buffer from either IOSurface or ImageBuffer.", v62, 2u);
          MEMORY[0x1DA744270](v62, -1, -1);
        }

        sub_1D9F24310();
        swift_allocError();
        *v63 = v21;
        *(v63 + 8) = 1;
        swift_willThrow();
        (*(v20 + 8))(v58, v53);
        a1 = v76;
        goto LABEL_30;
      }

      (*(v20 + 8))(v73, v74);

      v29 = 0;
      v30 = 2;
    }

    else
    {
      if (qword_1ECB72A78 != -1)
      {
        swift_once();
      }

      v54 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v54, qword_1ECB738F8);
      v55 = sub_1D9F2AE6C();
      v56 = sub_1D9F2B44C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1D9E39000, v55, v56, "Using slow and memory consuming decoding path for CVPixelBuffer. Please file a radar.", v57, 2u);
        MEMORY[0x1DA744270](v57, -1, -1);
      }

      v77[0] = v86;
      v77[1] = v87;
      v78 = v88;
      v79 = v52;
      v80 = v85;
      v29 = sub_1D9EA4B04(v77);
      (*(v75 + 8))(v73, v74);
      sub_1D9E51FE8(&v81, &qword_1ECB76030, &qword_1D9F46430);

      v30 = 0;
    }

LABEL_33:
    v64 = v76;
    v66 = v72;
    *v72 = v29;
    *(v66 + 8) = v30;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

LABEL_30:
  v64 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

unint64_t sub_1D9F24310()
{
  result = qword_1ECB75FF8;
  if (!qword_1ECB75FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FF8);
  }

  return result;
}

unint64_t sub_1D9F24364()
{
  result = qword_1ECB76000;
  if (!qword_1ECB76000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76000);
  }

  return result;
}

unint64_t sub_1D9F243B8()
{
  result = qword_1ECB76028;
  if (!qword_1ECB76028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76028);
  }

  return result;
}

uint64_t sub_1D9F2441C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9F24464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9F244A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D9F244DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D9F24524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D9F245A8()
{
  result = qword_1ECB76048;
  if (!qword_1ECB76048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76048);
  }

  return result;
}

unint64_t sub_1D9F24600()
{
  result = qword_1ECB76050;
  if (!qword_1ECB76050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76050);
  }

  return result;
}

unint64_t sub_1D9F24658()
{
  result = qword_1ECB76058;
  if (!qword_1ECB76058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76058);
  }

  return result;
}

unint64_t sub_1D9F246B0()
{
  result = qword_1ECB76060;
  if (!qword_1ECB76060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76060);
  }

  return result;
}

unint64_t sub_1D9F24708()
{
  result = qword_1ECB76068;
  if (!qword_1ECB76068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76068);
  }

  return result;
}

unint64_t sub_1D9F24760()
{
  result = qword_1ECB76070;
  if (!qword_1ECB76070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76070);
  }

  return result;
}

uint64_t sub_1D9F247B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566667562 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F49D30 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t UncheckedSendableBox.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

uint64_t UncheckedSendableBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D9F24B3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9F24C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9F24C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DateTimeSchedule.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DateTimeSchedule() + 20);

  return sub_1D9F24C20(v3, a1);
}

uint64_t type metadata accessor for DateTimeSchedule()
{
  result = qword_1EE0F2AA0;
  if (!qword_1EE0F2AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DateTimeSchedule.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DateTimeSchedule() + 20);

  return sub_1D9F24C98(a1, v3);
}

uint64_t DateTimeSchedule.isAllDay.setter(char a1)
{
  result = type metadata accessor for DateTimeSchedule();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1D9F24EE0()
{
  v1 = 0x796C6B656577;
  if (*v0 != 1)
  {
    v1 = 0x796C68746E6F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C696164;
  }
}

uint64_t sub_1D9F24F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9F2A404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9F24F5C(uint64_t a1)
{
  v2 = sub_1D9F254A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F24F98(uint64_t a1)
{
  v2 = sub_1D9F254A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F24FD4(uint64_t a1)
{
  v2 = sub_1D9F255A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25010(uint64_t a1)
{
  v2 = sub_1D9F255A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F2504C(uint64_t a1)
{
  v2 = sub_1D9F254FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25088(uint64_t a1)
{
  v2 = sub_1D9F254FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F250C4(uint64_t a1)
{
  v2 = sub_1D9F25550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25100(uint64_t a1)
{
  v2 = sub_1D9F25550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeSchedule.Recurrence.Frequency.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76088, &qword_1D9F46988);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76090, &qword_1D9F46990);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76098, &qword_1D9F46998);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760A0, &qword_1D9F469A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F254A8();
  sub_1D9F2BB8C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D9F25550();
      v12 = v26;
      sub_1D9F2B8FC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D9F254FC();
      v12 = v29;
      sub_1D9F2B8FC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D9F255A4();
    sub_1D9F2B8FC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1D9F254A8()
{
  result = qword_1ECB760A8;
  if (!qword_1ECB760A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB760A8);
  }

  return result;
}

unint64_t sub_1D9F254FC()
{
  result = qword_1ECB760B0;
  if (!qword_1ECB760B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB760B0);
  }

  return result;
}

unint64_t sub_1D9F25550()
{
  result = qword_1ECB760B8;
  if (!qword_1ECB760B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB760B8);
  }

  return result;
}

unint64_t sub_1D9F255A4()
{
  result = qword_1ECB760C0;
  if (!qword_1ECB760C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB760C0);
  }

  return result;
}

uint64_t DateTimeSchedule.Recurrence.Frequency.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760C8, &qword_1D9F469A8);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760D0, &qword_1D9F469B0);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760D8, &qword_1D9F469B8);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760E0, &unk_1D9F469C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D9F254A8();
  v20 = v43;
  sub_1D9F2BB7C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D9F2B8DC();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D9E46190();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D9F2B6BC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v30 = &type metadata for DateTimeSchedule.Recurrence.Frequency;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1D9F25550();
          sub_1D9F2B7DC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D9F254FC();
          v33 = v22;
          sub_1D9F2B7DC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D9F255A4();
        sub_1D9F2B7DC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1D9F25BE4()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9F25CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9F2A514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9F25CD8(uint64_t a1)
{
  v2 = sub_1D9F267A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25D14(uint64_t a1)
{
  v2 = sub_1D9F267A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25D50(uint64_t a1)
{
  v2 = sub_1D9F2689C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25D8C(uint64_t a1)
{
  v2 = sub_1D9F2689C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25DC8(uint64_t a1)
{
  v2 = sub_1D9F269EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25E04(uint64_t a1)
{
  v2 = sub_1D9F269EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25E40(uint64_t a1)
{
  v2 = sub_1D9F26848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25E7C(uint64_t a1)
{
  v2 = sub_1D9F26848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25EB8(uint64_t a1)
{
  v2 = sub_1D9F267F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25EF4(uint64_t a1)
{
  v2 = sub_1D9F267F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25F30(uint64_t a1)
{
  v2 = sub_1D9F268F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25F6C(uint64_t a1)
{
  v2 = sub_1D9F268F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25FA8(uint64_t a1)
{
  v2 = sub_1D9F26998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25FE4(uint64_t a1)
{
  v2 = sub_1D9F26998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F26020(uint64_t a1)
{
  v2 = sub_1D9F26944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F2605C(uint64_t a1)
{
  v2 = sub_1D9F26944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeSchedule.Recurrence.DayOfWeek.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760E8, &qword_1D9F469D0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760F0, &qword_1D9F469D8);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760F8, &qword_1D9F469E0);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76100, &qword_1D9F469E8);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76108, &qword_1D9F469F0);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76110, &qword_1D9F469F8);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76118, &qword_1D9F46A00);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76120, &qword_1D9F46A08);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F267A0();
  v65 = v28;
  sub_1D9F2BB8C();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        sub_1D9F26998();
        v42 = v65;
        v41 = v66;
        sub_1D9F2B8FC();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        sub_1D9F26944();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        sub_1D9F2B8FC();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      sub_1D9F269EC();
      v43 = v65;
      v44 = v66;
      sub_1D9F2B8FC();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        sub_1D9F26848();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        sub_1D9F2B8FC();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        sub_1D9F267F4();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        sub_1D9F2B8FC();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      sub_1D9F268F0();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      sub_1D9F2B8FC();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      sub_1D9F2689C();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      sub_1D9F2B8FC();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

unint64_t sub_1D9F267A0()
{
  result = qword_1ECB76128;
  if (!qword_1ECB76128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76128);
  }

  return result;
}

unint64_t sub_1D9F267F4()
{
  result = qword_1ECB76130;
  if (!qword_1ECB76130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76130);
  }

  return result;
}

unint64_t sub_1D9F26848()
{
  result = qword_1ECB76138;
  if (!qword_1ECB76138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76138);
  }

  return result;
}

unint64_t sub_1D9F2689C()
{
  result = qword_1ECB76140;
  if (!qword_1ECB76140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76140);
  }

  return result;
}

unint64_t sub_1D9F268F0()
{
  result = qword_1ECB76148;
  if (!qword_1ECB76148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76148);
  }

  return result;
}

unint64_t sub_1D9F26944()
{
  result = qword_1ECB76150;
  if (!qword_1ECB76150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76150);
  }

  return result;
}

unint64_t sub_1D9F26998()
{
  result = qword_1ECB76158;
  if (!qword_1ECB76158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76158);
  }

  return result;
}

unint64_t sub_1D9F269EC()
{
  result = qword_1ECB76160;
  if (!qword_1ECB76160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76160);
  }

  return result;
}

uint64_t DateTimeSchedule.Recurrence.DayOfWeek.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76168, &qword_1D9F46A10);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76170, &qword_1D9F46A18);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76178, &qword_1D9F46A20);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76180, &qword_1D9F46A28);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v57 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76188, &qword_1D9F46A30);
  v62 = *(v63 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76190, &qword_1D9F46A38);
  v60 = *(v61 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76198, &qword_1D9F46A40);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761A0, &qword_1D9F46A48);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D9F267A0();
  v31 = v79;
  sub_1D9F2BB7C();
  if (!v31)
  {
    v32 = v23;
    v57 = v20;
    v58 = v19;
    v33 = v75;
    v34 = v76;
    v35 = v77;
    v79 = v25;
    v36 = sub_1D9F2B8DC();
    v37 = (2 * *(v36 + 16)) | 1;
    v80 = v36;
    v81 = v36 + 32;
    v82 = 0;
    v83 = v37;
    v38 = sub_1D9E46194();
    v39 = v28;
    if (v38 != 7 && v82 == v83 >> 1)
    {
      v84 = v38;
      if (v38 > 2u)
      {
        if (v38 > 4u)
        {
          v42 = v74;
          v53 = v79;
          if (v38 == 5)
          {
            v85 = 5;
            sub_1D9F26848();
            v54 = v72;
            sub_1D9F2B7DC();
            (*(v68 + 8))(v54, v69);
          }

          else
          {
            v85 = 6;
            sub_1D9F267F4();
            sub_1D9F2B7DC();
            (*(v70 + 8))(v35, v71);
          }

          (*(v53 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v78;
        }

        else
        {
          v40 = v78;
          v41 = v79;
          v42 = v74;
          if (v38 == 3)
          {
            v85 = 3;
            sub_1D9F268F0();
            sub_1D9F2B7DC();
            (*(v64 + 8))(v33, v65);
          }

          else
          {
            v85 = 4;
            sub_1D9F2689C();
            sub_1D9F2B7DC();
            (*(v66 + 8))(v34, v67);
          }

          (*(v41 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v40;
        }

        goto LABEL_24;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          v85 = 2;
          sub_1D9F26944();
          v56 = v73;
          sub_1D9F2B7DC();
          v50 = *(v62 + 8);
          v51 = v56;
          v55 = v63;
          goto LABEL_19;
        }

        v85 = 1;
        sub_1D9F26998();
        v49 = v58;
        sub_1D9F2B7DC();
        v50 = *(v60 + 8);
        v51 = v49;
        v52 = &v87;
      }

      else
      {
        v85 = 0;
        sub_1D9F269EC();
        sub_1D9F2B7DC();
        v50 = *(v59 + 8);
        v51 = v32;
        v52 = &v86;
      }

      v55 = *(v52 - 32);
LABEL_19:
      v50(v51, v55);
      (*(v79 + 8))(v39, v24);
      swift_unknownObjectRelease();
      v47 = v78;
      v42 = v74;
LABEL_24:
      *v42 = v84;
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v43 = sub_1D9F2B6BC();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
    *v45 = &type metadata for DateTimeSchedule.Recurrence.DayOfWeek;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v79 + 8))(v39, v24);
    swift_unknownObjectRelease();
  }

  v47 = v78;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t DateTimeSchedule.Recurrence.daysOfTheWeek.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t static DateTimeSchedule.Recurrence.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 1);
    v3 = *(a2 + 1);
    if (v2)
    {
      if (v3 && (sub_1D9E4AE4C(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9F274AC()
{
  if (*v0)
  {
    result = 0x6854664F73796164;
  }

  else
  {
    result = 0x636E657571657266;
  }

  *v0;
  return result;
}

uint64_t sub_1D9F274F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xED00006B65655765)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9F275E4(uint64_t a1)
{
  v2 = sub_1D9F27840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F27620(uint64_t a1)
{
  v2 = sub_1D9F27840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeSchedule.Recurrence.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761A8, &qword_1D9F46A50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F27840();
  sub_1D9F2BB8C();
  v15 = v9;
  v14 = 0;
  sub_1D9F27894();
  sub_1D9F2B9AC();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761C0, &qword_1D9F46A58);
    sub_1D9F27D68(&qword_1ECB761C8, sub_1D9F278E8);
    sub_1D9F2B94C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D9F27840()
{
  result = qword_1ECB761B0;
  if (!qword_1ECB761B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761B0);
  }

  return result;
}

unint64_t sub_1D9F27894()
{
  result = qword_1ECB761B8;
  if (!qword_1ECB761B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761B8);
  }

  return result;
}

unint64_t sub_1D9F278E8()
{
  result = qword_1ECB761D0;
  if (!qword_1ECB761D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761D0);
  }

  return result;
}

uint64_t DateTimeSchedule.Recurrence.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x1DA7438F0](*v0);
  if (!v1)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  result = MEMORY[0x1DA7438F0](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x1DA7438F0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t DateTimeSchedule.Recurrence.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_1D9F2BAFC();
  DateTimeSchedule.Recurrence.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t DateTimeSchedule.Recurrence.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761D8, &qword_1D9F46A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F27840();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  sub_1D9F27D14();
  sub_1D9F2B89C();
  v11 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761C0, &qword_1D9F46A58);
  v15 = 1;
  sub_1D9F27D68(&qword_1ECB761E8, sub_1D9F27DE0);
  sub_1D9F2B83C();
  (*(v6 + 8))(v9, v5);
  v12 = v14[1];
  *a2 = v11;
  *(a2 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9F27C6C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_1D9F2BAFC();
  DateTimeSchedule.Recurrence.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9F27CC4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_1D9F2BAFC();
  DateTimeSchedule.Recurrence.hash(into:)();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9F27D14()
{
  result = qword_1ECB761E0;
  if (!qword_1ECB761E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761E0);
  }

  return result;
}

uint64_t sub_1D9F27D68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB761C0, &qword_1D9F46A58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9F27DE0()
{
  result = qword_1ECB761F0;
  if (!qword_1ECB761F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761F0);
  }

  return result;
}

uint64_t sub_1D9F27E34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 1);
    v3 = *(a2 + 1);
    if (v2)
    {
      if (v3 && (sub_1D9E4AE4C(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t DateTimeSchedule.recurrence.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DateTimeSchedule() + 28));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D9EF0AC8(v4, v5);
}

uint64_t DateTimeSchedule.recurrence.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DateTimeSchedule() + 28));
  result = sub_1D9EF0ADC(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t DateTimeSchedule.init(startDate:endDate:isAllDay:recurrence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a4[1];
  v17 = *a4;
  v10 = sub_1D9F2AD0C();
  v11 = *(*(v10 - 8) + 56);
  v11(a5, 1, 1, v10);
  v12 = type metadata accessor for DateTimeSchedule();
  v13 = v12[5];
  v11(a5 + v13, 1, 1, v10);
  v14 = v12[6];
  v15 = (a5 + v12[7]);
  *v15 = xmmword_1D9F420A0;
  sub_1D9F24C98(a1, a5);
  sub_1D9F24C98(a2, a5 + v13);
  *(a5 + v14) = a3;
  result = sub_1D9EF0ADC(*v15, v15[1]);
  *v15 = v17;
  v15[1] = v9;
  return result;
}

uint64_t sub_1D9F28068()
{
  v1 = 0x7461447472617473;
  v2 = 0x7961446C6C417369;
  if (*v0 != 2)
  {
    v2 = 0x6E65727275636572;
  }

  if (*v0)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9F280EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9F2A75C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9F28114(uint64_t a1)
{
  v2 = sub_1D9F29344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F28150(uint64_t a1)
{
  v2 = sub_1D9F29344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeSchedule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761F8, &qword_1D9F46A68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F29344();
  sub_1D9F2BB8C();
  LOBYTE(v17) = 0;
  sub_1D9F2AD0C();
  sub_1D9F2A8D0(&qword_1ECB73510, MEMORY[0x1E6969530]);
  sub_1D9F2B94C();
  if (!v2)
  {
    v11 = type metadata accessor for DateTimeSchedule();
    v12 = v11[5];
    LOBYTE(v17) = 1;
    sub_1D9F2B94C();
    v13 = *(v3 + v11[6]);
    LOBYTE(v17) = 2;
    sub_1D9F2B91C();
    v14 = (v3 + v11[7]);
    v15 = v14[1];
    v17 = *v14;
    v18 = v15;
    v19 = 3;
    sub_1D9EF0AC8(v17, v15);
    sub_1D9F29398();
    sub_1D9F2B94C();
    sub_1D9EF0ADC(v17, v18);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DateTimeSchedule.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D9F2AD0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  sub_1D9F24C20(v1, &v23 - v12);
  v14 = *(v3 + 48);
  if (v14(v13, 1, v2) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v3 + 32))(v6, v13, v2);
    sub_1D9F2BB1C();
    sub_1D9F2A8D0(&qword_1ECB75238, MEMORY[0x1E6969530]);
    sub_1D9F2B0EC();
    (*(v3 + 8))(v6, v2);
  }

  v15 = type metadata accessor for DateTimeSchedule();
  sub_1D9F24C20(v1 + v15[5], v11);
  if (v14(v11, 1, v2) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    sub_1D9F2BB1C();
    sub_1D9F2A8D0(&qword_1ECB75238, MEMORY[0x1E6969530]);
    sub_1D9F2B0EC();
    (*(v3 + 8))(v6, v2);
  }

  if (*(v1 + v15[6]) != 2)
  {
    sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  v16 = (v1 + v15[7]);
  v17 = *(v16 + 1);
  if (v17 == 1)
  {
    return sub_1D9F2BB1C();
  }

  v18 = *v16;
  sub_1D9F2BB1C();
  MEMORY[0x1DA7438F0](v18);
  if (!v17)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  result = MEMORY[0x1DA7438F0](*(v17 + 16));
  v20 = *(v17 + 16);
  if (v20)
  {
    v21 = (v17 + 32);
    do
    {
      v22 = *v21++;
      result = MEMORY[0x1DA7438F0](v22);
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t DateTimeSchedule.hashValue.getter()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t DateTimeSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76210, &qword_1D9F46A70);
  v36 = *(v40 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v32 - v9;
  v11 = type metadata accessor for DateTimeSchedule();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9F2AD0C();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v35 = v12[7];
  v17(&v15[v35], 1, 1, v16);
  v18 = v12[8];
  v15[v18] = 2;
  v19 = &v15[v12[9]];
  *v19 = xmmword_1D9F420A0;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F29344();
  v38 = v10;
  v21 = v41;
  sub_1D9F2BB7C();
  if (v21)
  {
    v31 = a1;
  }

  else
  {
    v32 = v19;
    v33 = v18;
    v41 = a1;
    v22 = v36;
    v23 = v37;
    LOBYTE(v42) = 0;
    sub_1D9F2A8D0(&qword_1ECB73548, MEMORY[0x1E6969530]);
    v24 = v39;
    v25 = v38;
    sub_1D9F2B83C();
    sub_1D9F24C98(v24, v15);
    LOBYTE(v42) = 1;
    sub_1D9F2B83C();
    sub_1D9F24C98(v23, &v15[v35]);
    LOBYTE(v42) = 2;
    v15[v33] = sub_1D9F2B80C();
    v44 = 3;
    sub_1D9F29448();
    v27 = v40;
    sub_1D9F2B83C();
    (*(v22 + 8))(v25, v27);
    v28 = v42;
    v29 = v43;
    v30 = v32;
    sub_1D9EF0ADC(*v32, v32[1]);
    *v30 = v28;
    v30[1] = v29;
    sub_1D9F2949C(v15, v34);
    v31 = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1D9F293EC(v15);
}

uint64_t sub_1D9F28BC0()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9F28C04()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76348, &qword_1D9F47A08);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v54[-v20];
  v22 = *(v19 + 48);
  v60 = a1;
  sub_1D9F24C20(a1, &v54[-v20]);
  sub_1D9F24C20(a2, &v21[v22]);
  v23 = *(v5 + 48);
  if (v23(v21, 1, v4) == 1)
  {
    if (v23(&v21[v22], 1, v4) == 1)
    {
      v56 = v5;
      v57 = a2;
      sub_1D9E51FE8(v21, &qword_1ECB76080, &qword_1D9F46980);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1D9F24C20(v21, v13);
  if (v23(&v21[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_1D9E51FE8(v21, &qword_1ECB76348, &qword_1D9F47A08);
    return 0;
  }

  v57 = a2;
  v24 = *(v5 + 32);
  v25 = v5;
  v26 = v59;
  v24(v59, &v21[v22], v4);
  sub_1D9F2A8D0(&unk_1ECB76350, MEMORY[0x1E6969530]);
  v55 = sub_1D9F2B10C();
  v56 = v25;
  v27 = *(v25 + 8);
  v27(v26, v4);
  v27(v13, v4);
  sub_1D9E51FE8(v21, &qword_1ECB76080, &qword_1D9F46980);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v28 = type metadata accessor for DateTimeSchedule();
  v29 = v28[5];
  v30 = *(v14 + 48);
  v31 = v60;
  sub_1D9F24C20(v60 + v29, v18);
  v32 = v57 + v29;
  v33 = v57;
  sub_1D9F24C20(v32, &v18[v30]);
  if (v23(v18, 1, v4) == 1)
  {
    if (v23(&v18[v30], 1, v4) == 1)
    {
      sub_1D9E51FE8(v18, &qword_1ECB76080, &qword_1D9F46980);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v34 = v58;
  sub_1D9F24C20(v18, v58);
  if (v23(&v18[v30], 1, v4) == 1)
  {
    (*(v56 + 8))(v34, v4);
LABEL_13:
    sub_1D9E51FE8(v18, &qword_1ECB76348, &qword_1D9F47A08);
    return 0;
  }

  v35 = v56;
  v36 = v59;
  (*(v56 + 32))(v59, &v18[v30], v4);
  sub_1D9F2A8D0(&unk_1ECB76350, MEMORY[0x1E6969530]);
  v37 = sub_1D9F2B10C();
  v38 = *(v35 + 8);
  v38(v36, v4);
  v38(v34, v4);
  sub_1D9E51FE8(v18, &qword_1ECB76080, &qword_1D9F46980);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v39 = v28[6];
  v40 = *(v31 + v39);
  v41 = *(v33 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }

LABEL_20:
    v43 = v28[7];
    v44 = v33;
    v45 = *(v31 + v43);
    v46 = *(v31 + v43 + 8);
    v47 = (v44 + v43);
    v48 = *v47;
    v42 = v47[1];
    if (v46 == 1)
    {
      sub_1D9EF0AC8(v45, 1);
      if (v42 == 1)
      {
        sub_1D9EF0AC8(v48, 1);
        sub_1D9EF0ADC(v45, 1);
        return v42;
      }

      sub_1D9EF0AC8(v48, v42);
      goto LABEL_26;
    }

    if (v42 == 1)
    {
      sub_1D9EF0AC8(v45, v46);
      sub_1D9EF0AC8(v48, 1);
      sub_1D9EF0AC8(v45, v46);

LABEL_26:
      sub_1D9EF0ADC(v45, v46);
      v49 = v48;
      v50 = v42;
LABEL_31:
      sub_1D9EF0ADC(v49, v50);
      return 0;
    }

    if (v48 != v45)
    {
      goto LABEL_28;
    }

    if (v46)
    {
      if (!v42)
      {
LABEL_28:
        sub_1D9EF0AC8(v45, v46);
        v51 = v46;
LABEL_29:
        sub_1D9EF0AC8(v48, v42);
        sub_1D9EF0AC8(v45, v51);
        sub_1D9EF0ADC(v48, v42);
LABEL_30:

        v49 = v45;
        v50 = v46;
        goto LABEL_31;
      }

      v53 = sub_1D9E4AE4C(v46, v42);
      sub_1D9EF0AC8(v45, v46);
      sub_1D9EF0AC8(v48, v42);
      sub_1D9EF0AC8(v45, v46);
      sub_1D9EF0ADC(v48, v42);
      if ((v53 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1D9EF0AC8(v45, 0);
      v51 = 0;
      if (v42)
      {
        goto LABEL_29;
      }

      sub_1D9EF0AC8(v48, 0);
      sub_1D9EF0AC8(v45, 0);
      sub_1D9EF0ADC(v48, 0);
    }

    sub_1D9EF0ADC(v45, v46);
    return 1;
  }

  v42 = 0;
  if (v41 != 2 && ((v41 ^ v40) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v42;
}

unint64_t sub_1D9F29344()
{
  result = qword_1ECB76200;
  if (!qword_1ECB76200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76200);
  }

  return result;
}

unint64_t sub_1D9F29398()
{
  result = qword_1ECB76208;
  if (!qword_1ECB76208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76208);
  }

  return result;
}

uint64_t sub_1D9F293EC(uint64_t a1)
{
  v2 = type metadata accessor for DateTimeSchedule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9F29448()
{
  result = qword_1ECB76218;
  if (!qword_1ECB76218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76218);
  }

  return result;
}

uint64_t sub_1D9F2949C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateTimeSchedule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9F29504()
{
  result = qword_1ECB76220;
  if (!qword_1ECB76220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76220);
  }

  return result;
}

unint64_t sub_1D9F2955C()
{
  result = qword_1ECB76228;
  if (!qword_1ECB76228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB761C0, &qword_1D9F46A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76228);
  }

  return result;
}

unint64_t sub_1D9F295C4()
{
  result = qword_1ECB76230;
  if (!qword_1ECB76230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76230);
  }

  return result;
}

unint64_t sub_1D9F2961C()
{
  result = qword_1ECB76238;
  if (!qword_1ECB76238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76238);
  }

  return result;
}

void sub_1D9F296E0()
{
  sub_1D9F2979C();
  if (v0 <= 0x3F)
  {
    sub_1D9E3F9EC(319, &qword_1EE0F22F8);
    if (v1 <= 0x3F)
    {
      sub_1D9E3F9EC(319, qword_1EE0F2AB0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9F2979C()
{
  if (!qword_1EE0F3870)
  {
    sub_1D9F2AD0C();
    v0 = sub_1D9F2B59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F3870);
    }
  }
}

unint64_t sub_1D9F29908()
{
  result = qword_1ECB76248;
  if (!qword_1ECB76248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76248);
  }

  return result;
}

unint64_t sub_1D9F29960()
{
  result = qword_1ECB76250;
  if (!qword_1ECB76250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76250);
  }

  return result;
}

unint64_t sub_1D9F299B8()
{
  result = qword_1ECB76258;
  if (!qword_1ECB76258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76258);
  }

  return result;
}

unint64_t sub_1D9F29A10()
{
  result = qword_1ECB76260;
  if (!qword_1ECB76260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76260);
  }

  return result;
}

unint64_t sub_1D9F29A68()
{
  result = qword_1ECB76268;
  if (!qword_1ECB76268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76268);
  }

  return result;
}

unint64_t sub_1D9F29AC0()
{
  result = qword_1ECB76270;
  if (!qword_1ECB76270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76270);
  }

  return result;
}

unint64_t sub_1D9F29B18()
{
  result = qword_1ECB76278;
  if (!qword_1ECB76278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76278);
  }

  return result;
}

unint64_t sub_1D9F29B70()
{
  result = qword_1ECB76280;
  if (!qword_1ECB76280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76280);
  }

  return result;
}

unint64_t sub_1D9F29BC8()
{
  result = qword_1ECB76288;
  if (!qword_1ECB76288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76288);
  }

  return result;
}

unint64_t sub_1D9F29C20()
{
  result = qword_1ECB76290;
  if (!qword_1ECB76290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76290);
  }

  return result;
}

unint64_t sub_1D9F29C78()
{
  result = qword_1ECB76298;
  if (!qword_1ECB76298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76298);
  }

  return result;
}

unint64_t sub_1D9F29CD0()
{
  result = qword_1ECB762A0;
  if (!qword_1ECB762A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762A0);
  }

  return result;
}

unint64_t sub_1D9F29D28()
{
  result = qword_1ECB762A8;
  if (!qword_1ECB762A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762A8);
  }

  return result;
}

unint64_t sub_1D9F29D80()
{
  result = qword_1ECB762B0;
  if (!qword_1ECB762B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762B0);
  }

  return result;
}

unint64_t sub_1D9F29DD8()
{
  result = qword_1ECB762B8;
  if (!qword_1ECB762B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762B8);
  }

  return result;
}

unint64_t sub_1D9F29E30()
{
  result = qword_1ECB762C0;
  if (!qword_1ECB762C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762C0);
  }

  return result;
}

unint64_t sub_1D9F29E88()
{
  result = qword_1ECB762C8;
  if (!qword_1ECB762C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762C8);
  }

  return result;
}

unint64_t sub_1D9F29EE0()
{
  result = qword_1ECB762D0;
  if (!qword_1ECB762D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762D0);
  }

  return result;
}

unint64_t sub_1D9F29F38()
{
  result = qword_1ECB762D8;
  if (!qword_1ECB762D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762D8);
  }

  return result;
}

unint64_t sub_1D9F29F90()
{
  result = qword_1ECB762E0;
  if (!qword_1ECB762E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762E0);
  }

  return result;
}

unint64_t sub_1D9F29FE8()
{
  result = qword_1ECB762E8;
  if (!qword_1ECB762E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762E8);
  }

  return result;
}

unint64_t sub_1D9F2A040()
{
  result = qword_1ECB762F0;
  if (!qword_1ECB762F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762F0);
  }

  return result;
}

unint64_t sub_1D9F2A098()
{
  result = qword_1ECB762F8;
  if (!qword_1ECB762F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762F8);
  }

  return result;
}

unint64_t sub_1D9F2A0F0()
{
  result = qword_1ECB76300;
  if (!qword_1ECB76300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76300);
  }

  return result;
}

unint64_t sub_1D9F2A148()
{
  result = qword_1ECB76308;
  if (!qword_1ECB76308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76308);
  }

  return result;
}

unint64_t sub_1D9F2A1A0()
{
  result = qword_1ECB76310;
  if (!qword_1ECB76310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76310);
  }

  return result;
}

unint64_t sub_1D9F2A1F8()
{
  result = qword_1ECB76318;
  if (!qword_1ECB76318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76318);
  }

  return result;
}

unint64_t sub_1D9F2A250()
{
  result = qword_1ECB76320;
  if (!qword_1ECB76320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76320);
  }

  return result;
}

unint64_t sub_1D9F2A2A8()
{
  result = qword_1ECB76328;
  if (!qword_1ECB76328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76328);
  }

  return result;
}

unint64_t sub_1D9F2A300()
{
  result = qword_1ECB76330;
  if (!qword_1ECB76330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76330);
  }

  return result;
}

unint64_t sub_1D9F2A358()
{
  result = qword_1ECB76338;
  if (!qword_1ECB76338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76338);
  }

  return result;
}

unint64_t sub_1D9F2A3B0()
{
  result = qword_1ECB76340;
  if (!qword_1ECB76340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76340);
  }

  return result;
}

uint64_t sub_1D9F2A404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C696164 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C6B656577 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C68746E6F6DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9F2A514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7961646E6F6DLL && a2 == 0xE600000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616473657574 && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616473656E646577 && a2 == 0xE900000000000079 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7961647372756874 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796164697266 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961647275746173 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7961646E7573 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D9F2A75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65727275636572 && a2 == 0xEA00000000006563)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9F2A8D0(unint64_t *a1, void (*a2)(uint64_t))
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