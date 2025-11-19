uint64_t sub_22EDF28D4()
{

  MEMORY[0x2318F58F0](0x73646E6F636553, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953B8, qword_22EE41700);
  sub_22EE3CB24();

  if (!v0)
  {

    MEMORY[0x2318F58F0](0x6E6F636553555043, 0xEA00000000007364);
    sub_22EE3CB24();

    MEMORY[0x2318F58F0](0x7463757274736E49, 0xEC000000736E6F69);
    sub_22EE3CB54();

    MEMORY[0x2318F58F0](0x6563726550555043, 0xEA0000000000746ELL);
    sub_22EE3CB24();

    sub_22EE3C864();

    MEMORY[0x2318F58F0](0xD000000000000015, 0x800000022EE48A80);
    sub_22EE3CB24();
  }

  return result;
}

uint64_t sub_22EDF2B5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *(a5 + 16);
  if (v7)
  {
    v9 = (a5 + 48);
    while (1)
    {
      v17 = v7;
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = result;

      MEMORY[0x2318F58F0](v10, v11);
      MEMORY[0x2318F58F0](0x6F63655372655073, 0xEA0000000000646ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953B8, qword_22EE41700);
      sub_22EE3CB24();

      if (v6)
      {
        break;
      }

      sub_22EE3C864();

      MEMORY[0x2318F58F0](0x6E6F636553555043, 0xED00007265507364);
      MEMORY[0x2318F58F0](v10, v11);
      sub_22EE3CB24();

      sub_22EE3C864();

      v14 = a2;
      v15 = v13;
      v16 = v14;

      MEMORY[0x2318F58F0](0x7463757274736E49, 0xEF726550736E6F69);
      MEMORY[0x2318F58F0](v10, v11);

      sub_22EE3CB24();

      v9 += 3;
      v7 = v17 - 1;
      result = v15;
      a2 = v16;
      if (v17 == 1)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_22EDF2DE0()
{
  v1 = *(v0 + 240);
  v10[10] = *(v0 + 224);
  v10[11] = v1;
  v10[12] = *(v0 + 256);
  v11 = *(v0 + 272);
  v2 = *(v0 + 176);
  v10[6] = *(v0 + 160);
  v10[7] = v2;
  v3 = *(v0 + 208);
  v10[8] = *(v0 + 192);
  v10[9] = v3;
  v4 = *(v0 + 112);
  v10[2] = *(v0 + 96);
  v10[3] = v4;
  v5 = *(v0 + 144);
  v10[4] = *(v0 + 128);
  v10[5] = v5;
  v6 = *(v0 + 80);
  v10[0] = *(v0 + 64);
  v10[1] = v6;
  sub_22EDF40D4(v10);
  v7 = *(v0 + 280);

  v8 = *(v0 + 288);

  return swift_deallocClassInstance();
}

uint64_t sub_22EDF2E6C()
{
  v0 = swift_allocObject();
  sub_22EDF2EA4();
  return v0;
}

uint64_t sub_22EDF2EA4()
{
  *(v0 + 16) = sub_22ED8260C();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_22ED8260C();
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_22EDF403C(v13);
  v5 = v13[11];
  *(v0 + 224) = v13[10];
  *(v0 + 240) = v5;
  *(v0 + 256) = v13[12];
  *(v0 + 272) = v14;
  v6 = v13[7];
  *(v0 + 160) = v13[6];
  *(v0 + 176) = v6;
  v7 = v13[9];
  *(v0 + 192) = v13[8];
  *(v0 + 208) = v7;
  v8 = v13[3];
  *(v0 + 96) = v13[2];
  *(v0 + 112) = v8;
  v9 = v13[5];
  *(v0 + 128) = v13[4];
  *(v0 + 144) = v9;
  v10 = v13[1];
  *(v0 + 64) = v13[0];
  *(v0 + 80) = v10;
  v11 = MEMORY[0x277D84F90];
  *(v0 + 280) = MEMORY[0x277D84F90];
  *(v0 + 288) = v11;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 1;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 352) = 2;
  *(v0 + 376) = 0;
  *(v0 + 384) = xmmword_22EE416B0;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  return v0;
}

Swift::String __swiftcall String.init(intValue:)(Swift::Int intValue)
{
  v1 = sub_22EE3CB84();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_22EDF3058()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22EDF3088@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22EDF3090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22EE3CB84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22EDF30D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  return sub_22EDF2B5C(a1, a2, a3, v3[2], v3[3]);
}

uint64_t sub_22EDF30F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_22EDF28D4();
}

uint64_t sub_22EDF3118(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EDF3E20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EDF3208(v5);
  *a1 = v2;
  return result;
}

void *sub_22EDF3184(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_22EDF3208(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EE3CB64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22EE3C404();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EDF33D0(v7, v8, a1, v4);
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
    return sub_22EDF3300(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22EDF3300(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22EE3CBA4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22EDF33D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22EDE2794(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22EDF39AC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22EE3CBA4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22EE3CBA4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EDE1A00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22EDE1A00((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22EDF39AC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22EDE2794(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22EDE2708(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22EE3CBA4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_22EDF39AC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22EE3CBA4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22EE3CBA4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_22EDF3BD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953F8, &qword_22EE41EB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_22EDF3CD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953E8, &qword_22EE41EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953F0, &qword_22EE41EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDF3E34(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_22EDF3F8C(uint64_t a1)
{
  v2 = type metadata accessor for RecordingOptions.Options(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22EDF3FE8()
{
  result = qword_27DA974E0;
  if (!qword_27DA974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA974E0);
  }

  return result;
}

double sub_22EDF403C(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_22EDF4064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95388, &qword_22EE416D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EDF40D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95388, &qword_22EE416D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22EDF413C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646461 && a2 == 0xE500000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657474696D6FLL && a2 == 0xE700000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE900000000000073 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022EE48B20 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022EE48B40 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xE800000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7453796669746F6ELL && a2 == 0xEB00000000747261 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022EE48B60 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022EE48B80 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65644B6E4F646E65 && a2 == 0xEF657A6953677562 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E45796669746F6ELL && a2 == 0xE900000000000064 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022EE48BA0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022EE48BC0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022EE48BE0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEE00676E69727544 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7355656661736E75 && a2 == 0xEA00000000006465 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022EE48C00 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022EE48C20 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022EE48C40 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022EE48C60 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022EE48C80 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_22EE3CBA4();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_22EDF48A4()
{
  v0 = sub_22EE3CA04();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22EDF48F0()
{
  result = qword_27DA974E8;
  if (!qword_27DA974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA974E8);
  }

  return result;
}

unint64_t sub_22EDF4944()
{
  result = qword_27DA974F0[0];
  if (!qword_27DA974F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA974F0);
  }

  return result;
}

uint64_t sub_22EDF4998(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022EE48CA0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022EE48CC0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F436B6E756863 && a2 == 0xEA0000000000746ELL || (sub_22EE3CBA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022EE48CE0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022EE48D00 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_22EE3CBA4();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22EDF4BA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022EE48D20 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022EE48D40 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022EE48D60 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_22EE3CBA4();

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

uint64_t sub_22EDF4CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79426465646E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022EE48A20 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022EE48A00 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022EE489D0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x800000022EE489A0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022EE48980 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_22EE3CBA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_22EDF4F20()
{
  result = qword_27DA953B0;
  if (!qword_27DA953B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953B0);
  }

  return result;
}

uint64_t sub_22EDF4F74(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22EDF4F8C()
{
  result = qword_27DA953C0;
  if (!qword_27DA953C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953C0);
  }

  return result;
}

unint64_t sub_22EDF4FE4()
{
  result = qword_27DA953C8;
  if (!qword_27DA953C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953C8);
  }

  return result;
}

unint64_t sub_22EDF503C()
{
  result = qword_27DA953D0;
  if (!qword_27DA953D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953D0);
  }

  return result;
}

unint64_t sub_22EDF5094()
{
  result = qword_27DA953D8;
  if (!qword_27DA953D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953D8);
  }

  return result;
}

unint64_t sub_22EDF50EC()
{
  result = qword_27DA953E0;
  if (!qword_27DA953E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953E0);
  }

  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_22EDF51C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22EDF5208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22EDF52B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EDF52D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordInfo.LostEvents(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordInfo.LostEvents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RecordInfo.EndReason(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordInfo.EndReason(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordInfo.EndReason(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
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

uint64_t sub_22EDF54A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_22EDF54D8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
    *(result + 8) &= 1uLL;
    *(result + 24) = v2;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    *(result + 24) = 0x80;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22EDF5540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22EDF5588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeSpan(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeSpan(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordInfo.LostEvents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordInfo.LostEvents.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StandardFile.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StandardFile.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordInfo.Usage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordInfo.Usage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22EDF5A30()
{
  result = qword_27DA97D00[0];
  if (!qword_27DA97D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA97D00);
  }

  return result;
}

unint64_t sub_22EDF5A88()
{
  result = qword_27DA97F10[0];
  if (!qword_27DA97F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA97F10);
  }

  return result;
}

unint64_t sub_22EDF5AE0()
{
  result = qword_27DA98120[0];
  if (!qword_27DA98120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA98120);
  }

  return result;
}

unint64_t sub_22EDF5B38()
{
  result = qword_27DA98230;
  if (!qword_27DA98230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98230);
  }

  return result;
}

unint64_t sub_22EDF5B90()
{
  result = qword_27DA98238[0];
  if (!qword_27DA98238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA98238);
  }

  return result;
}

unint64_t sub_22EDF5BE8()
{
  result = qword_27DA982C0;
  if (!qword_27DA982C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA982C0);
  }

  return result;
}

unint64_t sub_22EDF5C40()
{
  result = qword_27DA982C8[0];
  if (!qword_27DA982C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA982C8);
  }

  return result;
}

unint64_t sub_22EDF5C98()
{
  result = qword_27DA98350;
  if (!qword_27DA98350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98350);
  }

  return result;
}

unint64_t sub_22EDF5CF0()
{
  result = qword_27DA98358[0];
  if (!qword_27DA98358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA98358);
  }

  return result;
}

uint64_t PlanSource.hashValue.getter()
{
  v1 = *v0;
  sub_22EE3CC74();
  MEMORY[0x2318F6370](v1);
  return sub_22EE3CCC4();
}

uint64_t sub_22EDF5DE4(uint64_t a1, double a2)
{
  result = sub_22EE120D8();
  v5 = result * a2;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_22EE12174();
  v6 = result * a1;
  if ((result * a1) >> 64 != (result * a1) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

unint64_t sub_22EDF5E88()
{
  if (*v0)
  {
    result = 0x654D757043726570;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_22EDF5ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000022EE492B0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x654D757043726570 && a2 == 0xEF62694D79726F6DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22EE3CBA4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22EDF5FC4(uint64_t a1)
{
  v2 = sub_22EDF61C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF6000(uint64_t a1)
{
  v2 = sub_22EDF61C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF603C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95400, &qword_22EE41EE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF61C4();
  sub_22EE3CCE4();
  v12 = 0;
  sub_22EE3CB24();
  if (!v1)
  {
    v11 = 1;
    sub_22EE3CB34();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22EDF61C4()
{
  result = qword_27DA983F0;
  if (!qword_27DA983F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA983F0);
  }

  return result;
}

uint64_t sub_22EDF6218@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22EE0A210(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_22EDF6248(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_22EDF603C(a1);
}

uint64_t sub_22EDF6268(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6C61635F72657375;
    v6 = 0x695F646165726874;
    v7 = 0x735F646165726874;
    if (a1 != 3)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D5F6D6574737973;
    if (a1 != 9)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD00000000000001ALL;
    v3 = 0x666E695F6B736174;
    if (a1 != 6)
    {
      v3 = 0x616E735F6B736174;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22EDF6410(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_22EDF6268(*a1);
  v5 = v4;
  if (v3 == sub_22EDF6268(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22EE3CBA4();
  }

  return v8 & 1;
}

uint64_t sub_22EDF6498()
{
  v1 = *v0;
  sub_22EE3CC74();
  sub_22EDF6268(v1);
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF64FC()
{
  sub_22EDF6268(*v0);
  sub_22EE3C1C4();
}

uint64_t sub_22EDF6550()
{
  v1 = *v0;
  sub_22EE3CC74();
  sub_22EDF6268(v1);
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF65B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22EE0A3BC();
  *a2 = result;
  return result;
}

uint64_t sub_22EDF65E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22EDF6268(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22EDF66BC(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22EE02350(0, v4, 0);
    v5 = v25;
    v6 = (a2 + 32);
    v7 = v25[1].u64[0];
    do
    {
      v9 = *v6++;
      v8 = v9;
      v26 = v5;
      v10 = v5[1].u64[1];
      v11 = v7 + 1;
      if (v7 >= v10 >> 1)
      {
        sub_22EE02350((v10 > 1), v7 + 1, 1);
      }

      v12 = dword_22EE43634[v8];
      v5 = v26;
      v26[1].i64[0] = v11;
      v26[2].i32[v7++] = v12;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  if (v11 <= 7)
  {
    v13 = 0;
    v14 = 0;
LABEL_14:
    v21 = v11 - v13;
    v22 = 4 * v13 + 32;
    do
    {
      v14 |= *(v5->u32 + v22);
      v22 += 4;
      --v21;
    }

    while (v21);
    goto LABEL_16;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFF8;
  v15 = v5 + 3;
  v16 = 0uLL;
  v17 = v11 & 0xFFFFFFFFFFFFFFF8;
  v18 = 0uLL;
  do
  {
    v16 = vorrq_s8(v15[-1], v16);
    v18 = vorrq_s8(*v15, v18);
    v15 += 2;
    v17 -= 8;
  }

  while (v17);
  v19 = vorrq_s8(v18, v16);
  v20 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v14 = v20.i32[0] | v20.i32[1];
  if (v11 != v13)
  {
    goto LABEL_14;
  }

LABEL_16:

  if (v3 > 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  result = kperf_action_samplers_set();
  if ((result & 0x80000000) != 0)
  {
    v23 = MEMORY[0x2318F5610]();
    type metadata accessor for KTraceRecordError();
    sub_22EDD45F0();
    swift_allocError();
    strcpy(v24, "set samplers");
    v24[13] = 0;
    *(v24 + 7) = -5120;
    *(v24 + 4) = v23;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22EDF68D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v76 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v1, 0);
  v2 = v76;
  v4 = -1 << *(a1 + 32);
  v41 = a1 + 64;
  result = sub_22EE3C7C4();
  if (result < 0 || (v6 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v77 = *(a1 + 36);
    v39 = v1;
    v7 = 1;
    while (1)
    {
      v8 = v6 >> 6;
      if ((*(v41 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      if (v77 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v9 = (*(a1 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = (*(a1 + 56) + 200 * v6);
      v56[0] = *v12;
      v13 = v12[4];
      v15 = v12[1];
      v14 = v12[2];
      v56[3] = v12[3];
      v56[4] = v13;
      v56[1] = v15;
      v56[2] = v14;
      v16 = v12[8];
      v18 = v12[5];
      v17 = v12[6];
      v56[7] = v12[7];
      v56[8] = v16;
      v56[5] = v18;
      v56[6] = v17;
      v20 = v12[10];
      v19 = v12[11];
      v21 = v12[9];
      v57 = *(v12 + 24);
      v56[10] = v20;
      v56[11] = v19;
      v56[9] = v21;
      v22 = v12[11];
      v53 = v12[10];
      v54 = v22;
      v55 = *(v12 + 24);
      v23 = v12[7];
      v49 = v12[6];
      v50 = v23;
      v24 = v12[9];
      v51 = v12[8];
      v52 = v24;
      v25 = v12[3];
      v45 = v12[2];
      v46 = v25;
      v26 = v12[5];
      v47 = v12[4];
      v48 = v26;
      v27 = v12[1];
      v43 = *v12;
      v44 = v27;
      memmove(__dst, v12, 0xC8uLL);
      v60[0] = v10;
      v60[1] = v11;
      v71 = v53;
      v72 = v54;
      v73 = v55;
      v67 = v49;
      v68 = v50;
      v69 = v51;
      v70 = v52;
      v63 = v45;
      v64 = v46;
      v65 = v47;
      v66 = v48;
      v61 = v43;
      v62 = v44;
      v40 = v11;
      swift_bridgeObjectRetain_n();
      sub_22EE0C808(v56, v42);
      sub_22EE0C808(__dst, v42);
      sub_22EDDBA48(v60, &qword_27DA95620, &qword_22EE43558);
      v74[10] = __dst[10];
      v74[11] = __dst[11];
      v75 = v59;
      v74[6] = __dst[6];
      v74[7] = __dst[7];
      v74[8] = __dst[8];
      v74[9] = __dst[9];
      v74[2] = __dst[2];
      v74[3] = __dst[3];
      v74[4] = __dst[4];
      v74[5] = __dst[5];
      v74[0] = __dst[0];
      v74[1] = __dst[1];
      result = sub_22EE0D460(v74);
      v76 = v2;
      v29 = *(v2 + 16);
      v28 = *(v2 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_22EDD2DD4((v28 > 1), v29 + 1, 1);
        v2 = v76;
      }

      *(v2 + 16) = v29 + 1;
      v30 = v2 + 16 * v29;
      *(v30 + 32) = v10;
      *(v30 + 40) = v40;
      v31 = 1 << *(a1 + 32);
      if (v6 >= v31)
      {
        goto LABEL_27;
      }

      v32 = *(v41 + 8 * v8);
      if ((v32 & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      if (v77 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v33 = v32 & (-2 << (v6 & 0x3F));
      if (v33)
      {
        v6 = __clz(__rbit64(v33)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v8 << 6;
        v35 = v8 + 1;
        v36 = (a1 + 72 + 8 * v8);
        while (v35 < (v31 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_22ED972FC(v6, v77, 0);
            v6 = __clz(__rbit64(v37)) + v34;
            goto LABEL_19;
          }
        }

        result = sub_22ED972FC(v6, v77, 0);
        v6 = v31;
      }

LABEL_19:
      if (v7 == v39)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        ++v7;
        if (v6 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
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

uint64_t sub_22EDF6C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v93 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v1, 0);
  v2 = v93;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_22EE3C7C4();
  if (result < 0 || (v7 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v94 = *(v3 + 36);
    v42 = v3 + 72;
    v43 = v1;
    v8 = 1;
    v44 = v3 + 64;
    while (1)
    {
      v9 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

      if (v94 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v45 = v8;
      v10 = (*(v3 + 48) + 16 * v7);
      v46 = v2;
      v12 = *v10;
      v11 = v10[1];
      v13 = (*(v3 + 56) + 200 * v7);
      v61[0] = *v13;
      v14 = v13[4];
      v16 = v13[1];
      v15 = v13[2];
      v61[3] = v13[3];
      v61[4] = v14;
      v61[1] = v16;
      v61[2] = v15;
      v17 = v13[8];
      v19 = v13[5];
      v18 = v13[6];
      v61[7] = v13[7];
      v61[8] = v17;
      v61[5] = v19;
      v61[6] = v18;
      v21 = v13[10];
      v20 = v13[11];
      v22 = v13[9];
      v62 = *(v13 + 24);
      v61[10] = v21;
      v61[11] = v20;
      v61[9] = v22;
      v23 = v13[11];
      v58 = v13[10];
      v59 = v23;
      v60 = *(v13 + 24);
      v24 = v13[7];
      v54 = v13[6];
      v55 = v24;
      v25 = v13[9];
      v56 = v13[8];
      v57 = v25;
      v26 = v13[3];
      v50 = v13[2];
      v51 = v26;
      v27 = v13[5];
      v52 = v13[4];
      v53 = v27;
      v28 = v13[1];
      v48 = *v13;
      v49 = v28;
      memmove(__dst, v13, 0xC8uLL);
      v65[0] = v12;
      v65[1] = v11;
      v76 = v58;
      v77 = v59;
      v78 = v60;
      v72 = v54;
      v73 = v55;
      v74 = v56;
      v75 = v57;
      v68 = v50;
      v69 = v51;
      v70 = v52;
      v71 = v53;
      v66 = v48;
      v67 = v49;
      swift_bridgeObjectRetain_n();
      sub_22EE0C808(v61, v47);
      sub_22EE0C808(__dst, v47);
      sub_22EDDBA48(v65, &qword_27DA95620, &qword_22EE43558);
      v90 = __dst[10];
      v91 = __dst[11];
      v92 = v64;
      v86 = __dst[6];
      v87 = __dst[7];
      v88 = __dst[8];
      v89 = __dst[9];
      v82 = __dst[2];
      v83 = __dst[3];
      v84 = __dst[4];
      v85 = __dst[5];
      v80 = __dst[0];
      v81 = __dst[1];
      v29 = v12;
      v79[0] = v12;
      v2 = v46;
      v79[1] = v11;

      result = sub_22EDDBA48(v79, &qword_27DA95620, &qword_22EE43558);
      v93 = v46;
      v30 = v3;
      v32 = *(v46 + 16);
      v31 = *(v46 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_22EDD2DD4((v31 > 1), v32 + 1, 1);
        v2 = v93;
      }

      *(v2 + 16) = v32 + 1;
      v33 = v2 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v11;
      v34 = 1 << *(v30 + 32);
      if (v7 >= v34)
      {
        goto LABEL_27;
      }

      v3 = v30;
      v4 = v44;
      v35 = *(v44 + 8 * v9);
      if ((v35 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      if (v94 != *(v3 + 36))
      {
        goto LABEL_29;
      }

      v36 = v35 & (-2 << (v7 & 0x3F));
      if (v36)
      {
        v7 = __clz(__rbit64(v36)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v9 << 6;
        v38 = v9 + 1;
        v39 = (v42 + 8 * v9);
        while (v38 < (v34 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_22ED972FC(v7, v94, 0);
            v7 = __clz(__rbit64(v40)) + v37;
            goto LABEL_19;
          }
        }

        result = sub_22ED972FC(v7, v94, 0);
        v7 = v34;
      }

LABEL_19:
      if (v45 == v43)
      {
        return v2;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = v45 + 1;
        if (v7 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
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

uint64_t sub_22EDF7058(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v110 = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v2, 0);
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_22EE3C7C4();
    v6 = result;
    if (result < 0 || result >= 1 << *(v1 + 32))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      result = v110;
      v7 = *(v1 + 36);
      v47 = v1 + 72;
      v48 = v2;
      v8 = 1;
      v49 = v7;
      v50 = v1 + 64;
      while (1)
      {
        v9 = v6 >> 6;
        if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          break;
        }

        if (v7 != *(v1 + 36))
        {
          goto LABEL_26;
        }

        v51 = v8;
        v10 = (*(v1 + 48) + 16 * v6);
        v12 = *v10;
        v11 = v10[1];
        v13 = (*(v1 + 56) + 200 * v6);
        v67[0] = *v13;
        v14 = v13[4];
        v16 = v13[1];
        v15 = v13[2];
        v67[3] = v13[3];
        v67[4] = v14;
        v67[1] = v16;
        v67[2] = v15;
        v17 = v13[8];
        v19 = v13[5];
        v18 = v13[6];
        v67[7] = v13[7];
        v67[8] = v17;
        v67[5] = v19;
        v67[6] = v18;
        v21 = v13[10];
        v20 = v13[11];
        v22 = v13[9];
        v68 = *(v13 + 24);
        v67[10] = v21;
        v67[11] = v20;
        v67[9] = v22;
        v23 = v13[11];
        v64 = v13[10];
        v65 = v23;
        v66 = *(v13 + 24);
        v24 = v13[7];
        v60 = v13[6];
        v61 = v24;
        v25 = v13[9];
        v62 = v13[8];
        v63 = v25;
        v26 = v13[3];
        v56 = v13[2];
        v57 = v26;
        v27 = v13[5];
        v58 = v13[4];
        v59 = v27;
        v28 = v13[1];
        v54 = *v13;
        v55 = v28;
        v111 = result;
        memmove(&__dst, v13, 0xC8uLL);
        v82[0] = v12;
        v82[1] = v11;
        v93 = v64;
        v94 = v65;
        v95 = v66;
        v89 = v60;
        v90 = v61;
        v91 = v62;
        v92 = v63;
        v85 = v56;
        v86 = v57;
        v87 = v58;
        v88 = v59;
        v83 = v54;
        v84 = v55;
        swift_bridgeObjectRetain_n();
        sub_22EE0C808(v67, &v52);
        sub_22EE0C808(&__dst, &v52);
        sub_22EDDBA48(v82, &qword_27DA95620, &qword_22EE43558);
        v99 = v71;
        v100 = v72;
        v103 = v75;
        v104 = v76;
        v101 = v73;
        v102 = v74;
        v109 = v81;
        v107 = v79;
        v108 = v80;
        v105 = v77;
        v106 = v78;
        v97 = __dst;
        v98 = v70;
        v96[0] = v12;
        v96[1] = v11;
        v29 = *(&__dst + 1);
        v30 = v70;
        v52 = v12;
        v53 = v11;

        MEMORY[0x2318F58F0](8250, 0xE200000000000000);
        MEMORY[0x2318F58F0](v29, v30);
        sub_22EDDBA48(v96, &qword_27DA95620, &qword_22EE43558);
        result = v111;
        v31 = v52;
        v32 = v53;
        v110 = v111;
        v33 = v1;
        v35 = *(v111 + 16);
        v34 = *(v111 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_22EDD2DD4((v34 > 1), v35 + 1, 1);
          result = v110;
        }

        *(result + 16) = v35 + 1;
        v36 = result + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v32;
        v37 = 1 << *(v33 + 32);
        if (v6 >= v37)
        {
          goto LABEL_27;
        }

        v1 = v33;
        v4 = v50;
        v38 = *(v50 + 8 * v9);
        if ((v38 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        v7 = v49;
        if (v49 != *(v1 + 36))
        {
          goto LABEL_29;
        }

        v39 = v38 & (-2 << (v6 & 0x3F));
        if (v39)
        {
          v6 = __clz(__rbit64(v39)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v40 = v9 << 6;
          v41 = v9 + 1;
          v42 = (v47 + 8 * v9);
          while (v41 < (v37 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              v45 = result;
              sub_22ED972FC(v6, v49, 0);
              result = v45;
              v6 = __clz(__rbit64(v43)) + v40;
              goto LABEL_19;
            }
          }

          v46 = result;
          sub_22ED972FC(v6, v49, 0);
          result = v46;
          v6 = v37;
        }

LABEL_19:
        if (v51 == v48)
        {
          return result;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          v8 = v51 + 1;
          if (v6 < 1 << *(v1 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
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
  }

  return result;
}

uint64_t sub_22EDF7464(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_22EE02370(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22EE3C7C4();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_22EE02370((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 32 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = MEMORY[0x277D84F98];
    *(v15 + 56) = 0;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_22ED972FC(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_22ED972FC(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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

uint64_t sub_22EDF769C()
{
  sub_22EE3CC74();
  MEMORY[0x2318F6370](0);
  return sub_22EE3CCC4();
}

uint64_t sub_22EDF7708()
{
  sub_22EE3CC74();
  MEMORY[0x2318F6370](0);
  return sub_22EE3CCC4();
}

uint64_t sub_22EDF7760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7372656C706D6173 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22EE3CBA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22EDF77F4(uint64_t a1)
{
  v2 = sub_22EE0A408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF7830(uint64_t a1)
{
  v2 = sub_22EE0A408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF786C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95408, &qword_22EE41EE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0A408();
  sub_22EE3CCE4();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95410, &qword_22EE41EF0);
  sub_22EE0A45C();
  sub_22EE3CB44();
  return (*(v5 + 8))(v8, v4);
}

void *sub_22EDF79C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22EE0A534(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_22EDF7A28()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6E496E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_22EDF7A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E496E6F69746361 && a2 == 0xEB00000000786564;
  if (v6 || (sub_22EE3CBA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022EE492D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();

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

uint64_t sub_22EDF7B64(uint64_t a1)
{
  v2 = sub_22EE0A6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF7BA0(uint64_t a1)
{
  v2 = sub_22EE0A6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22EDF7C68(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!HIDWORD(result))
  {
    if ((kperf_kdebug_action_set() & 0x80000000) != 0)
    {
      v10 = MEMORY[0x2318F5610]();
      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      *v11 = 0xD000000000000019;
      *(v11 + 8) = 0x800000022EE48FB0;
      *(v11 + 16) = v10;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v3 = kperf_kdebug_filter_create();
    sub_22EE3C184();
    v4 = kperf_kdebug_filter_add_desc();

    if (v4 < 0)
    {
      v6 = 0x800000022EE48FD0;
      v7 = MEMORY[0x2318F5610](v5);
      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      v9 = 0xD00000000000001BLL;
    }

    else
    {
      if ((kperf_kdebug_filter_set() & 0x80000000) == 0)
      {
        return MEMORY[0x2318F7610](v3);
      }

      v6 = 0x800000022EE48FF0;
      v7 = MEMORY[0x2318F5610]();
      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      v9 = 0xD000000000000019;
    }

    *v8 = v9;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return MEMORY[0x2318F7610](v3);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22EDF7E3C()
{
  if (*v0)
  {
    result = 0x4665736963657270;
  }

  else
  {
    result = 0x6E496E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_22EDF7E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E496E6F69746361 && a2 == 0xEB00000000786564;
  if (v6 || (sub_22EE3CBA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4665736963657270 && a2 == 0xED00007265746C69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();

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

uint64_t sub_22EDF7F74(uint64_t a1)
{
  v2 = sub_22EE0A70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF7FB0(uint64_t a1)
{
  v2 = sub_22EE0A70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF7FEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95430, &qword_22EE41F00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0A70C();
  sub_22EE3CCE4();
  v15 = 0;
  sub_22EE3CB34();
  if (!v4)
  {
    v14 = 1;
    sub_22EE3CB04();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22EDF8180@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22EE0A760(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_22EDF81D0(char a1, unint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    sub_22EE3CBA4();
  }

  result = kperf_timer_lightweight_pet_set();
  if ((result & 0x80000000) != 0)
  {
    v4 = 0x800000022EE49010;
    v5 = 0xD000000000000018;
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = kperf_timer_pet_set();
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v4 = 0xED000072656D6974;
  v5 = 0x2054455020746573;
LABEL_9:
  v6 = MEMORY[0x2318F5610]();
  type metadata accessor for KTraceRecordError();
  sub_22EDD45F0();
  swift_allocError();
  *v7 = v5;
  *(v7 + 8) = v4;
  *(v7 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_22EDF8314()
{
  if (*v0)
  {
    result = 0x646E4972656D6974;
  }

  else
  {
    result = 1701080941;
  }

  *v0;
  return result;
}

uint64_t sub_22EDF834C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v5 || (sub_22EE3CBA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E4972656D6974 && a2 == 0xEA00000000007865)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();

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

uint64_t sub_22EDF8430(uint64_t a1)
{
  v2 = sub_22EE0A90C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF846C(uint64_t a1)
{
  v2 = sub_22EE0A90C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF84A8(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95438, &qword_22EE41F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0A90C();
  sub_22EE3CCE4();
  v15 = a2 & 1;
  v14 = 0;
  sub_22EE0A960();
  sub_22EE3CB44();
  if (!v2)
  {
    v13 = 1;
    sub_22EE3CB34();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22EDF8648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22EE0A9B4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_22EDF869C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x696577746867696CLL;
  }

  else
  {
    v4 = 0x6C616E696769726FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEB00000000746867;
  }

  if (*a2)
  {
    v6 = 0x696577746867696CLL;
  }

  else
  {
    v6 = 0x6C616E696769726FLL;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746867;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();
  }

  return v9 & 1;
}

uint64_t sub_22EDF874C()
{
  v1 = *v0;
  sub_22EE3CC74();
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF87D8()
{
  *v0;
  sub_22EE3C1C4();
}

uint64_t sub_22EDF8850()
{
  v1 = *v0;
  sub_22EE3CC74();
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF88D8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22EE3CA04();

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

void sub_22EDF8938(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E696769726FLL;
  if (*v1)
  {
    v2 = 0x696577746867696CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000746867;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22EDF8A30(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a2 == -1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (((a3 | a2) & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!is_mul_ok(a3, 0x3E8uLL))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v3 = result;
  kperf_ns_to_ticks();
  if (v3)
  {
    if ((kperf_lazy_wait_action_set() & 0x80000000) != 0)
    {
      v4 = "set lightweight PET mode";
      v5 = 0xD000000000000017;
    }

    else
    {
      result = kperf_lazy_wait_time_threshold_set();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v4 = "set up lazy wait action";
      v5 = 0xD00000000000001FLL;
    }
  }

  else
  {
    v5 = 0xD000000000000016;
    if ((kperf_lazy_cpu_action_set() & 0x80000000) != 0)
    {
      v4 = "set up lazy wait time threshold";
    }

    else
    {
      result = kperf_lazy_cpu_time_threshold_set();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v4 = "set up lazy CPU action";
      v5 = 0xD00000000000001ELL;
    }
  }

  v6 = v4 | 0x8000000000000000;
  v7 = MEMORY[0x2318F5610]();
  type metadata accessor for KTraceRecordError();
  sub_22EDD45F0();
  swift_allocError();
  *v8 = v5;
  *(v8 + 8) = v6;
  *(v8 + 16) = v7;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

unint64_t sub_22EDF8B90()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6E496E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_22EDF8BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E496E6F69746361 && a2 == 0xEB00000000786564;
  if (v6 || (sub_22EE3CBA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022EE492F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();

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

uint64_t sub_22EDF8CC0(uint64_t a1)
{
  v2 = sub_22EE0AB74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF8CFC(uint64_t a1)
{
  v2 = sub_22EE0AB74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF8D38(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void *))
{
  v17[0] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6(v14);
  sub_22EE3CCE4();
  v19 = 0;
  v15 = v17[1];
  sub_22EE3CB34();
  if (!v15)
  {
    v18 = 1;
    sub_22EE3CB34();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22EDF8F08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_22EE0ABC8(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_22EDF8F8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22EDE1B04(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22EE3CBA4();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDF9130()
{
  v1 = 0x736E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6465726975716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_22EDF9184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22EE0ADD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22EDF91AC(uint64_t a1)
{
  v2 = sub_22EE0AD80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF91E8(uint64_t a1)
{
  v2 = sub_22EE0AD80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF9224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95450, &unk_22EE41F18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0AD80();
  sub_22EE3CCE4();
  v18 = 0;
  sub_22EE3CB04();
  if (!v5)
  {
    v14[1] = v14[0];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FD8, qword_22EE400D0);
    sub_22EE0FAAC(&qword_27DA95458);
    sub_22EE3CB44();
    v16 = 2;
    sub_22EE3CB14();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22EDF941C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22EE0AEEC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_22EDF9478(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_22EE3CBA4(), result = 0, (v7 & 1) != 0))
  {
    if (sub_22EDF8F8C(v2, v4))
    {
      return v3 ^ v5 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22EDF94F8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x694667756265646BLL;
    v7 = 0xD000000000000012;
    if (a1 != 3)
    {
      v7 = 0x746341667265706BLL;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000013;
    }

    if (!a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7A614C667265706BLL;
    v2 = 0x7A614C667265706BLL;
    if (a1 != 9)
    {
      v2 = 0x72656469766F7270;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D6954667265706BLL;
    v4 = 0x746550667265706BLL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22EDF96A4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22EE3CBA4();
  }

  return v12 & 1;
}

uint64_t sub_22EDF9750(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_22EE3CC74();
  a3(v5);
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF97D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_22EE3C1C4();
}

uint64_t sub_22EDF9844(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_22EE3CC74();
  a4(v6);
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF98AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22EE0B17C();
  *a2 = result;
  return result;
}

unint64_t sub_22EDF98DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22EDF94F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22EDF9924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22EE0B17C();
  *a1 = result;
  return result;
}

uint64_t sub_22EDF9958(uint64_t a1)
{
  v2 = sub_22EE0B328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF9994(uint64_t a1)
{
  v2 = sub_22EE0B328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF99D0(uint64_t result, uint64_t a2)
{
  v4 = v2[4];
  if (v4)
  {
    v5 = v2[3];
    v6 = v2[4];

    result = sub_22EDD1088(v5, v4);
    if (!v3)
    {
      v7 = v2;
      sub_22EDD1254(result, 1);

      v8 = v2[6];
      if (v8)
      {
        v9 = v2[5];
        v10 = v7[6];

        v11 = sub_22EDD1088(v9, v8);
        sub_22EDD1254(v11, 0);
      }
    }
  }

  else if (v2[6])
  {
    v12 = result;
    type metadata accessor for KTraceRecordError();
    sub_22EDD45F0();
    swift_allocError();
    *v14 = v12;
    v14[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_22EDF9AEC(uint64_t result, void *a2, char a3)
{
  if (*(v3 + 16))
  {
    return result;
  }

  v5 = result;
  v6 = sub_22EDF5DE4(*(v3 + 8), *v3);
  ktrace_set_buffer_size(v5, v6);
  ktrace_set_coprocessor_tracing_enabled(v5, (*(v3 + 56) == 2) | *(v3 + 56) & 1);
  v7 = *(v3 + 64);
  if (!v7)
  {
LABEL_33:
    v31 = sub_22EE3C184();
    v32 = ktrace_session_provide(_:_:_:_:_:)(v5, v31 + 32, MEMORY[0x277D84F98], a2, 2);

    if (v32)
    {
      sub_22EDE37CC(aRequired_1);
      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      *v33 = 0x6465726975716552;
      v33[1] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v34 = sub_22EE0B1C8(&unk_2843A2318);
    sub_22EDE37CC(aRequired_1);
    v35 = *(v3 + 152);
    if (!v35)
    {
    }

    v54 = *(v35 + 16);
    if (!v54)
    {
    }

    v36 = 0;
    v52 = a2;
    v53 = v35 + 32;
    v37 = v34 + 56;
    while (1)
    {
      v38 = (v53 + 32 * v36);
      v40 = *v38;
      v39 = v38[1];
      v41 = v38[2];
      if (*(v34 + 16))
      {
        v42 = *(v34 + 40);
        sub_22EE3CC74();
        swift_bridgeObjectRetain_n();

        sub_22EE3C1C4();
        v43 = sub_22EE3CCC4();
        v44 = -1 << *(v34 + 32);
        v45 = v43 & ~v44;
        if ((*(v37 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
        {
          v46 = ~v44;
          while (1)
          {
            v47 = (*(v34 + 48) + 16 * v45);
            v48 = *v47 == v40 && v47[1] == v39;
            if (v48 || (sub_22EE3CBA4() & 1) != 0)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*(v37 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_39;
        }

LABEL_49:
      }

      else
      {
      }

      v49 = sub_22EE3C184();
      v50 = ktrace_session_provide(_:_:_:_:_:)(v5, v49 + 32, v41, v52, a3 & 1);

      if (v50)
      {

        type metadata accessor for KTraceRecordError();
        sub_22EDD45F0();
        swift_allocError();
        *v51 = v40;
        v51[1] = v39;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

LABEL_39:
      ++v36;

      if (v36 == v54)
      {
      }
    }
  }

  result = kperf_reset();
  v8 = *(v7 + 16);
  if (HIDWORD(v8))
  {
    goto LABEL_65;
  }

  v9 = a2;
  v10 = *(v7 + 16);
  result = kperf_action_count_set();
  if (v8)
  {
    v11 = (v7 + 32);
    v12 = 1;
    v13 = v55;
    do
    {
      v14 = *v11;

      sub_22EDF66BC(v12, v14);

      if (v55)
      {
        return result;
      }

      ++v12;
      ++v11;
      --v8;
    }

    while (v8);
    v15 = *(v3 + 72);
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  v13 = v55;
  v15 = *(v3 + 72);
  if (v15)
  {
LABEL_11:
    v16 = *(v15 + 16);
    if (HIDWORD(v16))
    {
LABEL_66:
      __break(1u);
      return result;
    }

    v17 = *(v15 + 16);
    result = kperf_timer_count_set();
    v18 = 0;
    v19 = (v15 + 40);
    while (1)
    {
      if (v16 == v18)
      {
        goto LABEL_22;
      }

      if ((*v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!is_mul_ok(*v19, 0x3E8uLL))
      {
        goto LABEL_61;
      }

      v20 = *(v19 - 1);
      kperf_ns_to_ticks();
      result = kperf_timer_period_set();
      if ((result & 0x80000000) != 0)
      {
        v23 = MEMORY[0x2318F5610]();
        type metadata accessor for KTraceRecordError();
        sub_22EDD45F0();
        swift_allocError();
        *v24 = 0x6972657020746573;
        *(v24 + 8) = 0xEA0000000000646FLL;
        goto LABEL_58;
      }

      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_62;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_64;
      }

      result = kperf_timer_action_set();
      v19 += 2;
      ++v18;
      if ((result & 0x80000000) != 0)
      {
        v22 = 0x800000022EE48F90;
        v23 = MEMORY[0x2318F5610]();
        type metadata accessor for KTraceRecordError();
        sub_22EDD45F0();
        swift_allocError();
        v25 = 0xD000000000000010;
        goto LABEL_57;
      }
    }

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
    goto LABEL_66;
  }

LABEL_22:
  v26 = *(v3 + 96);
  a2 = v9;
  if (v26 && v26[2])
  {
    v27 = v26[4];
    v28 = v26[5];
    v29 = v26[6];

    sub_22EDF7C68(v27);

    if (v13)
    {
      return result;
    }

    a2 = v9;
  }

  v30 = *(v3 + 80);
  if (v30 == 2 || (result = sub_22EDF81D0(v30 & 1, *(v3 + 88)), !v13))
  {
    if ((*(v3 + 120) & 1) != 0 || (result = sub_22EDF8A30(0, *(v3 + 104), *(v3 + 112)), !v13))
    {
      if ((*(v3 + 144) & 1) != 0 || (result = sub_22EDF8A30(1, *(v3 + 128), *(v3 + 136)), !v13))
      {
        if ((kperf_sample_set() & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v22 = 0x800000022EE490B0;
        v23 = MEMORY[0x2318F5610]();
        type metadata accessor for KTraceRecordError();
        sub_22EDD45F0();
        swift_allocError();
        v25 = 0xD000000000000014;
LABEL_57:
        *v24 = v25;
        *(v24 + 8) = v22;
LABEL_58:
        *(v24 + 16) = v23;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }
  }

  return result;
}

void *sub_22EDFA104(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_22EE3C7C4();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22EE09D84(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_22EDFA184(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_22EE3C7C4();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_22EE0B260(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_22EDFA200(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v9 = a1;
  if ((a4 & 1) == 0)
  {
    v23 = *(a1 + 64);
    if (v23 && *(v23 + 16) || (v24 = *(a1 + 72)) != 0 && *(v24 + 16) || *(a1 + 80) != 2 || (*(a1 + 16) & 1) == 0)
    {
      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      v26 = v25;
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_22EE3C864();
      MEMORY[0x2318F58F0](a2, a3);
      v27 = 0xD00000000000004CLL;
      v28 = 0x800000022EE49120;
      goto LABEL_87;
    }

    goto LABEL_37;
  }

  v10 = *(v4 + 64);
  if (!v10)
  {
    v10 = MEMORY[0x277D84F90];
    *(v6 + 64) = MEMORY[0x277D84F90];
    v11 = *(v6 + 72);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_34:
    v11 = MEMORY[0x277D84F90];
    *(v6 + 72) = MEMORY[0x277D84F90];
    goto LABEL_4;
  }

  v11 = *(v6 + 72);
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_4:
  v88 = a4;
  if (*(a1 + 72))
  {
    v12 = *(a1 + 72);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v109 = *(v12 + 16);
  if (v109)
  {
    v13 = *(a1 + 64);

    v14 = 0;
    v15 = (v12 + 40);
    v106 = v12;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_132;
      }

      v5 = *(v15 - 1);
      if (!v13)
      {
        break;
      }

      if (v5 >= *(v13 + 16))
      {

LABEL_100:
        type metadata accessor for KTraceRecordError();
        sub_22EDD45F0();
        swift_allocError();
        v70 = v69;
        sub_22EE3C864();

        v71 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v71);

        MEMORY[0x2318F58F0](0x6579616C206E6920, 0xEA00000000002072);
        MEMORY[0x2318F58F0](a2, a3);
        MEMORY[0x2318F58F0](0xD00000000000001BLL, 0x800000022EE49170);
        v114 = v5;
        v72 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v72);

        *v70 = 0x2072656D6974;
        v70[1] = 0xE600000000000000;
        goto LABEL_88;
      }

      if (v5 < 0)
      {
        goto LABEL_133;
      }

      if (*(v10 + 16) > 0x1EuLL)
      {
        goto LABEL_86;
      }

      if (!v11)
      {
        goto LABEL_147;
      }

      if (*(v11 + 2) > 7uLL)
      {
LABEL_86:

        type metadata accessor for KTraceRecordError();
        sub_22EDD45F0();
        swift_allocError();
        v26 = v64;
        sub_22EE3C864();

        v112 = 0x2072656D6974;
        v113 = 0xE600000000000000;
        v114 = v14;
        v65 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v65);

        MEMORY[0x2318F58F0](0x6579616C206E6920, 0xEA00000000002072);
        MEMORY[0x2318F58F0](a2, a3);
        v28 = 0x800000022EE49190;
        v27 = 0xD00000000000001ALL;
LABEL_87:
        MEMORY[0x2318F58F0](v27, v28);
        v66 = v113;
        *v26 = v112;
        v26[1] = v66;
LABEL_88:
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      v9 = *v15;
      v16 = *(v13 + 32 + 8 * v5);
      v10 = *(v6 + 64);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_22EE05BFC(0, *(v10 + 16) + 1, 1, v10);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        v10 = sub_22EE05BFC((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 16) = v18 + 1;
      *(v10 + 8 * v18 + 32) = v16;
      v98[8] = v10;
      v19 = *(v10 + 16);
      v11 = v98[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_22EE06098(0, *(v11 + 2) + 1, 1, v11, &qword_27DA956D8, &qword_22EE435C8);
      }

      v21 = *(v11 + 2);
      v20 = *(v11 + 3);
      v5 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v11 = sub_22EE06098((v20 > 1), v21 + 1, 1, v11, &qword_27DA956D8, &qword_22EE435C8);
      }

      ++v14;
      *(v11 + 2) = v5;
      v22 = &v11[16 * v21];
      *(v22 + 4) = v19;
      *(v22 + 5) = v9;
      v6 = v98;
      v98[9] = v11;
      v15 += 2;
      v12 = v106;
      if (v109 == v14)
      {
        goto LABEL_36;
      }
    }

    if (v5 < 0)
    {
      goto LABEL_136;
    }

    goto LABEL_100;
  }

LABEL_36:

  v9 = a1;
  a4 = v88;
LABEL_37:
  v29 = *(v9 + 152);
  if (v29)
  {
    if (*(v6 + 152))
    {
      v30 = *(v6 + 152);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v14 = *(v29 + 16);
    if (v14)
    {
      v89 = a4;
      v91 = v9;
      v13 = v29 + 32;

      v9 = 0;
      v92 = v13;
      v93 = v14;
      while (1)
      {
        v31 = v13 + 32 * v9;
        v10 = *v31;
        v5 = *(v31 + 8);
        v110 = *(v31 + 16);
        v99 = *(v31 + 24);
        v6 = *(v30 + 2);
        v103 = v5;
        if (!v6)
        {
LABEL_53:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_22EE05D08(0, v6 + 1, 1, v30);
          }

          v34 = *(v30 + 2);
          v33 = *(v30 + 3);
          if (v34 >= v33 >> 1)
          {
            v30 = sub_22EE05D08((v33 > 1), v34 + 1, 1, v30);
          }

          *(v30 + 2) = v34 + 1;
          v35 = &v30[32 * v34];
          *(v35 + 4) = v10;
          *(v35 + 5) = v103;
          *(v35 + 6) = v110;
          v35[56] = v99;
          goto LABEL_44;
        }

        v15 = 0;
        v11 = 0;
        while (1)
        {
          v32 = *(v15 + v30 + 32) == v10 && *(v15 + v30 + 40) == v5;
          if (v32 || (sub_22EE3CBA4() & 1) != 0)
          {
            break;
          }

          ++v11;
          v15 += 4;
          if (v6 == v11)
          {
            goto LABEL_53;
          }
        }

        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_22EE05A68(v30);
        }

        if (v11 >= *(v30 + 2))
        {
          goto LABEL_134;
        }

        v96 = v9;
        v97 = v30;
        v36 = v15 + v30;
        v37 = *(v15 + v30 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *(v36 + 6);
        v112 = v10;
        v95 = v36;
        *(v36 + 6) = 0x8000000000000000;
        v39 = v110 + 64;
        v40 = -1 << *(v110 + 32);
        if (-v40 < 64)
        {
          v41 = ~(-1 << -v40);
        }

        else
        {
          v41 = -1;
        }

        v9 = v41 & *(v110 + 64);
        v94 = -1 << *(v110 + 32);
        v42 = (63 - v40) >> 6;

        v43 = 0;
        v100 = v42;
LABEL_67:
        if (v9)
        {
          v107 = isUniquelyReferenced_nonNull_native;
          v14 = v43;
          goto LABEL_74;
        }

        v46 = v43;
        while (1)
        {
          v14 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            __break(1u);
            goto LABEL_117;
          }

          if (v14 >= v42)
          {
            break;
          }

          v9 = *(v39 + 8 * v14);
          ++v46;
          if (v9)
          {
            v107 = isUniquelyReferenced_nonNull_native;
LABEL_74:
            v47 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
            v48 = (*(v110 + 48) + v47);
            v5 = *v48;
            v49 = v48[1];
            v50 = (*(v110 + 56) + v47);
            v51 = v50[1];
            v105 = *v50;

            v6 = sub_22EDE1B04(v5, v49);
            v53 = *(v10 + 16);
            v54 = (v52 & 1) == 0;
            v55 = v53 + v54;
            if (!__OFADD__(v53, v54))
            {
              v13 = v52;
              if (*(v10 + 24) >= v55)
              {
                if ((v107 & 1) == 0)
                {
                  sub_22EE05548();
                }
              }

              else
              {
                sub_22EE04B40(v55, v107 & 1);
                v56 = sub_22EDE1B04(v5, v49);
                if ((v13 & 1) != (v57 & 1))
                {
                  goto LABEL_149;
                }

                v6 = v56;
              }

              v9 &= v9 - 1;
              v10 = v112;
              if (v13)
              {

                v44 = (*(v112 + 56) + 16 * v6);
                v45 = v44[1];
                *v44 = v105;
                v44[1] = v51;

                goto LABEL_66;
              }

              *(v112 + 8 * (v6 >> 6) + 64) |= 1 << v6;
              v58 = (*(v10 + 48) + 16 * v6);
              *v58 = v5;
              v58[1] = v49;
              v59 = (*(v10 + 56) + 16 * v6);
              *v59 = v105;
              v59[1] = v51;
              v60 = *(v10 + 16);
              v61 = __OFADD__(v60, 1);
              v62 = v60 + 1;
              if (v61)
              {
                goto LABEL_131;
              }

              *(v10 + 16) = v62;
LABEL_66:
              isUniquelyReferenced_nonNull_native = 1;
              v43 = v14;
              v39 = v110 + 64;
              v5 = v103;
              v42 = v100;
              goto LABEL_67;
            }

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
            goto LABEL_137;
          }
        }

        v6 = v110;
        sub_22ED97F20();

        v63 = *(v95 + 6);
        *(v95 + 6) = v10;

        if (v99)
        {
          v9 = v96;
          v30 = v97;
          v13 = v92;
          v14 = v93;
          if (v11 >= *(v97 + 2))
          {
            goto LABEL_135;
          }

          *(v15 + v97 + 56) = 1;
        }

        else
        {
          v9 = v96;
          v30 = v97;
          v13 = v92;
          v14 = v93;
        }

LABEL_44:
        if (++v9 == v14)
        {

          v6 = v98;
          v9 = v91;
          a4 = v89;
          break;
        }
      }
    }

    *(v6 + 152) = v30;
  }

  v13 = *(v9 + 96);
  if (!v13)
  {
    return sub_22EDD1B30(*(v9 + 160), *(v9 + 168));
  }

  if (!*(v13 + 16))
  {
    v5 = *(v6 + 96);
    v73 = *(v9 + 96);

    if (v5)
    {
LABEL_128:
      v112 = v5;
      sub_22EDFAF0C(v13);
      *(v6 + 96) = v112;
      return sub_22EDD1B30(*(v9 + 160), *(v9 + 168));
    }

    goto LABEL_103;
  }

  v10 = *(v13 + 32);
  v11 = *(v13 + 40);
  v15 = *(v13 + 48);
  v6 = *(v6 + 96);
  if (!v6 || !*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95460, &qword_22EE41F28);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22EE3F500;
    *(v5 + 32) = v10;
    *(v5 + 40) = v11;
    *(v5 + 48) = v15;

    v6 = v98;
LABEL_127:
    *(v6 + 96) = v5;
    if (v5)
    {
      goto LABEL_128;
    }

LABEL_103:
    *(v6 + 96) = v13;
    return sub_22EDD1B30(*(v9 + 160), *(v9 + 168));
  }

  v14 = *(v6 + 32);
  v5 = *(v6 + 48);
  if (v14 != v10)
  {
    if (a4)
    {
      v74 = v98[8];
      if (v74)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_141;
        }

        v75 = *(v74 + 16);
        if (v10 >= v75)
        {
          goto LABEL_142;
        }

        if (v14 >= v75)
        {
          goto LABEL_143;
        }

        v76 = v74 + 32;
        v77 = *(v76 + 8 * v10);
        v78 = *(v76 + 8 * v14);
        v79 = *(v9 + 96);

        v111 = v5;

        v81 = sub_22EE0B2B4(v80);

        v114 = v81;
        v82 = *(v77 + 16);
        if (v82)
        {

          v83 = 32;
          do
          {
            sub_22EE02814(&v112, *(v77 + v83++));
            --v82;
          }

          while (v82);

          v81 = v114;
        }

        v84 = *(v81 + 16);
        if (v84)
        {
          v101 = sub_22EE064A8(*(v81 + 16), 0);
          v108 = sub_22EE09E18(&v112, v101 + 32, v84, v81);

          sub_22ED97F20();
          if (v108 != v84)
          {
            goto LABEL_146;
          }

          v10 = v101;
        }

        else
        {

          v10 = MEMORY[0x277D84F90];
        }

        v6 = v98[8];
        v5 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_120;
      }

      goto LABEL_148;
    }

LABEL_117:
    type metadata accessor for KTraceRecordError();
    sub_22EDD45F0();
    swift_allocError();
    *v85 = 0xD000000000000048;
    v85[1] = 0x800000022EE490D0;
    goto LABEL_88;
  }

  v68 = *(v9 + 96);

  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (!*(v6 + 16))
      {
        goto LABEL_138;
      }
    }

    else
    {
LABEL_137:
      v6 = sub_22EE05A40(v6);
      if (!*(v6 + 16))
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }
    }

    v10 = v6 + 40;
    MEMORY[0x2318F58F0](44, 0xE100000000000000);
    v98[12] = v6;
    v6 = v98;

    v5 = v98[12];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (*(v5 + 16))
      {
        goto LABEL_126;
      }

      goto LABEL_140;
    }

LABEL_139:
    v5 = sub_22EE05A40(v5);
    if (*(v5 + 16))
    {
LABEL_126:
      MEMORY[0x2318F58F0](v11, v15);

      goto LABEL_127;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    v6 = sub_22EE05A54(v6);
LABEL_120:
    if (v14 >= *(v6 + 16))
    {
      break;
    }

    v86 = v6 + 8 * v14;
    v87 = *(v86 + 32);
    *(v86 + 32) = v10;

    v98[8] = v6;
    v6 = v98[12];
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  result = sub_22EE3CBE4();
  __break(1u);
  return result;
}

uint64_t sub_22EDFAF0C(uint64_t result)
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

  result = sub_22EE05ADC(result, v11, 1, v3);
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

uint64_t sub_22EDFB004(uint64_t result)
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

  result = sub_22EE05D08(result, v11, 1, v3);
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

uint64_t sub_22EDFB0F8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_22ED80F70(v11))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    memcpy(__dst, (*(v1 + 48) + 328 * (v9 | (v8 << 6))), 0x141uLL);
    sub_22ED80E90(__dst, v11);
    sub_22EE02C5C(__src, __dst);
    memcpy(v11, __src, 0x141uLL);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDFB208(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 && v2[2])
  {
    v4 = v2[4];
    v5 = *(v1 + 72);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v2[2])
      {
LABEL_5:
        v2[4] = v4;
        v2[5] = a1;
        *(v1 + 72) = v2;
        return result;
      }
    }

    else
    {
      result = sub_22EE05A7C(v2);
      v2 = result;
      if (*(result + 16))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for KTraceRecordError();
    sub_22EDD45F0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22EDFB2CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95468, &qword_22EE41F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0B328();
  sub_22EE3CCE4();
  v19 = *v3;
  v20 = *(v3 + 16);
  v18 = 0;
  sub_22EE0B37C();
  sub_22EE3CAD4();
  if (!v2)
  {
    v11 = *(v3 + 3);
    v12 = *(v3 + 4);
    LOBYTE(v19) = 1;
    sub_22EE3CA94();
    v13 = *(v3 + 5);
    v14 = *(v3 + 6);
    LOBYTE(v19) = 2;
    sub_22EE3CA94();
    v15 = *(v3 + 56);
    LOBYTE(v19) = 3;
    sub_22EE3CAA4();
    *&v19 = *(v3 + 8);
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95480, &qword_22EE41F38);
    sub_22EE0B3D0();
    sub_22EE3CAD4();
    *&v19 = *(v3 + 9);
    v18 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95498, &qword_22EE41F40);
    sub_22EE0B4A8();
    sub_22EE3CAD4();
    v19 = v3[5];
    v18 = 6;
    sub_22EE0B580();
    sub_22EE3CAD4();
    *&v19 = *(v3 + 12);
    v18 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA954B8, &qword_22EE41F48);
    sub_22EE0B5D4();
    sub_22EE3CAD4();
    v19 = *(v3 + 104);
    v20 = *(v3 + 120);
    v18 = 8;
    sub_22EE0B6AC();
    sub_22EE3CAD4();
    v19 = v3[8];
    v20 = *(v3 + 144);
    v18 = 9;
    sub_22EE3CAD4();
    *&v19 = *(v3 + 19);
    v18 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA954D8, &qword_22EE41F50);
    sub_22EE0B700();
    sub_22EE3CAD4();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_22EDFB6C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22EE0B878(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_22EDFB740()
{
  v1 = 0x736973706F6E7973;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73657361696C61;
  }
}

uint64_t sub_22EDFB79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22EE0C2CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22EDFB7C4(uint64_t a1)
{
  v2 = sub_22EE0C1F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDFB800(uint64_t a1)
{
  v2 = sub_22EE0C1F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDFB83C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA954F0, &qword_22EE41F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0C1F4();
  sub_22EE3CCE4();
  *&v25 = *v3;
  LOBYTE(v24[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EE0DA88(&qword_27DA954F8);
  sub_22EE3CAD4();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v25) = 1;
    sub_22EE3CB04();
    v13 = *(v3 + 136);
    v14 = *(v3 + 168);
    v36[8] = *(v3 + 152);
    v36[9] = v14;
    v36[10] = *(v3 + 184);
    v15 = *(v3 + 72);
    v16 = *(v3 + 104);
    v36[4] = *(v3 + 88);
    v36[5] = v16;
    v36[6] = *(v3 + 120);
    v36[7] = v13;
    v17 = *(v3 + 40);
    v36[0] = *(v3 + 24);
    v36[1] = v17;
    v36[2] = *(v3 + 56);
    v36[3] = v15;
    v18 = *(v3 + 136);
    v19 = *(v3 + 168);
    v33 = *(v3 + 152);
    v34 = v19;
    v35 = *(v3 + 184);
    v20 = *(v3 + 72);
    v21 = *(v3 + 104);
    v29 = *(v3 + 88);
    v30 = v21;
    v31 = *(v3 + 120);
    v32 = v18;
    v22 = *(v3 + 40);
    v25 = *(v3 + 24);
    v26 = v22;
    v27 = *(v3 + 56);
    v28 = v20;
    v37 = 2;
    sub_22EE0C1BC(v36, v24);
    sub_22EE0C248();
    sub_22EE3CB44();
    v24[8] = v33;
    v24[9] = v34;
    v24[10] = v35;
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    sub_22EE0C29C(v24);
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_22EDFBB20@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22EE0C3E4(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_22EDFBBBC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701667182;
    v7 = 0xD000000000000010;
    v8 = 0x4E70756F7247646FLL;
    if (a1 != 3)
    {
      v8 = 0x6168436B63616C73;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E6F6973726576;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x73676E6974746573;
    v2 = 0x4C746C7561666564;
    if (a1 != 9)
    {
      v2 = 0x73726579616CLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    v4 = 0x736973706F6E7973;
    if (a1 != 6)
    {
      v4 = 0x746E656D75636F64;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22EDFBDA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22EE0C7BC();
  *a2 = result;
  return result;
}

unint64_t sub_22EDFBDD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22EDFBBBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22EDFBE1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22EE0C7BC();
  *a1 = result;
  return result;
}

uint64_t sub_22EDFBE44(uint64_t a1)
{
  v2 = sub_22EE0D9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDFBE80(uint64_t a1)
{
  v2 = sub_22EE0D9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22EDFBEBC()
{
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = *(v0 + 296);
  v5 = v2 - 1;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v1 + 40 + 16 * v3);
    v8 = v3;
    while (1)
    {
      if (v8 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      if (*(v4 + 16))
      {
        break;
      }

LABEL_4:
      ++v8;
      v7 += 2;
      if (v2 == v8)
      {
        return;
      }
    }

    v10 = *(v7 - 1);
    v9 = *v7;

    v11 = sub_22EDE1B04(v10, v9);
    if ((v12 & 1) == 0)
    {

      goto LABEL_4;
    }

    v13 = *(v4 + 56) + 200 * v11;
    v49 = *v13;
    v14 = *(v13 + 48);
    v15 = *(v13 + 64);
    v16 = *(v13 + 32);
    v50 = *(v13 + 16);
    v51 = v16;
    v52 = v14;
    v53 = v15;
    v17 = *(v13 + 80);
    v18 = *(v13 + 96);
    v19 = *(v13 + 128);
    v56 = *(v13 + 112);
    v57 = v19;
    v54 = v17;
    v55 = v18;
    v20 = *(v13 + 144);
    v21 = *(v13 + 160);
    v22 = *(v13 + 176);
    v61 = *(v13 + 192);
    v59 = v21;
    v60 = v22;
    v58 = v20;
    sub_22EE0C808(&v49, &v36);
    v35 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_22EE05E14(0, v6[2] + 1, 1, v6);
    }

    v24 = v6[2];
    v23 = v6[3];
    if (v24 >= v23 >> 1)
    {
      v6 = sub_22EE05E14((v23 > 1), v24 + 1, 1, v6);
    }

    v3 = v8 + 1;
    v38 = v51;
    v39 = v52;
    v42 = v55;
    v43 = v56;
    v40 = v53;
    v41 = v54;
    v48 = v61;
    v46 = v59;
    v47 = v60;
    v44 = v57;
    v45 = v58;
    v36 = v49;
    v37 = v50;
    v6[2] = v24 + 1;
    v25 = &v6[27 * v24];
    v25[4] = v10;
    v25[5] = v9;
    *(v25 + 3) = v36;
    v26 = v37;
    v27 = v38;
    v28 = v40;
    *(v25 + 6) = v39;
    *(v25 + 7) = v28;
    *(v25 + 4) = v26;
    *(v25 + 5) = v27;
    v29 = v41;
    v30 = v42;
    v31 = v44;
    *(v25 + 10) = v43;
    *(v25 + 11) = v31;
    *(v25 + 8) = v29;
    *(v25 + 9) = v30;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v25[30] = v48;
    *(v25 + 13) = v33;
    *(v25 + 14) = v34;
    *(v25 + 12) = v32;
    v5 = v35;
  }

  while (v35 != v8);
}

uint64_t sub_22EDFC0E0()
{
  v0 = sub_22EE3BA34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  __swift_allocate_value_buffer(v9, qword_27DA9C930);
  __swift_project_value_buffer(v0, qword_27DA9C930);
  sub_22EE3B9F4();
  sub_22EE3BA14();
  sub_22EE3BA24();
  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v8, v0);
  sub_22EE3BA04();
  sub_22EE3BA24();
  v12(v8, v0);
  return (v12)(v11, v0);
}

uint64_t sub_22EDFC284()
{
  v2 = *v0;
  v1 = v0[1];
  v21 = v0[10];
  v20 = v0[11];
  v3 = *(v0 + 128);
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[26];
  v7 = qword_27DA983E0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_22EE3BA34();
  __swift_project_value_buffer(v8, qword_27DA9C930);
  sub_22ED80FA0();
  sub_22EE3C684();
  if (v9)
  {
    if (v3)
    {

      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      *v10 = 0xD00000000000002FLL;
      v10[1] = 0x800000022EE491B0;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    if (v4 && *(v4 + 16) >= 0x20uLL)
    {

      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      v13 = 0x63615F667265706BLL;
      v14 = 0xED0000736E6F6974;
    }

    else
    {
      if (!v5 || *(v5 + 16) < 9uLL)
      {
        if (!v6 || *(v6 + 16) < 2uLL)
        {
          if (sub_22EE3C1D4() <= 79 && sub_22EE3C1D4())
          {
          }

          type metadata accessor for KTraceRecordError();
          sub_22EDD45F0();
          swift_allocError();
          v18 = v17;
          v19 = sub_22EE3C1D4();
          *v18 = v2;
          v18[1] = v1;
          v18[2] = v19;
          goto LABEL_22;
        }

        type metadata accessor for KTraceRecordError();
        sub_22EDD45F0();
        swift_allocError();
        *v12 = 0xD000000000000015;
        v12[1] = 0x800000022EE491E0;
        v15 = 1;
        goto LABEL_17;
      }

      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      v13 = 0x69745F667265706BLL;
      v14 = 0xEC0000007372656DLL;
    }

    *v12 = v13;
    v12[1] = v14;
    v15 = 31;
LABEL_17:
    v12[2] = v15;
    goto LABEL_22;
  }

  type metadata accessor for KTraceRecordError();
  sub_22EDD45F0();
  swift_allocError();
  *v11 = 1701667182;
  v11[1] = 0xE400000000000000;
  v11[2] = v2;
  v11[3] = v1;
  swift_storeEnumTagMultiPayload();

  return swift_willThrow();
}

void *sub_22EDFC60C@<X0>(void *a1@<X8>)
{
  v3 = sub_22EE3B954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 312;
  result = sub_22EE3BCD4();
  if (!v1)
  {
    v10 = result;
    v11 = v9;
    v20 = a1;
    v12 = sub_22EE3B994();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_22EE3B984();
    sub_22EE3B944();
    (*(v4 + 104))(v7, *MEMORY[0x277CC86A8], v3);
    sub_22EE3B964();
    sub_22EE0C840();
    sub_22EE3B974();
    memcpy(v18, v19, 0x141uLL);
    memcpy(v17, v19, sizeof(v17));
    sub_22ED80E90(v18, v16);
    sub_22EDFC284();
    memcpy(v16, v17, 0x141uLL);
    sub_22ED80F70(v16);
    sub_22EDFC8B0();

    sub_22EDD4074(v10, v11);
    return memcpy(v20, v19, 0x141uLL);
  }

  return result;
}

uint64_t sub_22EDFC8B0()
{
  v2 = v0;
  result = sub_22EDF99D0(*v0, v0[1]);
  if (!v1)
  {
    v37 = 0;
    v4 = v0[37];
    v7 = *(v4 + 64);
    v6 = v4 + 64;
    v5 = v7;
    v8 = 1 << *(v0[37] + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & v5;
    v11 = (v8 + 63) >> 6;
    v34 = v0[37];

    v12 = 0;
    while (v10)
    {
LABEL_12:
      v14 = (*(v34 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = *v14;
      v15 = v14[1];

      v17 = v2;
      v18 = sub_22EE065B4(v35, v16, v15);
      v20 = v19;
      memmove(__dst, v19, 0xC8uLL);
      result = sub_22EE0C894(__dst);
      if (result == 1)
      {
        goto LABEL_25;
      }

      v21 = v20[7];
      if (v21)
      {
        v33 = v18;
        v22 = v20[6];

        v23 = v21;
        v24 = v37;
        v25 = sub_22EDD1088(v22, v23);
        v37 = v24;
        if (v24)
        {
          goto LABEL_23;
        }

        sub_22EDD1254(v25, 1);

        v26 = v20[9];
        if (v26)
        {
          v27 = v20[8];
          v28 = v20[9];

          v29 = v26;
          v30 = v37;
          v31 = sub_22EDD1088(v27, v29);
          v37 = v30;
          if (v30)
          {
            goto LABEL_23;
          }

          sub_22EDD1254(v31, 0);
        }

        v18 = v33;
      }

      else if (v20[9])
      {
        v33 = v18;
        type metadata accessor for KTraceRecordError();
        sub_22EDD45F0();
        swift_allocError();
        *v32 = v16;
        v32[1] = v15;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_23:
        (v33)(v35, 0);
      }

      v10 &= v10 - 1;
      (v18)(v35, 0);

      v2 = v17;
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
      }

      v10 = *(v6 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22EDFCB40(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  result = sub_22EE0C8AC(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_22EDFCB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22EE06F74(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_22EDE1B04(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_22EE058D0();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_22EE06DC4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_22EDFCC60(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = v4[37];
  v9 = sub_22EDF68D0(v8);
  v10 = v5;
  v243 = sub_22EE0B1C8(v9);

  v11 = sub_22EE0D244(v8, a1, a2);
  v262 = a1;

  v245 = a2;

  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  v242 = v4;
  v251 = v11 + 64;
  v240 = v11;
  if (!v15)
  {
    while (1)
    {
LABEL_5:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v255 = v10;
        v18 = v19;
        goto LABEL_9;
      }
    }

    v44 = v4[33];
    v239 = v44;
    if (v44)
    {
      v45 = *(v44 + 16);
      v46 = MEMORY[0x277D84F90];
      v47 = v245;
      if (v45)
      {
        v48 = v10;
        *&v259[0] = MEMORY[0x277D84F90];
        sub_22EDD2DD4(0, v45, 0);
        v46 = *&v259[0];
        v49 = (v44 + 40);
        do
        {
          v51 = *(v49 - 1);
          v50 = *v49;
          *&v259[0] = v46;
          v53 = *(v46 + 16);
          v52 = *(v46 + 24);

          if (v53 >= v52 >> 1)
          {
            sub_22EDD2DD4((v52 > 1), v53 + 1, 1);
            v46 = *&v259[0];
          }

          *(v46 + 16) = v53 + 1;
          v54 = v46 + 16 * v53;
          *(v54 + 32) = v51;
          *(v54 + 40) = v50;
          v49 += 4;
          --v45;
        }

        while (v45);
        v10 = v48;
      }
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
      v47 = v245;
    }

    v55 = sub_22EE0B1C8(v46);

    v56 = v243;

    v58 = sub_22EDFDF84(v57, v243);
    v59 = v262;
    if (*(v58 + 16) <= *(v47 + 16) >> 3)
    {
      *&v259[0] = v47;

      sub_22EE070F0(v58);

      v22 = *&v259[0];
      if (!*(*&v259[0] + 16))
      {
        goto LABEL_30;
      }

LABEL_26:

      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      v61 = v60;
      *&v259[0] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95510, &qword_22EE41F68);
      sub_22EE0D944(&qword_27DA95518, &qword_27DA95510, &qword_22EE41F68);
      sub_22ED80FA0();
      v62 = sub_22EE3C364();
      v64 = v63;

      *v61 = v62;
      v61[1] = v64;
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      v22 = sub_22EE0721C(v58, v47);

      if (v22[2])
      {
        goto LABEL_26;
      }

LABEL_30:

      v66 = v239;
      if (v239)
      {
        v233 = v55;
        v252 = *(v239 + 16);
        v256 = v10;
        if (v252)
        {
          v67 = 0;
          v68 = v59 + 56;
          v69 = v47 + 56;
          v236 = MEMORY[0x277D84F90];
LABEL_33:
          v70 = v67;
          while (v70 < *(v66 + 16))
          {
            v67 = v70 + 1;
            if (*(v59 + 16))
            {
              v71 = v239 + 32 + 32 * v70;
              v73 = *v71;
              v72 = *(v71 + 8);
              v74 = *(v71 + 16);
              v248 = *(v71 + 24);
              v75 = *(v59 + 40);
              sub_22EE3CC74();
              swift_bridgeObjectRetain_n();

              sub_22EE3C1C4();
              v76 = sub_22EE3CCC4();
              v77 = -1 << *(v59 + 32);
              v78 = v76 & ~v77;
              if ((*(v68 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
              {
                v79 = ~v77;
                while (1)
                {
                  v80 = (*(v262 + 48) + 16 * v78);
                  v81 = *v80 == v73 && v80[1] == v72;
                  if (v81 || (sub_22EE3CBA4() & 1) != 0)
                  {
                    break;
                  }

                  v78 = (v78 + 1) & v79;
                  if (((*(v68 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
                  {
                    goto LABEL_57;
                  }
                }

                if (*(v47 + 16))
                {
                  v82 = *(v47 + 40);
                  sub_22EE3CC74();
                  sub_22EE3C1C4();
                  v83 = sub_22EE3CCC4();
                  v84 = -1 << *(v47 + 32);
                  v85 = v83 & ~v84;
                  if ((*(v69 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85))
                  {
                    v86 = ~v84;
                    while (1)
                    {
                      v87 = (*(v47 + 48) + 16 * v85);
                      v88 = *v87 == v73 && v87[1] == v72;
                      if (v88 || (sub_22EE3CBA4() & 1) != 0)
                      {
                        break;
                      }

                      v85 = (v85 + 1) & v86;
                      if (((*(v69 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
                      {
                        goto LABEL_58;
                      }
                    }

LABEL_57:
                    v59 = v262;
                    goto LABEL_34;
                  }
                }

LABEL_58:

                v89 = v236;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v258 = v236;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_22EE02370(0, *(v236 + 2) + 1, 1);
                  v89 = v258;
                }

                v92 = *(v89 + 2);
                v91 = *(v89 + 3);
                if (v92 >= v91 >> 1)
                {
                  sub_22EE02370((v91 > 1), v92 + 1, 1);
                  v89 = v258;
                }

                *(v89 + 2) = v92 + 1;
                v236 = v89;
                v93 = &v89[32 * v92];
                *(v93 + 4) = v73;
                *(v93 + 5) = v72;
                *(v93 + 6) = v74;
                v93[56] = v248;
                v47 = v245;
                v66 = v239;
                v59 = v262;
                if (v67 != v252)
                {
                  goto LABEL_33;
                }

                goto LABEL_67;
              }

LABEL_34:

              v66 = v239;
            }

            v70 = v67;
            if (v67 == v252)
            {
              goto LABEL_67;
            }
          }

LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        v236 = MEMORY[0x277D84F90];
LABEL_67:
        v10 = v256;
        v56 = v243;
        v55 = v233;
      }

      else
      {
        v236 = MEMORY[0x277D84F90];
      }

      v94 = sub_22EDFDF84(v56, v55);
      if (*(v94 + 16) <= *(v59 + 16) >> 3)
      {
        *&v259[0] = v59;

        sub_22EE070F0(v94);

        v95 = *&v259[0];
      }

      else
      {

        v95 = sub_22EE0721C(v94, v59);
      }

      v96 = v10;
      v97 = sub_22EDF7464(v95);

      if (v239)
      {
        v98 = v239;
      }

      else
      {
        v98 = MEMORY[0x277D84F90];
      }

      *&v259[0] = v236;

      sub_22EDFB004(v97);
      v99 = *&v259[0];
      v220 = *(*&v259[0] + 16);
      if (v220)
      {
        v100 = 0;
        v221 = *&v259[0] + 32;
        v22 = v242;
        v219 = *&v259[0];
        while (1)
        {
          if (v100 >= *(v99 + 16))
          {
            goto LABEL_196;
          }

          v102 = (v221 + 32 * v100);
          v103 = *v102;
          v104 = v102[1];
          v105 = v102[2];

          v262 = v103;
          v106 = sub_22EE0C8AC(v103, v104, a3 & 1, a4);
          v246 = v109;
          if (v96)
          {
            break;
          }

          if (!v107)
          {

            v22 = type metadata accessor for KTraceRecordError();
            sub_22EDD45F0();
            swift_allocError();
            *v215 = v262;
            v215[1] = v104;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            goto LABEL_181;
          }

          v223 = v106;
          v224 = v107;
          v226 = v108;
          v110 = v22[39];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_22EDDA224(0, *(v110 + 2) + 1, 1, v110);
          }

          v112 = *(v110 + 2);
          v111 = *(v110 + 3);
          v113 = v262;
          v237 = v98;
          if (v112 >= v111 >> 1)
          {
            v157 = sub_22EDDA224((v111 > 1), v112 + 1, 1, v110);
            v113 = v262;
            v110 = v157;
          }

          v231 = v104;
          v234 = v100 + 1;
          *(v110 + 2) = v112 + 1;
          v114 = &v110[16 * v112];
          *(v114 + 4) = v113;
          *(v114 + 5) = v104;
          v242[39] = v110;

          v115 = swift_isUniquelyReferenced_nonNull_native();
          *&v259[0] = v105;
          v116 = v246 + 64;
          v117 = -1 << *(v246 + 32);
          if (-v117 < 64)
          {
            v118 = ~(-1 << -v117);
          }

          else
          {
            v118 = -1;
          }

          v119 = v118 & *(v246 + 64);
          v228 = -1 << *(v246 + 32);
          v120 = (63 - v117) >> 6;

          v121 = 0;
          v122 = v105;
          while (v119)
          {
            v253 = v115;
            v125 = v121;
LABEL_98:
            v127 = (v125 << 10) | (16 * __clz(__rbit64(v119)));
            v128 = (*(v246 + 48) + v127);
            v129 = *v128;
            v130 = v128[1];
            v131 = (*(v246 + 56) + v127);
            v132 = v131[1];
            v249 = *v131;

            v134 = sub_22EDE1B04(v129, v130);
            v135 = v122[2];
            v136 = (v133 & 1) == 0;
            v137 = v135 + v136;
            if (__OFADD__(v135, v136))
            {
              goto LABEL_190;
            }

            v138 = v133;
            if (v122[3] >= v137)
            {
              if ((v253 & 1) == 0)
              {
                sub_22EE05548();
              }
            }

            else
            {
              sub_22EE04B40(v137, v253 & 1);
              v139 = sub_22EDE1B04(v129, v130);
              if ((v138 & 1) != (v140 & 1))
              {
                goto LABEL_204;
              }

              v134 = v139;
            }

            v119 &= v119 - 1;
            v122 = *&v259[0];
            if (v138)
            {

              v123 = (v122[7] + 16 * v134);
              v124 = v123[1];
              *v123 = v249;
              v123[1] = v132;
            }

            else
            {
              *(*&v259[0] + 8 * (v134 >> 6) + 64) |= 1 << v134;
              v141 = (v122[6] + 16 * v134);
              *v141 = v129;
              v141[1] = v130;
              v142 = (v122[7] + 16 * v134);
              *v142 = v249;
              v142[1] = v132;
              v143 = v122[2];
              v144 = __OFADD__(v143, 1);
              v145 = v143 + 1;
              if (v144)
              {
                goto LABEL_192;
              }

              v122[2] = v145;
            }

            v115 = 1;
            v121 = v125;
            v116 = v246 + 64;
            v47 = v245;
          }

          v126 = v121;
          while (1)
          {
            v125 = v126 + 1;
            if (__OFADD__(v126, 1))
            {
              __break(1u);
LABEL_183:

              v22 = MEMORY[0x277D84F90];
LABEL_184:
              v216 = *(v240 + 16);
              if (v216)
              {
                v217 = sub_22EDF3184(*(v240 + 16), 0);
                v218 = sub_22EE09F14(v259, v217 + 4, v216, v240);
                sub_22ED97F20();
                if (v218 == v216)
                {
                  return v22;
                }

                __break(1u);
              }

              return v22;
            }

            if (v125 >= v120)
            {
              break;
            }

            v119 = *(v116 + 8 * v125);
            ++v126;
            if (v119)
            {
              v253 = v115;
              goto LABEL_98;
            }
          }

          sub_22ED97F20();

          v100 = v234;
          v98 = v237;
          v146 = *(v237 + 16);
          v147 = v262;
          if (v146)
          {
            v148 = 0;
            v149 = 56;
            while (*(v237 + v149 - 24) != v147 || *(v237 + v149 - 16) != v231)
            {
              v151 = sub_22EE3CBA4();
              v147 = v262;
              if (v151)
              {
                break;
              }

              ++v148;
              v149 += 32;
              if (v146 == v148)
              {
                goto LABEL_115;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = sub_22EE05A68(v237);
            }

            if (v148 >= *(v98 + 2))
            {
              goto LABEL_197;
            }

            v154 = &v98[v149];
            v156 = *&v98[v149 - 16];
            v155 = *(v154 - 1);
            *(v154 - 3) = v223;
            *(v154 - 2) = v224;
            *(v154 - 1) = v122;
            *v154 = v226 & 1;
          }

          else
          {
LABEL_115:

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = sub_22EE05D08(0, *(v237 + 16) + 1, 1, v237);
            }

            v153 = *(v98 + 2);
            v152 = *(v98 + 3);
            if (v153 >= v152 >> 1)
            {
              v98 = sub_22EE05D08((v152 > 1), v153 + 1, 1, v98);
            }

            *(v98 + 2) = v153 + 1;
            v101 = &v98[32 * v153];
            *(v101 + 4) = v223;
            *(v101 + 5) = v224;
            *(v101 + 6) = v122;
            v101[56] = v226 & 1;
          }

          v99 = v219;
          v96 = 0;
          v22 = v242;
          if (v234 == v220)
          {
            goto LABEL_123;
          }
        }

LABEL_181:

        return v22;
      }

LABEL_123:

      v158 = sub_22EDFA104(*a4);
      if (!v159)
      {
        v170 = v47 + 56;
        v171 = 1 << *(v47 + 32);
        v172 = -1;
        if (v171 < 64)
        {
          v172 = ~(-1 << v171);
        }

        v173 = v172 & *(v47 + 56);
        v174 = (v171 + 63) >> 6;

        v175 = 0;
        v176 = v96;
        v225 = v174;
        v227 = v170;
        while (v173)
        {
LABEL_142:
          v179 = (*(v245 + 48) + ((v175 << 10) | (16 * __clz(__rbit64(v173)))));
          v180 = v179[1];
          v250 = *v179;
          v181 = sub_22EE0B7D8(v98, *v179, v180);
          v254 = v180;
          if (v182)
          {
            v183 = *(v98 + 2);

            v184 = v183;
          }

          else
          {
            v185 = v181 + 1;
            if (__OFADD__(v181, 1))
            {
              goto LABEL_203;
            }

            v186 = v181;
            v257 = v176;
            v187 = *(v98 + 2);
            v188 = v254;
            if (v185 != v187)
            {

              v184 = v186;
              v192 = 32 * v186 + 88;
              v183 = v185;
              v193 = v250;
              v247 = v185;
              while ((v185 & 0x8000000000000000) == 0)
              {
                if (v183 >= v187)
                {
                  goto LABEL_194;
                }

                v194 = v98;
                v195 = *&v98[v192 - 24];
                v196 = *&v98[v192 - 16];
                if (v195 == v193 && v196 == v188)
                {
                  v98 = v194;
                }

                else
                {
                  v262 = v184;
                  if (sub_22EE3CBA4())
                  {
                    v98 = v194;
                    v193 = v250;
                    v188 = v254;
                    v184 = v262;
                  }

                  else
                  {
                    v198 = v262;
                    if (v183 == v262)
                    {
                      v98 = v194;
                      v188 = v254;
                    }

                    else
                    {
                      if (v262 >= v187)
                      {
                        goto LABEL_201;
                      }

                      v244 = 32 * v262;
                      v199 = &v194[32 * v262 + 32];
                      v230 = *v199;
                      v200 = *(v199 + 16);
                      v229 = *(v199 + 24);
                      v201 = *&v194[v192 - 8];
                      v238 = v194[v192];
                      v235 = *(v199 + 8);

                      v232 = v200;

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v194 = sub_22EE05A68(v194);
                      }

                      v202 = &v194[v244];
                      v204 = *&v194[v244 + 40];
                      v203 = *&v194[v244 + 48];
                      *(v202 + 4) = v195;
                      *(v202 + 5) = v196;
                      v98 = v194;
                      *(v202 + 6) = v201;
                      v202[56] = v238;

                      if (v183 >= *(v194 + 2))
                      {
                        goto LABEL_202;
                      }

                      v205 = &v194[v192];
                      v207 = *&v194[v192 - 16];
                      v206 = *&v194[v192 - 8];
                      *(v205 - 3) = v230;
                      *(v205 - 2) = v235;
                      *(v205 - 1) = v232;
                      *v205 = v229;

                      v188 = v254;
                      v198 = v262;
                    }

                    v193 = v250;
                    v184 = v198 + 1;
                  }

                  v185 = v247;
                }

                ++v183;
                v187 = *(v98 + 2);
                v192 += 32;
                if (v183 == v187)
                {
                  goto LABEL_147;
                }
              }

              goto LABEL_193;
            }

            v183 = v185;
            v184 = v186;
LABEL_147:
            v176 = v257;
            if (v183 < v184)
            {
              goto LABEL_198;
            }

            v174 = v225;
            v170 = v227;
            if (v184 < 0)
            {
              goto LABEL_199;
            }
          }

          v189 = v184;
          if (__OFADD__(v183, v184 - v183))
          {
            goto LABEL_200;
          }

          v190 = v184;
          v191 = swift_isUniquelyReferenced_nonNull_native();
          v258 = v98;
          if (!v191 || v189 > *(v98 + 3) >> 1)
          {
            if (v183 <= v189)
            {
              v177 = v189;
            }

            else
            {
              v177 = v183;
            }

            v98 = sub_22EE05D08(v191, v177, 1, v98);
            v258 = v98;
          }

          v173 &= v173 - 1;
          sub_22EE0D490(v190, v183, 0);
        }

        while (1)
        {
          v178 = v175 + 1;
          if (__OFADD__(v175, 1))
          {
            break;
          }

          if (v178 >= v174)
          {

            v242[33] = v98;
            v208 = *(v98 + 2);
            if (!v208)
            {
              goto LABEL_183;
            }

            *&v259[0] = MEMORY[0x277D84F90];
            sub_22EDD2DD4(0, v208, 0);
            v22 = *&v259[0];
            v209 = (v98 + 40);
            do
            {
              v211 = *(v209 - 1);
              v210 = *v209;
              *&v259[0] = v22;
              v213 = v22[2];
              v212 = v22[3];

              if (v213 >= v212 >> 1)
              {
                sub_22EDD2DD4((v212 > 1), v213 + 1, 1);
                v22 = *&v259[0];
              }

              v22[2] = v213 + 1;
              v214 = &v22[2 * v213];
              v214[4] = v211;
              v214[5] = v210;
              v209 += 4;
              --v208;
            }

            while (v208);

            goto LABEL_184;
          }

          v173 = *(v170 + 8 * v178);
          ++v175;
          if (v173)
          {
            v175 = v178;
            goto LABEL_142;
          }
        }

LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
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
        result = sub_22EE3CBE4();
        __break(1u);
        return result;
      }

      v22 = v158;
      v161 = v159;
      v162 = v160;

      type metadata accessor for KTraceRecordError();
      sub_22EDD45F0();
      swift_allocError();
      v164 = v163;
      v165 = sub_22EDFA184(v162);
      v167 = v166;

      v168 = 4144959;
      if (v167)
      {
        v168 = v165;
      }

      v169 = 0xE300000000000000;
      *v164 = v22;
      v164[1] = v161;
      if (v167)
      {
        v169 = v167;
      }

      v164[2] = v168;
      v164[3] = v169;
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
    return v22;
  }

  while (1)
  {
    v255 = v10;
LABEL_9:
    v20 = __clz(__rbit64(v15)) | (v18 << 6);
    v21 = (*(v17 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v17 + 56) + 200 * v20;
    v259[0] = *v24;
    v25 = *(v24 + 64);
    v27 = *(v24 + 16);
    v26 = *(v24 + 32);
    v259[3] = *(v24 + 48);
    v259[4] = v25;
    v259[1] = v27;
    v259[2] = v26;
    v28 = *(v24 + 128);
    v30 = *(v24 + 80);
    v29 = *(v24 + 96);
    v259[7] = *(v24 + 112);
    v259[8] = v28;
    v259[5] = v30;
    v259[6] = v29;
    v32 = *(v24 + 160);
    v31 = *(v24 + 176);
    v33 = *(v24 + 144);
    v260 = *(v24 + 192);
    v259[10] = v32;
    v259[11] = v31;
    v259[9] = v33;
    v34 = *(v24 + 136);
    v35 = *(v24 + 168);
    v261[8] = *(v24 + 152);
    v261[9] = v35;
    v261[10] = *(v24 + 184);
    v36 = *(v24 + 72);
    v37 = *(v24 + 104);
    v261[4] = *(v24 + 88);
    v261[5] = v37;
    v261[6] = *(v24 + 120);
    v261[7] = v34;
    v38 = *(v24 + 40);
    v261[0] = *(v24 + 24);
    v261[1] = v38;
    v261[2] = *(v24 + 56);
    v261[3] = v36;

    sub_22EE0C808(v259, &v258);
    v39 = v23;
    sub_22EDFA200(v261, v23, v22, a3 & 1);
    if (v255)
    {
      break;
    }

    v40 = v4[39];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_22EDDA224(0, *(v40 + 2) + 1, 1, v40);
    }

    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_22EDDA224((v41 > 1), v42 + 1, 1, v40);
    }

    v15 &= v15 - 1;
    sub_22EE0D460(v259);
    *(v40 + 2) = v42 + 1;
    v43 = &v40[16 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v22;
    v242[39] = v40;
    v4 = v242;
    v12 = v251;
    v10 = 0;
    v17 = v240;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  sub_22EE0D460(v259);
  return v22;
}

uint64_t sub_22EDFDF84(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22EE026C4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDFE0AC(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 296);
  v41 = *(v2 + 288);

  sub_22EE088F8(&v41, sub_22EDF3E20, MEMORY[0x277D837D0], sub_22EE08B9C, sub_22EDF3300);
  v4 = v41;
  v5 = sub_22EDF6C78(v3);
  v6 = sub_22EE0B1C8(v5);

  v7 = sub_22EE0778C(v4, v6);
  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_22EDF3184(*(v7 + 16), 0);
  v11 = sub_22EDF3E34(&v41, v10 + 4, v9, v8);
  sub_22ED97F20();
  if (v11 != v9)
  {
    __break(1u);
LABEL_4:

    v10 = MEMORY[0x277D84F90];
  }

  v41 = v10;

  sub_22EE088F8(&v41, sub_22EDF3E20, MEMORY[0x277D837D0], sub_22EE08B9C, sub_22EDF3300);

  v12 = 0;
  v13 = &v38;
  v37 = MEMORY[0x277D84F90];
  v38 = v4;
  strcpy(v39, "Extra layers: ");
  v39[15] = -18;
  v40 = v41;
LABEL_6:
  v14 = &v13[3 * v12];
  while (++v12 != 3)
  {
    v15 = v14 + 3;
    v16 = *v14;
    v17 = *(*v14 + 16);
    v14 += 3;
    if (v17)
    {
      v34 = v13;
      v18 = *(v15 - 5);
      v19 = *(v15 - 4);

      v33 = v18;
      v20 = sub_22EE3C1D4();
      sub_22EE0D550(v16, v20);
      v41 = 2604;
      v42 = 0xE200000000000000;
      MEMORY[0x2318F58F0](a1, a2);
      sub_22EE3C1D4();
      v21 = sub_22EE3C2D4();
      MEMORY[0x2318F58F0](v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
      sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60);
      v22 = sub_22EE3C0B4();
      v24 = v23;

      v41 = a1;
      v42 = a2;

      MEMORY[0x2318F58F0](v33, v19);
      MEMORY[0x2318F58F0](v22, v24);

      v25 = v41;
      v26 = v42;
      v27 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22EDDA224(0, *(v37 + 16) + 1, 1, v37);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_22EDDA224((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v37 = v27;
      v30 = &v27[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v26;
      v13 = v34;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95520, &qword_22EE41F70);
  swift_arrayDestroy();
  v41 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60);
  v31 = sub_22EE3C0B4();

  return v31;
}

uint64_t sub_22EDFE564()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v72 = v6;
  v73 = *(v0 + 264);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v9 = v8 == 1 || v8 == 4;
  v71 = *(v0 + 104);
  if (v9)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v12 = *(v0 + 8);
    v85 = 10272;
    v86 = 0xE200000000000000;
    v13 = 0xED00006369666963;
    v14 = 0x6570732D6C6F6F74;
    if (v8 != 2)
    {
      v14 = 0x656D697265707865;
      v13 = 0xEC0000006C61746ELL;
    }

    if (v8)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x6E6920656C707041;
    }

    if (v8)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xEE006C616E726574;
    }

    MEMORY[0x2318F58F0](v15, v16);

    MEMORY[0x2318F58F0](41, 0xE100000000000000);
    v10 = v85;
    v11 = v86;
    v1 = v12;
  }

  v86 = v1;

  MEMORY[0x2318F58F0](30240, 0xE200000000000000);
  v17 = sub_22EE3CB84();
  MEMORY[0x2318F58F0](v17);

  MEMORY[0x2318F58F0](v10, v11);

  MEMORY[0x2318F58F0](539831584, 0xE400000000000000);
  MEMORY[0x2318F58F0](v4, v5);
  v69 = v86;
  v70 = v2;
  v85 = sub_22EDF7058(v7);

  sub_22EE088F8(&v85, sub_22EDF3E20, MEMORY[0x277D837D0], sub_22EE08B9C, sub_22EDF3300);

  v18 = v73;
  if (*(v7 + 16))
  {
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_22EE3C864();

    v85 = 0xD000000000000017;
    v86 = 0x800000022EE49220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60);
    v19 = sub_22EE3C0B4();
    v21 = v20;

    MEMORY[0x2318F58F0](v19, v21);

    MEMORY[0x2318F58F0](10, 0xE100000000000000);
    v67 = v85;
    v68 = v86;
    if (v73)
    {
      goto LABEL_18;
    }

LABEL_46:
    v61 = 0;
    v62 = 0xE000000000000000;
LABEL_49:
    v85 = v70;
    v86 = v69;
    MEMORY[0x2318F58F0](10, 0xE100000000000000);
    MEMORY[0x2318F58F0](v67, v68);

    MEMORY[0x2318F58F0](v61, v62);

    MEMORY[0x2318F58F0](0x202020200ALL, 0xE500000000000000);
    MEMORY[0x2318F58F0](v72, v71);
    return v85;
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  if (!v73)
  {
    goto LABEL_46;
  }

LABEL_18:
  v22 = *(v73 + 16);
  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_48:
    v85 = v25;

    sub_22EE088F8(&v85, sub_22EDF3E20, MEMORY[0x277D837D0], sub_22EE08B9C, sub_22EDF3300);

    v85 = 0;
    v86 = 0xE000000000000000;
    sub_22EE3C864();

    v85 = 0xD00000000000001ALL;
    v86 = 0x800000022EE49240;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60);
    v63 = sub_22EE3C0B4();
    v65 = v64;

    MEMORY[0x2318F58F0](v63, v65);

    MEMORY[0x2318F58F0](10, 0xE100000000000000);
    v61 = v85;
    v62 = v86;
    goto LABEL_49;
  }

  v84 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v22, 0);
  v24 = 0;
  v25 = v84;
  v74 = v22;
  while (v24 < *(v18 + 16))
  {
    v75 = v24;
    v76 = v25;
    v26 = (v73 + 32 + 32 * v24);
    v27 = v26[1];
    v28 = v26[2];
    v85 = *v26;
    v86 = v27;
    swift_bridgeObjectRetain_n();

    MEMORY[0x2318F58F0](0x6E6F6974706F202CLL, 0xEB00000000203A73);
    v29 = *(v28 + 16);
    if (v29)
    {
      sub_22EDD2DD4(0, v29, 0);
      v81 = v23;
      v30 = v28 + 64;
      v31 = -1 << *(v28 + 32);
      v32 = sub_22EE3C7C4();
      v33 = 0;
      v77 = v28 + 72;
      v78 = v29;
      v79 = v28 + 64;
      while ((v32 & 0x8000000000000000) == 0 && v32 < 1 << *(v28 + 32))
      {
        v35 = v32 >> 6;
        if ((*(v30 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
        {
          goto LABEL_51;
        }

        v80 = *(v28 + 36);
        v36 = (*(v28 + 48) + 16 * v32);
        v37 = (*(v28 + 56) + 16 * v32);
        v38 = v28;
        v40 = *v37;
        v39 = v37[1];
        v82 = *v36;
        v83 = v36[1];
        swift_bridgeObjectRetain_n();

        MEMORY[0x2318F58F0](61, 0xE100000000000000);
        MEMORY[0x2318F58F0](v40, v39);

        v41 = v81;
        v43 = *(v81 + 16);
        v42 = *(v81 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_22EDD2DD4((v42 > 1), v43 + 1, 1);
          v41 = v81;
        }

        *(v41 + 16) = v43 + 1;
        v44 = v41 + 16 * v43;
        *(v44 + 32) = v82;
        *(v44 + 40) = v83;
        v34 = 1 << *(v38 + 32);
        if (v32 >= v34)
        {
          goto LABEL_52;
        }

        v28 = v38;
        v30 = v79;
        v45 = *(v79 + 8 * v35);
        if ((v45 & (1 << v32)) == 0)
        {
          goto LABEL_53;
        }

        if (v80 != *(v28 + 36))
        {
          goto LABEL_54;
        }

        v81 = v41;
        v46 = v45 & (-2 << (v32 & 0x3F));
        if (v46)
        {
          v34 = __clz(__rbit64(v46)) | v32 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v47 = v35 << 6;
          v48 = v35 + 1;
          v49 = (v77 + 8 * v35);
          while (v48 < (v34 + 63) >> 6)
          {
            v51 = *v49++;
            v50 = v51;
            v47 += 64;
            ++v48;
            if (v51)
            {
              sub_22ED972FC(v32, v80, 0);
              v34 = __clz(__rbit64(v50)) + v47;
              goto LABEL_24;
            }
          }

          sub_22ED972FC(v32, v80, 0);
        }

LABEL_24:
        ++v33;
        v32 = v34;
        if (v33 == v78)
        {
          v18 = v73;
          v52 = v81;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      break;
    }

    v52 = v23;
LABEL_41:
    v53 = MEMORY[0x2318F5AD0](v52, MEMORY[0x277D837D0]);
    v55 = v54;

    MEMORY[0x2318F58F0](v53, v55);

    v56 = v85;
    v57 = v86;
    v25 = v76;
    v59 = *(v76 + 16);
    v58 = *(v76 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_22EDD2DD4((v58 > 1), v59 + 1, 1);
      v25 = v76;
    }

    v24 = v75 + 1;
    *(v25 + 16) = v59 + 1;
    v60 = v25 + 16 * v59;
    *(v60 + 32) = v56;
    *(v60 + 40) = v57;
    v23 = MEMORY[0x277D84F90];
    if (v75 + 1 == v74)
    {
      goto LABEL_48;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22EDFEDEC(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = sub_22EE3B9A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v39, v1, sizeof(v39));
  v9 = sub_22EE3B9E4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_22EE3B9D4();
  (*(v5 + 104))(v8, *MEMORY[0x277CC8748], v4);
  sub_22EE3B9B4();
  memcpy(v38, v39, 0x141uLL);
  sub_22EE0D98C();
  v12 = sub_22EE3B9C4();
  if (v2)
  {

LABEL_26:
    v35 = *MEMORY[0x277D85DE8];
    return v14;
  }

  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v16)
    {
      v38[0] = v12;
      LOWORD(v38[1]) = v13;
      BYTE2(v38[1]) = BYTE2(v13);
      BYTE3(v38[1]) = BYTE3(v13);
      BYTE4(v38[1]) = BYTE4(v13);
      v17 = BYTE6(v13);
      BYTE5(v38[1]) = BYTE5(v13);
      v18 = v12;
      v19 = a1;
LABEL_24:
      appended = ktrace_file_append_chunk(v19, 32789, 0, 0, v38, v17);
      v34 = v18;
      goto LABEL_25;
    }

    v28 = v12;
    v37 = v12;
    v29 = (v12 >> 32) - v12;
    if (v12 >> 32 >= v12)
    {
      v30 = sub_22EE3BAA4();
      if (!v30)
      {
        result = sub_22EE3BAC4();
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v31 = v30;
      v32 = sub_22EE3BAD4();
      if (!__OFSUB__(v28, v32))
      {
        v22 = (v28 - v32 + v31);
        result = sub_22EE3BAC4();
        if (v22)
        {
          if (result >= v29)
          {
            v27 = v29;
          }

          else
          {
            v27 = result;
          }

LABEL_22:
          appended = ktrace_file_append_chunk(a1, 32789, 0, 0, v22, v27);
          v34 = v37;
LABEL_25:
          sub_22EDD4074(v34, v15);

          v14 = appended != 0;
          goto LABEL_26;
        }

        goto LABEL_32;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  if (v16 != 2)
  {
    *(v38 + 6) = 0;
    v38[0] = 0;
    v18 = v12;
    v19 = a1;
    v17 = 0;
    goto LABEL_24;
  }

  v21 = *(v12 + 16);
  v20 = *(v12 + 24);
  v37 = v12;
  v22 = sub_22EE3BAA4();
  if (v22)
  {
    v23 = sub_22EE3BAD4();
    if (__OFSUB__(v21, v23))
    {
      goto LABEL_30;
    }

    v22 += v21 - v23;
  }

  v24 = __OFSUB__(v20, v21);
  v25 = v20 - v21;
  if (v24)
  {
    goto LABEL_28;
  }

  result = sub_22EE3BAC4();
  if (v22)
  {
    if (result >= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = result;
    }

    goto LABEL_22;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_22EDFF150(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95530, &qword_22EE41F78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  v8 = *v1;
  v45 = *(v1 + 8);
  v46 = v8;
  v9 = *(v1 + 16);
  v43 = *(v1 + 24);
  v44 = v9;
  v10 = *(v1 + 32);
  v41 = *(v1 + 40);
  v42 = v10;
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 72);
  v39 = *(v1 + 64);
  v40 = v11;
  v37 = v13;
  v38 = v12;
  v14 = *(v1 + 88);
  v35 = *(v1 + 80);
  v36 = v14;
  v15 = *(v1 + 104);
  v33 = *(v1 + 96);
  v34 = v15;
  v16 = *(v1 + 128);
  v62 = *(v1 + 112);
  v63 = v16;
  v17 = *(v1 + 144);
  v18 = *(v1 + 160);
  v19 = *(v1 + 192);
  v66 = *(v1 + 176);
  v67 = v19;
  v64 = v17;
  v65 = v18;
  v20 = *(v1 + 208);
  v21 = *(v1 + 224);
  v22 = *(v1 + 272);
  v71 = *(v1 + 256);
  v72 = v22;
  v23 = *(v1 + 240);
  v69 = v21;
  v70 = v23;
  v68 = v20;
  v24 = *(v1 + 296);
  v32 = *(v1 + 288);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0D9E0();
  v26 = v7;
  sub_22EE3CCE4();
  LOBYTE(v51) = 0;
  v27 = v73;
  sub_22EE3CB04();
  if (v27)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v73 = v24;
  LOBYTE(v51) = 1;
  sub_22EE3CB34();
  LOBYTE(v51) = 2;
  sub_22EE3CA94();
  LOBYTE(v51) = 3;
  sub_22EE3CA94();
  LOBYTE(v51) = 4;
  sub_22EE3CA94();
  *&v51 = v37;
  LOBYTE(v49[0]) = 5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  v29 = sub_22EE0DA88(&qword_27DA954F8);
  sub_22EE3CAD4();
  v45 = v29;
  v46 = v28;
  LOBYTE(v51) = 6;
  sub_22EE3CB04();
  LOBYTE(v51) = 7;
  sub_22EE3CB04();
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v55 = v66;
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v51 = v62;
  v52 = v63;
  v53 = v64;
  v54 = v65;
  v50 = 8;
  sub_22EE0C1BC(&v62, v49);
  sub_22EE0C248();
  sub_22EE3CB44();
  v49[8] = v59;
  v49[9] = v60;
  v49[10] = v61;
  v49[4] = v55;
  v49[5] = v56;
  v49[6] = v57;
  v49[7] = v58;
  v49[0] = v51;
  v49[1] = v52;
  v49[2] = v53;
  v49[3] = v54;
  sub_22EE0C29C(v49);
  v48 = v32;
  v47 = 9;
  sub_22EE3CB44();
  v48 = v73;
  v47 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95540, &qword_22EE41F80);
  sub_22ED82F80(&qword_27DA95548, sub_22EE0DA34);
  sub_22EE3CB44();
  return (*(v4 + 8))(v26, v3);
}

uint64_t sub_22EDFF638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95558, &qword_22EE41F88);
  v5 = *(v84 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v84);
  v8 = &v24 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0D9E0();
  sub_22EE3CCD4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v39 = a2;
    v40 = v5;
    LOBYTE(v42[0]) = 0;
    v10 = sub_22EE3CA44();
    v12 = v11;
    LOBYTE(v42[0]) = 1;
    v13 = sub_22EE3CA74();
    LOBYTE(v42[0]) = 2;
    v36 = sub_22EE3CA14();
    v38 = v14;
    LOBYTE(v42[0]) = 3;
    v34 = sub_22EE3CA14();
    v35 = v13;
    v37 = v15;
    LOBYTE(v42[0]) = 4;
    v30 = sub_22EE3CA14();
    v32 = v12;
    v33 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    v41[0] = 5;
    v31 = sub_22EE0DA88(&qword_27DA95560);
    sub_22EE3CA34();
    v28 = 0;
    v29 = v42[0];
    LOBYTE(v42[0]) = 6;
    v25 = sub_22EE3CA44();
    v27 = v17;
    LOBYTE(v42[0]) = 7;
    v24 = sub_22EE3CA44();
    v26 = v18;
    v61 = 8;
    sub_22EE0DAF4();
    sub_22EE3CA84();
    v81 = v70;
    v82 = v71;
    v83 = v72;
    v77 = v66;
    v78 = v67;
    v79 = v68;
    v80 = v69;
    v73 = v62;
    v74 = v63;
    v75 = v64;
    v76 = v65;
    v41[0] = 9;
    sub_22EE3CA84();
    v19 = v42[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95540, &qword_22EE41F80);
    v59 = 10;
    sub_22ED82F80(&qword_27DA95570, sub_22EE0DB48);
    sub_22EE3CA84();
    (*(v40 + 8))(v8, v84);
    v84 = v60;
    v20 = v32;
    *v41 = v10;
    *&v41[8] = v32;
    *&v41[16] = v35;
    *&v41[24] = v36;
    v21 = v37;
    v22 = v38;
    *&v41[32] = v38;
    *&v41[40] = v34;
    *&v41[48] = v37;
    *&v41[56] = v30;
    *&v41[64] = v33;
    *&v41[72] = v29;
    *&v41[80] = v25;
    *&v41[88] = v27;
    *&v41[96] = v24;
    *&v41[104] = v26;
    *&v41[112] = v73;
    *&v41[128] = v74;
    *&v41[192] = v78;
    *&v41[176] = v77;
    *&v41[144] = v75;
    *&v41[160] = v76;
    *&v41[272] = v83;
    *&v41[256] = v82;
    *&v41[240] = v81;
    *&v41[208] = v79;
    *&v41[224] = v80;
    *&v41[288] = v19;
    *&v41[296] = v60;
    v41[304] = 4;
    *&v41[312] = MEMORY[0x277D84F90];
    v41[320] = 0;
    memcpy(v39, v41, 0x141uLL);
    sub_22ED80E90(v41, v42);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v42[0] = v10;
    v42[1] = v20;
    v42[2] = v35;
    v42[3] = v36;
    v42[4] = v22;
    v42[5] = v34;
    v42[6] = v21;
    v42[7] = v30;
    v42[8] = v33;
    v42[9] = v29;
    v42[10] = v25;
    v42[11] = v27;
    v42[12] = v24;
    v42[13] = v26;
    v51 = v81;
    v52 = v82;
    v53 = v83;
    v47 = v77;
    v48 = v78;
    v49 = v79;
    v50 = v80;
    v43 = v73;
    v44 = v74;
    v45 = v75;
    v46 = v76;
    v54 = v19;
    v55 = v84;
    v56 = 4;
    v57 = MEMORY[0x277D84F90];
    v58 = 0;
    return sub_22ED80F70(v42);
  }
}

uint64_t sub_22EDFFED0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22EE3CC74();
  sub_22EE3C1C4();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDFFF1C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22EE3C1C4();
}

uint64_t sub_22EDFFF24()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22EE3CC74();
  sub_22EE3C1C4();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDFFF6C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22EE3CBA4();
  }
}

void *sub_22EDFFF9C(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v54 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v54 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = sub_22EE3BCB4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - v26;
  v58 = v6;
  if ((a1 & 1) == 0 || !getenv("TRACE_PLAN_PATH"))
  {
    v29 = MEMORY[0x277D84F90];
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  sub_22EE3C214();
  sub_22EE3BBF4();

  v28 = *(v6 + 48);
  (*(v21 + 32))(v19, v27, v20);
  v19[v28] = 3;
  v29 = sub_22EE06194(0, 1, 1, MEMORY[0x277D84F90]);
  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_22EE06194(v30 > 1, v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  sub_22EE0DB9C(v19, v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31);
  v6 = v58;
  if (a4)
  {
LABEL_8:
    sub_22EE3BBF4();
    v32 = *(v6 + 48);
    (*(v21 + 32))(v17, v25, v20);
    v17[v32] = 2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_22EE06194(0, v29[2] + 1, 1, v29);
    }

    v34 = v29[2];
    v33 = v29[3];
    if (v34 >= v33 >> 1)
    {
      v29 = sub_22EE06194(v33 > 1, v34 + 1, 1, v29);
    }

    v29[2] = v34 + 1;
    sub_22EE0DB9C(v17, v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v34);
    v6 = v58;
  }

LABEL_13:
  if (v55)
  {
    v35 = sub_22EE31A3C();
    v36 = *(v6 + 48);
    v37 = *(v21 + 16);
    v38 = v56;
    v37(v56, v35, v20);
    *(v38 + v36) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_22EE06194(0, v29[2] + 1, 1, v29);
    }

    v40 = v29[2];
    v39 = v29[3];
    if (v40 >= v39 >> 1)
    {
      v29 = sub_22EE06194(v39 > 1, v40 + 1, 1, v29);
    }

    v29[2] = v40 + 1;
    v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v42 = *(v7 + 72);
    sub_22EE0DB9C(v56, v29 + v41 + v42 * v40);
    v43 = sub_22EE31D2C();
    v44 = v57;
    v45 = *(v58 + 48);
    v37(v57, v43, v20);
    *(v44 + v45) = 0;
    v47 = v29[2];
    v46 = v29[3];
    if (v47 >= v46 >> 1)
    {
      v29 = sub_22EE06194(v46 > 1, v47 + 1, 1, v29);
    }

    v29[2] = v47 + 1;
    sub_22EE0DB9C(v57, v29 + v41 + v47 * v42);
    v6 = v58;
  }

  v48 = sub_22EE31BB4();
  v49 = *(v6 + 48);
  v50 = v59;
  (*(v21 + 16))(v59, v48, v20);
  *(v50 + v49) = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_22EE06194(0, v29[2] + 1, 1, v29);
  }

  v52 = v29[2];
  v51 = v29[3];
  if (v52 >= v51 >> 1)
  {
    v29 = sub_22EE06194(v51 > 1, v52 + 1, 1, v29);
  }

  v29[2] = v52 + 1;
  sub_22EE0DB9C(v59, v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v52);
  return v29;
}

void *sub_22EE00518(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v46 = a1;
  v13 = sub_22EE3BCB4();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v44[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90);
  v54 = *(v19 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v53 = &v44[-v21];
  v45 = a5 & a4;
  result = sub_22EDFFF9C(a5 & a4 & 1, a5, a6, a7);
  v49 = result[2];
  if (v49)
  {
    v23 = 0;
    v24 = (v47 + 8);
    v51 = v18;
    v52 = v13;
    v50 = result;
    v48 = (v47 + 8);
    while (1)
    {
      if (v23 >= result[2])
      {
        __break(1u);
        return result;
      }

      v25 = result + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v26 = *(v54 + 72);
      v56 = v23;
      v27 = &v25[v26 * v23];
      v28 = v53;
      sub_22EDDB6E8(v27, v53, &qword_27DA95580, &unk_22EE41F90);
      v29 = v55;
      sub_22EE3BC44();
      v30 = a2;
      v31 = *v24;
      (*v24)(v28, v13);
      sub_22EE3BC54();
      v57 = v31;
      v31(v29, v13);
      v32 = a3;
      v33 = objc_opt_self();
      v34 = [v33 defaultManager];
      sub_22EE3BC94();
      v35 = sub_22EE3C0F4();

      v36 = [v34 fileExistsAtPath_];

      if (v36)
      {

        (*(v47 + 32))(v46, v51, v52);
LABEL_11:
        v42 = v36 ^ 1;
        return (v42 & 1);
      }

      v37 = [v33 defaultManager];
      v38 = v32;
      v39 = sub_22EE3C0F4();
      v40 = [v37 fileExistsAtPath_];

      if (v40)
      {
        break;
      }

      v23 = v56 + 1;
      v13 = v52;
      v24 = v48;
      v57(v51, v52);
      result = v50;
      a3 = v38;
      a2 = v30;
      if (v49 == v23)
      {
        goto LABEL_7;
      }
    }

    if (v45)
    {
      sub_22EE3BBF4();
      v57(v51, v52);
      goto LABEL_11;
    }

    type metadata accessor for KTraceRecordError();
    sub_22EDD45F0();
    swift_allocError();
    *v43 = v30;
    v43[1] = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v57(v51, v52);
  }

  else
  {
LABEL_7:

    type metadata accessor for KTraceRecordError();
    sub_22EDD45F0();
    swift_allocError();
    *v41 = a2;
    v41[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return (v42 & 1);
}

uint64_t sub_22EE0099C(char a1, int a2)
{
  v222 = *MEMORY[0x277D85DE8];
  v190 = type metadata accessor for KTraceRecordError();
  v4 = *(*(v190 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v190);
  v189 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v194 = &v156 - v7;
  v191 = sub_22EE3C8B4();
  v8 = *(v191 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v191);
  v193 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v156 - v12;
  v183 = sub_22EE3B954();
  v14 = *(v183 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v183);
  v182 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_22EE3BCB4();
  v17 = *(v195 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v195);
  v160 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v202 = &v156 - v22;
  MEMORY[0x28223BE20](v21);
  v199 = &v156 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v168 = &v156 - v27;
  v206 = MEMORY[0x277D84FA0];
  v28 = sub_22EDFFF9C(a1, a2, 0, 0);
  v167 = v28[2];
  if (v167)
  {
    v192 = v13;
    v165 = *(v24 + 48);
    v29 = v28;
    v164 = objc_opt_self();
    v30 = v29;
    v31 = 0;
    v166 = v25;
    v163 = v30 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v162 = (v17 + 32);
    v181 = *MEMORY[0x277CC86A8];
    v180 = (v14 + 104);
    v198 = (v17 + 8);
    v158 = &v210[305];
    v159 = (&v215[38] + 1);
    v156 = v218;
    v157 = v221;
    v187 = (v8 + 32);
    v188 = "        - ";
    v185 = ": failed to load plan";
    v186 = (v8 + 16);
    v184 = (v8 + 8);
    v32 = MEMORY[0x277D84F90];
    v33 = v195;
    v34 = v200;
    v161 = v30;
    while (1)
    {
      if (v31 >= v30[2])
      {
        goto LABEL_96;
      }

      v35 = *(v166 + 72);
      v174 = v31;
      v36 = v163 + v35 * v31;
      v37 = v168;
      sub_22EDDB6E8(v36, v168, &qword_27DA95580, &unk_22EE41F90);
      v169 = *(v37 + v165);
      (*v162)(v199, v37, v33);
      v205 = MEMORY[0x277D84FA0];
      v38 = [v164 defaultManager];
      sub_22EE3BC94();
      v39 = sub_22EE3C0F4();

      v215[0] = 0;
      v40 = [v38 contentsOfDirectoryAtPath:v39 error:v215];

      v41 = v215[0];
      if (v40)
      {
        v200 = v34;
        v42 = sub_22EE3C3D4();
        v43 = v41;
      }

      else
      {
        v44 = v215[0];
        v45 = sub_22EE3BBA4();

        swift_willThrow();
        v200 = 0;
        v42 = MEMORY[0x277D84F90];
      }

      v203 = v32;
      v46 = *(v42 + 16);
      if (!v46)
      {
        v177 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }

      v47 = 0;
      v48 = (v42 + 40);
      v197 = (v46 - 1);
      v177 = MEMORY[0x277D84F90];
      v201 = (v42 + 40);
      do
      {
        v49 = v48 + 16 * v47;
        v50 = v47;
        while (1)
        {
          if (v50 >= *(v42 + 16))
          {
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v52 = *(v49 - 1);
          v51 = *v49;
          v47 = v50 + 1;

          if (sub_22EE3C2B4())
          {
            break;
          }

          v49 += 16;
          v50 = (v50 + 1);
          if (v46 == v47)
          {
            goto LABEL_23;
          }
        }

        v53 = v177;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v215[0] = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EDD2DD4(0, *(v53 + 16) + 1, 1);
          v53 = v215[0];
        }

        v56 = *(v53 + 16);
        v55 = *(v53 + 24);
        v57 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          v196 = v56 + 1;
          sub_22EDD2DD4((v55 > 1), v56 + 1, 1);
          v57 = v196;
          v53 = v215[0];
        }

        *(v53 + 16) = v57;
        v177 = v53;
        v58 = v53 + 16 * v56;
        *(v58 + 32) = v52;
        *(v58 + 40) = v51;
        v48 = v201;
      }

      while (v197 != v50);
LABEL_23:

      v197 = *(v177 + 16);
      if (v197)
      {
        v59 = 0;
        v196 = v177 + 32;
        v32 = v203;
        v60 = v191;
        v34 = v200;
        do
        {
          v203 = v32;
          v65 = (v196 + 16 * v59);
          v67 = *v65;
          v66 = v65[1];

          sub_22EE3BC44();
          v68 = sub_22EE3BCD4();
          v70 = v34;
          if (v34)
          {
            goto LABEL_31;
          }

          v71 = v68;
          v72 = v69;
          v201 = v67;
          v73 = sub_22EE3B994();
          v74 = *(v73 + 48);
          v75 = *(v73 + 52);
          swift_allocObject();
          v76 = sub_22EE3B984();
          sub_22EE3B944();
          (*v180)(v182, v181, v183);
          sub_22EE3B964();
          sub_22EE0C840();
          sub_22EE3B974();
          v178 = v71;
          v179 = v76;
          memcpy(v213, v215, 0x141uLL);
          memcpy(v212, v215, 0x141uLL);
          sub_22ED80E90(v213, v211);
          sub_22EDFC284();
          v34 = 0;
          v175 = v213[0];
          v176 = v72;
          v200 = v213[1];
          v97 = v213[17];
          v98 = v213[18];
          v173 = v213[19];
          v99 = v213[20];
          memcpy(v211, v212, 0x141uLL);
          sub_22ED80F70(v211);
          v67 = v201;
          if (v98)
          {
            v200 = v99;

            v100 = sub_22EDD1088(v97, v98);
            sub_22EDD1254(v100, 1);

            v104 = v200;
            if (v200)
            {

              v105 = sub_22EDD1088(v173, v104);
              sub_22EDD1254(v105, 0);
            }
          }

          else if (v99)
          {
            sub_22EDD45F0();
            v70 = swift_allocError();
            v101 = v200;
            *v102 = v175;
            v102[1] = v101;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            goto LABEL_46;
          }

          v106 = v213[37] + 64;
          v107 = 1 << *(v213[37] + 32);
          if (v107 < 64)
          {
            v108 = ~(-1 << v107);
          }

          else
          {
            v108 = -1;
          }

          v109 = v108 & *(v213[37] + 8);
          v110 = (v107 + 63) >> 6;
          v173 = v213[37];

          v111 = 0;
          v170 = v110;
          for (i = v106; ; v106 = i)
          {
            v112 = v202;
            if (v109)
            {
              goto LABEL_60;
            }

            do
            {
              v113 = v111 + 1;
              if (__OFADD__(v111, 1))
              {
                goto LABEL_95;
              }

              if (v113 >= v110)
              {

                sub_22EDD4074(v178, v176);
                memcpy(v214, v215, sizeof(v214));
                v129 = v160;
                v207[0] = *v159;
                *(v207 + 7) = *(v159 + 7);
                v130 = v215[40];
                sub_22EE3BC24();
                sub_22EE3BC04();
                v131 = v112;
                v132 = v129;
                v133 = v195;
                v201 = *v198;
                v201(v132, v195);
                v134 = sub_22EE3C2B4();

                if (v134)
                {
                  memcpy(v216, v214, sizeof(v216));
                  v135 = v169;
                  v217 = v169;
                  v136 = v156;
                  *v156 = v207[0];
                  *(v136 + 7) = *(v207 + 7);
                  v218[15] = 1;
                  sub_22ED80E90(v216, v209);
                  v137 = v205;
                  v138 = swift_isUniquelyReferenced_nonNull_native();
                  v204 = v137;
                  sub_22EE09A88(v216, v138, v208);
                  memcpy(v209, v208, 0x141uLL);
                  sub_22EDDBA48(v209, &qword_27DA95590, &unk_22EE41FA8);
                  memcpy(v210, v214, 0x130uLL);
                  v210[304] = v135;
                  v139 = v158;
                  *v158 = v207[0];
                  *(v139 + 7) = *(v207 + 7);
                  v210[320] = 1;
                  sub_22ED80F70(v210);
                  v33 = v133;
                  v201(v112, v133);
                  v205 = v204;
                }

                else
                {
                  memcpy(v219, v214, sizeof(v219));
                  v61 = v169;
                  v220 = v169;
                  v62 = v157;
                  *v157 = v207[0];
                  *(v62 + 7) = *(v207 + 7);
                  v221[15] = v130;
                  sub_22ED80E90(v219, v209);
                  sub_22EE02C5C(v208, v219);
                  memcpy(v209, v208, 0x141uLL);
                  sub_22ED80F70(v209);
                  memcpy(v210, v214, 0x130uLL);
                  v210[304] = v61;
                  v63 = v158;
                  *v158 = v207[0];
                  *(v63 + 7) = *(v207 + 7);
                  v210[320] = v130;
                  sub_22ED80F70(v210);
                  v64 = v131;
                  v33 = v133;
                  v201(v64, v133);
                }

                v32 = v203;
                v60 = v191;
                goto LABEL_28;
              }

              v109 = *&v106[8 * v113];
              ++v111;
            }

            while (!v109);
            v111 = v113;
LABEL_60:
            v114 = (v173[6] + ((v111 << 10) | (16 * __clz(__rbit64(v109)))));
            v116 = *v114;
            v115 = v114[1];

            v200 = v116;
            v175 = v115;
            v117 = sub_22EE065B4(v209, v116, v115);
            v119 = v118;
            memmove(v210, v118, 0xC8uLL);
            if (sub_22EE0C894(v210) == 1)
            {
              goto LABEL_98;
            }

            v120 = v119[7];
            if (!v120)
            {
              if (!v119[9])
              {
                goto LABEL_54;
              }

              v172 = v117;
              sub_22EDD45F0();
              v70 = swift_allocError();
              v140 = v175;
              *v141 = v200;
              v141[1] = v140;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              v60 = v191;
              goto LABEL_73;
            }

            v172 = v117;
            v121 = v119[6];

            v122 = sub_22EDD1088(v121, v120);
            v200 = v34;
            if (v34)
            {
              v70 = v200;
              goto LABEL_71;
            }

            sub_22EDD1254(v122, 1);

            v123 = v119[9];
            if (v123)
            {
              break;
            }

            v34 = v200;
            v117 = v172;
LABEL_54:
            v109 &= v109 - 1;
            (v117)(v209, 0);

            v110 = v170;
          }

          v124 = v119[8];
          v125 = v119[9];

          v126 = v123;
          v127 = v200;
          v128 = sub_22EDD1088(v124, v126);
          v34 = v127;
          if (!v127)
          {
            sub_22EDD1254(v128, 0);

            v117 = v172;
            goto LABEL_54;
          }

          v70 = v127;
LABEL_71:
          v60 = v191;
LABEL_73:
          (v172)(v209, 0);

LABEL_46:
          v103 = v176;
          memcpy(v210, v215, 0x141uLL);
          sub_22ED80F70(v210);

          sub_22EDD4074(v178, v103);
LABEL_31:
          v201 = v59;
          v213[0] = v70;
          v77 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
          v78 = v192;
          if (swift_dynamicCast())
          {
            v200 = 0;

            v79 = v193;
            (*v187)(v193, v78, v60);
            v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95588, &qword_22EE41FA0) + 48);
            v81 = v60;
            v82 = v194;
            *v194 = v67;
            *(v82 + 1) = v66;
            v83 = v81;
            (*v186)(&v82[v80], v79);
            swift_storeEnumTagMultiPayload();
            v215[0] = 0;
            v215[1] = 0xE000000000000000;
            sub_22EE3C864();

            v215[0] = 0x203A726F727265;
            v215[1] = 0xE700000000000000;
            v84 = sub_22EE3BC94();
            MEMORY[0x2318F58F0](v84);

            MEMORY[0x2318F58F0](0xD000000000000010, v185 | 0x8000000000000000);
            sub_22EE0DD2C(v82, v189);
            v85 = sub_22EE3C164();
            MEMORY[0x2318F58F0](v85);

            v86 = v215[0];
            v87 = v215[1];
            v32 = v203;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_22EDDA224(0, *(v32 + 2) + 1, 1, v32);
            }

            v33 = v195;
            v89 = *(v32 + 2);
            v88 = *(v32 + 3);
            if (v89 >= v88 >> 1)
            {
              v32 = sub_22EDDA224((v88 > 1), v89 + 1, 1, v32);
            }

            sub_22EE0DD90(v194);
            (*v184)(v193, v83);
            (*v198)(v202, v33);
            *(v32 + 2) = v89 + 1;
            v90 = &v32[16 * v89];
            v60 = v83;
            *(v90 + 4) = v86;
            *(v90 + 5) = v87;

            v34 = v200;
            v59 = v201;
          }

          else
          {

            v215[0] = 0;
            v215[1] = 0xE000000000000000;
            sub_22EE3C864();

            v215[0] = 0x203A726F727265;
            v215[1] = 0xE700000000000000;
            v91 = sub_22EE3BC94();
            MEMORY[0x2318F58F0](v91);

            MEMORY[0x2318F58F0](0xD000000000000015, v188 | 0x8000000000000000);
            v92 = v215[0];
            v93 = v215[1];
            v32 = v203;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_22EDDA224(0, *(v32 + 2) + 1, 1, v32);
            }

            v33 = v195;
            v95 = *(v32 + 2);
            v94 = *(v32 + 3);
            if (v95 >= v94 >> 1)
            {
              v32 = sub_22EDDA224((v94 > 1), v95 + 1, 1, v32);
            }

            (*v198)(v202, v33);
            *(v32 + 2) = v95 + 1;
            v96 = &v32[16 * v95];
            *(v96 + 4) = v92;
            *(v96 + 5) = v93;
            v60 = v191;
            v34 = 0;
            v59 = v201;
          }

LABEL_28:
          v59 = (v59 + 1);
        }

        while (v59 != v197);
      }

      else
      {

        v32 = v203;
        v33 = v195;
        v34 = v200;
      }

      v31 = v174 + 1;
      sub_22EDFB0F8(v205);
      (*v198)(v199, v33);
      v30 = v161;
      if (v31 == v167)
      {
        v200 = v34;

        v142 = v206;
        v143 = *(v206 + 16);
        if (v143)
        {
          goto LABEL_75;
        }

LABEL_78:
        v144 = MEMORY[0x277D84F90];
        goto LABEL_79;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
  v142 = MEMORY[0x277D84FA0];
  v143 = *(MEMORY[0x277D84FA0] + 16);
  if (!v143)
  {
    goto LABEL_78;
  }

LABEL_75:
  v203 = v32;
  v144 = sub_22EE0651C(v143, 0);
  v145 = sub_22EE0A06C(v215, v144 + 32, v143, v142);

  sub_22ED97F20();
  if (v145 != v143)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

LABEL_79:
  v215[0] = v144;

  v146 = v200;
  sub_22EE088F8(v215, sub_22EE0A1FC, &type metadata for Plan, sub_22EE09198, sub_22EE08AA4);
  if (v146)
  {

    __break(1u);
  }

  else
  {

    v147 = v215[0];
    v212[0] = v215[0];
    v148 = *(v215[0] + 16);
    if (v148)
    {
      v149 = 0;
      v150 = (v215[0] + 40);
      while (1)
      {
        v151 = *(v150 - 1) == 0x746C7561666564 && *v150 == 0xE700000000000000;
        if (v151 || (sub_22EE3CBA4() & 1) != 0)
        {
          break;
        }

        ++v149;
        v150 += 41;
        if (v148 == v149)
        {
          goto LABEL_93;
        }
      }

      sub_22EE01E80(v149, v213);
      v147 = v212[0];
      v152 = *(v212[0] + 16);
      v153 = swift_isUniquelyReferenced_nonNull_native();
      if (!v153 || v152 >= *(v147 + 3) >> 1)
      {
        v147 = sub_22EE06384(v153, v152 + 1, 1, v147);
        v212[0] = v147;
      }

      memcpy(v215, v213, 0x141uLL);
      sub_22EE0DC0C(0, 0, 1uLL, v215);
      sub_22ED80F70(v213);
    }

LABEL_93:
    v154 = *MEMORY[0x277D85DE8];
    return v147;
  }

  return result;
}