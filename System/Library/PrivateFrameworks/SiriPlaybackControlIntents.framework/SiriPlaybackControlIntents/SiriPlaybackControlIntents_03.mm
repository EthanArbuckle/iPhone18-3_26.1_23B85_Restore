uint64_t *sub_268903B00()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  v3 = v0[29];

  return v0;
}

uint64_t sub_268903B58()
{
  sub_268903B00();

  return MEMORY[0x2821FE8D8](v0, 240, 7);
}

uint64_t sub_268903BD8(char a1)
{
  sub_268B38514();
  MEMORY[0x26D625F10](a1 & 1);
  return sub_268B38544();
}

uint64_t sub_268903C3C()
{
  v1 = *v0;
  sub_268B38514();
  MEMORY[0x26D625F10](v1);
  return sub_268B38544();
}

uint64_t sub_268903C90(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2688EA2F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_268903D0C(v6);
  return sub_268B38224();
}

void sub_268903D0C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268B383F4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26892CCC0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_268903F34(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_268903DEC(0, v3, 1, a1);
  }
}

void sub_268903DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v19 = v7;
      v20 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = sub_2689CB550();
        if (v12 >> 62)
        {
          v13 = sub_268B382A4();
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = sub_2689CB550();
        if (v14 >> 62)
        {
          v15 = sub_268B382A4();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v16 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v16;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v20 + 8;
      v7 = v19 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_268903F34(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v98 = (v8 + 16);
      v99 = *(v8 + 16);
      while (v99 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v100 = v8;
        v101 = (v8 + 16 * v99);
        v102 = *v101;
        v103 = &v98[2 * v99];
        v8 = *(v103 + 1);
        sub_26890467C((*a3 + 8 * *v101), (*a3 + 8 * *v103), (*a3 + 8 * v8), v119);
        if (v5)
        {
          break;
        }

        if (v8 < v102)
        {
          goto LABEL_132;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_133;
        }

        *v101 = v102;
        v101[1] = v8;
        v104 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_134;
        }

        v99 = *v98 - 1;
        sub_268AE0F78(v103 + 16, v104, v103);
        *v98 = v99;
        v8 = v100;
      }

LABEL_116:

      return;
    }

LABEL_141:
    v8 = sub_268AE0F64(v8);
    goto LABEL_108;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v110 = v7;
    if (v7 + 1 < v6)
    {
      v107 = v8;
      v11 = v7 + 1;
      v12 = (*a3 + 8 * v7);
      v105 = 8 * v7;
      v13 = v7;
      v14 = *v12;
      v8 = (v12 + 2);
      v15 = *(*a3 + 8 * v10);
      v16 = v14;
      v17 = sub_2689CB550();
      v115 = sub_2688EFD0C(v17);

      v18 = sub_2689CB550();
      v113 = sub_2688EFD0C(v18);

      v19 = v13 + 2;
      v111 = v6;
      while (1)
      {
        v20 = v19;
        if (v11 + 1 >= v6)
        {
          break;
        }

        v119 = v5;
        v21 = *(v8 - 8);
        v22 = *v8;
        v23 = v21;
        v24 = sub_2689CB550();
        if (v24 >> 62)
        {
          v25 = sub_268B382A4();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v26 = sub_2689CB550();
        if (v26 >> 62)
        {
          v27 = sub_268B382A4();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 += 8;
        ++v11;
        v19 = v20 + 1;
        v5 = v119;
        v6 = v111;
        if (v113 < v115 == v27 >= v25)
        {
          goto LABEL_15;
        }
      }

      v11 = v6;
LABEL_15:
      if (v113 >= v115)
      {
        v8 = v107;
        v10 = v11;
        v9 = v110;
      }

      else
      {
        v9 = v110;
        if (v11 < v110)
        {
          goto LABEL_138;
        }

        v10 = v11;
        if (v110 >= v11)
        {
          v8 = v107;
        }

        else
        {
          if (v6 >= v20)
          {
            v28 = v20;
          }

          else
          {
            v28 = v6;
          }

          v29 = 8 * v28 - 8;
          v30 = v110;
          v8 = v107;
          v31 = v105;
          do
          {
            if (v30 != --v10)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v33 = *(v32 + v31);
              *(v32 + v31) = *(v32 + v29);
              *(v32 + v29) = v33;
            }

            ++v30;
            v29 -= 8;
            v31 += 8;
          }

          while (v30 < v10);
          v10 = v11;
        }
      }
    }

    v34 = a3[1];
    if (v10 >= v34)
    {
      goto LABEL_54;
    }

    v35 = v10;
    v70 = __OFSUB__(v10, v9);
    v36 = v10 - v9;
    if (v70)
    {
      goto LABEL_137;
    }

    if (v36 < a4)
    {
      break;
    }

    v10 = v35;
LABEL_54:
    if (v10 < v9)
    {
      goto LABEL_136;
    }

    v117 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = *(v8 + 16);
      sub_268987C84();
      v8 = v96;
    }

    v52 = *(v8 + 16);
    v53 = v52 + 1;
    v54 = v117;
    if (v52 >= *(v8 + 24) >> 1)
    {
      sub_268987C84();
      v54 = v117;
      v8 = v97;
    }

    *(v8 + 16) = v53;
    v55 = v8 + 32;
    v56 = (v8 + 32 + 16 * v52);
    *v56 = v110;
    v56[1] = v54;
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v52)
    {
      while (1)
      {
        v57 = v53 - 1;
        v58 = (v55 + 16 * (v53 - 1));
        v59 = (v8 + 16 * v53);
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v60 = *(v8 + 32);
          v61 = *(v8 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_74:
          if (v63)
          {
            goto LABEL_123;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_126;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_131;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v53 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v53 < 2)
        {
          goto LABEL_125;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_89:
        if (v78)
        {
          goto LABEL_128;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v85 < v77)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v57 - 1 >= v53)
        {
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
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v89 = (v55 + 16 * (v57 - 1));
        v90 = *v89;
        v91 = v55 + 16 * v57;
        v92 = *(v91 + 8);
        sub_26890467C((*a3 + 8 * *v89), (*a3 + 8 * *v91), (*a3 + 8 * v92), v119);
        if (v5)
        {
          goto LABEL_116;
        }

        if (v92 < v90)
        {
          goto LABEL_118;
        }

        v93 = v8;
        v8 = *(v8 + 16);
        if (v57 > v8)
        {
          goto LABEL_119;
        }

        *v89 = v90;
        v89[1] = v92;
        if (v57 >= v8)
        {
          goto LABEL_120;
        }

        v53 = v8 - 1;
        sub_268AE0F78((v91 + 16), v8 - 1 - v57, (v55 + 16 * v57));
        *(v93 + 16) = v8 - 1;
        v94 = v8 > 2;
        v8 = v93;
        if (!v94)
        {
          goto LABEL_103;
        }
      }

      v64 = v55 + 16 * v53;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_121;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_122;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_124;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_127;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_135;
        }

        if (v62 < v88)
        {
          v57 = v53 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v7 = v117;
    v6 = a3[1];
    if (v117 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_139;
  }

  if (v9 + a4 >= v34)
  {
    v37 = a3[1];
  }

  else
  {
    v37 = v9 + a4;
  }

  if (v37 < v9)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v10 = v35;
  if (v35 == v37)
  {
    goto LABEL_54;
  }

  v108 = v8;
  v119 = v5;
  v38 = *a3;
  v39 = *a3 + 8 * v35 - 8;
  v40 = v9 - v35;
  v112 = v37;
LABEL_39:
  v114 = v39;
  v116 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  while (1)
  {
    v43 = *v39;
    v44 = v41;
    v45 = v43;
    v46 = sub_2689CB550();
    if (v46 >> 62)
    {
      v47 = sub_268B382A4();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = sub_2689CB550();
    if (v48 >> 62)
    {
      v49 = sub_268B382A4();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v49 >= v47)
    {
LABEL_51:
      v10 = v116 + 1;
      v39 = v114 + 8;
      --v40;
      if (v116 + 1 == v112)
      {
        v10 = v112;
        v5 = v119;
        v8 = v108;
        v9 = v110;
        goto LABEL_54;
      }

      goto LABEL_39;
    }

    if (!v38)
    {
      break;
    }

    v50 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v50;
    v39 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_51;
    }
  }

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
}

uint64_t sub_26890467C(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 >= v9)
  {
    sub_268988A70(a2, a3 - a2, a4);
    v10 = &v4[v9];
    v36 = v4;
LABEL_20:
    v21 = v6 - 1;
    v22 = v5 - 1;
    v39 = v6;
    v37 = v6 - 1;
    while (v10 > v4 && v6 > v7)
    {
      v24 = v22;
      v25 = *v21;
      v26 = *(v10 - 1);
      v27 = v25;
      v28 = sub_2689CB550();
      if (v28 >> 62)
      {
        v29 = sub_268B382A4();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = sub_2689CB550();
      if (v30 >> 62)
      {
        v31 = sub_268B382A4();
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v24;
      v32 = v24 + 1;
      if (v31 < v29)
      {
        v6 = v37;
        v4 = v36;
        if (v32 != v39)
        {
          *v5 = *v37;
          v6 = v37;
        }

        goto LABEL_20;
      }

      if (v10 != v32)
      {
        *v24 = *(v10 - 1);
      }

      v22 = v24 - 1;
      --v10;
      v4 = v36;
      v21 = v37;
      v6 = v39;
    }
  }

  else
  {
    sub_268988A70(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v38 = v5;
    while (v4 < v10 && v6 < v5)
    {
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = sub_2689CB550();
      if (v15 >> 62)
      {
        v16 = sub_268B382A4();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = sub_2689CB550();
      if (v17 >> 62)
      {
        v18 = sub_268B382A4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18 >= v16)
      {
        v19 = v4;
        v20 = v7 == v4++;
      }

      else
      {
        v19 = v6;
        v20 = v7 == v6++;
      }

      v5 = v38;
      if (!v20)
      {
        *v7 = *v19;
      }

      ++v7;
    }

    v6 = v7;
  }

  v33 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v33])
  {
    memmove(v6, v4, 8 * v33);
  }

  return 1;
}

uint64_t sub_268904964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DeviceGroup();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_268B382A4();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_268988A70(&v7[v6], result - v6, v5 + 8 * v3);
  if (v8)
  {
    result = sub_268B382A4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_268904A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) | (*(a1 + 9) << 8);
  return sub_2689A3E7C();
}

void sub_268904AC8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_63(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0(v10);
  v11 = sub_268B371E4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_2(v21, v152);
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_1(v23, v24, v25, v26, v27, v28, v29, v30, v153);
  v32 = MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3(v32, v33, v34, v35, v36, v37, v38, v39, v154);
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11_2(v41, v42, v43, v44, v45, v46, v47, v48, v155);
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_1(v50, v51, v52, v53, v54, v55, v56, v57, v156);
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_57_0();
  _Block_copy(v59);
  OUTLINED_FUNCTION_168_0();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_199_0(v60);
  OUTLINED_FUNCTION_0_3();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_248_0(v61);
  OUTLINED_FUNCTION_247_0();
  v62 = qword_2802A4F30;
  OUTLINED_FUNCTION_257_0();
  if (v62 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v63 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_14_2(v63);
  v65(v64);
  v66 = v1;
  v67 = sub_268B37A34();
  v68 = sub_268B37F04();

  if (OUTLINED_FUNCTION_246_0())
  {
    OUTLINED_FUNCTION_172_0();
    v69 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v69);
    OUTLINED_FUNCTION_255_0(4.8149e-34);
    v70 = sub_268B385B4();
    OUTLINED_FUNCTION_235_0(v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_112_0(&dword_2688BB000, v72, v73, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  v74 = OUTLINED_FUNCTION_91_0();
  (v1)(v74);
  sub_268B18100();
  v75 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_66();
  sub_268B18140();
  if (OUTLINED_FUNCTION_158_0() == 1 && sub_2688EFD0C(v68))
  {
    OUTLINED_FUNCTION_110();
    if (v75)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v76 = *(v68 + 32);
    }

    v67 = v76;
    sub_26892D418(v76);
    if (v77)
    {
      OUTLINED_FUNCTION_159();
      v78 = OUTLINED_FUNCTION_43_0();
      v79(v78);

      v80 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_233_0();
      if (OUTLINED_FUNCTION_236_0())
      {
        OUTLINED_FUNCTION_172_0();
        v81 = OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_181_0(v81);
        OUTLINED_FUNCTION_114_0(4.8149e-34);
        OUTLINED_FUNCTION_161_0();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_102_0(&dword_2688BB000, v82, v83, "Intent already has device with destinationDeviceId: %s, returning it");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_84_0();

        v84 = OUTLINED_FUNCTION_46_0();
        v85(v84);
      }

      else
      {

        v134 = OUTLINED_FUNCTION_71_0();
        (v1)(v134);
      }

      OUTLINED_FUNCTION_252_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_113_0(v75, xmmword_268B3BBA0);
      v135 = v67;
      OUTLINED_FUNCTION_61_0();
      sub_2689562B4();

LABEL_37:

      goto LABEL_46;
    }
  }

  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_44_0();
  while (v67 != v15)
  {
    if (v18)
    {
      v90 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D625BD0](v90);
    }

    else
    {
      OUTLINED_FUNCTION_192_0();
      if (v86)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_244_0();
    }

    OUTLINED_FUNCTION_197_0();
    if (v87)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v88 = OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_182_0();
    sub_2688C063C();
    v89 = OUTLINED_FUNCTION_201_0();
    v75 = v89;
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_0_1();
      v0 = sub_268B38074();

      if (v0)
      {

        v101 = OUTLINED_FUNCTION_29_0();
        v102(v101);

        v103 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_234_0();
        if (OUTLINED_FUNCTION_214_0())
        {
          OUTLINED_FUNCTION_172_0();
          v105 = OUTLINED_FUNCTION_120_0();
          OUTLINED_FUNCTION_99_0(v105);
          OUTLINED_FUNCTION_134_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_220_0(v106, v107);
          OUTLINED_FUNCTION_241();
          *(v1 + 4) = v67;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
          OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_6();
        }

        v113 = OUTLINED_FUNCTION_45_0();
        v114(v113);
        OUTLINED_FUNCTION_242_0();
        OUTLINED_FUNCTION_92_0();
        sub_2689562B4();

        goto LABEL_37;
      }
    }

    else
    {
    }

    ++v15;
  }

  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_191_0();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_16_2();
      v93(v92);
      v94 = sub_268B37A34();
      v95 = sub_268B37F04();
      if (OUTLINED_FUNCTION_160_0(v95))
      {
        OUTLINED_FUNCTION_172_0();
        v96 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_99_0(v96);
        OUTLINED_FUNCTION_134_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v97, v98);
        OUTLINED_FUNCTION_126_0();

        *(v1 + 4) = v68;
        OUTLINED_FUNCTION_106(&dword_2688BB000, v99, v100, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_6();
      }

      v148 = OUTLINED_FUNCTION_88_0();
      v149(v148);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v150 = swift_allocObject();
      *(v150 + 16) = sub_26890C8F8;
      *(v150 + 24) = v61;

      OUTLINED_FUNCTION_67();
    }

    else
    {

      v136 = OUTLINED_FUNCTION_24_1();
      v137(v136);
      v138 = sub_268B37A34();
      v139 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v139))
      {
        v140 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_136_0(v140);
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v141, v142, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.");
        OUTLINED_FUNCTION_84_0();
      }

      v143 = OUTLINED_FUNCTION_87_0();
      (v1)(v143);
      v144 = OUTLINED_FUNCTION_133_0();
      _Block_copy(v144);
      OUTLINED_FUNCTION_94_0();
      sub_2689562B4();
    }
  }

  else
  {
    v115 = OUTLINED_FUNCTION_28_0();
    v116(v115);
    v117 = sub_268B37A34();
    v118 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v118))
    {
      v119 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v119);
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v120, v121, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route");
      OUTLINED_FUNCTION_84_0();
    }

    v122 = OUTLINED_FUNCTION_65();
    v123(v122);
    v124 = sub_268B18120();
    if (v124)
    {
      OUTLINED_FUNCTION_200_0(v124);
      v125 = OUTLINED_FUNCTION_123();
      __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
      OUTLINED_FUNCTION_176_0();
      sub_26890CAA0(v127, v128, v129);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v130, v131);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v132 = OUTLINED_FUNCTION_6_3();
      v133(v132);
    }

    else
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_22_1();
      if (!v145)
      {
        sub_2688C058C(v75, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v75 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v75);
    OUTLINED_FUNCTION_68_0();

    v146 = OUTLINED_FUNCTION_64_0();
    v147(v146);
  }

LABEL_46:
  v151 = OUTLINED_FUNCTION_133_0();
  _Block_release(v151);
  _Block_release(v75);
  _Block_release(v75);
  OUTLINED_FUNCTION_23();
}

void sub_268905388()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_40_0(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0(v11);
  v12 = sub_268B371E4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v22, v158);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0(v24, v25, v26, v27, v28, v29, v30, v31, v159);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3(v33, v34, v35, v36, v37, v38, v39, v40, v160);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58_0();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_0(v43, v44, v45, v46, v47, v48, v49, v50, v161);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_93_0(v52);
  v53 = qword_2802A4F30;

  if (v53 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v163 = v12;
  v54 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v55 = OUTLINED_FUNCTION_15_1(v54);
  v56(v55);
  v57 = v0;
  v0 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_240_0();
  v12 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  OUTLINED_FUNCTION_86_0();
  if (v58)
  {
    OUTLINED_FUNCTION_172_0();
    v59 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v59);
    OUTLINED_FUNCTION_254_0(4.8149e-34);
    v60 = sub_268B385B4();
    OUTLINED_FUNCTION_164_0(v60, v61);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_107_0(&dword_2688BB000, v62, v63, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();

    v64 = OUTLINED_FUNCTION_41_0();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_69_0();
  }

  (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v64);
  sub_268B18100();
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90_0();
  v66 = sub_268B18140();
  if (OUTLINED_FUNCTION_111_0(v66) == 1 && sub_2688EFD0C(v0))
  {
    OUTLINED_FUNCTION_104_0();
    if (v65)
    {
      OUTLINED_FUNCTION_260_0();
    }

    else
    {
      v67 = v0[4];
    }

    v2 = v67;
    sub_26892D418(v67);
    if (v68)
    {
      OUTLINED_FUNCTION_162_0();
      v69 = OUTLINED_FUNCTION_31_0();
      v70(v69);

      v71 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_250_0();
      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v72 = OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_144_0(v72);
        OUTLINED_FUNCTION_103_0(4.8149e-34);
        OUTLINED_FUNCTION_163_0();
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_27();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_83_0();

        v78 = OUTLINED_FUNCTION_85_0();
      }

      else
      {

        v78 = OUTLINED_FUNCTION_195_0();
      }

      (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v78, v57);
      OUTLINED_FUNCTION_155_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v138 = swift_allocObject();
      OUTLINED_FUNCTION_249_0(v138, xmmword_268B3BBA0);
      OUTLINED_FUNCTION_42_0();
      sub_268956984();

LABEL_39:

      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_47();
  while (v19 != v2)
  {
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_253_0();
    }

    else
    {
      OUTLINED_FUNCTION_194_0();
      if (v79)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_239_0();
    }

    OUTLINED_FUNCTION_196_0();
    if (v80)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v81 = OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_142_0();
    sub_2688C063C();
    v82 = OUTLINED_FUNCTION_201_0();
    v83 = v82;
    if (v65)
    {
      OUTLINED_FUNCTION_178_0();
      v84 = sub_268B38074();

      if (v84)
      {

        v98 = OUTLINED_FUNCTION_26_0();
        v99(v98);

        v100 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_251_0();
        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v102 = OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_141_0(v102);
          OUTLINED_FUNCTION_165_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_256_0();
          OUTLINED_FUNCTION_184_0(v103, v104);
          OUTLINED_FUNCTION_126_0();

          *(v19 + 4) = v1;
          OUTLINED_FUNCTION_27();
          _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();
        }

        v110 = OUTLINED_FUNCTION_36_0();
        v111(v110);
        OUTLINED_FUNCTION_25_1();
        sub_268956984();

        goto LABEL_39;
      }
    }

    else
    {
    }

    ++v2;
  }

  OUTLINED_FUNCTION_188_0();
  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_187_0();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_10_3();
      v87(v86);
      v88 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v88, v89))
      {
        OUTLINED_FUNCTION_172_0();
        v90 = OUTLINED_FUNCTION_143_0();
        OUTLINED_FUNCTION_141_0(v90);
        OUTLINED_FUNCTION_175_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v91, v92);
        OUTLINED_FUNCTION_126_0();

        *&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0.count = v1;
        OUTLINED_FUNCTION_108_0(&dword_2688BB000, v93, v94, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_138_0();
      }

      v95 = OUTLINED_FUNCTION_38_0();
      v96(v95);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v97 = swift_allocObject();
      OUTLINED_FUNCTION_237_0(v97);
      OUTLINED_FUNCTION_52_0();
    }

    else
    {

      v139 = OUTLINED_FUNCTION_23_1();
      v140(v139);
      v141 = sub_268B37A34();
      v142 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_139_0(v142))
      {
        v143 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v143);
        OUTLINED_FUNCTION_76_0();
        _os_log_impl(v144, v145, v146, v147, v148, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v149 = OUTLINED_FUNCTION_37_0();
      v150(v149);
      OUTLINED_FUNCTION_72_0();
      sub_268956984();
    }
  }

  else
  {
    v112 = OUTLINED_FUNCTION_27_0();
    v113(v112);
    v114 = sub_268B37A34();
    v115 = sub_268B37F04();
    OUTLINED_FUNCTION_19(v115);
    OUTLINED_FUNCTION_186_0();
    if (v116)
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = OUTLINED_FUNCTION_39_0();
    v124(v123);
    v125 = sub_268B18120();
    if (v125)
    {
      OUTLINED_FUNCTION_99_0(v125);
      v126 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
      OUTLINED_FUNCTION_135_0();
      sub_26890CAA0(v128, v129, v130);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v131, v132);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v133 = OUTLINED_FUNCTION_70_0();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v163);
      v136 = OUTLINED_FUNCTION_8_3();
      v137(v136);
    }

    else
    {
      v151 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_140_0(v151, v152, v153);
      OUTLINED_FUNCTION_22_1();
      if (!v154)
      {
        sub_2688C058C(v162, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v155 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v155);
    OUTLINED_FUNCTION_53_0();

    v156 = OUTLINED_FUNCTION_64_0();
    v157(v156);
  }

LABEL_47:
  OUTLINED_FUNCTION_23();
}

void sub_268905C1C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_63(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0(v10);
  v11 = sub_268B371E4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_2(v21, v152);
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_1(v23, v24, v25, v26, v27, v28, v29, v30, v153);
  v32 = MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3(v32, v33, v34, v35, v36, v37, v38, v39, v154);
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11_2(v41, v42, v43, v44, v45, v46, v47, v48, v155);
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_1(v50, v51, v52, v53, v54, v55, v56, v57, v156);
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_57_0();
  _Block_copy(v59);
  OUTLINED_FUNCTION_168_0();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_199_0(v60);
  OUTLINED_FUNCTION_0_3();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_248_0(v61);
  OUTLINED_FUNCTION_247_0();
  v62 = qword_2802A4F30;
  OUTLINED_FUNCTION_257_0();
  if (v62 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v63 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_14_2(v63);
  v65(v64);
  v66 = v1;
  v67 = sub_268B37A34();
  v68 = sub_268B37F04();

  if (OUTLINED_FUNCTION_246_0())
  {
    OUTLINED_FUNCTION_172_0();
    v69 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v69);
    OUTLINED_FUNCTION_255_0(4.8149e-34);
    v70 = sub_268B385B4();
    OUTLINED_FUNCTION_235_0(v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_112_0(&dword_2688BB000, v72, v73, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  v74 = OUTLINED_FUNCTION_91_0();
  (v1)(v74);
  sub_268B18100();
  v75 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_66();
  sub_268B18140();
  if (OUTLINED_FUNCTION_158_0() == 1 && sub_2688EFD0C(v68))
  {
    OUTLINED_FUNCTION_110();
    if (v75)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v76 = *(v68 + 32);
    }

    v67 = v76;
    sub_26892D418(v76);
    if (v77)
    {
      OUTLINED_FUNCTION_159();
      v78 = OUTLINED_FUNCTION_43_0();
      v79(v78);

      v80 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_233_0();
      if (OUTLINED_FUNCTION_236_0())
      {
        OUTLINED_FUNCTION_172_0();
        v81 = OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_181_0(v81);
        OUTLINED_FUNCTION_114_0(4.8149e-34);
        OUTLINED_FUNCTION_161_0();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_102_0(&dword_2688BB000, v82, v83, "Intent already has device with destinationDeviceId: %s, returning it");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_84_0();

        v84 = OUTLINED_FUNCTION_46_0();
        v85(v84);
      }

      else
      {

        v134 = OUTLINED_FUNCTION_71_0();
        (v1)(v134);
      }

      OUTLINED_FUNCTION_252_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_113_0(v75, xmmword_268B3BBA0);
      v135 = v67;
      OUTLINED_FUNCTION_61_0();
      sub_268967630();

LABEL_37:

      goto LABEL_46;
    }
  }

  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_44_0();
  while (v67 != v15)
  {
    if (v18)
    {
      v90 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D625BD0](v90);
    }

    else
    {
      OUTLINED_FUNCTION_192_0();
      if (v86)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_244_0();
    }

    OUTLINED_FUNCTION_197_0();
    if (v87)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v88 = OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_182_0();
    sub_2688C063C();
    v89 = OUTLINED_FUNCTION_201_0();
    v75 = v89;
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_0_1();
      v0 = sub_268B38074();

      if (v0)
      {

        v101 = OUTLINED_FUNCTION_29_0();
        v102(v101);

        v103 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_234_0();
        if (OUTLINED_FUNCTION_214_0())
        {
          OUTLINED_FUNCTION_172_0();
          v105 = OUTLINED_FUNCTION_120_0();
          OUTLINED_FUNCTION_99_0(v105);
          OUTLINED_FUNCTION_134_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_220_0(v106, v107);
          OUTLINED_FUNCTION_241();
          *(v1 + 4) = v67;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
          OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_6();
        }

        v113 = OUTLINED_FUNCTION_45_0();
        v114(v113);
        OUTLINED_FUNCTION_242_0();
        OUTLINED_FUNCTION_92_0();
        sub_268967630();

        goto LABEL_37;
      }
    }

    else
    {
    }

    ++v15;
  }

  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_191_0();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_16_2();
      v93(v92);
      v94 = sub_268B37A34();
      v95 = sub_268B37F04();
      if (OUTLINED_FUNCTION_160_0(v95))
      {
        OUTLINED_FUNCTION_172_0();
        v96 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_99_0(v96);
        OUTLINED_FUNCTION_134_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v97, v98);
        OUTLINED_FUNCTION_126_0();

        *(v1 + 4) = v68;
        OUTLINED_FUNCTION_106(&dword_2688BB000, v99, v100, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_6();
      }

      v148 = OUTLINED_FUNCTION_88_0();
      v149(v148);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v150 = swift_allocObject();
      *(v150 + 16) = sub_26890C8E8;
      *(v150 + 24) = v61;

      OUTLINED_FUNCTION_67();
    }

    else
    {

      v136 = OUTLINED_FUNCTION_24_1();
      v137(v136);
      v138 = sub_268B37A34();
      v139 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v139))
      {
        v140 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_136_0(v140);
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v141, v142, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.");
        OUTLINED_FUNCTION_84_0();
      }

      v143 = OUTLINED_FUNCTION_87_0();
      (v1)(v143);
      v144 = OUTLINED_FUNCTION_133_0();
      _Block_copy(v144);
      OUTLINED_FUNCTION_94_0();
      sub_268967630();
    }
  }

  else
  {
    v115 = OUTLINED_FUNCTION_28_0();
    v116(v115);
    v117 = sub_268B37A34();
    v118 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v118))
    {
      v119 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v119);
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v120, v121, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route");
      OUTLINED_FUNCTION_84_0();
    }

    v122 = OUTLINED_FUNCTION_65();
    v123(v122);
    v124 = sub_268B18120();
    if (v124)
    {
      OUTLINED_FUNCTION_200_0(v124);
      v125 = OUTLINED_FUNCTION_123();
      __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
      OUTLINED_FUNCTION_176_0();
      sub_26890CAA0(v127, v128, v129);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v130, v131);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v132 = OUTLINED_FUNCTION_6_3();
      v133(v132);
    }

    else
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_22_1();
      if (!v145)
      {
        sub_2688C058C(v75, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v75 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v75);
    OUTLINED_FUNCTION_68_0();

    v146 = OUTLINED_FUNCTION_64_0();
    v147(v146);
  }

LABEL_46:
  v151 = OUTLINED_FUNCTION_133_0();
  _Block_release(v151);
  _Block_release(v75);
  _Block_release(v75);
  OUTLINED_FUNCTION_23();
}

void sub_2689064DC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_40_0(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0(v11);
  v12 = sub_268B371E4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v22, v158);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0(v24, v25, v26, v27, v28, v29, v30, v31, v159);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3(v33, v34, v35, v36, v37, v38, v39, v40, v160);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58_0();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_0(v43, v44, v45, v46, v47, v48, v49, v50, v161);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_93_0(v52);
  v53 = qword_2802A4F30;

  if (v53 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v163 = v12;
  v54 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v55 = OUTLINED_FUNCTION_15_1(v54);
  v56(v55);
  v57 = v0;
  v0 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_240_0();
  v12 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  OUTLINED_FUNCTION_86_0();
  if (v58)
  {
    OUTLINED_FUNCTION_172_0();
    v59 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v59);
    OUTLINED_FUNCTION_254_0(4.8149e-34);
    v60 = sub_268B385B4();
    OUTLINED_FUNCTION_164_0(v60, v61);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_107_0(&dword_2688BB000, v62, v63, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();

    v64 = OUTLINED_FUNCTION_41_0();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_69_0();
  }

  (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v64);
  sub_268B18100();
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90_0();
  v66 = sub_268B18140();
  if (OUTLINED_FUNCTION_111_0(v66) == 1 && sub_2688EFD0C(v0))
  {
    OUTLINED_FUNCTION_104_0();
    if (v65)
    {
      OUTLINED_FUNCTION_260_0();
    }

    else
    {
      v67 = v0[4];
    }

    v2 = v67;
    sub_26892D418(v67);
    if (v68)
    {
      OUTLINED_FUNCTION_162_0();
      v69 = OUTLINED_FUNCTION_31_0();
      v70(v69);

      v71 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_250_0();
      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v72 = OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_144_0(v72);
        OUTLINED_FUNCTION_103_0(4.8149e-34);
        OUTLINED_FUNCTION_163_0();
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_27();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_83_0();

        v78 = OUTLINED_FUNCTION_85_0();
      }

      else
      {

        v78 = OUTLINED_FUNCTION_195_0();
      }

      (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v78, v57);
      OUTLINED_FUNCTION_155_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v138 = swift_allocObject();
      OUTLINED_FUNCTION_249_0(v138, xmmword_268B3BBA0);
      OUTLINED_FUNCTION_42_0();
      sub_268967D34();

LABEL_39:

      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_47();
  while (v19 != v2)
  {
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_253_0();
    }

    else
    {
      OUTLINED_FUNCTION_194_0();
      if (v79)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_239_0();
    }

    OUTLINED_FUNCTION_196_0();
    if (v80)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v81 = OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_142_0();
    sub_2688C063C();
    v82 = OUTLINED_FUNCTION_201_0();
    v83 = v82;
    if (v65)
    {
      OUTLINED_FUNCTION_178_0();
      v84 = sub_268B38074();

      if (v84)
      {

        v98 = OUTLINED_FUNCTION_26_0();
        v99(v98);

        v100 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_251_0();
        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v102 = OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_141_0(v102);
          OUTLINED_FUNCTION_165_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_256_0();
          OUTLINED_FUNCTION_184_0(v103, v104);
          OUTLINED_FUNCTION_126_0();

          *(v19 + 4) = v1;
          OUTLINED_FUNCTION_27();
          _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();
        }

        v110 = OUTLINED_FUNCTION_36_0();
        v111(v110);
        OUTLINED_FUNCTION_25_1();
        sub_268967D34();

        goto LABEL_39;
      }
    }

    else
    {
    }

    ++v2;
  }

  OUTLINED_FUNCTION_188_0();
  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_187_0();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_10_3();
      v87(v86);
      v88 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v88, v89))
      {
        OUTLINED_FUNCTION_172_0();
        v90 = OUTLINED_FUNCTION_143_0();
        OUTLINED_FUNCTION_141_0(v90);
        OUTLINED_FUNCTION_175_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v91, v92);
        OUTLINED_FUNCTION_126_0();

        *&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0.count = v1;
        OUTLINED_FUNCTION_108_0(&dword_2688BB000, v93, v94, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_138_0();
      }

      v95 = OUTLINED_FUNCTION_38_0();
      v96(v95);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v97 = swift_allocObject();
      OUTLINED_FUNCTION_237_0(v97);
      OUTLINED_FUNCTION_52_0();
    }

    else
    {

      v139 = OUTLINED_FUNCTION_23_1();
      v140(v139);
      v141 = sub_268B37A34();
      v142 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_139_0(v142))
      {
        v143 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v143);
        OUTLINED_FUNCTION_76_0();
        _os_log_impl(v144, v145, v146, v147, v148, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v149 = OUTLINED_FUNCTION_37_0();
      v150(v149);
      OUTLINED_FUNCTION_72_0();
      sub_268967D34();
    }
  }

  else
  {
    v112 = OUTLINED_FUNCTION_27_0();
    v113(v112);
    v114 = sub_268B37A34();
    v115 = sub_268B37F04();
    OUTLINED_FUNCTION_19(v115);
    OUTLINED_FUNCTION_186_0();
    if (v116)
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = OUTLINED_FUNCTION_39_0();
    v124(v123);
    v125 = sub_268B18120();
    if (v125)
    {
      OUTLINED_FUNCTION_99_0(v125);
      v126 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
      OUTLINED_FUNCTION_135_0();
      sub_26890CAA0(v128, v129, v130);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v131, v132);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v133 = OUTLINED_FUNCTION_70_0();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v163);
      v136 = OUTLINED_FUNCTION_8_3();
      v137(v136);
    }

    else
    {
      v151 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_140_0(v151, v152, v153);
      OUTLINED_FUNCTION_22_1();
      if (!v154)
      {
        sub_2688C058C(v162, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v155 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v155);
    OUTLINED_FUNCTION_53_0();

    v156 = OUTLINED_FUNCTION_64_0();
    v157(v156);
  }

LABEL_47:
  OUTLINED_FUNCTION_23();
}

void sub_268906D70()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_63(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0(v10);
  v11 = sub_268B371E4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_2(v21, v152);
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_1(v23, v24, v25, v26, v27, v28, v29, v30, v153);
  v32 = MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3(v32, v33, v34, v35, v36, v37, v38, v39, v154);
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11_2(v41, v42, v43, v44, v45, v46, v47, v48, v155);
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_1(v50, v51, v52, v53, v54, v55, v56, v57, v156);
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_57_0();
  _Block_copy(v59);
  OUTLINED_FUNCTION_168_0();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_199_0(v60);
  OUTLINED_FUNCTION_0_3();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_248_0(v61);
  OUTLINED_FUNCTION_247_0();
  v62 = qword_2802A4F30;
  OUTLINED_FUNCTION_257_0();
  if (v62 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v63 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_14_2(v63);
  v65(v64);
  v66 = v1;
  v67 = sub_268B37A34();
  v68 = sub_268B37F04();

  if (OUTLINED_FUNCTION_246_0())
  {
    OUTLINED_FUNCTION_172_0();
    v69 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v69);
    OUTLINED_FUNCTION_255_0(4.8149e-34);
    v70 = sub_268B385B4();
    OUTLINED_FUNCTION_235_0(v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_112_0(&dword_2688BB000, v72, v73, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  v74 = OUTLINED_FUNCTION_91_0();
  (v1)(v74);
  sub_268B18100();
  v75 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_66();
  sub_268B18140();
  if (OUTLINED_FUNCTION_158_0() == 1 && sub_2688EFD0C(v68))
  {
    OUTLINED_FUNCTION_110();
    if (v75)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v76 = *(v68 + 32);
    }

    v67 = v76;
    sub_26892D418(v76);
    if (v77)
    {
      OUTLINED_FUNCTION_159();
      v78 = OUTLINED_FUNCTION_43_0();
      v79(v78);

      v80 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_233_0();
      if (OUTLINED_FUNCTION_236_0())
      {
        OUTLINED_FUNCTION_172_0();
        v81 = OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_181_0(v81);
        OUTLINED_FUNCTION_114_0(4.8149e-34);
        OUTLINED_FUNCTION_161_0();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_102_0(&dword_2688BB000, v82, v83, "Intent already has device with destinationDeviceId: %s, returning it");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_84_0();

        v84 = OUTLINED_FUNCTION_46_0();
        v85(v84);
      }

      else
      {

        v134 = OUTLINED_FUNCTION_71_0();
        (v1)(v134);
      }

      OUTLINED_FUNCTION_252_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_113_0(v75, xmmword_268B3BBA0);
      v135 = v67;
      OUTLINED_FUNCTION_61_0();
      sub_26898DBC8();

LABEL_37:

      goto LABEL_46;
    }
  }

  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_44_0();
  while (v67 != v15)
  {
    if (v18)
    {
      v90 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D625BD0](v90);
    }

    else
    {
      OUTLINED_FUNCTION_192_0();
      if (v86)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_244_0();
    }

    OUTLINED_FUNCTION_197_0();
    if (v87)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v88 = OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_182_0();
    sub_2688C063C();
    v89 = OUTLINED_FUNCTION_201_0();
    v75 = v89;
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_0_1();
      v0 = sub_268B38074();

      if (v0)
      {

        v101 = OUTLINED_FUNCTION_29_0();
        v102(v101);

        v103 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_234_0();
        if (OUTLINED_FUNCTION_214_0())
        {
          OUTLINED_FUNCTION_172_0();
          v105 = OUTLINED_FUNCTION_120_0();
          OUTLINED_FUNCTION_99_0(v105);
          OUTLINED_FUNCTION_134_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_220_0(v106, v107);
          OUTLINED_FUNCTION_241();
          *(v1 + 4) = v67;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
          OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_6();
        }

        v113 = OUTLINED_FUNCTION_45_0();
        v114(v113);
        OUTLINED_FUNCTION_242_0();
        OUTLINED_FUNCTION_92_0();
        sub_26898DBC8();

        goto LABEL_37;
      }
    }

    else
    {
    }

    ++v15;
  }

  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_191_0();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_16_2();
      v93(v92);
      v94 = sub_268B37A34();
      v95 = sub_268B37F04();
      if (OUTLINED_FUNCTION_160_0(v95))
      {
        OUTLINED_FUNCTION_172_0();
        v96 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_99_0(v96);
        OUTLINED_FUNCTION_134_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v97, v98);
        OUTLINED_FUNCTION_126_0();

        *(v1 + 4) = v68;
        OUTLINED_FUNCTION_106(&dword_2688BB000, v99, v100, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_6();
      }

      v148 = OUTLINED_FUNCTION_88_0();
      v149(v148);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v150 = swift_allocObject();
      *(v150 + 16) = sub_26890C8D8;
      *(v150 + 24) = v61;

      OUTLINED_FUNCTION_67();
    }

    else
    {

      v136 = OUTLINED_FUNCTION_24_1();
      v137(v136);
      v138 = sub_268B37A34();
      v139 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v139))
      {
        v140 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_136_0(v140);
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v141, v142, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.");
        OUTLINED_FUNCTION_84_0();
      }

      v143 = OUTLINED_FUNCTION_87_0();
      (v1)(v143);
      v144 = OUTLINED_FUNCTION_133_0();
      _Block_copy(v144);
      OUTLINED_FUNCTION_94_0();
      sub_26898DBC8();
    }
  }

  else
  {
    v115 = OUTLINED_FUNCTION_28_0();
    v116(v115);
    v117 = sub_268B37A34();
    v118 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v118))
    {
      v119 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v119);
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v120, v121, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route");
      OUTLINED_FUNCTION_84_0();
    }

    v122 = OUTLINED_FUNCTION_65();
    v123(v122);
    v124 = sub_268B18120();
    if (v124)
    {
      OUTLINED_FUNCTION_200_0(v124);
      v125 = OUTLINED_FUNCTION_123();
      __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
      OUTLINED_FUNCTION_176_0();
      sub_26890CAA0(v127, v128, v129);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v130, v131);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v132 = OUTLINED_FUNCTION_6_3();
      v133(v132);
    }

    else
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_22_1();
      if (!v145)
      {
        sub_2688C058C(v75, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v75 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v75);
    OUTLINED_FUNCTION_68_0();

    v146 = OUTLINED_FUNCTION_64_0();
    v147(v146);
  }

LABEL_46:
  v151 = OUTLINED_FUNCTION_133_0();
  _Block_release(v151);
  _Block_release(v75);
  _Block_release(v75);
  OUTLINED_FUNCTION_23();
}

void sub_268907630()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_40_0(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0(v11);
  v12 = sub_268B371E4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v22, v158);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0(v24, v25, v26, v27, v28, v29, v30, v31, v159);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3(v33, v34, v35, v36, v37, v38, v39, v40, v160);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58_0();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_0(v43, v44, v45, v46, v47, v48, v49, v50, v161);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_93_0(v52);
  v53 = qword_2802A4F30;

  if (v53 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v163 = v12;
  v54 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v55 = OUTLINED_FUNCTION_15_1(v54);
  v56(v55);
  v57 = v0;
  v0 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_240_0();
  v12 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  OUTLINED_FUNCTION_86_0();
  if (v58)
  {
    OUTLINED_FUNCTION_172_0();
    v59 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v59);
    OUTLINED_FUNCTION_254_0(4.8149e-34);
    v60 = sub_268B385B4();
    OUTLINED_FUNCTION_164_0(v60, v61);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_107_0(&dword_2688BB000, v62, v63, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();

    v64 = OUTLINED_FUNCTION_41_0();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_69_0();
  }

  (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v64);
  sub_268B18100();
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90_0();
  v66 = sub_268B18140();
  if (OUTLINED_FUNCTION_111_0(v66) == 1 && sub_2688EFD0C(v0))
  {
    OUTLINED_FUNCTION_104_0();
    if (v65)
    {
      OUTLINED_FUNCTION_260_0();
    }

    else
    {
      v67 = v0[4];
    }

    v2 = v67;
    sub_26892D418(v67);
    if (v68)
    {
      OUTLINED_FUNCTION_162_0();
      v69 = OUTLINED_FUNCTION_31_0();
      v70(v69);

      v71 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_250_0();
      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v72 = OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_144_0(v72);
        OUTLINED_FUNCTION_103_0(4.8149e-34);
        OUTLINED_FUNCTION_163_0();
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_27();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_83_0();

        v78 = OUTLINED_FUNCTION_85_0();
      }

      else
      {

        v78 = OUTLINED_FUNCTION_195_0();
      }

      (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v78, v57);
      OUTLINED_FUNCTION_155_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v138 = swift_allocObject();
      OUTLINED_FUNCTION_249_0(v138, xmmword_268B3BBA0);
      OUTLINED_FUNCTION_42_0();
      sub_26898E2C4();

LABEL_39:

      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_47();
  while (v19 != v2)
  {
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_253_0();
    }

    else
    {
      OUTLINED_FUNCTION_194_0();
      if (v79)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_239_0();
    }

    OUTLINED_FUNCTION_196_0();
    if (v80)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v81 = OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_142_0();
    sub_2688C063C();
    v82 = OUTLINED_FUNCTION_201_0();
    v83 = v82;
    if (v65)
    {
      OUTLINED_FUNCTION_178_0();
      v84 = sub_268B38074();

      if (v84)
      {

        v98 = OUTLINED_FUNCTION_26_0();
        v99(v98);

        v100 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_251_0();
        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v102 = OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_141_0(v102);
          OUTLINED_FUNCTION_165_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_256_0();
          OUTLINED_FUNCTION_184_0(v103, v104);
          OUTLINED_FUNCTION_126_0();

          *(v19 + 4) = v1;
          OUTLINED_FUNCTION_27();
          _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();
        }

        v110 = OUTLINED_FUNCTION_36_0();
        v111(v110);
        OUTLINED_FUNCTION_25_1();
        sub_26898E2C4();

        goto LABEL_39;
      }
    }

    else
    {
    }

    ++v2;
  }

  OUTLINED_FUNCTION_188_0();
  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_187_0();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_10_3();
      v87(v86);
      v88 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v88, v89))
      {
        OUTLINED_FUNCTION_172_0();
        v90 = OUTLINED_FUNCTION_143_0();
        OUTLINED_FUNCTION_141_0(v90);
        OUTLINED_FUNCTION_175_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v91, v92);
        OUTLINED_FUNCTION_126_0();

        *&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0.count = v1;
        OUTLINED_FUNCTION_108_0(&dword_2688BB000, v93, v94, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_138_0();
      }

      v95 = OUTLINED_FUNCTION_38_0();
      v96(v95);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v97 = swift_allocObject();
      OUTLINED_FUNCTION_237_0(v97);
      OUTLINED_FUNCTION_52_0();
    }

    else
    {

      v139 = OUTLINED_FUNCTION_23_1();
      v140(v139);
      v141 = sub_268B37A34();
      v142 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_139_0(v142))
      {
        v143 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v143);
        OUTLINED_FUNCTION_76_0();
        _os_log_impl(v144, v145, v146, v147, v148, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v149 = OUTLINED_FUNCTION_37_0();
      v150(v149);
      OUTLINED_FUNCTION_72_0();
      sub_26898E2C4();
    }
  }

  else
  {
    v112 = OUTLINED_FUNCTION_27_0();
    v113(v112);
    v114 = sub_268B37A34();
    v115 = sub_268B37F04();
    OUTLINED_FUNCTION_19(v115);
    OUTLINED_FUNCTION_186_0();
    if (v116)
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = OUTLINED_FUNCTION_39_0();
    v124(v123);
    v125 = sub_268B18120();
    if (v125)
    {
      OUTLINED_FUNCTION_99_0(v125);
      v126 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
      OUTLINED_FUNCTION_135_0();
      sub_26890CAA0(v128, v129, v130);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v131, v132);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v133 = OUTLINED_FUNCTION_70_0();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v163);
      v136 = OUTLINED_FUNCTION_8_3();
      v137(v136);
    }

    else
    {
      v151 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_140_0(v151, v152, v153);
      OUTLINED_FUNCTION_22_1();
      if (!v154)
      {
        sub_2688C058C(v162, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v155 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v155);
    OUTLINED_FUNCTION_53_0();

    v156 = OUTLINED_FUNCTION_64_0();
    v157(v156);
  }

LABEL_47:
  OUTLINED_FUNCTION_23();
}

void sub_268907EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v200 = v28;
  v201 = v29;
  v199 = v30;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  v194 = v193 - v37;
  OUTLINED_FUNCTION_9();
  v38 = sub_268B371E4();
  v39 = OUTLINED_FUNCTION_1(v38);
  v196 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2();
  v195 = v43;
  OUTLINED_FUNCTION_9();
  v44 = sub_268B37A54();
  v45 = OUTLINED_FUNCTION_1(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  v204 = v50;
  OUTLINED_FUNCTION_8();
  v52 = MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_21_1(v52, v53, v54, v55, v56, v57, v58, v59, v193[0]);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v63 = MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_11_2(v63, v64, v65, v66, v67, v68, v69, v70, v193[0]);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_220();
  v72 = swift_allocObject();
  v203 = v27;
  v72[2] = v27;
  v72[3] = v25;
  v72[4] = v23;
  OUTLINED_FUNCTION_0_3();
  v73 = swift_allocObject();
  *(v73 + 16) = sub_26890D77C;
  *(v73 + 24) = v72;
  v212 = v73;
  v74 = qword_2802A4F30;
  swift_retain_n();
  v214 = v23;
  swift_bridgeObjectRetain_n();
  v211 = v72;

  if (v74 != -1)
  {
LABEL_56:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v44, qword_2802CDA10);
  v75 = OUTLINED_FUNCTION_139(v47);
  v206 = v76;
  v207 = v77;
  v208 = v78;
  (v77)(v75);
  v79 = v32;
  v80 = sub_268B37A34();
  v81 = sub_268B37F04();

  v82 = os_log_type_enabled(v80, v81);
  v213 = v25;
  v210 = v47;
  v197 = v38;
  if (v82)
  {
    v83 = v47;
    v84 = OUTLINED_FUNCTION_172_0();
    v85 = OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_99_0(v85);
    *v84 = 136315138;
    swift_getObjectType();
    v86 = sub_268B385B4();
    v47 = v87;
    v88 = v44;
    v89 = sub_26892CDB8(v86, v87, v215);

    *(v84 + 4) = v89;
    v44 = v88;
    _os_log_impl(&dword_2688BB000, v80, v81, "Smart selecting devices for intent: %s", v84, 0xCu);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_12();

    v90 = v83[1];
    v91 = OUTLINED_FUNCTION_230_0();
    v90(v91);
  }

  else
  {

    v92 = v47[1];
    ++v47;
    v90 = v92;
    v93 = OUTLINED_FUNCTION_230_0();
    v92(v93);
  }

  v94 = sub_268B18100();
  v95 = MEMORY[0x277D84F90];
  if (v94)
  {
    v38 = v94;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v202 = v79;
  v96 = sub_268B18140();
  if (v96)
  {
    v97 = v96;
  }

  else
  {
    v97 = v95;
  }

  v209 = v97;
  v98 = sub_2688EFD0C(v38);
  v205 = v90;
  if (v98 == 1 && sub_2688EFD0C(v38))
  {
    v99 = OUTLINED_FUNCTION_270_0();
    sub_2688EFD10(v99, v100, v101);
    if (v95)
    {
      v102 = MEMORY[0x26D625BD0](0, v38);
    }

    else
    {
      v102 = *(v38 + 32);
    }

    v103 = v102;
    sub_26892D418(v102);
    if (v104)
    {
      v105 = v104;

      v106 = v204;
      v207(v204, v206, v44);

      v107 = sub_268B37A34();
      sub_268B37F04();

      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v108 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_144_0(v108);
        *v90 = 136315138;
        v109 = OUTLINED_FUNCTION_265_0();
        v111 = sub_26892CDB8(v109, v105, v110);

        *(v90 + 4) = v111;
        OUTLINED_FUNCTION_72();
        _os_log_impl(v112, v113, v114, v115, v90, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_6();

        OUTLINED_FUNCTION_207_0();
        v205(v204, v44);
      }

      else
      {

        OUTLINED_FUNCTION_207_0();
        (v90)(v106, v44);
      }

      sub_268983D74(v209);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_268B3BBA0;
      *(v174 + 32) = v103;

      v175 = v103;
      OUTLINED_FUNCTION_61_0();
      sub_2689F5E28();

LABEL_45:

      goto LABEL_53;
    }
  }

  v204 = v44;
  v32 = sub_2688EFD0C(v38);
  v44 = 0;
  v25 = v38 & 0xFFFFFFFFFFFFFF8;
  while (v32 != v44)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v120 = OUTLINED_FUNCTION_271_0();
      v116 = MEMORY[0x26D625BD0](v120);
    }

    else
    {
      if (v44 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v116 = *(v38 + 8 * v44 + 32);
    }

    v81 = v116;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v117 = [v116 isPreResolved];
    OUTLINED_FUNCTION_142_0();
    sub_2688C063C();
    v118 = OUTLINED_FUNCTION_201_0();
    v47 = v118;
    if (v95)
    {
      v119 = sub_268B38074();

      if (v119)
      {

        v134 = v198;
        v135 = v204;
        v207(v198, v206, v204);

        v136 = sub_268B37A34();
        v137 = sub_268B37F04();

        if (os_log_type_enabled(v136, v137))
        {
          OUTLINED_FUNCTION_172_0();
          v139 = OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_181_0(v139);
          OUTLINED_FUNCTION_165_0(4.8149e-34);
          v140 = type metadata accessor for Device();
          v141 = MEMORY[0x26D6256F0](v38, v140);
          v143 = sub_26892CDB8(v141, v142, v215);

          *(v32 + 4) = v143;
          OUTLINED_FUNCTION_76_0();
          _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
          OUTLINED_FUNCTION_79_0();
          OUTLINED_FUNCTION_83_0();
        }

        OUTLINED_FUNCTION_207_0();
        v205(v134, v135);

        OUTLINED_FUNCTION_133_0();

        sub_2689F5E28();

        goto LABEL_45;
      }
    }

    else
    {
    }

    ++v44;
  }

  if (sub_268921060())
  {
    v121 = sub_268B18120();
    v122 = v204;
    if (v121)
    {
      v123 = v121;
      v207(v193[1], v206, v204);
      v124 = sub_268B37A34();
      v125 = sub_268B37F04();
      if (os_log_type_enabled(v124, v125))
      {
        OUTLINED_FUNCTION_172_0();
        v126 = OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_144_0(v126);
        OUTLINED_FUNCTION_165_0(4.8149e-34);
        v127 = type metadata accessor for DeviceQuery();
        v128 = MEMORY[0x26D6256F0](v123, v127);
        OUTLINED_FUNCTION_184_0(v128, v129);
        OUTLINED_FUNCTION_126_0();

        *(v32 + 4) = v81;
        _os_log_impl(&dword_2688BB000, v124, v125, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s", v32, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_83_0();
      }

      OUTLINED_FUNCTION_207_0();
      v130 = OUTLINED_FUNCTION_271_0();
      (v205)(v130);
      sub_268920A60();

      OUTLINED_FUNCTION_0_3();
      swift_allocObject();
      OUTLINED_FUNCTION_151_0();
      v131 = v212;
      *(v132 + 16) = v133;
      *(v132 + 24) = v131;

      sub_2688F80CC();
    }

    else
    {

      v176 = OUTLINED_FUNCTION_119_0(&a15);
      v207(v176, v206, v122);
      v177 = sub_268B37A34();
      v178 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v178))
      {
        v179 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v179);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v180, v181, v182, v183, v184, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      OUTLINED_FUNCTION_207_0();
      v185 = OUTLINED_FUNCTION_231_0();
      (v205)(v185);

      OUTLINED_FUNCTION_133_0();

      sub_2689F5E28();
    }
  }

  else
  {
    v149 = OUTLINED_FUNCTION_145_0(&a18);
    v207(v149, v206, v204);
    v150 = sub_268B37A34();
    v151 = sub_268B37F04();
    if (OUTLINED_FUNCTION_139_0(v151))
    {
      v152 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v152);
      OUTLINED_FUNCTION_76_0();
      _os_log_impl(v153, v154, v155, v156, v157, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    OUTLINED_FUNCTION_207_0();
    v158 = OUTLINED_FUNCTION_278();
    (v205)(v158);
    v159 = sub_268B18120();
    v161 = v196;
    v160 = v197;
    v162 = v195;
    if (v159)
    {
      OUTLINED_FUNCTION_99_0(v159);
      v163 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v163, v164);
      OUTLINED_FUNCTION_135_0();
      sub_26890CAA0(v165, v166, v167);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v168, v169);
      v170 = v194;
      OUTLINED_FUNCTION_152_0();
      sub_268B37E84();

      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v171, v172, v173, v160);
      (*(v161 + 32))(v162, v170, v160);
    }

    else
    {
      v186 = v194;
      v187 = OUTLINED_FUNCTION_62_0();
      __swift_storeEnumTagSinglePayload(v187, v188, v189, v160);
      sub_268B37164();
      if (__swift_getEnumTagSinglePayload(v186, 1, v160) != 1)
      {
        sub_2688C058C(v186, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    swift_allocObject();
    OUTLINED_FUNCTION_151_0();
    v190 = v212;
    *(v191 + 16) = v192;
    *(v191 + 24) = v190;

    sub_2688F4CD4();

    (*(v161 + 8))(v162, v160);
  }

LABEL_53:

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_23();
}

void sub_268908AF4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_63(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0(v10);
  v11 = sub_268B371E4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_2(v21, v152);
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_1(v23, v24, v25, v26, v27, v28, v29, v30, v153);
  v32 = MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3(v32, v33, v34, v35, v36, v37, v38, v39, v154);
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11_2(v41, v42, v43, v44, v45, v46, v47, v48, v155);
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_1(v50, v51, v52, v53, v54, v55, v56, v57, v156);
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_57_0();
  _Block_copy(v59);
  OUTLINED_FUNCTION_168_0();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_199_0(v60);
  OUTLINED_FUNCTION_0_3();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_248_0(v61);
  OUTLINED_FUNCTION_247_0();
  v62 = qword_2802A4F30;
  OUTLINED_FUNCTION_257_0();
  if (v62 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v63 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_14_2(v63);
  v65(v64);
  v66 = v1;
  v67 = sub_268B37A34();
  v68 = sub_268B37F04();

  if (OUTLINED_FUNCTION_246_0())
  {
    OUTLINED_FUNCTION_172_0();
    v69 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v69);
    OUTLINED_FUNCTION_255_0(4.8149e-34);
    v70 = sub_268B385B4();
    OUTLINED_FUNCTION_235_0(v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_112_0(&dword_2688BB000, v72, v73, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  v74 = OUTLINED_FUNCTION_91_0();
  (v1)(v74);
  sub_268B18100();
  v75 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_66();
  sub_268B18140();
  if (OUTLINED_FUNCTION_158_0() == 1 && sub_2688EFD0C(v68))
  {
    OUTLINED_FUNCTION_110();
    if (v75)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v76 = *(v68 + 32);
    }

    v67 = v76;
    sub_26892D418(v76);
    if (v77)
    {
      OUTLINED_FUNCTION_159();
      v78 = OUTLINED_FUNCTION_43_0();
      v79(v78);

      v80 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_233_0();
      if (OUTLINED_FUNCTION_236_0())
      {
        OUTLINED_FUNCTION_172_0();
        v81 = OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_181_0(v81);
        OUTLINED_FUNCTION_114_0(4.8149e-34);
        OUTLINED_FUNCTION_161_0();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_102_0(&dword_2688BB000, v82, v83, "Intent already has device with destinationDeviceId: %s, returning it");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_84_0();

        v84 = OUTLINED_FUNCTION_46_0();
        v85(v84);
      }

      else
      {

        v134 = OUTLINED_FUNCTION_71_0();
        (v1)(v134);
      }

      OUTLINED_FUNCTION_252_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_113_0(v75, xmmword_268B3BBA0);
      v135 = v67;
      OUTLINED_FUNCTION_61_0();
      sub_2689F64CC();

LABEL_37:

      goto LABEL_46;
    }
  }

  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_44_0();
  while (v67 != v15)
  {
    if (v18)
    {
      v90 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D625BD0](v90);
    }

    else
    {
      OUTLINED_FUNCTION_192_0();
      if (v86)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_244_0();
    }

    OUTLINED_FUNCTION_197_0();
    if (v87)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v88 = OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_182_0();
    sub_2688C063C();
    v89 = OUTLINED_FUNCTION_201_0();
    v75 = v89;
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_0_1();
      v0 = sub_268B38074();

      if (v0)
      {

        v101 = OUTLINED_FUNCTION_29_0();
        v102(v101);

        v103 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_234_0();
        if (OUTLINED_FUNCTION_214_0())
        {
          OUTLINED_FUNCTION_172_0();
          v105 = OUTLINED_FUNCTION_120_0();
          OUTLINED_FUNCTION_99_0(v105);
          OUTLINED_FUNCTION_134_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_220_0(v106, v107);
          OUTLINED_FUNCTION_241();
          *(v1 + 4) = v67;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
          OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_6();
        }

        v113 = OUTLINED_FUNCTION_45_0();
        v114(v113);
        OUTLINED_FUNCTION_242_0();
        OUTLINED_FUNCTION_92_0();
        sub_2689F64CC();

        goto LABEL_37;
      }
    }

    else
    {
    }

    ++v15;
  }

  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_191_0();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_16_2();
      v93(v92);
      v94 = sub_268B37A34();
      v95 = sub_268B37F04();
      if (OUTLINED_FUNCTION_160_0(v95))
      {
        OUTLINED_FUNCTION_172_0();
        v96 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_99_0(v96);
        OUTLINED_FUNCTION_134_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v97, v98);
        OUTLINED_FUNCTION_126_0();

        *(v1 + 4) = v68;
        OUTLINED_FUNCTION_106(&dword_2688BB000, v99, v100, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_6();
      }

      v148 = OUTLINED_FUNCTION_88_0();
      v149(v148);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v150 = swift_allocObject();
      *(v150 + 16) = sub_26890C8B8;
      *(v150 + 24) = v61;

      OUTLINED_FUNCTION_67();
    }

    else
    {

      v136 = OUTLINED_FUNCTION_24_1();
      v137(v136);
      v138 = sub_268B37A34();
      v139 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v139))
      {
        v140 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_136_0(v140);
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v141, v142, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.");
        OUTLINED_FUNCTION_84_0();
      }

      v143 = OUTLINED_FUNCTION_87_0();
      (v1)(v143);
      v144 = OUTLINED_FUNCTION_133_0();
      _Block_copy(v144);
      OUTLINED_FUNCTION_94_0();
      sub_2689F64CC();
    }
  }

  else
  {
    v115 = OUTLINED_FUNCTION_28_0();
    v116(v115);
    v117 = sub_268B37A34();
    v118 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v118))
    {
      v119 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v119);
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v120, v121, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route");
      OUTLINED_FUNCTION_84_0();
    }

    v122 = OUTLINED_FUNCTION_65();
    v123(v122);
    v124 = sub_268B18120();
    if (v124)
    {
      OUTLINED_FUNCTION_200_0(v124);
      v125 = OUTLINED_FUNCTION_123();
      __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
      OUTLINED_FUNCTION_176_0();
      sub_26890CAA0(v127, v128, v129);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v130, v131);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v132 = OUTLINED_FUNCTION_6_3();
      v133(v132);
    }

    else
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_22_1();
      if (!v145)
      {
        sub_2688C058C(v75, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v75 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v75);
    OUTLINED_FUNCTION_68_0();

    v146 = OUTLINED_FUNCTION_64_0();
    v147(v146);
  }

LABEL_46:
  v151 = OUTLINED_FUNCTION_133_0();
  _Block_release(v151);
  _Block_release(v75);
  _Block_release(v75);
  OUTLINED_FUNCTION_23();
}

void sub_2689093B4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_40_0(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0(v11);
  v12 = sub_268B371E4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v22, v158);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0(v24, v25, v26, v27, v28, v29, v30, v31, v159);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3(v33, v34, v35, v36, v37, v38, v39, v40, v160);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58_0();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_0(v43, v44, v45, v46, v47, v48, v49, v50, v161);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_93_0(v52);
  v53 = qword_2802A4F30;

  if (v53 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v163 = v12;
  v54 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v55 = OUTLINED_FUNCTION_15_1(v54);
  v56(v55);
  v57 = v0;
  v0 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_240_0();
  v12 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  OUTLINED_FUNCTION_86_0();
  if (v58)
  {
    OUTLINED_FUNCTION_172_0();
    v59 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v59);
    OUTLINED_FUNCTION_254_0(4.8149e-34);
    v60 = sub_268B385B4();
    OUTLINED_FUNCTION_164_0(v60, v61);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_107_0(&dword_2688BB000, v62, v63, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();

    v64 = OUTLINED_FUNCTION_41_0();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_69_0();
  }

  (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v64);
  sub_268B18100();
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90_0();
  v66 = sub_268B18140();
  if (OUTLINED_FUNCTION_111_0(v66) == 1 && sub_2688EFD0C(v0))
  {
    OUTLINED_FUNCTION_104_0();
    if (v65)
    {
      OUTLINED_FUNCTION_260_0();
    }

    else
    {
      v67 = v0[4];
    }

    v2 = v67;
    sub_26892D418(v67);
    if (v68)
    {
      OUTLINED_FUNCTION_162_0();
      v69 = OUTLINED_FUNCTION_31_0();
      v70(v69);

      v71 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_250_0();
      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v72 = OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_144_0(v72);
        OUTLINED_FUNCTION_103_0(4.8149e-34);
        OUTLINED_FUNCTION_163_0();
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_27();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_83_0();

        v78 = OUTLINED_FUNCTION_85_0();
      }

      else
      {

        v78 = OUTLINED_FUNCTION_195_0();
      }

      (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v78, v57);
      OUTLINED_FUNCTION_155_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v138 = swift_allocObject();
      OUTLINED_FUNCTION_249_0(v138, xmmword_268B3BBA0);
      OUTLINED_FUNCTION_42_0();
      sub_2689F6B80();

LABEL_39:

      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_47();
  while (v19 != v2)
  {
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_253_0();
    }

    else
    {
      OUTLINED_FUNCTION_194_0();
      if (v79)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_239_0();
    }

    OUTLINED_FUNCTION_196_0();
    if (v80)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v81 = OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_142_0();
    sub_2688C063C();
    v82 = OUTLINED_FUNCTION_201_0();
    v83 = v82;
    if (v65)
    {
      OUTLINED_FUNCTION_178_0();
      v84 = sub_268B38074();

      if (v84)
      {

        v98 = OUTLINED_FUNCTION_26_0();
        v99(v98);

        v100 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_251_0();
        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v102 = OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_141_0(v102);
          OUTLINED_FUNCTION_165_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_256_0();
          OUTLINED_FUNCTION_184_0(v103, v104);
          OUTLINED_FUNCTION_126_0();

          *(v19 + 4) = v1;
          OUTLINED_FUNCTION_27();
          _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();
        }

        v110 = OUTLINED_FUNCTION_36_0();
        v111(v110);
        OUTLINED_FUNCTION_25_1();
        sub_2689F6B80();

        goto LABEL_39;
      }
    }

    else
    {
    }

    ++v2;
  }

  OUTLINED_FUNCTION_188_0();
  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_187_0();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_10_3();
      v87(v86);
      v88 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v88, v89))
      {
        OUTLINED_FUNCTION_172_0();
        v90 = OUTLINED_FUNCTION_143_0();
        OUTLINED_FUNCTION_141_0(v90);
        OUTLINED_FUNCTION_175_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v91, v92);
        OUTLINED_FUNCTION_126_0();

        *&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0.count = v1;
        OUTLINED_FUNCTION_108_0(&dword_2688BB000, v93, v94, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_138_0();
      }

      v95 = OUTLINED_FUNCTION_38_0();
      v96(v95);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v97 = swift_allocObject();
      OUTLINED_FUNCTION_237_0(v97);
      OUTLINED_FUNCTION_52_0();
    }

    else
    {

      v139 = OUTLINED_FUNCTION_23_1();
      v140(v139);
      v141 = sub_268B37A34();
      v142 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_139_0(v142))
      {
        v143 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v143);
        OUTLINED_FUNCTION_76_0();
        _os_log_impl(v144, v145, v146, v147, v148, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v149 = OUTLINED_FUNCTION_37_0();
      v150(v149);
      OUTLINED_FUNCTION_72_0();
      sub_2689F6B80();
    }
  }

  else
  {
    v112 = OUTLINED_FUNCTION_27_0();
    v113(v112);
    v114 = sub_268B37A34();
    v115 = sub_268B37F04();
    OUTLINED_FUNCTION_19(v115);
    OUTLINED_FUNCTION_186_0();
    if (v116)
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = OUTLINED_FUNCTION_39_0();
    v124(v123);
    v125 = sub_268B18120();
    if (v125)
    {
      OUTLINED_FUNCTION_99_0(v125);
      v126 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
      OUTLINED_FUNCTION_135_0();
      sub_26890CAA0(v128, v129, v130);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v131, v132);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v133 = OUTLINED_FUNCTION_70_0();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v163);
      v136 = OUTLINED_FUNCTION_8_3();
      v137(v136);
    }

    else
    {
      v151 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_140_0(v151, v152, v153);
      OUTLINED_FUNCTION_22_1();
      if (!v154)
      {
        sub_2688C058C(v162, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v155 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v155);
    OUTLINED_FUNCTION_53_0();

    v156 = OUTLINED_FUNCTION_64_0();
    v157(v156);
  }

LABEL_47:
  OUTLINED_FUNCTION_23();
}

void sub_268909C48()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_63(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0(v10);
  v11 = sub_268B371E4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_2(v21, v152);
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_1(v23, v24, v25, v26, v27, v28, v29, v30, v153);
  v32 = MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3(v32, v33, v34, v35, v36, v37, v38, v39, v154);
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11_2(v41, v42, v43, v44, v45, v46, v47, v48, v155);
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_1(v50, v51, v52, v53, v54, v55, v56, v57, v156);
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_57_0();
  _Block_copy(v59);
  OUTLINED_FUNCTION_168_0();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_199_0(v60);
  OUTLINED_FUNCTION_0_3();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_248_0(v61);
  OUTLINED_FUNCTION_247_0();
  v62 = qword_2802A4F30;
  OUTLINED_FUNCTION_257_0();
  if (v62 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v63 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_14_2(v63);
  v65(v64);
  v66 = v1;
  v67 = sub_268B37A34();
  v68 = sub_268B37F04();

  if (OUTLINED_FUNCTION_246_0())
  {
    OUTLINED_FUNCTION_172_0();
    v69 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v69);
    OUTLINED_FUNCTION_255_0(4.8149e-34);
    v70 = sub_268B385B4();
    OUTLINED_FUNCTION_235_0(v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_112_0(&dword_2688BB000, v72, v73, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  v74 = OUTLINED_FUNCTION_91_0();
  (v1)(v74);
  sub_268B18100();
  v75 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_66();
  sub_268B18140();
  if (OUTLINED_FUNCTION_158_0() == 1 && sub_2688EFD0C(v68))
  {
    OUTLINED_FUNCTION_110();
    if (v75)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v76 = *(v68 + 32);
    }

    v67 = v76;
    sub_26892D418(v76);
    if (v77)
    {
      OUTLINED_FUNCTION_159();
      v78 = OUTLINED_FUNCTION_43_0();
      v79(v78);

      v80 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_233_0();
      if (OUTLINED_FUNCTION_236_0())
      {
        OUTLINED_FUNCTION_172_0();
        v81 = OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_181_0(v81);
        OUTLINED_FUNCTION_114_0(4.8149e-34);
        OUTLINED_FUNCTION_161_0();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_102_0(&dword_2688BB000, v82, v83, "Intent already has device with destinationDeviceId: %s, returning it");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_84_0();

        v84 = OUTLINED_FUNCTION_46_0();
        v85(v84);
      }

      else
      {

        v134 = OUTLINED_FUNCTION_71_0();
        (v1)(v134);
      }

      OUTLINED_FUNCTION_252_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_113_0(v75, xmmword_268B3BBA0);
      v135 = v67;
      OUTLINED_FUNCTION_61_0();
      sub_2689D54E8();

LABEL_37:

      goto LABEL_46;
    }
  }

  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_44_0();
  while (v67 != v15)
  {
    if (v18)
    {
      v90 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D625BD0](v90);
    }

    else
    {
      OUTLINED_FUNCTION_192_0();
      if (v86)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_244_0();
    }

    OUTLINED_FUNCTION_197_0();
    if (v87)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v88 = OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_182_0();
    sub_2688C063C();
    v89 = OUTLINED_FUNCTION_201_0();
    v75 = v89;
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_0_1();
      v0 = sub_268B38074();

      if (v0)
      {

        v101 = OUTLINED_FUNCTION_29_0();
        v102(v101);

        v103 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_234_0();
        if (OUTLINED_FUNCTION_214_0())
        {
          OUTLINED_FUNCTION_172_0();
          v105 = OUTLINED_FUNCTION_120_0();
          OUTLINED_FUNCTION_99_0(v105);
          OUTLINED_FUNCTION_134_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_220_0(v106, v107);
          OUTLINED_FUNCTION_241();
          *(v1 + 4) = v67;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
          OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_6();
        }

        v113 = OUTLINED_FUNCTION_45_0();
        v114(v113);
        OUTLINED_FUNCTION_242_0();
        OUTLINED_FUNCTION_92_0();
        sub_2689D54E8();

        goto LABEL_37;
      }
    }

    else
    {
    }

    ++v15;
  }

  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_191_0();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_16_2();
      v93(v92);
      v94 = sub_268B37A34();
      v95 = sub_268B37F04();
      if (OUTLINED_FUNCTION_160_0(v95))
      {
        OUTLINED_FUNCTION_172_0();
        v96 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_99_0(v96);
        OUTLINED_FUNCTION_134_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v97, v98);
        OUTLINED_FUNCTION_126_0();

        *(v1 + 4) = v68;
        OUTLINED_FUNCTION_106(&dword_2688BB000, v99, v100, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_6();
      }

      v148 = OUTLINED_FUNCTION_88_0();
      v149(v148);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v150 = swift_allocObject();
      *(v150 + 16) = sub_26890C8C8;
      *(v150 + 24) = v61;

      OUTLINED_FUNCTION_67();
    }

    else
    {

      v136 = OUTLINED_FUNCTION_24_1();
      v137(v136);
      v138 = sub_268B37A34();
      v139 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v139))
      {
        v140 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_136_0(v140);
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v141, v142, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.");
        OUTLINED_FUNCTION_84_0();
      }

      v143 = OUTLINED_FUNCTION_87_0();
      (v1)(v143);
      v144 = OUTLINED_FUNCTION_133_0();
      _Block_copy(v144);
      OUTLINED_FUNCTION_94_0();
      sub_2689D54E8();
    }
  }

  else
  {
    v115 = OUTLINED_FUNCTION_28_0();
    v116(v115);
    v117 = sub_268B37A34();
    v118 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v118))
    {
      v119 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v119);
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v120, v121, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route");
      OUTLINED_FUNCTION_84_0();
    }

    v122 = OUTLINED_FUNCTION_65();
    v123(v122);
    v124 = sub_268B18120();
    if (v124)
    {
      OUTLINED_FUNCTION_200_0(v124);
      v125 = OUTLINED_FUNCTION_123();
      __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
      OUTLINED_FUNCTION_176_0();
      sub_26890CAA0(v127, v128, v129);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v130, v131);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v132 = OUTLINED_FUNCTION_6_3();
      v133(v132);
    }

    else
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_22_1();
      if (!v145)
      {
        sub_2688C058C(v75, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v75 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v75);
    OUTLINED_FUNCTION_68_0();

    v146 = OUTLINED_FUNCTION_64_0();
    v147(v146);
  }

LABEL_46:
  v151 = OUTLINED_FUNCTION_133_0();
  _Block_release(v151);
  _Block_release(v75);
  _Block_release(v75);
  OUTLINED_FUNCTION_23();
}

void sub_26890A508()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_40_0(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0(v11);
  v12 = sub_268B371E4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v22, v158);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0(v24, v25, v26, v27, v28, v29, v30, v31, v159);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3(v33, v34, v35, v36, v37, v38, v39, v40, v160);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58_0();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_0(v43, v44, v45, v46, v47, v48, v49, v50, v161);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_93_0(v52);
  v53 = qword_2802A4F30;

  if (v53 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v163 = v12;
  v54 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v55 = OUTLINED_FUNCTION_15_1(v54);
  v56(v55);
  v57 = v0;
  v0 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_240_0();
  v12 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  OUTLINED_FUNCTION_86_0();
  if (v58)
  {
    OUTLINED_FUNCTION_172_0();
    v59 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v59);
    OUTLINED_FUNCTION_254_0(4.8149e-34);
    v60 = sub_268B385B4();
    OUTLINED_FUNCTION_164_0(v60, v61);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_107_0(&dword_2688BB000, v62, v63, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();

    v64 = OUTLINED_FUNCTION_41_0();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_69_0();
  }

  (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v64);
  sub_268B18100();
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90_0();
  v66 = sub_268B18140();
  if (OUTLINED_FUNCTION_111_0(v66) == 1 && sub_2688EFD0C(v0))
  {
    OUTLINED_FUNCTION_104_0();
    if (v65)
    {
      OUTLINED_FUNCTION_260_0();
    }

    else
    {
      v67 = v0[4];
    }

    v2 = v67;
    sub_26892D418(v67);
    if (v68)
    {
      OUTLINED_FUNCTION_162_0();
      v69 = OUTLINED_FUNCTION_31_0();
      v70(v69);

      v71 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_250_0();
      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v72 = OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_144_0(v72);
        OUTLINED_FUNCTION_103_0(4.8149e-34);
        OUTLINED_FUNCTION_163_0();
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_27();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_83_0();

        v78 = OUTLINED_FUNCTION_85_0();
      }

      else
      {

        v78 = OUTLINED_FUNCTION_195_0();
      }

      (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v78, v57);
      OUTLINED_FUNCTION_155_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v138 = swift_allocObject();
      OUTLINED_FUNCTION_249_0(v138, xmmword_268B3BBA0);
      OUTLINED_FUNCTION_42_0();
      sub_2689D5BA8();

LABEL_39:

      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_47();
  while (v19 != v2)
  {
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_253_0();
    }

    else
    {
      OUTLINED_FUNCTION_194_0();
      if (v79)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_239_0();
    }

    OUTLINED_FUNCTION_196_0();
    if (v80)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v81 = OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_142_0();
    sub_2688C063C();
    v82 = OUTLINED_FUNCTION_201_0();
    v83 = v82;
    if (v65)
    {
      OUTLINED_FUNCTION_178_0();
      v84 = sub_268B38074();

      if (v84)
      {

        v98 = OUTLINED_FUNCTION_26_0();
        v99(v98);

        v100 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_251_0();
        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v102 = OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_141_0(v102);
          OUTLINED_FUNCTION_165_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_256_0();
          OUTLINED_FUNCTION_184_0(v103, v104);
          OUTLINED_FUNCTION_126_0();

          *(v19 + 4) = v1;
          OUTLINED_FUNCTION_27();
          _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();
        }

        v110 = OUTLINED_FUNCTION_36_0();
        v111(v110);
        OUTLINED_FUNCTION_25_1();
        sub_2689D5BA8();

        goto LABEL_39;
      }
    }

    else
    {
    }

    ++v2;
  }

  OUTLINED_FUNCTION_188_0();
  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_187_0();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_10_3();
      v87(v86);
      v88 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v88, v89))
      {
        OUTLINED_FUNCTION_172_0();
        v90 = OUTLINED_FUNCTION_143_0();
        OUTLINED_FUNCTION_141_0(v90);
        OUTLINED_FUNCTION_175_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v91, v92);
        OUTLINED_FUNCTION_126_0();

        *&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0.count = v1;
        OUTLINED_FUNCTION_108_0(&dword_2688BB000, v93, v94, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_138_0();
      }

      v95 = OUTLINED_FUNCTION_38_0();
      v96(v95);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v97 = swift_allocObject();
      OUTLINED_FUNCTION_237_0(v97);
      OUTLINED_FUNCTION_52_0();
    }

    else
    {

      v139 = OUTLINED_FUNCTION_23_1();
      v140(v139);
      v141 = sub_268B37A34();
      v142 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_139_0(v142))
      {
        v143 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v143);
        OUTLINED_FUNCTION_76_0();
        _os_log_impl(v144, v145, v146, v147, v148, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v149 = OUTLINED_FUNCTION_37_0();
      v150(v149);
      OUTLINED_FUNCTION_72_0();
      sub_2689D5BA8();
    }
  }

  else
  {
    v112 = OUTLINED_FUNCTION_27_0();
    v113(v112);
    v114 = sub_268B37A34();
    v115 = sub_268B37F04();
    OUTLINED_FUNCTION_19(v115);
    OUTLINED_FUNCTION_186_0();
    if (v116)
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = OUTLINED_FUNCTION_39_0();
    v124(v123);
    v125 = sub_268B18120();
    if (v125)
    {
      OUTLINED_FUNCTION_99_0(v125);
      v126 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
      OUTLINED_FUNCTION_135_0();
      sub_26890CAA0(v128, v129, v130);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v131, v132);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v133 = OUTLINED_FUNCTION_70_0();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v163);
      v136 = OUTLINED_FUNCTION_8_3();
      v137(v136);
    }

    else
    {
      v151 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_140_0(v151, v152, v153);
      OUTLINED_FUNCTION_22_1();
      if (!v154)
      {
        sub_2688C058C(v162, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v155 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v155);
    OUTLINED_FUNCTION_53_0();

    v156 = OUTLINED_FUNCTION_64_0();
    v157(v156);
  }

LABEL_47:
  OUTLINED_FUNCTION_23();
}

void sub_26890AD9C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_63(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0(v10);
  v11 = sub_268B371E4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_2(v21, v152);
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_1(v23, v24, v25, v26, v27, v28, v29, v30, v153);
  v32 = MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3(v32, v33, v34, v35, v36, v37, v38, v39, v154);
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11_2(v41, v42, v43, v44, v45, v46, v47, v48, v155);
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_1(v50, v51, v52, v53, v54, v55, v56, v57, v156);
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_57_0();
  _Block_copy(v59);
  OUTLINED_FUNCTION_168_0();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_199_0(v60);
  OUTLINED_FUNCTION_0_3();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_248_0(v61);
  OUTLINED_FUNCTION_247_0();
  v62 = qword_2802A4F30;
  OUTLINED_FUNCTION_257_0();
  if (v62 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v63 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_14_2(v63);
  v65(v64);
  v66 = v1;
  v67 = sub_268B37A34();
  v68 = sub_268B37F04();

  if (OUTLINED_FUNCTION_246_0())
  {
    OUTLINED_FUNCTION_172_0();
    v69 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v69);
    OUTLINED_FUNCTION_255_0(4.8149e-34);
    v70 = sub_268B385B4();
    OUTLINED_FUNCTION_235_0(v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_112_0(&dword_2688BB000, v72, v73, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  v74 = OUTLINED_FUNCTION_91_0();
  (v1)(v74);
  sub_268B18100();
  v75 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_66();
  sub_268B18140();
  if (OUTLINED_FUNCTION_158_0() == 1 && sub_2688EFD0C(v68))
  {
    OUTLINED_FUNCTION_110();
    if (v75)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v76 = *(v68 + 32);
    }

    v67 = v76;
    sub_26892D418(v76);
    if (v77)
    {
      OUTLINED_FUNCTION_159();
      v78 = OUTLINED_FUNCTION_43_0();
      v79(v78);

      v80 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_233_0();
      if (OUTLINED_FUNCTION_236_0())
      {
        OUTLINED_FUNCTION_172_0();
        v81 = OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_181_0(v81);
        OUTLINED_FUNCTION_114_0(4.8149e-34);
        OUTLINED_FUNCTION_161_0();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_102_0(&dword_2688BB000, v82, v83, "Intent already has device with destinationDeviceId: %s, returning it");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_84_0();

        v84 = OUTLINED_FUNCTION_46_0();
        v85(v84);
      }

      else
      {

        v134 = OUTLINED_FUNCTION_71_0();
        (v1)(v134);
      }

      OUTLINED_FUNCTION_252_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_113_0(v75, xmmword_268B3BBA0);
      v135 = v67;
      OUTLINED_FUNCTION_61_0();
      sub_268AF0A9C();

LABEL_37:

      goto LABEL_46;
    }
  }

  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_44_0();
  while (v67 != v15)
  {
    if (v18)
    {
      v90 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D625BD0](v90);
    }

    else
    {
      OUTLINED_FUNCTION_192_0();
      if (v86)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_244_0();
    }

    OUTLINED_FUNCTION_197_0();
    if (v87)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v88 = OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_182_0();
    sub_2688C063C();
    v89 = OUTLINED_FUNCTION_201_0();
    v75 = v89;
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_0_1();
      v0 = sub_268B38074();

      if (v0)
      {

        v101 = OUTLINED_FUNCTION_29_0();
        v102(v101);

        v103 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_234_0();
        if (OUTLINED_FUNCTION_214_0())
        {
          OUTLINED_FUNCTION_172_0();
          v105 = OUTLINED_FUNCTION_120_0();
          OUTLINED_FUNCTION_99_0(v105);
          OUTLINED_FUNCTION_134_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_220_0(v106, v107);
          OUTLINED_FUNCTION_241();
          *(v1 + 4) = v67;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
          OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_6();
        }

        v113 = OUTLINED_FUNCTION_45_0();
        v114(v113);
        OUTLINED_FUNCTION_242_0();
        OUTLINED_FUNCTION_92_0();
        sub_268AF0A9C();

        goto LABEL_37;
      }
    }

    else
    {
    }

    ++v15;
  }

  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_191_0();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_16_2();
      v93(v92);
      v94 = sub_268B37A34();
      v95 = sub_268B37F04();
      if (OUTLINED_FUNCTION_160_0(v95))
      {
        OUTLINED_FUNCTION_172_0();
        v96 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_99_0(v96);
        OUTLINED_FUNCTION_134_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v97, v98);
        OUTLINED_FUNCTION_126_0();

        *(v1 + 4) = v68;
        OUTLINED_FUNCTION_106(&dword_2688BB000, v99, v100, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_6();
      }

      v148 = OUTLINED_FUNCTION_88_0();
      v149(v148);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v150 = swift_allocObject();
      *(v150 + 16) = sub_26890C8A8;
      *(v150 + 24) = v61;

      OUTLINED_FUNCTION_67();
    }

    else
    {

      v136 = OUTLINED_FUNCTION_24_1();
      v137(v136);
      v138 = sub_268B37A34();
      v139 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v139))
      {
        v140 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_136_0(v140);
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v141, v142, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.");
        OUTLINED_FUNCTION_84_0();
      }

      v143 = OUTLINED_FUNCTION_87_0();
      (v1)(v143);
      v144 = OUTLINED_FUNCTION_133_0();
      _Block_copy(v144);
      OUTLINED_FUNCTION_94_0();
      sub_268AF0A9C();
    }
  }

  else
  {
    v115 = OUTLINED_FUNCTION_28_0();
    v116(v115);
    v117 = sub_268B37A34();
    v118 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v118))
    {
      v119 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v119);
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v120, v121, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route");
      OUTLINED_FUNCTION_84_0();
    }

    v122 = OUTLINED_FUNCTION_65();
    v123(v122);
    v124 = sub_268B18120();
    if (v124)
    {
      OUTLINED_FUNCTION_200_0(v124);
      v125 = OUTLINED_FUNCTION_123();
      __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
      OUTLINED_FUNCTION_176_0();
      sub_26890CAA0(v127, v128, v129);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v130, v131);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v132 = OUTLINED_FUNCTION_6_3();
      v133(v132);
    }

    else
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_22_1();
      if (!v145)
      {
        sub_2688C058C(v75, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v75 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v75);
    OUTLINED_FUNCTION_68_0();

    v146 = OUTLINED_FUNCTION_64_0();
    v147(v146);
  }

LABEL_46:
  v151 = OUTLINED_FUNCTION_133_0();
  _Block_release(v151);
  _Block_release(v75);
  _Block_release(v75);
  OUTLINED_FUNCTION_23();
}

void sub_26890B65C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_40_0(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0(v11);
  v12 = sub_268B371E4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v22, v158);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0(v24, v25, v26, v27, v28, v29, v30, v31, v159);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3(v33, v34, v35, v36, v37, v38, v39, v40, v160);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58_0();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_0(v43, v44, v45, v46, v47, v48, v49, v50, v161);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_93_0(v52);
  v53 = qword_2802A4F30;

  if (v53 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v163 = v12;
  v54 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v55 = OUTLINED_FUNCTION_15_1(v54);
  v56(v55);
  v57 = v0;
  v0 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_240_0();
  v12 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  OUTLINED_FUNCTION_86_0();
  if (v58)
  {
    OUTLINED_FUNCTION_172_0();
    v59 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v59);
    OUTLINED_FUNCTION_254_0(4.8149e-34);
    v60 = sub_268B385B4();
    OUTLINED_FUNCTION_164_0(v60, v61);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_107_0(&dword_2688BB000, v62, v63, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();

    v64 = OUTLINED_FUNCTION_41_0();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_69_0();
  }

  (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v64);
  sub_268B18100();
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90_0();
  v66 = sub_268B18140();
  if (OUTLINED_FUNCTION_111_0(v66) == 1 && sub_2688EFD0C(v0))
  {
    OUTLINED_FUNCTION_104_0();
    if (v65)
    {
      OUTLINED_FUNCTION_260_0();
    }

    else
    {
      v67 = v0[4];
    }

    v2 = v67;
    sub_26892D418(v67);
    if (v68)
    {
      OUTLINED_FUNCTION_162_0();
      v69 = OUTLINED_FUNCTION_31_0();
      v70(v69);

      v71 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_250_0();
      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v72 = OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_144_0(v72);
        OUTLINED_FUNCTION_103_0(4.8149e-34);
        OUTLINED_FUNCTION_163_0();
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_27();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_83_0();

        v78 = OUTLINED_FUNCTION_85_0();
      }

      else
      {

        v78 = OUTLINED_FUNCTION_195_0();
      }

      (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v78, v57);
      OUTLINED_FUNCTION_155_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v138 = swift_allocObject();
      OUTLINED_FUNCTION_249_0(v138, xmmword_268B3BBA0);
      OUTLINED_FUNCTION_42_0();
      sub_268AF11A4();

LABEL_39:

      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_47();
  while (v19 != v2)
  {
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_253_0();
    }

    else
    {
      OUTLINED_FUNCTION_194_0();
      if (v79)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_239_0();
    }

    OUTLINED_FUNCTION_196_0();
    if (v80)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v81 = OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_142_0();
    sub_2688C063C();
    v82 = OUTLINED_FUNCTION_201_0();
    v83 = v82;
    if (v65)
    {
      OUTLINED_FUNCTION_178_0();
      v84 = sub_268B38074();

      if (v84)
      {

        v98 = OUTLINED_FUNCTION_26_0();
        v99(v98);

        v100 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_251_0();
        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v102 = OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_141_0(v102);
          OUTLINED_FUNCTION_165_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_256_0();
          OUTLINED_FUNCTION_184_0(v103, v104);
          OUTLINED_FUNCTION_126_0();

          *(v19 + 4) = v1;
          OUTLINED_FUNCTION_27();
          _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();
        }

        v110 = OUTLINED_FUNCTION_36_0();
        v111(v110);
        OUTLINED_FUNCTION_25_1();
        sub_268AF11A4();

        goto LABEL_39;
      }
    }

    else
    {
    }

    ++v2;
  }

  OUTLINED_FUNCTION_188_0();
  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_187_0();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_10_3();
      v87(v86);
      v88 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v88, v89))
      {
        OUTLINED_FUNCTION_172_0();
        v90 = OUTLINED_FUNCTION_143_0();
        OUTLINED_FUNCTION_141_0(v90);
        OUTLINED_FUNCTION_175_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v91, v92);
        OUTLINED_FUNCTION_126_0();

        *&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0.count = v1;
        OUTLINED_FUNCTION_108_0(&dword_2688BB000, v93, v94, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_138_0();
      }

      v95 = OUTLINED_FUNCTION_38_0();
      v96(v95);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v97 = swift_allocObject();
      OUTLINED_FUNCTION_237_0(v97);
      OUTLINED_FUNCTION_52_0();
    }

    else
    {

      v139 = OUTLINED_FUNCTION_23_1();
      v140(v139);
      v141 = sub_268B37A34();
      v142 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_139_0(v142))
      {
        v143 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v143);
        OUTLINED_FUNCTION_76_0();
        _os_log_impl(v144, v145, v146, v147, v148, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v149 = OUTLINED_FUNCTION_37_0();
      v150(v149);
      OUTLINED_FUNCTION_72_0();
      sub_268AF11A4();
    }
  }

  else
  {
    v112 = OUTLINED_FUNCTION_27_0();
    v113(v112);
    v114 = sub_268B37A34();
    v115 = sub_268B37F04();
    OUTLINED_FUNCTION_19(v115);
    OUTLINED_FUNCTION_186_0();
    if (v116)
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = OUTLINED_FUNCTION_39_0();
    v124(v123);
    v125 = sub_268B18120();
    if (v125)
    {
      OUTLINED_FUNCTION_99_0(v125);
      v126 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
      OUTLINED_FUNCTION_135_0();
      sub_26890CAA0(v128, v129, v130);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v131, v132);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v133 = OUTLINED_FUNCTION_70_0();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v163);
      v136 = OUTLINED_FUNCTION_8_3();
      v137(v136);
    }

    else
    {
      v151 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_140_0(v151, v152, v153);
      OUTLINED_FUNCTION_22_1();
      if (!v154)
      {
        sub_2688C058C(v162, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v155 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v155);
    OUTLINED_FUNCTION_53_0();

    v156 = OUTLINED_FUNCTION_64_0();
    v157(v156);
  }

LABEL_47:
  OUTLINED_FUNCTION_23();
}

void sub_26890BEF0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_63(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0(v10);
  v11 = sub_268B371E4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_2(v21, v152);
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_1(v23, v24, v25, v26, v27, v28, v29, v30, v153);
  v32 = MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3(v32, v33, v34, v35, v36, v37, v38, v39, v154);
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11_2(v41, v42, v43, v44, v45, v46, v47, v48, v155);
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_1(v50, v51, v52, v53, v54, v55, v56, v57, v156);
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_57_0();
  _Block_copy(v59);
  OUTLINED_FUNCTION_168_0();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_199_0(v60);
  OUTLINED_FUNCTION_0_3();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_248_0(v61);
  OUTLINED_FUNCTION_247_0();
  v62 = qword_2802A4F30;
  OUTLINED_FUNCTION_257_0();
  if (v62 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v63 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_14_2(v63);
  v65(v64);
  v66 = v1;
  v67 = sub_268B37A34();
  v68 = sub_268B37F04();

  if (OUTLINED_FUNCTION_246_0())
  {
    OUTLINED_FUNCTION_172_0();
    v69 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v69);
    OUTLINED_FUNCTION_255_0(4.8149e-34);
    v70 = sub_268B385B4();
    OUTLINED_FUNCTION_235_0(v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_112_0(&dword_2688BB000, v72, v73, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  v74 = OUTLINED_FUNCTION_91_0();
  (v1)(v74);
  sub_268B18100();
  v75 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_66();
  sub_268B18140();
  if (OUTLINED_FUNCTION_158_0() == 1 && sub_2688EFD0C(v68))
  {
    OUTLINED_FUNCTION_110();
    if (v75)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v76 = *(v68 + 32);
    }

    v67 = v76;
    sub_26892D418(v76);
    if (v77)
    {
      OUTLINED_FUNCTION_159();
      v78 = OUTLINED_FUNCTION_43_0();
      v79(v78);

      v80 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_233_0();
      if (OUTLINED_FUNCTION_236_0())
      {
        OUTLINED_FUNCTION_172_0();
        v81 = OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_181_0(v81);
        OUTLINED_FUNCTION_114_0(4.8149e-34);
        OUTLINED_FUNCTION_161_0();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_102_0(&dword_2688BB000, v82, v83, "Intent already has device with destinationDeviceId: %s, returning it");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_84_0();

        v84 = OUTLINED_FUNCTION_46_0();
        v85(v84);
      }

      else
      {

        v134 = OUTLINED_FUNCTION_71_0();
        (v1)(v134);
      }

      OUTLINED_FUNCTION_252_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_113_0(v75, xmmword_268B3BBA0);
      v135 = v67;
      OUTLINED_FUNCTION_61_0();
      sub_268B14274();

LABEL_37:

      goto LABEL_46;
    }
  }

  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_44_0();
  while (v67 != v15)
  {
    if (v18)
    {
      v90 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D625BD0](v90);
    }

    else
    {
      OUTLINED_FUNCTION_192_0();
      if (v86)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_244_0();
    }

    OUTLINED_FUNCTION_197_0();
    if (v87)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v88 = OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_182_0();
    sub_2688C063C();
    v89 = OUTLINED_FUNCTION_201_0();
    v75 = v89;
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_0_1();
      v0 = sub_268B38074();

      if (v0)
      {

        v101 = OUTLINED_FUNCTION_29_0();
        v102(v101);

        v103 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_234_0();
        if (OUTLINED_FUNCTION_214_0())
        {
          OUTLINED_FUNCTION_172_0();
          v105 = OUTLINED_FUNCTION_120_0();
          OUTLINED_FUNCTION_99_0(v105);
          OUTLINED_FUNCTION_134_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_220_0(v106, v107);
          OUTLINED_FUNCTION_241();
          *(v1 + 4) = v67;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
          OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_6();
        }

        v113 = OUTLINED_FUNCTION_45_0();
        v114(v113);
        OUTLINED_FUNCTION_242_0();
        OUTLINED_FUNCTION_92_0();
        sub_268B14274();

        goto LABEL_37;
      }
    }

    else
    {
    }

    ++v15;
  }

  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_191_0();
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_16_2();
      v93(v92);
      v94 = sub_268B37A34();
      v95 = sub_268B37F04();
      if (OUTLINED_FUNCTION_160_0(v95))
      {
        OUTLINED_FUNCTION_172_0();
        v96 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_99_0(v96);
        OUTLINED_FUNCTION_134_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v97, v98);
        OUTLINED_FUNCTION_126_0();

        *(v1 + 4) = v68;
        OUTLINED_FUNCTION_106(&dword_2688BB000, v99, v100, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_6();
      }

      v148 = OUTLINED_FUNCTION_88_0();
      v149(v148);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v150 = swift_allocObject();
      *(v150 + 16) = sub_26890C7EC;
      *(v150 + 24) = v61;

      OUTLINED_FUNCTION_67();
    }

    else
    {

      v136 = OUTLINED_FUNCTION_24_1();
      v137(v136);
      v138 = sub_268B37A34();
      v139 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v139))
      {
        v140 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_136_0(v140);
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v141, v142, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.");
        OUTLINED_FUNCTION_84_0();
      }

      v143 = OUTLINED_FUNCTION_87_0();
      (v1)(v143);
      v144 = OUTLINED_FUNCTION_133_0();
      _Block_copy(v144);
      OUTLINED_FUNCTION_94_0();
      sub_268B14274();
    }
  }

  else
  {
    v115 = OUTLINED_FUNCTION_28_0();
    v116(v115);
    v117 = sub_268B37A34();
    v118 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v118))
    {
      v119 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v119);
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v120, v121, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route");
      OUTLINED_FUNCTION_84_0();
    }

    v122 = OUTLINED_FUNCTION_65();
    v123(v122);
    v124 = sub_268B18120();
    if (v124)
    {
      OUTLINED_FUNCTION_200_0(v124);
      v125 = OUTLINED_FUNCTION_123();
      __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
      OUTLINED_FUNCTION_176_0();
      sub_26890CAA0(v127, v128, v129);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v130, v131);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v132 = OUTLINED_FUNCTION_6_3();
      v133(v132);
    }

    else
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_22_1();
      if (!v145)
      {
        sub_2688C058C(v75, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v75 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v75);
    OUTLINED_FUNCTION_68_0();

    v146 = OUTLINED_FUNCTION_64_0();
    v147(v146);
  }

LABEL_46:
  v151 = OUTLINED_FUNCTION_133_0();
  _Block_release(v151);
  _Block_release(v75);
  _Block_release(v75);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26890C7B0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_26890C7EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268B14970();
}

uint64_t sub_26890C7F4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_26890C834()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2688F48A0();
}

uint64_t sub_26890C840(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26890C84C()
{
  result = qword_2802A5B70;
  if (!qword_2802A5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5B70);
  }

  return result;
}

void sub_26890C8A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268AF11A4();
}

void sub_26890C8B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2689F6B80();
}

void sub_26890C8C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2689D5BA8();
}

void sub_26890C8D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26898E2C4();
}

void sub_26890C8E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268967D34();
}

void sub_26890C8F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268956984();
}

uint64_t sub_26890C900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26890C964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_123();
  v9(v8);
  return a2;
}

uint64_t sub_26890C9C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_26890CA00()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_2688FE558();
}

uint64_t sub_26890CA30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_26890CA88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  sub_2688FCF9C();
}

uint64_t sub_26890CAA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26890CAFC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroy_112Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26890CBCC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26890CC30()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_26890CC9C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_40_0(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0(v11);
  v12 = sub_268B371E4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v22, v158);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0(v24, v25, v26, v27, v28, v29, v30, v31, v159);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3(v33, v34, v35, v36, v37, v38, v39, v40, v160);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58_0();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_0(v43, v44, v45, v46, v47, v48, v49, v50, v161);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_93_0(v52);
  v53 = qword_2802A4F30;

  if (v53 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v163 = v12;
  v54 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v55 = OUTLINED_FUNCTION_15_1(v54);
  v56(v55);
  v57 = v0;
  v0 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_240_0();
  v12 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  OUTLINED_FUNCTION_86_0();
  if (v58)
  {
    OUTLINED_FUNCTION_172_0();
    v59 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v59);
    OUTLINED_FUNCTION_254_0(4.8149e-34);
    v60 = sub_268B385B4();
    OUTLINED_FUNCTION_164_0(v60, v61);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_107_0(&dword_2688BB000, v62, v63, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();

    v64 = OUTLINED_FUNCTION_41_0();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_69_0();
  }

  (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v64);
  sub_268B18100();
  v65 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90_0();
  v66 = sub_268B18140();
  if (OUTLINED_FUNCTION_111_0(v66) == 1 && sub_2688EFD0C(v0))
  {
    OUTLINED_FUNCTION_104_0();
    if (v65)
    {
      OUTLINED_FUNCTION_260_0();
    }

    else
    {
      v67 = v0[4];
    }

    v2 = v67;
    sub_26892D418(v67);
    if (v68)
    {
      OUTLINED_FUNCTION_162_0();
      v69 = OUTLINED_FUNCTION_31_0();
      v70(v69);

      v71 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_250_0();
      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v72 = OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_144_0(v72);
        OUTLINED_FUNCTION_103_0(4.8149e-34);
        OUTLINED_FUNCTION_163_0();
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_27();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_83_0();

        v78 = OUTLINED_FUNCTION_85_0();
      }

      else
      {

        v78 = OUTLINED_FUNCTION_195_0();
      }

      (OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)(v78, v57);
      OUTLINED_FUNCTION_155_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v138 = swift_allocObject();
      OUTLINED_FUNCTION_249_0(v138, xmmword_268B3BBA0);
      OUTLINED_FUNCTION_42_0();
      sub_268B14970();

LABEL_39:

      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_47();
  while (v19 != v2)
  {
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_253_0();
    }

    else
    {
      OUTLINED_FUNCTION_194_0();
      if (v79)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_239_0();
    }

    OUTLINED_FUNCTION_196_0();
    if (v80)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v81 = OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_142_0();
    sub_2688C063C();
    v82 = OUTLINED_FUNCTION_201_0();
    v83 = v82;
    if (v65)
    {
      OUTLINED_FUNCTION_178_0();
      v84 = sub_268B38074();

      if (v84)
      {

        v98 = OUTLINED_FUNCTION_26_0();
        v99(v98);

        v100 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_251_0();
        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v102 = OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_141_0(v102);
          OUTLINED_FUNCTION_165_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_256_0();
          OUTLINED_FUNCTION_184_0(v103, v104);
          OUTLINED_FUNCTION_126_0();

          *(v19 + 4) = v1;
          OUTLINED_FUNCTION_27();
          _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();
        }

        v110 = OUTLINED_FUNCTION_36_0();
        v111(v110);
        OUTLINED_FUNCTION_25_1();
        sub_268B14970();

        goto LABEL_39;
      }
    }

    else
    {
    }

    ++v2;
  }

  OUTLINED_FUNCTION_188_0();
  if (sub_268921060())
  {
    sub_268B18120();
    OUTLINED_FUNCTION_187_0();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_10_3();
      v87(v86);
      v88 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v88, v89))
      {
        OUTLINED_FUNCTION_172_0();
        v90 = OUTLINED_FUNCTION_143_0();
        OUTLINED_FUNCTION_141_0(v90);
        OUTLINED_FUNCTION_175_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v91, v92);
        OUTLINED_FUNCTION_126_0();

        *&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0.count = v1;
        OUTLINED_FUNCTION_108_0(&dword_2688BB000, v93, v94, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_138_0();
      }

      v95 = OUTLINED_FUNCTION_38_0();
      v96(v95);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v97 = swift_allocObject();
      OUTLINED_FUNCTION_237_0(v97);
      OUTLINED_FUNCTION_52_0();
    }

    else
    {

      v139 = OUTLINED_FUNCTION_23_1();
      v140(v139);
      v141 = sub_268B37A34();
      v142 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_139_0(v142))
      {
        v143 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v143);
        OUTLINED_FUNCTION_76_0();
        _os_log_impl(v144, v145, v146, v147, v148, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v149 = OUTLINED_FUNCTION_37_0();
      v150(v149);
      OUTLINED_FUNCTION_72_0();
      sub_268B14970();
    }
  }

  else
  {
    v112 = OUTLINED_FUNCTION_27_0();
    v113(v112);
    v114 = sub_268B37A34();
    v115 = sub_268B37F04();
    OUTLINED_FUNCTION_19(v115);
    OUTLINED_FUNCTION_186_0();
    if (v116)
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = OUTLINED_FUNCTION_39_0();
    v124(v123);
    v125 = sub_268B18120();
    if (v125)
    {
      OUTLINED_FUNCTION_99_0(v125);
      v126 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
      OUTLINED_FUNCTION_135_0();
      sub_26890CAA0(v128, v129, v130);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v131, v132);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v133 = OUTLINED_FUNCTION_70_0();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v163);
      v136 = OUTLINED_FUNCTION_8_3();
      v137(v136);
    }

    else
    {
      v151 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_140_0(v151, v152, v153);
      OUTLINED_FUNCTION_22_1();
      if (!v154)
      {
        sub_2688C058C(v162, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v155 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v155);
    OUTLINED_FUNCTION_53_0();

    v156 = OUTLINED_FUNCTION_64_0();
    v157(v156);
  }

LABEL_47:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26890D538()
{
  v1 = sub_268B37A24();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_26890D5CC()
{
  OUTLINED_FUNCTION_142_0();
  v2 = sub_268B37A24();
  OUTLINED_FUNCTION_19_0(v2);
  v5 = ((*(v3 + 80) + 33) & ~*(v3 + 80)) + *(v4 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + 32);

  return sub_268904A4C(v0);
}

uint64_t sub_26890D670(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 0x1FF;
  return v3(&v6);
}

uint64_t sub_26890D6B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_26890D6F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26890D740()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

void sub_26890D77C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_2689A25C4();
}

uint64_t sub_26890D7A0()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B36C04();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_268B371E4();
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (((*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);

  v14 = *(v0 + 24);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  v15 = *(v0 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_26890D900()
{
  OUTLINED_FUNCTION_142_0();
  v2 = sub_268B36C04();
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_268B371E4();
  OUTLINED_FUNCTION_19_0(v7);
  v9 = v8;
  v11 = v10;
  v12 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  OUTLINED_FUNCTION_226_0();
  return sub_2688F59FC(v0, *(v1 + 16), *(v1 + 24), v1 + v4, v1 + v16, *(v1 + v14), *(v1 + v15), *(v1 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_26890D9FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_26890DA40(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_26890DA80()
{
  v1 = sub_268B36C04();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_26890DB64()
{
  OUTLINED_FUNCTION_142_0();
  v2 = sub_268B36C04();
  OUTLINED_FUNCTION_19_0(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_226_0();
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v14 = *(v1 + v13);
  v16 = *(v1 + v15);

  return sub_2688F8A9C(v0, v10, v11, v12, v1 + v9, v14, v16);
}

uint64_t getEnumTagSinglePayload for UsoMediaSettingName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceSelectingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26890DD5CLL);
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

unint64_t sub_26890DDAC()
{
  result = qword_2802A5BF0;
  if (!qword_2802A5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5BF0);
  }

  return result;
}

void OUTLINED_FUNCTION_3_3()
{
  v1 = *(v0 - 384);
  v2 = *(v0 - 368);
  v3 = *(v0 - 376);
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, *(v2 - 240));
  v3 = *(*(v2 - 248) + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  result = *(v0 - 264);
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 104);
  v5 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{
  v5 = *(v2 + 16);
  result = v1;
  *(v3 - 152) = a1;
  *(v3 - 144) = v5;
  *(v3 - 136) = v2 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{
  v5 = *(v2 + 16);
  result = v1;
  *(v3 - 144) = a1;
  *(v3 - 136) = v5;
  *(v3 - 128) = v2 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  result = *(v0 - 264);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v4 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_1()
{
  result = *(v0 - 272);
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 104);
  v5 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  result = *(v0 - 272);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v4 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  v2 = *(v1 - 160);
  v3 = *(v1 - 112);
  result = v0;
  v5 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  result = *(v0 - 208);
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 104);
  v5 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  result = *(v0 - 240);
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 104);
  v5 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_0()
{
  result = *(v0 - 232);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v4 = *(v0 - 176);
  v5 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_0()
{
  result = *(v0 - 216);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v4 = *(v0 - 176);
  v5 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  result = *(v0 - 168);
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_0()
{
  v2 = *(v1 - 152) + 8;
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_0()
{
  v2 = *(v1 - 152) + 8;
  result = v0;
  v4 = *(v1 - 104);
  v5 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0()
{
  v2 = *(v1 - 152) + 8;
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_0()
{
  v2 = *(v1 - 152) + 8;
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

void OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 192) = a3;
  *(v4 - 184) = a4;
  *(v4 - 200) = a2;
}

uint64_t OUTLINED_FUNCTION_41_0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_0()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_0()
{
  result = *(v0 - 176);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v4 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_0()
{
  v2 = *(v1 - 120) + 8;
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_0()
{
  v1 = *(v0 - 120) + 8;
  result = *(v0 - 176);
  v3 = *(v0 - 160);
  return result;
}

void OUTLINED_FUNCTION_48_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_52_0()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);
  v4 = *(v0 - 120);
  v5 = *(v0 - 184);

  return sub_2688F80CC();
}

uint64_t OUTLINED_FUNCTION_53_0()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);
  v4 = *(v0 - 120);
  v5 = *(v0 - 184);

  return sub_2688F4CD4();
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  __swift_storeEnumTagSinglePayload(*(v0 - 256), 1, 1, *(v0 - 240));

  return sub_268B37164();
}

uint64_t OUTLINED_FUNCTION_56@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 208);
  v4 = *(v1 - 200);
  v5 = *(v1 - 192);
  return result;
}

void OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 200) = a3;
  *(v4 - 192) = a4;
  *(v4 - 208) = a2;
}

uint64_t OUTLINED_FUNCTION_65()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_67()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 200);
  v4 = *(v0 - 192);
  v5 = *(v0 - 184);

  return sub_2688F80CC();
}

uint64_t OUTLINED_FUNCTION_68_0()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 200);
  v4 = *(v0 - 192);
  v5 = *(v0 - 184);

  return sub_2688F4CD4();
}

uint64_t OUTLINED_FUNCTION_72_0()
{
  result = 0;
  v2 = *(v0 - 176);
  return result;
}

void OUTLINED_FUNCTION_73_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_75_0()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
}

void OUTLINED_FUNCTION_77_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  v2 = *(v1 - 160);

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_78_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_79_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_83_0()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_84_0()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_86_0()
{
  *(v3 - 112) = v2;
  *(v3 - 104) = v0;
  *(v3 - 264) = v1;
}

uint64_t OUTLINED_FUNCTION_88_0()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_93_0(uint64_t result)
{
  *(v3 - 176) = v1;
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

void OUTLINED_FUNCTION_102_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_103_0(float a1)
{
  *v1 = a1;

  return sub_26892CDB8(v3, v2, (v4 - 96));
}

uint64_t OUTLINED_FUNCTION_104_0()
{

  return sub_2688EFD10(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_105()
{
}

void OUTLINED_FUNCTION_106(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_107_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_108_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_110()
{

  return sub_2688EFD10(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = v1;
  }

  *(v3 - 120) = v5;

  return sub_2688EFD0C(v2);
}

void OUTLINED_FUNCTION_112_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OUTLINED_FUNCTION_113_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  v5 = *(v3 - 104);

  return _Block_copy(v5);
}

uint64_t OUTLINED_FUNCTION_114_0(float a1)
{
  *v1 = a1;

  return sub_26892CDB8(v2, v3, (v4 - 96));
}

BOOL OUTLINED_FUNCTION_115_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_120_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_122_0@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 384);
  return result;
}

uint64_t OUTLINED_FUNCTION_123_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_125_0()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_132_0()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_138_0()
{

  JUMPOUT(0x26D6266E0);
}

BOOL OUTLINED_FUNCTION_139_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_140_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return sub_268B37164();
}

uint64_t OUTLINED_FUNCTION_143_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_155_0()
{
  v2 = *(v0 - 120);

  sub_268983D74(v2);
}

uint64_t OUTLINED_FUNCTION_156_0()
{
  *(v4 - 216) = v3;
  *(v4 - 168) = v0;
  *(v4 - 160) = v2;

  return sub_2688EFD0C(v1);
}

uint64_t OUTLINED_FUNCTION_157_0()
{
}

uint64_t OUTLINED_FUNCTION_158_0()
{

  return sub_2688EFD0C(v0);
}

uint64_t OUTLINED_FUNCTION_159()
{
}

BOOL OUTLINED_FUNCTION_160_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_161_0()
{
}

uint64_t OUTLINED_FUNCTION_162_0()
{
}

uint64_t OUTLINED_FUNCTION_163_0()
{
}

uint64_t OUTLINED_FUNCTION_164_0(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_172_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_173_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_183_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_184_0(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_201_0()
{

  return sub_268B38054();
}

uint64_t OUTLINED_FUNCTION_204_0(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

void OUTLINED_FUNCTION_205_0()
{

  JUMPOUT(0x26D6256F0);
}

void OUTLINED_FUNCTION_206_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

BOOL OUTLINED_FUNCTION_214_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_217_0()
{

  JUMPOUT(0x26D6256F0);
}

uint64_t OUTLINED_FUNCTION_220_0(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_224_0(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 8) = 1024;
  *(result + 10) = v2;
  return result;
}

void OUTLINED_FUNCTION_228_0()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 128);
  v3 = *(v0 - 352);
  v4 = *(v0 - 120);
}

uint64_t OUTLINED_FUNCTION_233_0()
{
}

uint64_t OUTLINED_FUNCTION_234_0()
{
}

uint64_t OUTLINED_FUNCTION_235_0(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 96));
}

BOOL OUTLINED_FUNCTION_236_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_237_0(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

id OUTLINED_FUNCTION_238_0()
{

  return [v0 (v1 + 1713)];
}

id OUTLINED_FUNCTION_239_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

BOOL OUTLINED_FUNCTION_240_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_241_0(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

void *OUTLINED_FUNCTION_242_0()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return _Block_copy(v3);
}

id OUTLINED_FUNCTION_243_0()
{

  return [v1 (v0 + 1713)];
}

id OUTLINED_FUNCTION_244_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_245_0()
{
  *(v3 - 184) = v0;
  *(v3 - 176) = v2;

  return sub_2688EFD0C(v1);
}

BOOL OUTLINED_FUNCTION_246_0()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_247_0()
{
  *(v1 - 104) = v0;

  return _Block_copy(v0);
}

void *OUTLINED_FUNCTION_248_0(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;

  return _Block_copy(v2);
}

id OUTLINED_FUNCTION_249_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_250_0()
{
}

uint64_t OUTLINED_FUNCTION_251_0()
{
}

void OUTLINED_FUNCTION_252_0()
{

  sub_268983D74(v0);
}

void OUTLINED_FUNCTION_253_0()
{

  JUMPOUT(0x26D625BD0);
}

uint64_t OUTLINED_FUNCTION_254_0(float a1)
{
  *v1 = a1;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_255_0(float a1)
{
  *v1 = a1;

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_256_0()
{

  JUMPOUT(0x26D6256F0);
}

uint64_t OUTLINED_FUNCTION_257_0()
{
  *(v1 - 128) = v0;
}

void OUTLINED_FUNCTION_258_0()
{
}

void OUTLINED_FUNCTION_259_0()
{

  JUMPOUT(0x26D625BD0);
}

void OUTLINED_FUNCTION_260_0()
{

  JUMPOUT(0x26D625BD0);
}

uint64_t OUTLINED_FUNCTION_261_0()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_268B38244();
}

uint64_t OUTLINED_FUNCTION_262_0(uint64_t a1, uint64_t a2)
{

  return sub_26890C964(a1, a2, v2, v3);
}

void *OUTLINED_FUNCTION_263_0@<X0>(uint64_t a1@<X8>)
{

  return __swift_project_boxed_opaque_existential_1((a1 + 56), v1);
}

uint64_t OUTLINED_FUNCTION_276_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v6 = *(v4 - 112);
  return result;
}

void OUTLINED_FUNCTION_277_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

Swift::String_optional __swiftcall UsoTask_pause_uso_NoEntity.verb()()
{
  v0 = 0x6573756170;
  v1 = 0xE500000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_pause_uso_NoEntity.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_26890F528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_26890F57C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_26890F5D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_26890F624(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_26890F678(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_26890F6CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_26890F720()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_26890F774(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_26890F7D8()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_26890F82C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_26890F890(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_26890F8F4()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_26890F958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_26890F9BC(uint64_t a1)
{
  result = sub_26890FA68(&qword_2802A5BF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26890FA68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_repeatAudio_common_MediaItem.verb()()
{
  v0 = 0x8000000268B56400;
  v1 = 0xD000000000000013;
  result.value._object = v0;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t UsoTask_repeatAudio_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_26890FC04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_26890FC58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_26890FCAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_26890FD00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_26890FD54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_26890FDA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_26890FDFC()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_26890FE50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_26890FEB4()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_26890FF08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_26890FF6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_26890FFD0()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268910034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268910098(uint64_t a1)
{
  result = sub_268910144(&qword_2802A5C10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268910144(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36444();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268910198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F50656D6F487369 && a2 == 0xE900000000000064;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6976654452587369 && a2 == 0xEA00000000006563;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x696B656469537369 && a2 == 0xEA00000000006B63)
    {

      return 2;
    }

    else
    {
      v8 = sub_268B38444();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2689102FC(unsigned __int8 a1)
{
  sub_268B38514();
  MEMORY[0x26D625F10](a1);
  return sub_268B38544();
}

uint64_t sub_268910350(char a1)
{
  if (!a1)
  {
    return 0x6F50656D6F487369;
  }

  if (a1 == 1)
  {
    return 0x6976654452587369;
  }

  return 0x696B656469537369;
}

uint64_t sub_2689103D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268910198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26891041C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2689102BC();
  *a1 = result;
  return result;
}

uint64_t sub_268910444(uint64_t a1)
{
  v2 = sub_268910CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268910480(uint64_t a1)
{
  v2 = sub_268910CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2689104BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C38, &qword_268B3CB18);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268910CCC();
  sub_268B38584();
  v13[15] = 0;
  OUTLINED_FUNCTION_1_5();
  if (!v1)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_1_5();
    v13[13] = 2;
    OUTLINED_FUNCTION_1_5();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_268910618(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C48, &qword_268B3CB20);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268910CCC();
  sub_268B38574();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18[15] = 0;
  v12 = OUTLINED_FUNCTION_0_6();
  v18[14] = 1;
  v14 = OUTLINED_FUNCTION_0_6();
  v18[13] = 2;
  v15 = OUTLINED_FUNCTION_0_6();
  (*(v6 + 8))(v10, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (v15)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 0xFFFFFFFE | v12 & 1 | v16;
}

uint64_t sub_2689107CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268910618(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_26891080C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v1[2];
  return sub_2689104BC(a1);
}

uint64_t sub_268910850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_26890C900(v3, v22);
  v6 = v23;
  v7 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  if (qword_2802A4D30 != -1)
  {
    swift_once();
  }

  sub_268910AF8();
  v8 = sub_268B344D4();
  v10 = v9;
  v11 = objc_opt_self();
  v12 = sub_268B34554();
  v21[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v21];

  if (v13)
  {
    v14 = v21[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (swift_dynamicCast())
    {
      v15 = v20;
    }

    else
    {
      v15 = sub_268B37B84();
    }

    sub_268910B4C(v8, v10);
  }

  else
  {
    v16 = v21[0];
    v17 = sub_268B34514();

    swift_willThrow();
    sub_268910B4C(v8, v10);
    v15 = sub_268B37B84();
  }

  sub_2689CE860(0xD000000000000017, 0x8000000268B57210, v15, a2, a3, v6, v7);

  result = __swift_destroy_boxed_opaque_existential_0Tm(v22);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_268910AF8()
{
  result = qword_2802A5C28;
  if (!qword_2802A5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5C28);
  }

  return result;
}

uint64_t sub_268910B4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for QuickStopDialogProvider.NothingToStopParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for QuickStopDialogProvider.NothingToStopParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_268910CCC()
{
  result = qword_2802A5C40;
  if (!qword_2802A5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5C40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationStateValue(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for QuickStopDialogProvider.NothingToStopParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268910E74);
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

unint64_t sub_268910EB8()
{
  result = qword_2802A5C50;
  if (!qword_2802A5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5C50);
  }

  return result;
}

unint64_t sub_268910F10()
{
  result = qword_2802A5C58;
  if (!qword_2802A5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5C58);
  }

  return result;
}

unint64_t sub_268910F68()
{
  result = qword_2802A5C60;
  if (!qword_2802A5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5C60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_268B38344();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_268B383B4();
}

id sub_268911078()
{
  if (qword_2802A4E20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD968;
  qword_2802CD8F0 = qword_2802CD968;

  return v1;
}

void sub_2689110DC()
{
  OUTLINED_FUNCTION_26();
  v198 = v1;
  v199 = v0;
  v188 = v2;
  v189 = v3;
  v184 = v4;
  v187 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v193 = &v167 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v183 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v194 = v17;
  OUTLINED_FUNCTION_9();
  v200 = sub_268B34E24();
  v18 = OUTLINED_FUNCTION_1(v200);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v25 = (v24 - v23);
  v26 = sub_268B36FD4();
  v27 = OUTLINED_FUNCTION_1(v26);
  v175 = v28;
  v176 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v169 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C78, &unk_268B49770);
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v173 = &v167 - v37;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C80, &qword_268B3CE20);
  v38 = OUTLINED_FUNCTION_4(v172);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v171 = v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v177 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  v170 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_18();
  v174 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_78();
  v179 = v49;
  OUTLINED_FUNCTION_9();
  v50 = sub_268B35044();
  v51 = OUTLINED_FUNCTION_1(v50);
  v185 = v52;
  v186 = v51;
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v51);
  v180 = v56;
  v181 = &v167 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_78();
  v197 = v57;
  OUTLINED_FUNCTION_9();
  v58 = sub_268B37A54();
  v59 = OUTLINED_FUNCTION_1(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  v64 = MEMORY[0x28223BE20](v59);
  v66 = &v167 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18();
  v182 = v67;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_18();
  v178 = v69;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v70);
  v72 = &v167 - v71;
  if (qword_2802A4F30 != -1)
  {
LABEL_77:
    OUTLINED_FUNCTION_0_0();
  }

  v73 = __swift_project_value_buffer(v58, qword_2802CDA10);
  v74 = v61;
  v75 = *(v61 + 16);
  v190 = v61 + 16;
  v191 = v73;
  v196 = v58;
  v192 = v75;
  (v75)(v72);
  v76 = sub_268B37A34();
  v77 = sub_268B37ED4();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_14();
    *v78 = 0;
    _os_log_impl(&dword_2688BB000, v76, v77, "PauseMediaHandleIntentStrategy.makeIntentHandledResponse()", v78, 2u);
    OUTLINED_FUNCTION_12();
  }

  v58 = *(v74 + 8);
  v79 = v196;
  v195 = v74 + 8;
  (v58)(v72, v196);
  sub_268A82B50(v198, v197);
  v80 = sub_268B18100();
  if (!v80)
  {
    goto LABEL_25;
  }

  v81 = v80;
  v82 = sub_2688EFD0C(v80);
  if (!v82)
  {

LABEL_25:
    v192(v66, v191, v79);
    v87 = sub_268B37A34();
    v88 = sub_268B37EE4();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = OUTLINED_FUNCTION_14();
      *v89 = 0;
      _os_log_impl(&dword_2688BB000, v87, v88, "No device found in intent", v89, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v58)(v66, v79);
    sub_268B36E84();
    v90 = v199;
    if (!v91)
    {
      sub_268947F08();
    }

    v92 = __swift_project_boxed_opaque_existential_1(v90 + 13, v90[16]);
    v93 = *MEMORY[0x277D5BC00];
    v196 = v20;
    v94 = v25;
    (v20[13])(v25, v93, v200);
    v95 = sub_268B350F4();
    v96 = v194;
    __swift_storeEnumTagSinglePayload(v194, 1, 1, v95);
    v97 = *MEMORY[0x277D5B908];
    v98 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v98);
    v100 = v193;
    (*(v99 + 104))(v193, v97, v98);
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v98);
    v101 = *v92;
    v102 = v183;
    sub_2688F1FA4(v96, v183, &unk_2802A57B0, &unk_268B3CE00);
    OUTLINED_FUNCTION_54_0(v102);
    if (v122)
    {
      sub_2688C058C(v102, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v95 - 8) + 8))(v102, v95);
    }

    v103 = v193;
    sub_2688E2778();

    sub_2688C058C(v103, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v194, &unk_2802A57B0, &unk_268B3CE00);
    v196[1](v94, v200);
    v104 = __swift_project_boxed_opaque_existential_1(v199 + 13, v199[16]);
    sub_2688C2ECC();
    v105 = OUTLINED_FUNCTION_26_1();
    *v106 = 38;
    v107 = *v104;
    sub_26894B450();

    v108 = OUTLINED_FUNCTION_26_1();
    *v109 = 38;
    v204[0] = v108;
    LOBYTE(v204[5]) = 1;
    v188(v204);
    sub_2688C058C(v204, &unk_2802A57C0, &qword_268B3BE00);
    (*(v185 + 8))(v197, v186);
    goto LABEL_74;
  }

  v61 = v82;
  v168 = v33;
  v200 = v81;
  v193 = v58;
  v83 = swift_allocObject();
  v183 = v83;
  *(v83 + 16) = 0;
  v194 = (v83 + 16);
  OUTLINED_FUNCTION_6_4();
  if (sub_268B34CE4() & 1) != 0 || (OUTLINED_FUNCTION_6_4(), (sub_268B34CC4()) || (OUTLINED_FUNCTION_6_4(), (sub_268B34CD4()))
  {
    v72 = 0;
    v33 = v200 & 0xC000000000000001;
    v66 = (v200 & 0xFFFFFFFFFFFFFF8);
    while (v61 != v72)
    {
      if (v33)
      {
        v84 = MEMORY[0x26D625BD0](v72, v200);
      }

      else
      {
        if (v72 >= *(v66 + 2))
        {
          goto LABEL_76;
        }

        v84 = *(v200 + 8 * v72 + 32);
      }

      v58 = v84;
      if (__OFADD__(v72, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v85 = [v84 context];
      if (!v85)
      {
        goto LABEL_17;
      }

      v20 = v85;
      v25 = [v85 proximity];

      if ((v25 - 1) < 4)
      {
        goto LABEL_17;
      }

      if (v25)
      {
        v204[0] = v25;
        sub_268B38474();
        __break(1u);
        return;
      }

      v86 = [v58 context];
      if (v86)
      {
        v25 = v86;
        v20 = [v86 nowPlayingMediaType];

        if (v20 == 7)
        {
          *v194 = 1;
          break;
        }
      }

      else
      {
LABEL_17:
      }

      ++v72;
    }
  }

  v110 = v199;
  v111 = v199[6];
  __swift_project_boxed_opaque_existential_1(v199 + 2, v199[5]);
  if ((sub_268B34C84() & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_2688EA03C(0, &qword_2802A5C90, 0x277D85C98);

  v112 = v179;
  v113 = v176;
  sub_268B38024();

  if ((*v194 & 1) == 0)
  {
    v117 = v174;
    (*(v175 + 104))(v174, *MEMORY[0x277D5F700], v113);
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v113);
    v118 = *(v168 + 48);
    v119 = v173;
    sub_2688F1FA4(v112, v173, &qword_2802A5C80, &qword_268B3CE20);
    v120 = v119;
    sub_2688F1FA4(v117, v119 + v118, &qword_2802A5C80, &qword_268B3CE20);
    OUTLINED_FUNCTION_54_0(v119);
    v116 = v178;
    if (v122)
    {
      sub_2688C058C(v117, &qword_2802A5C80, &qword_268B3CE20);
      OUTLINED_FUNCTION_54_0(v120 + v118);
      if (v122)
      {
        sub_2688C058C(v120, &qword_2802A5C80, &qword_268B3CE20);
        v114 = 1;
LABEL_45:
        v115 = v177;
        v112 = v179;
        goto LABEL_46;
      }
    }

    else
    {
      v121 = v170;
      sub_2688F1FA4(v120, v170, &qword_2802A5C80, &qword_268B3CE20);
      OUTLINED_FUNCTION_54_0(v120 + v118);
      if (!v122)
      {
        v123 = v175;
        v124 = v120 + v118;
        v125 = v169;
        (*(v175 + 32))(v169, v124, v113);
        sub_268918E34(&qword_2802A5C98, 255, MEMORY[0x277D5F710]);
        v114 = sub_268B37BB4();
        v126 = *(v123 + 8);
        v126(v125, v113);
        sub_2688C058C(v174, &qword_2802A5C80, &qword_268B3CE20);
        v126(v121, v113);
        sub_2688C058C(v173, &qword_2802A5C80, &qword_268B3CE20);
        goto LABEL_45;
      }

      sub_2688C058C(v174, &qword_2802A5C80, &qword_268B3CE20);
      (*(v175 + 8))(v121, v113);
    }

    sub_2688C058C(v120, &qword_2802A5C78, &unk_268B49770);
    v114 = 0;
    goto LABEL_45;
  }

  v114 = 1;
  v115 = v177;
  v116 = v178;
LABEL_46:
  *v194 = v114 & 1;
  v192(v116, v191, v196);
  sub_2688F1FA4(v112, v115, &qword_2802A5C80, &qword_268B3CE20);
  v127 = sub_268B37A34();
  v128 = v112;
  v129 = sub_268B37ED4();
  if (os_log_type_enabled(v127, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v204[0] = v131;
    *v130 = 136315138;
    sub_2688F1FA4(v115, v171, &qword_2802A5C80, &qword_268B3CE20);
    v132 = sub_268B37C24();
    v134 = v133;
    sub_2688C058C(v115, &qword_2802A5C80, &qword_268B3CE20);
    v135 = sub_26892CDB8(v132, v134, v204);

    *(v130 + 4) = v135;
    _os_log_impl(&dword_2688BB000, v127, v129, "PauseMediaHandleIntentStrategy.makeIntentHandledResponse() playState=%s", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v131);
    OUTLINED_FUNCTION_12();
    v110 = v199;
    OUTLINED_FUNCTION_12();

    (v193)(v178, v196);
    v136 = v179;
  }

  else
  {

    sub_2688C058C(v115, &qword_2802A5C80, &qword_268B3CE20);
    (v193)(v116, v196);
    v136 = v128;
  }

  sub_2688C058C(v136, &qword_2802A5C80, &qword_268B3CE20);
LABEL_50:
  v137 = *__swift_project_boxed_opaque_existential_1(v110 + 8, v110[11]);
  if (v137 && (v138 = OUTLINED_FUNCTION_28_1(), v139 = [v137 BOOLForKey_], v138, (v139 & 1) != 0))
  {
    v140 = 1;
  }

  else
  {
    v140 = *v194;
  }

  LODWORD(v190) = v140;
  v141 = v182;
  v142 = v183;
  v192(v182, v191, v196);

  v143 = sub_268B37A34();
  v144 = sub_268B37ED4();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v204[0] = swift_slowAlloc();
    *v145 = 136315394;
    swift_beginAccess();
    v146 = *(v142 + 16);

    if (v146)
    {
      v147 = 1702195828;
    }

    else
    {
      v147 = 0x65736C6166;
    }

    if (v146)
    {
      v148 = 0xE400000000000000;
    }

    else
    {
      v148 = 0xE500000000000000;
    }

    v149 = sub_26892CDB8(v147, v148, v204);

    *(v145 + 4) = v149;
    *(v145 + 12) = 2080;
    if (v190)
    {
      v150 = 1702195828;
    }

    else
    {
      v150 = 0x65736C6166;
    }

    v151 = v199;
    if (v190)
    {
      v152 = 0xE400000000000000;
    }

    else
    {
      v152 = 0xE500000000000000;
    }

    v153 = sub_26892CDB8(v150, v152, v204);

    *(v145 + 14) = v153;
    v142 = v183;
    _os_log_impl(&dword_2688BB000, v143, v144, "PauseMediaHandleIntentStrategy.makeIntentHandledResponse() suppressSnippet=%s shouldBuildSnippet=%s", v145, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (v193)(v182, v196);
  }

  else
  {
    v151 = v110;

    (v193)(v141, v196);
  }

  v154 = v186;
  v155 = v200;
  LOWORD(v202[0]) = 0;
  BYTE2(v202[0]) = 0;
  v202[1] = 0;
  v202[2] = 0;
  v202[3] = 1;
  memset(&v202[4], 0, 60);
  memcpy(v203, &v202[1], 0x51uLL);
  sub_2688C058C(v203, &qword_2802A5C88, qword_268B418C0);
  LODWORD(v202[1]) = 0;
  memset(&v202[2], 0, 72);
  LOBYTE(v202[11]) = 1;
  sub_2689123E8();
  if ((v156 & 1) != 0 || (v157 = sub_268B18120()) == 0)
  {
    sub_268AE3598();
  }

  else
  {
    sub_268912B14(v155, v157);
  }

  v200 = v151[7];
  memcpy(v204, v202, 0x5CuLL);
  v158 = v185;
  v159 = v181;
  (*(v185 + 16))(v181, v197, v154);
  v160 = (*(v158 + 80) + 73) & ~*(v158 + 80);
  v161 = swift_allocObject();
  *(v161 + 16) = v151;
  *(v161 + 24) = v142;
  v162 = v198;
  v163 = v184;
  *(v161 + 32) = v198;
  *(v161 + 40) = v163;
  v164 = v188;
  *(v161 + 48) = v187;
  *(v161 + 56) = v164;
  *(v161 + 64) = v189;
  *(v161 + 72) = v190;
  (*(v158 + 32))(v161 + v160, v159);

  v165 = v162;
  v166 = v163;

  sub_268AAE57C(v204, 1, sub_268918CE0, v161);

  (*(v158 + 8))(v197, v154);
  memcpy(v201, v202, 0x5CuLL);
  sub_268918D64(v201);

LABEL_74:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268912390(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[27];
  __swift_project_boxed_opaque_existential_1(a3 + 23, a3[26]);
  return sub_268B36D24();
}

void sub_2689123E8()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B37924();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v66 = v7 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA0, &qword_268B3CE28);
  v8 = OUTLINED_FUNCTION_4(v76);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v69 = v17;
  OUTLINED_FUNCTION_8();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = sub_268B37A54();
  v25 = OUTLINED_FUNCTION_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v63 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  v33 = (&v61 - v32);
  if (sub_268921060())
  {
    v34 = sub_268B18120();
    if (!v34)
    {
LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      __swift_project_value_buffer(v24, qword_2802CDA10);
      OUTLINED_FUNCTION_8_4();
      v56 = v63;
      v57(v63);
      v58 = sub_268B37A34();
      v59 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_19(v59))
      {
        v60 = OUTLINED_FUNCTION_14();
        *v60 = 0;
        _os_log_impl(&dword_2688BB000, v58, v56, "No deviceQueries found in the intent. hasAmbiguousTargetEntities: true", v60, 2u);
        OUTLINED_FUNCTION_12();
      }

      v27[1](v56, v24);
      goto LABEL_39;
    }

    v35 = v34;
    v61 = v27;
    v62 = v24;
    v78 = MEMORY[0x277D84F90];
    v36 = sub_2688EFD0C(v34);
    v24 = 0;
    v74 = v35 & 0xC000000000000001;
    v75 = v36;
    v73 = v35 & 0xFFFFFFFFFFFFFF8;
    v71 = *MEMORY[0x277D5FA00];
    v70 = (v3 + 104);
    v64 = v35;
    v65 = (v3 + 32);
    v68 = (v3 + 8);
    v33 = &qword_2802A5CA8;
    v37 = v69;
    v72 = v23;
    v38 = v35;
    while (1)
    {
      if (v75 == v24)
      {

        v52 = v78;
        if (!sub_2688EFD0C(v78))
        {

          v27 = v61;
          v24 = v62;
          goto LABEL_34;
        }

        sub_2688EFD10(0, (v52 & 0xC000000000000001) == 0, v52);
        if ((v52 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x26D625BD0](0, v52);
        }

        else
        {
          v53 = *(v52 + 32);
        }

        v54 = v53;
        v55 = sub_2688EFD0C(v52);

        if (v55 == 1)
        {
          v78 = v54;
          type metadata accessor for DeviceQuery();
          sub_268918E34(&qword_2802A5B68, 255, type metadata accessor for DeviceQuery);
          sub_268B37674();
        }

        goto LABEL_39;
      }

      if (v74)
      {
        v39 = MEMORY[0x26D625BD0](v24, v38);
      }

      else
      {
        if (v24 >= *(v73 + 16))
        {
          goto LABEL_42;
        }

        v39 = *(v38 + 8 * v24 + 32);
      }

      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v77 = v39;
      DeviceQuery.reference.getter();
      (*v70)(v21, v71, v0);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v0);
      v40 = *(v76 + 48);
      v27 = &unk_268B3CE30;
      sub_2688F1FA4(v23, v12, &qword_2802A5CA8, &unk_268B3CE30);
      sub_2688F1FA4(v21, &v12[v40], &qword_2802A5CA8, &unk_268B3CE30);
      OUTLINED_FUNCTION_13_2(v12);
      if (v41)
      {
        OUTLINED_FUNCTION_15_2(v21);
        OUTLINED_FUNCTION_15_2(v23);
        OUTLINED_FUNCTION_13_2(&v12[v40]);
        if (!v41)
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_15_2(v12);
      }

      else
      {
        sub_2688F1FA4(v12, v37, &qword_2802A5CA8, &unk_268B3CE30);
        OUTLINED_FUNCTION_13_2(&v12[v40]);
        if (v41)
        {
          OUTLINED_FUNCTION_15_2(v21);
          OUTLINED_FUNCTION_15_2(v23);
          (*v68)(v37, v0);
LABEL_17:
          sub_2688C058C(v12, &qword_2802A5CA0, &qword_268B3CE28);
LABEL_18:
          sub_268B38214();
          v42 = v78[2];
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          goto LABEL_21;
        }

        v43 = v66;
        (*v65)(v66, &v12[v40], v0);
        sub_268918E34(&qword_2802A5CB0, 255, MEMORY[0x277D5FA18]);
        v67 = sub_268B37BB4();
        v44 = v23;
        v45 = *v68;
        v46 = v43;
        v37 = v69;
        (*v68)(v46, v0);
        OUTLINED_FUNCTION_15_2(v21);
        v47 = v44;
        v38 = v64;
        OUTLINED_FUNCTION_15_2(v47);
        v45(v37, v0);
        OUTLINED_FUNCTION_15_2(v12);
        if ((v67 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      ++v24;
      v23 = v72;
    }
  }

  if (qword_2802A4F30 != -1)
  {
LABEL_43:
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v24, qword_2802CDA10);
  OUTLINED_FUNCTION_8_4();
  v48(v33);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_19(v50))
  {
    v51 = OUTLINED_FUNCTION_14();
    *v51 = 0;
    _os_log_impl(&dword_2688BB000, v49, v33, "No whole house audio in the intent. Target can be the local device or any other devices in the home. hasAmbiguousTargetEntities: true", v51, 2u);
    OUTLINED_FUNCTION_12();
  }

  (v27)[1](v33, v24);
LABEL_39:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268912B14(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v99 = a1;
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v97 = &v88 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v88 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = &v88 - v13;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_95;
  }

LABEL_2:
  v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
  v17 = (v3 + 16);
  v16 = *(v3 + 16);
  v95 = v15;
  v96 = v16;
  (v16)(v14);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "Updating parameters for WHA request", v20, 2u);
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v22 = *(v3 + 8);
  v3 += 8;
  v21 = v22;
  v22(v14, v2);
  v23 = sub_2688EFD0C(v99);
  if (v23)
  {
    v24 = v23;
    v89 = v7;
    v90 = v17;
    v91 = v21;
    v92 = v3;
    v93 = v2;
    v14 = v98;
    v25 = sub_2688EFD0C(v98);
    v26 = 0;
    v7 = (v14 & 0xC000000000000001);
    v27 = v14 & 0xFFFFFFFFFFFFFF8;
    v12 = &qword_2802A5B68;
    while (v25 != v26)
    {
      if (v7)
      {
        v28 = MEMORY[0x26D625BD0](v26, v98);
      }

      else
      {
        if (v26 >= *(v27 + 16))
        {
          goto LABEL_88;
        }

        v28 = *(v98 + 8 * v26 + 32);
      }

      v29 = v28;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
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
        swift_once();
        goto LABEL_2;
      }

      v100[0] = v28;
      v2 = type metadata accessor for DeviceQuery();
      sub_268918E34(&qword_2802A5B68, 255, type metadata accessor for DeviceQuery);
      v14 = sub_268B37654();

      ++v26;
      if (v14)
      {
        v38 = v97;
        v39 = v93;
        v96(v97, v95, v93);
        v40 = sub_268B37A34();
        v41 = sub_268B37F04();
        if (os_log_type_enabled(v40, v41))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2688BB000, v40, v41, "User asked to control *everywhere*", v43, 2u);
          MEMORY[0x26D6266E0](v43, -1, -1);
        }

        v91(v38, v39);
        sub_268A37C8C();
        if (*(v45 + 16) != 1)
        {
          *(v45 + 2) = 1;
        }

        return v44(v100, 0);
      }
    }

    v34 = 0;
    v7 = (v99 & 0xC000000000000001);
    v12 = (v99 & 0xFFFFFFFFFFFFFF8);
    while (v24 != v34)
    {
      if (v7)
      {
        v35 = MEMORY[0x26D625BD0](v34, v99);
      }

      else
      {
        if (v34 >= v12[2])
        {
          goto LABEL_92;
        }

        v35 = *(v99 + 8 * v34 + 32);
      }

      v36 = v35;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_91;
      }

      v14 = v35;
      v37 = sub_2689840D4();
      if ((v37 - 1) >= 4)
      {
        if (v37)
        {
          v100[0] = v37;
          result = sub_268B38474();
          __break(1u);
          return result;
        }

        v2 = v100;
        sub_268A37C8C();
        if (*(v47 + 16) != 1)
        {
          *(v47 + 3) = 1;
        }

        v46(v100, 0);
        v48 = [v36 roomName];
        if (v48)
        {
          v49 = v48;
          v50 = sub_268B37BF4();
          v52 = v51;

          goto LABEL_38;
        }

        break;
      }

      ++v34;
    }

    v50 = 0;
    v52 = 0;
LABEL_38:
    v97 = MEMORY[0x277D84F90];
    v100[0] = MEMORY[0x277D84F90];
    v53 = sub_2688EFD0C(v99);
    v14 = 0;
    while (v53 != v14)
    {
      if (v7)
      {
        v54 = MEMORY[0x26D625BD0](v14, v99);
      }

      else
      {
        if (v14 >= v12[2])
        {
          goto LABEL_90;
        }

        v54 = *(v99 + 8 * v14 + 32);
      }

      v55 = v54;
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_89;
      }

      v56 = sub_268988568(v54);
      if (v57)
      {
        if (v52)
        {
          if (v56 == v50 && v57 == v52)
          {

            goto LABEL_55;
          }

          v2 = sub_268B38444();

          if (v2)
          {
            goto LABEL_53;
          }
        }

        else
        {
        }
      }

      else if (!v52)
      {
LABEL_53:

LABEL_55:
        ++v14;
        continue;
      }

      MEMORY[0x26D6256C0](v56);
      if (*((v100[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v97 = v100[0];
      ++v14;
    }

    v59 = v97;
    v60 = sub_2688EFD0C(v97);
    if (v60)
    {
      v61 = v60;
      v3 = 0;
      v7 = (v59 & 0xC000000000000001);
      v12 = (v59 & 0xFFFFFFFFFFFFFF8);
      v14 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v61 == v3)
        {
          sub_26893E6A8(v14);
          v75 = sub_268943C44(v74);
          sub_268A37C8C();
          if (*(v77 + 16) != 1)
          {
            *v77 = 1;
          }

          v76(v100, 0);
          sub_268A37C8C();
          v80 = v79;
          if (*(v78 + 16) == 1)
          {
          }

          else
          {
            v86 = v78;
            v87 = v75[2];

            *(v86 + 1) = v87 > 2;
          }

          v80(v100, 0);
          sub_268917650(v97, v98);
        }

        if (v7)
        {
          v62 = MEMORY[0x26D625BD0](v3, v97);
        }

        else
        {
          if (v3 >= v12[2])
          {
            goto LABEL_94;
          }

          v62 = *(v97 + 8 * v3 + 32);
        }

        v63 = v62;
        v64 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_93;
        }

        v65 = sub_268988580(v62);
        if (v66)
        {
          break;
        }

        v2 = sub_268988568(v63);
        v68 = v67;

        ++v3;
        if (v68)
        {
LABEL_72:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = *(v14 + 16);
            sub_2689876A4();
            v14 = v72;
          }

          v69 = *(v14 + 16);
          if (v69 >= *(v14 + 24) >> 1)
          {
            sub_2689876A4();
            v14 = v73;
          }

          *(v14 + 16) = v69 + 1;
          v70 = v14 + 16 * v69;
          *(v70 + 32) = v2;
          *(v70 + 40) = v68;
          v3 = v64;
        }
      }

      v2 = v65;
      v68 = v66;

      goto LABEL_72;
    }

    v81 = v89;
    v96(v89, v95, v93);
    v82 = sub_268B37A34();
    v83 = sub_268B37F04();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_2688BB000, v82, v83, "All devices are within the same room", v84, 2u);
      v85 = v84;
      v81 = v89;
      MEMORY[0x26D6266E0](v85, -1, -1);
    }

    v91(v81, v93);

    *(v94 + 90) = 1;
  }

  else
  {
    v96(v12, v95, v2);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Cannot update dialog parameters using an empty device list", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    return (v21)(v12, v2);
  }

  return result;
}