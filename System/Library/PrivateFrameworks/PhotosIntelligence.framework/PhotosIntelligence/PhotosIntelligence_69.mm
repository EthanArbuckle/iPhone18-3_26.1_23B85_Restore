void sub_1C7480454(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_118;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v9 = v7;
  v10 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    v15 = v7 + 1;
  }

  else
  {
    v11 = v6;
    v12 = (*a3 + 16 * v9);
    LODWORD(v112) = sub_1C747E528(*(*a3 + 16 * v10), *(*a3 + 16 * v10 + 8), *v12);
    if (v5)
    {
LABEL_128:

      return;
    }

    v107 = v9;
    v13 = 16 * v9;
    v14 = v12 + 32;
    v15 = v11;
    while (v10 + 1 < v15)
    {
      v16 = 0xE600000000000000;
      v17 = 0x6E6F73726570;
      switch(*v14)
      {
        case 1:
          v16 = 0xE500000000000000;
          v17 = 0x646C696863;
          break;
        case 2:
          v16 = 0xE400000000000000;
          v17 = 2036490594;
          break;
        case 3:
          v16 = 0xE500000000000000;
          v17 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v18 = 0xE600000000000000;
      v19 = 0x6E6F73726570;
      switch(*(v14 - 16))
      {
        case 1:
          v18 = 0xE500000000000000;
          v19 = 0x646C696863;
          break;
        case 2:
          v18 = 0xE400000000000000;
          v19 = 2036490594;
          break;
        case 3:
          v18 = 0xE500000000000000;
          v19 = 0x726568746FLL;
          break;
        default:
          break;
      }

      if (v17 == v19 && v16 == v18)
      {

        if (v112)
        {
          v15 = v10 + 1;
          v9 = v107;
          goto LABEL_28;
        }
      }

      else
      {
        v21 = v5;
        v22 = sub_1C7551DBC();

        v23 = v112 ^ v22;
        v5 = v21;
        v15 = v11;
        if (v23)
        {
          v15 = v10 + 1;
          goto LABEL_25;
        }
      }

      v14 += 16;
      ++v10;
    }

    v10 = v11 - 1;
LABEL_25:
    v9 = v107;
    if ((v112 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (v15 < v9)
    {
      goto LABEL_150;
    }

    if (v9 <= v10)
    {
      v24 = 0;
      v25 = 16 * v15;
      v26 = v9;
      do
      {
        if (v26 != v15 + v24 - 1)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_157;
          }

          v28 = (v27 + v13);
          v29 = v27 + v25;
          v30 = *v28;
          v31 = *(v28 + 1);
          *v28 = *(v29 - 16);
          *(v29 - 16) = v30;
          *(v29 - 8) = v31;
        }

        ++v26;
        --v24;
        v25 -= 16;
        v13 += 16;
      }

      while (v26 < v15 + v24);
    }
  }

LABEL_35:
  v32 = a3[1];
  if (v15 >= v32)
  {
    goto LABEL_43;
  }

  if (__OFSUB__(v15, v9))
  {
    goto LABEL_149;
  }

  if (v15 - v9 >= a4)
  {
    goto LABEL_43;
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_151;
  }

  if (v9 + a4 < v32)
  {
    v32 = (v9 + a4);
  }

  if (v32 < v9)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v15 == v32)
  {
LABEL_43:
    v33 = v15;
    goto LABEL_44;
  }

  v111 = v32;
  v104 = v8;
  v105 = v5;
  v79 = *a3;
  v80 = *a3 + 16 * v15 - 16;
  v108 = v9;
  v81 = v15;
  v82 = v9 - v15;
LABEL_96:
  v112 = v81;
  v83 = *(v79 + 16 * v81);
  v84 = v82;
  v85 = v80;
  while (1)
  {
    v86 = 0xE600000000000000;
    v87 = 0x6E6F73726570;
    switch(v83)
    {
      case 1:
        v86 = 0xE500000000000000;
        v87 = 0x646C696863;
        break;
      case 2:
        v86 = 0xE400000000000000;
        v87 = 2036490594;
        break;
      case 3:
        v86 = 0xE500000000000000;
        v87 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v88 = 0xE600000000000000;
    v89 = 0x6E6F73726570;
    switch(*v85)
    {
      case 1:
        v88 = 0xE500000000000000;
        v89 = 0x646C696863;
        break;
      case 2:
        v88 = 0xE400000000000000;
        v89 = 2036490594;
        break;
      case 3:
        v88 = 0xE500000000000000;
        v89 = 0x726568746FLL;
        break;
      default:
        break;
    }

    if (v87 == v89 && v86 == v88)
    {

LABEL_115:
      v81 = (v112 + 1);
      v80 += 16;
      --v82;
      if (v112 + 1 != v111)
      {
        goto LABEL_96;
      }

      v8 = v104;
      v5 = v105;
      v9 = v108;
      v33 = v111;
LABEL_44:
      if (v33 < v9)
      {
        goto LABEL_148;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v94;
      }

      v34 = *(v8 + 2);
      v35 = v34 + 1;
      if (v34 >= *(v8 + 3) >> 1)
      {
        sub_1C6FB17EC();
        v8 = v95;
      }

      *(v8 + 2) = v35;
      v36 = v8 + 32;
      v37 = &v8[16 * v34 + 32];
      *v37 = v9;
      *(v37 + 1) = v33;
      v112 = *a1;
      if (!*a1)
      {
        goto LABEL_158;
      }

      v110 = v33;
      if (v34)
      {
        while (2)
        {
          v38 = v35 - 1;
          v39 = &v36[16 * v35 - 16];
          v40 = &v8[16 * v35];
          if (v35 >= 4)
          {
            v45 = &v36[16 * v35];
            v46 = *(v45 - 8);
            v47 = *(v45 - 7);
            v51 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            if (v51)
            {
              goto LABEL_133;
            }

            v50 = *(v45 - 6);
            v49 = *(v45 - 5);
            v51 = __OFSUB__(v49, v50);
            v43 = v49 - v50;
            v44 = v51;
            if (v51)
            {
              goto LABEL_134;
            }

            v52 = *(v40 + 1);
            v53 = v52 - *v40;
            if (__OFSUB__(v52, *v40))
            {
              goto LABEL_136;
            }

            v51 = __OFADD__(v43, v53);
            v54 = v43 + v53;
            if (v51)
            {
              goto LABEL_139;
            }

            if (v54 >= v48)
            {
              v68 = *v39;
              v67 = *(v39 + 1);
              v51 = __OFSUB__(v67, v68);
              v69 = v67 - v68;
              if (v51)
              {
                goto LABEL_147;
              }

              if (v43 < v69)
              {
                v38 = v35 - 2;
              }
            }

            else
            {
LABEL_64:
              if (v44)
              {
                goto LABEL_135;
              }

              v56 = *v40;
              v55 = *(v40 + 1);
              v57 = __OFSUB__(v55, v56);
              v58 = v55 - v56;
              v59 = v57;
              if (v57)
              {
                goto LABEL_138;
              }

              v60 = *(v39 + 1);
              v61 = v60 - *v39;
              if (__OFSUB__(v60, *v39))
              {
                goto LABEL_141;
              }

              if (__OFADD__(v58, v61))
              {
                goto LABEL_143;
              }

              if (v58 + v61 < v43)
              {
                goto LABEL_79;
              }

              if (v43 < v61)
              {
                v38 = v35 - 2;
              }
            }
          }

          else
          {
            if (v35 == 3)
            {
              v41 = *(v8 + 4);
              v42 = *(v8 + 5);
              v51 = __OFSUB__(v42, v41);
              v43 = v42 - v41;
              v44 = v51;
              goto LABEL_64;
            }

            if (v35 < 2)
            {
              goto LABEL_137;
            }

            v63 = *v40;
            v62 = *(v40 + 1);
            v51 = __OFSUB__(v62, v63);
            v58 = v62 - v63;
            v59 = v51;
LABEL_79:
            if (v59)
            {
              goto LABEL_140;
            }

            v65 = *v39;
            v64 = *(v39 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_142;
            }

            if (v66 < v58)
            {
              break;
            }
          }

          if (v38 - 1 >= v35)
          {
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
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

          if (!*a3)
          {
            goto LABEL_155;
          }

          v70 = v8;
          v71 = &v36[16 * v38 - 16];
          v72 = *v71;
          v73 = v36;
          v74 = v38;
          v75 = &v36[16 * v38];
          v76 = *(v75 + 1);
          sub_1C7482364((*a3 + 16 * *v71), (*a3 + 16 * *v75), (*a3 + 16 * v76), v112);
          if (v5)
          {
            goto LABEL_128;
          }

          if (v76 < v72)
          {
            goto LABEL_130;
          }

          v5 = *(v70 + 2);
          if (v74 > v5)
          {
            goto LABEL_131;
          }

          *v71 = v72;
          *(v71 + 1) = v76;
          if (v74 >= v5)
          {
            goto LABEL_132;
          }

          v77 = v74;
          v35 = v5 - 1;
          sub_1C7423CF4(v75 + 16, v5 - 1 - v77, v75);
          v8 = v70;
          *(v70 + 2) = v5 - 1;
          v78 = v5 > 2;
          v5 = 0;
          v36 = v73;
          if (!v78)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      v7 = v110;
      if (v110 >= v6)
      {
LABEL_118:
        v112 = *a1;
        if (!*a1)
        {
          goto LABEL_159;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_120:
          v96 = v8 + 16;
          v97 = *(v8 + 2);
          while (v97 >= 2)
          {
            if (!*a3)
            {
              goto LABEL_156;
            }

            v98 = v8;
            v99 = &v8[16 * v97];
            v100 = *v99;
            v101 = &v96[2 * v97];
            v102 = *(v101 + 1);
            sub_1C7482364((*a3 + 16 * *v99), (*a3 + 16 * *v101), (*a3 + 16 * v102), v112);
            if (v5)
            {
              break;
            }

            if (v102 < v100)
            {
              goto LABEL_144;
            }

            if (v97 - 2 >= *v96)
            {
              goto LABEL_145;
            }

            *v99 = v100;
            *(v99 + 1) = v102;
            v103 = *v96 - v97;
            if (*v96 < v97)
            {
              goto LABEL_146;
            }

            v97 = *v96 - 1;
            sub_1C7423CF4(v101 + 16, v103, v101);
            *v96 = v97;
            v8 = v98;
          }

          goto LABEL_128;
        }

LABEL_153:
        v8 = sub_1C7420830();
        goto LABEL_120;
      }

      goto LABEL_3;
    }

    v91 = sub_1C7551DBC();

    if ((v91 & 1) == 0)
    {
      goto LABEL_115;
    }

    if (!v79)
    {
      break;
    }

    v83 = *(v85 + 16);
    v92 = *(v85 + 24);
    *(v85 + 16) = *v85;
    *v85 = v83;
    *(v85 + 8) = v92;
    v85 -= 16;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_115;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}

void sub_1C7480C84(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 16;
        v13 = v15;
        v16 = v7 + 2;
        v17 = *(*a3 + 16 * v9);
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 8;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = *(v25 + 1);
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 3);
                *(v34 + 1) = *v34;
                *v34 = v32;
                *(v34 + 1) = v35;
                v34 -= 8;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v80;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_1C7482728((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C7481E48(&v87, *a1, a3);
LABEL_89:
}

void sub_1C748116C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_186:
    v122 = *a1;
    if (!*a1)
    {
      goto LABEL_227;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_188:
      v105 = v8 + 16;
      v106 = *(v8 + 2);
      while (v106 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_224;
        }

        v107 = v8;
        v108 = &v8[16 * v106];
        v109 = *v108;
        v110 = &v105[2 * v106];
        v111 = *(v110 + 1);
        sub_1C74828AC((*a3 + 16 * *v108), (*a3 + 16 * *v110), (*a3 + 16 * v111), v122);
        if (v5)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_212;
        }

        if (v106 - 2 >= *v105)
        {
          goto LABEL_213;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v112 = *v105 - v106;
        if (*v105 < v106)
        {
          goto LABEL_214;
        }

        v106 = *v105 - 1;
        sub_1C7423CF4(v110 + 16, v112, v110);
        *v105 = v106;
        v8 = v107;
      }

LABEL_196:

      return;
    }

LABEL_221:
    v8 = sub_1C7420830();
    goto LABEL_188;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v11 = v7;
      v12 = *a3 + 16 * v7;
      LODWORD(v122) = sub_1C747E65C();
      if (v5)
      {
        goto LABEL_196;
      }

      v119 = v6 - 1;
      v116 = v11;
      v13 = 16 * v11;
      v14 = (v12 + 32);
      while (v10 + 1 < v6)
      {
        v15 = 0xEC00000065636E61;
        v16 = 0x746E696175716361;
        switch(*v14)
        {
          case 1:
            v15 = 0xE700000000000000;
            v17 = 0x6568746F7262;
            goto LABEL_11;
          case 2:
            v15 = 0xE500000000000000;
            v16 = 0x646C696863;
            break;
          case 3:
            v16 = 0xD000000000000015;
            v15 = 0x80000001C7596B70;
            break;
          case 4:
            v15 = 0xE800000000000000;
            v19 = 0x6B726F776F63;
            goto LABEL_22;
          case 5:
            v15 = 0xE800000000000000;
            v19 = 0x746867756164;
LABEL_22:
            v16 = v19 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
            break;
          case 6:
            v16 = 0xD000000000000013;
            v15 = 0x80000001C7596BA0;
            break;
          case 7:
            v15 = 0xE600000000000000;
            v16 = 0x796C696D6166;
            break;
          case 8:
            v15 = 0xE600000000000000;
            v18 = 1752457574;
            goto LABEL_27;
          case 9:
            v15 = 0xE600000000000000;
            v16 = 0x646E65697266;
            break;
          case 0xA:
            v16 = 0xD000000000000010;
            v15 = 0x80000001C7596BD0;
            break;
          case 0xB:
            v15 = 0xE200000000000000;
            v16 = 25965;
            break;
          case 0xC:
            v16 = 0x726568746F6DLL;
            v15 = 0xE600000000000000;
            break;
          case 0xD:
            v15 = 0xE600000000000000;
            v16 = 0x746E65726170;
            break;
          case 0xE:
            v15 = 0xE700000000000000;
            v17 = 0x656E74726170;
LABEL_11:
            v16 = v17 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 0xF:
            v15 = 0xE300000000000000;
            v16 = 7237491;
            break;
          case 0x10:
            v15 = 0xE600000000000000;
            v18 = 1953720691;
LABEL_27:
            v16 = v18 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
            break;
          case 0x11:
            v15 = 0xE300000000000000;
            v16 = 7367030;
            break;
          default:
            break;
        }

        v20 = 0x746E696175716361;
        v21 = 0xEC00000065636E61;
        switch(*(v14 - 16))
        {
          case 1:
            v21 = 0xE700000000000000;
            v22 = 0x6568746F7262;
            goto LABEL_32;
          case 2:
            v21 = 0xE500000000000000;
            v20 = 0x646C696863;
            break;
          case 3:
            v20 = 0xD000000000000015;
            v21 = 0x80000001C7596B70;
            break;
          case 4:
            v21 = 0xE800000000000000;
            v24 = 0x6B726F776F63;
            goto LABEL_43;
          case 5:
            v21 = 0xE800000000000000;
            v24 = 0x746867756164;
LABEL_43:
            v20 = v24 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
            break;
          case 6:
            v20 = 0xD000000000000013;
            v21 = 0x80000001C7596BA0;
            break;
          case 7:
            v21 = 0xE600000000000000;
            v20 = 0x796C696D6166;
            break;
          case 8:
            v21 = 0xE600000000000000;
            v23 = 1752457574;
            goto LABEL_48;
          case 9:
            v21 = 0xE600000000000000;
            v20 = 0x646E65697266;
            break;
          case 0xA:
            v20 = 0xD000000000000010;
            v21 = 0x80000001C7596BD0;
            break;
          case 0xB:
            v21 = 0xE200000000000000;
            v20 = 25965;
            break;
          case 0xC:
            v20 = 0x726568746F6DLL;
            v21 = 0xE600000000000000;
            break;
          case 0xD:
            v21 = 0xE600000000000000;
            v20 = 0x746E65726170;
            break;
          case 0xE:
            v21 = 0xE700000000000000;
            v22 = 0x656E74726170;
LABEL_32:
            v20 = v22 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 0xF:
            v21 = 0xE300000000000000;
            v20 = 7237491;
            break;
          case 0x10:
            v21 = 0xE600000000000000;
            v23 = 1953720691;
LABEL_48:
            v20 = v23 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
            break;
          case 0x11:
            v21 = 0xE300000000000000;
            v20 = 7367030;
            break;
          default:
            break;
        }

        if (v16 == v20 && v15 == v21)
        {

          if (v122)
          {
            v6 = v10 + 1;
            v9 = v116;
            goto LABEL_62;
          }
        }

        else
        {
          v26 = v6;
          v27 = v5;
          v28 = sub_1C7551DBC();

          v29 = v122 ^ v28;
          v5 = v27;
          v6 = v26;
          if (v29)
          {
            v6 = v10 + 1;
            goto LABEL_59;
          }
        }

        v14 += 16;
        ++v10;
      }

      v10 = v119;
LABEL_59:
      v9 = v116;
      if ((v122 & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_62:
      if (v6 < v9)
      {
        goto LABEL_218;
      }

      if (v9 <= v10)
      {
        v30 = 0;
        v31 = 16 * v6;
        v32 = v9;
        do
        {
          if (v32 != v6 + v30 - 1)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_225;
            }

            v34 = (v33 + v13);
            v35 = v33 + v31;
            v36 = *v34;
            v37 = *(v34 + 1);
            *v34 = *(v35 - 16);
            *(v35 - 16) = v36;
            *(v35 - 8) = v37;
          }

          ++v32;
          --v30;
          v31 -= 16;
          v13 += 16;
        }

        while (v32 < v6 + v30);
      }
    }

LABEL_69:
    v38 = a3[1];
    if (v6 < v38)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_217;
      }

      if (v6 - v9 < a4)
      {
        break;
      }
    }

LABEL_133:
    if (v6 < v9)
    {
      goto LABEL_216;
    }

    v121 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v8 = v103;
    }

    v59 = *(v8 + 2);
    v60 = v59 + 1;
    if (v59 >= *(v8 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v8 = v104;
    }

    *(v8 + 2) = v60;
    v61 = v8 + 32;
    v62 = &v8[16 * v59 + 32];
    *v62 = v9;
    *(v62 + 1) = v6;
    v122 = *a1;
    if (!*a1)
    {
      goto LABEL_226;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v8[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v8 + 4);
          v67 = *(v8 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_153:
          if (v69)
          {
            goto LABEL_203;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_206;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_209;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_211;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_175;
          }

          goto LABEL_168;
        }

        if (v60 < 2)
        {
          goto LABEL_205;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_168:
        if (v84)
        {
          goto LABEL_208;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_210;
        }

        if (v91 < v83)
        {
          goto LABEL_182;
        }

LABEL_175:
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }

        if (!*a3)
        {
          goto LABEL_223;
        }

        v95 = v8;
        v96 = &v61[16 * v63 - 16];
        v97 = *v96;
        v98 = v63;
        v99 = &v61[16 * v63];
        v100 = *(v99 + 1);
        sub_1C74828AC((*a3 + 16 * *v96), (*a3 + 16 * *v99), (*a3 + 16 * v100), v122);
        if (v5)
        {
          goto LABEL_196;
        }

        if (v100 < v97)
        {
          goto LABEL_198;
        }

        v5 = *(v95 + 2);
        if (v98 > v5)
        {
          goto LABEL_199;
        }

        *v96 = v97;
        *(v96 + 1) = v100;
        if (v98 >= v5)
        {
          goto LABEL_200;
        }

        v101 = v98;
        v60 = v5 - 1;
        sub_1C7423CF4(v99 + 16, v5 - 1 - v101, v99);
        v8 = v95;
        *(v95 + 2) = v5 - 1;
        v102 = v5 > 2;
        v5 = 0;
        if (!v102)
        {
          goto LABEL_182;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_201;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_202;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_204;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_207;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_215;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_175;
      }

      goto LABEL_153;
    }

LABEL_182:
    v6 = a3[1];
    v7 = v121;
    if (v121 >= v6)
    {
      goto LABEL_186;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_219;
  }

  if (v9 + a4 < v38)
  {
    v38 = v9 + a4;
  }

  if (v38 < v9)
  {
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  if (v6 == v38)
  {
    goto LABEL_133;
  }

  v120 = v38;
  v113 = v8;
  v114 = v5;
  v39 = *a3;
  v40 = *a3 + 16 * v6 - 16;
  v117 = v9;
  v41 = v9 - v6;
LABEL_78:
  v122 = v6;
  v42 = *(v39 + 16 * v6);
  v43 = v41;
  v44 = v40;
  while (1)
  {
    v45 = 0xEC00000065636E61;
    v46 = 0x746E696175716361;
    switch(v42)
    {
      case 1:
        v45 = 0xE700000000000000;
        v47 = 0x6568746F7262;
        goto LABEL_83;
      case 2:
        v45 = 0xE500000000000000;
        v46 = 0x646C696863;
        break;
      case 3:
        v46 = 0xD000000000000015;
        v45 = 0x80000001C7596B70;
        break;
      case 4:
        v45 = 0xE800000000000000;
        v49 = 0x6B726F776F63;
        goto LABEL_94;
      case 5:
        v45 = 0xE800000000000000;
        v49 = 0x746867756164;
LABEL_94:
        v46 = v49 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v46 = 0xD000000000000013;
        v45 = 0x80000001C7596BA0;
        break;
      case 7:
        v45 = 0xE600000000000000;
        v46 = 0x796C696D6166;
        break;
      case 8:
        v45 = 0xE600000000000000;
        v48 = 1752457574;
        goto LABEL_99;
      case 9:
        v45 = 0xE600000000000000;
        v46 = 0x646E65697266;
        break;
      case 10:
        v46 = 0xD000000000000010;
        v45 = 0x80000001C7596BD0;
        break;
      case 11:
        v45 = 0xE200000000000000;
        v46 = 25965;
        break;
      case 12:
        v46 = 0x726568746F6DLL;
        v45 = 0xE600000000000000;
        break;
      case 13:
        v45 = 0xE600000000000000;
        v46 = 0x746E65726170;
        break;
      case 14:
        v45 = 0xE700000000000000;
        v47 = 0x656E74726170;
LABEL_83:
        v46 = v47 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v45 = 0xE300000000000000;
        v46 = 7237491;
        break;
      case 16:
        v45 = 0xE600000000000000;
        v48 = 1953720691;
LABEL_99:
        v46 = v48 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v45 = 0xE300000000000000;
        v46 = 7367030;
        break;
      default:
        break;
    }

    v50 = 0x746E696175716361;
    v51 = 0xEC00000065636E61;
    switch(*v44)
    {
      case 1:
        v51 = 0xE700000000000000;
        v52 = 0x6568746F7262;
        goto LABEL_104;
      case 2:
        v51 = 0xE500000000000000;
        v50 = 0x646C696863;
        break;
      case 3:
        v50 = 0xD000000000000015;
        v51 = 0x80000001C7596B70;
        break;
      case 4:
        v51 = 0xE800000000000000;
        v54 = 0x6B726F776F63;
        goto LABEL_115;
      case 5:
        v51 = 0xE800000000000000;
        v54 = 0x746867756164;
LABEL_115:
        v50 = v54 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v50 = 0xD000000000000013;
        v51 = 0x80000001C7596BA0;
        break;
      case 7:
        v51 = 0xE600000000000000;
        v50 = 0x796C696D6166;
        break;
      case 8:
        v51 = 0xE600000000000000;
        v53 = 1752457574;
        goto LABEL_120;
      case 9:
        v51 = 0xE600000000000000;
        v50 = 0x646E65697266;
        break;
      case 0xA:
        v50 = 0xD000000000000010;
        v51 = 0x80000001C7596BD0;
        break;
      case 0xB:
        v51 = 0xE200000000000000;
        v50 = 25965;
        break;
      case 0xC:
        v50 = 0x726568746F6DLL;
        v51 = 0xE600000000000000;
        break;
      case 0xD:
        v51 = 0xE600000000000000;
        v50 = 0x746E65726170;
        break;
      case 0xE:
        v51 = 0xE700000000000000;
        v52 = 0x656E74726170;
LABEL_104:
        v50 = v52 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 0xF:
        v51 = 0xE300000000000000;
        v50 = 7237491;
        break;
      case 0x10:
        v51 = 0xE600000000000000;
        v53 = 1953720691;
LABEL_120:
        v50 = v53 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 0x11:
        v51 = 0xE300000000000000;
        v50 = 7367030;
        break;
      default:
        break;
    }

    if (v46 == v50 && v45 == v51)
    {

LABEL_131:
      ++v6;
      v40 += 16;
      --v41;
      if (v122 + 1 == v120)
      {
        v8 = v113;
        v5 = v114;
        v9 = v117;
        v6 = v120;
        goto LABEL_133;
      }

      goto LABEL_78;
    }

    v56 = sub_1C7551DBC();

    if ((v56 & 1) == 0)
    {
      goto LABEL_131;
    }

    if (!v39)
    {
      break;
    }

    v42 = *(v44 + 16);
    v57 = *(v44 + 24);
    *(v44 + 16) = *v44;
    *v44 = v42;
    *(v44 + 8) = v57;
    v44 -= 16;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_131;
    }
  }

  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
}

uint64_t sub_1C7481E48(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C7482728((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C7481F74(char *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 56;
  v11 = (a3 - a2) / 56;
  if (v9 >= v11)
  {
    sub_1C741E52C(a2, (a3 - a2) / 56, a4);
    v22 = v6 + 56 * v11;
    __src = v6;
    v23 = -v6;
    v24 = a3;
    v48 = -v6;
LABEL_15:
    v25 = v7 - 56;
    v26 = v24 - 56;
    v27 = v22 - 56;
    v28 = v23 + v22;
    v49 = v7 - 56;
    while (1)
    {
      v12 = v27 + 56;
      if (v27 + 56 <= __src || v7 <= v8)
      {
        v6 = __src;
LABEL_29:
        v39 = (v12 - v6) / 56;
        v40 = v7 < v6 || v7 >= v6 + 56 * v39;
        if (v40 || v7 != v6)
        {
          v41 = 56 * v39;
          v42 = v7;
          goto LABEL_41;
        }

        return 1;
      }

      v53 = v28;
      v30 = v26;
      sub_1C712A774(v27, v52, &qword_1EC2181B8);
      sub_1C712A774(v25, v51, &qword_1EC2181B8);
      v31 = sub_1C747D73C(v52, v51);
      if (v5)
      {
        break;
      }

      v32 = v31;
      sub_1C6FD7FC8(v51, &qword_1EC2181B8);
      sub_1C6FD7FC8(v52, &qword_1EC2181B8);
      v24 = v30;
      if (v32)
      {
        v22 = v27 + 56;
        v18 = v30 + 56 == v7;
        v23 = v48;
        v7 -= 56;
        v5 = 0;
        if (!v18)
        {
          v36 = *v49;
          v37 = *(v49 + 16);
          v38 = *(v49 + 32);
          *(v30 + 48) = *(v49 + 48);
          *(v30 + 16) = v37;
          *(v30 + 32) = v38;
          *v30 = v36;
          v7 = v49;
        }

        goto LABEL_15;
      }

      if (v27 + 56 != v30 + 56)
      {
        v33 = *v27;
        v34 = *(v27 + 16);
        v35 = *(v27 + 32);
        *(v30 + 48) = *(v27 + 48);
        *(v30 + 16) = v34;
        *(v30 + 32) = v35;
        *v30 = v33;
      }

      v26 = v30 - 56;
      v27 -= 56;
      v28 = v53 - 56;
      v5 = 0;
      v25 = v7 - 56;
    }

    sub_1C6FD7FC8(v51, &qword_1EC2181B8);
    sub_1C6FD7FC8(v52, &qword_1EC2181B8);
    v45 = __src;
    v46 = v7 < __src || v7 >= __src + 56 * (v53 / 56);
    if (v46 || v7 != __src)
    {
      v41 = 56 * (v53 / 56);
      v42 = v7;
      goto LABEL_48;
    }
  }

  else
  {
    sub_1C741E52C(a1, (a2 - a1) / 56, a4);
    v12 = v6 + 56 * v9;
    v13 = a3;
    while (1)
    {
      if (v6 >= v12 || v7 >= v13)
      {
        v7 = v8;
        goto LABEL_29;
      }

      sub_1C712A774(v7, v52, &qword_1EC2181B8);
      sub_1C712A774(v6, v51, &qword_1EC2181B8);
      v15 = sub_1C747D73C(v52, v51);
      if (v4)
      {
        break;
      }

      v16 = v15;
      sub_1C6FD7FC8(v51, &qword_1EC2181B8);
      sub_1C6FD7FC8(v52, &qword_1EC2181B8);
      if (v16)
      {
        v17 = v7;
        v18 = v8 == v7;
        v7 += 56;
      }

      else
      {
        v17 = v6;
        v18 = v8 == v6;
        v6 += 56;
      }

      v13 = a3;
      if (!v18)
      {
        v19 = *v17;
        v20 = *(v17 + 16);
        v21 = *(v17 + 32);
        *(v8 + 48) = *(v17 + 48);
        *(v8 + 16) = v20;
        *(v8 + 32) = v21;
        *v8 = v19;
      }

      v8 += 56;
    }

    sub_1C6FD7FC8(v51, &qword_1EC2181B8);
    sub_1C6FD7FC8(v52, &qword_1EC2181B8);
    v43 = (v12 - v6) / 56;
    v44 = v8 < v6 || v8 >= v6 + 56 * v43;
    if (v44 || v8 != v6)
    {
      v41 = 56 * v43;
      v42 = v8;
LABEL_41:
      v45 = v6;
LABEL_48:
      memmove(v42, v45, v41);
    }
  }

  return 1;
}

uint64_t sub_1C7482364(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = 0x6E6F73726570;
  v9 = (a2 - a1) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 < v10)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v11 = &v4[16 * v9];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_55;
      }

      v13 = 0xE600000000000000;
      v14 = 0x6E6F73726570;
      switch(*v6)
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x646C696863;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 2036490594;
          break;
        case 3:
          v13 = 0xE500000000000000;
          v14 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v15 = 0xE600000000000000;
      v16 = 0x6E6F73726570;
      switch(*v4)
      {
        case 1:
          v15 = 0xE500000000000000;
          v16 = 0x646C696863;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 2036490594;
          break;
        case 3:
          v15 = 0xE500000000000000;
          v16 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v17 = v5;
      v18 = v14 == v16 && v13 == v15;
      if (v18)
      {
        break;
      }

      v19 = sub_1C7551DBC();

      if ((v19 & 1) == 0)
      {
        goto LABEL_24;
      }

      v20 = v6;
      v18 = v7 == v6;
      v6 += 16;
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_26:
      v7 += 16;
      v5 = v17;
    }

LABEL_24:
    v20 = v4;
    v18 = v7 == v4;
    v4 += 16;
    if (v18)
    {
      goto LABEL_26;
    }

LABEL_25:
    *v7 = *v20;
    goto LABEL_26;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v11 = &v4[16 * v10];
  v34 = v7;
LABEL_28:
  v21 = v6 - 16;
  v5 -= 16;
  v36 = v6;
  v35 = v6 - 16;
  while (v11 > v4 && v6 > v7)
  {
    v23 = *v21;
    v24 = 0xE600000000000000;
    v25 = v8;
    switch(*(v11 - 16))
    {
      case 1:
        v24 = 0xE500000000000000;
        v25 = 0x646C696863;
        break;
      case 2:
        v24 = 0xE400000000000000;
        v25 = 2036490594;
        break;
      case 3:
        v24 = 0xE500000000000000;
        v25 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v26 = 0xE600000000000000;
    v27 = v8;
    switch(v23)
    {
      case 1:
        v26 = 0xE500000000000000;
        v27 = 0x646C696863;
        break;
      case 2:
        v26 = 0xE400000000000000;
        v27 = 2036490594;
        break;
      case 3:
        v26 = 0xE500000000000000;
        v27 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v28 = v8;
    if (v25 == v27 && v24 == v26)
    {
    }

    else
    {
      v30 = sub_1C7551DBC();

      if (v30)
      {
        v7 = v34;
        v6 = v35;
        v8 = v28;
        if (v5 + 16 != v36)
        {
          *v5 = *v35;
          v6 = v35;
        }

        goto LABEL_28;
      }
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v5 -= 16;
    v11 -= 16;
    v6 = v36;
    v7 = v34;
    v21 = v35;
    v8 = v28;
  }

LABEL_55:
  v31 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v31])
  {
    memmove(v6, v4, 16 * v31);
  }

  return 1;
}

uint64_t sub_1C7482728(char *a1, char *a2, __int16 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    if (*(v10 - 8) < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 8;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_1C74828AC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_123;
      }

      v12 = 0xEC00000065636E61;
      v13 = 0x746E696175716361;
      switch(*v6)
      {
        case 1:
          v12 = 0xE700000000000000;
          v14 = 0x6568746F7262;
          goto LABEL_11;
        case 2:
          v12 = 0xE500000000000000;
          v13 = 0x646C696863;
          break;
        case 3:
          v13 = 0xD000000000000015;
          v12 = 0x80000001C7596B70;
          break;
        case 4:
          v12 = 0xE800000000000000;
          v16 = 0x6B726F776F63;
          goto LABEL_22;
        case 5:
          v12 = 0xE800000000000000;
          v16 = 0x746867756164;
LABEL_22:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 6:
          v13 = 0xD000000000000013;
          v12 = 0x80000001C7596BA0;
          break;
        case 7:
          v12 = 0xE600000000000000;
          v13 = 0x796C696D6166;
          break;
        case 8:
          v12 = 0xE600000000000000;
          v15 = 1752457574;
          goto LABEL_27;
        case 9:
          v12 = 0xE600000000000000;
          v13 = 0x646E65697266;
          break;
        case 10:
          v13 = 0xD000000000000010;
          v12 = 0x80000001C7596BD0;
          break;
        case 11:
          v12 = 0xE200000000000000;
          v13 = 25965;
          break;
        case 12:
          v13 = 0x726568746F6DLL;
          v12 = 0xE600000000000000;
          break;
        case 13:
          v12 = 0xE600000000000000;
          v13 = 0x746E65726170;
          break;
        case 14:
          v12 = 0xE700000000000000;
          v14 = 0x656E74726170;
LABEL_11:
          v13 = v14 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 15:
          v12 = 0xE300000000000000;
          v13 = 7237491;
          break;
        case 16:
          v12 = 0xE600000000000000;
          v15 = 1953720691;
LABEL_27:
          v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 17:
          v12 = 0xE300000000000000;
          v13 = 7367030;
          break;
        default:
          break;
      }

      v17 = 0x746E696175716361;
      v18 = 0xEC00000065636E61;
      switch(*v4)
      {
        case 1:
          v18 = 0xE700000000000000;
          v19 = 0x6568746F7262;
          goto LABEL_32;
        case 2:
          v18 = 0xE500000000000000;
          v17 = 0x646C696863;
          break;
        case 3:
          v17 = 0xD000000000000015;
          v18 = 0x80000001C7596B70;
          break;
        case 4:
          v18 = 0xE800000000000000;
          v21 = 0x6B726F776F63;
          goto LABEL_43;
        case 5:
          v18 = 0xE800000000000000;
          v21 = 0x746867756164;
LABEL_43:
          v17 = v21 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 6:
          v17 = 0xD000000000000013;
          v18 = 0x80000001C7596BA0;
          break;
        case 7:
          v18 = 0xE600000000000000;
          v17 = 0x796C696D6166;
          break;
        case 8:
          v18 = 0xE600000000000000;
          v20 = 1752457574;
          goto LABEL_48;
        case 9:
          v18 = 0xE600000000000000;
          v17 = 0x646E65697266;
          break;
        case 10:
          v17 = 0xD000000000000010;
          v18 = 0x80000001C7596BD0;
          break;
        case 11:
          v18 = 0xE200000000000000;
          v17 = 25965;
          break;
        case 12:
          v17 = 0x726568746F6DLL;
          v18 = 0xE600000000000000;
          break;
        case 13:
          v18 = 0xE600000000000000;
          v17 = 0x746E65726170;
          break;
        case 14:
          v18 = 0xE700000000000000;
          v19 = 0x656E74726170;
LABEL_32:
          v17 = v19 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 15:
          v18 = 0xE300000000000000;
          v17 = 7237491;
          break;
        case 16:
          v18 = 0xE600000000000000;
          v20 = 1953720691;
LABEL_48:
          v17 = v20 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 17:
          v18 = 0xE300000000000000;
          v17 = 7367030;
          break;
        default:
          break;
      }

      v22 = v13 == v17 && v12 == v18;
      if (v22)
      {
        break;
      }

      v23 = sub_1C7551DBC();

      if ((v23 & 1) == 0)
      {
        goto LABEL_58;
      }

      v24 = v6;
      v22 = v7 == v6;
      v6 += 16;
      if (!v22)
      {
        goto LABEL_59;
      }

LABEL_60:
      v7 += 16;
    }

LABEL_58:
    v24 = v4;
    v22 = v7 == v4;
    v4 += 16;
    if (v22)
    {
      goto LABEL_60;
    }

LABEL_59:
    *v7 = *v24;
    goto LABEL_60;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_62:
  v25 = v6 - 16;
  v5 -= 16;
  v44 = v6;
  for (i = v6 - 16; v10 > v4 && v6 > v7; v25 = i)
  {
    v27 = *v25;
    v28 = 0xEC00000065636E61;
    v29 = 0x746E696175716361;
    switch(*(v10 - 16))
    {
      case 1:
        v28 = 0xE700000000000000;
        v30 = 0x6568746F7262;
        goto LABEL_72;
      case 2:
        v28 = 0xE500000000000000;
        v29 = 0x646C696863;
        break;
      case 3:
        v29 = 0xD000000000000015;
        v28 = 0x80000001C7596B70;
        break;
      case 4:
        v28 = 0xE800000000000000;
        v32 = 0x6B726F776F63;
        goto LABEL_83;
      case 5:
        v28 = 0xE800000000000000;
        v32 = 0x746867756164;
LABEL_83:
        v29 = v32 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v29 = 0xD000000000000013;
        v28 = 0x80000001C7596BA0;
        break;
      case 7:
        v28 = 0xE600000000000000;
        v29 = 0x796C696D6166;
        break;
      case 8:
        v28 = 0xE600000000000000;
        v31 = 1752457574;
        goto LABEL_88;
      case 9:
        v28 = 0xE600000000000000;
        v29 = 0x646E65697266;
        break;
      case 10:
        v29 = 0xD000000000000010;
        v28 = 0x80000001C7596BD0;
        break;
      case 11:
        v28 = 0xE200000000000000;
        v29 = 25965;
        break;
      case 12:
        v29 = 0x726568746F6DLL;
        v28 = 0xE600000000000000;
        break;
      case 13:
        v28 = 0xE600000000000000;
        v29 = 0x746E65726170;
        break;
      case 14:
        v28 = 0xE700000000000000;
        v30 = 0x656E74726170;
LABEL_72:
        v29 = v30 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v28 = 0xE300000000000000;
        v29 = 7237491;
        break;
      case 16:
        v28 = 0xE600000000000000;
        v31 = 1953720691;
LABEL_88:
        v29 = v31 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v28 = 0xE300000000000000;
        v29 = 7367030;
        break;
      default:
        break;
    }

    v33 = 0x746E696175716361;
    v34 = 0xEC00000065636E61;
    switch(v27)
    {
      case 1:
        v34 = 0xE700000000000000;
        v35 = 0x6568746F7262;
        goto LABEL_93;
      case 2:
        v34 = 0xE500000000000000;
        v33 = 0x646C696863;
        break;
      case 3:
        v33 = 0xD000000000000015;
        v34 = 0x80000001C7596B70;
        break;
      case 4:
        v34 = 0xE800000000000000;
        v37 = 0x6B726F776F63;
        goto LABEL_104;
      case 5:
        v34 = 0xE800000000000000;
        v37 = 0x746867756164;
LABEL_104:
        v33 = v37 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v33 = 0xD000000000000013;
        v34 = 0x80000001C7596BA0;
        break;
      case 7:
        v34 = 0xE600000000000000;
        v33 = 0x796C696D6166;
        break;
      case 8:
        v34 = 0xE600000000000000;
        v36 = 1752457574;
        goto LABEL_109;
      case 9:
        v34 = 0xE600000000000000;
        v33 = 0x646E65697266;
        break;
      case 10:
        v33 = 0xD000000000000010;
        v34 = 0x80000001C7596BD0;
        break;
      case 11:
        v34 = 0xE200000000000000;
        v33 = 25965;
        break;
      case 12:
        v33 = 0x726568746F6DLL;
        v34 = 0xE600000000000000;
        break;
      case 13:
        v34 = 0xE600000000000000;
        v33 = 0x746E65726170;
        break;
      case 14:
        v34 = 0xE700000000000000;
        v35 = 0x656E74726170;
LABEL_93:
        v33 = v35 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v34 = 0xE300000000000000;
        v33 = 7237491;
        break;
      case 16:
        v34 = 0xE600000000000000;
        v36 = 1953720691;
LABEL_109:
        v33 = v36 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v34 = 0xE300000000000000;
        v33 = 7367030;
        break;
      default:
        break;
    }

    if (v29 == v33 && v28 == v34)
    {
    }

    else
    {
      v39 = sub_1C7551DBC();

      if (v39)
      {
        v6 = i;
        if (v5 + 16 != v44)
        {
          *v5 = *i;
          v6 = i;
        }

        goto LABEL_62;
      }
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v5 -= 16;
    v10 -= 16;
    v6 = v44;
  }

LABEL_123:
  v40 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v40])
  {
    memmove(v6, v4, 16 * v40);
  }

  return 1;
}

double sub_1C7483124@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = 0x10000000000;
  if (!*(v2 + 53))
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!*(v2 + 52))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(v2 + 51))
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!*(v2 + 50))
  {
    v6 = 0;
  }

  v7 = 256;
  if (!*(v2 + 49))
  {
    v7 = 0;
  }

  return sub_1C747AB40(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), v7 | *(v2 + 48) | v6 | v5 | v4 | v3, *(v2 + 56), a2);
}

uint64_t sub_1C74831B0(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  sub_1C75504FC();
  result = sub_1C747E80C(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_29;
  }

  if (v7)
  {
    v8 = *(v5 + 16);
LABEL_29:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v5 + 16);
      if (v9 == v10)
      {
        goto LABEL_29;
      }

      if (v9 >= v10)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        break;
      }

      v11 = v5 + 32;
      v12 = (v5 + 32 + 16 * v9);
      if (*(a2 + 16))
      {
        v34 = v5 + 32;
        v36 = v5;
        v14 = *v12;
        v13 = v12[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_57_29();
        while (1)
        {
          v16 = v15 & v35;
          if (((*(a2 + 56 + (((v15 & v35) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v35)) & 1) == 0)
          {
            break;
          }

          v17 = (*(a2 + 48) + 16 * v16);
          if (*v17 != v14 || v17[1] != v13)
          {
            v19 = sub_1C7551DBC();
            v15 = v16 + 1;
            if ((v19 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v36;
          goto LABEL_26;
        }

        v5 = v36;
        v11 = v34;
      }

      if (v8 != v9)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        v20 = *(v5 + 16);
        if (v8 >= v20)
        {
          goto LABEL_34;
        }

        if (v9 >= v20)
        {
          goto LABEL_35;
        }

        v21 = (v11 + 16 * v8);
        v23 = *v21;
        v22 = v21[1];
        v24 = v5;
        v26 = *v12;
        v25 = v12[1];
        sub_1C75504FC();
        sub_1C75504FC();
        v27 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E439C();
          v27 = v33;
        }

        v28 = v27;
        v29 = v27 + 32;
        v30 = (v29 + 16 * v8);
        *v30 = v26;
        v30[1] = v25;
        v5 = v28;

        if (v9 >= *(v5 + 16))
        {
          goto LABEL_36;
        }

        v31 = (v29 + 16 * v9);
        *v31 = v23;
        v31[1] = v22;

        *a1 = v5;
      }

      v32 = __OFADD__(v8++, 1);
      if (v32)
      {
        goto LABEL_32;
      }

LABEL_26:
      v32 = __OFADD__(v9++, 1);
      if (v32)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C74833EC(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  sub_1C75504FC();
  result = sub_1C747E700(v6);
  if (v3)
  {
LABEL_20:

    return v2;
  }

  if (v8)
  {
    v2 = *(v6 + 16);

    return v2;
  }

  v2 = result;
  v23 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result; ; i += 16)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v12 = v6 + i;
      MEMORY[0x1EEE9AC00](result);
      sub_1C75504FC();
      v13 = a2;
      v14 = sub_1C70735F4();

      if (v14)
      {
        a2 = v13;
      }

      else
      {
        if (v9 != v2)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v15 = *(v6 + 16);
          if (v2 >= v15)
          {
            goto LABEL_24;
          }

          if (v9 >= v15)
          {
            goto LABEL_25;
          }

          v16 = (v6 + 32 + 16 * v2);
          v17 = v16[1];
          v24 = *v16;
          v18 = *(v12 + 48);
          v19 = *(v12 + 56);
          sub_1C75504FC();
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C70E439C();
            v6 = v22;
          }

          v20 = v6 + 16 * v2;
          *(v20 + 32) = v18;
          *(v20 + 40) = v19;

          if (v9 >= *(v6 + 16))
          {
            goto LABEL_26;
          }

          v21 = v6 + i;
          *(v21 + 48) = v24;
          *(v21 + 56) = v17;

          *v23 = v6;
        }

        a2 = v13;
        ++v2;
      }

      ++v9;
    }

    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C7483600(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v4 = sub_1C7483CCC(v12, v7, v5, a2);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      return v4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C71FAC38(0, v7, v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  v8 = OUTLINED_FUNCTION_117_0();
  v10 = sub_1C74838EC(v8, v9, v5, a2);
  if (!v2)
  {
    return v10;
  }

  swift_willThrow();
  return v4;
}

void *sub_1C7483768(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      a3 = sub_1C7483D50(v11, v7, v5);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v12 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v7, v8);
  v9 = sub_1C74839E0(v8, v7, v5);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_1C74838EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v13) >= 1)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return a4();
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      return a4();
    }

    v15 = *(a3 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C74839E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v25 = 0;
  v26 = (v7 + 63) >> 6;
  while (v9)
  {
    v33 = v4;
    v10 = __clz(__rbit64(v9));
    v29 = (v9 - 1) & v9;
LABEL_11:
    v13 = v10 | (v5 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v27 = v13;
    sub_1C6FB5E28(*(a3 + 56) + 40 * v13, v32);
    v30[0] = v16;
    v30[1] = v15;
    v17 = sub_1C6FB5E28(v32, &v31);
    MEMORY[0x1EEE9AC00](v17);
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v18 = v33;
    v19 = sub_1C70735F4();
    v4 = v18;

    if (v19)
    {
      sub_1C6FD7FC8(v30, &qword_1EC2181B8);
      __swift_destroy_boxed_opaque_existential_1(v32);

      v9 = v29;
LABEL_15:
      *(v24 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1C7485980(v24, a2, v25, a3);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v20);
      sub_1C75504FC();
      v21 = sub_1C70735F4();

      sub_1C6FD7FC8(v30, &qword_1EC2181B8);
      __swift_destroy_boxed_opaque_existential_1(v32);

      v9 = v29;
      if (v21)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v26)
    {
      return sub_1C7485980(v24, a2, v25, a3);
    }

    v12 = *(v6 + 8 * v5);
    ++v11;
    if (v12)
    {
      v33 = v4;
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C7483CCC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = OUTLINED_FUNCTION_117_0();
    v8 = sub_1C74838EC(v6, v7, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1C7483D50(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1C74839E0(v5, a2, a3);

    return v6;
  }

  return result;
}

void sub_1C7483DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_11_76();
    if (v7)
    {
    }

    else
    {
      OUTLINED_FUNCTION_19_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169F8);
      OUTLINED_FUNCTION_99_1();
      sub_1C7551B0C();
      OUTLINED_FUNCTION_28_0();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      while (v10)
      {
        OUTLINED_FUNCTION_24_5();
LABEL_17:
        OUTLINED_FUNCTION_38_39();
        v17 = *(v16 + 8 * v15);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_20_6();
        if (v7)
        {
          OUTLINED_FUNCTION_15_0();
          while (1)
          {
            OUTLINED_FUNCTION_95_2();
            if (v7)
            {
              if (v18)
              {
                goto LABEL_29;
              }
            }

            OUTLINED_FUNCTION_41_45();
            if (!v7)
            {
              OUTLINED_FUNCTION_14_1();
              goto LABEL_25;
            }
          }
        }

        OUTLINED_FUNCTION_16();
LABEL_25:
        OUTLINED_FUNCTION_98_0();
        *(v6 + 64 + v19) |= v20;
        OUTLINED_FUNCTION_26_49(v21);
        *(v23 + 8 * v22) = v17;
        OUTLINED_FUNCTION_5_7();
        if (v9)
        {
          goto LABEL_30;
        }

        if (!v3)
        {
          return;
        }
      }

      v12 = v11;
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= v4)
        {
          return;
        }

        ++v12;
        if (v5[v11])
        {
          OUTLINED_FUNCTION_78_0();
          v10 = v14 & v13;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1C7483F80()
{
  OUTLINED_FUNCTION_206();
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v5;
  OUTLINED_FUNCTION_11_76();
  if (v8)
  {

LABEL_27:
    OUTLINED_FUNCTION_204();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD88);
  OUTLINED_FUNCTION_99_1();
  sub_1C7551B0C();
  OUTLINED_FUNCTION_28_0();
  if (v9 != v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v2;
  }

  v12 = 0;
  v25 = v7;
  while (v11)
  {
    OUTLINED_FUNCTION_8_2();
LABEL_17:
    OUTLINED_FUNCTION_24_48();
    v18 = (v17 + 16 * v16);
    v19 = v18[1];
    v26 = *v18;
    OUTLINED_FUNCTION_52_31();
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_42_17();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_23_53();
    if (v8)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v8)
        {
          if (v21)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_23_43();
        if (!v8)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_25;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_25:
    OUTLINED_FUNCTION_0_195(v20);
    *v22 = v7;
    v22[1] = v4;
    v24 = (*(v3 + 56) + 16 * v23);
    *v24 = v26;
    v24[1] = v19;
    OUTLINED_FUNCTION_5_7();
    if (v10)
    {
      goto LABEL_30;
    }

    v7 = v25;
    if (!v0)
    {
      goto LABEL_27;
    }
  }

  v13 = v12;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v1)
    {
      goto LABEL_27;
    }

    ++v13;
    if (v2[v12])
    {
      OUTLINED_FUNCTION_78_0();
      v11 = v15 & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C7484114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_36();
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_43();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_54_33(v12, v13, v14, v15, v16, v17, v18, v19, v34);
  if (a3)
  {
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C300);
      OUTLINED_FUNCTION_99_1();
      sub_1C7551B0C();
      OUTLINED_FUNCTION_16_68();
      while (v20)
      {
        OUTLINED_FUNCTION_36_7();
        v37 = v21;
LABEL_13:
        v25 = OUTLINED_FUNCTION_14_70();
        v26(v25);
        v27 = OUTLINED_FUNCTION_30_50();
        (a4)(v27);
        sub_1C7485D20(&qword_1EDD0CBA8, MEMORY[0x1E69695A8]);
        OUTLINED_FUNCTION_64_23();
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_20_6();
        if (v28)
        {
          OUTLINED_FUNCTION_15_0();
          v5 = v36;
          while (1)
          {
            OUTLINED_FUNCTION_95_2();
            if (v28)
            {
              if (v30)
              {
                goto LABEL_27;
              }
            }

            if (v29 == v31)
            {
              v29 = 0;
            }

            if (*(v6 + 8 * v29) != -1)
            {
              OUTLINED_FUNCTION_8_92();
              goto LABEL_23;
            }
          }
        }

        OUTLINED_FUNCTION_9_91();
        v5 = v36;
LABEL_23:
        v32 = OUTLINED_FUNCTION_13_89();
        (a4)(v32);
        OUTLINED_FUNCTION_36_39();
        if (v33)
        {
          goto LABEL_28;
        }

        a4 = v35;
        v20 = v37;
      }

      v22 = v7;
      while (1)
      {
        v7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v7 >= v4)
        {
          return;
        }

        ++v22;
        if (*(v5 + 8 * v7))
        {
          OUTLINED_FUNCTION_78_0();
          v37 = v24 & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }
  }
}

void sub_1C7484374()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_19_36();
  v6 = type metadata accessor for Hastings.Feature();
  v7 = OUTLINED_FUNCTION_18(v6);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (!v5)
  {
    goto LABEL_18;
  }

  if (v3[2] == v5)
  {

LABEL_18:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD28);
  OUTLINED_FUNCTION_99_1();
  v14 = sub_1C7551B0C();
  if (v0 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v1;
  }

  v16 = 0;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v21 = v17 | (v16 << 6);
    sub_1C7485C70(v3[6] + *(v25 + 72) * v21, v13);
    v22 = *(v3[7] + 8 * v21);
    sub_1C7485CC8(v13, v10);
    sub_1C75504FC();
    sub_1C747E954(v10, v22, v14);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_20;
    }

    if (!v5)
    {
      goto LABEL_18;
    }
  }

  v18 = v16;
  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= v0)
    {
      goto LABEL_18;
    }

    ++v18;
    if (v1[v16])
    {
      OUTLINED_FUNCTION_78_0();
      v15 = v20 & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C7484568()
{
  OUTLINED_FUNCTION_206();
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v5;
  OUTLINED_FUNCTION_11_76();
  if (v8)
  {

LABEL_27:
    OUTLINED_FUNCTION_204();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2F8);
  OUTLINED_FUNCTION_99_1();
  sub_1C7551B0C();
  OUTLINED_FUNCTION_28_0();
  if (v9 != v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v2;
  }

  v12 = 0;
  v23 = v7;
  while (v11)
  {
    OUTLINED_FUNCTION_24_5();
LABEL_17:
    OUTLINED_FUNCTION_38_39();
    v18 = *(v17 + 8 * v16);
    OUTLINED_FUNCTION_52_31();
    sub_1C75504FC();
    v24 = v18;
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_23_53();
    if (v8)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v8)
        {
          if (v20)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_23_43();
        if (!v8)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_25;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_25:
    OUTLINED_FUNCTION_0_195(v19);
    *v21 = v7;
    v21[1] = v4;
    *(*(v3 + 56) + 8 * v22) = v24;
    OUTLINED_FUNCTION_5_7();
    if (v10)
    {
      goto LABEL_30;
    }

    v7 = v23;
    if (!v0)
    {
      goto LABEL_27;
    }
  }

  v13 = v12;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v1)
    {
      goto LABEL_27;
    }

    ++v13;
    if (v2[v12])
    {
      OUTLINED_FUNCTION_78_0();
      v11 = v15 & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C74846E0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v9 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  if (!v3)
  {
    goto LABEL_29;
  }

  if (v1[2] == v3)
  {

LABEL_29:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2F0);
  v14 = sub_1C7551B0C();
  if (v5 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v7;
  }

  v16 = 0;
  v17 = v14 + 64;
  v39 = v7;
  v40 = v1;
  v37 = v5;
  v38 = v14;
  while (v15)
  {
    OUTLINED_FUNCTION_36_7();
    v42 = v19;
LABEL_16:
    v23 = v18 | (v16 << 6);
    memcpy(v45, (v1[6] + 120 * v23), 0x78uLL);
    v24 = *(v1[7] + 8 * v23);
    sub_1C7551F3C();
    v25 = v45[10];
    sub_1C6FCA6E4(v45, &v44);
    v43 = v24;
    sub_1C75504FC();
    sub_1C75505AC();
    v26 = *(v25 + 16);
    MEMORY[0x1CCA5E460](v26);
    if (v26)
    {
      v27 = v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v28 = *(v41 + 72);
      do
      {
        sub_1C7485C70(v27, v13);
        QueryTokenCategoryType.hash(into:)();
        sub_1C7485C18(v13, type metadata accessor for QueryTokenSuggestion);
        v27 += v28;
        --v26;
      }

      while (v26);
    }

    sub_1C7551FAC();
    v5 = v37;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    v1 = v40;
    if (v29)
    {
      OUTLINED_FUNCTION_15_0();
      v7 = v39;
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v29)
        {
          if (v33)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_41_45();
        if (!v29)
        {
          OUTLINED_FUNCTION_8_92();
          v32 = v35 + (v34 << 6);
          goto LABEL_27;
        }
      }
    }

    OUTLINED_FUNCTION_9_91();
    v32 = v30 | v31;
    v7 = v39;
LABEL_27:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    memcpy((v38[6] + 120 * v32), v45, 0x78uLL);
    *(v38[7] + 8 * v32) = v43;
    ++v38[2];
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v42;
    if (!v3)
    {
      goto LABEL_29;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= v5)
    {
      goto LABEL_29;
    }

    ++v20;
    if (v7[v16])
    {
      OUTLINED_FUNCTION_78_0();
      v42 = v22 & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C74849E8()
{
  OUTLINED_FUNCTION_206();
  if (!v4)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_11_76();
  if (v5)
  {

LABEL_27:
    OUTLINED_FUNCTION_204();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2D8);
  OUTLINED_FUNCTION_99_1();
  sub_1C7551B0C();
  OUTLINED_FUNCTION_28_0();
  if (v6 != v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v2;
  }

  v9 = 0;
  while (v8)
  {
    OUTLINED_FUNCTION_24_5();
LABEL_17:
    OUTLINED_FUNCTION_38_39();
    v21 = *(v14 + 8 * v13);
    OUTLINED_FUNCTION_52_31();
    sub_1C75504FC();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v5)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v5)
        {
          if (v15)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_41_45();
        if (!v5)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_25;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_25:
    OUTLINED_FUNCTION_98_0();
    *(v3 + 64 + v16) |= v17;
    OUTLINED_FUNCTION_26_49(v18);
    *(v20 + 8 * v19) = v21;
    OUTLINED_FUNCTION_5_7();
    if (v7)
    {
      goto LABEL_30;
    }

    if (!v0)
    {
      goto LABEL_27;
    }
  }

  v10 = v9;
  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v1)
    {
      goto LABEL_27;
    }

    ++v10;
    if (v2[v9])
    {
      OUTLINED_FUNCTION_78_0();
      v8 = v12 & v11;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C7484B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_36();
  sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_43();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_54_33(v12, v13, v14, v15, v16, v17, v18, v19, v34);
  if (a3)
  {
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2E8);
      OUTLINED_FUNCTION_99_1();
      sub_1C7551B0C();
      OUTLINED_FUNCTION_16_68();
      while (v20)
      {
        OUTLINED_FUNCTION_36_7();
        v37 = v21;
LABEL_13:
        v25 = OUTLINED_FUNCTION_14_70();
        v26(v25);
        v27 = OUTLINED_FUNCTION_30_50();
        (a4)(v27);
        sub_1C7485D20(&qword_1EC215FD8, MEMORY[0x1E6969610]);
        OUTLINED_FUNCTION_64_23();
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_20_6();
        if (v28)
        {
          OUTLINED_FUNCTION_15_0();
          v5 = v36;
          while (1)
          {
            OUTLINED_FUNCTION_95_2();
            if (v28)
            {
              if (v30)
              {
                goto LABEL_27;
              }
            }

            if (v29 == v31)
            {
              v29 = 0;
            }

            if (*(v6 + 8 * v29) != -1)
            {
              OUTLINED_FUNCTION_8_92();
              goto LABEL_23;
            }
          }
        }

        OUTLINED_FUNCTION_9_91();
        v5 = v36;
LABEL_23:
        v32 = OUTLINED_FUNCTION_13_89();
        (a4)(v32);
        OUTLINED_FUNCTION_36_39();
        if (v33)
        {
          goto LABEL_28;
        }

        a4 = v35;
        v20 = v37;
      }

      v22 = v7;
      while (1)
      {
        v7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v7 >= v4)
        {
          return;
        }

        ++v22;
        if (*(v5 + 8 * v7))
        {
          OUTLINED_FUNCTION_78_0();
          v37 = v24 & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }
  }
}

void sub_1C7484DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_11_76();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_19_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2E0);
      OUTLINED_FUNCTION_99_1();
      sub_1C7551B0C();
      OUTLINED_FUNCTION_28_0();
      if (v11 != v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v6;
      }

      v14 = 0;
      v28 = a4;
      while (v13)
      {
        OUTLINED_FUNCTION_8_2();
LABEL_17:
        OUTLINED_FUNCTION_24_48();
        v20 = (v19 + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        OUTLINED_FUNCTION_52_31();
        sub_1C75504FC();
        sub_1C75504FC();
        OUTLINED_FUNCTION_42_17();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_23_53();
        if (v10)
        {
          OUTLINED_FUNCTION_15_0();
          while (1)
          {
            OUTLINED_FUNCTION_95_2();
            if (v10)
            {
              if (v24)
              {
                goto LABEL_29;
              }
            }

            OUTLINED_FUNCTION_23_43();
            if (!v10)
            {
              OUTLINED_FUNCTION_14_1();
              goto LABEL_25;
            }
          }
        }

        OUTLINED_FUNCTION_16();
LABEL_25:
        OUTLINED_FUNCTION_0_195(v23);
        *v25 = a4;
        v25[1] = v8;
        v27 = (*(v7 + 56) + 16 * v26);
        *v27 = v21;
        v27[1] = v22;
        OUTLINED_FUNCTION_5_7();
        if (v12)
        {
          goto LABEL_30;
        }

        a4 = v28;
        if (!v4)
        {
          return;
        }
      }

      v15 = v14;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v5)
        {
          return;
        }

        ++v15;
        if (v6[v14])
        {
          OUTLINED_FUNCTION_78_0();
          v13 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1C7484F94()
{
  OUTLINED_FUNCTION_206();
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v5;
  OUTLINED_FUNCTION_11_76();
  if (v8)
  {

LABEL_27:
    OUTLINED_FUNCTION_204();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_99_1();
  sub_1C7551B0C();
  OUTLINED_FUNCTION_28_0();
  if (v10 != v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v2;
  }

  v13 = 0;
  v24 = v7;
  while (v12)
  {
    OUTLINED_FUNCTION_8_2();
LABEL_17:
    OUTLINED_FUNCTION_24_48();
    v19 = *(v18 + 8 * v17);
    OUTLINED_FUNCTION_52_31();
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_42_17();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_23_53();
    if (v8)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v8)
        {
          if (v21)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_23_43();
        if (!v8)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_25;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_25:
    OUTLINED_FUNCTION_0_195(v20);
    *v22 = v7;
    v22[1] = v4;
    *(*(v3 + 56) + 8 * v23) = v19;
    OUTLINED_FUNCTION_5_7();
    if (v11)
    {
      goto LABEL_30;
    }

    v7 = v24;
    if (!v0)
    {
      goto LABEL_27;
    }
  }

  v14 = v13;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v1)
    {
      goto LABEL_27;
    }

    ++v14;
    if (v2[v13])
    {
      OUTLINED_FUNCTION_78_0();
      v12 = v16 & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1C7485100(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2A8);
  result = sub_1C7551B0C();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1C7551F3C();
    sub_1C75505AC();

    result = sub_1C7551FAC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C7485388(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2A0);
  result = sub_1C7551B0C();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 2 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1C7551F3C();
    sub_1C7551F6C();
    result = sub_1C7551FAC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 2 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C74855A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2B0);
  result = sub_1C7551B0C();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1C7551F3C();
    sub_1C75505AC();

    result = sub_1C7551FAC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C7485980(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2C8);
  result = sub_1C7551B0C();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1C6FB5E28(v17 + 40 * v16, v33);
    sub_1C6F699F8(v33, v32);
    sub_1C7551F3C();
    sub_1C75504FC();
    sub_1C75505AC();
    result = sub_1C7551FAC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1C6F699F8(v32, *(v9 + 56) + 40 * v24);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C7485C18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7485C70(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C7485CC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C7485D20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_32_42()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 232), *(*(v0 + 232) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_64_23()
{

  return sub_1C755058C();
}

uint64_t Spatial3DCuration.CurationStage.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t Spatial3DCuration.CurationStage.description.getter()
{
  if (*v0)
  {
    return 0x647261646E617453;
  }

  else
  {
    return 0x696472616F626E4FLL;
  }
}

BOOL static Spatial3DCuration.PresentationTarget.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 6)
  {
    case 1u:
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    case 2u:
      if ((v3 & 0xC0) != 0x80)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    case 3u:
      if (v2 == 192)
      {
        return v3 == 192;
      }

      return v3 == 193;
    default:
      if (v3 >= 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
  }
}

uint64_t Spatial3DCuration.PresentationTarget.hash(into:)()
{
  v1 = *v0;
  switch(v1 >> 6)
  {
    case 1u:
      v2 = 3;
      goto LABEL_6;
    case 2u:
      v2 = 4;
      goto LABEL_6;
    case 3u:
      v3 = v1 != 192;
      return MEMORY[0x1CCA5E460](v3);
    default:
      v2 = 2;
LABEL_6:
      MEMORY[0x1CCA5E460](v2);
      v3 = v1 & 1;
      return MEMORY[0x1CCA5E460](v3);
  }
}

uint64_t Spatial3DCuration.PresentationTarget.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  switch(v1 >> 6)
  {
    case 1u:
      v2 = 3;
      goto LABEL_6;
    case 2u:
      v2 = 4;
      goto LABEL_6;
    case 3u:
      v3 = v1 != 192;
      goto LABEL_7;
    default:
      v2 = 2;
LABEL_6:
      MEMORY[0x1CCA5E460](v2);
      v3 = v1 & 1;
LABEL_7:
      MEMORY[0x1CCA5E460](v3);
      return sub_1C7551FAC();
  }
}

uint64_t sub_1C74860A0()
{
  v1 = *v0;
  sub_1C7551F3C();
  switch(v1 >> 6)
  {
    case 1u:
      v2 = 3;
      goto LABEL_6;
    case 2u:
      v2 = 4;
      goto LABEL_6;
    case 3u:
      v3 = v1 != 192;
      goto LABEL_7;
    default:
      v2 = 2;
LABEL_6:
      MEMORY[0x1CCA5E460](v2);
      v3 = v1 & 1;
LABEL_7:
      MEMORY[0x1CCA5E460](v3);
      return sub_1C7551FAC();
  }
}

unint64_t sub_1C748614C()
{
  result = qword_1EC21C308;
  if (!qword_1EC21C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C308);
  }

  return result;
}

unint64_t sub_1C74861A0(uint64_t a1)
{
  result = sub_1C74861C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C74861C8()
{
  result = qword_1EDD0A9F8;
  if (!qword_1EDD0A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A9F8);
  }

  return result;
}

unint64_t sub_1C7486220()
{
  result = qword_1EDD0A9F0;
  if (!qword_1EDD0A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A9F0);
  }

  return result;
}

unint64_t sub_1C7486278()
{
  result = qword_1EC21C310;
  if (!qword_1EC21C310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C310);
  }

  return result;
}

_BYTE *_s13CurationStageOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s18PresentationTargetOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7C)
  {
    v6 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C74864A0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_1C74864BC(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 ^ 0xC1;
  }

  *result = v2;
  return result;
}

void static LLMWrapper.tokenGenerator(for:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1C754E66C();
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v69 = v5 - v4;
  v6 = sub_1C754E74C();
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_148_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C320);
  v9 = OUTLINED_FUNCTION_76(v8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v64 - v10;
  v11 = sub_1C754E68C();
  OUTLINED_FUNCTION_3_0();
  v68 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v67 = v15 - v14;
  v16 = sub_1C754E4FC();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_78();
  v70 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v64 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C328);
  v25 = OUTLINED_FUNCTION_76(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_78();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v64 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v64 - v33;
  LODWORD(v1) = *v1;
  LOBYTE(v75[0]) = v1;
  v74 = static LLMConfiguration.modelCatalogResourceID(for:)(v75);
  v36 = v35;
  v37 = 0xE500000000000000;
  v38 = 0x726568746FLL;
  switch(v1)
  {
    case 6:
    case 11:
    case 15:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD00000000000001ALL;
      break;
    case 7:
    case 12:
    case 16:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD000000000000021;
      break;
    case 8:
    case 13:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD00000000000001CLL;
      break;
    case 9:
    case 14:
    case 17:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD00000000000001BLL;
      break;
    case 18:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD000000000000014;
      break;
    case 19:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD000000000000023;
      break;
    default:
      break;
  }

  v66 = v38;
  v71 = v37;
  v39 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v16);
  sub_1C75504FC();
  sub_1C754E4EC();
  sub_1C6FD7FC8(v34, &qword_1EC21C328);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v16);
  sub_1C7491A30(v32, v34);
  v43 = v72;
  v42 = v73;
  sub_1C70555F8(v34, v28, &qword_1EC21C328);
  if (__swift_getEnumTagSinglePayload(v28, 1, v16) == 1)
  {

    v44 = &qword_1EC21C328;
    v45 = v28;
  }

  else
  {
    (*(v18 + 32))(v42, v28, v16);
    (*(v18 + 16))(v70, v42, v16);
    sub_1C754E67C();
    if (__swift_getEnumTagSinglePayload(v43, 1, v11) != 1)
    {

      v65 = v18;
      v60 = v67;
      v59 = v68;
      (*(v68 + 32))(v67, v43, v11);
      v74 = "fallback_fallbackBase30b";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C330);
      v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1C755BAB0;
      (*(v59 + 16))(v62 + v61, v60, v11);
      sub_1C754E65C();
      v63 = [objc_opt_self() processInfo];
      [v63 processIdentifier];

      sub_1C754E73C();
      sub_1C754E64C();
      swift_allocObject();
      sub_1C754E61C();
      (*(v59 + 8))(v60, v11);
      (*(v65 + 8))(v73, v16);
      sub_1C6FD7FC8(v34, &qword_1EC21C328);
      goto LABEL_19;
    }

    v46 = OUTLINED_FUNCTION_23_14();
    v47(v46);

    v44 = &qword_1EC21C320;
    v45 = v43;
  }

  sub_1C6FD7FC8(v45, v44);
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196();
  }

  v48 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v48, qword_1EDD0C928);
  sub_1C75504FC();
  v49 = sub_1C754FEEC();
  v50 = sub_1C755119C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_41_0();
    v52 = swift_slowAlloc();
    v75[0] = v52;
    *v51 = 136315138;
    v53 = sub_1C6F765A4(v74, v36, v75);

    *(v51 + 4) = v53;
    OUTLINED_FUNCTION_34_22();
    _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  sub_1C6FD7FC8(v34, &qword_1EC21C328);
LABEL_19:
  OUTLINED_FUNCTION_25_0();
}

void static LLMWrapper.gmsSamplingParameters(from:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C338);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  v7 = *(v1 + 24);
  v12[1] = *(v1 + 32);
  if (v7 == 255)
  {
    v8 = sub_1C754E6DC();
    v9 = 1;
  }

  else
  {
    if (v7)
    {
      sub_1C754E6CC();
    }

    else
    {
      sub_1C754E6BC();
    }

    v8 = sub_1C754E6DC();
    v9 = 0;
  }

  __swift_storeEnumTagSinglePayload(v6, v9, 1, v8);
  v10 = OUTLINED_FUNCTION_57_0();
  sub_1C70555F8(v10, v11, &qword_1EC21C338);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_145_7();
  sub_1C754E71C();
  sub_1C754E70C();
  sub_1C754E6EC();
  sub_1C754E6FC();
  sub_1C6FD7FC8(v6, &qword_1EC21C338);
  OUTLINED_FUNCTION_25_0();
}

void LLMUseCaseIdentifier.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_58_31();
      break;
    case 2:
      OUTLINED_FUNCTION_57_30();
      break;
    case 3:
      OUTLINED_FUNCTION_55_32();
      break;
    case 4:
      OUTLINED_FUNCTION_56_31();
      break;
    case 5:
      OUTLINED_FUNCTION_10_2();
      break;
    default:
      return;
  }
}

uint64_t LLMWrapper.init(modelType:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 20)
  {
    v3 = 5;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 >= 5)
  {
    v7 = 0;
    type metadata accessor for AjaxLLM();
    swift_allocObject();
    v4 = &v7;
  }

  else
  {
    v6 = v3;
    type metadata accessor for AjaxLLM();
    swift_allocObject();
    v4 = &v6;
  }

  result = AjaxLLM.init(model:)(v4);
  *a2 = v3;
  *(a2 + 8) = result;
  *(a2 + 16) = v3 - 10 < 5;
  return result;
}

uint64_t LLMResponse.init(stream:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(type metadata accessor for LLMResponse(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 32);

  return v6(&a2[v4], a1);
}

uint64_t LLMResponse.makeAsyncIterator()()
{
  type metadata accessor for LLMResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  return sub_1C7550DBC();
}

uint64_t LLMResponse.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  OUTLINED_FUNCTION_90_16();
  *v1 = v2;
  v1[1] = sub_1C74872B4;

  return MEMORY[0x1EEE6DB98](v0 + 16);
}

uint64_t sub_1C74872B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74873AC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C7487438;

  return LLMResponse.AsyncIterator.next()();
}

uint64_t sub_1C7487438()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_14();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  OUTLINED_FUNCTION_100_9();

  return v12();
}

uint64_t sub_1C7487538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1C74875F4;

  return sub_1C746C5A0();
}

uint64_t sub_1C74875F4()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_14();
  *v10 = v9;

  if (v0)
  {
    **(v7 + 24) = v0;
  }

  else
  {
    v12 = *(v7 + 16);
    *v12 = v5;
    v12[1] = v3;
  }

  OUTLINED_FUNCTION_100_9();

  return v11();
}

uint64_t LLMResponse.collect()()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  v1[7] = v2;
  OUTLINED_FUNCTION_18(v2);
  v1[8] = v3;
  v1[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  v1[10] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[11] = v5;
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7487824()
{
  OUTLINED_FUNCTION_123();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for LLMResponse(0);
  (*(v2 + 16))(v1, v4 + *(v5 + 20), v3);
  sub_1C7099594(&qword_1EDD069F8, &qword_1EC214C08);
  sub_1C7550E8C();
  v0[13] = 0xE000000000000000;
  v0[14] = 0;
  OUTLINED_FUNCTION_33_1(&qword_1EDD06A18, &qword_1EC214DE8);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[15] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_22_66(v6);

  return MEMORY[0x1EEE6D8C8](v8);
}

uint64_t sub_1C7487944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7487A60()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[2];
    v0[4] = v0[14];
    v0[5] = v2;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v3, v1);

    v4 = v0[4];
    v0[13] = v0[5];
    v0[14] = v4;
    OUTLINED_FUNCTION_33_1(&qword_1EDD06A18, &qword_1EC214DE8);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[15] = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_22_66();

    return MEMORY[0x1EEE6D8C8](v7);
  }

  else
  {
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[6];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_1C75504FC();

    *v10 = v9;
    v10[1] = v8;

    v11 = v0[1];
    v13 = v0[13];
    v12 = v0[14];

    return v11(v12, v13);
  }
}

uint64_t sub_1C7487BD8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

PhotosIntelligence::LLMUseCaseIdentifier_optional __swiftcall LLMUseCaseIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1C7487D0C(void *a1@<X8>)
{
  LLMUseCaseIdentifier.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C7487D50()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0C928);
  __swift_project_value_buffer(v0, qword_1EDD0C928);
  return sub_1C754FEFC();
}

uint64_t LLMWrapper.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

void static LLMWrapper.gmsStringUseCaseIdentifier(for:)(_BYTE *a1)
{
  switch(*a1)
  {
    case 6:
    case 0xB:
    case 0xF:
      OUTLINED_FUNCTION_55_32();
      break;
    case 7:
    case 0xC:
    case 0x10:
      OUTLINED_FUNCTION_58_31();
      break;
    case 8:
    case 0xD:
      OUTLINED_FUNCTION_56_31();
      break;
    case 9:
    case 0xE:
    case 0x11:
      OUTLINED_FUNCTION_57_30();
      break;
    case 0x12:
      OUTLINED_FUNCTION_10_2();
      break;
    default:
      return;
  }
}

void static LLMWrapper.prewarm(for:photoLibrary:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754E6AC();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_148_2();
  v9 = *v4;
  static LLMWrapper.prewarmQU(with:)(v2);
  if ((v9 | 2) != 2)
  {
    goto LABEL_62;
  }

  type metadata accessor for GlobalTraitCompletionGeneration();
  if (sub_1C7253320())
  {
    sub_1C754E63C();
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v11 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v11, qword_1EDD0C928);
    v12 = sub_1C754FEEC();
    v13 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v13))
    {
      v14 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_146_7(v14);
      OUTLINED_FUNCTION_45_38(&dword_1C6F5C000, v15, v16, "Global Traits token generator prewarm signal sent");
      OUTLINED_FUNCTION_79();
    }
  }

  else
  {
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v17 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v17, qword_1EDD0C928);
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v19))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_89_18(&dword_1C6F5C000, v20, v21, "Global Traits token generator is unavailable, prewarming failed.");
      OUTLINED_FUNCTION_109();
    }
  }

  if (sub_1C6FA7A90())
  {
    sub_1C754E63C();
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v22 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v22, qword_1EDD0C928);
    v23 = sub_1C754FEEC();
    v24 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v24))
    {
      v25 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_146_7(v25);
      OUTLINED_FUNCTION_45_38(&dword_1C6F5C000, v26, v27, "Storyteller token generator prewarm signal sent");
      OUTLINED_FUNCTION_79();
    }
  }

  else
  {
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v28 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v28, qword_1EDD0C928);
    v29 = sub_1C754FEEC();
    v30 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v30))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_89_18(&dword_1C6F5C000, v31, v32, "Storyteller token generator is unavailable, prewarming failed.");
      OUTLINED_FUNCTION_109();
    }
  }

  type metadata accessor for FreeformStoryChapterCurator();
  if (sub_1C71A1238())
  {
    sub_1C754E63C();
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v33 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v33, qword_1EDD0C928);
    v34 = sub_1C754FEEC();
    v35 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v35))
    {
      v36 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_146_7(v36);
      OUTLINED_FUNCTION_45_38(&dword_1C6F5C000, v37, v38, "Chapter Curator token generator prewarm signal sent");
      OUTLINED_FUNCTION_79();
    }
  }

  else
  {
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v39 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v39, qword_1EDD0C928);
    v40 = sub_1C754FEEC();
    v41 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v41))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_89_18(&dword_1C6F5C000, v42, v43, "Chapter Curator token generator is unavailable, prewarming failed.");
      OUTLINED_FUNCTION_109();
    }
  }

  v44 = objc_opt_self();
  if ([v44 useOnDeviceAssetCurationOutlier])
  {
    if (static AssetCurationOutlierDetector.tokenGen.getter())
    {
      sub_1C754E69C();
      sub_1C754E62C();
      (*(v7 + 8))(v0, v5);
      OUTLINED_FUNCTION_37_40();
      if (!v10)
      {
        OUTLINED_FUNCTION_0_196();
      }

      v45 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v45, qword_1EDD0C928);
      v46 = sub_1C754FEEC();
      v47 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v47))
      {
        v48 = OUTLINED_FUNCTION_127();
        *v48 = 0;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "Asset Curation Outlier Rejection token generator prewarm signal sent", v48, 2u);
        OUTLINED_FUNCTION_109();
      }

      v49 = 0;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v50 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v50, qword_1EDD0C928);
    v51 = sub_1C754FEEC();
    v52 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v52))
    {
      v53 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_146_7(v53);
      OUTLINED_FUNCTION_45_38(&dword_1C6F5C000, v54, v55, "Asset Curation Outlier Rejection token generator is unavailable, prewarming failed.");
      OUTLINED_FUNCTION_79();
    }
  }

  v49 = 1;
LABEL_48:
  v56 = [v44 generateOnDeviceTitle];
  if (v49)
  {
    if (v56)
    {
      type metadata accessor for FreeformStoryGenerator();
      v84 = v9;
      if ((static FreeformStoryGenerator.usingFallbackTitle(for:)(&v84) & 1) == 0)
      {
        type metadata accessor for TitleCompletionGeneration();
        if (sub_1C74FEE50())
        {
          sub_1C754E69C();
          sub_1C754E62C();
          (*(v7 + 8))(v0, v5);
          OUTLINED_FUNCTION_37_40();
          if (!v10)
          {
            OUTLINED_FUNCTION_0_196();
          }

          v57 = sub_1C754FF1C();
          OUTLINED_FUNCTION_23_2(v57, qword_1EDD0C928);
          v58 = sub_1C754FEEC();
          v59 = sub_1C75511BC();
          if (OUTLINED_FUNCTION_66(v59))
          {
            v60 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_58_8(v60);
            OUTLINED_FUNCTION_34_22();
            _os_log_impl(v61, v62, v63, v64, v65, 2u);
            OUTLINED_FUNCTION_109();
          }
        }

        else
        {
          OUTLINED_FUNCTION_37_40();
          if (!v10)
          {
            OUTLINED_FUNCTION_0_196();
          }

          v66 = sub_1C754FF1C();
          OUTLINED_FUNCTION_23_2(v66, qword_1EDD0C928);
          v67 = sub_1C754FEEC();
          v68 = sub_1C755119C();
          if (OUTLINED_FUNCTION_66(v68))
          {
            v69 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_58_8(v69);
            OUTLINED_FUNCTION_34_22();
            _os_log_impl(v70, v71, v72, v73, v74, 2u);
            OUTLINED_FUNCTION_109();
          }
        }
      }
    }
  }

LABEL_62:
  type metadata accessor for SafetyController(0);
  static SafetyController.prewarm()();
  OUTLINED_FUNCTION_37_40();
  if (!v10)
  {
    OUTLINED_FUNCTION_0_196();
  }

  v75 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v75, qword_1EDD0C928);
  v76 = sub_1C754FEEC();
  v77 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_66(v77))
  {
    v78 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_58_8(v78);
    OUTLINED_FUNCTION_34_22();
    _os_log_impl(v79, v80, v81, v82, v83, 2u);
    OUTLINED_FUNCTION_109();
  }

  type metadata accessor for StoryMusicCurator();
  static StoryMusicCurator.prewarm(with:)(v2);
  OUTLINED_FUNCTION_25_0();
}

void static LLMWrapper.prewarmQU(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v7 = sub_1C754E6AC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_148_2();
  if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
  {
    if (sub_1C735CC80())
    {
      sub_1C754E69C();
      sub_1C754E62C();
      (*(v9 + 8))(v1, v7);
      if (qword_1EDD0C920 != -1)
      {
        OUTLINED_FUNCTION_0_196();
      }

      v11 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v11, qword_1EDD0C928);
      v12 = sub_1C754FEEC();
      v13 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v13))
      {
        v14 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_58_8(v14);
        OUTLINED_FUNCTION_34_22();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
        OUTLINED_FUNCTION_109();
      }
    }

    else
    {
      if (qword_1EDD0C920 != -1)
      {
        OUTLINED_FUNCTION_0_196();
      }

      v34 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v34, qword_1EDD0C928);
      v35 = sub_1C754FEEC();
      v36 = sub_1C755119C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v37);
        OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v38, v39, "Query Understanding token generator is unavailable, prewarming failed.");
        OUTLINED_FUNCTION_23_3();
      }
    }

    [objc_opt_self() prewarm];
    if (qword_1EDD0C920 != -1)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v40 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v40, qword_1EDD0C928);
    v41 = sub_1C754FEEC();
    v42 = sub_1C75511BC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v43);
      OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v44, v45, "Prewarming Memory Creation Grounding Components");
      OUTLINED_FUNCTION_23_3();
    }
  }

  else
  {
    v20 = [a1 photoAnalysisClient];
    if (v20)
    {
      v21 = v20;
      v22 = [objc_opt_self() processInfo];
      v23 = [v22 processIdentifier];

      if (qword_1EDD0C920 != -1)
      {
        OUTLINED_FUNCTION_0_196();
      }

      v24 = v23;
      v25 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v25, qword_1EDD0C928);
      v26 = sub_1C754FEEC();
      v27 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v27))
      {
        v28 = OUTLINED_FUNCTION_41_0();
        *v28 = 134217984;
        *(v28 + 4) = v24;
        _os_log_impl(&dword_1C6F5C000, v26, v27, "Memory Creation Query Understanding adapter prewarm signal sent with originatorPID=%ld", v28, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      sub_1C7550D5C();
      v29 = OUTLINED_FUNCTION_118();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v21;
      v33[5] = v24;
      sub_1C6FEB80C(0, 0, v6, &unk_1C758DE80, v33);
    }

    else
    {
      if (qword_1EDD0C920 != -1)
      {
        OUTLINED_FUNCTION_0_196();
      }

      v46 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v46, qword_1EDD0C928);
      v51 = sub_1C754FEEC();
      v47 = sub_1C755119C();
      if (os_log_type_enabled(v51, v47))
      {
        v48 = OUTLINED_FUNCTION_127();
        *v48 = 0;
        _os_log_impl(&dword_1C6F5C000, v51, v47, "No photoAnalysis client is available", v48, 2u);
        OUTLINED_FUNCTION_109();
      }

      v49 = v51;
    }
  }
}

uint64_t sub_1C7488AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7488B8C, 0, 0);
}

uint64_t sub_1C7488B8C()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = [objc_allocWithZone(MEMORY[0x1E69BE620]) initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = sub_1C754FF1C();
  v0[5] = v3;
  v4 = __swift_project_value_buffer(v3, qword_1EC219F58);
  (*(*(v3 - 8) + 16))(v2, v4, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  v6 = (v2 + *(v5 + 28));
  v7 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v8 = [v7 processName];

  v9 = sub_1C755068C();
  v11 = v10;

  *v6 = v9;
  v6[1] = v11;
  *(v2 + *(v5 + 32)) = v1;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_1C7488D44;
  OUTLINED_FUNCTION_61_3(v0[3]);
  OUTLINED_FUNCTION_88_0();

  return PhotoAnalysisMomentGraphService.requestPrewarmQueryAnnotator(for:)(v13);
}

uint64_t sub_1C7488D44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7488E3C()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196();
  }

  OUTLINED_FUNCTION_23_2(*(v1 + 40), qword_1EDD0C928);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  v4 = OUTLINED_FUNCTION_66(v3);
  v5 = *(v1 + 32);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_127();
    *v6 = 0;
    _os_log_impl(&dword_1C6F5C000, v2, v0, "Successfully prewarmed Memory Creation Query Understanding", v6, 2u);
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_39_43();
  sub_1C7492A94(v5, v7);

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C7488F2C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_39_43();
  sub_1C7492A94(v1, v2);
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196();
  }

  v3 = *(v0 + 56);
  OUTLINED_FUNCTION_23_2(*(v0 + 40), qword_1EDD0C928);
  v4 = v3;
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_41_0();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Unable to prewarm Memory Creation Query Understanding with error=%@", v9, 0xCu);
    sub_1C6FD7FC8(v10, &qword_1EC215190);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43();

  return v13();
}

unint64_t static LLMWrapper.robustOverestimatedTokenCount(in:)()
{
  v0 = sub_1C75507FC();
  sub_1C75504FC();
  while (1)
  {
    v1 = sub_1C755088C();
    if (!v2)
    {
      break;
    }

    v3 = v1;
    v4 = v2;
    v5 = v1 == 2573 && v2 == 0xE200000000000000;
    if (v5 || (OUTLINED_FUNCTION_117_0(), result = sub_1C7551DBC(), (result & 1) != 0))
    {
LABEL_21:
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        v8 = sub_1C755077C();
      }

      else
      {
        v8 = sub_1C75517EC() << 16;
      }

      if (v8 >> 14 != 4 * v7)
      {
        goto LABEL_20;
      }

      v9 = OUTLINED_FUNCTION_117_0();
      result = sub_1C7491BD0(v9, v10);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_28;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
LABEL_20:
        v14 = OUTLINED_FUNCTION_117_0();
        MEMORY[0x1CCA5CD60](v14);
        goto LABEL_21;
      }

      v11 = OUTLINED_FUNCTION_117_0();
      result = sub_1C7491BD0(v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_29;
      }

      v13 = result;

      if ((v13 & 0xFFFFFF00) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  v15 = v0 / 3;

  v16 = sub_1C75507FC();

  result = v15 + v16;
  if (!__OFADD__(v15, v16))
  {
    return result;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t static LLMWrapper.overestimatedTokenCountGMS(in:)()
{
  sub_1C754E76C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  sub_1C75504FC();
  sub_1C754E77C();
  v1 = sub_1C754E75C();
  v2 = OUTLINED_FUNCTION_117_0();
  v3(v2);
  return v1;
}

uint64_t LLMWrapper.countTokens(in:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 33) = *v2;
  *(v3 + 56) = *(v2 + 8);
  *(v3 + 34) = *(v2 + 16);
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7489348()
{
  OUTLINED_FUNCTION_75_1();
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196();
  }

  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v1, qword_1EDD0C928);

  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_41_0();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    LLMModelType.description.getter();
    v14 = OUTLINED_FUNCTION_117_11(v6, v7, v8, v9, v10, v11, v12, v13, v5);

    *(v4 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Starting count token request with modelType=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v15 = *(v0 + 33);
  if (v15 >= 5)
  {
    v18 = *(v0 + 34);
    v19 = *(v0 + 56);
    *(v0 + 16) = v15;
    *(v0 + 24) = v19;
    *(v0 + 32) = v18;
    v20 = swift_task_alloc();
    *(v0 + 64) = v20;
    *v20 = v0;
    v20[1] = sub_1C7489584;
    v21 = OUTLINED_FUNCTION_61_3(*(v0 + 40));

    return sub_1C74897B0(v21, v22);
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1C74896A0;
    OUTLINED_FUNCTION_61_3(*(v0 + 40));

    return AjaxLLM.countTokens(prompt:ignoreFormatting:)();
  }
}

uint64_t sub_1C7489584()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_116();

    return v12(v3);
  }
}

uint64_t sub_1C74896A0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  OUTLINED_FUNCTION_116();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C74897B0(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C338);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_1C755026C();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 176) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1C7489948, 0, 0);
}

uint64_t sub_1C7489948()
{
  static LLMWrapper.tokenGenerator(for:)();
  v0[16] = v1;
  if (v1)
  {
    v28 = v1;
    v2 = v0[12];
    v26 = v0[13];
    v27 = v0[14];
    v3 = v0[10];
    v4 = v0[11];
    v5 = v0[9];
    v6 = v0[6];
    v24 = v0[8];
    v25 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    sub_1C755027C();

    v11 = sub_1C754E6DC();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    sub_1C70555F8(v6, v7, &qword_1EC21C338);
    OUTLINED_FUNCTION_145_7();
    sub_1C754E71C();
    sub_1C754E70C();
    sub_1C754E6EC();
    sub_1C754E6FC();
    OUTLINED_FUNCTION_75();
    sub_1C6FD7FC8(v12, v13);
    (*(v24 + 104))(v5, *MEMORY[0x1E69A1370], v25);
    OUTLINED_FUNCTION_6_110();
    sub_1C74927F0(v14, v15);
    sub_1C75503BC();
    (*(v24 + 8))(v5, v25);
    v16 = *(v4 + 8);
    v0[17] = v16;
    v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v2, v3);
    sub_1C755037C();
    v16(v26, v3);
    sub_1C755038C();
    v16(v27, v3);
    v0[2] = v28;
    v17 = swift_task_alloc();
    v0[19] = v17;
    v18 = sub_1C754E64C();
    OUTLINED_FUNCTION_1_140();
    sub_1C74927F0(v19, v20);
    OUTLINED_FUNCTION_90_16();
    *v17 = v21;
    v17[1] = sub_1C7489D04;

    return MEMORY[0x1EEE0A3D8](v0 + 2, v18);
  }

  else
  {
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_152_7();

    OUTLINED_FUNCTION_43();

    return v22();
  }
}

uint64_t sub_1C7489D04()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7489E14()
{
  OUTLINED_FUNCTION_115_0();
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[10];

  v1(v2, v3);

  OUTLINED_FUNCTION_116();
  v5 = v0[21];

  return v4(v5);
}

uint64_t sub_1C7489EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  (*(v10 + 136))(*(v10 + 120), *(v10 + 80));

  OUTLINED_FUNCTION_152_7();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

void LLMWrapper.complete(prompt:samplingParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 >= 5u)
  {
    OUTLINED_FUNCTION_81_23(a1, a2, a3);
    sub_1C7489FF8(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_81_23(a1, a2, a3);
    AjaxLLM.complete(prompt:samplingParameters:)();
  }
}

uint64_t sub_1C7489FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a2;
  v55 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEF8);
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - v9;
  v11 = sub_1C754E72C();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v12) = *v3;
  v59 = *(v3 + 1);
  v14 = v3[16];
  v57 = v12;
  LOBYTE(v61) = v12;
  static LLMWrapper.tokenGenerator(for:)();
  if (v15)
  {
    v44 = v10;
    v45 = v15;
    v51 = v14;
    v46 = v11;
    v48 = v7;
    static LLMWrapper.gmsSamplingParameters(from:)();
    if (qword_1EDD0C920 != -1)
    {
      swift_once();
    }

    v16 = sub_1C754FF1C();
    __swift_project_value_buffer(v16, qword_1EDD0C928);

    v17 = sub_1C754FEEC();
    v18 = sub_1C755117C();
    v19 = os_log_type_enabled(v17, v18);
    v49 = a3;
    v50 = v4;
    v47 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v61 = v21;
      *v20 = 67109378;
      *(v20 + 4) = v51;

      *(v20 + 8) = 2080;
      v60 = v57;
      LLMModelType.description.getter();
      v24 = sub_1C6F765A4(v22, v23, &v61);

      *(v20 + 10) = v24;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "Starting completion request with streaming=%{BOOL}d and modelType=%s", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }

    else
    {
    }

    v26 = v58;
    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C755117C();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v44;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61 = v32;
      *v31 = 136315138;
      v33 = v55;
      v34 = sub_1C755076C();
      v36 = sub_1C6F765A4(v34, v35, &v61);

      *(v31 + 4) = v36;
      v26 = v58;
      _os_log_impl(&dword_1C6F5C000, v27, v28, "Completion prompt: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
      MEMORY[0x1CCA5F8E0](v31, -1, -1);

      v39 = v48;
      v38 = v49;
      v40 = v47;
    }

    else
    {

      v39 = v48;
      v38 = v49;
      v40 = v47;
      v33 = v55;
    }

    v41 = MEMORY[0x1EEE9AC00](v37);
    *(&v43 - 64) = v57;
    *(&v43 - 7) = v59;
    *(&v43 - 48) = v51;
    *(&v43 - 5) = v33;
    *(&v43 - 4) = v26;
    *(&v43 - 3) = v45;
    *(&v43 - 2) = v13;
    (*(v53 + 104))(v52, *MEMORY[0x1E69E8790], v56, v41);
    sub_1C7550F0C();
    v42 = type metadata accessor for LLMResponse(0);
    (*(v40 + 16))(&v38[*(v42 + 20)], v30, v39);

    (*(v40 + 8))(v30, v39);
    *v38 = 0;
    *(v38 + 1) = 0xE000000000000000;
    return (*(v54 + 8))(v13, v46);
  }

  else
  {
    sub_1C6FB5280();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C748A5B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3D0);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3D8);
  v4[32] = swift_task_alloc();
  v4[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3E0);
  v4[34] = swift_task_alloc();
  v6 = sub_1C754EECC();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v7 = sub_1C754EEDC();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v4[41] = swift_task_alloc();
  v8 = sub_1C754FD9C();
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v4[46] = v9;
  v4[47] = *(v9 - 8);
  v4[48] = swift_task_alloc();
  v10 = sub_1C755026C();
  v4[49] = v10;
  v4[50] = *(v10 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748A960, 0, 0);
}

uint64_t sub_1C748A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v56 = *(v20 + 424);
  v57 = *(v20 + 432);
  v22 = *(v20 + 392);
  v21 = *(v20 + 400);
  v23 = *(v20 + 376);
  v24 = *(v20 + 384);
  v54 = *(v20 + 368);
  v55 = *(v20 + 416);
  v58 = *(v20 + 328);
  v25 = *(v20 + 200);
  v26 = *(v20 + 208);
  v59 = *(v20 + 360);
  v27 = *(v20 + 192);
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v25;
  OUTLINED_FUNCTION_17_79();
  sub_1C755027C();

  *(v20 + 440) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v30 = *(v29 + 16);
  *(v20 + 448) = v30;
  *(v20 + 456) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v24, v26);
  *(v20 + 568) = *MEMORY[0x1E69A1370];
  OUTLINED_FUNCTION_144_9();
  *(v20 + 464) = v31;
  *(v20 + 472) = v32;
  v31(v24);
  OUTLINED_FUNCTION_6_110();
  *(v20 + 480) = sub_1C74927F0(v33, v34);
  OUTLINED_FUNCTION_87_4();
  sub_1C75503BC();
  v35 = *(v23 + 8);
  *(v20 + 488) = v35;
  *(v20 + 496) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v24, v54);
  v36 = *(v21 + 8);
  *(v20 + 504) = v36;
  *(v20 + 512) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = OUTLINED_FUNCTION_23_14();
  v36(v37);
  OUTLINED_FUNCTION_34_20();
  sub_1C755037C();
  v38 = OUTLINED_FUNCTION_66_4();
  v36(v38);
  OUTLINED_FUNCTION_34_20();
  sub_1C755038C();
  (v36)(v56, v22);
  sub_1C754FD8C();
  v39 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_47_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v20 + 520) = v43;
  *v43 = v44;
  v43[1] = sub_1C748ABC4;
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE0B308](v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, v55, v56, v57, v58, "LJXbt9tTn8IXh6hr6asr5q7VJHQ.", v59, a17, a18, a19, a20);
}

uint64_t sub_1C748ABC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 528) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748ACBC()
{
  v3 = v1[32];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3F0);
  v5 = OUTLINED_FUNCTION_136_5();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {
    sub_1C6FD7FC8(v3, &qword_1EC21C3D8);
  }

  else
  {
    v102 = v1[61];
    v100 = v1[48];
    v7 = v1[43];
    v83 = v1[44];
    v86 = v1[42];
    v89 = v1[45];
    v101 = v1[38];
    v75 = v1[35];
    v79 = v1[37];
    v8 = v1[33];
    v9 = OUTLINED_FUNCTION_67_24();
    v10 = v0(v9);
    v18 = OUTLINED_FUNCTION_96_17(v10, v11, v12, v13, v14, v15, v16, v17, v66);
    v2(v18);
    v19 = OUTLINED_FUNCTION_139_7();
    v20 = v0(v19);
    v28 = OUTLINED_FUNCTION_109_14(v20, v21, v22, v23, v24, v25, v26, v27, v67, v71, v75, v79);
    v2(v28);
    v29 = sub_1C754EEBC();
    v37 = OUTLINED_FUNCTION_105_11(v29, v30, v31, v32, v33, v34, v35, v36, v68, v72, v76, v80, v83, v86, v89);
    v38(v37);
    v39 = OUTLINED_FUNCTION_66_2();
    v40(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3A8);
    inited = swift_initStackObject();
    v42 = OUTLINED_FUNCTION_44_33(inited, xmmword_1C755BAB0);
    v43 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_121_8(v42, MEMORY[0x1E69C6560], v69, v73, v77, v81, v84, v87, v90, v92, v93, v95, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    OUTLINED_FUNCTION_49_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    v44 = swift_initStackObject();
    v45 = OUTLINED_FUNCTION_33_44(v44, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", v70, v74, v78, v82, v85, v88, v91, v94, v96, v98, v99, v100);
    v46(v45);
    v47 = OUTLINED_FUNCTION_113_14();
    v48(v47);
    *(v44 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v44 + 48));
    sub_1C754EBEC();
    v102(v8, v7 + 32);
    OUTLINED_FUNCTION_49_3();
    v49 = sub_1C75504DC();
    OUTLINED_FUNCTION_86_15(v49);

    v50 = OUTLINED_FUNCTION_132_10();
    v51(v50);
    OUTLINED_FUNCTION_131_6();
    v52(v43, v101);
    v53 = OUTLINED_FUNCTION_141_9();
    v54(v53);
    v55 = OUTLINED_FUNCTION_107_12();
    v56(v55);
  }

  v57 = v1[63];
  v58 = v1[27];
  OUTLINED_FUNCTION_93_17();
  v1[23] = v58;
  OUTLINED_FUNCTION_106_0();
  v59 = OUTLINED_FUNCTION_49_3();
  v57(v59);
  v60 = swift_task_alloc();
  v1[67] = v60;
  OUTLINED_FUNCTION_1_140();
  sub_1C74927F0(v61, v62);
  OUTLINED_FUNCTION_90_16();
  *v60 = v63;
  v60[1] = sub_1C748B05C;
  v64 = v1[29];

  return MEMORY[0x1EEE0A360](v64);
}

uint64_t sub_1C748B05C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  v4[68] = v1;

  v6 = v4[31];
  v7 = v4[30];
  v8 = v4[29];
  if (!v1)
  {
    v4[69] = v0;
    v4[70] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C748B1D0()
{
  v1 = v0[63];
  v2 = v0[54];
  v3 = v0[49];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[70];
  v6 = v0[69];

  return v4(v5, v6);
}

uint64_t sub_1C748B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_99_16();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_64_24();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748B3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_99_16();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_64_24();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748B4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C755036C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v13[3] = MEMORY[0x1E69E6158];
  v13[4] = MEMORY[0x1E69C6560];
  v13[0] = a1;
  v13[1] = a2;
  sub_1C75504FC();
  v9 = MEMORY[0x1E69C6388];
  sub_1C75502EC();
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3B8);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C755BAB0;
  (*(v5 + 16))(v11 + v10, v8, v4);
  MEMORY[0x1CCA5C7F0](v11, v4, v9);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C748B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v5[29] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3D0);
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3D8);
  v5[33] = swift_task_alloc();
  v5[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3E0);
  v5[35] = swift_task_alloc();
  v7 = sub_1C754EECC();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v8 = sub_1C754EEDC();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v5[42] = swift_task_alloc();
  v9 = sub_1C754FD9C();
  v5[43] = v9;
  v5[44] = *(v9 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v5[47] = v10;
  v5[48] = *(v10 - 8);
  v5[49] = swift_task_alloc();
  v11 = sub_1C755026C();
  v5[50] = v11;
  v5[51] = *(v11 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748BA24, 0, 0);
}

uint64_t sub_1C748BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v56 = *(v20 + 432);
  v57 = *(v20 + 440);
  v22 = *(v20 + 400);
  v21 = *(v20 + 408);
  v23 = *(v20 + 384);
  v24 = *(v20 + 392);
  v54 = *(v20 + 376);
  v55 = *(v20 + 424);
  v58 = *(v20 + 336);
  v25 = *(v20 + 208);
  v26 = *(v20 + 216);
  v59 = *(v20 + 368);
  v27 = *(v20 + 200);
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v25;
  OUTLINED_FUNCTION_17_79();
  sub_1C755027C();

  *(v20 + 448) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v30 = *(v29 + 16);
  *(v20 + 456) = v30;
  *(v20 + 464) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v24, v26);
  *(v20 + 560) = *MEMORY[0x1E69A1370];
  OUTLINED_FUNCTION_144_9();
  *(v20 + 472) = v31;
  *(v20 + 480) = v32;
  v31(v24);
  OUTLINED_FUNCTION_6_110();
  *(v20 + 488) = sub_1C74927F0(v33, v34);
  OUTLINED_FUNCTION_87_4();
  sub_1C75503BC();
  v35 = *(v23 + 8);
  *(v20 + 496) = v35;
  *(v20 + 504) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v24, v54);
  v36 = *(v21 + 8);
  *(v20 + 512) = v36;
  *(v20 + 520) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = OUTLINED_FUNCTION_23_14();
  v36(v37);
  OUTLINED_FUNCTION_34_20();
  sub_1C755037C();
  v38 = OUTLINED_FUNCTION_66_4();
  v36(v38);
  OUTLINED_FUNCTION_34_20();
  sub_1C755038C();
  (v36)(v56, v22);
  sub_1C754FD8C();
  v39 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_47_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v20 + 528) = v43;
  *v43 = v44;
  v43[1] = sub_1C748BC8C;
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE0B308](v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, v55, v56, v57, v58, "VhWxh34MnrSMlHvhso7mv8YGK6E.", v59, a17, a18, a19, a20);
}

uint64_t sub_1C748BC8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748BD84()
{
  v3 = v1[33];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3F0);
  v5 = OUTLINED_FUNCTION_136_5();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {
    sub_1C6FD7FC8(v3, &qword_1EC21C3D8);
  }

  else
  {
    v104 = v1[62];
    v102 = v1[49];
    v7 = v1[44];
    v85 = v1[45];
    v88 = v1[43];
    v91 = v1[46];
    v103 = v1[39];
    v77 = v1[36];
    v81 = v1[38];
    v8 = v1[34];
    v9 = OUTLINED_FUNCTION_67_24();
    v10 = v0(v9);
    v18 = OUTLINED_FUNCTION_96_17(v10, v11, v12, v13, v14, v15, v16, v17, v68);
    v2(v18);
    v19 = OUTLINED_FUNCTION_139_7();
    v20 = v0(v19);
    v28 = OUTLINED_FUNCTION_109_14(v20, v21, v22, v23, v24, v25, v26, v27, v69, v73, v77, v81);
    v2(v28);
    v29 = sub_1C754EEBC();
    v37 = OUTLINED_FUNCTION_105_11(v29, v30, v31, v32, v33, v34, v35, v36, v70, v74, v78, v82, v85, v88, v91);
    v38(v37);
    v39 = OUTLINED_FUNCTION_66_2();
    v40(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3A8);
    inited = swift_initStackObject();
    v42 = OUTLINED_FUNCTION_44_33(inited, xmmword_1C755BAB0);
    v43 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_121_8(v42, MEMORY[0x1E69C6560], v71, v75, v79, v83, v86, v89, v92, v94, v95, v97, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    OUTLINED_FUNCTION_49_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    v44 = swift_initStackObject();
    v45 = OUTLINED_FUNCTION_33_44(v44, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", v72, v76, v80, v84, v87, v90, v93, v96, v98, v100, v101, v102);
    v46(v45);
    v47 = OUTLINED_FUNCTION_113_14();
    v48(v47);
    *(v44 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v44 + 48));
    sub_1C754EBEC();
    v104(v8, v7 + 32);
    OUTLINED_FUNCTION_49_3();
    v49 = sub_1C75504DC();
    OUTLINED_FUNCTION_86_15(v49);

    v50 = OUTLINED_FUNCTION_132_10();
    v51(v50);
    OUTLINED_FUNCTION_131_6();
    v52(v43, v103);
    v53 = OUTLINED_FUNCTION_141_9();
    v54(v53);
    v55 = OUTLINED_FUNCTION_107_12();
    v56(v55);
  }

  v57 = v1[64];
  v58 = v1[28];
  OUTLINED_FUNCTION_93_17();
  v1[23] = v58;
  OUTLINED_FUNCTION_106_0();
  v59 = OUTLINED_FUNCTION_49_3();
  v57(v59);
  v60 = sub_1C754ECBC();
  v61 = swift_task_alloc();
  v1[68] = v61;
  OUTLINED_FUNCTION_1_140();
  sub_1C74927F0(v62, v63);
  OUTLINED_FUNCTION_90_16();
  *v61 = v64;
  v61[1] = sub_1C748C140;
  v65 = v1[30];
  v66 = v1[24];

  return MEMORY[0x1EEE0A378](v66, v60, v65);
}

uint64_t sub_1C748C140()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 552) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C748C29C()
{
  v1 = v0[64];
  v2 = v0[55];
  v3 = v0[50];
  (*(v0[44] + 8))(v0[46], v0[43]);
  v1(v2, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C748C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_76_22();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_63_26();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_76_22();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_63_26();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748C588(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v33 = a1;
  v34 = a6;
  v35 = a7;
  v38 = a5;
  v36 = a2;
  v37 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  v30 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v31 = &v28 - v11;
  v13 = sub_1C754E72C();
  v29 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v28 - v18;
  v20 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  (*(v14 + 16))(v16, v32, v13);
  (*(v10 + 16))(v12, v33, v9);
  v21 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v22 = (v15 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v37;
  *(v23 + 32) = v36;
  *(v23 + 40) = a3;
  *(v23 + 48) = v24;
  v25 = v34;
  v26 = v35;
  *(v23 + 56) = v38;
  *(v23 + 64) = v25;
  *(v23 + 72) = v26;
  (*(v14 + 32))(v23 + v21, v16, v29);
  (*(v10 + 32))(v23 + v22, v31, v30);

  sub_1C75504FC();

  sub_1C6FEB80C(0, 0, v19, &unk_1C758E250, v23);
}

uint64_t sub_1C748C864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 312) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF58);
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_1C754ECCC();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = sub_1C754ECBC();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748CA00, 0, 0);
}

uint64_t sub_1C748CA00()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v0 + 312) == 1)
  {
    if (qword_1EDD0C920 != -1)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v1 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v1, qword_1EDD0C928);
    v2 = sub_1C754FEEC();
    v3 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v3))
    {
      v4 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v4);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "Streaming in tokens to the continuation");
      OUTLINED_FUNCTION_23_3();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 232) = v7;
    *v7 = v8;
    v7[1] = sub_1C748CB88;
    v9 = *(v0 + 224);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);

    return sub_1C748B674(v9, v12, v13, v10, v11);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_1C748D348;
    v16 = OUTLINED_FUNCTION_61_3(*(v0 + 120));

    return sub_1C748A5B4(v16, v17, v18, v19);
  }
}

uint64_t sub_1C748CB88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748CC80()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C74927F0(&qword_1EC21C3C8, MEMORY[0x1E69DA6A0]);
  sub_1C754ECDC();
  OUTLINED_FUNCTION_2_130();
  sub_1C74927F0(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 248) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_24_49(v3);

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1C748CEAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748CFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  if (v10[34])
  {
    v11 = sub_1C75507AC();
    v13 = v12;

    v10[9] = v11;
    v10[10] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
    sub_1C7550EAC();
    v14 = OUTLINED_FUNCTION_57_0();
    v15(v14);
    OUTLINED_FUNCTION_2_130();
    sub_1C74927F0(v16, v17);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[31] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_24_49();
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8C8](v20);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_128_10();
    v23(v22);
    v24 = OUTLINED_FUNCTION_66_2();
    v25(v24);
    OUTLINED_FUNCTION_127_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
    OUTLINED_FUNCTION_153_6();
    OUTLINED_FUNCTION_73_24();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_88_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

uint64_t sub_1C748D158()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 112) = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C748D348()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  v2[36] = v4;
  v2[37] = v5;
  v2[38] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C748D44C()
{
  OUTLINED_FUNCTION_115_0();
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196();
  }

  v2 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v2, qword_1EDD0C928);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v4))
  {
    v5 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v5);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "Received completion, simulating streaming with individual characters as tokens");
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_80_16();
  while (1)
  {
    v8 = sub_1C755088C();
    if (!v9)
    {
      break;
    }

    v10 = v0[22];
    v11 = v0[20];
    v0[5] = v8;
    v0[6] = v9;
    v12 = OUTLINED_FUNCTION_57_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    sub_1C7550EAC();
    (*v1)(v10, v11);
  }

  OUTLINED_FUNCTION_127_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  OUTLINED_FUNCTION_153_6();
  OUTLINED_FUNCTION_73_24();

  OUTLINED_FUNCTION_43();

  return v13();
}

uint64_t sub_1C748D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[36] = a6;
  v7[37] = a7;
  v7[34] = a4;
  v7[35] = a5;
  v7[32] = a2;
  v7[33] = a3;
  v7[31] = a1;
  v7[38] = *a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v7[39] = v8;
  v7[40] = *(v8 - 8);
  v7[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v7[42] = swift_task_alloc();
  v7[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v7[44] = swift_task_alloc();
  v9 = sub_1C754EECC();
  v7[45] = v9;
  v7[46] = *(v9 - 8);
  v7[47] = swift_task_alloc();
  v10 = sub_1C754EEEC();
  v7[48] = v10;
  v7[49] = *(v10 - 8);
  v7[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v7[51] = swift_task_alloc();
  v11 = sub_1C754FD9C();
  v7[52] = v11;
  v7[53] = *(v11 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v7[56] = v12;
  v7[57] = *(v12 - 8);
  v7[58] = swift_task_alloc();
  v13 = sub_1C755029C();
  v7[59] = v13;
  v7[60] = *(v13 - 8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748DAC8, 0, 0);
}

uint64_t sub_1C748DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v68 = *(v26 + 512);
  v28 = *(v26 + 472);
  v27 = *(v26 + 480);
  v30 = *(v26 + 456);
  v29 = *(v26 + 464);
  v67 = *(v26 + 288);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_142_5(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  OUTLINED_FUNCTION_17_79();
  sub_1C75502AC();

  sub_1C755028C();
  v40 = *(v27 + 8);
  *(v26 + 528) = v40;
  *(v26 + 536) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41 = OUTLINED_FUNCTION_23_14();
  v40(v41);
  *(v26 + 544) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v43 = *(v42 + 16);
  *(v26 + 552) = v43;
  *(v26 + 560) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v29, v67);
  *(v26 + 656) = *MEMORY[0x1E69A1370];
  *(v26 + 568) = *(v30 + 104);
  *(v26 + 576) = (v30 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v44 = OUTLINED_FUNCTION_137_10();
  v45(v44);
  OUTLINED_FUNCTION_38_40();
  *(v26 + 584) = sub_1C74927F0(v46, v47);
  OUTLINED_FUNCTION_102_14();
  *(v26 + 592) = *(v30 + 8);
  *(v26 + 600) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48 = OUTLINED_FUNCTION_82_3();
  v49(v48);
  v50 = OUTLINED_FUNCTION_87_4();
  v40(v50);
  OUTLINED_FUNCTION_34_20();
  sub_1C755037C();
  v51 = OUTLINED_FUNCTION_66_4();
  v40(v51);
  OUTLINED_FUNCTION_34_20();
  sub_1C755038C();
  (v40)(v68, v28);
  sub_1C754FD8C();
  v52 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  OUTLINED_FUNCTION_47_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v26 + 608) = v56;
  *v56 = v57;
  v56[1] = sub_1C748DD7C;
  OUTLINED_FUNCTION_110_1();

  return MEMORY[0x1EEE0B310](v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1C748DD7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 616) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748DE74()
{
  v2 = v0[42];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  v4 = OUTLINED_FUNCTION_136_5();
  if (__swift_getEnumTagSinglePayload(v4, v5, v3) == 1)
  {
    sub_1C6FD7FC8(v2, &qword_1EC214E08);
  }

  else
  {
    v120 = v0[74];
    v119 = v0[58];
    v98 = v0[54];
    v101 = v0[53];
    v104 = v0[52];
    v107 = v0[55];
    v89 = v0[50];
    v6 = v0[48];
    v94 = v0[47];
    v7 = v0[46];
    v116 = v0[34];
    v118 = v0[36];
    v114 = v0[33];
    v8 = OUTLINED_FUNCTION_66_26();
    v9 = v1(v8);
    v17 = OUTLINED_FUNCTION_95_19(v9, v10, v11, v12, v13, v14, v15, v16, v72, v78);
    v18 = v3(v17);
    v26 = OUTLINED_FUNCTION_110_12(v18, v19, v20, v21, v22, v23, v24, v25, v73, v79, v84, v89);
    v27 = v1(v26);
    v35 = OUTLINED_FUNCTION_138_7(v27, v28, v29, v30, v31, v32, v33, v34, v74, v80, v85, v90, v94);
    v3(v35);
    v36 = v98;
    v37 = sub_1C754EEBC();
    v45 = OUTLINED_FUNCTION_94_18(v37, v38, v39, v40, v41, v42, v43, v44, v75, v81, v86, v91, v95, v98, v101, v104, v107);
    v46(v45);
    v47 = OUTLINED_FUNCTION_57_0();
    v48(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3A8);
    inited = swift_initStackObject();
    v50 = OUTLINED_FUNCTION_51_30(inited, xmmword_1C75604F0);
    OUTLINED_FUNCTION_34_45(v50, MEMORY[0x1E69C6560], v76, v82, v87, v92, v96, v99, v102, v105, v108, v110, v112, v114, v116);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    OUTLINED_FUNCTION_57_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    v51 = swift_initStackObject();
    v52 = OUTLINED_FUNCTION_36_40(v51, "_OverrideConfigurationHelper.samplingParameters(.dynamic(samplingParameters))", xmmword_1C755BAB0, v77, v83, v88, v93, v97, v100, v103, v106, v109, v111, v113, v115, v117, v118, v119);
    v53(v52);
    v54 = OUTLINED_FUNCTION_115_15();
    v55(v54);
    v51[4].n128_u64[1] = v7;
    __swift_allocate_boxed_opaque_existential_0(&v51[3]);
    sub_1C754EBEC();
    v120(v36, v1);
    OUTLINED_FUNCTION_57_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    sub_1C75504DC();
    OUTLINED_FUNCTION_84_15();

    OUTLINED_FUNCTION_131_6();
    v56(v6);
    v57 = OUTLINED_FUNCTION_133_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_134_11();
    v60(v59);
    v61 = OUTLINED_FUNCTION_117_0();
    v62(v61);
  }

  v63 = v0[66];
  v64 = v0[37];
  OUTLINED_FUNCTION_93_17();
  v0[30] = v64;
  OUTLINED_FUNCTION_106_0();
  v65 = OUTLINED_FUNCTION_49_3();
  v63(v65);
  v66 = swift_task_alloc();
  v0[78] = v66;
  OUTLINED_FUNCTION_1_140();
  sub_1C74927F0(v67, v68);
  OUTLINED_FUNCTION_90_16();
  *v66 = v69;
  v66[1] = sub_1C748E28C;
  v70 = v0[39];

  return MEMORY[0x1EEE0A390](v70);
}

uint64_t sub_1C748E28C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  v4[79] = v1;

  v6 = v4[41];
  v7 = v4[40];
  v8 = v4[39];
  if (!v1)
  {
    v4[80] = v0;
    v4[81] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C748E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = v20[66];
  v22 = v20[65];
  v23 = v20[59];
  v33 = v20[58];
  v34 = v20[54];
  v35 = v20[51];
  v36 = v20[50];
  v37 = v20[47];
  v38 = v20[44];
  v39 = v20[42];
  v40 = v20[41];
  (*(v20[53] + 8))(v20[55], v20[52]);
  v21(v22, v23);

  OUTLINED_FUNCTION_20_4();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, v37, v38, v39, v40, a18, a19, a20);
}

uint64_t sub_1C748E538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_75_20();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_49_34();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_75_20();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_49_34();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748E6F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3B0);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_148_2();
  v5 = sub_1C755033C();
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v7 = sub_1C755036C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  sub_1C755032C();
  sub_1C755031C();
  v15 = sub_1C755035C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v15);
  sub_1C755030C();
  sub_1C6FD7FC8(v2, &qword_1EC21C3B0);
  sub_1C755031C();
  sub_1C755034C();
  v16 = MEMORY[0x1E69C6388];
  sub_1C75502FC();
  v17 = *(v8 + 8);
  v17(v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3B8);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C755BAB0;
  (*(v8 + 16))(v19 + v18, v14, v7);
  MEMORY[0x1CCA5C7F0](v19, v7, v16);

  return (v17)(v14, v7);
}

uint64_t sub_1C748E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a5;
  v8[36] = a6;
  v8[33] = a3;
  v8[34] = a4;
  v8[31] = a1;
  v8[32] = a2;
  v8[39] = *a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v8[43] = swift_task_alloc();
  v8[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v8[45] = swift_task_alloc();
  v10 = sub_1C754EECC();
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  v11 = sub_1C754EEEC();
  v8[49] = v11;
  v8[50] = *(v11 - 8);
  v8[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v8[52] = swift_task_alloc();
  v12 = sub_1C754FD9C();
  v8[53] = v12;
  v8[54] = *(v12 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v8[57] = v13;
  v8[58] = *(v13 - 8);
  v8[59] = swift_task_alloc();
  v14 = sub_1C755029C();
  v8[60] = v14;
  v8[61] = *(v14 - 8);
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748ED6C, 0, 0);
}

uint64_t sub_1C748ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v68 = *(v26 + 520);
  v27 = *(v26 + 488);
  v28 = *(v26 + 472);
  v29 = *(v26 + 480);
  v30 = *(v26 + 464);
  v67 = *(v26 + 296);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_142_5(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  OUTLINED_FUNCTION_17_79();
  sub_1C75502AC();

  sub_1C755028C();
  v40 = *(v27 + 8);
  *(v26 + 536) = v40;
  *(v26 + 544) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41 = OUTLINED_FUNCTION_23_14();
  v40(v41);
  *(v26 + 552) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v43 = *(v42 + 16);
  *(v26 + 560) = v43;
  *(v26 + 568) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v28, v67);
  *(v26 + 648) = *MEMORY[0x1E69A1370];
  *(v26 + 576) = *(v30 + 104);
  *(v26 + 584) = (v30 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v44 = OUTLINED_FUNCTION_137_10();
  v45(v44);
  OUTLINED_FUNCTION_38_40();
  *(v26 + 592) = sub_1C74927F0(v46, v47);
  OUTLINED_FUNCTION_102_14();
  *(v26 + 600) = *(v30 + 8);
  *(v26 + 608) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48 = OUTLINED_FUNCTION_82_3();
  v49(v48);
  v50 = OUTLINED_FUNCTION_87_4();
  v40(v50);
  OUTLINED_FUNCTION_34_20();
  sub_1C755037C();
  v51 = OUTLINED_FUNCTION_66_4();
  v40(v51);
  OUTLINED_FUNCTION_34_20();
  sub_1C755038C();
  (v40)(v68, v29);
  sub_1C754FD8C();
  v52 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  OUTLINED_FUNCTION_47_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v26 + 616) = v56;
  *v56 = v57;
  v56[1] = sub_1C748F024;
  OUTLINED_FUNCTION_110_1();

  return MEMORY[0x1EEE0B310](v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1C748F024()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 624) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748F11C()
{
  v2 = v0[43];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  v4 = OUTLINED_FUNCTION_136_5();
  if (__swift_getEnumTagSinglePayload(v4, v5, v3) == 1)
  {
    sub_1C6FD7FC8(v2, &qword_1EC214E08);
  }

  else
  {
    v122 = v0[75];
    v121 = v0[59];
    v100 = v0[55];
    v103 = v0[54];
    v106 = v0[53];
    v109 = v0[56];
    v91 = v0[51];
    v6 = v0[49];
    v96 = v0[48];
    v7 = v0[47];
    v118 = v0[35];
    v120 = v0[37];
    v116 = v0[34];
    v8 = OUTLINED_FUNCTION_66_26();
    v9 = v1(v8);
    v17 = OUTLINED_FUNCTION_95_19(v9, v10, v11, v12, v13, v14, v15, v16, v74, v80);
    v18 = v3(v17);
    v26 = OUTLINED_FUNCTION_110_12(v18, v19, v20, v21, v22, v23, v24, v25, v75, v81, v86, v91);
    v27 = v1(v26);
    v35 = OUTLINED_FUNCTION_138_7(v27, v28, v29, v30, v31, v32, v33, v34, v76, v82, v87, v92, v96);
    v3(v35);
    v36 = v100;
    v37 = sub_1C754EEBC();
    v45 = OUTLINED_FUNCTION_94_18(v37, v38, v39, v40, v41, v42, v43, v44, v77, v83, v88, v93, v97, v100, v103, v106, v109);
    v46(v45);
    v47 = OUTLINED_FUNCTION_57_0();
    v48(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3A8);
    inited = swift_initStackObject();
    v50 = OUTLINED_FUNCTION_51_30(inited, xmmword_1C75604F0);
    OUTLINED_FUNCTION_34_45(v50, MEMORY[0x1E69C6560], v78, v84, v89, v94, v98, v101, v104, v107, v110, v112, v114, v116, v118);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    OUTLINED_FUNCTION_57_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    v51 = swift_initStackObject();
    v52 = OUTLINED_FUNCTION_36_40(v51, "_OverrideConfigurationHelper.samplingParameters(.dynamic(samplingParameters))", xmmword_1C755BAB0, v79, v85, v90, v95, v99, v102, v105, v108, v111, v113, v115, v117, v119, v120, v121);
    v53(v52);
    v54 = OUTLINED_FUNCTION_115_15();
    v55(v54);
    v51[4].n128_u64[1] = v7;
    __swift_allocate_boxed_opaque_existential_0(&v51[3]);
    sub_1C754EBEC();
    v122(v36, v1);
    OUTLINED_FUNCTION_57_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    sub_1C75504DC();
    OUTLINED_FUNCTION_84_15();

    OUTLINED_FUNCTION_131_6();
    v56(v6);
    v57 = OUTLINED_FUNCTION_133_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_134_11();
    v60(v59);
    v61 = OUTLINED_FUNCTION_117_0();
    v62(v61);
  }

  v63 = v0[67];
  v64 = v0[38];
  OUTLINED_FUNCTION_93_17();
  v0[30] = v64;
  OUTLINED_FUNCTION_106_0();
  v65 = OUTLINED_FUNCTION_49_3();
  v63(v65);
  v66 = sub_1C754ECAC();
  v67 = swift_task_alloc();
  v0[79] = v67;
  OUTLINED_FUNCTION_1_140();
  sub_1C74927F0(v68, v69);
  OUTLINED_FUNCTION_90_16();
  *v67 = v70;
  v67[1] = sub_1C748F548;
  v71 = v0[40];
  v72 = v0[31];

  return MEMORY[0x1EEE0A398](v72, v66, v71);
}

uint64_t sub_1C748F548()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 640) = v0;

  (*(v2[41] + 8))(v2[42], v2[40]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C748F6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = v20[67];
  v22 = v20[66];
  v23 = v20[60];
  v33 = v20[59];
  v34 = v20[55];
  v35 = v20[52];
  v36 = v20[51];
  v37 = v20[48];
  v38 = v20[45];
  v39 = v20[43];
  v40 = v20[42];
  (*(v20[54] + 8))(v20[56], v20[53]);
  v21(v22, v23);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, v37, v38, v39, v40, a18, a19, a20);
}

uint64_t sub_1C748F7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_77_16();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_40_49();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_77_16();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_40_49();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748F994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a6;
  v38 = a5;
  v40 = a3;
  v41 = a4;
  v36 = a2;
  v49 = a7;
  sub_1C75503EC();
  OUTLINED_FUNCTION_3_0();
  v42 = v8;
  v43 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  sub_1C755040C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v14 = sub_1C755029C();
  v37 = *(v14 - 8);
  v15 = v37;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v34 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v35 = &v33 - v19;
  v47 = a1;
  v48 = v36;
  v20 = v39;
  sub_1C755041C();
  OUTLINED_FUNCTION_82_3();
  sub_1C75502CC();
  v21 = OUTLINED_FUNCTION_82_3();
  v22(v21);
  v45 = v40;
  v46 = v41;
  sub_1C75503FC();
  v44 = v20;
  v23 = v34;
  v24 = v42;
  sub_1C75502CC();
  (*(v43 + 8))(v12, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50);
  v25 = *(v37 + 72);
  v26 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C75604F0;
  v28 = v27 + v26;
  v29 = *(v15 + 16);
  v29(v28, v35, v14);
  v29(v28 + v25, v23, v14);
  MEMORY[0x1CCA5C7D0](v27);

  v30 = *(v15 + 8);
  v30(v23, v14);
  v31 = OUTLINED_FUNCTION_87_4();
  return (v30)(v31);
}

uint64_t sub_1C748FCC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v60 = a3;
  v61 = a5;
  v58 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEF8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v46 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v46 - v11;
  v13 = sub_1C754E72C();
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = *v5;
  v63 = *(v5 + 1);
  v16 = v5[16];
  v62 = v14;
  LOBYTE(v66) = v14;
  static LLMWrapper.tokenGenerator(for:)();
  if (v17)
  {
    v54 = v16;
    v48 = v17;
    v49 = v15;
    v52 = v8;
    v53 = v13;
    static LLMWrapper.gmsSamplingParameters(from:)();
    if (qword_1EDD0C920 != -1)
    {
      swift_once();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EDD0C928);

    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();
    v21 = os_log_type_enabled(v19, v20);
    v50 = v9;
    v51 = v12;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v47 = a4;
      v23 = v22;
      v24 = swift_slowAlloc();
      v66 = v24;
      *v23 = 67109378;
      *(v23 + 4) = v54;

      *(v23 + 8) = 2080;
      v65 = v62;
      LLMModelType.description.getter();
      v27 = a2;
      v28 = sub_1C6F765A4(v25, v26, &v66);

      *(v23 + 10) = v28;
      a2 = v27;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Starting chat request with streaming=%{BOOL}d and modelType=%s", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1CCA5F8E0](v24, -1, -1);
      v29 = v23;
      a4 = v47;
      MEMORY[0x1CCA5F8E0](v29, -1, -1);
    }

    else
    {
    }

    sub_1C75504FC();
    sub_1C75504FC();
    v31 = sub_1C754FEEC();
    v32 = sub_1C75511BC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66 = v34;
      *v33 = 136643075;
      v35 = v58;
      *(v33 + 4) = sub_1C6F765A4(v58, a2, &v66);
      *(v33 + 12) = 2085;
      v36 = a2;
      v37 = v60;
      *(v33 + 14) = sub_1C6F765A4(v60, a4, &v66);
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Chat prompt: system: %{sensitive}s user: %{sensitive}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v34, -1, -1);
      MEMORY[0x1CCA5F8E0](v33, -1, -1);
    }

    else
    {

      v36 = a2;
      v37 = v60;
      v35 = v58;
    }

    v39 = v49;
    v40 = MEMORY[0x1EEE9AC00](v38);
    *(&v46 - 80) = v62;
    *(&v46 - 9) = v63;
    *(&v46 - 64) = v54;
    *(&v46 - 7) = v35;
    *(&v46 - 6) = v36;
    *(&v46 - 5) = v37;
    *(&v46 - 4) = a4;
    *(&v46 - 3) = v48;
    *(&v46 - 2) = v39;
    (*(v50 + 104))(v56, *MEMORY[0x1E69E8790], v40);
    v41 = v51;
    sub_1C7550F0C();
    v42 = type metadata accessor for LLMResponse(0);
    v43 = v55;
    v44 = v61;
    v45 = v57;
    (*(v55 + 16))(v61 + *(v42 + 20), v41, v57);

    (*(v43 + 8))(v41, v45);
    *v44 = 0;
    v44[1] = 0xE000000000000000;
    return (*(v59 + 8))(v39, v53);
  }

  else
  {
    sub_1C6FB5280();
    v64 = swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C74902BC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a7;
  v43 = a8;
  v41 = a5;
  v39 = a2;
  v40 = a4;
  v35 = a3;
  v36 = a1;
  v37 = a9;
  v38 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  v32 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v33 = &v31 - v12;
  v14 = sub_1C754E72C();
  v31 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v31 - v19;
  v34 = &v31 - v19;
  v21 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v15 + 16))(v17, a10, v14);
  (*(v11 + 16))(v13, v36, v10);
  v22 = (*(v15 + 80) + 96) & ~*(v15 + 80);
  v23 = (v16 + *(v11 + 80) + v22) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = v40;
  *(v24 + 32) = v39;
  *(v24 + 40) = v35;
  *(v24 + 48) = v25;
  v26 = v42;
  v28 = v37;
  v27 = v38;
  *(v24 + 56) = v41;
  *(v24 + 64) = v27;
  v29 = v43;
  *(v24 + 72) = v26;
  *(v24 + 80) = v29;
  *(v24 + 88) = v28;
  (*(v15 + 32))(v24 + v22, v17, v31);
  (*(v11 + 32))(v24 + v23, v33, v32);

  sub_1C75504FC();
  sub_1C75504FC();

  sub_1C6FEB80C(0, 0, v34, &unk_1C758E208, v24);
}

uint64_t sub_1C74905B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 344) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF58);
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_1C754ECCC();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v11 = sub_1C754ECAC();
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 - 8);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7490798, 0, 0);
}

uint64_t sub_1C7490798()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v0 + 344) == 1)
  {
    if (qword_1EDD0C920 != -1)
    {
      OUTLINED_FUNCTION_0_196();
    }

    v1 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v1, qword_1EDD0C928);
    v2 = sub_1C754FEEC();
    v3 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v3))
    {
      v4 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v4);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "Streaming in tokens to the continuation");
      OUTLINED_FUNCTION_23_3();
    }

    sub_1C754E15C();
    v7 = OUTLINED_FUNCTION_118();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 264) = v11;
    *v11 = v12;
    v11[1] = sub_1C7490968;
    v13 = *(v0 + 256);
    v14 = *(v0 + 232);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);

    return sub_1C748E9AC(v13, v19, v20, v17, v18, v14, v15, v16);
  }

  else
  {
    v22 = *(v0 + 224);
    v23 = sub_1C754E15C();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
    v24 = swift_task_alloc();
    *(v0 + 312) = v24;
    *v24 = v0;
    v24[1] = sub_1C7491188;
    v25 = OUTLINED_FUNCTION_61_3(*(v0 + 120));

    return sub_1C748D708(v25, v26, v27, v28, v29, v30, v31);
  }
}

uint64_t sub_1C7490968()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 272) = v0;

  sub_1C6FD7FC8(v5, &qword_1EC214DF8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7490A8C()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C74927F0(&qword_1EC21C390, MEMORY[0x1E69DA690]);
  sub_1C754ECDC();
  OUTLINED_FUNCTION_2_130();
  sub_1C74927F0(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_23_54(v3);

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1C7490CCC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7490DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  if (v10[38])
  {
    v11 = sub_1C75507AC();
    v13 = v12;

    v10[9] = v11;
    v10[10] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
    sub_1C7550EAC();
    v14 = OUTLINED_FUNCTION_57_0();
    v15(v14);
    OUTLINED_FUNCTION_2_130();
    sub_1C74927F0(v16, v17);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[35] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_23_54();
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8C8](v20);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_106_8();
    v23(v22);
    v24 = OUTLINED_FUNCTION_66_2();
    v25(v24);
    OUTLINED_FUNCTION_127_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
    OUTLINED_FUNCTION_153_6();
    OUTLINED_FUNCTION_29_44();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_88_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

uint64_t sub_1C7490F88()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 112) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C7491188()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  v10[40] = v8;
  v10[41] = v9;
  v10[42] = v0;

  sub_1C6FD7FC8(v5, &qword_1EC214DF8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C74912B4()
{
  OUTLINED_FUNCTION_115_0();
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196();
  }

  v2 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v2, qword_1EDD0C928);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v4))
  {
    v5 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v5);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "Received completion, simulating streaming with individual characters as tokens");
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_80_16();
  while (1)
  {
    v8 = sub_1C755088C();
    if (!v9)
    {
      break;
    }

    v10 = v0[24];
    v11 = v0[22];
    v0[5] = v8;
    v0[6] = v9;
    v12 = OUTLINED_FUNCTION_57_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    sub_1C7550EAC();
    (*v1)(v10, v11);
  }

  OUTLINED_FUNCTION_127_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  OUTLINED_FUNCTION_153_6();
  OUTLINED_FUNCTION_29_44();

  OUTLINED_FUNCTION_43();

  return v13();
}

void LLMWrapper.chat(system:user:samplingParameters:)(char *a1@<X8>)
{
  v2 = 1 << *v1;
  if ((v2 & 0xFFC00) != 0)
  {
    type metadata accessor for LLMWrapperUtils();
    v3 = OUTLINED_FUNCTION_143_7();
    static LLMWrapperUtils.systemUserPrompt(systemPrompt:userPrompt:)(v3, v4, v5, v6);
    OUTLINED_FUNCTION_13_90();
    sub_1C7489FF8(v7, v8, a1);
  }

  else if ((v2 & 0x1F) != 0)
  {
    OUTLINED_FUNCTION_13_90();
    OUTLINED_FUNCTION_117_0();
    AjaxLLM.complete(prompt:samplingParameters:)();
  }

  else
  {
    OUTLINED_FUNCTION_13_90();
    v9 = OUTLINED_FUNCTION_143_7();
    sub_1C748FCC0(v9, v10, v11, v12, v13);
  }
}

uint64_t LLMWrapper.respond(system:user:samplingParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = a5;
  v9 = *v5;
  if (v9 >= 0xA)
  {
    type metadata accessor for LLMWrapperUtils();
    v8 = a5;
    a3 = static LLMWrapperUtils.systemUserPrompt(systemPrompt:userPrompt:)(a1, a2, a3, a4);
    a4 = v13;
    goto LABEL_5;
  }

  sub_1C75504FC();
  if (v9 > 4)
  {
LABEL_5:
    OUTLINED_FUNCTION_79_20();
    sub_1C7489FF8(a3, a4, v8);
  }

  OUTLINED_FUNCTION_79_20();
  AjaxLLM.complete(prompt:samplingParameters:)();
}

uint64_t sub_1C74917D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7070718;

  return LLMWrapper.countTokens(in:)(a1, a2);
}

uint64_t sub_1C74918D0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1C6F765A4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1C749192C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1C7491A20(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1C7491A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7491AC0()
{
  OUTLINED_FUNCTION_123();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_75();

  return sub_1C7488AFC(v6, v7, v8, v3, v2);
}

uint64_t sub_1C7491B74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1C755091C();
    OUTLINED_FUNCTION_114_14(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1CCA5CDD0](15, a1 >> 16);
    OUTLINED_FUNCTION_114_14(v3);
    return v4 | 8;
  }
}

unint64_t sub_1C7491BD0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1C7491D64(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1C75517FC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1C75518FC();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_1C7491D64(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1C7491E04(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1C7491E74(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1C7491E04(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1C7491B74(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C7491E74(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1C75518FC();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}