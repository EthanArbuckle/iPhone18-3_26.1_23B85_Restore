uint64_t sub_1C0770434(uint64_t a1)
{
  result = sub_1C058C2E8(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return result;
  }

  v83 = result;
  v4 = 0;
  v5 = (a1 + 40);
  while (1)
  {
    v81 = v4;
    v6 = *(v5 - 1);
    v7 = *v5;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v8 = *(v5 - 1);
    }

    v84 = *(v5 - 1);
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
    sub_1C0771C78();
    sub_1C051D6F4();
    v9 = sub_1C095DADC();
    v11 = v10;
    if (qword_1EBE15848 != -1)
    {
      swift_once();
    }

    if (!qword_1EBE1F6F8 || (v12 = qword_1EBE1F6F8, v13 = sub_1C095D74C(), v14 = [v12 firstMatchInString:v13 options:0 range:{v9, v11}], v12, v13, !v14))
    {

      sub_1C076E764();
      swift_allocError();
      *v69 = v6;
      *(v69 + 8) = v7;
      *(v69 + 16) = 3;
      swift_willThrow();
      return sub_1C05149C4(v81);
    }

    v15 = v14;
    v16 = sub_1C07714C8(v14, 0x65646E4965646F6ELL, 0xEE006C6562614C78, v6, v7, sub_1C076FFC8, sub_1C076E89C);
    if ((v16 & 0x100000000) != 0)
    {
      goto LABEL_78;
    }

    v17 = v16;
    v18 = sub_1C095D74C();
    v82 = v15;
    v19 = [v15 rangeWithName_];

    if (v19 == sub_1C095D14C() || (sub_1C095DACC(), (v20 & 1) != 0))
    {
      v15 = v82;
      goto LABEL_78;
    }

    v79 = v5;
    v21 = sub_1C095D8EC();
    v78 = MEMORY[0x1C68DD630](v21);
    v80 = v22;

    v23 = sub_1C095D74C();
    v15 = v82;
    v24 = [v82 rangeWithName_];

    if (v24 == sub_1C095D14C() || (sub_1C095DACC(), (v25 & 1) != 0))
    {

LABEL_78:

      sub_1C076E764();
      swift_allocError();
      *v70 = v6;
      *(v70 + 8) = v7;
      *(v70 + 16) = 3;
      swift_willThrow();

      return sub_1C05149C4(v81);
    }

    v26 = sub_1C095D8EC();
    v27 = MEMORY[0x1C68DD630](v26);
    v75 = v28;
    v76 = v27;

    v29 = sub_1C095D74C();
    v30 = [v82 rangeWithName_];

    if (v30 == sub_1C095D14C())
    {
      v73 = 0;
      v74 = 0;
    }

    else
    {
      sub_1C095DACC();
      if (v31)
      {
        v73 = 0;
        v74 = 0;
      }

      else
      {
        v32 = sub_1C095D8EC();
        v33 = MEMORY[0x1C68DD630](v32);
        v73 = v34;
        v74 = v33;
      }
    }

    v35 = sub_1C095D74C();
    v36 = [v82 rangeWithName_];

    if (v36 == sub_1C095D14C() || (sub_1C095DACC(), (v37 & 1) != 0))
    {
      v72 = 0;
      v85 = 1;
    }

    else
    {
      sub_1C095D8EC();
      v72 = sub_1C095DA2C();
      v85 = v38;
    }

    v39 = sub_1C095D74C();
    v40 = [v82 rangeWithName_];

    v77 = v3;
    if (v40 == sub_1C095D14C() || (sub_1C095DACC(), (v41 & 1) != 0))
    {
      v42 = 7;
LABEL_26:
      v71 = v42;
      v43 = v85;
      goto LABEL_27;
    }

    v63 = sub_1C095D8EC();
    v64 = MEMORY[0x1C68DD630](v63);
    v66 = v65;

    if (v64 == 0x61636F5669726953 && v66 == 0xE900000000000062 || (sub_1C095DF3C() & 1) != 0)
    {

      v42 = 1;
      goto LABEL_26;
    }

    if (v64 == 0x656C6946636F56 && v66 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
    {

      v42 = 2;
      goto LABEL_26;
    }

    if (v64 == 0x526E6F69746E654DLL && v66 == 0xEF7265766C6F7365 || (sub_1C095DF3C() & 1) != 0)
    {

      v42 = 3;
      goto LABEL_26;
    }

    if (v64 == 0xD000000000000013 && 0x80000001C09CD610 == v66 || (sub_1C095DF3C() & 1) != 0)
    {

      v42 = 4;
      goto LABEL_26;
    }

    if (v64 == 0x4143726573726150 && v66 == 0xEA00000000004954 || (sub_1C095DF3C() & 1) != 0)
    {

      v42 = 5;
      goto LABEL_26;
    }

    if (v64 == 0x5353726573726150 && v66 == 0xE900000000000055)
    {

      v42 = 6;
      goto LABEL_26;
    }

    v43 = v85;
    if (sub_1C095DF3C())
    {

      v67 = 6;
LABEL_68:
      v71 = v67;
      goto LABEL_27;
    }

    if (v64 == 0x6E776F6E6B6E75 && v66 == 0xE700000000000000)
    {
    }

    else
    {
      v68 = sub_1C095DF3C();

      if ((v68 & 1) == 0)
      {
        v67 = 7;
        goto LABEL_68;
      }
    }

    v71 = 0;
LABEL_27:
    v44 = sub_1C07714C8(v82, 0x646E4970756F7267, 0xEF6C6562614C7865, v6, v7, sub_1C076FFC8, sub_1C076E89C);
    v45 = sub_1C07714C8(v82, 0xD000000000000018, 0x80000001C0A02710, v6, v7, sub_1C076FFC8, sub_1C076E89C);

    sub_1C05149C4(v81);
    v46 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = sub_1C057EAB4(v17);
    v50 = *(v83 + 16);
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      break;
    }

    v53 = v48;
    if (*(v83 + 24) >= v52)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C0670214();
        v46 = v83;
        if (v53)
        {
          goto LABEL_35;
        }

LABEL_34:
        sub_1C0670C64(v49, v17, MEMORY[0x1E69E7CC0], v83);
        v46 = v83;
        goto LABEL_35;
      }

      if ((v48 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_1C057B824(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_1C057EAB4(v17);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_82;
      }

      v49 = v54;
      v46 = v83;
      if ((v53 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_35:
    v56 = *(v46 + 56);
    v57 = *(v56 + 8 * v49);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 8 * v49) = v57;
    if ((v58 & 1) == 0)
    {
      v57 = sub_1C0519CF8(0, *(v57 + 2) + 1, 1, v57);
      *(v56 + 8 * v49) = v57;
    }

    v60 = *(v57 + 2);
    v59 = *(v57 + 3);
    if (v60 >= v59 >> 1)
    {
      *(v56 + 8 * v49) = sub_1C0519CF8((v59 > 1), v60 + 1, 1, v57);
    }

    v61 = *(v56 + 8 * v49);
    *(v61 + 16) = v60 + 1;
    v62 = v61 + 96 * v60;
    *(v62 + 32) = v78;
    *(v62 + 40) = v80;
    *(v62 + 48) = v76;
    *(v62 + 56) = v75;
    *(v62 + 64) = v74;
    *(v62 + 72) = v73;
    *(v62 + 80) = v72;
    *(v62 + 88) = v43 & 1;
    *(v62 + 89) = v71;
    *(v62 + 92) = v44;
    *(v62 + 96) = BYTE4(v44) & 1;
    LOBYTE(v84) = BYTE4(v44) & 1;
    *(v62 + 97) = v84;
    *(v62 + 99) = BYTE2(v84);
    *(v62 + 100) = v45;
    *(v62 + 104) = BYTE4(v45) & 1;
    *(v62 + 105) = v83;
    *(v62 + 108) = v83 >> 24;
    *(v62 + 112) = 0;
    *(v62 + 120) = 1;
    v5 = v79 + 2;
    v4 = sub_1C07721FC;
    v3 = v77 - 1;
    if (v77 == 1)
    {
      return v83;
    }
  }

  __break(1u);
LABEL_82:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology13UsoGraphUtilsO0D15FromStringErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xA)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_1C0770FA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 17))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C0770FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C0771034(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    *result = a2 - 11;
    *(result + 8) = 0;
    LOBYTE(a2) = 11;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C077105C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C095D84C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C076FDB0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1C095D84C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_1C07714C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = sub_1C095D74C();
  v11 = [a1 rangeWithName_];

  if (v11 == sub_1C095D14C())
  {
    goto LABEL_3;
  }

  sub_1C095DACC();
  if (v12)
  {
    goto LABEL_3;
  }

  v15 = sub_1C095D8EC();
  v19 = v18;
  if (!((v15 ^ v16) >> 14))
  {

LABEL_3:
    v13 = 0;
    LOBYTE(v14) = 1;
    return v13 | ((v14 & 1) << 32);
  }

  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = sub_1C076FE2C(v15, v16, v17, v18, 10, a6);
  if ((v23 & 0x10000000000) != 0)
  {
    v23 = a7(v20, v21, v22, v19, 10);
  }

  v14 = (v23 & 0x100000000uLL) >> 32;
  v13 = v23;
  if ((v23 & 0x100000000) != 0)
  {
    v13 = 0;
  }

  return v13 | ((v14 & 1) << 32);
}

char *sub_1C0771610(uint64_t a1, uint64_t a2)
{
  if (sub_1C095D7CC() >= 1)
  {
    v34 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C095D7EC();
      v7 = sub_1C095D8BC();
      v9 = v7;
      v10 = v8;
      if (!*(v6 + 2))
      {
        if (v7 == 32 && v8 == 0xE100000000000000)
        {
          v11 = 1;
          goto LABEL_27;
        }

        v14 = sub_1C095DF3C();
        v16 = v9 == 46 && v10 == 0xE100000000000000;
        if ((v14 & 1) == 0 && !v16 && (sub_1C095DF3C() & 1) == 0)
        {

          sub_1C076E764();
          swift_allocError();
          *v33 = a1;
          *(v33 + 8) = a2;
          *(v33 + 16) = 1;
          swift_willThrow();

          return v6;
        }
      }

      v11 = v10 == 0xE100000000000000;
      if (v9 == 34 && v10 == 0xE100000000000000)
      {
LABEL_3:

        v4 ^= 1u;
LABEL_4:
        ++v5;
        goto LABEL_5;
      }

LABEL_27:
      if (sub_1C095DF3C())
      {
        goto LABEL_3;
      }

      if (v9 == 46 && v11)
      {

        if (v4)
        {
          v4 = 1;
          goto LABEL_4;
        }
      }

      else
      {
        v17 = sub_1C095DF3C();

        if (v4 & 1 | ((v17 & 1) == 0))
        {
          v4 |= v17;
          goto LABEL_4;
        }
      }

      v18 = sub_1C095D7EC();
      if (__OFSUB__(v5, v34))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (sub_1C095D7EC() >> 14 < v18 >> 14)
      {
        goto LABEL_50;
      }

      v19 = sub_1C095D8EC();
      v20 = MEMORY[0x1C68DD630](v19);
      v22 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C051B0D4(0, *(v6 + 2) + 1, 1, v6);
      }

      v24 = *(v6 + 2);
      v23 = *(v6 + 3);
      if (v24 >= v23 >> 1)
      {
        v6 = sub_1C051B0D4((v23 > 1), v24 + 1, 1, v6);
      }

      *(v6 + 2) = v24 + 1;
      v25 = &v6[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      if (__OFADD__(v5, 2))
      {
        goto LABEL_51;
      }

      v4 = 0;
      v34 = v5 + 1;
      v5 += 2;
LABEL_5:
      if (v5 >= sub_1C095D7CC())
      {
        goto LABEL_42;
      }
    }
  }

  v34 = 0;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v26 = sub_1C095D7EC();
  if (__OFSUB__(v5, v34))
  {
    goto LABEL_52;
  }

  if (sub_1C095D7EC() >> 14 < v26 >> 14)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v27 = sub_1C095D8EC();
  a2 = MEMORY[0x1C68DD630](v27);
  a1 = v28;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_54:
    v6 = sub_1C051B0D4(0, *(v6 + 2) + 1, 1, v6);
  }

  v30 = *(v6 + 2);
  v29 = *(v6 + 3);
  if (v30 >= v29 >> 1)
  {
    v6 = sub_1C051B0D4((v29 > 1), v30 + 1, 1, v6);
  }

  *(v6 + 2) = v30 + 1;
  v31 = &v6[16 * v30];
  *(v31 + 4) = a2;
  *(v31 + 5) = a1;
  return v6;
}

uint64_t sub_1C0771A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1C095D16C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) <= a2)
  {
    goto LABEL_9;
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = a1 + 16 * a2;
  v15 = *(v13 + 32);
  v14 = *(v13 + 40);
  v31[0] = v15;
  v31[1] = v14;

  sub_1C095D15C();
  sub_1C051D6F4();
  v16 = sub_1C095DB5C();
  v18 = v17;
  (*(v8 + 8))(v12, v7);

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

LABEL_9:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
LABEL_10:
    *a3 = v21;
    a3[1] = v22;
    a3[2] = v23;
    a3[3] = v24;
    a3[4] = v25;
    return result;
  }

  v20 = sub_1C0771610(v15, v14);
  if (v3)
  {
  }

  if (*(v20 + 2) != 3)
  {

    sub_1C076E764();
    swift_allocError();
    *v30 = v15;
    *(v30 + 8) = v14;
    *(v30 + 16) = 1;
    return swift_willThrow();
  }

  v26 = v20;

  if (!*(v26 + 2))
  {
    goto LABEL_18;
  }

  v27 = *(v26 + 4);
  v28 = *(v26 + 5);

  v21 = sub_1C095D7CC();

  v29 = *(v26 + 2);
  if (v29 >= 2)
  {
    if (v29 != 2)
    {
      v22 = *(v26 + 6);
      v23 = *(v26 + 7);
      v24 = *(v26 + 8);
      v25 = *(v26 + 9);

      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1C0771C78()
{
  result = qword_1EBE1F770;
  if (!qword_1EBE1F770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F768, &qword_1C0999A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F770);
  }

  return result;
}

uint64_t sub_1C0771CFC(uint64_t result)
{
  if (result)
  {

    return swift_unownedRelease();
  }

  return result;
}

unint64_t sub_1C0771D3C()
{
  result = qword_1EBE1F778;
  if (!qword_1EBE1F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F778);
  }

  return result;
}

uint64_t sub_1C0771D90(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C095D84C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C076FDB0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1C095D84C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t Siri_Nl_Core_Protocol_SemVer.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SemVer() + 28);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t type metadata accessor for Siri_Nl_Core_Protocol_SemVer()
{
  result = qword_1EBE1F7C0;
  if (!qword_1EBE1F7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_SemVer.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SemVer() + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nl_Core_Protocol_SemVer.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SemVer() + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C0772478()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F790);
  __swift_project_value_buffer(v0, qword_1EBE1F790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major_version";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor_version";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "patch_version";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t static Siri_Nl_Core_Protocol_SemVer._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nl_Core_Protocol_SemVer.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C095D52C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_SemVer.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C095D67C(), !v1))
  {
    if (!v0[1] || (result = sub_1C095D67C(), !v1))
    {
      if (!v0[2] || (result = sub_1C095D67C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SemVer() + 28);
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_SemVer.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  sub_1C0772D7C(&qword_1EBE1F7A8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C077295C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0772D7C(&qword_1EBE1F7D0, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07729D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C0772A80(uint64_t a1)
{
  v2 = sub_1C0772D7C(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0772AEC()
{
  sub_1C0772D7C(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);

  return sub_1C095D5AC();
}

uint64_t _s12SiriOntology0A24_Nl_Core_Protocol_SemVerV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Siri_Nl_Core_Protocol_SemVer() + 28);
  sub_1C095D38C();
  sub_1C0772D7C(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C0772D7C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C0772DC4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void (*a2)(void *__return_ptr, uint64_t, uint64_t)@<X2>, char *a3@<X8>)
{
  result = a1(__src);
  v6 = __src[1];
  if (__src[1])
  {
    v7 = __src[0];
    v8 = *(__src[3] + 16);
    if (v8)
    {
      memcpy(__dst, (__src[3] + 1344 * v8 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v13 + 1);
      sub_1C05AFFBC(v7, v6);
      memcpy(__src, __dst, 0x20AuLL);
      result = sub_1C0573598(__src);
      if (result != 1)
      {
        memcpy(v13 + 1, __src, 0x20AuLL);
        if (sub_1C057363C(v13 + 1) == 8)
        {
          v9 = sub_1C05272F0(v13 + 1);
          v10 = *(v9 + 16);
          v11 = *(v9 + 24);

          a2(v13, v10, v11);
          result = sub_1C05B000C(__dst);
          v12 = v13[0];
          if (LOBYTE(v13[0]) != 35)
          {
            goto LABEL_10;
          }
        }

        else
        {
          result = sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      result = sub_1C05AFFBC(__src[0], __src[1]);
    }
  }

  v12 = 35;
LABEL_10:
  *a3 = v12;
  return result;
}

void sub_1C0772F10(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_1C05B00B0(a1, __src);
  v3 = __src[1];
  if (!__src[1])
  {
    goto LABEL_9;
  }

  v4 = __src[0];
  v5 = *(__src[3] + 16);
  if (!v5)
  {
    sub_1C05AFFBC(__src[0], __src[1]);
    goto LABEL_9;
  }

  memcpy(__dst, (__src[3] + 1344 * v5 - 1312), 0x20AuLL);
  sub_1C05AFF4C(__dst, v11);
  sub_1C05AFFBC(v4, v3);
  memcpy(__src, __dst, 0x20AuLL);
  if (sub_1C0573598(__src) == 1)
  {
LABEL_9:
    v9 = -1;
    goto LABEL_10;
  }

  memcpy(v11, __src, 0x20AuLL);
  if (sub_1C057363C(v11) != 8)
  {
    sub_1C05B000C(__dst);
    goto LABEL_9;
  }

  v6 = sub_1C05272F0(v11);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  AddressOntologyNode.CountryCode.init(rawValue:)(&v10);
  sub_1C05B000C(__dst);
  v9 = v10;
  if (v10 == 255)
  {
    goto LABEL_9;
  }

LABEL_10:
  *a2 = v9;
}

void sub_1C0773048(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C05B00C4(a1, __src);
  v3 = __src[1];
  if (__src[1])
  {
    v4 = __src[0];
    v5 = *(__src[3] + 16);
    if (v5)
    {
      memcpy(__dst, (__src[3] + 1344 * v5 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v11);
      sub_1C05AFFBC(v4, v3);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v11, __src, 0x20AuLL);
        if (sub_1C057363C(v11) == 8)
        {
          v6 = sub_1C05272F0(v11);
          v7 = *(v6 + 16);
          v8 = *(v6 + 24);

          AddressOntologyNode.Proximity.init(rawValue:)(&v10);
          sub_1C05B000C(__dst);
          v9 = v10;
          if (v10 != 5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(__src[0], __src[1]);
    }
  }

  v9 = 5;
LABEL_10:
  *a2 = v9;
}

void sub_1C0773180(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C05B00D8(a1, __src);
  v3 = __src[1];
  if (__src[1])
  {
    v4 = __src[0];
    v5 = *(__src[3] + 16);
    if (v5)
    {
      memcpy(__dst, (__src[3] + 1344 * v5 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v11);
      sub_1C05AFFBC(v4, v3);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v11, __src, 0x20AuLL);
        if (sub_1C057363C(v11) == 8)
        {
          v6 = sub_1C05272F0(v11);
          v7 = *(v6 + 16);
          v8 = *(v6 + 24);

          AddressOntologyNode.Continent.init(rawValue:)(&v10);
          sub_1C05B000C(__dst);
          v9 = v10;
          if (v10 != 8)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(__src[0], __src[1]);
    }
  }

  v9 = 8;
LABEL_10:
  *a2 = v9;
}

void sub_1C07732B8(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_1C05B0100(a1, __src);
  v3 = __src[1];
  if (__src[1])
  {
    v4 = __src[0];
    v5 = *(__src[3] + 16);
    if (v5)
    {
      memcpy(__dst, (__src[3] + 1344 * v5 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v11);
      sub_1C05AFFBC(v4, v3);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v11, __src, 0x20AuLL);
        if (sub_1C057363C(v11) == 8)
        {
          v6 = sub_1C05272F0(v11);
          v7 = *(v6 + 16);
          v8 = *(v6 + 24);

          AddressOntologyNode.StreetType.init(rawValue:)(&v10);
          sub_1C05B000C(__dst);
          v9 = v10;
          if (v10 != 180)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(__src[0], __src[1]);
    }
  }

  v9 = -76;
LABEL_10:
  *a2 = v9;
}

void sub_1C07733F0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1C05B0114(a1, __src);
  v3 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v4 = *&__src[0];
    v5 = *(*(&__src[1] + 1) + 16);
    if (v5)
    {
      memcpy(__dst, (*(&__src[1] + 1) + 1344 * v5 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v10);
      sub_1C05AFFBC(v4, v3);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v10, __src, 0x20AuLL);
        if (sub_1C057363C(v10) == 8)
        {
          v6 = sub_1C05272F0(v10);
          v7 = *(v6 + 16);
          v8 = *(v6 + 24);
          v9 = sub_1C095DD6C();
          sub_1C05B000C(__dst);
          if (!v9)
          {
            *a2 = 0;
            return;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1));
    }
  }

  *a2 = 1;
}

__n128 OccupantIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t OccupantIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t static OccupantIntentNode.from(intentNode:ontologyNode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

void *OccupantIntentNode.namePrefix.getter@<X0>(char *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A60, &qword_1C0972FF0);
  swift_initStaticObject();
  return sub_1C0772DC4(sub_1C05B0074, PersonOntologyNode.PersonNamePrefix.init(rawValue:), a1);
}

void *OccupantIntentNode.namePostfix.getter@<X0>(char *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A58, qword_1C0972FD0);
  swift_initStaticObject();
  return sub_1C0772DC4(sub_1C05B0088, PersonOntologyNode.PersonNamePostfix.init(rawValue:), a1);
}

uint64_t sub_1C0773760()
{
  v1 = *(v0 + 16);
  __src[33] = *v0;
  __src[34] = v1;
  v13 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  sub_1C05B06D4(inited, __src);
  v3 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v4 = *&__src[0];
    v5 = *(*(&__src[1] + 1) + 16);
    if (v5)
    {
      memcpy(__dst, (*(&__src[1] + 1) + 1344 * v5 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v10);
      sub_1C05AFFBC(v4, v3);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v10, __src, 0x20AuLL);
        v6 = sub_1C057363C(v10);
        if (v6 == 4 || v6 == 7)
        {
          v7 = sub_1C05272F0(v10);
          result = *v7;
          v9 = v7[1];
          return result;
        }

        sub_1C05B000C(__dst);
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1));
    }
  }

  return 0;
}

uint64_t CentroidIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 CentroidIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t static CentroidIntentNode.from(intentNode:ontologyNode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

uint64_t sub_1C07739BC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17240, &qword_1C0970A20);
      v4 = sub_1C095D9CC();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1C05149F8(v3, v5, &qword_1EBE17240, &qword_1C0970A20);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1C05145B4(v3, &qword_1EBE17240, &qword_1C0970A20);
    return v4;
  }

  return result;
}

uint64_t NLIntent.ProtobufDeserializationError.hashValue.getter()
{
  v1 = *v0;
  sub_1C095DFEC();
  MEMORY[0x1C68DDE90](v1);
  return sub_1C095E03C();
}

uint64_t NLIntent.init(protobufData:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_1C095D3BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1C0773CB4(a1, a2);
  sub_1C095D3AC();
  sub_1C0773D08();
  sub_1C095D57C();
  if (!v2)
  {
    sub_1C077CD70(v13, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
    sub_1C0773DB4(v11);
    sub_1C077CDD8(v13, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
  }

  return sub_1C0773D60(a1, a2);
}

uint64_t sub_1C0773CB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1C0773D08()
{
  result = qword_1EBE14FF0;
  if (!qword_1EBE14FF0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE14FF0);
  }

  return result;
}

uint64_t sub_1C0773D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C0773DB4(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v353 = v3;
  v354 = v1;
  v4 = v2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v351 = *(v5 - 8);
  v352 = v5;
  v6 = *(v351 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v346 = (&v346 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v347 = &v346 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v350 = &v346 - v12;
  v416 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v418 = *(v416 - 8);
  v13 = *(v418 + 64);
  MEMORY[0x1EEE9AC00](v416);
  v402 = &v346 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v401 = &v346 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v415 = &v346 - v19;
  v414 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v421 = *(v414 - 8);
  v20 = *(v421 + 64);
  MEMORY[0x1EEE9AC00](v414);
  v400 = &v346 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v410 = &v346 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v413 = &v346 - v26;
  v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v365 = &v346 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v364 = &v346 - v31;
  v32 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v363 = &v346 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v362 = &v346 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v399 = &v346 - v39;
  v408 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v417 = *(v408 - 8);
  v40 = *(v417 + 64);
  v41 = MEMORY[0x1EEE9AC00](v408);
  v398 = (&v346 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v397 = &v346 - v43;
  v420 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v419 = *(v420 - 1);
  v44 = v419[8];
  MEMORY[0x1EEE9AC00](v420);
  v407 = (&v346 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v396 = &v346 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v412 = &v346 - v50;
  v51 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v359 = *(v51 - 8);
  v360 = v51;
  v52 = *(v359 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v425 = (&v346 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v370 = &v346 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v369 = &v346 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v380 = &v346 - v61;
  v406 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v411 = *(v406 - 8);
  v62 = *(v411 + 64);
  v63 = MEMORY[0x1EEE9AC00](v406);
  v368 = &v346 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v367 = &v346 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v346 - v67;
  v395 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v409 = *(v395 - 8);
  v69 = *(v409 + 64);
  v70 = MEMORY[0x1EEE9AC00](v395);
  v366 = &v346 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v384 = &v346 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x1EEE9AC00](v73 - 8);
  v372 = &v346 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v371 = &v346 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v383 = &v346 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v382 = &v346 - v81;
  v387 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v394 = *(v387 - 8);
  v82 = *(v394 + 64);
  v83 = MEMORY[0x1EEE9AC00](v387);
  v391 = &v346 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83);
  v423 = &v346 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7E0, &qword_1C0999E38);
  v87 = *(v86 - 1);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v427 = (&v346 - v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7E8, &unk_1C0999E40);
  v91 = *(*(v90 - 8) + 64);
  v92 = MEMORY[0x1EEE9AC00](v90 - 8);
  v426 = &v346 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v96 = &v346 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v346 - v98;
  MEMORY[0x1EEE9AC00](v97);
  v101 = (&v346 - v100);
  v102 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  v356 = v4;
  v103 = *(v4 + v102);
  swift_beginAccess();
  v104 = *(v103 + 16);
  v105 = v104;
  if (v104 == 0.0)
  {
    v105 = 0.0;
  }

  v349 = v105;
  swift_beginAccess();
  v358 = v103;
  v106 = *(v103 + 24);
  v107 = *(v103 + 32);
  v108 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v108 = v106 & 0xFFFFFFFFFFFFLL;
  }

  v379 = v68;
  if (v108)
  {
    v348 = v106;
  }

  else
  {
    v348 = 0;
    v107 = 0;
  }

  v109 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  v110 = v358;
  swift_beginAccess();
  v422 = v109;
  v111 = *(*(v110 + v109) + 16);
  if (!v111)
  {

    sub_1C077C1C0();
    swift_allocError();
    v124 = 2;
LABEL_22:
    *v123 = v124;
    goto LABEL_23;
  }

  v355 = v107;
  v429 = (v87 + 56);
  v428 = (v87 + 48);

  v113 = 0;
  v405 = v112;
  while (1)
  {
    if (v113 == v111)
    {
      v114 = 1;
      v113 = v111;
    }

    else
    {
      if ((v113 & 0x8000000000000000) != 0)
      {
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
        goto LABEL_273;
      }

      if (v113 >= *(v112 + 16))
      {
        goto LABEL_269;
      }

      v115 = v112 + ((*(v394 + 80) + 32) & ~*(v394 + 80)) + *(v394 + 72) * v113;
      v116 = *(v86 + 12);
      v117 = v427;
      *v427 = v113;
      sub_1C077CD70(v115, v117 + v116, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      sub_1C0575620(v117, v99, &qword_1EBE1F7E0, &qword_1C0999E38);
      v114 = 0;
      ++v113;
    }

    v118 = *v429;
    (*v429)(v99, v114, 1, v86);
    sub_1C0575620(v99, v101, &qword_1EBE1F7E8, &unk_1C0999E40);
    v119 = *v428;
    if ((*v428)(v101, 1, v86) == 1)
    {
      break;
    }

    v120 = *v101;
    v121 = *(v86 + 12);
    v122 = *(v101 + v121);
    sub_1C077CDD8(v101 + v121, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if (v120)
    {
      v112 = v405;
      if ((v122 & 0x80000000) != 0 || *(v405 + 16) <= v122)
      {

        sub_1C077C1C0();
        swift_allocError();
        v124 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v112 = v405;
      if (v122 != -1)
      {

        sub_1C077C1C0();
        swift_allocError();
        *v178 = 0;
LABEL_23:
        swift_willThrow();
        return sub_1C077CDD8(v356, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
      }
    }
  }

  v424 = v111;
  v375 = sub_1C058C658(MEMORY[0x1E69E7CC0]);
  v111 = 0;
  while (1)
  {
    if (v111 == v424)
    {
      v126 = 1;
      v111 = v424;
      v127 = v426;
    }

    else
    {
      if ((v111 & 0x8000000000000000) != 0)
      {
        goto LABEL_270;
      }

      if (v111 >= *(v405 + 16))
      {
        goto LABEL_271;
      }

      v99 = v111 + 1;
      v128 = v405 + ((*(v394 + 80) + 32) & ~*(v394 + 80)) + *(v394 + 72) * v111;
      v129 = *(v86 + 12);
      v130 = v427;
      *v427 = v111;
      sub_1C077CD70(v128, v130 + v129, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      v131 = v130;
      v127 = v426;
      sub_1C0575620(v131, v426, &qword_1EBE1F7E0, &qword_1C0999E38);
      v126 = 0;
      ++v111;
    }

    v118(v127, v126, 1, v86);
    sub_1C0575620(v127, v96, &qword_1EBE1F7E8, &unk_1C0999E40);
    if (v119(v96, 1, v86) == 1)
    {
      break;
    }

    v132 = *v96;
    v133 = *(v86 + 12);
    v134 = *&v96[v133];
    sub_1C077CDD8(&v96[v133], type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if ((v134 & 0x80000000) == 0)
    {
      v135 = v375;
      if (v375[2] && (v136 = sub_1C0514E38(v134), (v137 & 1) != 0))
      {
        v138 = *(v135[7] + 8 * v136);
      }

      else
      {
        v139 = MEMORY[0x1E69E7CC0];
      }

      v140 = v139;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v141 = v140;
      }

      else
      {
        v141 = sub_1C0578BE4(0, *(v140 + 16) + 1, 1, v140);
      }

      v143 = *(v141 + 2);
      v142 = *(v141 + 3);
      v144 = v143 + 1;
      if (v143 >= v142 >> 1)
      {
        v404 = v143 + 1;
        v158 = sub_1C0578BE4((v142 > 1), v143 + 1, 1, v141);
        v144 = v404;
        v141 = v158;
      }

      *(v141 + 2) = v144;
      *&v141[8 * v143 + 32] = v132;
      v145 = v141;

      v99 = v375;
      LODWORD(v404) = swift_isUniquelyReferenced_nonNull_native();
      *&v434[0] = v99;
      v147 = sub_1C0514E38(v134);
      v148 = *(v99 + 16);
      v149 = (v146 & 1) == 0;
      v150 = v148 + v149;
      if (__OFADD__(v148, v149))
      {
        goto LABEL_272;
      }

      if (*(v99 + 24) >= v150)
      {
        if ((v404 & 1) == 0)
        {
          v99 = v434;
          v404 = v147;
          LODWORD(v403) = v146;
          sub_1C0670674();
          LOBYTE(v146) = v403;
          v147 = v404;
        }
      }

      else
      {
        LODWORD(v403) = v146;
        sub_1C057C22C(v150, v404);
        v99 = *&v434[0];
        v151 = sub_1C0514E38(v134);
        v152 = v146 & 1;
        LOBYTE(v146) = v403;
        if ((v403 & 1) != v152)
        {
          goto LABEL_276;
        }

        v147 = v151;
      }

      v153 = *&v434[0];
      v375 = *&v434[0];
      if (v146)
      {
        v154 = *(*&v434[0] + 56);
        v99 = *(v154 + 8 * v147);
        *(v154 + 8 * v147) = v145;
      }

      else
      {
        *(*&v434[0] + 8 * (v147 >> 6) + 64) |= 1 << v147;
        *(v153[6] + 8 * v147) = v134;
        *(v153[7] + 8 * v147) = v145;
        v155 = v153[2];
        v156 = __OFADD__(v155, 1);
        v157 = v155 + 1;
        if (v156)
        {
          goto LABEL_275;
        }

        v153[2] = v157;
      }
    }
  }

  v96 = *(v405 + 16);
  if (v96)
  {
    v159 = *(v405 + 16);
    v160 = sub_1C095D9CC();
    *(v160 + 16) = v96;
    v361 = v160;
    memset((v160 + 32), 1, v96);
  }

  else
  {
    v361 = MEMORY[0x1E69E7CC0];
  }

  v111 = v423;
  v86 = *&v422[v358];
  v99 = v86[2];
  if (!v99)
  {
    goto LABEL_63;
  }

  v161 = *&v422[v358];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_273:
    v162 = sub_1C079172C(v361);
    goto LABEL_57;
  }

  v162 = v361;
LABEL_57:
  v163 = v86 + ((*(v394 + 80) + 32) & ~*(v394 + 80));
  v164 = *(v394 + 72);
  v361 = v162;
  v165 = v162 + 32;
  do
  {
    sub_1C077CD70(v163, v111, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    v166 = *v111;
    sub_1C077CDD8(v111, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if ((v166 & 0x80000000) == 0 && *(v361 + 16) > v166)
    {
      v165[v166] = 0;
    }

    v163 += v164;
    --v99;
  }

  while (v99);

LABEL_63:
  v167 = 0;
  v168 = v361;
  v99 = *(v361 + 16);
  v169 = MEMORY[0x1E69E7CC0];
LABEL_64:
  v170 = v167;
  while (v99 != v170)
  {
    if (v170 >= *(v168 + 16))
    {
      goto LABEL_265;
    }

    v167 = v170 + 1;
    v171 = *(v168 + v170++ + 32);
    if (v171 == 1)
    {
      v172 = v169;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v169 = v172;
      }

      else
      {
        v169 = sub_1C0578BE4(0, *(v172 + 2) + 1, 1, v172);
      }

      v174 = *(v169 + 2);
      v173 = *(v169 + 3);
      v86 = (v174 + 1);
      v168 = v361;
      if (v174 >= v173 >> 1)
      {
        v169 = sub_1C0578BE4((v173 > 1), v174 + 1, 1, v169);
        v168 = v361;
      }

      *(v169 + 2) = v86;
      *&v169[8 * v174 + 32] = v167 - 1;
      goto LABEL_64;
    }
  }

  v175 = v169;
  memset(v434, 0, 40);
  v403 = sub_1C07739BC(v434, v96);
  v176 = v375;
  v111 = v382;
  if (v96)
  {
    v99 = v375;
    v177 = sub_1C095D9CC();
    *(v177 + 16) = v96;
    v385 = v177;
    bzero((v177 + 32), v96);
    v176 = v99;
  }

  else
  {
    v385 = MEMORY[0x1E69E7CC0];
  }

  v179 = v391;
  v180 = v405;
  v181 = v175;
  v390 = *(v175 + 2);
  v375 = v176;
  if (v390)
  {
    v357 = v176 + 8;
    v377 = (v409 + 48);
    v378 = (v409 + 56);
    v419 += 6;
    v381 = (v417 + 56);
    v392 = (v417 + 48);
    v393 = (v411 + 48);
    v411 = v418 + 48;
    v386 = v405 + ((*(v394 + 80) + 32) & ~*(v394 + 80));
    v421 += 48;
LABEL_81:
    v182 = 0;
    v388 = v181;
    v389 = v181 + 32;
    while (2)
    {
      if (v182 >= *(v181 + 2))
      {
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
        goto LABEL_260;
      }

      v183 = *&v389[8 * v182];
      if ((v183 & 0x8000000000000000) != 0)
      {
        goto LABEL_258;
      }

      if (v183 >= *(v180 + 16))
      {
        goto LABEL_259;
      }

      v409 = v182;
      v184 = *(v394 + 72);
      v404 = v183;
      sub_1C077CD70(v386 + v184 * v183, v179, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      v185 = *(v387 + 24);
      v86 = &unk_1C0971270;
      sub_1C05149F8(&v185[v179], v111, &qword_1EBE16E10, &unk_1C0971270);
      v96 = v393;
      v186 = *v393;
      v99 = v406;
      if ((*v393)(v111, 1, v406) == 1)
      {
        sub_1C077CDD8(v179, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
        sub_1C05145B4(v111, &qword_1EBE16E10, &unk_1C0971270);
        goto LABEL_83;
      }

      sub_1C05145B4(v111, &qword_1EBE16E10, &unk_1C0971270);
      v429 = v185;
      v187 = v383;
      sub_1C05149F8(&v185[v179], v383, &qword_1EBE16E10, &unk_1C0971270);
      if (v186(v187, 1, v99) == 1)
      {
        v188 = v378;
        v189 = v379;
        *v379 = 0;
        *(v189 + 1) = 0xE000000000000000;
        *(v189 + 2) = MEMORY[0x1E69E7CC0];
        (*v188)(&v189[*(v99 + 24)], 1, 1, v395);
        v190 = &v189[*(v99 + 28)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        v86 = &qword_1EBE16E00;
        if (v186(v187, 1, v99) != 1)
        {
          sub_1C05145B4(v383, &qword_1EBE16E10, &unk_1C0971270);
        }
      }

      else
      {
        v189 = v379;
        sub_1C077CE38(v187, v379, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
        v86 = &qword_1EBE16E00;
      }

      v191 = v406;
      v99 = v380;
      sub_1C05149F8(&v189[*(v406 + 24)], v380, &qword_1EBE16E00, &qword_1C099BAE0);
      sub_1C077CDD8(v189, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
      v192 = (*v377)(v99, 1, v395);
      v193 = v425;
      if (v192 == 1)
      {
        v179 = v391;
        sub_1C077CDD8(v391, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
        sub_1C05145B4(v99, &qword_1EBE16E00, &qword_1C099BAE0);
        v111 = v382;
        goto LABEL_83;
      }

      sub_1C077CE38(v99, v384, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      v194 = v429;
      v195 = v371;
      sub_1C05149F8(&v429[v391], v371, &qword_1EBE16E10, &unk_1C0971270);
      if (v186(v195, 1, v191) == 1)
      {
        v196 = v367;
        *v367 = 0;
        *(v196 + 1) = 0xE000000000000000;
        *(v196 + 2) = MEMORY[0x1E69E7CC0];
        (*v378)(&v196[*(v191 + 24)], 1, 1, v395);
        v197 = &v196[*(v191 + 28)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        v198 = v186(v195, 1, v191);
        v199 = v196;
        v200 = v368;
        if (v198 != 1)
        {
          sub_1C05145B4(v371, &qword_1EBE16E10, &unk_1C0971270);
        }
      }

      else
      {
        v199 = v367;
        sub_1C077CE38(v195, v367, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
        v200 = v368;
      }

      v201 = v199[1];
      v374 = *v199;
      v376 = v201;

      sub_1C077CDD8(v199, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
      v96 = v372;
      sub_1C05149F8(&v194[v391], v372, &qword_1EBE16E10, &unk_1C0971270);
      v202 = v406;
      if (v186(v96, 1, v406) == 1)
      {
        *v200 = 0;
        *(v200 + 1) = 0xE000000000000000;
        *(v200 + 2) = MEMORY[0x1E69E7CC0];
        (*v378)(&v200[*(v202 + 24)], 1, 1, v395);
        v203 = &v200[*(v202 + 28)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        if (v186(v96, 1, v202) != 1)
        {
          sub_1C05145B4(v372, &qword_1EBE16E10, &unk_1C0971270);
        }
      }

      else
      {
        sub_1C077CE38(v96, v200, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
      }

      v204 = *(v200 + 2);

      sub_1C077CDD8(v200, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
      v205 = v366;
      sub_1C077CD70(v384, v366, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C077CDD8(v205, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
        v206 = v375;
        if (v375[2])
        {
          v373 = v204;
          v207 = sub_1C0514E38(v404);
          v111 = v382;
          if (v208)
          {
            v86 = *(v206[7] + 8 * v207);
            v99 = v86[2];

            if (v99)
            {
              v209 = (v86 + 4);
              v210 = v403;
              v211 = v403 + 4;
              v96 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                v213 = *v209++;
                v212 = v213;
                if ((v213 & 0x8000000000000000) != 0)
                {
                  goto LABEL_261;
                }

                if (v212 >= v210[2])
                {
                  goto LABEL_262;
                }

                v111 = &qword_1C0970A20;
                sub_1C05149F8(&v211[5 * v212], v433, &qword_1EBE17240, &qword_1C0970A20);
                if (*(&v433[1] + 1))
                {
                  sub_1C0531D80(v433, v434);
                  sub_1C0531D80(v434, v433);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v96 = sub_1C0578008(0, *(v96 + 2) + 1, 1, v96);
                  }

                  v215 = *(v96 + 2);
                  v214 = *(v96 + 3);
                  if (v215 >= v214 >> 1)
                  {
                    v96 = sub_1C0578008((v214 > 1), v215 + 1, 1, v96);
                  }

                  *(v96 + 2) = v215 + 1;
                  sub_1C0531D80(v433, &v96[40 * v215 + 32]);
                }

                else
                {
                  sub_1C05145B4(v433, &qword_1EBE17240, &qword_1C0970A20);
                }

                --v99;
                v210 = v403;
                if (!v99)
                {
                  goto LABEL_184;
                }
              }
            }

            v96 = MEMORY[0x1E69E7CC0];
LABEL_184:

            v111 = v382;
          }

          else
          {
            v96 = MEMORY[0x1E69E7CC0];
          }

          v204 = v373;
          if (*(v96 + 2))
          {
LABEL_186:
            v86 = swift_allocObject();
            v282 = v376;
            v86[2] = v374;
            v86[3] = v282;
            v86[4] = v204;
            v86[5] = v96;
            v279 = &type metadata for NonTerminalIntentNode;
            v280 = &protocol witness table for NonTerminalIntentNode;
LABEL_187:
            v179 = v391;
LABEL_188:
            v435[1] = 0;
            v435[2] = 0;
            v435[0] = v86;
            v435[3] = v279;
            v435[4] = v280;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v283 = v385;
            }

            else
            {
              v283 = sub_1C079172C(v385);
            }

            v99 = v404;
            if (v404 >= *(v283 + 2))
            {
              goto LABEL_263;
            }

            v385 = v283;
            v283[v404 + 32] = 1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v403 = sub_1C0791718(v403);
            }

            sub_1C077CDD8(v384, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
            sub_1C077CDD8(v179, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
            if (v99 >= v403[2])
            {
              goto LABEL_264;
            }

            sub_1C077C214(v435, &v403[5 * v99 + 4]);
LABEL_83:
            v182 = v409 + 1;
            v180 = v405;
            v181 = v388;
            if (v409 + 1 != v390)
            {
              continue;
            }

            v284 = 1 << *(v375 + 32);
            if (v284 < 64)
            {
              v285 = ~(-1 << v284);
            }

            else
            {
              v285 = -1;
            }

            v286 = v285 & v375[8];
            v96 = ((v284 + 63) >> 6);
            v287 = v385;
            v86 = (v385 + 32);

            v288 = 0;
            v289 = MEMORY[0x1E69E7CC0];
LABEL_200:
            while (v286)
            {
              v290 = v375;
LABEL_207:
              v292 = (v288 << 9) | (8 * __clz(__rbit64(v286)));
              v293 = *(v290[6] + v292);
              if ((v293 & 0x8000000000000000) != 0)
              {
                goto LABEL_266;
              }

              v294 = *(v287 + 16);
              if (v293 >= v294)
              {
                goto LABEL_267;
              }

              v286 &= v286 - 1;
              if ((*(v86 + v293) & 1) == 0)
              {
                v295 = *(v375[7] + v292);
                v296 = *(v295 + 16);
                v297 = (v295 + 32);
                while (v296)
                {
                  if (*v297 >= v294)
                  {
                    __break(1u);
                    goto LABEL_257;
                  }

                  v298 = *(v86 + *v297++);
                  --v296;
                  if ((v298 & 1) == 0)
                  {
                    goto LABEL_200;
                  }
                }

                v299 = v289;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v287 = v385;
                  v289 = v299;
                }

                else
                {
                  v289 = sub_1C0578BE4(0, *(v299 + 2) + 1, 1, v299);
                  v287 = v385;
                }

                v301 = *(v289 + 2);
                v300 = *(v289 + 3);
                v99 = v301 + 1;
                if (v301 >= v300 >> 1)
                {
                  v302 = sub_1C0578BE4((v300 > 1), v301 + 1, 1, v289);
                  v287 = v385;
                  v289 = v302;
                }

                *(v289 + 2) = v99;
                *&v289[8 * v301 + 32] = v293;
              }
            }

            v290 = v375;
            v111 = v382;
            while (1)
            {
              v291 = v288 + 1;
              if (__OFADD__(v288, 1))
              {
                break;
              }

              if (v291 >= v96)
              {
                v96 = v289;

                v181 = v96;
                v179 = v391;
                v180 = v405;
                v390 = *(v96 + 2);
                if (!v390)
                {
                  goto LABEL_221;
                }

                goto LABEL_81;
              }

              v286 = v357[v291];
              ++v288;
              if (v286)
              {
                v288 = v291;
                goto LABEL_207;
              }
            }

LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
            goto LABEL_268;
          }
        }

        else
        {
          v96 = MEMORY[0x1E69E7CC0];
          v111 = v382;
          if (*(MEMORY[0x1E69E7CC0] + 16))
          {
            goto LABEL_186;
          }
        }

        v86 = 0;
        v279 = 0;
        v280 = 0;
        goto LABEL_187;
      }

      break;
    }

    v373 = v204;
    v216 = v369;
    sub_1C077CE38(v205, v369, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v217 = v216;
    v218 = v370;
    sub_1C077CD70(v217, v370, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v219 = *v218;
    v220 = *(*v218 + 16);
    v221 = v420;
    if (!v220)
    {
      v224 = MEMORY[0x1E69E7CC0];
LABEL_178:
      sub_1C077CDD8(v370, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      if (*(v224 + 2))
      {
        v86 = swift_allocObject();
        v281 = v376;
        v86[2] = v374;
        v86[3] = v281;
        v86[4] = v373;
        v86[5] = v224;
        sub_1C077CDD8(v369, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
        v279 = &type metadata for TerminalIntentNode;
        v280 = &protocol witness table for TerminalIntentNode;
      }

      else
      {
        sub_1C077CDD8(v369, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);

        v86 = 0;
        v279 = 0;
        v280 = 0;
      }

      v111 = v382;
      v179 = v391;
      goto LABEL_188;
    }

    v424 = v360[9];
    v222 = v360[7];
    v418 = v360[8];
    v223 = v219 + ((*(v359 + 80) + 32) & ~*(v359 + 80));
    v417 = *(v359 + 72);
    v224 = MEMORY[0x1E69E7CC0];
    v225 = v419;
    v423 = v222;
    while (2)
    {
      v429 = v224;
      v428 = v220;
      v427 = v223;
      sub_1C077CD70(v223, v193, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
      v226 = *v193;
      v227 = v412;
      sub_1C05149F8(&v222[v193], v412, &qword_1EBE17768, &unk_1C0971250);
      v422 = *v225;
      v228 = v193;
      v229 = (v422)(v227, 1, v221);
      v426 = v226;

      sub_1C05145B4(v227, &qword_1EBE17768, &unk_1C0971250);
      if (v229 == 1)
      {
        sub_1C0558714(v434);
        v230 = v414;
        v231 = v228;
        v232 = v424;
        goto LABEL_144;
      }

      v233 = v396;
      sub_1C05149F8(&v423[v228], v396, &qword_1EBE17768, &unk_1C0971250);
      v234 = v422;
      v235 = (v422)(v233, 1, v221);
      v236 = v407;
      if (v235 == 1)
      {
        *v407 = 0;
        *(v236 + 8) = 1;
        (*v381)(v236 + *(v221 + 5), 1, 1, v408);
        v237 = v236 + *(v221 + 6);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        v238 = v234(v233, 1, v221);
        v239 = v399;
        if (v238 != 1)
        {
          sub_1C05145B4(v233, &qword_1EBE17768, &unk_1C0971250);
        }
      }

      else
      {
        sub_1C077CE38(v233, v407, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        v239 = v399;
      }

      if (*(v236 + 8) == 1)
      {
        v240 = byte_1C0999E62[*v236];
      }

      else
      {
        v240 = 9;
      }

      sub_1C05149F8(v236 + *(v221 + 5), v239, &qword_1EBE17760, &unk_1C099BB10);
      if ((*v392)(v239, 1, v408) == 1)
      {
        sub_1C077CDD8(v236, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        sub_1C05145B4(v239, &qword_1EBE17760, &unk_1C099BB10);
        v231 = v425;
        goto LABEL_130;
      }

      v241 = v239;
      v242 = v397;
      sub_1C077CE38(v241, v397, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      sub_1C077CD70(v242, v398, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v231 = v425;
        if (EnumCaseMultiPayload == 1)
        {
          v244 = v364;
          sub_1C077CE38(v398, v364, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
          v245 = v365;
          sub_1C077CD70(v244, v365, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
          sub_1C0778B9C(v245, v433);
          sub_1C077CDD8(v244, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
          sub_1C077CDD8(v397, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
          sub_1C077CDD8(v407, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
          memcpy(v434, v433, 0x301uLL);
          if (sub_1C077C378(v434) != 1)
          {
            memcpy(v430, v434, 0x301uLL);
            sub_1C077C390(v430);
            memcpy(v432, v430, 0x301uLL);
            nullsub_1(v432);
            v246 = v432;
            goto LABEL_141;
          }

LABEL_130:
          v232 = v424;
          sub_1C0558714(v433);
LABEL_143:
          v230 = v414;
          memcpy(v434, v433, 0x309uLL);
LABEL_144:
          v252 = v413;
          sub_1C05149F8(&v231[v232], v413, &qword_1EBE17778, &unk_1C0971260);
          v253 = *v421;
          v254 = v231;
          v255 = (*v421)(v252, 1, v230);
          sub_1C05145B4(v252, &qword_1EBE17778, &unk_1C0971260);
          if (v255 == 1)
          {
            sub_1C077C284(v430);
            v256 = v254;
            v257 = v411;
            v96 = v416;
            v258 = v418;
          }

          else
          {
            v259 = v410;
            sub_1C05149F8(v254 + v424, v410, &qword_1EBE17778, &unk_1C0971260);
            if (v253(v259, 1, v230) == 1)
            {
              v260 = v253;
              v261 = v400;
              _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
              v262 = *(v230 + 20);
              if (qword_1EBE15458 != -1)
              {
                swift_once();
              }

              *(v261 + v262) = qword_1EBE15460;
              v263 = v260(v410, 1, v230);

              v96 = v416;
              v256 = v425;
              v258 = v418;
              if (v263 != 1)
              {
                sub_1C05145B4(v410, &qword_1EBE17778, &unk_1C0971260);
              }
            }

            else
            {
              v256 = v254;
              v264 = v259;
              v261 = v400;
              sub_1C077CE38(v264, v400, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
              v96 = v416;
              v258 = v418;
            }

            sub_1C0777DD8(v261, v433);
            sub_1C077CDD8(v261, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            memcpy(v430, v433, 0x20AuLL);
            v257 = v411;
          }

          v265 = v415;
          sub_1C05149F8(v256 + v258, v415, &qword_1EBE17770, &unk_1C099BB00);
          v266 = *v257;
          if ((*v257)(v265, 1, v96) == 1)
          {
            sub_1C077CDD8(v256, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
            sub_1C05145B4(v265, &qword_1EBE17770, &unk_1C099BB00);
            v267 = 0;
            v268 = 0;
            v269 = 0;
            v221 = v420;
            v225 = v419;
            v224 = v429;
          }

          else
          {
            sub_1C05145B4(v265, &qword_1EBE17770, &unk_1C099BB00);
            v270 = v256 + v258;
            v271 = v401;
            sub_1C05149F8(v270, v401, &qword_1EBE17770, &unk_1C099BB00);
            if (v266(v271, 1, v96) == 1)
            {
              v272 = v96;
              v96 = v402;
              *v402 = 0;
              *(v96 + 1) = 0;
              *(v96 + 2) = 0xE000000000000000;
              v273 = &v96[*(v272 + 6)];
              _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
              sub_1C077CDD8(v256, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
              v274 = v266(v271, 1, v272);
              v224 = v429;
              if (v274 != 1)
              {
                sub_1C05145B4(v271, &qword_1EBE17770, &unk_1C099BB00);
              }
            }

            else
            {
              sub_1C077CDD8(v256, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
              v96 = v402;
              sub_1C077CE38(v271, v402, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
              v224 = v429;
            }

            v267 = *v96;
            v268 = *(v96 + 1);
            v269 = *(v96 + 2);

            sub_1C077CDD8(v96, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
            v275 = HIBYTE(v269) & 0xF;
            if ((v269 & 0x2000000000000000) == 0)
            {
              v275 = v268 & 0xFFFFFFFFFFFFLL;
            }

            if (!v275)
            {

              v267 = 0;
              v268 = 0;
              v269 = 0;
            }

            v221 = v420;
            v225 = v419;
          }

          memcpy(v433, v434, 0x309uLL);
          if (sub_1C0573614(v433) == 1 && (memcpy(v432, v430, 0x20AuLL), sub_1C0573598(v432) == 1) && !v269)
          {
          }

          else
          {
            memcpy(v431, v430, 0x20AuLL);
            memcpy(v432, v434, 0x309uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v224 = sub_1C057895C(0, *(v224 + 2) + 1, 1, v224);
            }

            v277 = *(v224 + 2);
            v276 = *(v224 + 3);
            if (v277 >= v276 >> 1)
            {
              v224 = sub_1C057895C((v276 > 1), v277 + 1, 1, v224);
            }

            *(v224 + 2) = v277 + 1;
            v96 = &v224[1344 * v277];
            memcpy(v96 + 32, v431, 0x210uLL);
            *(v96 + 70) = v426;
            memcpy(v96 + 568, v432, 0x309uLL);
            v278 = *(v436 + 3);
            *(v96 + 1345) = v436[0];
            *(v96 + 337) = v278;
            *(v96 + 169) = v267;
            *(v96 + 170) = v268;
            *(v96 + 171) = v269;
          }

          v193 = v425;
          v223 = v427 + v417;
          v220 = v428 - 1;
          v222 = v423;
          if (v428 == 1)
          {
            goto LABEL_178;
          }

          continue;
        }

        v250 = v362;
        sub_1C077CE38(v398, v362, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
        v251 = v363;
        sub_1C077CD70(v250, v363, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
        sub_1C0778564(v251, v434);
        sub_1C077CDD8(v250, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
        sub_1C077CDD8(v397, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
        sub_1C077CDD8(v407, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        v433[0] = v434[0];
        v433[1] = v434[1];
        *&v433[2] = *&v434[2];
        sub_1C077C3DC(v433);
        memcpy(v434, v433, 0x301uLL);
        nullsub_1(v434);
        v246 = v434;
LABEL_141:
        memcpy(v431, v246, sizeof(v431));
        v232 = v424;
      }

      else
      {
        sub_1C077CDD8(v397, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
        sub_1C077CDD8(v407, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        v248 = *v398;
        v247 = v398[1];
        v249 = HIBYTE(v247) & 0xF;
        if ((v247 & 0x2000000000000000) == 0)
        {
          v249 = v248 & 0xFFFFFFFFFFFFLL;
        }

        v231 = v425;
        if (!v249)
        {

          v248 = 0;
          v247 = 0;
        }

        v232 = v424;
        *&v433[0] = v248;
        *(&v433[0] + 1) = v247;
        sub_1C077C330(v433);
        memcpy(v434, v433, 0x301uLL);
        nullsub_1(v434);
        memcpy(v431, v434, sizeof(v431));
      }

      break;
    }

    memcpy(v433 + 7, v431, 0x301uLL);
    memcpy(v432, v433, 0x308uLL);
    LOBYTE(v434[0]) = v240;
    memcpy(v434 + 1, v432, 0x308uLL);
    nullsub_1(v434);
    memcpy(v433, v434, 0x309uLL);
    goto LABEL_143;
  }

LABEL_221:

  if (v403[2])
  {
    sub_1C05149F8((v403 + 4), v433, &qword_1EBE17240, &qword_1C0970A20);
    if (*(&v433[1] + 1))
    {
      sub_1C0531D80(v433, v434);
      v303 = v358;
      swift_beginAccess();
      LODWORD(v429) = *(v303 + 40);
      swift_beginAccess();
      LODWORD(v428) = *(v303 + 41);
      swift_beginAccess();
      LODWORD(v427) = *(v303 + 42);
      swift_beginAccess();
      LODWORD(v304) = *(v303 + 44);
      LODWORD(v423) = v304 - 0x7FFFFFFF;
      if ((v304 - 0x7FFFFFFF) >= 0x80000002)
      {
        v304 = v304;
      }

      else
      {
        v304 = 0;
      }

      v426 = v304;
      swift_beginAccess();
      LODWORD(v425) = *(v303 + 48);
      swift_beginAccess();
      LODWORD(v305) = *(v303 + 52);
      LODWORD(v422) = v305 - 0x7FFFFFFF;
      if ((v305 - 0x7FFFFFFF) >= 0x80000002)
      {
        v305 = v305;
      }

      else
      {
        v305 = 0;
      }

      v424 = v305;
      v306 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
      swift_beginAccess();
      v307 = v350;
      sub_1C05149F8(v303 + v306, v350, &qword_1EBE17780, &qword_1C0999E30);
      v308 = v352;
      v420 = *(v351 + 48);
      v309 = (v420)(v307, 1, v352);
      sub_1C05145B4(v307, &qword_1EBE17780, &qword_1C0999E30);
      LODWORD(v421) = v309;
      if (v309 != 1)
      {
        v310 = v347;
        sub_1C05149F8(v303 + v306, v347, &qword_1EBE17780, &qword_1C0999E30);
        v311 = v420;
        if ((v420)(v310, 1, v308) == 1)
        {
          v312 = v308;
          v313 = v346;
          *v346 = 0;
          v313[1] = 0xE000000000000000;
          v314 = v310;
          v315 = MEMORY[0x1E69E7CC0];
          v313[2] = sub_1C058BA64(MEMORY[0x1E69E7CC0]);
          v313[3] = sub_1C058BC4C(v315);
          v316 = v313 + *(v312 + 28);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          sub_1C077CDD8(v313, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
          v317 = v311(v314, 1, v312);
          v303 = v358;
          if (v317 != 1)
          {
            sub_1C05145B4(v347, &qword_1EBE17780, &qword_1C0999E30);
          }
        }

        else
        {
          v319 = v346;
          sub_1C077CE38(v310, v346, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
          sub_1C077CDD8(v319, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
          v303 = v358;
        }
      }

      v320 = v303 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
      swift_beginAccess();
      if (*(v320 + 8) == 1)
      {
        v321 = (8 * *v320);
        v322 = 0x2010003u >> (8 * *v320);
      }

      else
      {
        v322 = 3;
      }

      v323 = (v358 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
      swift_beginAccess();
      v325 = *v323;
      v324 = v323[1];
      v326 = HIBYTE(v324) & 0xF;
      if ((v324 & 0x2000000000000000) == 0)
      {
        v326 = *v323 & 0xFFFFFFFFFFFFLL;
      }

      if (v326)
      {
        v418 = v323[1];
      }

      else
      {
        v325 = 0;
        v418 = 0;
      }

      v327 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
      v328 = v358;
      swift_beginAccess();
      LODWORD(v420) = *(v328 + v327);
      v329 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
      swift_beginAccess();
      LODWORD(v419) = *(v328 + v329);
      v330 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
      swift_beginAccess();
      v331 = *(v328 + v330);
      v332 = *(v331 + 16);
      if (v332)
      {
        v416 = v325;
        LODWORD(v417) = v322;

        v333 = (v331 + 40);
        v334 = MEMORY[0x1E69E7CC0];
        do
        {
          if (*v333 == 1)
          {
            v335 = *(v333 - 1);
            if (v335)
            {
              v336 = v335 != 1;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v334 = sub_1C0578A88(0, *(v334 + 2) + 1, 1, v334);
              }

              v338 = *(v334 + 2);
              v337 = *(v334 + 3);
              if (v338 >= v337 >> 1)
              {
                v334 = sub_1C0578A88((v337 > 1), v338 + 1, 1, v334);
              }

              *(v334 + 2) = v338 + 1;
              v334[v338 + 32] = v336;
            }
          }

          v333 += 16;
          --v332;
        }

        while (v332);

        LOBYTE(v322) = v417;
        v325 = v416;
      }

      else
      {
        v334 = MEMORY[0x1E69E7CC0];
      }

      v339 = v421 == 1;
      v340 = v422 < 0x80000002;
      v341 = v423 < 0x80000002;
      sub_1C077CDD8(v356, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
      v342 = v353;
      sub_1C0531D80(v434, v353);

      v343 = v348;
      *(v342 + 40) = v349;
      *(v342 + 48) = v104 == 0.0;
      v344 = v355;
      *(v342 + 56) = v343;
      *(v342 + 64) = v344;
      *(v342 + 72) = v429;
      *(v342 + 73) = v428;
      *(v342 + 74) = v427;
      *(v342 + 80) = v426;
      *(v342 + 88) = v341;
      *(v342 + 89) = v425;
      *(v342 + 96) = v424;
      *(v342 + 104) = v340;
      *(v342 + 105) = v339;
      *(v342 + 106) = v322;
      v345 = v418;
      *(v342 + 112) = v325;
      *(v342 + 120) = v345;
      *(v342 + 128) = v420;
      *(v342 + 129) = v419;
      *(v342 + 136) = v334;
    }

    else
    {

      sub_1C05145B4(v433, &qword_1EBE17240, &qword_1C0970A20);
      sub_1C077C1C0();
      swift_allocError();
      *v318 = 2;
      swift_willThrow();
      sub_1C077CDD8(v356, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
    }
  }

  else
  {
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    result = sub_1C095DF6C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C0776E88()
{
  result = qword_1EBE1F7D8;
  if (!qword_1EBE1F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F7D8);
  }

  return result;
}

void *sub_1C0776EEC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v81 = v2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v68 - v10;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v68 - v18;
  v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v69 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v68 - v28;
  v30 = *v1;
  v82 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v31 = v82[7];
  sub_1C05149F8(v1 + v31, v29, &qword_1EBE17768, &unk_1C0971250);
  v32 = *(v20 + 48);
  v33 = v32(v29, 1, v19);
  v80 = v30;

  sub_1C05145B4(v29, &qword_1EBE17768, &unk_1C0971250);
  if (v33 == 1)
  {
    sub_1C0558714(v87);
    v34 = v1;
    v35 = v76;
  }

  else
  {
    sub_1C05149F8(v1 + v31, v27, &qword_1EBE17768, &unk_1C0971250);
    v34 = v1;
    if (v32(v27, 1, v19) == 1)
    {
      v36 = v69;
      *v69 = 0;
      *(v36 + 8) = 1;
      v37 = *(v19 + 20);
      v38 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
      (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
      v39 = v36 + *(v19 + 24);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v40 = v32(v27, 1, v19);
      v35 = v76;
      if (v40 != 1)
      {
        sub_1C05145B4(v27, &qword_1EBE17768, &unk_1C0971250);
      }
    }

    else
    {
      v36 = v69;
      sub_1C077CE38(v27, v69, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
      v35 = v76;
    }

    sub_1C077780C(v36);
  }

  v41 = v82[9];
  v42 = v34 + v41;
  v43 = v34;
  v44 = v74;
  sub_1C05149F8(v42, v74, &qword_1EBE17778, &unk_1C0971260);
  v45 = *(v75 + 48);
  v46 = v45(v44, 1, v35);
  sub_1C05145B4(v44, &qword_1EBE17778, &unk_1C0971260);
  if (v46 == 1)
  {
    sub_1C077C284(v86);
    v47 = v43;
    v49 = v78;
    v48 = v79;
  }

  else
  {
    v50 = v43 + v41;
    v51 = v70;
    sub_1C05149F8(v50, v70, &qword_1EBE17778, &unk_1C0971260);
    v47 = v43;
    if (v45(v51, 1, v35) == 1)
    {
      v52 = v71;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v53 = *(v35 + 20);
      v49 = v78;
      if (qword_1EBE15458 != -1)
      {
        swift_once();
      }

      *(v52 + v53) = qword_1EBE15460;
      v54 = v45(v51, 1, v35);

      if (v54 != 1)
      {
        sub_1C05145B4(v51, &qword_1EBE17778, &unk_1C0971260);
      }
    }

    else
    {
      v52 = v71;
      sub_1C077CE38(v51, v71, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
      v49 = v78;
    }

    sub_1C0777DD8(v52, v83);
    sub_1C077CDD8(v52, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    memcpy(v86, v83, 0x20AuLL);
    v48 = v79;
  }

  v55 = v82[8];
  v56 = v77;
  sub_1C05149F8(v47 + v55, v77, &qword_1EBE17770, &unk_1C099BB00);
  v57 = *(v49 + 48);
  v58 = v57(v56, 1, v48);
  sub_1C05145B4(v56, &qword_1EBE17770, &unk_1C099BB00);
  if (v58 == 1)
  {
    sub_1C077CDD8(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
LABEL_27:
    v62 = 0;
    v64 = 0;
    v63 = 0;
    goto LABEL_28;
  }

  v59 = v72;
  sub_1C05149F8(v47 + v55, v72, &qword_1EBE17770, &unk_1C099BB00);
  if (v57(v59, 1, v48) == 1)
  {
    v60 = v73;
    *v73 = 0;
    *(v60 + 1) = 0;
    *(v60 + 2) = 0xE000000000000000;
    v61 = &v60[*(v48 + 24)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    sub_1C077CDD8(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
    if (v57(v59, 1, v48) != 1)
    {
      sub_1C05145B4(v59, &qword_1EBE17770, &unk_1C099BB00);
    }
  }

  else
  {
    sub_1C077CDD8(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
    v60 = v73;
    sub_1C077CE38(v59, v73, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  }

  v62 = *v60;
  v64 = *(v60 + 1);
  v63 = *(v60 + 2);

  sub_1C077CDD8(v60, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  v65 = HIBYTE(v63) & 0xF;
  if ((v63 & 0x2000000000000000) == 0)
  {
    v65 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65)
  {

    goto LABEL_27;
  }

LABEL_28:
  memcpy(v85, v87, 0x309uLL);
  if (sub_1C0573614(v85) == 1 && (memcpy(v84, v86, 0x20AuLL), sub_1C0573598(v84) == 1) && !v63)
  {

    sub_1C077CEA0(v83);
    return memcpy(v81, v83, 0x540uLL);
  }

  else
  {
    memcpy(v83, v86, 0x20AuLL);
    v66 = v81;
    memcpy(v81, v83, 0x210uLL);
    v66[66] = v80;
    memcpy(v66 + 67, v87, 0x309uLL);
    v66[165] = v62;
    v66[166] = v64;
    v66[167] = v63;
    return nullsub_1(v66);
  }
}

void *sub_1C077780C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v43 = v2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - v7;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v39 - v24;
  v26 = *(v1 + 8);
  v49[0] = *v1;
  LOBYTE(v49[1]) = v26;
  sub_1C0778534(v49, v48);
  v42 = LOBYTE(v48[0]);
  v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(v1 + *(v27 + 20), v17, &qword_1EBE17760, &unk_1C099BB10);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C077CDD8(v1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    sub_1C05145B4(v17, &qword_1EBE17760, &unk_1C099BB10);
LABEL_3:
    sub_1C0558714(v49);
    return memcpy(v43, v49, 0x309uLL);
  }

  sub_1C077CE38(v17, v25, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  sub_1C077CD70(v25, v23, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C077CDD8(v1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    sub_1C077CDD8(v25, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    v34 = *v23;
    v33 = v23[1];
    v35 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v35 = *v23 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {

      v34 = 0;
      v33 = 0;
    }

    *&v47[0] = v34;
    *(&v47[0] + 1) = v33;
    sub_1C077C330(v47);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1C077CE38(v23, v13, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    v36 = v39;
    sub_1C077CD70(v13, v39, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    sub_1C0778564(v48, v36);
    sub_1C077CDD8(v1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    sub_1C077CDD8(v13, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    sub_1C077CDD8(v25, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    v47[0] = v48[0];
    v47[1] = v48[1];
    *&v47[2] = *&v48[2];
    sub_1C077C3DC(v47);
LABEL_14:
    memcpy(v48, v47, 0x301uLL);
    nullsub_1(v48);
    v32 = v48;
    goto LABEL_15;
  }

  v30 = v41;
  sub_1C077CE38(v23, v41, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  v31 = v40;
  sub_1C077CD70(v30, v40, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  sub_1C0778B9C(v31, v47);
  sub_1C077CDD8(v1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  sub_1C077CDD8(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  sub_1C077CDD8(v25, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  memcpy(v48, v47, 0x301uLL);
  if (sub_1C077C378(v48) == 1)
  {
    goto LABEL_3;
  }

  memcpy(v44, v48, 0x301uLL);
  sub_1C077C390(v44);
  memcpy(v45, v44, 0x301uLL);
  nullsub_1(v45);
  v32 = v45;
LABEL_15:
  memcpy(v49, v32, 0x301uLL);
  memcpy(&v46[7], v49, 0x301uLL);
  v37 = v43;
  v38 = v43;
  *v43 = v42;
  memcpy(v38 + 1, v46, 0x308uLL);
  return nullsub_1(v37);
}

void *sub_1C0777DD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v48 - v7;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v48 - v12;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v48 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v48 - v20;
  v22 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v48 - v28;
  v30 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v31 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v30 + v31, v21, &qword_1EBE1F7F8, &unk_1C0999E50);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1C05145B4(v21, &qword_1EBE1F7F8, &unk_1C0999E50);
    sub_1C077C284(v59);
    v32 = v59;
    v33 = v55;
    return memcpy(v33, v32, 0x20AuLL);
  }

  v34 = v55;
  sub_1C077CE38(v21, v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  sub_1C077CD70(v29, v27, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    v36 = v34;
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v46 = v49;
        sub_1C077CE38(v27, v49, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
        v47 = v50;
        sub_1C077CD70(v46, v50, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
        sub_1C0779C78(v47, v58);
        sub_1C077CDD8(v46, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
        sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
        memcpy(v59, v58, 0x20AuLL);
        if (sub_1C077CAEC(v59) == 1)
        {
          sub_1C077C284(v57);
        }

        else
        {
          memcpy(v56, v59, 0x20AuLL);
          sub_1C077CB10(v56);
          memcpy(v57, v56, 0x20AuLL);
          nullsub_1(v57);
        }

        v32 = v57;
        goto LABEL_24;
      }

      sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      v38 = v27[1];
      *&v58[0] = *v27;
      *(&v58[0] + 1) = v38;
      sub_1C077CB74(v58);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v39 = v52;
      sub_1C077CE38(v27, v52, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      v40 = v51;
      sub_1C077CD70(v39, v51, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      sub_1C077C4A0(v40);
      v42 = v41;
      sub_1C077CDD8(v39, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      if (v42)
      {
        *&v58[0] = v42;
        sub_1C077CA8C(v58);
        goto LABEL_22;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
        v37 = v27[1];
        *&v58[0] = *v27;
        *(&v58[0] + 1) = v37;
        sub_1C077C440(v58);
LABEL_22:
        memcpy(v59, v58, 0x20AuLL);
        nullsub_1(v59);
LABEL_23:
        v32 = v59;
LABEL_24:
        v33 = v36;
        return memcpy(v33, v32, 0x20AuLL);
      }

      v43 = v53;
      sub_1C077CE38(v27, v53, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v44 = v54;
      sub_1C077CD70(v43, v54, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C077B134(v44, v57);
      sub_1C077CDD8(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      if (*(&v57[1] + 1))
      {
        v58[0] = v57[0];
        v58[1] = v57[1];
        sub_1C05FC4D8(v58);
        goto LABEL_22;
      }
    }

    sub_1C077C284(v59);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      *&v58[0] = *v27;
      sub_1C077CC34(v58);
    }

    else
    {
      sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      *&v58[0] = *v27;
      sub_1C077CBD4(v58);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    *&v58[0] = *v27;
    sub_1C077CC94(v58);
  }

  else
  {
    sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    LODWORD(v58[0]) = *v27;
    sub_1C077CCF0(v58);
  }

  memcpy(v59, v58, 0x20AuLL);
  nullsub_1(v59);
  v32 = v59;
  v33 = v34;
  return memcpy(v33, v32, 0x20AuLL);
}

uint64_t sub_1C0778534@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = byte_1C0999E62[*result];
  }

  else
  {
    *a2 = 9;
  }

  return result;
}

uint64_t sub_1C0778564@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v54 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - v19;
  v21 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0) + 24);
  sub_1C05149F8(a1 + v21, v20, &qword_1EBE17758, &unk_1C0971240);
  v22 = *(v11 + 48);
  v23 = v22(v20, 1, v10);
  result = sub_1C05145B4(v20, &qword_1EBE17758, &unk_1C0971240);
  if (v23 == 1)
  {
    v44 = 0;
    v45 = 0;
    v48 = xmmword_1C0999870;
    v25 = a1;
  }

  else
  {
    sub_1C05149F8(a1 + v21, v18, &qword_1EBE17758, &unk_1C0971240);
    v25 = a1;
    if (v22(v18, 1, v10) == 1)
    {
      v26 = v54;
      *v54 = 0;
      v26[1] = 0xE000000000000000;
      v26[2] = 0;
      v26[3] = 0xE000000000000000;
      v27 = v26 + *(v10 + 24);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v22(v18, 1, v10) != 1)
      {
        sub_1C05145B4(v18, &qword_1EBE17758, &unk_1C0971240);
      }
    }

    else
    {
      v26 = v54;
      sub_1C077CE38(v18, v54, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    }

    result = sub_1C0779B98(v26, v57);
    v48 = *&v57[1];
    v44 = v57[3];
    v45 = v57[0];
  }

  v46 = v25;
  v28 = *v25;
  v29 = MEMORY[0x1E69E7CC0];
  v52 = *(*v25 + 16);
  if (v52)
  {
    v30 = 0;
    v50 = v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v51 = v28;
    v31 = MEMORY[0x1E69E7CC0];
    while (v30 < *(v28 + 16))
    {
      v54 = v31;
      v32 = v55;
      sub_1C077CD70(v50 + *(v53 + 72) * v30, v55, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      v33 = *(*v32 + 16);
      if (v33)
      {
        v34 = *v32 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v35 = *(v49 + 72);
        do
        {
          sub_1C077CD70(v34, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          sub_1C0776EEC(v6);
          memcpy(v57, v56, 0x540uLL);
          if (sub_1C077C428(v57) != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_1C057895C(0, *(v29 + 2) + 1, 1, v29);
            }

            v37 = *(v29 + 2);
            v36 = *(v29 + 3);
            if (v37 >= v36 >> 1)
            {
              v29 = sub_1C057895C((v36 > 1), v37 + 1, 1, v29);
            }

            *(v29 + 2) = v37 + 1;
            memcpy(&v29[1344 * v37 + 32], v57, 0x540uLL);
          }

          v34 += v35;
          --v33;
        }

        while (v33);
      }

      sub_1C077CDD8(v55, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      if (*(v29 + 2))
      {
        v31 = v54;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C0578940(0, v31[2] + 1, 1, v31);
          v31 = result;
        }

        v39 = v31[2];
        v38 = v31[3];
        if (v39 >= v38 >> 1)
        {
          result = sub_1C0578940((v38 > 1), v39 + 1, 1, v31);
          v31 = result;
        }

        v31[2] = v39 + 1;
        v40 = &v31[4 * v39];
        v40[4] = 0;
        v40[5] = 0xE000000000000000;
        v40[6] = MEMORY[0x1E69E7CC0];
        v40[7] = v29;
        v28 = v51;
      }

      else
      {

        v28 = v51;
        v31 = v54;
      }

      ++v30;
      v29 = MEMORY[0x1E69E7CC0];
      if (v30 == v52)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_29:
    result = sub_1C077CDD8(v46, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    if (v48 == 1 && !v31[2])
    {

      v43 = v47;
      v47[4] = 0;
      *v43 = 0u;
      v43[1] = 0u;
    }

    else
    {
      v41 = v47;
      v42 = v44;
      *v47 = v45;
      *(v41 + 1) = v48;
      v41[3] = v42;
      v41[4] = v31;
    }
  }

  return result;
}

uint64_t sub_1C0778B9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v121 = a2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v135 = *(v3 - 8);
  v4 = *(v135 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v130 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v108 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v129 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v108 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v120 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v131 = &v108 - v16;
  v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v126 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v108 - v26;
  v132 = v3;
  v133 = a1;
  v28 = *(a1 + *(v3 + 20));
  swift_beginAccess();
  v29 = *(v28 + 24);
  v128 = *(v28 + 16);
  v30 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  swift_beginAccess();
  sub_1C05149F8(v28 + v30, v27, &qword_1EBE17778, &unk_1C0971260);
  v31 = *(v18 + 48);
  v32 = v31(v27, 1, v17);
  v127 = v29;

  sub_1C05145B4(v27, &qword_1EBE17778, &unk_1C0971260);
  if (v32 == 1)
  {
    sub_1C077C284(v146);
  }

  else
  {
    sub_1C05149F8(v28 + v30, v25, &qword_1EBE17778, &unk_1C0971260);
    if (v31(v25, 1, v17) == 1)
    {
      v33 = v126;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v34 = *(v17 + 20);
      if (qword_1EBE15458 != -1)
      {
        swift_once();
      }

      *(v33 + v34) = qword_1EBE15460;
      v35 = v31(v25, 1, v17);

      if (v35 != 1)
      {
        sub_1C05145B4(v25, &qword_1EBE17778, &unk_1C0971260);
      }
    }

    else
    {
      v33 = v126;
      sub_1C077CE38(v25, v126, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    }

    sub_1C0777DD8(v33, v146);
    sub_1C077CDD8(v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }

  v36 = (v28 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
  swift_beginAccess();
  v37 = v36[1];
  v126 = *v36;
  v38 = (v28 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
  swift_beginAccess();
  v39 = v38[1];
  v124 = *v38;
  v40 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
  swift_beginAccess();
  v41 = v131;
  sub_1C05149F8(v28 + v40, v131, &qword_1EBE179C8, &qword_1C0972E60);
  v42 = *(v135 + 48);
  v43 = v132;
  v44 = v42(v41, 1, v132);
  v125 = v37;

  v123 = v39;

  sub_1C05145B4(v41, &qword_1EBE179C8, &qword_1C0972E60);
  v45 = 0;
  if (v44 != 1)
  {
    v46 = v120;
    sub_1C05149F8(v28 + v40, v120, &qword_1EBE179C8, &qword_1C0972E60);
    v47 = v42;
    if (v42(v46, 1, v43) == 1)
    {
      v48 = v122;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v49 = *(v43 + 20);
      if (qword_1EBE0FD48 != -1)
      {
        swift_once();
      }

      *(v48 + v49) = qword_1EBE0FD50;
      v50 = v47(v46, 1, v43);

      if (v50 != 1)
      {
        sub_1C05145B4(v46, &qword_1EBE179C8, &qword_1C0972E60);
      }
    }

    else
    {
      v48 = v122;
      sub_1C077CE38(v46, v122, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    }

    v42 = v47;
    sub_1C0778B9C(v136, v48);
    if (sub_1C077C378(v136) == 1)
    {
      v45 = 0;
    }

    else
    {
      type metadata accessor for AnyMatchingSpan();
      v45 = swift_allocObject();
      memcpy((v45 + 16), v136, 0x301uLL);
    }
  }

  v122 = v45;
  v51 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
  swift_beginAccess();
  v52 = v134;
  sub_1C05149F8(v28 + v51, v134, &qword_1EBE179C8, &qword_1C0972E60);
  v53 = v42(v52, 1, v43);
  sub_1C05145B4(v52, &qword_1EBE179C8, &qword_1C0972E60);
  v135 = 0;
  if (v53 != 1)
  {
    v54 = v129;
    sub_1C05149F8(v28 + v51, v129, &qword_1EBE179C8, &qword_1C0972E60);
    if (v42(v54, 1, v43) == 1)
    {
      v55 = v42;
      v56 = v130;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v57 = *(v43 + 20);
      if (qword_1EBE0FD48 != -1)
      {
        swift_once();
      }

      *(v56 + v57) = qword_1EBE0FD50;
      v58 = v55(v54, 1, v43);

      if (v58 != 1)
      {
        sub_1C05145B4(v54, &qword_1EBE179C8, &qword_1C0972E60);
      }
    }

    else
    {
      v56 = v130;
      sub_1C077CE38(v54, v130, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    }

    sub_1C0778B9C(v136, v56);
    if (sub_1C077C378(v136) == 1)
    {
      v135 = 0;
    }

    else
    {
      type metadata accessor for AnyMatchingSpan();
      v59 = swift_allocObject();
      memcpy((v59 + 16), v136, 0x301uLL);
      v135 = v59;
    }
  }

  v60 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
  swift_beginAccess();
  v61 = *(v28 + v60);
  v129 = v61 & ~(v61 >> 31);
  v62 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
  swift_beginAccess();
  v63 = *(v28 + v62);
  v134 = v63 & ~(v63 >> 31);
  v64 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
  swift_beginAccess();
  v65 = *(v28 + v64);
  v130 = v65 & ~(v65 >> 31);
  v66 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
  swift_beginAccess();
  if ((*(v28 + v66) & 0x80000000) != 0)
  {
    v131 = 0;
LABEL_36:
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0xD00000000000001ALL, 0x80000001C0A030C0);
    sub_1C095DCBC();
    sub_1C095D1EC();

    goto LABEL_37;
  }

  v131 = *(v28 + v66);
  if (v61 < 0 || v63 < 0 || v65 < 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (*(v28 + v62) < *(v28 + v60) || *(v28 + v66) < *(v28 + v64))
  {
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0xD000000000000031, 0x80000001C0A03080);
    sub_1C095DCBC();
    sub_1C095D1EC();
  }

  v67 = v135;
  v68 = v122;
  v69 = v130;
  if (v61 > v134 || v131 < v130)
  {
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0xD000000000000028, 0x80000001C0A03010);
    v143 = v129;
    v70 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v70);

    MEMORY[0x1C68DD690](0x646E49646E65202CLL, 0xEC000000203A7865);
    v143 = v134;
    v71 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v71);

    MEMORY[0x1C68DD690](0xD00000000000001BLL, 0x80000001C0A03040);
    v143 = v69;
    v72 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v72);

    MEMORY[0x1C68DD690](0xD00000000000001DLL, 0x80000001C0A03060);
    v143 = v131;
    v73 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v73);

    sub_1C095D1EC();
  }

  v74 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
  swift_beginAccess();
  v115 = *(v28 + v74);
  v75 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
  swift_beginAccess();
  v132 = *(v28 + v75);
  v76 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
  swift_beginAccess();
  LODWORD(v120) = *(v28 + v76);
  v77 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
  swift_beginAccess();
  v119 = *(v28 + v77);
  v78 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
  swift_beginAccess();
  v118 = *(v28 + v78);
  v79 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
  swift_beginAccess();
  v117 = *(v28 + v79);
  v80 = (v28 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
  swift_beginAccess();
  v81 = v80[1];
  v116 = *v80;
  v82 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
  swift_beginAccess();
  v114 = *(v28 + v82);
  v83 = (v28 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType);
  swift_beginAccess();
  v84 = *(v83 + 8);
  v141 = *v83;
  v142 = v84;
  sub_1C0779C48(&v141, v140);
  v113 = v140[0];
  v85 = (v28 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
  swift_beginAccess();
  v86 = *v85;
  v87 = v85[1];
  v112 = v86;
  v108 = v87;
  v88 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
  swift_beginAccess();
  v89 = *(v28 + v88);
  v90 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
  swift_beginAccess();
  v91 = *(v28 + v90);
  v92 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  swift_beginAccess();
  v135 = v67;
  v93 = *(v28 + v92);
  v94 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  swift_beginAccess();
  v95 = *(v28 + v94);
  v96 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
  swift_beginAccess();
  v111 = *(v28 + v96);
  v97 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
  swift_beginAccess();
  v110 = *(v28 + v97);
  v98 = v68;
  v99 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
  swift_beginAccess();
  v109 = *(v28 + v99);

  v100 = v93;

  sub_1C077CDD8(v133, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v101 = v127;
  v102 = v121;
  *v121 = v128;
  v102[1] = v101;
  memcpy(v102 + 2, v146, 0x20AuLL);
  v103 = v125;
  v102[68] = v126;
  v102[69] = v103;
  v104 = v123;
  v102[70] = v124;
  v102[71] = v104;
  v102[72] = v98;
  v102[73] = v135;
  v102[74] = v129;
  v102[75] = v134;
  v105 = v131;
  v102[76] = v130;
  v102[77] = v105;
  v102[78] = v115;
  v102[79] = v132;
  LOBYTE(v105) = v119;
  *(v102 + 640) = v120;
  *(v102 + 641) = v105;
  LOBYTE(v105) = v117;
  *(v102 + 642) = v118;
  *(v102 + 643) = v105;
  v102[81] = v116;
  v102[82] = v81;
  v102[83] = v114;
  *(v102 + 672) = v113;
  v102[85] = v112;
  v102[86] = v108;
  v102[87] = v89;
  v102[88] = v91;
  v102[89] = v100;
  v102[90] = v95;
  v106 = v110;
  v102[91] = v111;
  v102[93] = v106;
  *(v102 + 752) = 0;
  v102[95] = v109;
  *(v102 + 768) = 0;
  *(v102 + 736) = 0;
  return nullsub_1(v102);
}

uint64_t sub_1C0779B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = a1[1];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v9 = a1[2];
  v8 = a1[3];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = a1[3];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v9;
  a2[3] = v8;
  return result;
}

uint64_t sub_1C0779C48@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = byte_1C0999D40[*result];
  }

  else
  {
    *a2 = 15;
  }

  return result;
}

void *sub_1C0779C78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v189 = a2;
  *&v191 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  *&v190 = *(v191 - 8);
  v3 = *(v190 + 64);
  v4 = MEMORY[0x1EEE9AC00](v191);
  v173 = (&v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v174 = (&v163 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v172 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  *&v187 = &v163 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v171 = &v163 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v186 = &v163 - v15;
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v184 = *(v16 - 8);
  v185 = v16;
  v17 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v16);
  *&v175 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v170 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  *&v183 = &v163 - v23;
  v24 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v179 = *(v24 - 8);
  v180 = v24;
  v25 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v169 = (&v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v168 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  *&v178 = &v163 - v31;
  *&v32 = COERCE_DOUBLE(type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0));
  v181 = *(v32 - 8);
  v182 = *&v32;
  v33 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v167 = (&v163 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v166 = &v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  *&v177 = &v163 - v39;
  v40 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v41 = *(v40 - 1);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v165 = (&v163 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v163 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v164 = &v163 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  *&v176 = &v163 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v163 = &v163 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v163 - v55;
  v57 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v188 = a1;
  v58 = *(a1 + v57);
  v59 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C05149F8(v58 + v59, v56, &qword_1EBE17C50, &unk_1C099BB50);
  v60 = *(v41 + 48);
  v61 = v60(v56, 1, v40);
  sub_1C05145B4(v56, &qword_1EBE17C50, &unk_1C099BB50);
  v192 = v58;
  if (v61 == 1)
  {
    sub_1C077CD50(v201);
    v62 = v60;
  }

  else
  {
    v63 = v58 + v59;
    v64 = v163;
    sub_1C05149F8(v63, v163, &qword_1EBE17C50, &unk_1C099BB50);
    v62 = v60;
    if (v60(v64, 1, v40) == 1)
    {
      *v46 = 0;
      *(v46 + 2) = 0;
      *(v46 + 2) = 0;
      v46[24] = 1;
      *(v46 + 4) = 0;
      v46[40] = 1;
      v65 = MEMORY[0x1E69E7CC0];
      *(v46 + 41) = 0;
      *(v46 + 6) = v65;
      *(v46 + 7) = 0;
      v46[64] = 1;
      *(v46 + 17) = 0;
      v66 = &v46[v40[14]];
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v67 = v40[15];
      v68 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
      (*(*(v68 - 8) + 56))(&v46[v67], 1, 1, v68);
      v69 = v40[16];
      v70 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
      (*(*(v70 - 8) + 56))(&v46[v69], 1, 1, v70);
      if (v60(v64, 1, v40) != 1)
      {
        sub_1C05145B4(v64, &qword_1EBE17C50, &unk_1C099BB50);
      }
    }

    else
    {
      sub_1C077CE38(v64, v46, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    }

    sub_1C077B1FC(v46, v201);
  }

  v71 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  v72 = v192;
  swift_beginAccess();
  v73 = v176;
  sub_1C05149F8(v72 + v71, v176, &qword_1EBE17C50, &unk_1C099BB50);
  v74 = v62;
  v75 = v62(v73, 1, v40);
  sub_1C05145B4(v73, &qword_1EBE17C50, &unk_1C099BB50);
  if (v75 == 1)
  {
    sub_1C077CD50(v199);
    v77 = v181;
    v76 = v182;
  }

  else
  {
    v78 = v164;
    sub_1C05149F8(v72 + v71, v164, &qword_1EBE17C50, &unk_1C099BB50);
    v79 = v74(v78, 1, v40);
    v77 = v181;
    if (v79 == 1)
    {
      v80 = v165;
      *v165 = 0;
      *(v80 + 2) = 0;
      v80[2] = 0;
      *(v80 + 24) = 1;
      v80[4] = 0;
      *(v80 + 40) = 1;
      v81 = MEMORY[0x1E69E7CC0];
      *(v80 + 41) = 0;
      v80[6] = v81;
      v80[7] = 0;
      *(v80 + 64) = 1;
      *(v80 + 17) = 0;
      v82 = v80 + v40[14];
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v83 = v40[15];
      v84 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
      (*(*(v84 - 8) + 56))(v80 + v83, 1, 1, v84);
      v85 = v40[16];
      v86 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
      (*(*(v86 - 8) + 56))(v80 + v85, 1, 1, v86);
      v87 = v74(v78, 1, v40);
      v76 = v182;
      if (v87 != 1)
      {
        sub_1C05145B4(v78, &qword_1EBE17C50, &unk_1C099BB50);
      }
    }

    else
    {
      v80 = v165;
      sub_1C077CE38(v78, v165, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
      v76 = v182;
    }

    sub_1C077B1FC(v80, v199);
  }

  v88 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  v89 = v177;
  sub_1C05149F8(v72 + v88, v177, &qword_1EBE17C58, &unk_1C0973570);
  v90 = *(v77 + 48);
  v91 = v90(v89, 1, *&v76);
  sub_1C05145B4(v89, &qword_1EBE17C58, &unk_1C0973570);
  if (v91 == 1)
  {
    v182 = 0.0;
    v92 = 13824;
  }

  else
  {
    v93 = v166;
    sub_1C05149F8(v72 + v88, v166, &qword_1EBE17C58, &unk_1C0973570);
    if (v90(v93, 1, *&v76) == 1)
    {
      v94 = v167;
      *v167 = 0;
      v94[1] = 0;
      *(v94 + 16) = 1;
      v95 = v94 + *(*&v76 + 24);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v90(v93, 1, *&v76) != 1)
      {
        sub_1C05145B4(v93, &qword_1EBE17C58, &unk_1C0973570);
      }
    }

    else
    {
      v94 = v167;
      sub_1C077CE38(v93, v167, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    }

    v96 = *v94 == 0.0;
    v97 = *v94;
    if (*v94 == 0.0)
    {
      v97 = 0.0;
    }

    v182 = v97;
    v98 = v94[1];
    v99 = *(v94 + 16);
    sub_1C077CDD8(v94, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    *&v196[0] = v98;
    BYTE8(v196[0]) = v99;
    sub_1C077C190(v196, v198);
    v92 = v96 | (v198[0] << 8);
  }

  LODWORD(v181) = v92;
  v100 = v179;
  v101 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  v102 = v178;
  sub_1C05149F8(v72 + v101, v178, &qword_1EBE17C60, &unk_1C099BB40);
  v103 = *(v100 + 48);
  v104 = v180;
  v105 = v103(v102, 1, v180);
  sub_1C05145B4(v102, &qword_1EBE17C60, &unk_1C099BB40);
  if (v105 == 1)
  {
    v180 = 0;
    LODWORD(v179) = 50331648;
    v106 = v185;
  }

  else
  {
    v107 = v168;
    sub_1C05149F8(v72 + v101, v168, &qword_1EBE17C60, &unk_1C099BB40);
    if (v103(v107, 1, v104) == 1)
    {
      v108 = v169;
      *v169 = 0;
      v108[1] = 0;
      *(v108 + 16) = 1;
      v108[3] = 0;
      *(v108 + 16) = 1;
      v109 = v108 + *(v104 + 32);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v110 = v103(v107, 1, v104);
      v106 = v185;
      if (v110 != 1)
      {
        sub_1C05145B4(v107, &qword_1EBE17C60, &unk_1C099BB40);
      }
    }

    else
    {
      v108 = v169;
      sub_1C077CE38(v107, v169, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
      v106 = v185;
    }

    sub_1C077BC2C(v108, v196);
    v180 = *&v196[0];
    LODWORD(v179) = DWORD2(v196[0]);
  }

  v111 = v184;
  v112 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  v113 = v72 + v112;
  v114 = v72;
  v115 = v183;
  sub_1C05149F8(v113, v183, &qword_1EBE17C68, &unk_1C0973580);
  v116 = *(v111 + 48);
  v117 = v116(v115, 1, v106);
  sub_1C05145B4(v115, &qword_1EBE17C68, &unk_1C0973580);
  if (v117 == 1)
  {
    v185 = 0;
    LODWORD(v184) = 13824;
    v118 = v190;
    v119 = v191;
  }

  else
  {
    v120 = v170;
    sub_1C05149F8(v114 + v112, v170, &qword_1EBE17C68, &unk_1C0973580);
    if (v116(v120, 1, v106) == 1)
    {
      v121 = v175;
      *v175 = 0;
      *(v121 + 8) = 0;
      *(v121 + 16) = 1;
      v122 = v121 + *(v106 + 24);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v123 = v116(v120, 1, v106);
      v119 = v191;
      if (v123 != 1)
      {
        sub_1C05145B4(v120, &qword_1EBE17C68, &unk_1C0973580);
      }
    }

    else
    {
      v121 = v175;
      sub_1C077CE38(v120, v175, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
      v119 = v191;
    }

    v124 = *v121;
    v185 = v124 & ~(v124 >> 31);
    v125 = *(v121 + 8);
    v126 = *(v121 + 16);
    sub_1C077CDD8(v121, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    *&v196[0] = v125;
    BYTE8(v196[0]) = v126;
    sub_1C077C190(v196, v197);
    LODWORD(v184) = (v124 >> 31) | (v197[0] << 8);
    v118 = v190;
  }

  v127 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v128 = v192;
  swift_beginAccess();
  v129 = v186;
  sub_1C05149F8(v128 + v127, v186, &qword_1EBE17C70, &unk_1C099BB30);
  v130 = *(v118 + 48);
  v131 = v130(v129, 1, v119);
  sub_1C05145B4(v129, &qword_1EBE17C70, &unk_1C099BB30);
  v190 = xmmword_1C0999D30;
  *&v175 = v130;
  if (v131 == 1)
  {
    LODWORD(v186) = 0;
    v183 = xmmword_1C0999D30;
    v177 = 0u;
    v178 = 0u;
    v176 = 0u;
  }

  else
  {
    v132 = v171;
    sub_1C05149F8(v128 + v127, v171, &qword_1EBE17C70, &unk_1C099BB30);
    if (v130(v132, 1, v119) == 1)
    {
      v133 = v174;
      *v174 = 0;
      *(v133 + 1) = 0xE000000000000000;
      *(v133 + 2) = 0;
      *(v133 + 3) = 0;
      *(v133 + 32) = 1;
      *(v133 + 5) = 0;
      *(v133 + 6) = 0xE000000000000000;
      *(v133 + 28) = 0;
      *(v133 + 58) = 0;
      v134 = v133 + *(v119 + 48);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v135 = *(v119 + 52);
      v136 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
      (*(*(v136 - 8) + 56))(v133 + v135, 1, 1, v136);
      if (v130(v132, 1, v119) != 1)
      {
        sub_1C05145B4(v132, &qword_1EBE17C70, &unk_1C099BB30);
      }
    }

    else
    {
      v133 = v174;
      sub_1C077CE38(v132, v174, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    }

    sub_1C077BD04(v133, v196);
    v183 = v196[0];
    v176 = v196[3];
    v177 = v196[2];
    v178 = v196[1];
    LODWORD(v186) = LOWORD(v196[4]) | (BYTE2(v196[4]) << 16);
  }

  v174 = &v196[26];
  v137 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  v138 = v192;
  swift_beginAccess();
  v139 = v187;
  sub_1C05149F8(v138 + v137, v187, &qword_1EBE17C70, &unk_1C099BB30);
  v140 = v175;
  v141 = (v175)(v139, 1, v119);
  sub_1C05145B4(v139, &qword_1EBE17C70, &unk_1C099BB30);
  if (v141 == 1)
  {
    v142 = 0;
    v191 = 0u;
    v187 = 0u;
    v175 = 0u;
  }

  else
  {
    v143 = v138 + v137;
    v144 = v172;
    sub_1C05149F8(v143, v172, &qword_1EBE17C70, &unk_1C099BB30);
    v145 = v191;
    if (v140(v144, 1, v191) == 1)
    {
      v146 = v173;
      *v173 = 0;
      v146[1] = 0xE000000000000000;
      v146[2] = 0;
      v146[3] = 0;
      *(v146 + 32) = 1;
      v146[5] = 0;
      v146[6] = 0xE000000000000000;
      *(v146 + 28) = 0;
      *(v146 + 58) = 0;
      v147 = v146 + *(v145 + 48);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v148 = *(v145 + 52);
      v149 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
      (*(*(v149 - 8) + 56))(v146 + v148, 1, 1, v149);
      if (v140(v144, 1, v145) != 1)
      {
        sub_1C05145B4(v144, &qword_1EBE17C70, &unk_1C099BB30);
      }
    }

    else
    {
      v146 = v173;
      sub_1C077CE38(v144, v173, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    }

    sub_1C077BD04(v146, v196);
    v175 = v196[1];
    v187 = v196[3];
    v190 = v196[0];
    v191 = v196[2];
    v142 = LOWORD(v196[4]) | (BYTE2(v196[4]) << 16);
  }

  v150 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  v151 = v192;
  swift_beginAccess();
  v152 = *(v151 + v150);
  v153 = *(v151 + v150) == 0;
  v154 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  swift_beginAccess();
  v155 = *(v151 + v154);
  v156 = *(v151 + v154) == 0;
  v157 = (v151 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent);
  swift_beginAccess();
  v158 = *v157;
  LODWORD(v157) = *(v157 + 8);
  sub_1C077CDD8(v188, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
  v195[6] = v201[6];
  v195[7] = v201[7];
  v195[8] = v201[8];
  v195[2] = v201[2];
  v195[3] = v201[3];
  v195[4] = v201[4];
  v195[5] = v201[5];
  v195[0] = v201[0];
  v195[1] = v201[1];
  *(&v195[16] + 8) = v199[7];
  *(&v195[17] + 8) = v199[8];
  *(&v195[15] + 8) = v199[6];
  *(&v195[11] + 8) = v199[2];
  *(&v195[12] + 8) = v199[3];
  *(&v195[13] + 8) = v199[4];
  *(&v195[14] + 8) = v199[5];
  *(&v195[9] + 8) = v199[0];
  if (v157)
  {
    v159 = 0x2010003u >> (8 * v158);
  }

  else
  {
    v159 = 3;
  }

  LOBYTE(v195[9]) = v202;
  BYTE8(v195[18]) = v200;
  *(&v195[10] + 8) = v199[1];
  v194 = v153;
  v193 = v156;
  memcpy(v196, v195, 0x130uLL);
  *&v196[19] = v182;
  WORD4(v196[19]) = v181;
  *&v196[20] = v180;
  DWORD2(v196[20]) = v179;
  *&v196[21] = v185;
  WORD4(v196[21]) = v184;
  v196[22] = v183;
  v196[23] = v178;
  v196[25] = v176;
  v196[24] = v177;
  v160 = v186;
  v161 = v174;
  *(v174 + 2) = BYTE2(v186);
  *v161 = v160;
  *(v161 + 24) = v175;
  *(v161 + 8) = v190;
  *(v161 + 56) = v187;
  *(v161 + 40) = v191;
  *(v161 + 74) = BYTE2(v142);
  *(v161 + 36) = v142;
  *&v196[31] = v152;
  BYTE8(v196[31]) = v153;
  *&v196[32] = v155;
  BYTE8(v196[32]) = v156;
  BYTE9(v196[32]) = v159;
  nullsub_1(v196);
  return memcpy(v189, v196, 0x20AuLL);
}

uint64_t sub_1C077B134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = *a1;
    v6 = a1[1];
    v9 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v9 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = a1[1];
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    *a2 = v7;
    a2[1] = v6;
    a2[2] = v4;
    a2[3] = v3;
  }

  else
  {
    result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

double sub_1C077B1FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v98 = *(v4 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v87 = *(v8 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v85 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v84 - v16;
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v93 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v84 - v26;
  v28 = *(a1 + 24) == 1;
  v101 = a2;
  v86 = v7;
  v100 = v4;
  v94 = v17;
  if (v28)
  {
    v29 = 0x605040302010007uLL >> (8 * *(a1 + 16));
  }

  else
  {
    v29 = 7;
  }

  v99 = v29;
  v30 = *(a1 + 4);
  v97 = *a1;
  v96 = v30;
  v95 = *(a1 + 8);
  v88 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v31 = *(v88 + 60);
  v32 = a1;
  sub_1C05149F8(a1 + v31, v27, &qword_1EBE17C40, &unk_1C099BB60);
  v33 = *(v19 + 48);
  v102 = 1;
  v34 = v33(v27, 1, v18);
  sub_1C05145B4(v27, &qword_1EBE17C40, &unk_1C099BB60);
  if (v34 == 1)
  {
    v93 = 0;
    v92 = 0;
    v35 = v32;
  }

  else
  {
    v36 = v93;
    sub_1C05149F8(v32 + v31, v93, &qword_1EBE17C40, &unk_1C099BB60);
    v35 = v32;
    if (v33(v36, 1, v18) == 1)
    {
      v37 = v103;
      *v103 = 0;
      *(v37 + 8) = 0xE000000000000000;
      *(v37 + 16) = 0;
      *(v37 + 24) = 1;
      v38 = v37 + *(v18 + 24);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v33(v36, 1, v18) != 1)
      {
        sub_1C05145B4(v36, &qword_1EBE17C40, &unk_1C099BB60);
      }
    }

    else
    {
      v37 = v103;
      sub_1C077CE38(v36, v103, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    }

    sub_1C077C0C0(v37, &v107);
    v102 = *(&v107 + 1);
    v93 = v107;
    v92 = v108;
  }

  v39 = *(v35 + 40);
  *&v107 = *(v35 + 32);
  BYTE8(v107) = v39;
  sub_1C077C160(&v107, v117);
  v40 = v117[0];
  v90 = *(v35 + 41);
  v89 = *(v35 + 42);
  v103 = v35;
  v41 = *(v35 + 48);
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = v41 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v44 = *(v87 + 72);
    v45 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C077CD70(v43, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      v46 = *v11;
      v47 = *(v11 + 1);
      v48 = v11[16];
      sub_1C077CDD8(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      *&v107 = v47;
      BYTE8(v107) = v48;
      sub_1C077C190(&v107, v117);
      v49 = v117[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1C0578844(0, *(v45 + 2) + 1, 1, v45);
      }

      v51 = *(v45 + 2);
      v50 = *(v45 + 3);
      if (v51 >= v50 >> 1)
      {
        v45 = sub_1C0578844((v50 > 1), v51 + 1, 1, v45);
      }

      *(v45 + 2) = v51 + 1;
      v52 = &v45[2 * v51];
      v52[32] = v46;
      v52[33] = v49;
      v43 += v44;
      --v42;
    }

    while (v42);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v53 = v103;
  v28 = *(v103 + 64) == 1;
  v91 = v40;
  if (v28)
  {
    v54 = byte_1C0999E80[*(v103 + 56)];
  }

  else
  {
    v54 = 12;
  }

  LODWORD(v87) = v54;
  v55 = v100;
  v56 = *(v88 + 64);
  v57 = v94;
  sub_1C05149F8(v103 + v56, v94, &qword_1EBE17C48, &unk_1C0973560);
  v58 = *(v98 + 48);
  v59 = (v58)(v57, 1, v55);
  sub_1C05145B4(v57, &qword_1EBE17C48, &unk_1C0973560);
  if (v59 == 1)
  {
    v98 = 0;
    v100 = 0;
    v88 = 0;
    v94 = 0;
    v85 = 0;
    LODWORD(v86) = 0;
    LODWORD(v60) = v96;
    LODWORD(v58) = v95;
  }

  else
  {
    v61 = v53 + v56;
    v62 = v85;
    sub_1C05149F8(v61, v85, &qword_1EBE17C48, &unk_1C0973560);
    if ((v58)(v62, 1, v55) == 1)
    {
      v63 = v86;
      *v86 = 0;
      v63[2] = 0;
      v64 = v63 + *(v55 + 28);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v65 = (v58)(v62, 1, v55);
      LODWORD(v60) = v96;
      LODWORD(v58) = v95;
      if (v65 != 1)
      {
        sub_1C05145B4(v62, &qword_1EBE17C48, &unk_1C0973560);
      }
    }

    else
    {
      v63 = v86;
      sub_1C077CE38(v62, v86, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
      LODWORD(v60) = v96;
      LODWORD(v58) = v95;
    }

    LODWORD(v66) = *v63;
    v67 = v63[1];
    v100 = (*v63 - 0x7FFFFFFF) < 0x80000002;
    if ((v66 - 0x7FFFFFFF) >= 0x80000002)
    {
      v66 = v66;
    }

    else
    {
      v66 = 0;
    }

    v98 = v66;
    v94 = v67 - 0x7FFFFFFF < 0x80000002;
    if (v67 - 0x7FFFFFFF >= 0x80000002)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    v88 = v68;
    v69 = v63[2];
    sub_1C077CDD8(v63, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
    LODWORD(v86) = v69 - 0x7FFFFFFF < 0x80000002;
    if (v69 - 0x7FFFFFFF >= 0x80000002)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    v85 = v70;
  }

  v71 = v59 == 1;
  v72 = v58 > 0x7FFFFFFE;
  if (v58 <= 0x7FFFFFFE)
  {
    v58 = v58;
  }

  else
  {
    v58 = 0;
  }

  v73 = v60 > 0x7FFFFFFE;
  if (v60 <= 0x7FFFFFFE)
  {
    v60 = v60;
  }

  else
  {
    v60 = 0;
  }

  v74 = v97 > 0x7FFFFFFE;
  if (v97 <= 0x7FFFFFFE)
  {
    v75 = v97;
  }

  else
  {
    v75 = 0;
  }

  v76 = *(v103 + 68);
  v77 = *(v103 + 68) == 0;
  sub_1C077CDD8(v103, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v117[0] = v73;
  v106 = v72;
  v105 = v71;
  v104 = v77;
  *&v107 = v75;
  BYTE8(v107) = v74;
  *&v108 = v60;
  BYTE8(v108) = v73;
  *&v109 = v58;
  BYTE8(v109) = v72;
  BYTE9(v109) = v99;
  *&v110 = v93;
  *(&v110 + 1) = v102;
  LOBYTE(v111) = v92;
  BYTE1(v111) = v91;
  BYTE2(v111) = v90;
  BYTE3(v111) = v89;
  *(&v111 + 1) = v45;
  LOBYTE(v112) = v87;
  *(&v112 + 1) = v98;
  *&v113 = v100;
  *(&v113 + 1) = v88;
  *&v114 = v94;
  *(&v114 + 1) = v85;
  LOBYTE(v115) = v86;
  BYTE1(v115) = v71;
  *(&v115 + 1) = v76;
  v116 = v77;
  nullsub_1(&v107);
  v78 = v114;
  v79 = v101;
  *(v101 + 96) = v113;
  *(v79 + 112) = v78;
  *(v79 + 128) = v115;
  *(v79 + 144) = v116;
  v80 = v110;
  *(v79 + 32) = v109;
  *(v79 + 48) = v80;
  v81 = v112;
  *(v79 + 64) = v111;
  *(v79 + 80) = v81;
  result = *&v107;
  v83 = v108;
  *v79 = v107;
  *(v79 + 16) = v83;
  return result;
}

uint64_t sub_1C077BC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1 == 0.0;
  v5 = *(a1 + 16);
  if (*a1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *a1;
  }

  v13 = *(a1 + 8);
  v14 = v5;
  sub_1C077C190(&v13, &v15);
  v7 = v15;
  v8 = *(a1 + 32);
  v13 = *(a1 + 24);
  v14 = v8;
  sub_1C077C160(&v13, &v15);
  v9 = v15;
  v10 = *(a1 + 33);
  result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  if (v10)
  {
    v12 = 0x1000000;
  }

  else
  {
    v12 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v12 | v4 | (v7 << 8) | (v9 << 16);
  return result;
}

uint64_t sub_1C077BD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v43 = v11;
  if (v16)
  {
    v47 = v14;
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v17 = *(a1 + 16);
  v45 = *(a1 + 20);
  v46 = v17;
  v18 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  sub_1C05149F8(a1 + v18, v13, &qword_1EBE17C38, &unk_1C0973550);
  v19 = *(v5 + 48);
  v20 = v19(v13, 1, v4);
  sub_1C05145B4(v13, &qword_1EBE17C38, &unk_1C0973550);
  if (v20 == 1)
  {
    v21 = 3;
  }

  else
  {
    v22 = v43;
    sub_1C05149F8(a1 + v18, v43, &qword_1EBE17C38, &unk_1C0973550);
    if (v19(v22, 1, v4) == 1)
    {
      v23 = v44;
      *v44 = 0;
      *(v23 + 1) = 0;
      v23[16] = 1;
      v24 = &v23[*(v4 + 24)];
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v19(v22, 1, v4) != 1)
      {
        sub_1C05145B4(v22, &qword_1EBE17C38, &unk_1C0973550);
      }
    }

    else
    {
      v23 = v44;
      sub_1C077CE38(v22, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    }

    v25 = *v23;
    v26 = *(v23 + 1);
    v27 = v23[16];
    sub_1C077CDD8(v23, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    v49 = v26;
    v50 = v27;
    sub_1C077C190(&v49, v51);
    v21 = v25 | (v51[0] << 8);
  }

  LODWORD(v44) = v21;
  v28 = *(a1 + 32);
  v49 = *(a1 + 24);
  v50 = v28;
  sub_1C077C160(&v49, v51);
  v29 = v51[0];
  v31 = *(a1 + 40);
  v30 = *(a1 + 48);
  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v33 = *(a1 + 48);
  }

  else
  {
    v31 = 0;
    v30 = 0;
  }

  if (v45 <= 0x7FFFFFFE)
  {
    v34 = v45;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(a1 + 56);
  v36 = *(a1 + 57);
  v37 = *(a1 + 58);
  if (v46 <= 0x7FFFFFFE)
  {
    v38 = v46;
  }

  else
  {
    v38 = 0;
  }

  LOBYTE(v49) = v46 > 0x7FFFFFFE;
  v51[0] = v45 > 0x7FFFFFFE;
  result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v40 = v49;
  v41 = v51[0];
  v42 = v47;
  *a2 = v48;
  *(a2 + 8) = v42;
  *(a2 + 16) = v38;
  *(a2 + 24) = v40;
  *(a2 + 32) = v34;
  *(a2 + 40) = v41;
  *(a2 + 41) = v44;
  *(a2 + 43) = v29;
  *(a2 + 48) = v31;
  *(a2 + 56) = v30;
  *(a2 + 64) = v35;
  *(a2 + 65) = v36;
  *(a2 + 66) = v37;
  return result;
}

uint64_t sub_1C077C0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = a1;
    v7 = *(a1 + 8);

    a1 = v6;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (*(a1 + 24) == 1)
  {
    v8 = byte_1C0999E80[*(a1 + 16)];
  }

  else
  {
    v8 = 12;
  }

  result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_1C077C160@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = byte_1C0999E6C[*result];
  }

  else
  {
    *a2 = 18;
  }

  return result;
}

uint64_t sub_1C077C190@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = byte_1C0999E8D[*result];
  }

  else
  {
    *a2 = 53;
  }

  return result;
}

unint64_t sub_1C077C1C0()
{
  result = qword_1EBE1F7F0;
  if (!qword_1EBE1F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F7F0);
  }

  return result;
}

uint64_t sub_1C077C214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17240, &qword_1C0970A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C077C284(uint64_t a1)
{
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 0xFFFFFFFF00;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 152) = 0u;
  result = (a1 + 152);
  result[7] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[22] = 0u;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C077C330(uint64_t result)
{
  v1 = *(result + 672);
  v2 = *(result + 640) & 0x1010101;
  v3 = *(result + 736) & 1;
  v4 = *(result + 752) & 1;
  v5 = *(result + 768) & 1;
  *(result + 536) = *(result + 536);
  *(result + 640) = v2;
  *(result + 672) = v1;
  *(result + 736) = v3;
  *(result + 752) = v4;
  *(result + 768) = v5;
  return result;
}

uint64_t sub_1C077C378(uint64_t a1)
{
  v1 = *(a1 + 696);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C077C390(uint64_t result)
{
  v1 = *(result + 672);
  v2 = *(result + 768);
  v3 = *(result + 640) & 0x1010101;
  v4 = *(result + 736) & 1;
  v5 = *(result + 752) & 1;
  *(result + 536) = *(result + 536);
  *(result + 640) = v3;
  *(result + 672) = v1;
  *(result + 736) = v4;
  *(result + 752) = v5;
  *(result + 768) = v2 & 1 | 0x40;
  return result;
}

uint64_t sub_1C077C3DC(uint64_t result)
{
  v1 = *(result + 672);
  v2 = *(result + 768);
  v3 = *(result + 640) & 0x1010101;
  v4 = *(result + 736) & 1;
  v5 = *(result + 752) & 1;
  *(result + 536) = *(result + 536);
  *(result + 640) = v3;
  *(result + 672) = v1;
  *(result + 736) = v4;
  *(result + 752) = v5;
  *(result + 768) = v2 & 1 | 0x80;
  return result;
}

uint64_t sub_1C077C428(uint64_t a1)
{
  v1 = *(a1 + 528);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C077C440(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x70;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

double sub_1C077C4A0(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - v9;
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  *&v44 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v21 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  v48 = a1;
  v22 = *(a1 + v21);
  v23 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  swift_beginAccess();
  sub_1C05149F8(v22 + v23, v20, &qword_1EBE16B50, &unk_1C096E0F0);
  v24 = *(v11 + 48);
  *&v49 = v10;
  LODWORD(v10) = v24(v20, 1, v10);
  sub_1C05145B4(v20, &qword_1EBE16B50, &unk_1C096E0F0);
  v25 = 0uLL;
  v26 = 0uLL;
  if (v10 != 1)
  {
    v27 = v44;
    sub_1C05149F8(v22 + v23, v44, &qword_1EBE16B50, &unk_1C096E0F0);
    v28 = v49;
    if (v24(v27, 1, v49) == 1)
    {
      *v14 = 0;
      v14[1] = 0xE000000000000000;
      v14[2] = 0;
      v14[3] = 0xE000000000000000;
      v14[4] = 0;
      v14[5] = 0xE000000000000000;
      v14[6] = MEMORY[0x1E69E7CC0];
      v29 = v14 + *(v28 + 32);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v24(v27, 1, v28) != 1)
      {
        sub_1C05145B4(v27, &qword_1EBE16B50, &unk_1C096E0F0);
      }
    }

    else
    {
      sub_1C077CE38(v27, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    }

    sub_1C077B134(v14, v51);
    v25 = v51[0];
    v26 = v51[1];
  }

  v49 = v26;
  v44 = v25;
  v30 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v31 = v45;
  sub_1C05149F8(v22 + v30, v45, &qword_1EBE17778, &unk_1C0971260);
  v32 = v47;
  v33 = *(v46 + 48);
  v34 = v33(v31, 1, v47);
  sub_1C05145B4(v31, &qword_1EBE17778, &unk_1C0971260);
  if (v34 == 1)
  {
    sub_1C077CDD8(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
    sub_1C077C284(v51);
  }

  else
  {
    v35 = v42;
    sub_1C05149F8(v22 + v30, v42, &qword_1EBE17778, &unk_1C0971260);
    if (v33(v35, 1, v32) == 1)
    {
      v36 = v43;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v37 = *(v32 + 20);
      if (qword_1EBE15458 != -1)
      {
        swift_once();
      }

      *(v36 + v37) = qword_1EBE15460;
      v38 = v33(v35, 1, v32);

      if (v38 != 1)
      {
        sub_1C05145B4(v35, &qword_1EBE17778, &unk_1C0971260);
      }
    }

    else
    {
      v36 = v43;
      sub_1C077CE38(v35, v43, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    }

    sub_1C0777DD8(v51, v36);
    sub_1C077CDD8(v36, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C077CDD8(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
  }

  if (*(&v49 + 1) || (memcpy(v50, v51, 0x20AuLL), sub_1C0573598(v50) != 1))
  {
    type metadata accessor for TerminalElement.ScalarValue();
    v40 = swift_allocObject();
    memcpy(v40 + 1, v51, 0x20AuLL);
    v41 = v49;
    result = *&v44;
    v40[34] = v44;
    v40[35] = v41;
  }

  return result;
}

uint64_t sub_1C077CA8C(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x60;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CAEC(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C077CB10(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x50;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CB74(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x40;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CBD4(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x30;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CC34(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x20;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CC94(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CCF0(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x10;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

double sub_1C077CD50(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

uint64_t sub_1C077CD70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C077CDD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C077CE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C077CEA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C0600B00(0, v1, 0);
    v2 = v25;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[5];
      v22 = v4[4];
      v23 = v5;
      v24 = *(v4 + 12);
      v6 = v4[1];
      v18 = *v4;
      v19 = v6;
      v7 = v4[3];
      v20 = v4[2];
      v21 = v7;
      sub_1C05AF88C(&v18, &v15);
      v25 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C0600B00((v8 > 1), v9 + 1, 1);
        v2 = v25;
      }

      v16 = &type metadata for BuilderNode;
      v17 = &off_1F3FA1508;
      v10 = swift_allocObject();
      *&v15 = v10;
      v11 = v23;
      *(v10 + 80) = v22;
      *(v10 + 96) = v11;
      *(v10 + 112) = v24;
      v12 = v19;
      *(v10 + 16) = v18;
      *(v10 + 32) = v12;
      v13 = v21;
      *(v10 + 48) = v20;
      *(v10 + 64) = v13;
      *(v2 + 16) = v9 + 1;
      sub_1C0531D80(&v15, v2 + 40 * v9 + 32);
      v4 = (v4 + 104);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C077D000(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C0600C20(0, v1, 0);
    v4 = (a1 + 40);
    v2 = v13;
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17220, &qword_1C09709F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18280, &unk_1C0999F20);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C0600C20((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = v13 + 16 * v6;
      *(v7 + 32) = v11;
      *(v7 + 40) = v12;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1C077D12C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C095DCDC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1C0600C40(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1C68DDAD0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1C0600C40((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
        v15 = &protocol witness table for TerminalOntologyNode<A>;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1C0531D80(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);

        if (v12 >= v11 >> 1)
        {
          sub_1C0600C40((v11 > 1), v12 + 1, 1);
          v3 = v16;
        }

        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
        v15 = &protocol witness table for TerminalOntologyNode<A>;
        *&v13 = v10;
        *(v3 + 16) = v12 + 1;
        sub_1C0531D80(&v13, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C077D304(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C0600CE0(0, v1, 0);
    v2 = v27;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v6 = v4[3];
      v19 = v4[2];
      v20 = v6;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[1];
      v18[0] = *v4;
      v18[1] = v9;
      v24 = v19;
      v25 = v7;
      v26 = v4[4];
      v23 = v5;
      v21 = v8;
      v22 = v18[0];
      sub_1C05149F8(v18, v17, &unk_1EBE17410, qword_1C0970CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17410, qword_1C0970CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC8, &unk_1C0999F10);
      swift_dynamicCast();
      v25 = v17[3];
      v26 = v17[4];
      v23 = v17[1];
      v24 = v17[2];
      v22 = v17[0];
      v27 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C0600CE0((v10 > 1), v11 + 1, 1);
        v2 = v27;
      }

      *(v2 + 16) = v11 + 1;
      v12 = (v2 + 80 * v11);
      v12[2] = v22;
      v13 = v23;
      v14 = v24;
      v15 = v26;
      v12[5] = v25;
      v12[6] = v15;
      v12[3] = v13;
      v12[4] = v14;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t static UsoGraphRedactionUtils.getRedactedGraph(graph:)(uint64_t a1)
{
  type metadata accessor for Graph();
  swift_allocObject();
  v2 = Graph.init()();
  v15 = v2;
  v14 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v3 = v2[4];
  result = swift_unownedRetainStrong();
  if (v3)
  {

    swift_unownedRetain();

    v12[0] = v2;
    v12[1] = v3;
    swift_beginAccess();
    v5 = *(a1 + 32);
    result = swift_unownedRetainStrong();
    if (v5)
    {

      swift_unownedRetain();

      v11[0] = a1;
      v11[1] = v5;
      v10[0] = 0;
      v10[1] = 0;
      v9[0] = 0;
      v9[1] = 0;
      v6 = sub_1C0519A28(v11, v10, v9);

      swift_unownedRelease();
      sub_1C077D61C(&v15, &v14, &v13, v12, v6);

      swift_unownedRelease();

      v8 = v14;
      v7 = v15;

      sub_1C077D000(v8);

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C077D61C(uint64_t *a1, void **a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4[1];
  v211 = *a4;
  v7 = *a3;
  v8 = *(swift_unownedRetainStrong() + 56);

  if (*(v7 + 16))
  {
    v9 = *(v7 + 40);
    result = sub_1C095DFDC();
    v11 = -1 << *(v7 + 32);
    v12 = result & ~v11;
    if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      do
      {
        if (*(*(v7 + 48) + 8 * v12) == v8)
        {
          return result;
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }
  }

  *&v226 = a5;

  sub_1C051E5F8(&v226);
  v206 = *(v226 + 16);
  if (!v206)
  {

LABEL_108:
    v203 = *(swift_unownedRetainStrong() + 56);

    result = sub_1C051DFC8(&v226, v203);
    if (v206)
    {

      return swift_unownedRelease();
    }

    return result;
  }

  v14 = 0;
  v15 = 0;
  v205 = v226 + 32;
  v204 = v226;
  do
  {
    v213 = v14;
    v209 = v15;
    v16 = (v205 + 80 * v15);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v233 = v16[4];
    v20 = *v16;
    *&v232[16] = v18;
    *&v232[32] = v19;
    v231 = v20;
    *v232 = v17;
    v21 = v233;
    v22 = *a1;
    sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v231);
    swift_unownedRetainStrong();
    v23 = *(*(&v21 + 1) + 64);
    v24 = *(*(&v21 + 1) + 72);
    v25 = *(*(&v21 + 1) + 80);
    v26 = *(*(&v21 + 1) + 88);
    v27 = *(*(&v21 + 1) + 96);

    swift_unownedRelease();
    *&v226 = v23;
    *(&v226 + 1) = v24;
    *v227 = v25;
    *&v227[8] = v26;
    *&v227[16] = v27;
    v28 = sub_1C0514CE0(&v226, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    swift_unownedRetain();

    if (v213)
    {

      swift_unownedRelease();
    }

    sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v231);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v29 = *(*(&v21 + 1) + 104);

    swift_unownedRelease();
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v30 - 1;
      for (i = 32; ; i += 96)
      {
        v33 = *(v29 + i + 16);
        v226 = *(v29 + i);
        *v227 = v33;
        v34 = *(v29 + i + 32);
        v35 = *(v29 + i + 48);
        v36 = *(v29 + i + 64);
        *&v227[57] = *(v29 + i + 73);
        *&v227[32] = v35;
        *&v227[48] = v36;
        *&v227[16] = v34;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v37 = v28[13];
        sub_1C0518B04(&v226, &v224);
        sub_1C0518B04(&v226, &v224);

        swift_unownedRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28[13] = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = sub_1C0519CF8(0, *(v37 + 2) + 1, 1, v37);
          v28[13] = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1C0519CF8((v39 > 1), v40 + 1, 1, v37);
        }

        *(v37 + 2) = v40 + 1;
        v41 = &v37[96 * v40];
        v42 = *v227;
        *(v41 + 2) = v226;
        *(v41 + 3) = v42;
        v43 = *&v227[16];
        v44 = *&v227[32];
        v45 = *&v227[48];
        *(v41 + 105) = *&v227[57];
        *(v41 + 5) = v44;
        *(v41 + 6) = v45;
        *(v41 + 4) = v43;
        v28[13] = v37;
        swift_endAccess();
        sub_1C0518B60(&v226);

        swift_unownedRelease();
        if (!v31)
        {
          break;
        }

        --v31;
      }
    }

    sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v231);
    swift_unownedRetainStrong();
    v46 = *(*(&v21 + 1) + 112);

    swift_unownedRelease();
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = (v46 + 40);
      do
      {
        v49 = *(v48 - 2);
        v50 = *v48;
        swift_unownedRetainStrong();
        v51 = v28[14];

        swift_unownedRetain();

        v52 = swift_isUniquelyReferenced_nonNull_native();
        v28[14] = v51;
        if ((v52 & 1) == 0)
        {
          v51 = sub_1C052233C(0, *(v51 + 2) + 1, 1, v51);
          v28[14] = v51;
        }

        v54 = *(v51 + 2);
        v53 = *(v51 + 3);
        if (v54 >= v53 >> 1)
        {
          v51 = sub_1C052233C((v53 > 1), v54 + 1, 1, v51);
        }

        *(v51 + 2) = v54 + 1;
        v55 = &v51[16 * v54];
        *(v55 + 8) = v49;
        *(v55 + 5) = v50;
        v28[14] = v51;

        swift_unownedRelease();
        v48 += 2;
        --v47;
      }

      while (v47);
    }

    v56 = &unk_1EBE17410;
    sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v231);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v57 = *(*(&v21 + 1) + 120);

    swift_unownedRelease();
    v58 = *(v57 + 16);
    if (v58)
    {
      v59 = v58 - 1;
      for (j = 32; ; j += 192)
      {
        v61 = *(v57 + j);
        v62 = *(v57 + j + 16);
        v63 = *(v57 + j + 48);
        *&v227[16] = *(v57 + j + 32);
        *&v227[32] = v63;
        v226 = v61;
        *v227 = v62;
        v64 = *(v57 + j + 64);
        v65 = *(v57 + j + 80);
        v66 = *(v57 + j + 112);
        *&v227[80] = *(v57 + j + 96);
        *&v227[96] = v66;
        *&v227[48] = v64;
        *&v227[64] = v65;
        v67 = *(v57 + j + 128);
        v68 = *(v57 + j + 144);
        v69 = *(v57 + j + 160);
        *&v230[9] = *(v57 + j + 169);
        v229 = v68;
        *v230 = v69;
        v228 = v67;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v70 = v28[15];
        sub_1C0521E78(&v226, &v224);

        swift_unownedRetain();
        sub_1C0521E78(&v226, &v224);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v28[15] = v70;
        if ((v71 & 1) == 0)
        {
          v70 = sub_1C0522E00(0, *(v70 + 2) + 1, 1, v70);
          v28[15] = v70;
        }

        v73 = *(v70 + 2);
        v72 = *(v70 + 3);
        if (v73 >= v72 >> 1)
        {
          v70 = sub_1C0522E00((v72 > 1), v73 + 1, 1, v70);
          v28[15] = v70;
        }

        *(v70 + 2) = v73 + 1;
        v74 = &v70[192 * v73];
        v75 = v226;
        v76 = *v227;
        v77 = *&v227[32];
        *(v74 + 4) = *&v227[16];
        *(v74 + 5) = v77;
        *(v74 + 2) = v75;
        *(v74 + 3) = v76;
        v78 = *&v227[48];
        v79 = *&v227[64];
        v80 = *&v227[96];
        *(v74 + 8) = *&v227[80];
        *(v74 + 9) = v80;
        *(v74 + 6) = v78;
        *(v74 + 7) = v79;
        v81 = v228;
        v82 = v229;
        v83 = *v230;
        *(v74 + 201) = *&v230[9];
        *(v74 + 11) = v82;
        *(v74 + 12) = v83;
        *(v74 + 10) = v81;
        v28[15] = v70;
        swift_endAccess();
        sub_1C05755CC(&v226);

        swift_unownedRelease();
        if (!v59)
        {
          break;
        }

        --v59;
      }

      v56 = &unk_1EBE17410;
    }

    else
    {
    }

    sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v231);
    v226 = v21;
    Node.stringValue.getter();
    v85 = v84;

    swift_unownedRelease();
    if (v85)
    {

      type metadata accessor for Graph();
      swift_allocObject();
      v86 = Graph.init()();
      swift_beginAccess();
      v87 = v86[4];
      swift_unownedRetainStrong();
      if (!v87)
      {
        goto LABEL_111;
      }

      swift_unownedRetain();

      sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
      sub_1C0514A70(&v231);
      v224 = v21;
      v88 = Node.stringValue.getter();
      v90 = v89;

      swift_unownedRelease();
      if (qword_1ED5D7CA0 != -1)
      {
        swift_once();
      }

      v226 = xmmword_1ED5D7CA8;
      *v227 = xmmword_1ED5D7CB8;
      *&v227[16] = qword_1ED5D7CC8;

      v91 = sub_1C0514CE0(&v226, v88, v90, 1, MEMORY[0x1E69E7CC0]);

      swift_unownedRetain();

      swift_unownedRetainStrong();
      v92 = *(v87 + 56);

      swift_unownedRetainStrong();
      v93 = *(v91 + 56);

      *&v220 = v92;
      *(&v220 + 1) = v93;
      LODWORD(v221) = 0;
      *(&v221 + 1) = 0x797469746E65;
      *&v222 = 0xE600000000000000;
      *(&v222 + 1) = 0x746E656D75677241;
      v223 = 0xE800000000000000;
      swift_beginAccess();
      v94 = v86[2];

      sub_1C0514AC4(&v220, &v226);
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v86[2] = v94;
      if ((v95 & 1) == 0)
      {
        v94 = sub_1C0514F9C(0, *(v94 + 2) + 1, 1, v94);
        v86[2] = v94;
      }

      v97 = *(v94 + 2);
      v96 = *(v94 + 3);
      if (v97 >= v96 >> 1)
      {
        v94 = sub_1C0514F9C((v96 > 1), v97 + 1, 1, v94);
        v86[2] = v94;
      }

      *(v94 + 2) = v97 + 1;
      v98 = &v94[64 * v97];
      v99 = v220;
      v100 = v221;
      v101 = v223;
      *(v98 + 4) = v222;
      *(v98 + 5) = v101;
      *(v98 + 2) = v99;
      *(v98 + 3) = v100;
      v86[2] = v94;
      swift_endAccess();
      sub_1C0514A70(&v220);
      swift_unownedRetainStrong();
      v102 = v28[7];

      v103 = *a2;

      v104 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v103;
      if ((v104 & 1) == 0)
      {
        v103 = sub_1C0578DE8(0, v103[2] + 1, 1, v103);
        *a2 = v103;
      }

      v106 = v103[2];
      v105 = v103[3];
      if (v106 >= v105 >> 1)
      {
        v103 = sub_1C0578DE8((v105 > 1), v106 + 1, 1, v103);
      }

      v103[2] = v106 + 1;
      v107 = &v103[2 * v106];
      v107[4] = v102;
      v107[5] = v86;
      *a2 = v103;
      *&v215 = 6369134;
      *(&v215 + 1) = 0xE300000000000000;
      *&v216 = 0xD00000000000001CLL;
      *(&v216 + 1) = 0x80000001C09CBA30;
      v217 = xmmword_1C0999ED0;
      *&v218 = 0;
      WORD4(v218) = 1;
      HIDWORD(v218) = 0;
      v219[0] = 1;
      *&v219[4] = 0;
      v219[8] = 1;
      *&v219[16] = 0;
      v219[24] = 1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v108 = v28[13];

      swift_unownedRetain();
      sub_1C0518B04(&v215, &v226);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v28[13] = v108;
      if ((v109 & 1) == 0)
      {
        v108 = sub_1C0519CF8(0, *(v108 + 2) + 1, 1, v108);
        v28[13] = v108;
      }

      v111 = *(v108 + 2);
      v110 = *(v108 + 3);
      if (v111 >= v110 >> 1)
      {
        v108 = sub_1C0519CF8((v110 > 1), v111 + 1, 1, v108);
      }

      *(v108 + 2) = v111 + 1;
      v112 = &v108[96 * v111];
      v113 = v216;
      *(v112 + 2) = v215;
      *(v112 + 3) = v113;
      v114 = v217;
      v115 = v218;
      v116 = *v219;
      *(v112 + 105) = *&v219[9];
      *(v112 + 5) = v115;
      *(v112 + 6) = v116;
      *(v112 + 4) = v114;
      v28[13] = v108;
      swift_endAccess();

      sub_1C0518B60(&v215);

      swift_unownedRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17270, &qword_1C0970A58);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_1C096E0C0;
      strcpy((v117 + 32), "usoRedactionId");
      *(v117 + 47) = -18;
      *(v117 + 48) = xmmword_1C0999EE0;
      *(v117 + 64) = 0;
      *(v117 + 68) = 1;
      *(v117 + 72) = 0;
      *(v117 + 76) = 1;
      *&v226 = 0xD00000000000001CLL;
      *(&v226 + 1) = 0x80000001C09CBA30;
      v227[0] = 7;
      memset(&v227[8], 0, 96);
      *&v227[104] = v117;
      LODWORD(v228) = 0;
      BYTE4(v228) = 1;
      DWORD2(v228) = 0;
      BYTE12(v228) = 1;
      v229 = MEMORY[0x1E69E7CC0];
      *v230 = 0;
      v230[8] = 3;
      *&v230[16] = 0;
      v230[24] = 1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v118 = v28[15];

      swift_unownedRetain();
      sub_1C0521E78(&v226, &v224);
      v119 = swift_isUniquelyReferenced_nonNull_native();
      v28[15] = v118;
      if ((v119 & 1) == 0)
      {
        v118 = sub_1C0522E00(0, *(v118 + 2) + 1, 1, v118);
        v28[15] = v118;
      }

      v121 = *(v118 + 2);
      v120 = *(v118 + 3);
      if (v121 >= v120 >> 1)
      {
        v118 = sub_1C0522E00((v120 > 1), v121 + 1, 1, v118);
        v28[15] = v118;
      }

      goto LABEL_55;
    }

    sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v231);
    swift_unownedRetainStrong();
    v133 = *(*(&v21 + 1) + 64);
    v132 = *(*(&v21 + 1) + 72);

    if (qword_1ED5BDED8 != -1)
    {
      swift_once();
    }

    if (__PAIR128__(v132, v133) == xmmword_1ED5BDEE0)
    {
    }

    else
    {
      v134 = sub_1C095DF3C();

      if ((v134 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    swift_unownedRetainStrong();
    v136 = *(*(&v21 + 1) + 24);
    v135 = *(*(&v21 + 1) + 32);
    v137 = *(*(&v21 + 1) + 40);
    sub_1C0514B20(v136, v135, *(*(&v21 + 1) + 40));

    if (v137 == 255)
    {
      goto LABEL_64;
    }

    if (v137)
    {
      sub_1C05144FC(v136, v135, v137);
LABEL_64:

      swift_unownedRelease();
      goto LABEL_65;
    }

    swift_unownedRelease();
    if ((v135 & 1) == 0)
    {
      type metadata accessor for Graph();
      swift_allocObject();
      v169 = Graph.init()();
      swift_beginAccess();
      v170 = v169[4];
      swift_unownedRetainStrong();
      if (!v170)
      {
        goto LABEL_112;
      }

      swift_unownedRetain();

      sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);
      sub_1C0514A70(&v231);
      v224 = v21;
      v171 = Node.int64Value.getter();
      v173 = v172;

      swift_unownedRelease();
      v226 = xmmword_1ED5BDEE0;
      *v227 = xmmword_1ED5BDEF0;
      *&v227[16] = qword_1ED5BDF00;

      v174 = sub_1C0514CE0(&v226, v171, v173 & 1, 0, MEMORY[0x1E69E7CC0]);

      swift_unownedRetain();

      swift_unownedRetainStrong();
      v175 = *(v170 + 56);

      swift_unownedRetainStrong();
      v176 = *(v174 + 56);

      *&v220 = v175;
      *(&v220 + 1) = v176;
      LODWORD(v221) = 0;
      *(&v221 + 1) = 0x797469746E65;
      *&v222 = 0xE600000000000000;
      *(&v222 + 1) = 0x746E656D75677241;
      v223 = 0xE800000000000000;
      swift_beginAccess();
      v177 = v169[2];

      sub_1C0514AC4(&v220, &v226);
      v178 = swift_isUniquelyReferenced_nonNull_native();
      v169[2] = v177;
      if ((v178 & 1) == 0)
      {
        v177 = sub_1C0514F9C(0, *(v177 + 2) + 1, 1, v177);
        v169[2] = v177;
      }

      v180 = *(v177 + 2);
      v179 = *(v177 + 3);
      if (v180 >= v179 >> 1)
      {
        v177 = sub_1C0514F9C((v179 > 1), v180 + 1, 1, v177);
        v169[2] = v177;
      }

      *(v177 + 2) = v180 + 1;
      v181 = &v177[64 * v180];
      v182 = v220;
      v183 = v221;
      v184 = v223;
      *(v181 + 4) = v222;
      *(v181 + 5) = v184;
      *(v181 + 2) = v182;
      *(v181 + 3) = v183;
      v169[2] = v177;
      swift_endAccess();
      sub_1C0514A70(&v220);
      swift_unownedRetainStrong();
      v185 = v28[7];

      v186 = *a2;

      v187 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v186;
      if ((v187 & 1) == 0)
      {
        v186 = sub_1C0578DE8(0, v186[2] + 1, 1, v186);
        *a2 = v186;
      }

      v189 = v186[2];
      v188 = v186[3];
      if (v189 >= v188 >> 1)
      {
        v186 = sub_1C0578DE8((v188 > 1), v189 + 1, 1, v186);
      }

      v186[2] = v189 + 1;
      v190 = &v186[2 * v189];
      v190[4] = v185;
      v190[5] = v169;
      *a2 = v186;
      *&v215 = 6369134;
      *(&v215 + 1) = 0xE300000000000000;
      *&v216 = 0xD00000000000001CLL;
      *(&v216 + 1) = 0x80000001C09CBA30;
      v217 = xmmword_1C0999ED0;
      *&v218 = 0;
      WORD4(v218) = 1;
      HIDWORD(v218) = 0;
      v219[0] = 1;
      *&v219[4] = 0;
      v219[8] = 1;
      *&v219[16] = 0;
      v219[24] = 1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v191 = v28[13];

      swift_unownedRetain();
      sub_1C0518B04(&v215, &v226);
      v192 = swift_isUniquelyReferenced_nonNull_native();
      v28[13] = v191;
      if ((v192 & 1) == 0)
      {
        v191 = sub_1C0519CF8(0, *(v191 + 2) + 1, 1, v191);
        v28[13] = v191;
      }

      v194 = *(v191 + 2);
      v193 = *(v191 + 3);
      if (v194 >= v193 >> 1)
      {
        v191 = sub_1C0519CF8((v193 > 1), v194 + 1, 1, v191);
      }

      *(v191 + 2) = v194 + 1;
      v195 = &v191[96 * v194];
      v196 = v216;
      *(v195 + 2) = v215;
      *(v195 + 3) = v196;
      v197 = v217;
      v198 = v218;
      v199 = *v219;
      *(v195 + 105) = *&v219[9];
      *(v195 + 5) = v198;
      *(v195 + 6) = v199;
      *(v195 + 4) = v197;
      v28[13] = v191;
      swift_endAccess();

      sub_1C0518B60(&v215);

      swift_unownedRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17270, &qword_1C0970A58);
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_1C096E0C0;
      strcpy((v200 + 32), "usoRedactionId");
      *(v200 + 47) = -18;
      *(v200 + 48) = xmmword_1C0999EE0;
      *(v200 + 64) = 0;
      *(v200 + 68) = 1;
      *(v200 + 72) = 0;
      *(v200 + 76) = 1;
      *&v226 = 0xD00000000000001CLL;
      *(&v226 + 1) = 0x80000001C09CBA30;
      v227[0] = 7;
      memset(&v227[8], 0, 96);
      *&v227[104] = v200;
      LODWORD(v228) = 0;
      BYTE4(v228) = 1;
      DWORD2(v228) = 0;
      BYTE12(v228) = 1;
      v229 = MEMORY[0x1E69E7CC0];
      *v230 = 0;
      v230[8] = 3;
      *&v230[16] = 0;
      v230[24] = 1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v118 = v28[15];

      swift_unownedRetain();
      sub_1C0521E78(&v226, &v224);
      v201 = swift_isUniquelyReferenced_nonNull_native();
      v28[15] = v118;
      if ((v201 & 1) == 0)
      {
        v118 = sub_1C0522E00(0, *(v118 + 2) + 1, 1, v118);
        v28[15] = v118;
      }

      v121 = *(v118 + 2);
      v202 = *(v118 + 3);
      if (v121 >= v202 >> 1)
      {
        v118 = sub_1C0522E00((v202 > 1), v121 + 1, 1, v118);
        v28[15] = v118;
      }

LABEL_55:
      *(v118 + 2) = v121 + 1;
      v122 = &v118[192 * v121];
      v123 = v226;
      v124 = *v227;
      v125 = *&v227[32];
      *(v122 + 4) = *&v227[16];
      *(v122 + 5) = v125;
      *(v122 + 2) = v123;
      *(v122 + 3) = v124;
      v126 = *&v227[48];
      v127 = *&v227[64];
      v128 = *&v227[96];
      *(v122 + 8) = *&v227[80];
      *(v122 + 9) = v128;
      *(v122 + 6) = v126;
      *(v122 + 7) = v127;
      v129 = v228;
      v130 = v229;
      v131 = *v230;
      *(v122 + 201) = *&v230[9];
      *(v122 + 11) = v130;
      *(v122 + 12) = v131;
      *(v122 + 10) = v129;
      v28[15] = v118;
      swift_endAccess();

      swift_unownedRelease();

      swift_unownedRelease();

      sub_1C05755CC(&v226);

      swift_unownedRelease();
    }

LABEL_65:
    sub_1C05149F8(&v231, &v226, &unk_1EBE17410, qword_1C0970CB0);

    swift_unownedRelease();
    v214 = *&v232[8];
    v208 = *&v232[24];
    v138 = *&v232[40];
    v139 = *(swift_unownedRetainStrong() + 56);

    swift_unownedRetainStrong();
    v140 = v28[7];

    *&v224 = v139;
    *(&v224 + 1) = v140;
    *v225 = 0;
    *&v225[8] = v214;
    *&v225[24] = v208;
    *&v225[40] = v138;
    swift_beginAccess();
    v141 = *(v211 + 16);
    sub_1C0514AC4(&v231, &v226);
    sub_1C0514AC4(&v224, &v226);
    v142 = swift_isUniquelyReferenced_nonNull_native();
    *(v211 + 16) = v141;
    if ((v142 & 1) == 0)
    {
      v141 = sub_1C0514F9C(0, *(v141 + 2) + 1, 1, v141);
      *(v211 + 16) = v141;
    }

    v144 = *(v141 + 2);
    v143 = *(v141 + 3);
    if (v144 >= v143 >> 1)
    {
      v141 = sub_1C0514F9C((v143 > 1), v144 + 1, 1, v141);
    }

    *(v141 + 2) = v144 + 1;
    v145 = &v141[64 * v144];
    v146 = v224;
    v147 = *v225;
    v148 = *&v225[32];
    *(v145 + 4) = *&v225[16];
    *(v145 + 5) = v148;
    *(v145 + 2) = v146;
    *(v145 + 3) = v147;
    *(v211 + 16) = v141;
    swift_endAccess();
    sub_1C0514A70(&v231);
    sub_1C0514A70(&v224);
    *&v220 = v22;
    *(&v220 + 1) = v28;
    v56 = v21;
    swift_beginAccess();
    v149 = *(v21 + 16);
    v150 = *(v149 + 16);
    if (v150)
    {

      swift_unownedRetain();

      swift_beginAccess();
      v56 = (v150 - 1);
      v151 = 32;
      v152 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v153 = *(v149 + v151 + 48);
        v155 = *(v149 + v151);
        v154 = *(v149 + v151 + 16);
        *&v227[16] = *(v149 + v151 + 32);
        *&v227[32] = v153;
        v226 = v155;
        *v227 = v154;
        v156 = v155;
        swift_unownedRetainStrong();
        v157 = *(*(&v21 + 1) + 56);
        sub_1C0514AC4(&v226, &v215);

        if (v156 == v157 && (v158 = *(v21 + 24), *(v158 + 16)) && (v159 = sub_1C0514E38(*(&v226 + 1)), (v160 & 1) != 0))
        {
          v161 = *(*(v158 + 56) + 8 * v159);

          swift_unownedRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = sub_1C05198E0(0, v152[2] + 1, 1, v152);
          }

          v163 = v152[2];
          v162 = v152[3];
          if (v163 >= v162 >> 1)
          {
            v152 = sub_1C05198E0((v162 > 1), v163 + 1, 1, v152);
          }

          v217 = *&v227[16];
          v218 = *&v227[32];
          v164 = v226;
          v215 = v226;
          v216 = *v227;
          v152[2] = v163 + 1;
          v165 = &v152[10 * v163];
          v166 = v216;
          v167 = v218;
          *(v165 + 4) = v217;
          *(v165 + 5) = v167;
          *(v165 + 2) = v164;
          *(v165 + 3) = v166;
          v165[12] = v21;
          v165[13] = v161;
          if (!v56)
          {
LABEL_82:

            goto LABEL_84;
          }
        }

        else
        {
          sub_1C0514A70(&v226);
          if (!v56)
          {
            goto LABEL_82;
          }
        }

        --v56;
        v151 += 64;
      }
    }

    swift_unownedRetain();
    v152 = MEMORY[0x1E69E7CC0];
LABEL_84:
    v15 = v209 + 1;
    v168 = sub_1C0519EEC(v152);

    sub_1C077D61C(a1, a2, a3, &v220, v168);

    sub_1C0519E84(&v231);

    swift_unownedRelease();
    if (v209 + 1 == v206)
    {

      goto LABEL_108;
    }

    v14 = 1;
  }

  while (v15 < *(v204 + 16));
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);

  __break(1u);
  return result;
}

void USOSerializedGraph.usoSerializedGraphToUsoGraphSiriNl()()
{
  v0 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan(0);
  v331 = *(v0 - 8);
  v332 = v0;
  v1 = *(v331 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v333 = &v264 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v264 - v4;
  v287 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v286 = *(v287 - 8);
  v6 = *(v286 + 64);
  v7 = MEMORY[0x1EEE9AC00](v287);
  v315 = &v264 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v317 = &v264 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v264 - v12;
  v320 = sub_1C095D2EC();
  v265 = *(v320 - 8);
  v14 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v320);
  v276 = &v264 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v292 = *(v294 - 8);
  v16 = *(v292 + 64);
  v17 = MEMORY[0x1EEE9AC00](v294);
  v319 = &v264 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v264 - v19;
  v308 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v267 = *(v308 - 8);
  v21 = *(v267 + 64);
  v22 = MEMORY[0x1EEE9AC00](v308);
  v305 = &v264 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v304 = (&v264 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v273 = &v264 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v303 = &v264 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v306 = &v264 - v31;
  v325 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v266 = *(v325 - 8);
  v32 = *(v266 + 64);
  v33 = MEMORY[0x1EEE9AC00](v325);
  v272 = (&v264 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x1EEE9AC00](v33);
  v290 = (&v264 - v36);
  MEMORY[0x1EEE9AC00](v35);
  v289 = (&v264 - v37);
  v291 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v288 = *(v291 - 8);
  v38 = *(v288 + 64);
  v39 = MEMORY[0x1EEE9AC00](v291);
  v318 = (&v264 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v321 = &v264 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v299 = &v264 - v44;
  v322 = sub_1C095D2AC();
  v45 = *(v322 - 1);
  v46 = v45[8];
  MEMORY[0x1EEE9AC00](v322);
  v280 = &v264 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v275 = &v264 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v282 = &v264 - v52;
  v326 = sub_1C095D32C();
  v270 = *(v326 - 8);
  v53 = *(v270 + 64);
  v54 = MEMORY[0x1EEE9AC00](v326);
  v274 = &v264 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v279 = &v264 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v281 = &v264 - v59;
  v60 = sub_1C095D26C();
  v61 = *(v60 - 1);
  v62 = *(v61 + 8);
  MEMORY[0x1EEE9AC00](v60);
  v278 = &v264 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v298 = *(v301 - 8);
  v64 = *(v298 + 64);
  v65 = MEMORY[0x1EEE9AC00](v301);
  v327 = (&v264 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v264 - v67;
  v69 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v70 = v69 - 8;
  v71 = *(*(v69 - 8) + 64);
  v72 = MEMORY[0x1EEE9AC00](v69);
  v268 = (&v264 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v72);
  v75 = (&v264 - v74);
  v76 = MEMORY[0x1E69E7CC0];
  *v75 = MEMORY[0x1E69E7CC0];
  v75[1] = v76;
  v75[2] = v76;
  v75[3] = v76;
  v77 = &v264 + *(v70 + 40) - v74;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v78 = *(v70 + 44);
  v79 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v80 = *(*(v79 - 8) + 56);
  v269 = v75;
  v80(v75 + v78, 1, 1, v79);
  v81 = [v271 nodes];
  sub_1C0781964(0, &qword_1EBE1F800, off_1E81182E0);
  v82 = sub_1C095D99C();

  v83 = v82;
  if (v82 >> 62)
  {
    goto LABEL_111;
  }

  for (i = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v232)
  {
    v85 = MEMORY[0x1E69E7CC0];
    v293 = v13;
    v330 = v20;
    v300 = v60;
    if (i)
    {
      break;
    }

    v324 = MEMORY[0x1E69E7CC0];
    v13 = v321;
LABEL_41:

    v140 = [v271 edges];
    sub_1C0781964(0, &qword_1EBE1F808, off_1E81182D8);
    v141 = sub_1C095D99C();

    v313 = v141;
    if (v141 >> 62)
    {
      v142 = sub_1C095DCDC();
    }

    else
    {
      v142 = *((v313 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v306;
    if (!v142)
    {
      v323 = MEMORY[0x1E69E7CC0];
LABEL_73:

      v181 = [v271 identifiers];
      sub_1C0781964(0, &qword_1EBE1F810, off_1E81182E8);
      v182 = sub_1C095D99C();

      if (!(v182 >> 62))
      {
        v183 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v183)
        {
          goto LABEL_114;
        }

LABEL_75:
        if (v183 < 1)
        {
          goto LABEL_157;
        }

        v184 = 0;
        v312 = v182 & 0xC000000000000001;
        v327 = (v270 + 56);
        v325 = v265 + 56;
        v307 = (v270 + 48);
        v309 = (v270 + 32);
        v185 = (v265 + 48);
        v308 = v265 + 32;
        v186 = MEMORY[0x1E69E7CC0];
        v310 = v183;
        v322 = (v265 + 48);
        v311 = v182;
        while (1)
        {
          v328 = v184;
          v329 = v186;
          v187 = v312 ? MEMORY[0x1C68DDAD0](v184, v182) : *(v182 + 8 * v184 + 32);
          v45 = v187;
          *v20 = 0;
          *(v20 + 1) = 0;
          *(v20 + 2) = 0xE000000000000000;
          *(v20 + 3) = 0;
          *(v20 + 4) = 0xE000000000000000;
          *(v20 + 5) = 0;
          v20[48] = 1;
          v188 = v294;
          v189 = &v20[*(v294 + 32)];
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v13 = v188[9];
          v60 = *v327;
          (*v327)(&v20[v13], 1, 1, v326);
          v68 = v188[10];
          v318 = *v325;
          v318(&v20[v68], 1, 1, v320);
          v190 = &v20[v188[11]];
          *v190 = 0;
          v321 = v190;
          v190[4] = 1;
          v61 = &v20[v188[12]];
          *v61 = 0;
          v61[4] = 1;
          v191 = [v45 nodeIndex];
          if (HIDWORD(v191))
          {
            break;
          }

          v316 = v61;
          *v20 = v191;
          v192 = [v45 value];
          v193 = sub_1C095D75C();
          v195 = v194;

          *(v330 + 3) = v193;
          *(v330 + 4) = v195;
          v196 = [v45 appBundleId];
          v197 = sub_1C095D75C();
          v199 = v198;

          *(v330 + 1) = v197;
          *(v330 + 2) = v199;
          v20 = v330;
          v200 = [v45 sourceComponent];
          if (v200)
          {
            v201 = v200;
            v202 = [v200 integerValue];

            v203 = v202 < 4;
          }

          else
          {
            v202 = 0;
            v203 = 1;
          }

          *(v20 + 5) = v202;
          v20[48] = v203;
          v204 = [v45 namespaceString];
          if (v204)
          {
            v205 = v20;
            v206 = v204;
            v314 = sub_1C095D75C();
            v313 = v207;

            v208 = v275;
            sub_1C05149F8(&v205[v13], v275, &qword_1EBE16D68, &unk_1C09933C0);
            v209 = *v307;
            v210 = v326;
            if ((*v307)(v208, 1, v326) == 1)
            {
              v211 = v274;
              sub_1C095D31C();
              if (v209(v208, 1, v210) != 1)
              {
                sub_1C05145B4(v208, &qword_1EBE16D68, &unk_1C09933C0);
              }
            }

            else
            {
              v211 = v274;
              (*v309)(v274, v208, v210);
            }

            sub_1C095D30C();
            v20 = v330;
            sub_1C05145B4(&v330[v13], &qword_1EBE16D68, &unk_1C09933C0);
            (*v309)(&v20[v13], v211, v210);
            (v60)(&v20[v13], 0, 1, v210);
            v185 = v322;
          }

          v212 = [v45 probability];
          v213 = v293;
          v214 = v320;
          if (v212)
          {
            v215 = v212;
            [v212 doubleValue];
            sub_1C05149F8(&v20[v68], v213, &qword_1EBE1E830, &qword_1C09933E0);
            v216 = *v185;
            if ((*v185)(v213, 1, v214) == 1)
            {
              v217 = v276;
              sub_1C095D2DC();
              v218 = v216(v213, 1, v214);
              v219 = v217;
              v20 = v330;
              if (v218 != 1)
              {
                sub_1C05145B4(v213, &qword_1EBE1E830, &qword_1C09933E0);
              }
            }

            else
            {
              v219 = v276;
              (*v308)(v276, v213, v214);
            }

            sub_1C095D2CC();

            sub_1C05145B4(&v20[v68], &qword_1EBE1E830, &qword_1C09933E0);
            (*v308)(&v20[v68], v219, v214);
            v318(&v20[v68], 0, 1, v214);
          }

          v220 = [v45 groupIndex];
          if (v220)
          {
            v221 = v220;
            v222 = [v220 unsignedIntValue];

            v223 = v321;
            *v321 = v222;
            v223[4] = 0;
          }

          v224 = [v45 interpretationGroup];
          v225 = v328;
          v186 = v329;
          if (v224)
          {
            v226 = v224;
            v227 = [v224 unsignedIntValue];

            v228 = v316;
            *v316 = v227;
            *(v228 + 4) = 0;
          }

          sub_1C07819AC(v20, v319, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v186 = sub_1C05784DC(0, *(v186 + 2) + 1, 1, v186);
          }

          v182 = v311;
          v230 = *(v186 + 2);
          v229 = *(v186 + 3);
          if (v230 >= v229 >> 1)
          {
            v186 = sub_1C05784DC(v229 > 1, v230 + 1, 1, v186);
          }

          v184 = v225 + 1;

          *(v186 + 2) = v230 + 1;
          sub_1C0781A14(v319, &v186[((*(v292 + 80) + 32) & ~*(v292 + 80)) + *(v292 + 72) * v230], type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          sub_1C0783D34(v20, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          v185 = v322;
          if (v310 == v184)
          {
            goto LABEL_115;
          }
        }

LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v183 = sub_1C095DCDC();
      if (v183)
      {
        goto LABEL_75;
      }

LABEL_114:
      v186 = MEMORY[0x1E69E7CC0];
LABEL_115:

      v233 = [v271 alignments];
      sub_1C0781964(0, &qword_1EBE1F818, off_1E81182F0);
      v234 = sub_1C095D99C();

      if (v234 >> 62)
      {
        goto LABEL_154;
      }

      v235 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (2)
      {
        v236 = v317;
        v329 = v186;
        v186 = MEMORY[0x1E69E7CC0];
        if (!v235)
        {
          v238 = MEMORY[0x1E69E7CC0];
LABEL_147:

          v259 = v269;
          v260 = v323;
          *v269 = v324;
          v259[1] = v260;
          v259[2] = v329;
          v259[3] = v238;
          if (qword_1EBE154C8 != -1)
          {
            swift_once();
          }

          type metadata accessor for UsoGraphVocabManager();
          inited = swift_initStackObject();
          v262 = MEMORY[0x1E69E7CC0];
          *(inited + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
          *(inited + 24) = sub_1C051DA50(v262);
          v263 = v268;
          sub_1C07819AC(v259, v268, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
          sub_1C0798000(v263, inited);
          sub_1C0783D34(v259, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
          return;
        }

        v237 = 0;
        v325 = v234;
        v326 = v234 & 0xC000000000000001;
        v320 = v234 + 32;
        v321 = (v234 & 0xFFFFFFFFFFFFFF8);
        v238 = MEMORY[0x1E69E7CC0];
        v322 = v235;
LABEL_119:
        if (v326)
        {
          v239 = MEMORY[0x1C68DDAD0](v237, v234);
        }

        else
        {
          if (v237 >= *(v321 + 2))
          {
            goto LABEL_153;
          }

          v239 = *(v320 + 8 * v237);
        }

        v240 = v239;
        if (__OFADD__(v237++, 1))
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          v235 = sub_1C095DCDC();
          continue;
        }

        break;
      }

      *v236 = 0;
      *(v236 + 8) = v186;
      *(v236 + 16) = 0;
      v242 = v236 + *(v287 + 28);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v243 = [v240 nodeIndex];
      if (HIDWORD(v243))
      {
        goto LABEL_151;
      }

      *(v236 + 16) = v243;
      *v236 = [v240 asrHypothesisIndex];
      *(v236 + 8) = v186;
      v330 = v240;
      v244 = [v240 spans];
      sub_1C0781964(0, &qword_1EBE1F820, off_1E81182F8);
      v245 = sub_1C095D99C();

      if (v245 >> 62)
      {
        v246 = sub_1C095DCDC();
        if (!v246)
        {
          goto LABEL_139;
        }

LABEL_127:
        if (v246 < 1)
        {
          goto LABEL_152;
        }

        v327 = v238;
        v328 = v237;
        v247 = 0;
        v248 = v186;
        do
        {
          if ((v245 & 0xC000000000000001) != 0)
          {
            v249 = MEMORY[0x1C68DDAD0](v247, v245);
          }

          else
          {
            v249 = *(v245 + 8 * v247 + 32);
          }

          v250 = v249;
          *v5 = 0;
          *(v5 + 1) = 0;
          *(v5 + 2) = 0;
          v251 = &v5[*(v332 + 40)];
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          *v5 = [v250 startIndex];
          *(v5 + 1) = [v250 endIndex];
          *(v5 + 2) = [v250 startUnicodeScalarIndex];
          *(v5 + 3) = [v250 endUnicodeScalarIndex];
          *(v5 + 4) = [v250 startMilliSeconds];
          *(v5 + 5) = [v250 endMilliSeconds];
          sub_1C07819AC(v5, v333, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v248 = sub_1C05784B4(0, v248[2] + 1, 1, v248);
          }

          v253 = v248[2];
          v252 = v248[3];
          if (v253 >= v252 >> 1)
          {
            v248 = sub_1C05784B4(v252 > 1, v253 + 1, 1, v248);
          }

          ++v247;

          sub_1C0783D34(v5, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
          v248[2] = v253 + 1;
          sub_1C0781A14(v333, v248 + ((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v253, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
        }

        while (v246 != v247);

        v254 = v317;
        *(v317 + 8) = v248;
        v234 = v325;
        v235 = v322;
        v186 = MEMORY[0x1E69E7CC0];
        v238 = v327;
        v237 = v328;
      }

      else
      {
        v246 = *((v245 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v246)
        {
          goto LABEL_127;
        }

LABEL_139:

        v254 = v317;
      }

      sub_1C07819AC(v254, v315, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v256 = v330;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v238 = sub_1C057848C(0, (v238[2] + 1), 1, v238);
      }

      v258 = v238[2];
      v257 = v238[3];
      if (v258 >= v257 >> 1)
      {
        v238 = sub_1C057848C(v257 > 1, v258 + 1, 1, v238);
      }

      v238[2] = (v258 + 1);
      sub_1C0781A14(v315, v238 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v258, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      v236 = v317;
      sub_1C0783D34(v317, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      if (v237 == v235)
      {
        goto LABEL_147;
      }

      goto LABEL_119;
    }

    if (v142 < 1)
    {
      goto LABEL_156;
    }

    v68 = 0;
    v312 = v313 & 0xC000000000000001;
    v328 = v266 + 56;
    v322 = (v266 + 48);
    v314 = (v267 + 56);
    v323 = MEMORY[0x1E69E7CC0];
    v45 = &qword_1EBE16DA0;
    v311 = v142;
    while (1)
    {
      v143 = v312 ? MEMORY[0x1C68DDAD0](v68, v313) : *(v313 + 8 * v68 + 32);
      v60 = v143;
      *v13 = 0;
      v144 = v291;
      v145 = v13 + *(v291 + 24);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v146 = *(v144 + 28);
      v327 = *v328;
      (v327)(v13 + v146, 1, 1, v325);
      v147 = [v60 fromVertex];
      if (HIDWORD(v147))
      {
        break;
      }

      *v13 = v147;
      v148 = [v60 toVertex];
      if (HIDWORD(v148))
      {
        goto LABEL_109;
      }

      *(v13 + 4) = v148;
      v149 = [v60 usoElementId];
      if ((v149 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v150 = v149;
      v329 = v60;
      v316 = v68;
      sub_1C05149F8(v13 + v146, v61, &qword_1EBE16DA0, &qword_1C0997A60);
      v151 = v61;
      v152 = *v322;
      v153 = v61;
      v154 = v325;
      if ((*v322)(v153, 1, v325) == 1)
      {
        v155 = v289;
        *v289 = 0;
        v156 = v155 + *(v154 + 24);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v314)(v155 + *(v154 + 28), 1, 1, v308);
        if (v152(v151, 1, v154) != 1)
        {
          sub_1C05145B4(v306, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        v155 = v289;
        sub_1C0781A14(v151, v289, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      }

      *v155 = v150;
      v13 = v321;
      sub_1C05145B4(&v321[v146], &qword_1EBE16DA0, &qword_1C0997A60);
      sub_1C0781A14(v155, v13 + v146, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      (v327)(v13 + v146, 0, 1, v154);
      v157 = [v329 enumeration];
      v158 = v303;
      sub_1C05149F8(v13 + v146, v303, &qword_1EBE16DA0, &qword_1C0997A60);
      v159 = v152(v158, 1, v154);
      v160 = v290;
      if (v159 == 1)
      {
        *v290 = 0;
        v161 = v160 + *(v154 + 24);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v314)(v160 + *(v154 + 28), 1, 1, v308);
        v45 = &qword_1EBE16DA0;
        if (v152(v158, 1, v154) != 1)
        {
          sub_1C05145B4(v303, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        sub_1C0781A14(v158, v290, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v45 = &qword_1EBE16DA0;
      }

      *(v160 + 1) = v157;
      sub_1C05145B4(v13 + v146, &qword_1EBE16DA0, &qword_1C0997A60);
      sub_1C0781A14(v160, v13 + v146, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      (v327)(v13 + v146, 0, 1, v154);
      v162 = [v329 edgeLabel];
      if (v162)
      {
        v163 = v162;
        v164 = sub_1C095D75C();
        v166 = v165;

        v167 = v304;
        *v304 = 0;
        v167[1] = 0xE000000000000000;
        v168 = v308;
        v169 = v167 + *(v308 + 20);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        *v167 = v164;
        v167[1] = v166;
        sub_1C07819AC(v167, v305, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v170 = v273;
        sub_1C05149F8(v13 + v146, v273, &qword_1EBE16DA0, &qword_1C0997A60);
        if (v152(v170, 1, v154) == 1)
        {
          v171 = v272;
          *v272 = 0;
          v172 = v171 + *(v154 + 24);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          (*v314)(v171 + *(v154 + 28), 1, 1, v168);
          v173 = v168;
          if (v152(v170, 1, v154) != 1)
          {
            sub_1C05145B4(v170, &qword_1EBE16DA0, &qword_1C0997A60);
          }
        }

        else
        {
          v171 = v272;
          sub_1C0781A14(v170, v272, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
          v173 = v168;
        }

        v174 = *(v325 + 28);
        sub_1C05145B4(v171 + v174, &qword_1EBE16D90, &qword_1C0970458);
        sub_1C0781A14(v305, v171 + v174, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        (*v314)(v171 + v174, 0, 1, v173);
        v45 = &qword_1EBE16DA0;
        sub_1C05145B4(v13 + v146, &qword_1EBE16DA0, &qword_1C0997A60);
        sub_1C0781A14(v171, v13 + v146, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        (v327)(v13 + v146, 0, 1, v325);
        sub_1C0783D34(v304, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v20 = v330;
      }

      sub_1C07819AC(v13, v318, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v323 = sub_1C0578504(0, v323[2] + 1, 1, v323);
      }

      v175 = v316;
      v176 = v329;
      v177 = v311;
      v179 = v323[2];
      v178 = v323[3];
      if (v179 >= v178 >> 1)
      {
        v323 = sub_1C0578504(v178 > 1, v179 + 1, 1, v323);
      }

      v68 = v175 + 1;

      v180 = v323;
      v323[2] = v179 + 1;
      sub_1C0781A14(v318, v180 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v179, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      sub_1C0783D34(v13, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v61 = v306;
      if (v177 == v68)
      {
        goto LABEL_73;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    v231 = v83;
    v232 = sub_1C095DCDC();
    v83 = v231;
  }

  if (i >= 1)
  {
    v297 = v83 & 0xC000000000000001;
    v316 = (v270 + 56);
    v314 = (v45 + 7);
    v313 = (v61 + 56);
    v285 = (v61 + 32);
    v86 = (v270 + 48);
    v284 = (v270 + 32);
    v307 = (v45 + 6);
    v283 = (v45 + 4);
    v87 = 0;
    v324 = MEMORY[0x1E69E7CC0];
    v296 = v83;
    v312 = v270 + 48;
    v295 = i;
    v277 = (v61 + 48);
    while (1)
    {
      v323 = v87;
      v88 = v297 ? MEMORY[0x1C68DDAD0](v87) : *(v83 + 8 * v87 + 32);
      v60 = v88;
      v89 = v326;
      *v68 = 0;
      *(v68 + 8) = 0;
      *(v68 + 16) = 0xE000000000000000;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0xE000000000000000;
      *(v68 + 40) = v85;
      v90 = v301;
      v91 = v68 + *(v301 + 32);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v92 = *v316;
      v311 = v90[9];
      v92(v68 + v311, 1, 1, v89);
      v61 = *v314;
      v328 = v90[10];
      (v61)(v68 + v328, 1, 1, v322);
      v13 = v90[11];
      v20 = *v313;
      v45 = v300;
      (*v313)(v68 + v13, 1, 1, v300);
      v93 = [v60 usoElementId];
      if ((v93 & 0x80000000) != 0)
      {
        break;
      }

      v309 = v92;
      v310 = v61;
      *v68 = v93;
      v94 = [v60 usoVerbId];
      v329 = v60;
      if (v94)
      {
        v95 = v94;
        LODWORD(v302) = [v94 intValue];
        v96 = v281;
        sub_1C05149F8(v68 + v13, v281, &qword_1EBE16B58, &unk_1C099B6A0);
        v97 = *v277;
        if ((*v277)(v96, 1, v45) == 1)
        {
          v98 = v278;
          sub_1C095D25C();
          if (v97(v96, 1, v45) != 1)
          {
            sub_1C05145B4(v281, &qword_1EBE16B58, &unk_1C099B6A0);
          }
        }

        else
        {
          v98 = v278;
          (*v285)(v278, v96, v45);
        }

        sub_1C095D24C();

        sub_1C05145B4(v68 + v13, &qword_1EBE16B58, &unk_1C099B6A0);
        (*v285)((v68 + v13), v98, v45);
        (v20)(v68 + v13, 0, 1, v45);
        v86 = v312;
        v60 = v329;
      }

      v99 = [v60 stringPayload];
      v100 = v323;
      v101 = v307;
      if (v99)
      {
        v102 = v99;
        sub_1C095D75C();
        v302 = v103;

        v104 = v311;
        v105 = v282;
        sub_1C05149F8(v68 + v311, v282, &qword_1EBE16D68, &unk_1C09933C0);
        v106 = *v86;
        v107 = v326;
        if ((*v86)(v105, 1, v326) == 1)
        {
          v108 = v279;
          sub_1C095D31C();
          v109 = v106(v105, 1, v107);
          v110 = v108;
          v101 = v307;
          if (v109 != 1)
          {
            sub_1C05145B4(v282, &qword_1EBE16D68, &unk_1C09933C0);
          }
        }

        else
        {
          v110 = v279;
          (*v284)(v279, v105, v107);
        }

        sub_1C095D30C();
        sub_1C05145B4(v68 + v104, &qword_1EBE16D68, &unk_1C09933C0);
        (*v284)((v68 + v104), v110, v107);
        (v309)(v68 + v104, 0, 1, v107);
      }

      v111 = [v329 normalizedStringPayloads];
      v13 = v321;
      if (v111)
      {
        v112 = v111;
        v113 = sub_1C095D99C();

        *(v68 + 40) = v113;
      }

      v114 = [v329 integerPayload];
      v20 = v330;
      v115 = v299;
      if (v114)
      {
        v116 = v114;
        v117 = [v114 longLongValue];
        sub_1C05149F8(v68 + v328, v115, &qword_1EBE16DC0, &unk_1C0997A50);
        v118 = *v101;
        v119 = v322;
        if (v118(v115, 1, v322) == 1)
        {
          v311 = v117;
          v120 = v280;
          sub_1C095D29C();
          v121 = v118(v115, 1, v119);
          v122 = v120;
          if (v121 != 1)
          {
            sub_1C05145B4(v115, &qword_1EBE16DC0, &unk_1C0997A50);
          }
        }

        else
        {
          v122 = v280;
          (*v283)(v280, v115, v119);
        }

        sub_1C095D28C();

        v123 = v328;
        sub_1C05145B4(v68 + v328, &qword_1EBE16DC0, &unk_1C0997A50);
        (*v283)(&v123[v68], v122, v119);
        (v310)(&v123[v68], 0, 1, v119);
        v20 = v330;
      }

      v124 = v329;
      v125 = [v329 entityLabel];
      if (v125)
      {
        v126 = v125;
        v127 = sub_1C095D75C();
        v129 = v128;

        *(v68 + 8) = v127;
        *(v68 + 16) = v129;
        v20 = v330;
      }

      v130 = [v124 verbLabel];
      if (v130)
      {
        v131 = v130;
        v132 = sub_1C095D75C();
        v134 = v133;

        *(v68 + 24) = v132;
        *(v68 + 32) = v134;
        v20 = v330;
      }

      sub_1C07819AC(v68, v327, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v312;
      if ((v135 & 1) == 0)
      {
        v324 = sub_1C057852C(0, v324[2] + 1, 1, v324);
      }

      v136 = v295;
      v138 = v324[2];
      v137 = v324[3];
      if (v138 >= v137 >> 1)
      {
        v324 = sub_1C057852C(v137 > 1, v138 + 1, 1, v324);
      }

      v87 = (v100 + 1);

      v139 = v324;
      v324[2] = v138 + 1;
      sub_1C0781A14(v327, v139 + ((*(v298 + 80) + 32) & ~*(v298 + 80)) + *(v298 + 72) * v138, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      sub_1C0783D34(v68, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v83 = v296;
      v85 = MEMORY[0x1E69E7CC0];
      if (v136 == v87)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_107;
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

Swift::String_optional __swiftcall USOSerializedGraph.getDebugGraphStringSiriNl()()
{
  USOSerializedGraph.usoSerializedGraphToUsoGraphSiriNl()();
  if (v0)
  {
    v1 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)(v0, 0);
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  v4 = v1;
  v5 = v3;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1C0781964(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C07819AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0781A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sSo18USOSerializedGraphC12SiriOntologyE9fromProto05protoB0AbC0c21_Nl_Core_Protocol_UsoB0V_tFZ_0(void *a1)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan(0);
  v276 = *(v2 - 8);
  v3 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v250 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v292 = *(v6 - 8);
  v7 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v295 = (&v250 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v287 = sub_1C095D2EC();
  v251 = *(v287 - 8);
  v9 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v287);
  v268 = &v250 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v267 = &v250 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v286 = &v250 - v15;
  v309 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v250 = *(v309 - 8);
  v16 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v309);
  v298 = (&v250 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v283 = &v250 - v20;
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v254 = *(v21 - 8);
  v22 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v260 = (&v250 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v259 = &v250 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v282 = &v250 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v306 = &v250 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v250 - v32;
  v310 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v253 = *(v310 - 8);
  v34 = *(v253 + 64);
  v35 = MEMORY[0x1EEE9AC00](v310);
  v281 = &v250 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v280 = &v250 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v279 = &v250 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v250 - v41;
  v284 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v252 = *(v284 - 8);
  v43 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v284);
  v297 = (&v250 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v291 = sub_1C095D2AC();
  v45 = *(v291 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v291);
  v275 = &v250 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v274 = &v250 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v290 = &v250 - v52;
  v305 = sub_1C095D32C();
  v53 = *(v305 - 8);
  v54 = *(v53 + 64);
  v55 = MEMORY[0x1EEE9AC00](v305 - 8);
  v266 = &v250 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v273 = &v250 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x1EEE9AC00](v58 - 8);
  v265 = &v250 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v285 = &v250 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v272 = &v250 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v289 = &v250 - v66;
  v296 = sub_1C095D26C();
  v67 = *(v296 - 1);
  v68 = *(v67 + 64);
  v69 = MEMORY[0x1EEE9AC00](v296);
  v271 = &v250 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v270 = &v250 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x1EEE9AC00](v72 - 8);
  v76 = &v250 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v74);
  v269 = &v250 - v78;
  MEMORY[0x1EEE9AC00](v77);
  v288 = &v250 - v79;
  v308 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v80 = *(*(v308 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v308);
  v311 = (&v250 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = MEMORY[0x1E69E7CC0];
  v315 = MEMORY[0x1E69E7CC0];
  v316 = MEMORY[0x1E69E7CC0];
  v313 = MEMORY[0x1E69E7CC0];
  v314 = MEMORY[0x1E69E7CC0];
  v256 = a1;
  v85 = *a1;
  v86 = *(*a1 + 16);
  v307 = v21;
  v294 = v33;
  v293 = v42;
  v255 = v53;
  if (v86)
  {
    v87 = v85 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v304 = (v67 + 48);
    v278 = *(v82 + 72);
    v263 = (v67 + 32);
    v277 = (v67 + 8);
    v300 = (v53 + 48);
    v258 = (v53 + 32);
    v262 = (v53 + 8);
    v257 = (v45 + 32);
    v261 = (v45 + 8);
    v88 = v296;
    v264 = v76;
    v89 = v308;
    v299 = (v45 + 48);
    while (1)
    {
      v303 = v86;
      v90 = v311;
      result = sub_1C07819AC(v87, v311, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v91 = *v90;
      if ((v91 & 0x80000000) != 0)
      {
        break;
      }

      v302 = v87;
      v92 = objc_allocWithZone(USOSerializedGraphNode);
      LODWORD(v301) = v91;
      v93 = [v92 initWithUsoElementId_];
      v94 = *(v89 + 44);
      v95 = v288;
      v96 = v89;
      sub_1C05149F8(v311 + v94, v288, &qword_1EBE16B58, &unk_1C099B6A0);
      v97 = *v304;
      v98 = (*v304)(v95, 1, v88);
      sub_1C05145B4(v95, &qword_1EBE16B58, &unk_1C099B6A0);
      if (v98 != 1)
      {
        v99 = v269;
        sub_1C05149F8(v311 + v94, v269, &qword_1EBE16B58, &unk_1C099B6A0);
        if (v97(v99, 1, v88) == 1)
        {
          v100 = v270;
          sub_1C095D25C();
          if (v97(v99, 1, v88) != 1)
          {
            sub_1C05145B4(v99, &qword_1EBE16B58, &unk_1C099B6A0);
          }
        }

        else
        {
          v100 = v270;
          (*v263)(v270, v99, v88);
        }

        v101 = sub_1C095D23C();
        v102 = *v277;
        (*v277)(v100, v88);
        v103 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
        [v93 setUsoVerbId_];

        v104 = v264;
        sub_1C05149F8(v311 + v94, v264, &qword_1EBE16B58, &unk_1C099B6A0);
        if (v97(v104, 1, v88) == 1)
        {
          v105 = v271;
          sub_1C095D25C();
          v106 = v97(v104, 1, v88);
          v96 = v308;
          if (v106 != 1)
          {
            sub_1C05145B4(v104, &qword_1EBE16B58, &unk_1C099B6A0);
          }
        }

        else
        {
          v105 = v271;
          (*v263)(v271, v104, v88);
          v96 = v308;
        }

        v107 = sub_1C095D23C();
        v102(v105, v88);
        if (!v107)
        {
          v108 = *(v311 + 3);
          v109 = *(v311 + 4);
          v110 = sub_1C095D74C();
          [v93 setVerbLabel_];
        }
      }

      v111 = *(v96 + 36);
      v112 = v289;
      sub_1C05149F8(v311 + v111, v289, &qword_1EBE16D68, &unk_1C09933C0);
      v113 = *v300;
      v114 = v305;
      v115 = (*v300)(v112, 1, v305);
      sub_1C05145B4(v112, &qword_1EBE16D68, &unk_1C09933C0);
      if (v115 != 1)
      {
        v116 = v272;
        sub_1C05149F8(v311 + v111, v272, &qword_1EBE16D68, &unk_1C09933C0);
        if (v113(v116, 1, v114) == 1)
        {
          v117 = v273;
          sub_1C095D31C();
          if (v113(v116, 1, v114) != 1)
          {
            sub_1C05145B4(v116, &qword_1EBE16D68, &unk_1C09933C0);
          }
        }

        else
        {
          v117 = v273;
          (*v258)(v273, v116, v114);
        }

        sub_1C095D2FC();
        (*v262)(v117, v114);
        v118 = sub_1C095D74C();

        [v93 setStringPayload_];
      }

      v119 = *(v308 + 40);
      v120 = v290;
      sub_1C05149F8(v311 + v119, v290, &qword_1EBE16DC0, &unk_1C0997A50);
      v121 = *v299;
      v122 = v291;
      v123 = (*v299)(v120, 1, v291);
      sub_1C05145B4(v120, &qword_1EBE16DC0, &unk_1C0997A50);
      v88 = v296;
      if (v123 != 1)
      {
        v124 = v274;
        sub_1C05149F8(v311 + v119, v274, &qword_1EBE16DC0, &unk_1C0997A50);
        if (v121(v124, 1, v122) == 1)
        {
          v125 = v275;
          sub_1C095D29C();
          if (v121(v124, 1, v122) != 1)
          {
            sub_1C05145B4(v124, &qword_1EBE16DC0, &unk_1C0997A50);
          }
        }

        else
        {
          v125 = v275;
          (*v257)(v275, v124, v122);
        }

        v126 = sub_1C095D27C();
        (*v261)(v125, v122);
        v127 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        [v93 setIntegerPayload_];
      }

      if (!v301)
      {
        v128 = *(v311 + 1);
        v129 = *(v311 + 2);
        v130 = sub_1C095D74C();
        [v93 setEntityLabel_];
      }

      v131 = v93;
      MEMORY[0x1C68DD810]();
      v89 = v308;
      if (*((v316 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v316 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v133 = *((v316 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C095D9AC();
        v88 = v296;
      }

      sub_1C095D9DC();

      v84 = v316;
      result = sub_1C0783D34(v311, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v87 = v302 + v278;
      v86 = v303 - 1;
      v132 = v306;
      if (v303 == 1)
      {
        v33 = v294;
        v134 = v293;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_108;
  }

  v132 = v306;
  v134 = v42;
LABEL_34:
  v135 = v256[1];
  v136 = *(v135 + 16);
  v300 = v84;
  v137 = v297;
  if (v136)
  {
    result = v135 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
    v311 = (v253 + 48);
    v302 = *(v252 + 72);
    v303 = (v254 + 56);
    v301 = (v254 + 48);
    while (1)
    {
      v308 = result;
      sub_1C07819AC(result, v137, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v138 = *(v284 + 28);
      sub_1C05149F8(v137 + v138, v33, &qword_1EBE16DA0, &qword_1C0997A60);
      v139 = v310;
      v140 = *v311;
      if ((*v311)(v33, 1, v310) == 1)
      {
        *v134 = 0;
        v141 = &v134[*(v139 + 24)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v303)(&v134[*(v139 + 28)], 1, 1, v307);
        if (v140(v33, 1, v139) != 1)
        {
          sub_1C05145B4(v33, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        sub_1C0781A14(v33, v134, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      }

      v142 = *v134;
      result = sub_1C0783D34(v134, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      if ((v142 & 0x80000000) != 0)
      {
        break;
      }

      v304 = v136;
      v143 = *v137;
      v144 = *(v137 + 1);
      sub_1C05149F8(v137 + v138, v132, &qword_1EBE16DA0, &qword_1C0997A60);
      v145 = v310;
      if (v140(v132, 1, v310) == 1)
      {
        v146 = v279;
        *v279 = 0;
        v147 = &v146[*(v145 + 24)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v303)(&v146[*(v145 + 28)], 1, 1, v307);
        v148 = v140(v132, 1, v145);
        v149 = v281;
        if (v148 != 1)
        {
          sub_1C05145B4(v132, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        v146 = v279;
        sub_1C0781A14(v132, v279, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v149 = v281;
      }

      v150 = *(v146 + 1);
      sub_1C0783D34(v146, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v151 = [objc_allocWithZone(USOSerializedGraphEdge) initWithUsoElementId:v142 fromVertex:v143 toVertex:v144 enumeration:v150];
      v137 = v297;
      v152 = v282;
      sub_1C05149F8(v297 + v138, v282, &qword_1EBE16DA0, &qword_1C0997A60);
      v153 = v310;
      if (v140(v152, 1, v310) == 1)
      {
        v154 = v280;
        *v280 = 0;
        v155 = &v154[*(v153 + 24)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v303)(&v154[*(v153 + 28)], 1, 1, v307);
        v156 = v140(v152, 1, v153);
        v157 = v283;
        if (v156 != 1)
        {
          sub_1C05145B4(v152, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        v154 = v280;
        sub_1C0781A14(v152, v280, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v157 = v283;
      }

      v158 = *v154;
      sub_1C0783D34(v154, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v134 = v293;
      if (!v158)
      {
        v159 = v293;
        v160 = v259;
        sub_1C05149F8(v137 + v138, v259, &qword_1EBE16DA0, &qword_1C0997A60);
        v161 = v310;
        if (v140(v160, 1, v310) == 1)
        {
          *v149 = 0;
          v162 = &v149[*(v161 + 24)];
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          (*v303)(&v149[*(v161 + 28)], 1, 1, v307);
          if (v140(v160, 1, v161) != 1)
          {
            sub_1C05145B4(v160, &qword_1EBE16DA0, &qword_1C0997A60);
          }
        }

        else
        {
          sub_1C0781A14(v160, v149, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        }

        sub_1C05149F8(&v149[*(v310 + 28)], v157, &qword_1EBE16D90, &qword_1C0970458);
        v163 = *v301;
        v164 = v307;
        v134 = v159;
        if ((*v301)(v157, 1, v307) == 1)
        {
          v165 = v260;
          *v260 = 0;
          v165[1] = 0xE000000000000000;
          v166 = v165 + v164[5];
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          sub_1C0783D34(v149, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
          if (v163(v157, 1, v164) != 1)
          {
            sub_1C05145B4(v157, &qword_1EBE16D90, &qword_1C0970458);
          }
        }

        else
        {
          sub_1C0783D34(v149, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
          v165 = v260;
          sub_1C0781A14(v157, v260, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        }

        v167 = *v165;
        v168 = v165[1];

        sub_1C0783D34(v165, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v169 = sub_1C095D74C();

        [v151 setEdgeLabel_];
      }

      v170 = v151;
      MEMORY[0x1C68DD810]();
      if (*((v315 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v315 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v171 = *((v315 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C095D9AC();
      }

      sub_1C095D9DC();

      sub_1C0783D34(v137, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      result = v308 + v302;
      v136 = v304 - 1;
      v132 = v306;
      v33 = v294;
      if (v304 == 1)
      {
        v293 = v315;
        goto LABEL_64;
      }
    }

LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v293 = MEMORY[0x1E69E7CC0];
LABEL_64:
  v172 = v256[2];
  v173 = *(v172 + 16);
  v174 = v309;
  v175 = v298;
  if (v173)
  {
    result = v172 + ((*(v250 + 80) + 32) & ~*(v250 + 80));
    v176 = (v255 + 48);
    v302 = *(v250 + 72);
    v296 = (v255 + 32);
    v299 = (v255 + 8);
    v301 = (v251 + 48);
    v294 = (v251 + 32);
    v297 = (v251 + 8);
    v303 = (v255 + 48);
    do
    {
      v310 = result;
      sub_1C07819AC(result, v175, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
      v177 = *(v174 + 36);
      v178 = v285;
      sub_1C05149F8(v175 + v177, v285, &qword_1EBE16D68, &unk_1C09933C0);
      v179 = *v176;
      v180 = v305;
      v181 = (*v176)(v178, 1, v305);
      sub_1C05145B4(v178, &qword_1EBE16D68, &unk_1C09933C0);
      v311 = v173;
      if (v181 == 1)
      {
        v304 = 0;
        v308 = 0;
        v182 = v301;
        v183 = v309;
      }

      else
      {
        v184 = v175 + v177;
        v185 = v265;
        sub_1C05149F8(v184, v265, &qword_1EBE16D68, &unk_1C09933C0);
        if (v179(v185, 1, v180) == 1)
        {
          v186 = v266;
          sub_1C095D31C();
          v187 = v179(v185, 1, v180);
          v183 = v309;
          if (v187 != 1)
          {
            sub_1C05145B4(v185, &qword_1EBE16D68, &unk_1C09933C0);
          }
        }

        else
        {
          v186 = v266;
          (*v296)(v266, v185, v180);
          v183 = v309;
        }

        v304 = sub_1C095D2FC();
        v308 = v188;
        (*v299)(v186, v180);
        v182 = v301;
      }

      v189 = *(v183 + 40);
      v190 = v286;
      sub_1C05149F8(v175 + v189, v286, &qword_1EBE1E830, &qword_1C09933E0);
      v191 = *v182;
      v192 = v287;
      v193 = (*v182)(v190, 1, v287);
      sub_1C05145B4(v190, &qword_1EBE1E830, &qword_1C09933E0);
      if (v193 == 1)
      {
        v194 = 0;
        v195 = v309;
        v196 = 0x1E696A000;
      }

      else
      {
        v197 = v175 + v189;
        v198 = v267;
        sub_1C05149F8(v197, v267, &qword_1EBE1E830, &qword_1C09933E0);
        if (v191(v198, 1, v192) == 1)
        {
          v199 = v268;
          sub_1C095D2DC();
          v200 = v191(v198, 1, v192);
          v195 = v309;
          v196 = 0x1E696A000;
          if (v200 != 1)
          {
            sub_1C05145B4(v198, &qword_1EBE1E830, &qword_1C09933E0);
          }
        }

        else
        {
          v199 = v268;
          (*v294)(v268, v198, v192);
          v195 = v309;
          v196 = 0x1E696A000uLL;
        }

        sub_1C095D2BC();
        v202 = v201;
        (*v297)(v199, v192);
        v194 = [objc_allocWithZone(*(v196 + 3480)) initWithDouble_];
      }

      v203 = (v175 + *(v195 + 44));
      if (v203[1])
      {
        v204 = 0;
      }

      else
      {
        v204 = [objc_allocWithZone(*(v196 + 3480)) initWithUnsignedInt_];
      }

      v205 = (v175 + *(v195 + 48));
      if (v205[1])
      {
        v206 = 0;
      }

      else
      {
        v206 = [objc_allocWithZone(*(v196 + 3480)) initWithUnsignedInt_];
      }

      v306 = *v175;
      v208 = v175[3];
      v207 = v175[4];
      v209 = v175[1];
      v210 = v175[2];
      v211 = [objc_allocWithZone(*(v196 + 3480)) initWithInteger_];
      v307 = v204;
      v212 = v206;
      v213 = v194;
      v214 = sub_1C095D74C();
      v215 = sub_1C095D74C();
      if (v308)
      {
        v216 = sub_1C095D74C();
      }

      else
      {
        v216 = 0;
      }

      v217 = objc_allocWithZone(USOSerializedIdentifier);
      v218 = v307;
      v219 = [v217 initWithNodeIndex:v306 value:v214 appBundleId:v215 namespaceString:v216 probability:v213 sourceComponent:v211 groupIndex:v307 interpretationGroup:v212];

      v220 = v219;
      MEMORY[0x1C68DD810]();
      if (*((v314 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v314 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v221 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C095D9AC();
      }

      sub_1C095D9DC();

      v175 = v298;
      sub_1C0783D34(v298, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
      v176 = v303;
      result = v310 + v302;
      v173 = (v311 - 1);
      v174 = v309;
    }

    while (v311 != 1);
    v307 = v314;
  }

  else
  {
    v307 = MEMORY[0x1E69E7CC0];
  }

  v222 = v256[3];
  v223 = MEMORY[0x1E69E7CC0];
  v224 = v295;
  v310 = *(v222 + 16);
  if (!v310)
  {
LABEL_106:
    v244 = objc_allocWithZone(USOSerializedGraph);
    sub_1C0781964(0, &qword_1EBE1F800, off_1E81182E0);
    v245 = sub_1C095D98C();

    sub_1C0781964(0, &qword_1EBE1F808, off_1E81182D8);
    v246 = sub_1C095D98C();

    sub_1C0781964(0, &qword_1EBE1F810, off_1E81182E8);
    v247 = sub_1C095D98C();

    sub_1C0781964(0, &qword_1EBE1F818, off_1E81182F0);
    v248 = sub_1C095D98C();

    v249 = [v244 initWithNodes:v245 edges:v246 identifiers:v247 alignments:v248];

    return v249;
  }

  v225 = 0;
  v226 = *(v292 + 80);
  v308 = v222;
  v309 = v222 + ((v226 + 32) & ~v226);
  while (v225 < *(v222 + 16))
  {
    v227 = *(v292 + 72);
    v311 = v225;
    sub_1C07819AC(v309 + v227 * v225, v224, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    v312 = v223;
    v228 = *(v224 + 8);
    v229 = *(v228 + 16);
    if (v229)
    {
      v230 = v228 + ((*(v276 + 80) + 32) & ~*(v276 + 80));
      v231 = *(v276 + 72);
      do
      {
        sub_1C07819AC(v230, v5, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
        v232 = *v5;
        v233 = v5[1];
        v234 = v5[2];
        v235 = v5[3];
        v236 = v5[4];
        v237 = v5[5];
        sub_1C0783D34(v5, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
        [objc_allocWithZone(USOSerializedUtteranceSpan) initWithStartIndex:v232 endIndex:v233 startUnicodeScalarIndex:v234 endUnicodeScalarIndex:v235 startMilliSeconds:v236 endMilliSeconds:v237];
        MEMORY[0x1C68DD810]();
        if (*((v312 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v312 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v238 = *((v312 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C095D9AC();
        }

        sub_1C095D9DC();
        v230 += v231;
        --v229;
      }

      while (v229);
      v223 = MEMORY[0x1E69E7CC0];
      v222 = v308;
    }

    v224 = v295;
    v239 = v295[4];
    v240 = *v295;
    v241 = objc_allocWithZone(USOSerializedUtteranceAlignment);
    sub_1C0781964(0, &qword_1EBE1F820, off_1E81182F8);
    v242 = sub_1C095D98C();

    [v241 initWithNodeIndex:v239 asrHypothesisIndex:v240 spans:v242];

    MEMORY[0x1C68DD810]();
    if (*((v313 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v313 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v243 = *((v313 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C095D9AC();
      v224 = v295;
    }

    v225 = v311 + 1;
    sub_1C095D9DC();
    result = sub_1C0783D34(v224, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    if (v225 == v310)
    {
      goto LABEL_106;
    }
  }

LABEL_109:
  __break(1u);
  return result;
}