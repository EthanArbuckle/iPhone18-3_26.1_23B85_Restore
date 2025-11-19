uint64_t sub_22F14ADCC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22F3F5F98(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_22F14C430((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_22F13D970((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_22F14C430((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_22F14B318(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v108 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v120 = &v104 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v104 - v14;
  result = MEMORY[0x28223BE20](v13);
  v121 = &v104 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_99:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_139;
    }

    v6 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v124 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v100 = v7;
        while (*a3)
        {
          v101 = *(result + 16 * v6);
          v102 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_22F14C624(*a3 + *(v100 + 72) * v101, *a3 + *(v100 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v100 + 72) * v7, a4);
          if (v33)
          {
          }

          if (v7 < v101)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_22F3F5F98(v102);
          }

          if (v6 - 2 >= *(v102 + 2))
          {
            goto LABEL_127;
          }

          v103 = &v102[16 * v6];
          *v103 = v101;
          *(v103 + 1) = v7;
          v124 = v102;
          sub_22F3F5F0C(v6 - 1);
          result = v124;
          v6 = *(v124 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_22F3F5F98(v6);
    goto LABEL_102;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v107 = a4;
  v123 = v6;
  v110 = a3;
  v105 = v7;
  while (1)
  {
    v20 = v18 + 1;
    v113 = v19;
    if (v18 + 1 >= v17)
    {
      v32 = v18 + 1;
      v33 = v109;
    }

    else
    {
      v21 = v18;
      v6 = *a3;
      v22 = *(v7 + 72);
      v23 = *a3 + v22 * v20;
      v24 = v121;
      sub_22F13BA9C(v23, v121, &qword_27DAB0FC0, &qword_22F7713B0);
      v25 = v122;
      sub_22F13BA9C(v6 + v22 * v21, v122, &qword_27DAB0FC0, &qword_22F7713B0);
      v26 = *(v123 + 48);
      LODWORD(v118) = sub_22F73F5C0();
      sub_22F120ADC(v25, &qword_27DAB0FC0, &qword_22F7713B0);
      result = sub_22F120ADC(v24, &qword_27DAB0FC0, &qword_22F7713B0);
      v106 = v21;
      v27 = v21 + 2;
      v119 = v22;
      v28 = v6 + v22 * (v21 + 2);
      while (v17 != v27)
      {
        v29 = v121;
        sub_22F13BA9C(v28, v121, &qword_27DAB0FC0, &qword_22F7713B0);
        v30 = v122;
        sub_22F13BA9C(v23, v122, &qword_27DAB0FC0, &qword_22F7713B0);
        v31 = *(v123 + 48);
        v6 = sub_22F73F5C0() & 1;
        sub_22F120ADC(v30, &qword_27DAB0FC0, &qword_22F7713B0);
        result = sub_22F120ADC(v29, &qword_27DAB0FC0, &qword_22F7713B0);
        ++v27;
        v28 += v119;
        v23 += v119;
        if ((v118 & 1) != v6)
        {
          v32 = v27 - 1;
          goto LABEL_12;
        }
      }

      v32 = v17;
LABEL_12:
      v18 = v106;
      a4 = v107;
      v33 = v109;
      a3 = v110;
      v7 = v105;
      if ((v118 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v32 < v106)
      {
        goto LABEL_130;
      }

      if (v106 < v32)
      {
        v34 = v119 * (v32 - 1);
        v35 = v32 * v119;
        v118 = v32;
        v36 = v32;
        v37 = v106;
        v38 = v106 * v119;
        v6 = v123;
        do
        {
          if (v37 != --v36)
          {
            v39 = *v110;
            if (!*v110)
            {
              goto LABEL_136;
            }

            sub_22F151588(v39 + v38, v112);
            if (v38 < v34 || v39 + v38 >= (v39 + v35))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_22F151588(v112, v39 + v34);
            v6 = v123;
          }

          ++v37;
          v34 -= v119;
          v35 -= v119;
          v38 += v119;
        }

        while (v37 < v36);
        v33 = v109;
        a3 = v110;
        v7 = v105;
        v18 = v106;
        a4 = v107;
        v32 = v118;
      }

      else
      {
LABEL_25:
        v6 = v123;
      }
    }

    v40 = a3[1];
    if (v32 >= v40)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v32, v18))
    {
      goto LABEL_129;
    }

    if (v32 - v18 >= a4)
    {
LABEL_35:
      v41 = v32;
      if (v32 < v18)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v18, a4))
    {
      goto LABEL_131;
    }

    if ((v18 + a4) < v40)
    {
      v40 = v18 + a4;
    }

    if (v40 < v18)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v32 == v40)
    {
      goto LABEL_35;
    }

    v114 = v40;
    v109 = v33;
    v87 = *a3;
    v88 = *(v7 + 72);
    v89 = *a3 + v88 * (v32 - 1);
    v90 = -v88;
    v106 = v18;
    v91 = v18 - v32;
    v111 = v88;
    v119 = v87;
    a4 = v87 + v32 * v88;
LABEL_89:
    v117 = v89;
    v118 = v32;
    v115 = a4;
    v116 = v91;
    v92 = v89;
LABEL_90:
    v93 = v121;
    sub_22F13BA9C(a4, v121, &qword_27DAB0FC0, &qword_22F7713B0);
    v94 = v122;
    sub_22F13BA9C(v92, v122, &qword_27DAB0FC0, &qword_22F7713B0);
    v95 = *(v6 + 48);
    v96 = sub_22F73F5C0();
    sub_22F120ADC(v94, &qword_27DAB0FC0, &qword_22F7713B0);
    result = sub_22F120ADC(v93, &qword_27DAB0FC0, &qword_22F7713B0);
    if (v96)
    {
      break;
    }

    v6 = v123;
LABEL_88:
    v32 = v118 + 1;
    v89 = v117 + v111;
    v91 = v116 - 1;
    a4 = v115 + v111;
    if (v118 + 1 != v114)
    {
      goto LABEL_89;
    }

    v33 = v109;
    a3 = v110;
    v7 = v105;
    v18 = v106;
    v41 = v114;
    if (v114 < v106)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v113;
    }

    else
    {
      result = sub_22F13D970(0, *(v113 + 2) + 1, 1, v113);
      v19 = result;
    }

    v43 = *(v19 + 2);
    v42 = *(v19 + 3);
    a4 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_22F13D970((v42 > 1), v43 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v44 = &v19[16 * v43];
    *(v44 + 4) = v18;
    *(v44 + 5) = v41;
    v114 = v41;
    if (!*v108)
    {
      goto LABEL_138;
    }

    if (v43)
    {
      v45 = *v108;
      v6 = v123;
      while (1)
      {
        v46 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v47 = *(v19 + 4);
          v48 = *(v19 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_56:
          if (v50)
          {
            goto LABEL_117;
          }

          v63 = &v19[16 * a4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_120;
          }

          v69 = &v19[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_124;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v73 = &v19[16 * a4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_70:
        if (v68)
        {
          goto LABEL_119;
        }

        v76 = &v19[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v79 < v67)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v46 - 1;
        if (v46 - 1 >= a4)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v84 = v19;
        a4 = *&v19[16 * v6 + 32];
        v85 = *&v19[16 * v46 + 40];
        sub_22F14C624(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v19[16 * v46 + 32], *a3 + *(v7 + 72) * v85, v45);
        if (v33)
        {
        }

        if (v85 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_22F3F5F98(v84);
        }

        if (v6 >= *(v84 + 2))
        {
          goto LABEL_114;
        }

        v86 = &v84[16 * v6];
        *(v86 + 4) = a4;
        *(v86 + 5) = v85;
        v124 = v84;
        result = sub_22F3F5F0C(v46);
        v19 = v124;
        a4 = *(v124 + 16);
        v6 = v123;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v51 = &v19[16 * a4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = &v19[16 * a4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v62 >= v54)
      {
        v80 = &v19[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v49 < v83)
        {
          v46 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v123;
LABEL_4:
    v109 = v33;
    v17 = a3[1];
    v18 = v114;
    a4 = v107;
    if (v114 >= v17)
    {
      goto LABEL_99;
    }
  }

  if (v119)
  {
    v97 = v120;
    sub_22F151588(a4, v120);
    v6 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_22F151588(v97, v92);
    v92 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_22F14BC40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = sub_22F73F690();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v55 = &v46 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v57 = a3;
  v17 = (a2 - a1) / v15;
  v61 = a1;
  v60 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v19;
    if (v19 < 1)
    {
      v34 = a4 + v19;
    }

    else
    {
      v31 = -v15;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = a4 + v19;
      v33 = v57;
      v34 = v30;
      v48 = a1;
      v49 = a4;
      v52 = -v15;
      do
      {
        v46 = v34;
        v35 = a2;
        v36 = a2 + v31;
        v53 = v35;
        v54 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v61 = v35;
            v59 = v46;
            goto LABEL_59;
          }

          v38 = v33;
          v47 = v34;
          v57 = v33 + v31;
          v39 = v32 + v31;
          v40 = *v51;
          v41 = v55;
          v42 = v58;
          v43 = v32;
          (*v51)(v55, v39, v58);
          v44 = v56;
          (v40)(v56, v36, v42);
          LOBYTE(v40) = sub_22F73F5D0();
          v45 = *v50;
          (*v50)(v44, v42);
          v45(v41, v42);
          if (v40)
          {
            break;
          }

          v34 = v39;
          v33 = v57;
          if (v38 < v43 || v57 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v54;
            a1 = v48;
          }

          else
          {
            v36 = v54;
            a1 = v48;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v39;
          v37 = v39 > v49;
          v31 = v52;
          v35 = v53;
          if (!v37)
          {
            a2 = v53;
            goto LABEL_58;
          }
        }

        v46 = v43;
        v33 = v57;
        if (v38 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v47;
          a1 = v48;
          v31 = v52;
        }

        else
        {
          a2 = v54;
          v34 = v47;
          a1 = v48;
          v31 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v46 > v49);
    }

LABEL_58:
    v61 = a2;
    v59 = v34;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v18;
    v59 = a4 + v18;
    if (v18 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = v8 + 16;
      v50 = v15;
      v51 = (v8 + 8);
      do
      {
        v21 = v55;
        v22 = v58;
        v23 = v52;
        (v52)(v55, a2, v58);
        v24 = a2;
        v25 = v56;
        v23(v56, a4, v22);
        v26 = sub_22F73F5D0();
        v27 = *v51;
        (*v51)(v25, v22);
        v27(v21, v22);
        if (v26)
        {
          v28 = v50;
          a2 = v50 + v24;
          if (a1 < v24 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v28 = v50;
          v29 = v50 + a4;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v29;
          a4 += v28;
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

LABEL_59:
  sub_22F3B662C(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_22F14C1D0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_22F742040() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_22F14C430(char *__dst, char *__src, char *a3, char *a4)
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

uint64_t sub_22F14C624(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  v7 = *(*(v47 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v27 = a4 + v18;
    }

    else
    {
      v25 = -v14;
      v26 = a4 + v18;
      v27 = a4 + v18;
      v43 = a4;
      v44 = -v14;
      v42 = a1;
      do
      {
        v40 = v27;
        v28 = a2;
        v29 = a2 + v25;
        v45 = v28;
        while (1)
        {
          v31 = v48;
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v40;
            goto LABEL_60;
          }

          v41 = v27;
          v48 += v25;
          v32 = v26 + v25;
          sub_22F13BA9C(v32, v12, &qword_27DAB0FC0, &qword_22F7713B0);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v46;
          sub_22F13BA9C(v34, v46, &qword_27DAB0FC0, &qword_22F7713B0);
          v37 = *(v47 + 48);
          v38 = sub_22F73F5C0();
          v39 = v36;
          v12 = v35;
          sub_22F120ADC(v39, &qword_27DAB0FC0, &qword_22F7713B0);
          sub_22F120ADC(v35, &qword_27DAB0FC0, &qword_22F7713B0);
          if (v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
            a1 = v42;
          }

          else
          {
            v29 = v33;
            a1 = v42;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v43;
          v25 = v44;
          v28 = v45;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_59;
          }
        }

        if (v31 < v45 || v48 >= v45)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v25 = v44;
        }

        else
        {
          v27 = v41;
          a1 = v42;
          a2 = v33;
          v25 = v44;
          if (v31 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_59:
    v51 = a2;
    v49 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      v44 = v14;
      do
      {
        sub_22F13BA9C(a2, v12, &qword_27DAB0FC0, &qword_22F7713B0);
        v20 = v46;
        sub_22F13BA9C(a4, v46, &qword_27DAB0FC0, &qword_22F7713B0);
        v21 = *(v47 + 48);
        v22 = sub_22F73F5C0();
        sub_22F120ADC(v20, &qword_27DAB0FC0, &qword_22F7713B0);
        sub_22F120ADC(v12, &qword_27DAB0FC0, &qword_22F7713B0);
        if (v22)
        {
          v23 = a2 + v14;
          if (a1 < a2 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v23;
        }

        else
        {
          v24 = a4 + v14;
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v24;
          a4 = v24;
        }

        v14 = v44;
        a1 += v44;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_60:
  sub_22F3B6644(&v51, &v50, &v49);
  return 1;
}

unint64_t sub_22F14CB3C(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 2 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_22F14CB80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22F14CBD0(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_22F14CC30(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_22F14CC78(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22F107D08(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22F14CCE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Song();
  result = sub_22F153340(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Song);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_22F14CD90(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_22F14CDE0(unint64_t result, uint64_t a2, uint64_t a3, void *a4, float a5, float a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = (a4[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a4[7] + 8 * result);
  *v7 = a5;
  v7[1] = a6;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_22F14CE44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_22F14CE8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = _s29IntermediateTimeExtendedTokenVMa();
  result = sub_22F153340(a3, v7 + *(*(v8 - 8) + 72) * a1, _s29IntermediateTimeExtendedTokenVMa);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_22F14CF34(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_22F14CF90(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22F73FDA0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22F7407B0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_22F14D084(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_22F14D0CC(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_22F7402E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_22F14D184(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22F740050();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_22F14D23C(unint64_t result, __int16 a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 2 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_22F14D298(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_22F14D2F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = a5(0);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_22F14D3A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_22F14D3F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22F73F690();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_22F14D4A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v7 = a6[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a7;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_22F14D4F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22F73FE50();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_22F14D5A8(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v5 = (a3[6] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  *(a3[7] + 8 * result) = a2;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_22F14D5F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DateAndLocation();
  result = sub_22F153340(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DateAndLocation);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22F14D6BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_22F14D770(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22F741A00();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22F741B50();
  *v1 = result;
  return result;
}

uint64_t sub_22F14D810(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_22F14DAFC(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_22F14DE64(v11, v6, v4, a2);
  result = MEMORY[0x2319033A0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F14D97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_22F14DBF0(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_22F14DEEC(v12, v7, a3, v5);
  result = MEMORY[0x2319033A0](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_22F14DAFC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v12) + 16) >= a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_22F1B09DC(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_22F1B09DC(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F14DBF0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v40 = sub_22F73F690();
  v5 = *(*(v40 - 8) + 64);
  result = MEMORY[0x28223BE20](v40);
  v38 = a3;
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v35 = v7 + 16;
  v36 = v7;
  v33 = 0;
  v34 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v20 = v39;
    v19 = v40;
LABEL_11:
    v23 = v38[7];
    v24 = (v38[6] + 16 * v18);
    v25 = v24[1];
    v41[0] = *v24;
    v41[1] = v25;
    (*(v36 + 16))(v20, v23 + *(v36 + 72) * v18, v19);

    v26 = v42;
    v27 = v37(v41, v20);
    v28 = v20;
    v42 = v26;
    if (v26)
    {
      (*v34)(v20, v19);
    }

    v29 = v27;
    (*v34)(v28, v19);

    if (v29)
    {
      *(v32 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_22F1B0C20(v32, v31, v33, v38);
      }
    }
  }

  v21 = v9;
  v20 = v39;
  v19 = v40;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_22F1B0C20(v32, v31, v33, v38);
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22F14DE64(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22F14DAFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22F14DEEC(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22F14DBF0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t (*sub_22F14DF7C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_22F14DFFC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22F14E004(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22F1534F0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22F14E084(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_22F1534F4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22F14E104(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_22F14E184;
  }

  __break(1u);
  return result;
}

void (*sub_22F14E18C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22F14E20C;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F14E214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1280, &unk_22F778600);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14E334()
{
  result = qword_27DAB0FA8;
  if (!qword_27DAB0FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0FA0, &qword_22F7713A0);
    sub_22F14E3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB0FA8);
  }

  return result;
}

unint64_t sub_22F14E3B8()
{
  result = qword_27DAB0FB0;
  if (!qword_27DAB0FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0FB8, &qword_22F7713A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB0FB0);
  }

  return result;
}

unint64_t sub_22F14E41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB08E0, &qword_22F770AF8);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14E518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB13B0, &unk_22F7717D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0AD8, &qword_22F770C60);
    v8 = sub_22F741DF0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v10, v6, &unk_27DAB13B0, &unk_22F7717D0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22F1229E8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22F73F690();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14E740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B58, &qword_22F770CD0);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14E83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1288, &unk_22F771690);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B50, &qword_22F770CC8);
    v8 = sub_22F741DF0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v10, v6, &unk_27DAB1288, &unk_22F771690);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22F1229E8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22F73F090();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14EA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1380, &unk_22F771790);
    v3 = sub_22F741DF0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22F13BA9C(v4, &v13, &unk_27DAB2FD0, &qword_22F77A4D0);
      v5 = v13;
      v6 = v14;
      result = sub_22F1229E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22F107D08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14EB58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0938, &qword_22F770B38);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14EC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1350, &unk_22F771750);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C00, &qword_22F770D70);
    v8 = sub_22F741DF0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v10, v6, &unk_27DAB1350, &unk_22F771750);
      result = sub_22F122CE4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22F7402E0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14EE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0820, &qword_22F770A48);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14EF70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v3 = sub_22F741DF0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22F13BA9C(v4, v13, &qword_27DAB12E8, &qword_22F779E60);
      result = sub_22F122B24(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22F107D08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14F0AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
    v3 = sub_22F741DF0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14F1C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE0, &qword_22F770AF0);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14F2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0930, &qword_22F770B30);
    v8 = sub_22F741DF0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v10, v6, &unk_27DAB10F8, &unk_22F771548);
      result = sub_22F122A14(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Song();
      result = sub_22F153340(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Song);
      *(v8[7] + 4 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14F4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE8, &unk_22F781690);
    v3 = sub_22F741DF0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22F13BA9C(v4, &v13, &unk_27DAB0FF0, &unk_22F771410);
      v5 = v13;
      v6 = v14;
      result = sub_22F1229E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22F107D08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14F5D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB12C0, &unk_22F7716C0);
    v3 = sub_22F741DF0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_22F122EF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14F6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1258, &qword_22F771680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1260, &qword_22F771688);
    v8 = sub_22F741DF0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v10, v6, &qword_27DAB1258, &qword_22F771680);
      v12 = *v6;
      result = sub_22F122BD4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_22F73F090();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14F8C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1240, &qword_22F771678);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B28, &qword_22F770CB0);
    v8 = sub_22F741DF0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v10, v6, &unk_27DAB1240, &qword_22F771678);
      result = sub_22F123028(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22F73FDA0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22F7407B0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14FAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10B0, &unk_22F7714E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB08E8, &qword_22F770B00);
    v8 = sub_22F741DF0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v10, v6, &qword_27DAB10B0, &unk_22F7714E0);
      result = sub_22F1230FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22F73F690();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14FD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0AF0, &unk_22F771650);
    v3 = sub_22F741DF0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_22F1232A4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14FDF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0A20, &qword_22F7715B0);
    v3 = sub_22F741DF0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_22F12355C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F14FEE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0A00, &qword_22F770C00);
    v3 = sub_22F741DF0();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F15001C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22F1229E8(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_22F150118(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1160, &unk_22F771590);
  v3 = sub_22F741DF0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22F1235AC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22F1235AC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F150254(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_22F1229E8(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_22F150350(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FD0, &unk_22F771400);
  v3 = sub_22F741DF0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 6);
  v7 = sub_22F1237E8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22F1237E8(v4, v5);
    v11 = v16;
    result = *&v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F15046C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1008, &qword_22F771428);
    v3 = sub_22F741DF0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_22F150580(void *a1)
{
  v4 = type metadata accessor for CollectionCuration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F1A26E0(a1);
  if (!v1)
  {
    v10 = v9;
    v11 = [objc_opt_self() ignoreProgress];
    v12 = sub_22F33E998();
    v35 = 0;
    v34 = v10;
    v14 = v12;

    v2 = [objc_allocWithZone(type metadata accessor for RecentlyUsedSongs()) init];
    v15 = v14[2];
    if (v15)
    {
      v38 = v4;
      v16 = *(v5 + 80);
      v33[1] = v14;
      v17 = v14 + ((v16 + 32) & ~v16);
      v18 = *(v5 + 72);
      v36 = xmmword_22F771340;
      v37 = v18;
      do
      {
        sub_22F1533A8(v17, v8, type metadata accessor for CollectionCuration);
        v19 = *(v8 + 5);
        if (v19)
        {
          v20 = *(v8 + 4);
          v21 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v21 = v20 & 0xFFFFFFFFFFFFLL;
          }

          if (v21)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C0, &unk_22F7717E0);
            v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB13B0, &unk_22F7717D0) - 8);
            v23 = *(*v22 + 72);
            v24 = v2;
            v25 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
            v26 = swift_allocObject();
            *(v26 + 16) = v36;
            v27 = (v26 + v25);
            v28 = v22[14];
            *v27 = v20;
            *(v27 + 1) = v19;
            v29 = *(v38 + 28);
            v30 = sub_22F73F690();
            (*(*(v30 - 8) + 16))(&v27[v28], &v8[v29], v30);

            v31 = sub_22F14E518(v26);
            swift_setDeallocating();
            v32 = v27;
            v2 = v24;
            v18 = v37;
            sub_22F120ADC(v32, &unk_27DAB13B0, &unk_22F7717D0);
            swift_deallocClassInstance();
            RecentlyUsedSongs.add(songIDDateMap:)(v31);
          }
        }

        sub_22F153410(v8, type metadata accessor for CollectionCuration);
        v17 += v18;
        --v15;
      }

      while (v15);
    }
  }

  return v2;
}

id sub_22F1508D8(void *a1)
{
  v4 = type metadata accessor for CollectionCuration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F1A26E0(a1);
  if (!v1)
  {
    v10 = v9;
    v11 = [objc_opt_self() ignoreProgress];
    v12 = sub_22F33E998();
    v35 = 0;
    v34 = v10;
    v14 = v12;

    v2 = [objc_allocWithZone(type metadata accessor for RecentlyUsedSongs()) init];
    v15 = v14[2];
    if (v15)
    {
      v38 = v4;
      v16 = *(v5 + 80);
      v33[1] = v14;
      v17 = v14 + ((v16 + 32) & ~v16);
      v18 = *(v5 + 72);
      v36 = xmmword_22F771340;
      v37 = v18;
      do
      {
        sub_22F1533A8(v17, v8, type metadata accessor for CollectionCuration);
        v19 = *(v8 + 3);
        if (v19)
        {
          v20 = *(v8 + 2);
          v21 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v21 = v20 & 0xFFFFFFFFFFFFLL;
          }

          if (v21)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C0, &unk_22F7717E0);
            v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB13B0, &unk_22F7717D0) - 8);
            v23 = *(*v22 + 72);
            v24 = v2;
            v25 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
            v26 = swift_allocObject();
            *(v26 + 16) = v36;
            v27 = (v26 + v25);
            v28 = v22[14];
            *v27 = v20;
            *(v27 + 1) = v19;
            v29 = *(v38 + 28);
            v30 = sub_22F73F690();
            (*(*(v30 - 8) + 16))(&v27[v28], &v8[v29], v30);

            v31 = sub_22F14E518(v26);
            swift_setDeallocating();
            v32 = v27;
            v2 = v24;
            v18 = v37;
            sub_22F120ADC(v32, &unk_27DAB13B0, &unk_22F7717D0);
            swift_deallocClassInstance();
            RecentlyUsedSongs.add(songIDDateMap:)(v31);
          }
        }

        sub_22F153410(v8, type metadata accessor for CollectionCuration);
        v17 += v18;
        --v15;
      }

      while (v15);
    }
  }

  return v2;
}

uint64_t sub_22F150C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v65 - v4;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v70 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v82 = v65 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = v65 - v15;
  v16 = sub_22F14E518(MEMORY[0x277D84F90]);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v80 = v7 + 8;
  v81 = v7 + 16;
  v76 = v16;
  v77 = (v7 + 32);
  v65[1] = v7 + 40;
  v83 = v7;
  v71 = (v7 + 56);

  v22 = 0;
  v73 = a1 + 64;
  v74 = v21;
  v72 = v5;
  while (v20)
  {
LABEL_11:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = (*(a1 + 48) + ((v22 << 10) | (16 * v26)));
    v29 = *v27;
    v28 = v27[1];
    v30 = *(a1 + 16);

    if (v30 && (v75 = v28, v31 = sub_22F1229E8(v29, v28), v28 = v75, (v32 & 1) != 0) && (v33 = *(*(a1 + 56) + 8 * v31), (v34 = *(v33 + 16)) != 0))
    {
      v69 = v29;
      v66 = a1;
      v35 = v82;
      v36 = v33 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v78 = *(v83 + 16);
      v79 = v36;
      v78(v82);

      v37 = v68;
      if (v34 != 1)
      {
        v59 = 1;
        while (v59 < *(v33 + 16))
        {
          v60 = v83;
          (v78)(v37, v79 + *(v83 + 72) * v59, v6);
          sub_22F153050(&qword_2810AC708, MEMORY[0x277CC9578]);
          v61 = sub_22F740DB0();
          v62 = *(v60 + 8);
          if (v61)
          {
            v62(v35, v6);
            (*v77)(v35, v37, v6);
          }

          else
          {
            v62(v37, v6);
          }

          ++v59;
          v35 = v82;
          if (v34 == v59)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_37;
      }

LABEL_15:

      v38 = *v77;
      v39 = v67;
      (*v77)(v67, v35, v6);
      v38(v70, v39, v6);
      v40 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v40;
      v42 = v69;
      v43 = sub_22F1229E8(v69, v75);
      v45 = v40[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_38;
      }

      v49 = v44;
      if (v40[3] >= v48)
      {
        v21 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v43;
          sub_22F134004();
          v21 = v74;
          v43 = v63;
        }

        a1 = v66;
        v17 = v73;
      }

      else
      {
        sub_22F125428(v48, isUniquelyReferenced_nonNull_native);
        v43 = sub_22F1229E8(v42, v75);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_39;
        }

        a1 = v66;
        v17 = v73;
        v21 = v74;
      }

      v76 = v84;
      if (v49)
      {
        (*(v83 + 40))(v84[7] + *(v83 + 72) * v43, v70, v6);
      }

      else
      {
        sub_22F14D6BC(v43, v69, v75, v70, v84, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v51 = v28;
      v52 = v76;
      v53 = sub_22F1229E8(v29, v51);
      if (v54)
      {
        v55 = v53;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v84 = v52;
        v57 = v52;
        v24 = v72;
        v17 = v73;
        v21 = v74;
        if (!v56)
        {
          sub_22F134004();
          v21 = v74;
          v57 = v84;
        }

        v58 = *(v57[6] + 16 * v55 + 8);

        (*(v83 + 32))(v24, v57[7] + *(v83 + 72) * v55, v6);
        v76 = v57;
        sub_22F3B9858(v55, v57);

        v23 = 0;
      }

      else
      {

        v23 = 1;
        v24 = v72;
        v17 = v73;
        v21 = v74;
      }

      (*v71)(v24, v23, 1, v6);
      sub_22F120ADC(v24, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      return v76;
    }

    v20 = *(v17 + 8 * v25);
    ++v22;
    if (v20)
    {
      v22 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F1512AC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v14 = sub_22F740B90();
    __swift_project_value_buffer(v14, qword_2810B4D90);
    v15 = sub_22F740B70();
    v16 = sub_22F7415D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22F0FC000, v15, v16, "(extractFrequentlyUsedSongs) Empty list of songs", v17, 2u);
      MEMORY[0x2319033A0](v17, -1, -1);
    }

    return sub_22F15001C(MEMORY[0x277D84F90], &unk_27DAB0F80, &unk_22F771380);
  }

  v19[0] = sub_22F140724(a1);

  sub_22F145D38(v19);

  v4 = v19[0];
  if (!*(v19[0] + 2) || *(v19[0] + 4) < a2)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v5 = sub_22F740B90();
    __swift_project_value_buffer(v5, qword_2810B4D90);

    v6 = sub_22F740B70();
    v7 = sub_22F7415D0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19[0] = v9;
      *v8 = 134218242;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2080;
      v10 = MEMORY[0x231900D40](v4, MEMORY[0x277D83B88]);
      v12 = v11;

      v13 = sub_22F145F20(v10, v12, v19);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_22F0FC000, v6, v7, "(extractFrequentlyUsedSongs) Minimum threshold %ld not met allDateCounts = %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2319033A0](v9, -1, -1);
      MEMORY[0x2319033A0](v8, -1, -1);
    }

    else
    {
    }

    return sub_22F15001C(MEMORY[0x277D84F90], &unk_27DAB0F80, &unk_22F771380);
  }

  return sub_22F14D810(a1, a2);
}

uint64_t sub_22F151588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1515F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231901000](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22F10BBDC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22F151690(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_22F10BBDC(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_22F151734(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22F153050(&qword_2810A99B0, type metadata accessor for Song);
  result = MEMORY[0x231901000](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_22F1533A8(v13, v7, type metadata accessor for Song);
      sub_22F10C40C(v9, v7);
      sub_22F153410(v9, type metadata accessor for Song);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_22F151950(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_22F153050(a3, a4);
    result = MEMORY[0x231901000](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2319016F0](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_22F741A00();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_22F741A00();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F151AEC(uint64_t a1)
{
  v2 = sub_22F73F990();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22F153050(&qword_2810AC6D0, MEMORY[0x277CC99D0]);
  result = MEMORY[0x231901000](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_22F10D004(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22F151C88(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_22F741A00();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for ImportantEntitiesGraphInferenceMoment();
  v5 = sub_22F153050(&unk_2810AC6B0, type metadata accessor for ImportantEntitiesGraphInferenceMoment);
  result = MEMORY[0x231901000](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2319016F0](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_22F10D518(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_22F741A00();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F151E54(uint64_t a1)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  v2 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v91 = &v67 - v3;
  v86 = sub_22F73F690();
  v4 = *(v86 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v86);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v13 = type metadata accessor for SongSource();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v92 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v68 = (&v67 - v18);
  MEMORY[0x28223BE20](v19);
  v21 = (&v67 - v20);
  v22 = *(a1 + 16);
  v23 = sub_22F153050(&unk_2810AC258, type metadata accessor for SongSource);
  v76 = v13;
  v89 = MEMORY[0x231901000](v22, v13, v23);
  v71 = v22;
  if (v22)
  {
    v24 = 0;
    v69 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v88 = *(v14 + 72);
    v84 = (v4 + 48);
    v74 = (v4 + 32);
    v77 = (v4 + 8);
    v70 = v12;
    v85 = v21;
    while (1)
    {
      sub_22F1533A8(v69 + v88 * v24, v21, type metadata accessor for SongSource);
      v28 = *(v89 + 40);
      sub_22F742170();
      v29 = *v21;
      v90 = v21[1];
      sub_22F740D60();
      v30 = (v21 + v76[11]);
      v31 = v30[1];
      v72 = v24;
      if (v31)
      {
        v32 = *v30;
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v83 = v76[7];
      sub_22F13BA9C(v21 + v83, v12, &qword_27DAB0920, &qword_22F770B20);
      v33 = *v84;
      v34 = v86;
      if ((*v84)(v12, 1, v86) == 1)
      {
        sub_22F742190();
      }

      else
      {
        v35 = v75;
        (*v74)(v75, v12, v34);
        sub_22F742190();
        sub_22F153050(&qword_2810AC710, MEMORY[0x277CC9578]);
        sub_22F740D50();
        (*v77)(v35, v34);
      }

      v36 = v76;
      v37 = (v21 + v76[8]);
      v38 = *v37;
      v39 = v37[1];
      v82 = v33;
      v79 = v39;
      sub_22F742190();
      if (v39)
      {
        sub_22F740D60();
      }

      v73 = v38;
      v40 = (v21 + v36[12]);
      if (v40[1])
      {
        v41 = *v40;
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v42 = sub_22F7421D0();
      v43 = v89 + 56;
      v44 = -1 << *(v89 + 32);
      v45 = v42 & ~v44;
      if (((*(v89 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
LABEL_3:
        v25 = v89;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v85;
        v27 = v68;
        sub_22F1533A8(v85, v68, type metadata accessor for SongSource);
        v93 = v25;
        sub_22F1148BC(v27, v45, isUniquelyReferenced_nonNull_native);
        v89 = v93;
        goto LABEL_4;
      }

      v87 = ~v44;
      v78 = v89 + 56;
      while (1)
      {
        v46 = v92;
        sub_22F1533A8(*(v89 + 48) + v45 * v88, v92, type metadata accessor for SongSource);
        v47 = *v46 == v29 && v46[1] == v90;
        if (!v47 && (sub_22F742040() & 1) == 0)
        {
          goto LABEL_20;
        }

        v48 = v29;
        v49 = v36;
        v50 = *(v81 + 48);
        v51 = v91;
        sub_22F13BA9C(v92 + v36[7], v91, &qword_27DAB0920, &qword_22F770B20);
        sub_22F13BA9C(v85 + v83, v51 + v50, &qword_27DAB0920, &qword_22F770B20);
        v52 = v51;
        v53 = v86;
        v54 = v82;
        if (v82(v52, 1, v86) == 1)
        {
          if (v54((v91 + v50), 1, v53) != 1)
          {
            goto LABEL_19;
          }

          sub_22F120ADC(v91, &qword_27DAB0920, &qword_22F770B20);
          v36 = v49;
        }

        else
        {
          v55 = v91;
          sub_22F13BA9C(v91, v80, &qword_27DAB0920, &qword_22F770B20);
          if (v54((v55 + v50), 1, v53) == 1)
          {
            (*v77)(v80, v53);
            v43 = v78;
LABEL_19:
            sub_22F120ADC(v91, &unk_27DAB05B0, &unk_22F771430);
            v36 = v49;
LABEL_20:
            sub_22F153410(v92, type metadata accessor for SongSource);
            goto LABEL_21;
          }

          v56 = v91;
          v57 = v80;
          v58 = v75;
          (*v74)(v75, (v91 + v50), v53);
          sub_22F153050(&qword_2810AC700, MEMORY[0x277CC9578]);
          v59 = sub_22F740DE0();
          v60 = *v77;
          v61 = v58;
          v62 = v57;
          v36 = v76;
          (*v77)(v61, v53);
          v60(v62, v53);
          sub_22F120ADC(v56, &qword_27DAB0920, &qword_22F770B20);
          v29 = v48;
          v43 = v78;
          if ((v59 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v63 = (v92 + v36[8]);
        v64 = v63[1];
        if (v64)
        {
          break;
        }

        sub_22F153410(v92, type metadata accessor for SongSource);
        if (!v79)
        {
          goto LABEL_41;
        }

LABEL_21:
        v45 = (v45 + 1) & v87;
        if (((*(v43 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if (!v79)
      {
        goto LABEL_20;
      }

      if (*v63 != v73 || v64 != v79)
      {
        break;
      }

      sub_22F153410(v92, type metadata accessor for SongSource);
LABEL_41:
      v21 = v85;
LABEL_4:
      sub_22F153410(v21, type metadata accessor for SongSource);
      v24 = v72 + 1;
      v12 = v70;
      if (v72 + 1 == v71)
      {
        return v89;
      }
    }

    v65 = sub_22F742040();
    sub_22F153410(v92, type metadata accessor for SongSource);
    if (v65)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  return v89;
}

uint64_t sub_22F152874(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x231901000](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_22F152924(uint64_t a1)
{
  v2 = sub_22F7409A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22F153050(&qword_2810A94A0, MEMORY[0x277D1F370]);
  result = MEMORY[0x231901000](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_22F10EF00(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22F152AC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06B0, &qword_22F770BD0);
  v4 = sub_22F153140();
  result = MEMORY[0x231901000](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_22F10F204(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_22F152B8C(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    v12 = sub_22F120634(0, a2, a3);
    v13 = sub_22F11FA28(a4, a2, a3);
    result = MEMORY[0x231901000](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x2319016F0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22F741A00();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F152CE4(uint64_t a1)
{
  v2 = sub_22F73F690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22F153050(&qword_2810AC710, MEMORY[0x277CC9578]);
  result = MEMORY[0x231901000](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_22F10C984(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

void sub_22F152EB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = a3 >> 1;
  v15 = __OFSUB__(a3 >> 1, a2);
  v16 = (a3 >> 1) - a2;
  if (v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = sub_22F153050(&qword_2810A99B0, type metadata accessor for Song);
  v21[1] = MEMORY[0x231901000](v16, v6, v17);
  v18 = v14 - a2;
  if (v14 == a2)
  {
    return;
  }

  if (v14 <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v19 = *(v7 + 72);
  v20 = a1 + v19 * a2;
  do
  {
    sub_22F1533A8(v20, v10, type metadata accessor for Song);
    sub_22F10C40C(v13, v10);
    sub_22F153410(v13, type metadata accessor for Song);
    v20 += v19;
    --v18;
  }

  while (v18);
}

uint64_t sub_22F153050(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22F153098()
{
  result = qword_27DAB1120;
  if (!qword_27DAB1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1120);
  }

  return result;
}

unint64_t sub_22F1530EC()
{
  result = qword_27DAB1128;
  if (!qword_27DAB1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1128);
  }

  return result;
}

unint64_t sub_22F153140()
{
  result = qword_2810A9288;
  if (!qword_2810A9288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB06B0, &qword_22F770BD0);
    sub_22F11FA28(&qword_2810A8E90, &qword_2810A8EA0, 0x277CD9938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9288);
  }

  return result;
}

uint64_t sub_22F1531DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_22F741A00();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_22F14D770(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_22F1532EC()
{
  result = qword_27DAB12B8;
  if (!qword_27DAB12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB12B8);
  }

  return result;
}

uint64_t sub_22F153340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1533A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F153410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22F153470()
{
  result = qword_2810A93C8;
  if (!qword_2810A93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A93C8);
  }

  return result;
}

uint64_t sub_22F1534FC(int *a1)
{
  v3 = v1;
  sub_22F742170();
  v4 = a1[7];
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v3 + a1[8]));
  MEMORY[0x231901D30](*(v3 + a1[9]));
  return sub_22F7421D0();
}

uint64_t sub_22F1535BC(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = a2[7];
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v4 + a2[8]));
  return MEMORY[0x231901D30](*(v4 + a2[9]));
}

uint64_t sub_22F153668(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_22F742170();
  v5 = a2[7];
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v4 + a2[8]));
  MEMORY[0x231901D30](*(v4 + a2[9]));
  return sub_22F7421D0();
}

uint64_t sub_22F153798(uint64_t a1)
{
  sub_22F742170();
  v3 = *v1;
  v4 = v1[1];
  sub_22F740D60();
  v5 = v1 + *(a1 + 20);
  v6 = type metadata accessor for MomentGroundedLocation(0);
  v7 = v6[7];
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  sub_22F740D50();
  MEMORY[0x231901D30](*&v5[v6[8]]);
  MEMORY[0x231901D30](*&v5[v6[9]]);
  return sub_22F7421D0();
}

uint64_t sub_22F153874(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_22F740D60();
  v6 = v2 + *(a2 + 20);
  v7 = type metadata accessor for MomentGroundedLocation(0);
  v8 = v7[7];
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  sub_22F740D50();
  MEMORY[0x231901D30](*&v6[v7[8]]);
  return MEMORY[0x231901D30](*&v6[v7[9]]);
}

uint64_t sub_22F153938(uint64_t a1, uint64_t a2)
{
  sub_22F742170();
  v4 = *v2;
  v5 = v2[1];
  sub_22F740D60();
  v6 = v2 + *(a2 + 20);
  v7 = type metadata accessor for MomentGroundedLocation(0);
  v8 = v7[7];
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  sub_22F740D50();
  MEMORY[0x231901D30](*&v6[v7[8]]);
  MEMORY[0x231901D30](*&v6[v7[9]]);
  return sub_22F7421D0();
}

BOOL sub_22F153A10(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    v9 = *(a3 + 20);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = type metadata accessor for MomentGroundedLocation(0);
    v13 = v12[7];
    return (sub_22F73FEE0() & 1) != 0 && *&v10[v12[8]] == *&v11[v12[8]] && *&v10[v12[9]] == *&v11[v12[9]];
  }

  return result;
}

uint64_t MomentBasedLocationAssetsFilterProcessor.filterLocationsByMomentLocationHierarchy(for:progressReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v6 = MEMORY[0x231900370](a1, a2);
  sub_22F153B4C(v6, a2, a3);
}

void sub_22F153B4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v215 = a2;
  v214 = a3;
  v6 = type metadata accessor for NamedGroundedLocation(0);
  v212 = *(v6 - 8);
  v7 = *(v212 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v211 = &v207 - v11;
  v226 = type metadata accessor for MomentGroundedLocation(0);
  v12 = *(*(v226 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v226);
  v241 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v225 = &v207 - v16;
  MEMORY[0x28223BE20](v15);
  v240 = (&v207 - v17);
  v242 = sub_22F73FF10();
  v229 = *(v242 - 1);
  v18 = *(v229 + 8);
  v19 = MEMORY[0x28223BE20](v242);
  v239 = &v207 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v238 = (&v207 - v21);
  v22 = *(v3 + 8);
  v213 = *v3;
  v228 = v22;
  v23 = *(a1 + 64);
  v217 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v218 = a1;

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      if (!v26)
      {
        while (1)
        {
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v27)
          {

            v224 = v29[2];
            if (!v224)
            {

              sub_22F7407D0();
              return;
            }

            if (qword_2810A9400 != -1)
            {
              goto LABEL_103;
            }

            goto LABEL_24;
          }

          v26 = *(v217 + 8 * v30);
          ++v28;
          if (v26)
          {
            v28 = v30;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_61:
        v10 = &selRef_floatVector;
LABEL_62:
        v128 = objc_opt_self();
        v129 = sub_22F741160();

        v130 = [v128 businessNodesWithCIDINames:v129 inGraph:v241];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_22F771350;
        v132 = objc_opt_self();
        v133 = v130;
        *(v131 + 32) = [v132 momentOfBusiness];
        *(v131 + 40) = [objc_opt_self() addressOfMoment];
        v134 = objc_allocWithZone(MEMORY[0x277D22C00]);
        sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
        v135 = sub_22F741160();

        v136 = [v134 initWithSteps_];

        v137 = [objc_msgSend(v133 v10[72])];
        swift_unknownObjectRelease();
        v138 = [v137 concreteGraph];

        if (!v138)
        {
          goto LABEL_108;
        }

        v139 = v138;
        v140 = [v133 elementIdentifiers];
        v141 = [v139 adjacencyWithSources:v140 relation:v136];

        v142 = 0.55;
        v143 = v216;
        sub_22F741690();
        if (v143)
        {

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        v229 = v141;
        v230 = v139;
        v221 = v133;
        v144 = *(v218 + 16);
        v249 = MEMORY[0x277D84FA0];
        v250 = MEMORY[0x277D84FA0];
        v145 = 1 << *(v218 + 32);
        v146 = -1;
        if (v145 < 64)
        {
          v146 = ~(-1 << v145);
        }

        v147 = v146 & *(v218 + 64);
        v222 = ((v145 + 63) >> 6);
        v148 = v4 / v144;

        v149 = 0;
        *&v150 = 136315394;
        v220 = v150;
        *&v150 = 136315650;
        v207 = v150;
        v151 = v147;
        v10 = v242;
        v152 = v233;
        while (v151)
        {
          v153 = v149;
LABEL_73:
          v224 = v151;
          v223 = v153;
          v154 = __clz(__rbit64(v151)) | (v153 << 6);
          v155 = *(v218 + 56);
          v156 = *(v218 + 48) + 16 * v154;
          v157 = *(v156 + 8);
          v228 = *v156;
          v158 = *(v155 + 8 * v154);
          v159 = MEMORY[0x277D84FA0];
          v251 = MEMORY[0x277D84FA0];
          v160 = *(v158 + 16);
          v235 = v157;

          v225 = v158;
          if (v160)
          {
            v216 = 0;
            v161 = 0;
            v238 = v160;
            v236 = (v158 + v208);
            do
            {
              v162 = sub_22F73FEF0();
              v164 = v163;
              if (!*(v26 + 16))
              {
                goto LABEL_75;
              }

              v165 = v162;
              v166 = sub_22F1229E8(v162, v163);
              if ((v167 & 1) == 0)
              {
                goto LABEL_75;
              }

              v168 = *(*(v26 + 56) + 8 * v166);

              v170 = v216;
              v171 = sub_22F159E74(v169, v165, v164);
              v216 = v170;

              swift_bridgeObjectRelease_n();
              v172 = *(v171 + 16);
              if (v172)
              {
                v173 = v171 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
                v174 = *(v212 + 72);
                v175 = v210;
                v176 = v211;
                do
                {
                  sub_22F15A1F8(v173, v175, type metadata accessor for NamedGroundedLocation);
                  sub_22F10C080(v176, v175);
                  sub_22F15A260(v176, type metadata accessor for NamedGroundedLocation);
                  v173 += v174;
                  --v172;
                }

                while (v172);

                v26 = v237;
                v160 = v238;
              }

              else
              {
LABEL_75:
              }

              ++v161;
            }

            while (v161 != v160);
            v177 = v251;
            v178 = v216;
            v152 = v233;
          }

          else
          {
            v178 = 0;
            v177 = v159;
          }

          v251 = v213;
          v252 = v241;
          v247 = v232;
          v248 = v240;
          v245 = v231;
          v246 = v152;
          v243 = v229;
          v244 = v230;
          v251 = sub_22F155DF0(v177, &v247, &v245, &v243);

          sub_22F158794(&v251);
          v10 = v178;
          v179 = v235;
          if (v178)
          {
            goto LABEL_109;
          }

          v180 = v251;

          v181 = sub_22F740B70();
          v182 = sub_22F7415F0();

          v183 = os_log_type_enabled(v181, v182);
          v238 = v177;
          if (v183)
          {
            v184 = swift_slowAlloc();
            v185 = swift_slowAlloc();
            v251 = v185;
            *v184 = v220;
            *(v184 + 4) = sub_22F145F20(v228, v235, &v251);
            *(v184 + 12) = 2080;
            v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
            v187 = MEMORY[0x231900D40](v180, v186);
            v189 = sub_22F145F20(v187, v188, &v251);

            *(v184 + 14) = v189;
            _os_log_impl(&dword_22F0FC000, v181, v182, "Sorted exact matches for query token %s = %s", v184, 0x16u);
            swift_arrayDestroy();
            v179 = v235;
            MEMORY[0x2319033A0](v185, -1, -1);
            MEMORY[0x2319033A0](v184, -1, -1);
          }

          v251 = v213;
          v252 = v241;
          v190 = sub_22F156B1C(v180);

          v191 = sub_22F740B70();
          v192 = sub_22F7415F0();

          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            v251 = v194;
            *v193 = v220;
            *(v193 + 4) = sub_22F145F20(v228, v235, &v251);
            *(v193 + 12) = 2080;
            v247 = v190;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
            sub_22F15A2C0();
            v195 = sub_22F740DA0();
            v197 = sub_22F145F20(v195, v196, &v251);

            *(v193 + 14) = v197;
            _os_log_impl(&dword_22F0FC000, v191, v192, "Selected exact matches for query token %s = %s", v193, 0x16u);
            swift_arrayDestroy();
            v179 = v235;
            MEMORY[0x2319033A0](v194, -1, -1);
            MEMORY[0x2319033A0](v193, -1, -1);
          }

          v152 = v233;
          v251 = v213;
          v252 = v241;
          v247 = v232;
          v248 = v240;
          v245 = v231;
          v246 = v233;
          v243 = v229;
          v244 = v230;
          v198 = sub_22F156DBC(v238, v190, &v247, &v245, &v243);

          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          v199 = sub_22F740B70();
          v200 = sub_22F7415F0();

          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            v202 = swift_slowAlloc();
            v251 = v202;
            *v201 = v207;
            v203 = sub_22F145F20(v228, v179, &v251);

            *(v201 + 4) = v203;
            *(v201 + 12) = 2048;
            v204 = *(v190 + 16);

            *(v201 + 14) = v204;

            *(v201 + 22) = 2048;
            v205 = *(v198 + 2);

            *(v201 + 24) = v205;

            _os_log_impl(&dword_22F0FC000, v199, v200, "Query token %s:\n• Exact Matches: %ld\n• Partial Matches: %ld", v201, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v202);
            MEMORY[0x2319033A0](v202, -1, -1);
            v206 = v201;
            v152 = v233;
            MEMORY[0x2319033A0](v206, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v26 = v237;
          v27 = v226;
          sub_22F2F2D94(v190);

          sub_22F2F2D94(v198);

          sub_22F741690();
          v151 = (v224 - 1) & v224;
          v142 = v148 + v142;
          v149 = v223;
          v10 = v242;
        }

        while (1)
        {
          v153 = (v149 + 1);
          if (__OFADD__(v149, 1))
          {
            break;
          }

          if (v153 >= v222)
          {

            sub_22F7416A0();
            goto LABEL_98;
          }

          v151 = *(v217 + 8 * v153);
          ++v149;
          if (v151)
          {
            goto LABEL_73;
          }
        }

        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_10:
      v31 = (v28 << 9) | (8 * __clz(__rbit64(v26)));
      v32 = *(*(v218 + 56) + v31);
      v33 = *(v32 + 16);
      v34 = v29[2];
      v35 = &v33[v34];
      if (__OFADD__(v34, v33))
      {
        __break(1u);
LABEL_100:
        __break(1u);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        return;
      }

      v36 = *(*(v218 + 56) + v31);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v35 > v29[3] >> 1)
      {
        if (v34 <= v35)
        {
          v38 = &v33[v34];
        }

        else
        {
          v38 = v34;
        }

        v29 = sub_22F13E2B4(isUniquelyReferenced_nonNull_native, v38, 1, v29);
      }

      v26 &= v26 - 1;
      if (*(v32 + 16))
      {
        break;
      }

      if (v33)
      {
        goto LABEL_100;
      }
    }

    v39 = v29[2];
    if ((v29[3] >> 1) - v39 < v33)
    {
      break;
    }

    v40 = v29 + ((v229[80] + 32) & ~v229[80]) + *(v229 + 9) * v39;
    swift_arrayInitWithCopy();

    if (v33)
    {
      v41 = v29[2];
      v42 = __OFADD__(v41, v33);
      v43 = &v33[v41];
      if (v42)
      {
        goto LABEL_102;
      }

      v29[2] = v43;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  swift_once();
LABEL_24:
  v44 = sub_22F740B90();
  v45 = __swift_project_value_buffer(v44, qword_2810B4CE0);

  v209 = v45;
  v46 = sub_22F740B70();
  v27 = sub_22F7415F0();

  v47 = os_log_type_enabled(v46, v27);
  v227 = v29;
  v210 = v10;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    v247 = v49;
    *v48 = 136315138;
    v10 = v29[2];
    v51 = v29;
    v52 = MEMORY[0x277D84F90];
    if (v10)
    {
      v230 = v49;
      v231 = v48;
      LODWORD(v232) = v27;
      v233 = v46;
      v245 = MEMORY[0x277D84F90];
      sub_22F146454(0, v10, 0);
      v52 = v245;
      v236 = *(v229 + 2);
      v53 = v51 + ((v229[80] + 32) & ~v229[80]);
      v235 = *(v229 + 9);
      v237 = v229 + 16;
      v234 = (v229 + 8);
      do
      {
        v54 = v238;
        v55 = v242;
        v236(v238, v53, v242);
        v251 = sub_22F73FEF0();
        v252 = v56;
        MEMORY[0x231900B10](2128928, 0xE300000000000000);
        v243 = sub_22F73FF00();
        v57 = sub_22F742010();
        MEMORY[0x231900B10](v57);

        MEMORY[0x231900B10](2128928, 0xE300000000000000);
        v243 = sub_22F73FED0();
        v58 = sub_22F742010();
        MEMORY[0x231900B10](v58);

        v59 = v251;
        v60 = v252;
        (*v234)(v54, v55);
        v245 = v52;
        v62 = v52[2];
        v61 = v52[3];
        if (v62 >= v61 >> 1)
        {
          sub_22F146454((v61 > 1), v62 + 1, 1);
          v52 = v245;
        }

        v52[2] = v62 + 1;
        v63 = &v52[2 * v62];
        v63[4] = v59;
        v63[5] = v60;
        v53 += v235;
        v10 = (v10 - 1);
      }

      while (v10);
      v46 = v233;
      v27 = v232;
      v48 = v231;
      v50 = v230;
    }

    v64 = MEMORY[0x231900D40](v52, MEMORY[0x277D837D0]);
    v66 = v65;

    v67 = sub_22F145F20(v64, v66, &v247);

    *(v48 + 1) = v67;
    _os_log_impl(&dword_22F0FC000, v46, v27, "The location infos to process = %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x2319033A0](v50, -1, -1);
    MEMORY[0x2319033A0](v48, -1, -1);

    v29 = v227;
  }

  else
  {
  }

  v253 = MEMORY[0x277D84FA0];
  v223 = objc_opt_self();
  v222 = objc_opt_self();
  v68 = 0;
  v208 = (v229[80] + 32) & ~v229[80];
  v221 = v29 + v208;
  v238 = v229 + 16;
  *&v220 = v229 + 8;
  v26 = MEMORY[0x277D84F98];
  do
  {
    if (v68 >= v29[2])
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      sub_22F7407D0();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }

    v219 = *(v229 + 9);
    v237 = v26;
    v235 = *(v229 + 2);
    v70 = v239;
    (v235)(v239, &v221[v219 * v68], v242);
    v232 = objc_autoreleasePoolPush();
    v236 = sub_22F73FEF0();
    v72 = v71;
    v231 = sub_22F73FEC0();
    v230 = v73;
    v234 = sub_22F73FF00();
    v233 = sub_22F73FED0();
    sub_22F73FEB0();
    v74 = sub_22F741410();

    v75 = [v223 momentNodesForUUIDs:v74 inGraph:v228];

    v76 = [v75 addressNodes];
    v10 = [v222 edgesFromNodes:v75 toNodes:v76];
    v77 = [(SEL *)v10 universalDateIntervals];
    sub_22F73F090();
    sub_22F15A438(&unk_2810AC730, MEMORY[0x277CC88A8]);
    v78 = sub_22F741420();

    v79 = v226;
    v80 = v240;
    (v235)(v240 + *(v226 + 28), v70, v242);
    v81 = v237;
    *v80 = v76;
    v80[1] = v75;
    v80[2] = v78;
    *(v80 + *(v79 + 32)) = v234;
    *(v80 + *(v79 + 36)) = v233;
    v82 = v80;
    v83 = v236;
    sub_22F15A1F8(v82, v241, type metadata accessor for MomentGroundedLocation);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v251 = v81;
    v27 = sub_22F1229E8(v83, v72);
    v86 = v81[2];
    v87 = (v85 & 1) == 0;
    v88 = v86 + v87;
    if (__OFADD__(v86, v87))
    {
      goto LABEL_97;
    }

    v89 = v85;
    if (v81[3] >= v88)
    {
      if ((v84 & 1) == 0)
      {
        sub_22F134188();
      }
    }

    else
    {
      sub_22F1256DC(v88, v84);
      v90 = sub_22F1229E8(v83, v72);
      if ((v89 & 1) != (v91 & 1))
      {
        goto LABEL_107;
      }

      v27 = v90;
    }

    v92 = v232;
    v26 = v251;
    if (v89)
    {
    }

    else
    {
      sub_22F1534CC(v27, v83, v72, MEMORY[0x277D84FA0], v251);
    }

    ++v68;
    v69 = *(v26 + 56) + 8 * v27;
    v27 = v225;
    sub_22F10BD2C(v225, v241);
    sub_22F15A260(v27, type metadata accessor for MomentGroundedLocation);
    sub_22F10BBDC(&v251, v231, v230);

    sub_22F15A260(v240, type metadata accessor for MomentGroundedLocation);
    objc_autoreleasePoolPop(v92);
    (*v220)(v239, v242);
    v29 = v227;
  }

  while (v224 != v68);
  v93 = v216;
  sub_22F741690();
  if (v93)
  {

    return;
  }

  v251 = v213;
  v252 = v228;
  v94 = v253;

  v10 = sub_22F155AB4(v95);
  v96 = *(v94 + 16);
  if (v96)
  {
    v97 = sub_22F10B348(*(v94 + 16), 0);
    v98 = sub_22F11A438(&v251, v97 + 4, v96, v94);
    sub_22F1534EC();
    if (v98 != v96)
    {
      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
LABEL_51:
  }

  v99 = objc_opt_self();
  v100 = sub_22F741160();

  v101 = v228;
  v102 = [v99 locationNodesWithCIDINames:v100 inGraph:v101];

  v103 = objc_allocWithZone(PGGraphNamedLocationNodeCollection);
  v242 = v10;
  v104 = [v103 initWithGraph:v101 elementIdentifiers:v10];
  v241 = v101;

  v105 = [v102 collectionByFormingUnionWith_];
  sub_22F120634(0, &qword_2810A9020, off_27887B138);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v107 = v105;
  v108 = [ObjCClassFromMetadata addressOfLocation];
  v109 = [objc_msgSend(v107 graph)];
  swift_unknownObjectRelease();
  v110 = [v109 concreteGraph];

  if (!v110)
  {
    goto LABEL_108;
  }

  v111 = [v107 elementIdentifiers];
  v10 = [v110 adjacencyWithSources:v111 relation:v108];

  sub_22F741690();
  v240 = v110;
  v234 = v107;
  v112 = *(v94 + 16);
  v237 = v26;
  v239 = v94;
  if (v112)
  {
    v113 = sub_22F10B348(v112, 0);
    v114 = sub_22F11A438(&v251, v113 + 4, v112, v94);

    sub_22F1534EC();
    if (v114 != v112)
    {
      goto LABEL_105;
    }

    v26 = v237;
    v94 = v239;
  }

  v115 = objc_opt_self();
  v116 = sub_22F741160();

  v117 = [v115 areaNodesWithCIDINames:v116 inGraph:v241];

  v118 = [v117 nonBlockedAreaNodes];
  v119 = objc_opt_self();
  v27 = v118;
  v120 = [v119 addressOfArea];
  v121 = [objc_msgSend(v27 graph)];
  swift_unknownObjectRelease();
  v122 = [v121 concreteGraph];

  if (v122)
  {
    v123 = [v27 elementIdentifiers];
    v124 = [v122 adjacencyWithSources:v123 relation:v120];

    v4 = 0.45;
    sub_22F741690();
    v216 = 0;
    v231 = v124;
    v232 = v10;
    v125 = *(v94 + 16);
    v226 = v27;
    v233 = v122;
    if (!v125)
    {
      goto LABEL_61;
    }

    v126 = sub_22F10B348(v125, 0);
    v127 = sub_22F11A438(&v251, v126 + 4, v125, v94);

    sub_22F1534EC();
    v10 = &selRef_floatVector;
    if (v127 == v125)
    {
      v26 = v237;
      v27 = v226;
      goto LABEL_62;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    sub_22F7420C0();
    __break(1u);
  }

LABEL_108:
  sub_22F741D40();
  __break(1u);
LABEL_109:

  __break(1u);
}

uint64_t sub_22F155A20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22F155A68(uint64_t result, int a2, int a3)
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

uint64_t sub_22F155AB4(uint64_t a1)
{
  v24 = a1;
  v2 = sub_22F73F7C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = *(v1 + 8);
  v10 = [objc_opt_self() currentLocale];
  sub_22F73F740();

  sub_22F120634(0, &qword_2810A8F30, off_27887AFA8);
  v11 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v12 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v22 = @"name";
  v23 = v2;
  (*(v3 + 16))(v6, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v13, v6, v2);
  *(v15 + v14) = v24;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22F15A5A8;
  *(v16 + 24) = v15;
  aBlock[4] = sub_22F15A678;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2136B4;
  aBlock[3] = &block_descriptor_68;
  v17 = _Block_copy(aBlock);
  v18 = v22;

  v19 = v12;

  [v11 enumerateStringPropertyValuesForKey:v18 withBlock:v17];
  _Block_release(v17);

  (*(v3 + 8))(v8, v23);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if ((v3 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F155DF0(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0F58, &qword_22F771310);
  v111 = *(v112 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v124 = &v104 - v10;
  v131 = sub_22F740410();
  v11 = *(v131 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v131);
  v121 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MomentGroundedLocation(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NamedGroundedLocation(0);
  v128 = *(v18 - 8);
  v129 = v18;
  v19 = *(v128 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v127 = &v104 - v21;
  v22 = *(a2 + 8);
  v126 = *a2;
  v125 = v22;
  v23 = a3[1];
  v117 = *a3;
  v116 = v23;
  v24 = a4[1];
  v115 = *a4;
  v114 = v24;
  v25 = a1;
  v120 = *v4;
  v27 = v26;
  v28 = a1 + 56;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a1 + 56);
  v119 = *MEMORY[0x277D3C360];
  v118 = (v11 + 104);
  v132 = &v141;
  v105 = (v11 + 16);
  v104 = (v11 + 8);
  v32 = (v29 + 63) >> 6;
  v33 = v28;
  v34 = v17;

  v35 = 0;
  v133 = MEMORY[0x277D84F90];
  v113 = v25;
  v110 = v14;
  v109 = v34;
  v108 = v27;
  v107 = v33;
  v106 = v32;
  while (1)
  {
    if (v31)
    {
      goto LABEL_11;
    }

    do
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_48;
      }

      if (v37 >= v32)
      {

        v102 = sub_22F160E38(v133);

        return v102;
      }

      v31 = *(v33 + 8 * v37);
      ++v35;
    }

    while (!v31);
    v35 = v37;
LABEL_11:
    v135 = v31;
    v38 = __clz(__rbit64(v31)) | (v35 << 6);
    v39 = v127;
    sub_22F15A1F8(*(v25 + 48) + *(v128 + 72) * v38, v127, type metadata accessor for NamedGroundedLocation);
    sub_22F15A324(v39, v27);
    v134 = objc_autoreleasePoolPush();
    v40 = v27[1];
    v130 = *v27;
    sub_22F15A1F8(v27 + *(v129 + 20), v34, type metadata accessor for MomentGroundedLocation);
    if (*(v34 + *(v14 + 32)) != 4)
    {
      v36 = v135;
      goto LABEL_5;
    }

    v123 = v35;
    v41 = *v34;
    v42 = objc_allocWithZone(PGGraphNamedLocationNodeCollection);

    v43 = [v126 sources];
    v44 = [v42 initWithGraph:v125 elementIdentifiers:v43];

    v45 = [v44 array];
    sub_22F120634(0, &qword_2810A9020, off_27887B138);
    v46 = sub_22F741180();

    if (v46 >> 62)
    {
      v47 = sub_22F741A00();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v122 = v40;
    if (v47)
    {
      v48 = 0;
      v137 = v46 & 0xFFFFFFFFFFFFFF8;
      v138 = v46 & 0xC000000000000001;
      v49 = MEMORY[0x277D84F98];
      v136 = v46;
      while (1)
      {
        if (v138)
        {
          v52 = MEMORY[0x2319016F0](v48, v46);
        }

        else
        {
          if (v48 >= *(v137 + 16))
          {
            goto LABEL_46;
          }

          v52 = *(v46 + 8 * v48 + 32);
        }

        v53 = v52;
        v54 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v55 = v47;
        v56 = v41;
        v57 = [v52 identifier];
        v58 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v49;
        v61 = sub_22F122B68(v57);
        v62 = v49[2];
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_47;
        }

        v65 = v60;
        if (v49[3] >= v64)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v49 = aBlock;
            if (v60)
            {
              goto LABEL_16;
            }
          }

          else
          {
            sub_22F13402C();
            v49 = aBlock;
            if (v65)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          sub_22F125450(v64, isUniquelyReferenced_nonNull_native);
          v66 = sub_22F122B68(v57);
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_53;
          }

          v61 = v66;
          v49 = aBlock;
          if (v65)
          {
LABEL_16:
            v50 = v49[7];
            v51 = *(v50 + 8 * v61);
            *(v50 + 8 * v61) = v58;

            goto LABEL_17;
          }
        }

        v49[(v61 >> 6) + 8] |= 1 << v61;
        *(v49[6] + 8 * v61) = v57;
        *(v49[7] + 8 * v61) = v58;

        v68 = v49[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_49;
        }

        v49[2] = v70;
LABEL_17:
        ++v48;
        v47 = v55;
        v41 = v56;
        v46 = v136;
        if (v54 == v55)
        {
          goto LABEL_35;
        }
      }
    }

    v49 = MEMORY[0x277D84F98];
LABEL_35:

    v71 = v121;
    v72 = (*v118)(v121, v119, v131);
    MEMORY[0x28223BE20](v72);
    *(&v104 - 6) = v41;
    *(&v104 - 5) = v49;
    *(&v104 - 4) = v71;
    *(&v104 - 3) = v120;
    v73 = swift_allocObject();
    v73[2] = sub_22F15A97C;
    v73[3] = &v104 - 8;
    v74 = v126;
    v75 = v41;
    v76 = v125;
    v73[4] = v126;
    v73[5] = v76;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_22F15A980;
    *(v77 + 24) = v73;
    v143 = sub_22F15A9A4;
    v144 = v77;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_22F107F34;
    v142 = &block_descriptor_35;
    v78 = _Block_copy(&aBlock);
    v79 = v74;
    swift_unknownObjectRetain();

    [v79 enumerateTargetsBySourceWith_];
    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if (v78)
    {
      goto LABEL_50;
    }

    MEMORY[0x28223BE20](v80);
    *(&v104 - 2) = v75;
    *(&v104 - 1) = v71;
    v81 = swift_allocObject();
    v81[2] = sub_22F15A9A8;
    v81[3] = &v104 - 4;
    v82 = v117;
    v83 = v116;
    v81[4] = v117;
    v81[5] = v83;
    v84 = swift_allocObject();
    *(v84 + 16) = sub_22F15A984;
    *(v84 + 24) = v81;
    v143 = sub_22F15A9A4;
    v144 = v84;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_22F107F34;
    v142 = &block_descriptor_47;
    v85 = _Block_copy(&aBlock);
    v86 = v82;
    swift_unknownObjectRetain();

    [v86 enumerateTargetsBySourceWith_];
    _Block_release(v85);
    LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

    if (v85)
    {
      break;
    }

    MEMORY[0x28223BE20](v87);
    *(&v104 - 2) = v75;
    *(&v104 - 1) = v71;
    v88 = swift_allocObject();
    v88[2] = sub_22F15A9AC;
    v88[3] = &v104 - 4;
    v89 = v115;
    v90 = v114;
    v88[4] = v115;
    v88[5] = v90;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_22F15A988;
    *(v91 + 24) = v88;
    v143 = sub_22F15A9A4;
    v144 = v91;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_22F107F34;
    v142 = &block_descriptor_59;
    v92 = _Block_copy(&aBlock);
    v93 = v89;
    swift_unknownObjectRetain();

    [v93 enumerateTargetsBySourceWith_];
    _Block_release(v92);
    LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

    if (v92)
    {
      goto LABEL_52;
    }

    v14 = v110;
    v34 = v109;
    v94 = *(v109 + *(v110 + 36));
    v95 = v124;
    v96 = (v124 + *(v112 + 48));
    v97 = *(v112 + 64);
    (*v105)(v124, v71, v131);
    v98 = v122;
    *v96 = v130;
    v96[1] = v98;
    *(v95 + v97) = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_22F13E184(0, v133[2] + 1, 1, v133);
    }

    v33 = v107;
    v32 = v106;
    v36 = v135;
    v35 = v123;
    v100 = v133[2];
    v99 = v133[3];
    if (v100 >= v99 >> 1)
    {
      v133 = sub_22F13E184(v99 > 1, v100 + 1, 1, v133);
    }

    (*v104)(v71, v131);
    v101 = v133;
    v133[2] = v100 + 1;
    sub_22F1207AC(v124, v101 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v100, &qword_27DAB0F58, &qword_22F771310);
    v25 = v113;
    v27 = v108;
LABEL_5:
    v31 = (v36 - 1) & v36;
    sub_22F15A260(v34, type metadata accessor for MomentGroundedLocation);
    objc_autoreleasePoolPop(v134);
    sub_22F15A260(v27, type metadata accessor for NamedGroundedLocation);
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  type metadata accessor for KGElementIdentifier(0);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F156B1C(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = *(a1 + 16);
  if (v8)
  {
    v23 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v25 = &v22 - v7;
    result = sub_22F15A480(v23, &v22 - v7);
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_3:
    v22 = v11;
    v12 = v10;
    while (v12 < v8)
    {
      result = sub_22F15A480(v23 + *(v2 + 72) * v12, v6);
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_18;
      }

      v13 = &v6[*(v24 + 48)];
      v14 = *v13;
      v15 = *(v13 + 1);
      sub_22F740410();
      sub_22F15A438(&qword_27DAB1428, MEMORY[0x277D3C3A0]);
      sub_22F7410F0();
      sub_22F7410F0();
      if (v27 == v26)
      {

        sub_22F15A4F0(v6);
        v16 = v22;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_22F13E1A8(0, *(v16 + 16) + 1, 1, v16);
          v16 = result;
        }

        v17 = v16;
        v18 = *(v16 + 16);
        v19 = v17;
        v20 = *(v17 + 24);
        if (v18 >= v20 >> 1)
        {
          result = sub_22F13E1A8((v20 > 1), v18 + 1, 1, v19);
          v19 = result;
        }

        *(v19 + 16) = v18 + 1;
        v21 = v19 + 16 * v18;
        v11 = v19;
        *(v21 + 32) = v14;
        *(v21 + 40) = v15;
        if (v10 == v8)
        {
          goto LABEL_14;
        }

        goto LABEL_3;
      }

      result = sub_22F15A4F0(v6);
      ++v12;
      if (v10 == v8)
      {
        v11 = v22;
LABEL_14:
        sub_22F15A4F0(v25);
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

char *sub_22F156DBC(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void **a5)
{
  v177 = a2;
  v171 = sub_22F740410();
  v10 = *(v171 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v171);
  v149 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v145 = &v144 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v154 = &v144 - v17;
  MEMORY[0x28223BE20](v16);
  v173 = &v144 - v18;
  v169 = type metadata accessor for MomentGroundedLocation(0);
  v19 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v21 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NamedGroundedLocation(0);
  v175 = *(v22 - 8);
  v176 = v22;
  v23 = *(v175 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v180 = (&v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v174 = &v144 - v26;
  v27 = *(a3 + 8);
  v168 = *a3;
  v167 = v27;
  v28 = a4[1];
  v159 = *a4;
  v158 = v28;
  v29 = v21;
  v30 = a5[1];
  v157 = *a5;
  v156 = v30;
  v161 = *v5;
  v31 = a1 + 56;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(a1 + 56);
  v35 = (v32 + 63) >> 6;
  v166 = *MEMORY[0x277D3C360];
  v165 = (v10 + 104);
  v160 = &v187;
  v164 = (v10 + 8);
  v148 = *MEMORY[0x277D3C378];
  v146 = *MEMORY[0x277D3C390];
  v150 = (v10 + 16);

  v36 = 0;
  v181 = 0;
  v163 = MEMORY[0x277D84F90];
  *&v37 = 136643075;
  v147 = v37;
  *&v37 = 136315394;
  v144 = v37;
  v155 = a1;
  v153 = v29;
  v152 = a1 + 56;
  v151 = v35;
  if (v34)
  {
    while (1)
    {
LABEL_8:
      v178 = v36;
      v179 = v34;
      v39 = __clz(__rbit64(v34)) | (v36 << 6);
      v40 = v174;
      sub_22F15A1F8(*(a1 + 48) + *(v175 + 72) * v39, v174, type metadata accessor for NamedGroundedLocation);
      v41 = v40;
      v42 = v180;
      sub_22F15A324(v41, v180);
      v43 = objc_autoreleasePoolPush();
      v44 = *v42;
      v45 = v42[1];
      v46 = sub_22F15A1F8(v42 + *(v176 + 20), v29, type metadata accessor for MomentGroundedLocation);
      v172 = v44;
      aBlock = v44;
      v186 = v45;
      MEMORY[0x28223BE20](v46);
      *(&v144 - 2) = &aBlock;

      v47 = v181;
      v48 = sub_22F1C0E04(sub_22F15A388, (&v144 - 2), v177);
      v181 = v47;
      if ((v48 & 1) != 0 || (v170 = v45, *(v29 + *(v169 + 32)) == 4))
      {

        v49 = v179;
        goto LABEL_46;
      }

      v162 = v43;
      v50 = *v29;
      v51 = objc_allocWithZone(PGGraphNamedLocationNodeCollection);
      v52 = [v168 sources];
      v53 = [v51 initWithGraph:v167 elementIdentifiers:v52];

      v54 = [v53 array];
      sub_22F120634(0, &qword_2810A9020, off_27887B138);
      v55 = sub_22F741180();

      if (!(v55 >> 62))
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v56)
        {
          break;
        }

        goto LABEL_33;
      }

      v56 = sub_22F741A00();
      if (v56)
      {
        break;
      }

LABEL_33:
      v58 = MEMORY[0x277D84F98];
LABEL_34:

      v78 = v173;
      v184 = *v165;
      v79 = (v184)(v173, v166, v171);
      MEMORY[0x28223BE20](v79);
      *(&v144 - 6) = v50;
      *(&v144 - 5) = v58;
      *(&v144 - 4) = v78;
      *(&v144 - 24) = v161;
      v80 = swift_allocObject();
      v80[2] = sub_22F15A3A8;
      v80[3] = &v144 - 4;
      v81 = v168;
      v82 = v167;
      v80[4] = v168;
      v80[5] = v82;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_22F15A3AC;
      *(v83 + 24) = v80;
      v189 = sub_22F15A3B8;
      v190 = v83;
      aBlock = MEMORY[0x277D85DD0];
      v186 = 1107296256;
      v187 = sub_22F107F34;
      v188 = &block_descriptor;
      v84 = _Block_copy(&aBlock);
      v85 = v81;
      swift_unknownObjectRetain();

      [v85 enumerateTargetsBySourceWith_];
      _Block_release(v84);
      LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

      if (v84)
      {
        goto LABEL_64;
      }

      MEMORY[0x28223BE20](v86);
      v87 = v173;
      *(&v144 - 2) = v50;
      *(&v144 - 1) = v87;
      v88 = swift_allocObject();
      v88[2] = sub_22F15A3D8;
      v88[3] = &v144 - 2;
      v89 = v159;
      v90 = v158;
      v88[4] = v159;
      v88[5] = v90;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_22F15A3FC;
      *(v91 + 24) = v88;
      v189 = sub_22F15A9A4;
      v190 = v91;
      aBlock = MEMORY[0x277D85DD0];
      v186 = 1107296256;
      v187 = sub_22F107F34;
      v188 = &block_descriptor_13;
      v92 = _Block_copy(&aBlock);
      v93 = v89;
      swift_unknownObjectRetain();

      [v93 enumerateTargetsBySourceWith_];
      _Block_release(v92);
      LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

      if (v92)
      {
        goto LABEL_65;
      }

      MEMORY[0x28223BE20](v94);
      v95 = v173;
      *(&v144 - 2) = v50;
      *(&v144 - 1) = v95;
      v96 = swift_allocObject();
      v96[2] = sub_22F15A408;
      v96[3] = &v144 - 2;
      v97 = v157;
      v98 = v156;
      v96[4] = v157;
      v96[5] = v98;
      v99 = swift_allocObject();
      *(v99 + 16) = sub_22F15A42C;
      *(v99 + 24) = v96;
      v189 = sub_22F15A9A4;
      v190 = v99;
      aBlock = MEMORY[0x277D85DD0];
      v186 = 1107296256;
      v187 = sub_22F107F34;
      v188 = &block_descriptor_23;
      v100 = _Block_copy(&aBlock);
      v101 = v97;
      swift_unknownObjectRetain();

      [v101 enumerateTargetsBySourceWith_];
      _Block_release(v100);
      LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

      if (v100)
      {
        goto LABEL_66;
      }

      v102 = v154;
      v103 = v171;
      v104 = v184;
      v184(v154, v166, v171);
      sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0]);
      v105 = v173;
      v106 = sub_22F740DE0();
      v107 = *v164;
      (*v164)(v102, v103);
      if (v106 & 1) != 0 || (v104(v102, v148, v103), v108 = sub_22F740DE0(), v107(v102, v103), (v108) || (v104(v102, v146, v103), v109 = sub_22F740DE0(), v107(v102, v103), (v109))
      {
        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v110 = sub_22F740B90();
        __swift_project_value_buffer(v110, qword_2810B4CE0);
        v111 = v149;
        (*v150)(v149, v105, v103);
        v112 = v170;

        v113 = v103;
        v114 = sub_22F740B70();
        v115 = sub_22F7415F0();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          aBlock = v117;
          *v116 = v147;
          v118 = sub_22F145F20(v172, v112, &aBlock);

          *(v116 + 4) = v118;
          *(v116 + 12) = 2080;
          sub_22F15A438(&qword_27DAB1418, MEMORY[0x277D3C3A0]);
          v119 = sub_22F742010();
          v121 = v120;
          v107(v111, v171);
          v122 = sub_22F145F20(v119, v121, &aBlock);

          *(v116 + 14) = v122;
          _os_log_impl(&dword_22F0FC000, v114, v115, "Filtering out grounded location with name '%{sensitive}s' because it's a %s", v116, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v117, -1, -1);
          MEMORY[0x2319033A0](v116, -1, -1);

          v107(v105, v171);
        }

        else
        {

          v107(v111, v113);
          v107(v105, v113);
        }

        a1 = v155;
        v29 = v153;
        v31 = v152;
        v35 = v151;
        v49 = v179;
        v43 = v162;
      }

      else
      {
        v123 = v145;
        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v124 = sub_22F740B90();
        __swift_project_value_buffer(v124, qword_2810B4CE0);
        (*v150)(v123, v105, v103);
        v125 = v170;

        v126 = v103;
        v127 = sub_22F740B70();
        v128 = sub_22F7415F0();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          aBlock = v130;
          *v129 = v144;
          *(v129 + 4) = sub_22F145F20(v172, v125, &aBlock);
          *(v129 + 12) = 2080;
          sub_22F15A438(&qword_27DAB1418, MEMORY[0x277D3C3A0]);
          v131 = sub_22F742010();
          v132 = v123;
          v134 = v133;
          v107(v132, v171);
          v135 = sub_22F145F20(v131, v134, &aBlock);

          *(v129 + 14) = v135;
          _os_log_impl(&dword_22F0FC000, v127, v128, "%s matches with %s level", v129, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v130, -1, -1);
          MEMORY[0x2319033A0](v129, -1, -1);
        }

        else
        {

          v107(v123, v126);
        }

        a1 = v155;
        v31 = v152;
        v35 = v151;
        v43 = v162;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137 = v173;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v163 = sub_22F13E1A8(0, *(v163 + 2) + 1, 1, v163);
        }

        v139 = *(v163 + 2);
        v138 = *(v163 + 3);
        if (v139 >= v138 >> 1)
        {
          v163 = sub_22F13E1A8((v138 > 1), v139 + 1, 1, v163);
        }

        v107(v137, v171);
        v140 = v163;
        *(v163 + 2) = v139 + 1;
        v141 = &v140[16 * v139];
        v142 = v170;
        *(v141 + 4) = v172;
        *(v141 + 5) = v142;
        v29 = v153;
        v49 = v179;
      }

LABEL_46:
      v36 = v178;
      v34 = (v49 - 1) & v49;
      sub_22F15A260(v29, type metadata accessor for MomentGroundedLocation);
      objc_autoreleasePoolPop(v43);
      sub_22F15A260(v180, type metadata accessor for NamedGroundedLocation);
      if (!v34)
      {
        goto LABEL_4;
      }
    }

    v57 = 0;
    v183 = v55 & 0xFFFFFFFFFFFFFF8;
    v184 = (v55 & 0xC000000000000001);
    v58 = MEMORY[0x277D84F98];
    v182 = v50;
    while (1)
    {
      if (v184)
      {
        v61 = MEMORY[0x2319016F0](v57, v55);
      }

      else
      {
        if (v57 >= *(v183 + 16))
        {
          goto LABEL_61;
        }

        v61 = *(v55 + 8 * v57 + 32);
      }

      v62 = v61;
      v63 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_60;
      }

      v64 = [v61 identifier];
      v65 = v62;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v58;
      v68 = sub_22F122B68(v64);
      v69 = v58[2];
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_62;
      }

      v72 = v67;
      if (v58[3] >= v71)
      {
        if (v66)
        {
          v58 = aBlock;
          if (v67)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_22F13402C();
          v58 = aBlock;
          if (v72)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_22F125450(v71, v66);
        v73 = sub_22F122B68(v64);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_67;
        }

        v68 = v73;
        v58 = aBlock;
        if (v72)
        {
LABEL_14:
          v59 = v58[7];
          v60 = *(v59 + 8 * v68);
          *(v59 + 8 * v68) = v65;

          goto LABEL_15;
        }
      }

      v58[(v68 >> 6) + 8] |= 1 << v68;
      *(v58[6] + 8 * v68) = v64;
      *(v58[7] + 8 * v68) = v65;

      v75 = v58[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_63;
      }

      v58[2] = v77;
LABEL_15:
      ++v57;
      v50 = v182;
      if (v63 == v56)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_4:
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      return v163;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_8;
    }
  }

  __break(1u);
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
LABEL_67:
  type metadata accessor for KGElementIdentifier(0);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F1580F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22F740410();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  result = [a2 intersectsCollection_];
  if (result)
  {
    v23 = [a1 elementIdentifiers];
    v24 = [v23 firstElement];

    result = sub_22F741770();
    if (result)
    {
      if (*(a5 + 16))
      {
        result = sub_22F122B68(v24);
        if (v25)
        {
          v26 = *(*(a5 + 56) + 8 * result);
          (*(v12 + 16))(v19, a6, v11);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v27 = MEMORY[0x277D3C398];
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v27 = MEMORY[0x277D3C380];
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v27 = MEMORY[0x277D3C368];
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v27 = MEMORY[0x277D3C358];
                }

                else
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v27 = MEMORY[0x277D3C350];
                  }

                  else
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v27 = MEMORY[0x277D3C388];
                    }

                    else
                    {
                      objc_opt_self();
                      if (swift_dynamicCastObjCClass())
                      {
                        v27 = MEMORY[0x277D3C370];
                      }

                      else
                      {
                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v27 = MEMORY[0x277D3C390];
                        }

                        else
                        {
                          objc_opt_self();
                          v28 = swift_dynamicCastObjCClass();
                          v27 = MEMORY[0x277D3C378];
                          if (!v28)
                          {
                            v27 = MEMORY[0x277D3C360];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          (*(v12 + 104))(v16, *v27, v11);
          sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0]);
          v29 = sub_22F740DC0();
          v30 = (v29 & 1) == 0;
          if (v29)
          {
            v31 = v19;
          }

          else
          {
            v31 = v16;
          }

          if (v30)
          {
            v32 = v19;
          }

          else
          {
            v32 = v16;
          }

          (*(v12 + 8))(v31, v11);
          (*(v12 + 32))(v21, v32, v11);
          return (*(v12 + 40))(a6, v21, v11);
        }
      }
    }
  }

  return result;
}

id sub_22F1584D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v10 = sub_22F740410();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  result = [a2 intersectsCollection_];
  if (result)
  {
    (*(v11 + 16))(v18, a5, v10);
    (*(v11 + 104))(v15, *a6, v10);
    sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0]);
    v22 = sub_22F740DC0();
    v23 = (v22 & 1) == 0;
    if (v22)
    {
      v24 = v18;
    }

    else
    {
      v24 = v15;
    }

    if (v23)
    {
      v15 = v18;
    }

    (*(v11 + 8))(v24, v10);
    (*(v11 + 32))(v20, v15, v10);
    return (*(v11 + 40))(a5, v20, v10);
  }

  return result;
}

id sub_22F1586DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = sub_22F73F720();
  if (v11)
  {
    v12 = sub_22F740EA0();
    v14 = v13;

    v15 = sub_22F15E910(v12, v14, a6);

    if (v15)
    {

      return [a7 addIdentifier_];
    }
  }

  return result;
}

uint64_t sub_22F158794(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6490(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F1588C0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22F158888(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1588C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F158CF0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F158A04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F158A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    sub_22F740410();
    v19 = *(v8 + 72);
    v20 = v18 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      sub_22F15A480(v22, v17);
      sub_22F15A480(v24, v14);
      sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0]);
      if (sub_22F740DE0())
      {
        v25 = *&v14[*(v38 + 64)] < *&v17[*(v38 + 64)];
      }

      else
      {
        sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0]);
        v25 = sub_22F740DB0();
      }

      sub_22F15A4F0(v14);
      result = sub_22F15A4F0(v17);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_22F1207AC(v22, v37, &qword_27DAB13A0, &unk_22F7718B0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22F1207AC(v26, v24, &qword_27DAB13A0, &unk_22F7718B0);
      v24 += v35;
      v22 += v35;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F158CF0(int64_t *a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v6 = v5;
  v124 = a1;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v133 = *(v140 - 8);
  v9 = *(v133 + 64);
  v10 = MEMORY[0x28223BE20](v140);
  v128 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v139 = &v118 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v118 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v118 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v121 = &v118 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v120 = &v118 - v24;
  result = MEMORY[0x28223BE20](v23);
  v119 = &v118 - v27;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    a4 = *v124;
    if (!*v124)
    {
      goto LABEL_142;
    }

    v4 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_136:
      result = sub_22F3F5F98(v4);
    }

    v141 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v113 = *a3;
        if (!*a3)
        {
          goto LABEL_140;
        }

        v114 = a3;
        a3 = *(result + 16 * v4);
        v115 = result;
        v116 = *(result + 16 * (v4 - 1) + 40);
        sub_22F15985C(v113 + *(v133 + 72) * a3, v113 + *(v133 + 72) * *(result + 16 * (v4 - 1) + 32), v113 + *(v133 + 72) * v116, a4);
        if (v6)
        {
        }

        if (v116 < a3)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_22F3F5F98(v115);
        }

        if (v4 - 2 >= *(v115 + 2))
        {
          goto LABEL_130;
        }

        v117 = &v115[16 * v4];
        *v117 = a3;
        v117[1] = v116;
        v141 = v115;
        sub_22F3F5F0C(v4 - 1);
        result = v141;
        v4 = *(v141 + 16);
        a3 = v114;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v129 = v26;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v126 = a3;
  v123 = a4;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v134 = v30;
    if (v29 + 1 >= v28)
    {
      goto LABEL_30;
    }

    v131 = v28;
    v33 = *a3;
    v34 = *(v133 + 72);
    v35 = *a3 + v34 * v32;
    a3 = v119;
    sub_22F15A480(v35, v119);
    v125 = v31;
    v135 = v34;
    v36 = v33 + v34 * v31;
    v37 = v120;
    sub_22F15A480(v36, v120);
    v4 = sub_22F740410();
    v130 = sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0]);
    v38 = sub_22F740DE0();
    v39 = v32;
    v122 = v6;
    if (v38)
    {
      LODWORD(v132) = *(v37 + *(v140 + 64)) < *(a3 + *(v140 + 64));
    }

    else
    {
      sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0]);
      LODWORD(v132) = sub_22F740DB0();
    }

    v40 = v121;
    sub_22F15A4F0(v37);
    result = sub_22F15A4F0(a3);
    v41 = v125 + 2;
    v42 = v135 * (v125 + 2);
    v43 = v33 + v42;
    v44 = v135 * v39;
    v45 = v33 + v135 * v39;
    do
    {
      v46 = v41;
      v47 = v39;
      v6 = v44;
      v48 = v42;
      if (v41 >= v131)
      {
        break;
      }

      v137 = v41;
      v138 = v39;
      v136 = v42;
      sub_22F15A480(v43, v40);
      v49 = v129;
      sub_22F15A480(v45, v129);
      if (sub_22F740DE0())
      {
        a3 = *(v49 + *(v140 + 64)) < *(v40 + *(v140 + 64));
      }

      else
      {
        sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0]);
        a3 = sub_22F740DB0();
      }

      sub_22F15A4F0(v49);
      result = sub_22F15A4F0(v40);
      v46 = v137;
      v47 = v138;
      v41 = v137 + 1;
      v48 = v136;
      v43 += v135;
      v45 += v135;
      v39 = v138 + 1;
      v44 = v6 + v135;
      v42 = v136 + v135;
    }

    while ((v132 & 1) == (a3 & 1));
    if ((v132 & 1) == 0)
    {
      goto LABEL_28;
    }

    v31 = v125;
    a4 = v123;
    if (v46 < v125)
    {
      goto LABEL_133;
    }

    if (v125 < v46)
    {
      v4 = v125 * v135;
      do
      {
        if (v31 != v47)
        {
          v138 = v47;
          v51 = *v126;
          if (!*v126)
          {
            goto LABEL_139;
          }

          v52 = v48;
          v53 = v46;
          sub_22F1207AC(v51 + v4, v128, &qword_27DAB13A0, &unk_22F7718B0);
          if (v4 < v6 || v51 + v4 >= v51 + v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v4 != v6)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_22F1207AC(v128, v51 + v6, &qword_27DAB13A0, &unk_22F7718B0);
          v46 = v53;
          v48 = v52;
          v47 = v138;
        }

        ++v31;
        v6 -= v135;
        v48 -= v135;
        v4 += v135;
      }

      while (v31 < v47--);
LABEL_28:
      v32 = v46;
      v6 = v122;
      a4 = v123;
      v31 = v125;
      a3 = v126;
      goto LABEL_30;
    }

    v32 = v46;
    v6 = v122;
    a3 = v126;
LABEL_30:
    v54 = *(a3 + 8);
    v136 = v32;
    if (v32 < v54)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_132;
      }

      if (v32 - v31 < a4)
      {
        if (__OFADD__(v31, a4))
        {
          goto LABEL_134;
        }

        if (v31 + a4 >= v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = v31 + a4;
        }

        if (v55 < v31)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        a4 = v136;
        if (v136 != v55)
        {
          break;
        }
      }
    }

LABEL_51:
    if (v136 < v31)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v134;
    }

    else
    {
      result = sub_22F13D970(0, *(v134 + 2) + 1, 1, v134);
      v30 = result;
    }

    v68 = *(v30 + 2);
    v67 = *(v30 + 3);
    v4 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_22F13D970((v67 > 1), v68 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v4;
    v69 = &v30[16 * v68];
    v70 = v136;
    *(v69 + 4) = v31;
    *(v69 + 5) = v70;
    v138 = *v124;
    if (!v138)
    {
      goto LABEL_141;
    }

    if (v68)
    {
      while (1)
      {
        a4 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v71 = *(v30 + 4);
          v72 = *(v30 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_71:
          if (v74)
          {
            goto LABEL_120;
          }

          v87 = &v30[16 * v4];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_123;
          }

          v93 = &v30[16 * a4 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_127;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              a4 = v4 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v97 = &v30[16 * v4];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_85:
        if (v92)
        {
          goto LABEL_122;
        }

        v100 = &v30[16 * a4];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_125;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_92:
        v108 = a4 - 1;
        if (a4 - 1 >= v4)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v109 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v110 = a3;
        v111 = v30;
        v4 = *&v30[16 * v108 + 32];
        a3 = *&v30[16 * a4 + 40];
        sub_22F15985C(v109 + *(v133 + 72) * v4, v109 + *(v133 + 72) * *&v30[16 * a4 + 32], v109 + *(v133 + 72) * a3, v138);
        if (v6)
        {
        }

        if (a3 < v4)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_22F3F5F98(v111);
        }

        if (v108 >= *(v111 + 2))
        {
          goto LABEL_117;
        }

        v112 = &v111[16 * v108];
        *(v112 + 4) = v4;
        *(v112 + 5) = a3;
        v141 = v111;
        result = sub_22F3F5F0C(a4);
        v30 = v141;
        v4 = *(v141 + 16);
        a3 = v110;
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v30[16 * v4 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_118;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_119;
      }

      v82 = &v30[16 * v4];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_121;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_124;
      }

      if (v86 >= v78)
      {
        v104 = &v30[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_128;
        }

        if (v73 < v107)
        {
          a4 = v4 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v28 = *(a3 + 8);
    v29 = v136;
    a4 = v123;
    if (v136 >= v28)
    {
      goto LABEL_103;
    }
  }

  v122 = v6;
  v56 = *a3;
  v4 = sub_22F740410();
  v57 = *(v133 + 72);
  v58 = v56 + v57 * (a4 - 1);
  v137 = -v57;
  v138 = v56;
  v125 = v31;
  v59 = v31 - a4;
  v127 = v57;
  v60 = v56 + a4 * v57;
  v130 = v55;
LABEL_41:
  v135 = v58;
  v136 = a4;
  v131 = v60;
  v132 = v59;
  v61 = v60;
  v62 = v59;
  v63 = v58;
  while (1)
  {
    sub_22F15A480(v61, v19);
    sub_22F15A480(v63, v16);
    sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0]);
    if (sub_22F740DE0())
    {
      v64 = *&v16[*(v140 + 64)] < *&v19[*(v140 + 64)];
    }

    else
    {
      sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0]);
      v64 = sub_22F740DB0();
    }

    sub_22F15A4F0(v16);
    result = sub_22F15A4F0(v19);
    if ((v64 & 1) == 0)
    {
LABEL_40:
      a4 = v136 + 1;
      v58 = v135 + v127;
      v59 = v132 - 1;
      v60 = v131 + v127;
      if (v136 + 1 != v130)
      {
        goto LABEL_41;
      }

      v136 = v130;
      v6 = v122;
      v31 = v125;
      a3 = v126;
      goto LABEL_51;
    }

    if (!v138)
    {
      break;
    }

    v65 = v139;
    sub_22F1207AC(v61, v139, &qword_27DAB13A0, &unk_22F7718B0);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F1207AC(v65, v63, &qword_27DAB13A0, &unk_22F7718B0);
    v63 += v137;
    v61 += v137;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_40;
    }
  }

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
  return result;
}

uint64_t sub_22F15985C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v43 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v21 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v20 != -1)
  {
    v22 = (a2 - a1) / v20;
    v52 = a1;
    v51 = a4;
    v23 = v20;
    if (v22 < v21 / v20)
    {
      v24 = v22 * v20;
      if (a4 < a1 || a1 + v24 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v26 = a4 + v24;
      v50 = a4 + v24;
      if (v24 >= 1 && a2 < a3)
      {
        while (1)
        {
          sub_22F15A480(a2, v18);
          sub_22F15A480(a4, v14);
          sub_22F740410();
          sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0]);
          if (sub_22F740DE0())
          {
            v28 = *&v14[*(v49 + 64)] < *&v18[*(v49 + 64)];
          }

          else
          {
            sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0]);
            v28 = sub_22F740DB0();
          }

          sub_22F15A4F0(v14);
          sub_22F15A4F0(v18);
          if (v28)
          {
            if (a1 < a2 || a1 >= a2 + v23)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v29 = v23;
            a2 += v23;
            goto LABEL_37;
          }

          if (a1 < a4 || a1 >= a4 + v23)
          {
            break;
          }

          v29 = v23;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_35:
            v29 = v23;
          }

          v51 = a4 + v23;
          a4 += v23;
LABEL_37:
          a1 += v29;
          v52 = a1;
          if (a4 >= v26 || a2 >= a3)
          {
            goto LABEL_66;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_35;
      }

      goto LABEL_66;
    }

    v25 = v21 / v20 * v20;
    v47 = v16;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_42:
        v30 = a4 + v25;
        if (v25 >= 1)
        {
          v31 = -v20;
          v32 = v30;
          v45 = a4;
          while (2)
          {
            while (1)
            {
              v43 = v30;
              v33 = a2 + v31;
              v46 = a2;
              while (1)
              {
                if (a2 <= a1)
                {
                  v52 = a2;
                  v50 = v43;
                  goto LABEL_66;
                }

                v35 = a3;
                v44 = v30;
                v36 = v31;
                v37 = v32 + v31;
                v38 = v47;
                sub_22F15A480(v37, v47);
                v39 = v48;
                sub_22F15A480(v33, v48);
                sub_22F740410();
                sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0]);
                if (sub_22F740DE0())
                {
                  v40 = *(v39 + *(v49 + 64)) < *(v38 + *(v49 + 64));
                }

                else
                {
                  sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0]);
                  v40 = sub_22F740DB0();
                }

                v41 = v39;
                a3 = v35 + v36;
                sub_22F15A4F0(v41);
                sub_22F15A4F0(v38);
                if (v40)
                {
                  break;
                }

                v30 = v37;
                if (v35 < v32 || a3 >= v32)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v35 != v32)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v32 = v37;
                a2 = v46;
                v34 = v37 > v45;
                v31 = v36;
                if (!v34)
                {
                  goto LABEL_64;
                }
              }

              a2 = v33;
              if (v35 < v46 || a3 >= v46)
              {
                break;
              }

              v30 = v44;
              v42 = v45;
              v31 = v36;
              if (v35 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              if (v32 <= v42)
              {
                goto LABEL_64;
              }
            }

            swift_arrayInitWithTakeFrontToBack();
            v30 = v44;
            v31 = v36;
            if (v32 > v45)
            {
              continue;
            }

            break;
          }
        }

LABEL_64:
        v52 = a2;
        v50 = v30;
LABEL_66:
        sub_22F3B6658(&v52, &v51, &v50);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v20 = v23;
    goto LABEL_42;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_22F159E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v5 = type metadata accessor for MomentGroundedLocation(0);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NamedGroundedLocation(0);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v35 = v11;
  v32 = v3;
  v44 = MEMORY[0x277D84F90];
  sub_22F1465B8(0, v12, 0);
  v13 = v44;
  v14 = -1 << *(a1 + 32);
  v43 = a1 + 56;
  result = sub_22F741980();
  v16 = result;
  v17 = 0;
  v33 = a1 + 64;
  v34 = v12;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v43 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_21;
    }

    v42 = *(a1 + 36);
    v20 = v38;
    sub_22F15A1F8(*(a1 + 48) + *(v39 + 72) * v16, v38, type metadata accessor for MomentGroundedLocation);
    v21 = v35;
    sub_22F15A1F8(v20, v35 + *(v37 + 20), type metadata accessor for MomentGroundedLocation);
    v22 = v41;
    *v21 = v40;
    v21[1] = v22;

    sub_22F15A260(v20, type metadata accessor for MomentGroundedLocation);
    v44 = v13;
    v24 = *(v13 + 16);
    v23 = *(v13 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_22F1465B8(v23 > 1, v24 + 1, 1);
      v13 = v44;
    }

    *(v13 + 16) = v24 + 1;
    result = sub_22F15A324(v21, v13 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v24);
    v18 = 1 << *(a1 + 32);
    if (v16 >= v18)
    {
      goto LABEL_22;
    }

    v25 = *(v43 + 8 * v19);
    if ((v25 & (1 << v16)) == 0)
    {
      goto LABEL_23;
    }

    if (v42 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v16 & 0x3F));
    if (v26)
    {
      v18 = __clz(__rbit64(v26)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v19 << 6;
      v28 = v19 + 1;
      v29 = (v33 + 8 * v19);
      while (v28 < (v18 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_22F107D18(v16, v42, 0);
          v18 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v16, v42, 0);
    }

LABEL_4:
    ++v17;
    v16 = v18;
    if (v17 == v34)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F15A1F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F15A260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22F15A2C0()
{
  result = qword_2810A92E0;
  if (!qword_2810A92E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92E0);
  }

  return result;
}

uint64_t sub_22F15A324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NamedGroundedLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F15A438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F15A480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F15A4F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F15A558(void *a1, void *a2, uint64_t a3)
{
  v4 = v3[5];
  v5 = v3[6];
  return sub_22F1580F8(a1, a2, a3, v3[2], v3[3], v3[4]);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_22F15A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_22F73F7C0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v11);
  v13 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22F1586DC(a1, a2, a3, a4, v4 + v10, v12, v13);
}

void sub_22F15A6A8()
{
  sub_22F120634(319, &qword_2810A8FB0, off_27887AB98);
  if (v0 <= 0x3F)
  {
    sub_22F120634(319, &qword_2810A8FC8, off_27887B108);
    if (v1 <= 0x3F)
    {
      sub_22F15A79C();
      if (v2 <= 0x3F)
      {
        sub_22F73FF10();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PHSearchIndexEntityResultMatchType(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22F15A79C()
{
  if (!qword_2810A9268)
  {
    sub_22F73F090();
    sub_22F15A438(&unk_2810AC730, MEMORY[0x277CC88A8]);
    v0 = sub_22F741490();
    if (!v1)
    {
      atomic_store(v0, &qword_2810A9268);
    }
  }
}

uint64_t sub_22F15A858()
{
  result = type metadata accessor for MomentGroundedLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_22F15A9B0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_22F741980();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22F15C690(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_22F15AA30(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_22F73F4D0();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_22F15AAB8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_22F7419B0();
    v5 = v4;
    v6 = sub_22F741A60();
    v8 = v7;
    v9 = MEMORY[0x231901580](v3, v5, v6, v7);
    sub_22F107D18(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_22F107D18(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_22F741980();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22F15C46C(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_22F107D18(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_22F15ABD4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_22F741980();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_22F15CC34(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_22F15AC50(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_22F741C90();
    v5 = v4;
    v6 = sub_22F741D30();
    v8 = v7;
    v9 = MEMORY[0x231901860](v3, v5, v6, v7);
    sub_22F107D18(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_22F107D18(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_22F741980();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22F15C724(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_22F107D18(v3, v5, v2 != 0);
  return v13;
}

uint64_t CachedEventFeatures.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

PhotosGraph::CachedEventFeatures __swiftcall CachedEventFeatures.init(identifier:featureVectorByName:)(Swift::String identifier, Swift::OpaquePointer featureVectorByName)
{
  *v2 = identifier;
  *(v2 + 16) = featureVectorByName;
  result.identifier = identifier;
  result.featureVectorByName = featureVectorByName;
  return result;
}

{
  v39 = v2;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1450, &qword_22F7719D0);
  v4 = sub_22F741DC0();
  v7 = v4;
  v8 = 0;
  v9 = *(featureVectorByName._rawValue + 8);
  v41 = featureVectorByName._rawValue + 64;
  v10 = 1 << *(featureVectorByName._rawValue + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  rawValue = featureVectorByName._rawValue;
  v45 = v4 + 64;
  v42 = v13;
  v43 = v4;
  if ((v11 & v9) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = *(featureVectorByName._rawValue + 7);
      v19 = (*(featureVectorByName._rawValue + 6) + 16 * v17);
      v20 = v19[1];
      v48 = *v19;
      v21 = *(v18 + 8 * v17);
      if (v21 >> 62)
      {
        v32 = v19[1];
        if (v21 < 0)
        {
          v33 = *(v18 + 8 * v17);
        }

        v22 = sub_22F741A00();
        v20 = v32;
        if (v22)
        {
LABEL_12:
          v47 = v12;
          v49 = MEMORY[0x277D84F90];
          v46 = v20;

          v4 = sub_22F1464F4(0, v22 & ~(v22 >> 63), 0);
          if (v22 < 0)
          {
            goto LABEL_31;
          }

          v23 = 0;
          v24 = v49;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x2319016F0](v23, v21);
            }

            else
            {
              v25 = *(v21 + 8 * v23 + 32);
            }

            v26 = v25;
            [v25 floatValue];
            v28 = v27;

            v30 = *(v49 + 16);
            v29 = *(v49 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_22F1464F4((v29 > 1), v30 + 1, 1);
            }

            ++v23;
            *(v49 + 16) = v30 + 1;
            *(v49 + 4 * v30 + 32) = v28;
          }

          while (v22 != v23);

          v7 = v43;
          featureVectorByName._rawValue = rawValue;
          v13 = v42;
          v31 = v46;
          v12 = v47;
          goto LABEL_25;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_12;
        }
      }

      v31 = v4;
      v24 = MEMORY[0x277D84F90];
LABEL_25:
      *(v45 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v34 = (v7[6] + 16 * v17);
      *v34 = v48;
      v34[1] = v31;
      *(v7[7] + 8 * v17) = v24;
      v35 = v7[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_30;
      }

      v7[2] = v37;
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

      *v39 = countAndFlagsBits;
      v39[1] = object;
      v39[2] = v7;
      goto LABEL_32;
    }

    v16 = *&v41[8 * v8];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result.featureVectorByName._rawValue = v6;
  result.identifier._object = v5;
  result.identifier._countAndFlagsBits = v4;
  return result;
}