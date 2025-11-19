uint64_t sub_26860E688(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v50 = result + 32;
  v4 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_79;
    }

    v5 = (v50 + 72 * v3);
    v6 = *v5;
    v7 = (v4 + 72 * v3);
    v8 = *v7;
    v9 = *(*v5 + 16);
    if (v9 != *(*v7 + 16))
    {
      return 0;
    }

    v52 = v5[1];
    v51 = v5[2];
    v49 = v5[3];
    result = v5[5];
    v11 = v5[6];
    v10 = v5[7];
    v12 = v5[8];
    v13 = v7[1];
    v14 = v7[2];
    v15 = v7[3];
    v47 = v7[4];
    v48 = v5[4];
    v16 = v7[5];
    v54 = v7[6];
    if (v9)
    {
      v17 = v6 == v8;
    }

    else
    {
      v17 = 1;
    }

    v18 = v7[7];
    v53 = v7[8];
    if (!v17)
    {
      v19 = (v6 + 32);
      v20 = (v8 + 32);
      while (v9)
      {
        if (*v19 != *v20)
        {
          return 0;
        }

        ++v19;
        ++v20;
        if (!--v9)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      __break(1u);
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
      return result;
    }

LABEL_15:
    v21 = *(v52 + 16);
    if (v21 != *(v13 + 16))
    {
      return 0;
    }

    if (v21 && v52 != v13)
    {
      break;
    }

LABEL_21:
    if (v11)
    {
      if (!v54)
      {
        return 0;
      }

      if (result != v16 || v11 != v54)
      {
        v24 = v4;
        v25 = v10;
        v26 = v18;
        result = sub_268689E14();
        v18 = v26;
        v10 = v25;
        v4 = v24;
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v54)
    {
      return 0;
    }

    if (v12)
    {
      if (!v53)
      {
        return 0;
      }

      if (v10 != v18 || v12 != v53)
      {
        v27 = v4;
        result = sub_268689E14();
        v4 = v27;
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v53)
    {
      return 0;
    }

    v28 = *(v51 + 16);
    if (v28 != *(v14 + 16))
    {
      return 0;
    }

    v45 = v15;
    v29 = v4;
    if (v28 && v51 != v14)
    {
      v30 = v14;
      v31 = (v51 + 40);
      v32 = (v30 + 40);
      do
      {
        result = *(v31 - 1);
        if (result != *(v32 - 1) || *v31 != *v32)
        {
          result = sub_268689E14();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v31 += 2;
        v32 += 2;
      }

      while (--v28);
    }

    v34 = v48 >> 62;
    v35 = v47 >> 62;
    if (v48 >> 62 != 3)
    {
      if (v34)
      {
        if (v34 == 1)
        {
          LODWORD(v36) = HIDWORD(v49) - v49;
          v37 = v45;
          if (__OFSUB__(HIDWORD(v49), v49))
          {
            goto LABEL_83;
          }

          v4 = v29;
          v36 = v36;
        }

        else
        {
          v40 = *(v49 + 16);
          v39 = *(v49 + 24);
          v41 = __OFSUB__(v39, v40);
          v36 = v39 - v40;
          v37 = v45;
          if (v41)
          {
            goto LABEL_82;
          }

          v4 = v29;
        }

LABEL_66:
        if (v35 > 1)
        {
LABEL_67:
          if (v35 != 2)
          {
            if (v36)
            {
              return 0;
            }

            goto LABEL_74;
          }

          v43 = *(v37 + 16);
          v42 = *(v37 + 24);
          v41 = __OFSUB__(v42, v43);
          v38 = v42 - v43;
          if (v41)
          {
            goto LABEL_81;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v36 = BYTE6(v48);
LABEL_58:
        v4 = v29;
        v37 = v45;
LABEL_59:
        if (v35 > 1)
        {
          goto LABEL_67;
        }
      }

      if (v35)
      {
        LODWORD(v38) = HIDWORD(v37) - v37;
        if (__OFSUB__(HIDWORD(v37), v37))
        {
          goto LABEL_80;
        }

        v38 = v38;
      }

      else
      {
        v38 = BYTE6(v47);
      }

LABEL_69:
      if (v36 != v38)
      {
        return 0;
      }

      if (v36 >= 1)
      {
        v44 = v4;
        sub_2685BA80C(v37, v47);
        sub_2685BA80C(v37, v47);

        sub_2685BA80C(v49, v48);

        sub_2685BA80C(v37, v47);

        sub_2685BA80C(v49, v48);
        v46 = sub_268612B64(v49, v48, v37, v47);
        sub_2685B593C(v37, v47);
        sub_2685B593C(v49, v48);

        sub_2685B593C(v37, v47);

        sub_2685B593C(v49, v48);

        if ((v46 & 1) == 0)
        {
          return 0;
        }

        v4 = v44;
      }

      goto LABEL_74;
    }

    v36 = 0;
    if (v49)
    {
      goto LABEL_58;
    }

    v4 = v29;
    v37 = v45;
    if (v48 != 0xC000000000000000)
    {
      goto LABEL_66;
    }

    if (v47 >> 62 != 3)
    {
      goto LABEL_59;
    }

    v36 = 0;
    if (v45 || v47 != 0xC000000000000000)
    {
      goto LABEL_59;
    }

LABEL_74:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v22 = (v52 + 32);
  v23 = (v13 + 32);
  while (*v22 == *v23)
  {
    ++v22;
    ++v23;
    if (!--v21)
    {
      goto LABEL_21;
    }
  }

  return 0;
}

uint64_t sub_26860EBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_268689E14() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26860EC6C(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_74;
  }

  if (!v2 || a1 == a2)
  {
LABEL_67:
    result = 1;
    goto LABEL_75;
  }

  v3 = (a1 + 48);
  v4 = (a2 + 48);
  while (1)
  {
    v7 = *(v3 - 2);
    v8 = *(v3 - 1);
    v9 = *v3;
    v11 = *(v4 - 2);
    v10 = *(v4 - 1);
    v12 = *v4;
    if (*v3 == *v4)
    {
      sub_2685BA80C(*(v3 - 2), *(v3 - 1));

      sub_2685BA80C(v11, v10);

      goto LABEL_20;
    }

    v48 = v4;
    v49 = v3;
    v57 = *(v4 - 1);
    v59 = *(v4 - 2);
    v50 = v2;
    v51 = *v3;
    v55 = *v4;
    v56 = *(v3 - 1);
    v14 = *(v9 + 16);
    v13 = *(v9 + 24);
    v15 = *(v9 + 32);
    v16 = *(v9 + 40);
    v18 = *(v12 + 16);
    v17 = *(v12 + 24);
    v19 = *(v12 + 32);
    v20 = *(v12 + 40);
    v52 = v7;
    if ((~v15 & 0x3000000000000000) == 0 && v16 == 255)
    {
      sub_2685BA80C(v7, v56);

      sub_2685BA80C(v59, v57);
      swift_retain_n();

      sub_2685D10A0(v14, v13, v15, 255);
      if ((~v19 & 0x3000000000000000) != 0 || v20 != 255)
      {
        sub_2685D10A0(v18, v17, v19, v20);
        LOBYTE(v16) = -1;
        goto LABEL_71;
      }

      sub_2685D10A0(v18, v17, v19, 255);
      sub_2685D1170(v14, v13, v15, 255);
      goto LABEL_19;
    }

    *&v65 = v14;
    *(&v65 + 1) = v13;
    v66 = v15;
    v67 = v16;
    if ((~v19 & 0x3000000000000000) == 0 && v20 == 255)
    {
      break;
    }

    v61 = v18;
    v62 = v17;
    v63 = v19;
    v64 = v20 & 1;
    sub_2685BA80C(v7, v56);

    sub_2685BA80C(v59, v57);
    swift_retain_n();

    sub_2685D10A0(v14, v13, v15, v16);
    sub_2685D10A0(v18, v17, v19, v20);
    sub_2685D10A0(v14, v13, v15, v16);
    v21 = _s20SiriOntologyProtobuf07Google_C6_ValueV10OneOf_KindO2eeoiySbAE_AEtFZ_0(&v65, &v61);
    sub_2685D1198(v61, v62, v63, v64);
    sub_2685D1198(v65, *(&v65 + 1), v66, v67);
    sub_2685D1170(v14, v13, v15, v16);
    if ((v21 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_19:

    v8 = v56;
    v10 = v57;
    v3 = v49;
    v2 = v50;
    v7 = v52;
    v11 = v59;
    v4 = v48;
LABEL_20:
    v22 = v8 >> 62;
    v23 = v10 >> 62;
    if (v8 >> 62 == 3)
    {
      v24 = 0;
      if (!v7 && v8 == 0xC000000000000000 && v10 >> 62 == 3)
      {
        v24 = 0;
        if (!v11 && v10 == 0xC000000000000000)
        {
          sub_2685B593C(0, 0xC000000000000000);

          v5 = 0;
          v6 = 0xC000000000000000;
          goto LABEL_7;
        }
      }

LABEL_36:
      if (v23 <= 1)
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v30 = *(v7 + 16);
        v29 = *(v7 + 24);
        v27 = __OFSUB__(v29, v30);
        v24 = v29 - v30;
        if (v27)
        {
          goto LABEL_77;
        }

        goto LABEL_36;
      }

      v24 = 0;
      if (v23 <= 1)
      {
        goto LABEL_37;
      }
    }

    else if (v22)
    {
      LODWORD(v24) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_78;
      }

      v24 = v24;
      if (v23 <= 1)
      {
LABEL_37:
        if (v23)
        {
          LODWORD(v28) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            goto LABEL_76;
          }

          v28 = v28;
        }

        else
        {
          v28 = BYTE6(v10);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v24 = BYTE6(v8);
      if (v23 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_30:
    if (v23 != 2)
    {
      if (v24)
      {
        goto LABEL_68;
      }

LABEL_6:
      sub_2685B593C(v11, v10);

      v5 = v7;
      v6 = v8;
LABEL_7:
      sub_2685B593C(v5, v6);

      goto LABEL_8;
    }

    v26 = *(v11 + 16);
    v25 = *(v11 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (v27)
    {
      __break(1u);
LABEL_76:
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
    }

LABEL_41:
    if (v24 != v28)
    {
LABEL_68:
      sub_2685B593C(v11, v10);

      v45 = v7;
      v46 = v8;
      goto LABEL_73;
    }

    if (v24 < 1)
    {
      goto LABEL_6;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        *&v65 = v7;
        WORD4(v65) = v8;
        BYTE10(v65) = BYTE2(v8);
        BYTE11(v65) = BYTE3(v8);
        BYTE12(v65) = BYTE4(v8);
        BYTE13(v65) = BYTE5(v8);
        v31 = v10;
        sub_2685BA80C(v7, v8);
        sub_2685BA80C(v11, v10);
        v32 = v11;
        v33 = v10;
        goto LABEL_65;
      }

      v41 = v7;
      if (v7 >> 32 < v7)
      {
        goto LABEL_79;
      }

      v54 = v7;
      sub_2685BA80C(v7, v8);
      v58 = v10;
      sub_2685BA80C(v11, v10);
      v42 = sub_268689764();
      if (v42)
      {
        v43 = sub_268689794();
        if (__OFSUB__(v41, v43))
        {
          goto LABEL_82;
        }

        v42 += v41 - v43;
      }

      sub_268689784();
      sub_268612934(v42, v11, v10, &v65);
      sub_2685B593C(v11, v10);
      v40 = v54;
      sub_2685B593C(v54, v8);
      sub_2685B593C(v11, v58);
LABEL_62:

      sub_2685B593C(v40, v8);

      if ((v65 & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_8;
    }

    if (v22 == 2)
    {
      v53 = v7;
      v34 = *(v7 + 16);
      v35 = *(v7 + 24);
      sub_2685BA80C(v7, v8);
      v60 = v11;
      v36 = v11;
      v37 = v10;
      sub_2685BA80C(v36, v10);
      v38 = sub_268689764();
      if (v38)
      {
        v39 = sub_268689794();
        if (__OFSUB__(v34, v39))
        {
          goto LABEL_81;
        }

        v38 += v34 - v39;
      }

      if (__OFSUB__(v35, v34))
      {
        goto LABEL_80;
      }

      sub_268689784();
      sub_268612934(v38, v60, v10, &v65);
      sub_2685B593C(v60, v10);
      v40 = v53;
      sub_2685B593C(v53, v8);
      sub_2685B593C(v60, v37);
      goto LABEL_62;
    }

    *(&v65 + 6) = 0;
    *&v65 = 0;
    sub_2685BA80C(v7, v8);
    sub_2685BA80C(v11, v10);
    v32 = v11;
    v33 = v10;
    v31 = v10;
LABEL_65:
    sub_268612934(&v65, v32, v33, &v61);
    sub_2685B593C(v11, v31);
    sub_2685B593C(v7, v8);
    sub_2685B593C(v11, v31);

    sub_2685B593C(v7, v8);

    if ((v61 & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_8:
    v3 += 3;
    v4 += 3;
    if (!--v2)
    {
      goto LABEL_67;
    }
  }

  sub_2685BA80C(v7, v56);

  sub_2685BA80C(v59, v57);
  swift_retain_n();

  sub_2685D10A0(v14, v13, v15, v16);
  LOBYTE(v20) = -1;
  sub_2685D10A0(v18, v17, v19, 255);
  sub_2685D10A0(v14, v13, v15, v16);
  sub_2685D1198(v14, v13, v15, v16 & 1);
LABEL_71:
  sub_2685D1170(v14, v13, v15, v16);
  sub_2685D1170(v18, v17, v19, v20);
LABEL_72:

  sub_2685B593C(v59, v57);

  v45 = v52;
  v46 = v56;
LABEL_73:
  sub_2685B593C(v45, v46);

LABEL_74:
  result = 0;
LABEL_75:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26860F4C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v51 = v2;
  v52 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v38 = v5[4];
    v39 = v8;
    v9 = v5[7];
    v40 = v5[6];
    v41 = v9;
    v10 = v5[1];
    v35[0] = *v5;
    v35[1] = v10;
    v11 = v5[3];
    v36 = v5[2];
    v37 = v11;
    v27 = v35[0];
    v28 = v10;
    v29 = v36;
    v30 = v11;
    v31 = v38;
    v32 = v8;
    v33 = v40;
    v34 = v9;
    v12 = v6[5];
    v45 = v6[4];
    v46 = v12;
    v13 = v6[7];
    v47 = v6[6];
    v48 = v13;
    v14 = v6[1];
    v42[0] = *v6;
    v42[1] = v14;
    v15 = v6[3];
    v43 = v6[2];
    v44 = v15;
    v19 = v42[0];
    v20 = v14;
    v21 = v43;
    v22 = v15;
    v23 = v45;
    v24 = v12;
    v25 = v47;
    v26 = v13;
    sub_268618EC0(v35, v18);
    sub_268618EC0(v42, v18);
    v16 = _s20SiriOntologyProtobuf07Google_C6_FieldV2eeoiySbAC_ACtFZ_0(&v27, &v19);
    v49[4] = v23;
    v49[5] = v24;
    v49[6] = v25;
    v49[7] = v26;
    v49[0] = v19;
    v49[1] = v20;
    v49[2] = v21;
    v49[3] = v22;
    sub_268618F1C(v49);
    v50[4] = v31;
    v50[5] = v32;
    v50[6] = v33;
    v50[7] = v34;
    v50[0] = v27;
    v50[1] = v28;
    v50[2] = v29;
    v50[3] = v30;
    sub_268618F1C(v50);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 8;
    v5 += 8;
  }

  return 1;
}

uint64_t sub_26860F630(uint64_t a1, uint64_t a2)
{
  __s1[15] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_298;
  }

  if (!v2 || a1 == a2)
  {
    result = 1;
    goto LABEL_299;
  }

  v3 = 0;
  v177 = a2 + 32;
  v178 = a1 + 32;
  v176 = *(a1 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_303;
    }

    v4 = (v178 + 48 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 4);
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[5];
    v11 = v177 + 48 * v3;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v184 = *(v11 + 32);
    v186 = *(v11 + 40);
    if (v5 == *v11 && v6 == v12)
    {
      if (v7 != v13)
      {
        goto LABEL_298;
      }
    }

    else
    {
      v16 = *(v11 + 24);
      v17 = v3;
      v18 = sub_268689E14();
      result = 0;
      if ((v18 & 1) == 0)
      {
        goto LABEL_299;
      }

      v3 = v17;
      v14 = v16;
      if (v7 != v13)
      {
        goto LABEL_299;
      }
    }

    v20 = *(v8 + 16);
    if (v20 != *(v14 + 16))
    {
      goto LABEL_298;
    }

    v179 = v3;
    v180 = v10;
    if (v20)
    {
      break;
    }

    sub_2685BA80C(v9, v10);

    sub_2685BA80C(v184, v186);
LABEL_236:
    v152 = v180;
    v153 = v180 >> 62;
    v154 = v186 >> 62;
    if (v180 >> 62 == 3)
    {
      v155 = 0;
      if (!v9 && v180 == 0xC000000000000000 && v186 >> 62 == 3)
      {
        v155 = 0;
        if (!v184 && v186 == 0xC000000000000000)
        {

          sub_2685B593C(0, 0xC000000000000000);

          sub_2685B593C(0, 0xC000000000000000);
          goto LABEL_285;
        }
      }

LABEL_252:
      if (v154 > 1)
      {
        goto LABEL_246;
      }

      goto LABEL_253;
    }

    if (v153 > 1)
    {
      if (v153 == 2)
      {
        v160 = *(v9 + 16);
        v159 = *(v9 + 24);
        v50 = __OFSUB__(v159, v160);
        v155 = v159 - v160;
        if (v50)
        {
          goto LABEL_329;
        }

        goto LABEL_252;
      }

      v155 = 0;
      if (v154 > 1)
      {
        goto LABEL_246;
      }
    }

    else if (v153)
    {
      LODWORD(v155) = HIDWORD(v9) - v9;
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_330;
      }

      v155 = v155;
      if (v154 > 1)
      {
LABEL_246:
        if (v154 != 2)
        {
          if (v155)
          {
            goto LABEL_300;
          }

LABEL_264:

          sub_2685B593C(v184, v186);

          sub_2685B593C(v9, v180);
          goto LABEL_285;
        }

        v157 = *(v184 + 16);
        v156 = *(v184 + 24);
        v50 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v50)
        {
          goto LABEL_315;
        }

        goto LABEL_259;
      }
    }

    else
    {
      v155 = BYTE6(v180);
      if (v154 > 1)
      {
        goto LABEL_246;
      }
    }

LABEL_253:
    if (v154)
    {
      LODWORD(v158) = HIDWORD(v184) - v184;
      if (__OFSUB__(HIDWORD(v184), v184))
      {
        goto LABEL_316;
      }

      v158 = v158;
    }

    else
    {
      v158 = BYTE6(v186);
    }

LABEL_259:
    if (v155 != v158)
    {
LABEL_300:

LABEL_297:
      sub_2685B593C(v184, v186);

      sub_2685B593C(v9, v152);
LABEL_298:
      result = 0;
LABEL_299:
      v171 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v155 < 1)
    {
      goto LABEL_264;
    }

    if (v153 > 1)
    {
      if (v153 != 2)
      {
        memset(__s1, 0, 14);
        sub_2685BA80C(v9, v180);
        sub_2685BA80C(v184, v186);
        sub_268612934(__s1, v184, v186, &__s2);
        sub_2685B593C(v184, v186);
        sub_2685B593C(v9, v180);

        sub_2685B593C(v184, v186);

        v161 = v9;
        v162 = v180;
LABEL_284:
        sub_2685B593C(v161, v162);
        if ((__s2 & 1) == 0)
        {
          goto LABEL_298;
        }

        goto LABEL_285;
      }

      v163 = *(v9 + 16);
      v164 = *(v9 + 24);
      sub_2685BA80C(v9, v180);
      sub_2685BA80C(v184, v186);
      v165 = sub_268689764();
      if (v165)
      {
        v166 = sub_268689794();
        if (__OFSUB__(v163, v166))
        {
          goto LABEL_341;
        }

        v165 += v163 - v166;
      }

      if (__OFSUB__(v164, v163))
      {
        goto LABEL_334;
      }
    }

    else
    {
      if (!v153)
      {
        __s1[0] = v9;
        LOWORD(__s1[1]) = v180;
        *(&__s1[1] + 2) = *(&v180 + 2);
        sub_2685BA80C(v9, v180);
        sub_2685BA80C(v184, v186);
        sub_268612934(__s1, v184, v186, &__s2);
        sub_2685B593C(v184, v186);
        sub_2685B593C(v9, v180);

        sub_2685B593C(v184, v186);

        v161 = v9;
        v162 = v180;
        goto LABEL_284;
      }

      if (v9 >> 32 < v9)
      {
        goto LABEL_333;
      }

      sub_2685BA80C(v9, v180);
      sub_2685BA80C(v184, v186);
      v165 = sub_268689764();
      if (v165)
      {
        v167 = sub_268689794();
        if (__OFSUB__(v9, v167))
        {
          goto LABEL_342;
        }

        v165 += v9 - v167;
      }
    }

    sub_268689784();
    sub_268612934(v165, v184, v186, __s1);
    sub_2685B593C(v184, v186);
    sub_2685B593C(v9, v180);

    sub_2685B593C(v184, v186);

    sub_2685B593C(v9, v180);
    if ((__s1[0] & 1) == 0)
    {
      goto LABEL_298;
    }

LABEL_285:
    v3 = v179 + 1;
    result = 1;
    v2 = v176;
    if (v179 + 1 == v176)
    {
      goto LABEL_299;
    }
  }

  sub_2685BA80C(v9, v10);

  sub_2685BA80C(v184, v186);
  if (v8 == v14)
  {
    goto LABEL_236;
  }

  v21 = 0;
  v22 = (v8 + 48);
  v23 = (v14 + 48);
  v182 = v12;
  v183 = v20;
  v187 = v14;
  v181 = v9;
  v185 = v8;
  while (1)
  {
    if (v21 >= *(v8 + 16))
    {
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
    }

    if (v21 >= *(v14 + 16))
    {
      goto LABEL_302;
    }

    v27 = v12;
    v29 = *(v22 - 2);
    v28 = *(v22 - 1);
    v188 = v23;
    v189 = v22;
    v30 = *v22;
    v31 = *(v23 - 2);
    v32 = *(v23 - 1);
    v33 = *v23;
    v199 = v31;
    v190 = v21;
    v195 = v29;
    if (*v22 == *v23)
    {
      sub_2685BA80C(v29, v28);

      sub_2685BA80C(v31, v32);

      v12 = v27;
      v14 = v187;
      goto LABEL_93;
    }

    v191 = *(v23 - 1);
    v196 = *(v22 - 1);
    swift_beginAccess();
    v34 = v30[2];
    v35 = v30[3];
    swift_beginAccess();
    v36 = v34 == v33[2] && v35 == v33[3];
    if (!v36 && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_295;
    }

    swift_beginAccess();
    v38 = v30[4];
    v37 = v30[5];
    v39 = v30[6];
    swift_beginAccess();
    v40 = v33[4];
    v41 = v33[5];
    v42 = v33[6];
    if (v39)
    {
      if (v42)
      {
        if (v39 == v42)
        {

          sub_2685CEBA8(v38, v37, v39);
          sub_2685CEBA8(v40, v41, v39);
          sub_2685BA80C(v195, v196);

          sub_2685BA80C(v199, v191);
          swift_retain_n();

          sub_2685CEBA8(v38, v37, v39);
          sub_2685CEBA8(v40, v41, v39);
          sub_2685CEBA8(v38, v37, v39);
        }

        else
        {

          sub_2685CEBA8(v38, v37, v39);
          sub_2685CEBA8(v40, v41, v42);
          sub_2685BA80C(v195, v196);

          sub_2685BA80C(v199, v191);
          swift_retain_n();

          sub_2685CEBA8(v38, v37, v39);
          sub_2685CEBA8(v40, v41, v42);
          sub_2685CEBA8(v38, v37, v39);
          if ((sub_26866A280(v42) & 1) == 0)
          {
            goto LABEL_289;
          }
        }

        v43 = v37 >> 62;
        v44 = v41 >> 62;
        if (v37 >> 62 == 3)
        {
          v45 = 0;
          if (!v38 && v37 == 0xC000000000000000 && v41 >> 62 == 3)
          {
            v45 = 0;
            if (!v40 && v41 == 0xC000000000000000)
            {

              sub_2685C31B4(0, 0xC000000000000000, v42);
              sub_2685C31B4(0, 0xC000000000000000, v39);
              v46 = 0;
              v47 = 0xC000000000000000;
LABEL_68:
              sub_2685C31B4(v46, v47, v42);
              sub_2685B593C(v38, v37);

              goto LABEL_69;
            }
          }
        }

        else
        {
          if (v43 <= 1)
          {
            if (v43)
            {
              LODWORD(v45) = HIDWORD(v38) - v38;
              if (__OFSUB__(HIDWORD(v38), v38))
              {
                goto LABEL_313;
              }

              v45 = v45;
              if (v44 <= 1)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v45 = BYTE6(v37);
              if (v44 <= 1)
              {
                goto LABEL_56;
              }
            }

            goto LABEL_49;
          }

          if (v43 != 2)
          {
            v45 = 0;
            if (v44 <= 1)
            {
LABEL_56:
              if (v44)
              {
                LODWORD(v51) = HIDWORD(v40) - v40;
                if (__OFSUB__(HIDWORD(v40), v40))
                {
                  goto LABEL_309;
                }

                v51 = v51;
              }

              else
              {
                v51 = BYTE6(v41);
              }

LABEL_62:
              if (v45 == v51)
              {
                if (v45 >= 1)
                {
                  if (v43 > 1)
                  {
                    if (v43 != 2)
                    {
                      memset(__s1, 0, 14);
                      sub_2685BA80C(v38, v37);
                      sub_2685BA80C(v40, v41);
                      goto LABEL_84;
                    }

                    v173 = *(v38 + 24);
                    v175 = *(v38 + 16);
                    sub_2685BA80C(v38, v37);
                    sub_2685BA80C(v40, v41);
                    v54 = sub_268689764();
                    if (v54)
                    {
                      v55 = v54;
                      v56 = sub_268689794();
                      v57 = v175;
                      if (__OFSUB__(v175, v56))
                      {
                        goto LABEL_331;
                      }

                      v172 = v175 - v56 + v55;
                    }

                    else
                    {
                      v172 = 0;
                      v57 = v175;
                    }

                    if (__OFSUB__(v173, v57))
                    {
                      goto LABEL_318;
                    }

                    sub_268689784();
                    v62 = v172;
                  }

                  else
                  {
                    if (!v43)
                    {
                      __s1[0] = v38;
                      LOWORD(__s1[1]) = v37;
                      BYTE2(__s1[1]) = BYTE2(v37);
                      BYTE3(__s1[1]) = BYTE3(v37);
                      BYTE4(__s1[1]) = BYTE4(v37);
                      BYTE5(__s1[1]) = BYTE5(v37);
                      sub_2685BA80C(v38, v37);
                      sub_2685BA80C(v40, v41);
LABEL_84:
                      sub_268612934(__s1, v40, v41, &__s2);
                      sub_2685B593C(v40, v41);
                      sub_2685B593C(v38, v37);

                      sub_2685C31B4(v40, v41, v42);
                      v61 = __s2;
                      goto LABEL_91;
                    }

                    if (v38 >> 32 < v38)
                    {
                      goto LABEL_317;
                    }

                    sub_2685BA80C(v38, v37);
                    sub_2685BA80C(v40, v41);
                    v58 = sub_268689764();
                    if (v58)
                    {
                      v174 = v58;
                      v59 = sub_268689794();
                      if (__OFSUB__(v38, v59))
                      {
                        goto LABEL_332;
                      }

                      v60 = v38 - v59 + v174;
                    }

                    else
                    {
                      v60 = 0;
                    }

                    sub_268689784();
                    v62 = v60;
                  }

                  sub_268612934(v62, v40, v41, __s1);
                  sub_2685B593C(v40, v41);
                  sub_2685B593C(v38, v37);

                  sub_2685C31B4(v40, v41, v42);
                  v61 = __s1[0];
LABEL_91:
                  sub_2685C31B4(v38, v37, v39);
                  sub_2685C31B4(v40, v41, v42);
                  sub_2685B593C(v38, v37);

                  sub_2685C31B4(v38, v37, v39);
                  v14 = v187;
                  v28 = v196;
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_92;
                }

LABEL_67:

                sub_2685C31B4(v40, v41, v42);
                sub_2685C31B4(v38, v37, v39);
                v46 = v40;
                v47 = v41;
                goto LABEL_68;
              }

LABEL_289:

              sub_2685C31B4(v40, v41, v42);
              sub_2685C31B4(v38, v37, v39);
              sub_2685C31B4(v40, v41, v42);
              sub_2685B593C(v38, v37);

              v168 = v38;
              v169 = v37;
              v170 = v39;
LABEL_293:
              sub_2685C31B4(v168, v169, v170);
              v28 = v196;
LABEL_294:

              sub_2685B593C(v199, v191);

              sub_2685B593C(v195, v28);

              v9 = v181;
LABEL_295:

              goto LABEL_296;
            }

LABEL_49:
            if (v44 != 2)
            {
              if (v45)
              {
                goto LABEL_289;
              }

              goto LABEL_67;
            }

            v49 = *(v40 + 16);
            v48 = *(v40 + 24);
            v50 = __OFSUB__(v48, v49);
            v51 = v48 - v49;
            if (v50)
            {
              goto LABEL_310;
            }

            goto LABEL_62;
          }

          v53 = *(v38 + 16);
          v52 = *(v38 + 24);
          v50 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v50)
          {
            goto LABEL_314;
          }
        }

        if (v44 <= 1)
        {
          goto LABEL_56;
        }

        goto LABEL_49;
      }

      sub_2685BA80C(v195, v196);

      sub_2685BA80C(v199, v191);
      swift_retain_n();

      sub_2685CEBA8(v38, v37, v39);
      sub_2685CEBA8(v40, v41, 0);
      sub_2685CEBA8(v38, v37, v39);
      sub_2685B593C(v38, v37);

LABEL_292:
      sub_2685C31B4(v38, v37, v39);
      v168 = v40;
      v169 = v41;
      v170 = v42;
      goto LABEL_293;
    }

    sub_2685BA80C(v195, v196);

    sub_2685BA80C(v199, v191);
    swift_retain_n();

    sub_2685CEBA8(v38, v37, 0);
    if (v42)
    {
      sub_2685CEBA8(v40, v41, v42);
      goto LABEL_292;
    }

    sub_2685CEBA8(v40, v41, 0);
    v39 = 0;
LABEL_69:
    v14 = v187;
    v28 = v196;
    sub_2685C31B4(v38, v37, v39);
LABEL_92:

    v9 = v181;
    v12 = v182;
    v20 = v183;
    v32 = v191;
    v29 = v195;
LABEL_93:
    v63 = v28 >> 62;
    v64 = v32 >> 62;
    v65 = v32;
    if (v28 >> 62 == 3)
    {
      v66 = 0;
      v67 = v199;
      if (!v29 && v28 == 0xC000000000000000 && v64 >= 3)
      {
        v66 = 0;
        if (!v199 && v65 == 0xC000000000000000)
        {
          sub_2685B593C(0, 0xC000000000000000);

          v24 = 0;
          v25 = 0xC000000000000000;
LABEL_20:
          sub_2685B593C(v24, v25);
          v26 = v190;
LABEL_21:

          v8 = v185;
          goto LABEL_22;
        }
      }

LABEL_109:
      if (v64 <= 1)
      {
        goto LABEL_110;
      }

      goto LABEL_103;
    }

    v67 = v199;
    if (v63 > 1)
    {
      if (v63 == 2)
      {
        v72 = *(v29 + 16);
        v71 = *(v29 + 24);
        v50 = __OFSUB__(v71, v72);
        v66 = v71 - v72;
        if (v50)
        {
          goto LABEL_307;
        }

        goto LABEL_109;
      }

      v66 = 0;
      if (v64 <= 1)
      {
        goto LABEL_110;
      }
    }

    else if (v63)
    {
      LODWORD(v66) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_306;
      }

      v66 = v66;
      if (v64 <= 1)
      {
LABEL_110:
        if (v64)
        {
          LODWORD(v70) = HIDWORD(v67) - v67;
          if (__OFSUB__(HIDWORD(v67), v67))
          {
            goto LABEL_304;
          }

          v70 = v70;
        }

        else
        {
          v70 = BYTE6(v65);
        }

        goto LABEL_114;
      }
    }

    else
    {
      v66 = BYTE6(v28);
      if (v64 <= 1)
      {
        goto LABEL_110;
      }
    }

LABEL_103:
    if (v64 != 2)
    {
      if (v66)
      {
        goto LABEL_288;
      }

LABEL_19:
      sub_2685B593C(v67, v65);

      v24 = v29;
      v25 = v28;
      goto LABEL_20;
    }

    v69 = *(v67 + 16);
    v68 = *(v67 + 24);
    v50 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v50)
    {
      goto LABEL_305;
    }

LABEL_114:
    if (v66 != v70)
    {
LABEL_288:
      sub_2685B593C(v67, v65);

      sub_2685B593C(v29, v28);

LABEL_296:
      v152 = v180;
      goto LABEL_297;
    }

    if (v66 < 1)
    {
      goto LABEL_19;
    }

    if (v63 > 1)
    {
      break;
    }

    if (v63)
    {
      if (v29 > v29 >> 32)
      {
        goto LABEL_308;
      }

      v94 = v65;
      sub_2685BA80C(v29, v28);
      sub_2685BA80C(v199, v94);
      v95 = sub_268689764();
      v197 = v28;
      if (v95)
      {
        v96 = v95;
        v97 = sub_268689794();
        if (__OFSUB__(v29, v97))
        {
          goto LABEL_312;
        }

        v98 = (v29 - v97 + v96);
      }

      else
      {
        v98 = 0;
      }

      v14 = v187;
      sub_268689784();
      if (v64 == 2)
      {
        v194 = v98;
        v137 = *(v199 + 16);
        v138 = *(v199 + 24);
        v139 = sub_268689764();
        if (v139)
        {
          v140 = v139;
          v141 = sub_268689794();
          if (__OFSUB__(v137, v141))
          {
            goto LABEL_338;
          }

          v142 = (v137 - v141 + v140);
        }

        else
        {
          v142 = 0;
        }

        if (__OFSUB__(v138, v137))
        {
          goto LABEL_328;
        }

        v149 = sub_268689784();
        if (v149 >= v138 - v137)
        {
          v150 = v138 - v137;
        }

        else
        {
          v150 = v149;
        }

        result = v194;
        if (!v194)
        {
          goto LABEL_351;
        }

        v20 = v183;
        v26 = v190;
        if (!v142)
        {
          goto LABEL_350;
        }

        if (v194 == v142)
        {
          sub_2685B593C(v199, v94);
          sub_2685B593C(v195, v197);
          sub_2685B593C(v199, v94);

          sub_2685B593C(v195, v197);
          v14 = v187;
          v12 = v182;
          v9 = v181;
          goto LABEL_21;
        }

        v193 = memcmp(v194, v142, v150);
        sub_2685B593C(v199, v94);
        sub_2685B593C(v195, v197);
        sub_2685B593C(v199, v94);

        sub_2685B593C(v195, v197);

        v14 = v187;
        v8 = v185;
        v12 = v182;
        v9 = v181;
        goto LABEL_221;
      }

      if (v64 != 1)
      {
        v20 = v183;
        v26 = v190;
        __s1[0] = v199;
        LOWORD(__s1[1]) = v94;
        BYTE2(__s1[1]) = BYTE2(v94);
        BYTE3(__s1[1]) = BYTE3(v94);
        BYTE4(__s1[1]) = BYTE4(v94);
        BYTE5(__s1[1]) = BYTE5(v94);
        if (!v98)
        {
          goto LABEL_346;
        }

        v193 = memcmp(v98, __s1, BYTE6(v94));
        sub_2685B593C(v199, v94);
        sub_2685B593C(v195, v197);
        sub_2685B593C(v199, v94);

        sub_2685B593C(v195, v197);

        v8 = v185;
        v9 = v181;
        goto LABEL_221;
      }

      if (v199 >> 32 < v199)
      {
        goto LABEL_327;
      }

      v116 = sub_268689764();
      if (v116)
      {
        v117 = v116;
        v118 = sub_268689794();
        if (__OFSUB__(v199, v118))
        {
          goto LABEL_340;
        }

        v119 = (v199 - v118 + v117);
      }

      else
      {
        v119 = 0;
      }

      v26 = v190;
      result = sub_268689784();
      if (result >= (v199 >> 32) - v199)
      {
        v151 = (v199 >> 32) - v199;
      }

      else
      {
        v151 = result;
      }

      if (!v98)
      {
        goto LABEL_353;
      }

      v20 = v183;
      if (!v119)
      {
        goto LABEL_352;
      }

      if (v98 == v119)
      {
        v144 = v199;
        v145 = v199;
        goto LABEL_231;
      }

      v146 = memcmp(v98, v119, v151);
      v144 = v199;
      v147 = v199;
      goto LABEL_233;
    }

    __s1[0] = v29;
    LOWORD(__s1[1]) = v28;
    BYTE2(__s1[1]) = BYTE2(v28);
    BYTE3(__s1[1]) = BYTE3(v28);
    BYTE4(__s1[1]) = BYTE4(v28);
    BYTE5(__s1[1]) = BYTE5(v28);
    if (!v64)
    {
      goto LABEL_152;
    }

    if (v64 == 1)
    {
      v73 = v67;
      v74 = v67;
      v75 = (v67 >> 32) - v67;
      if (v67 >> 32 < v67)
      {
        goto LABEL_319;
      }

      v76 = v65;
      v77 = v29;
      v78 = v29;
      v79 = v28;
      sub_2685BA80C(v78, v28);
      sub_2685BA80C(v73, v76);
      v80 = sub_268689764();
      if (!v80)
      {
        goto LABEL_344;
      }

      v81 = v80;
      v82 = sub_268689794();
      if (__OFSUB__(v74, v82))
      {
        goto LABEL_325;
      }

      v83 = (v74 - v82 + v81);
      result = sub_268689784();
      v14 = v187;
      if (!v83)
      {
        goto LABEL_349;
      }

      goto LABEL_175;
    }

    v120 = *(v67 + 16);
    v121 = *(v67 + 24);
    v198 = v28;
    v122 = v67;
    v102 = v65;
    sub_2685BA80C(v29, v28);
    sub_2685BA80C(v122, v102);
    v103 = sub_268689764();
    if (v103)
    {
      v123 = sub_268689794();
      if (__OFSUB__(v120, v123))
      {
        goto LABEL_335;
      }

      v103 += v120 - v123;
    }

    v50 = __OFSUB__(v121, v120);
    v105 = v121 - v120;
    if (v50)
    {
      goto LABEL_321;
    }

    v106 = v9;
    v107 = v12;
    result = sub_268689784();
    v14 = v187;
    if (!v103)
    {
      goto LABEL_356;
    }

LABEL_166:
    if (result >= v105)
    {
      v124 = v105;
    }

    else
    {
      v124 = result;
    }

    v125 = memcmp(__s1, v103, v124);
    sub_2685B593C(v199, v102);
    sub_2685B593C(v195, v198);
    sub_2685B593C(v199, v102);

    sub_2685B593C(v195, v198);

    v20 = v183;
    v26 = v190;
    v8 = v185;
    v12 = v107;
    v9 = v106;
    if (v125)
    {
      goto LABEL_295;
    }

LABEL_22:
    v21 = v26 + 1;
    v22 = v189 + 3;
    v23 = v188 + 3;
    if (v20 == v21)
    {
      goto LABEL_236;
    }
  }

  if (v63 != 2)
  {
    memset(__s1, 0, 14);
    if (!v64)
    {
LABEL_152:
      __s2 = v67;
      v202 = v65;
      v203 = BYTE2(v65);
      v204 = BYTE3(v65);
      v205 = BYTE4(v65);
      v206 = BYTE5(v65);
      v108 = v14;
      v109 = v9;
      v110 = v12;
      v111 = v67;
      v112 = v65;
      v113 = v28;
      v114 = memcmp(__s1, &__s2, BYTE6(v65));
      v115 = v111;
      v12 = v110;
      v9 = v109;
      v14 = v108;
      sub_2685B593C(v115, v112);

      sub_2685B593C(v195, v113);

      v26 = v190;
      v8 = v185;
      if (v114)
      {
        goto LABEL_295;
      }

      goto LABEL_22;
    }

    if (v64 != 2)
    {
      v75 = (v199 >> 32) - v199;
      if (v199 >> 32 < v199)
      {
        goto LABEL_320;
      }

      v76 = v65;
      v77 = v29;
      v126 = v29;
      v79 = v28;
      sub_2685BA80C(v126, v28);
      sub_2685BA80C(v199, v76);
      v127 = sub_268689764();
      if (!v127)
      {
        goto LABEL_347;
      }

      v128 = v127;
      v129 = sub_268689794();
      if (__OFSUB__(v199, v129))
      {
        goto LABEL_324;
      }

      v83 = (v199 - v129 + v128);
      result = sub_268689784();
      v14 = v187;
      if (!v83)
      {
        goto LABEL_348;
      }

LABEL_175:
      if (result >= v75)
      {
        v130 = v75;
      }

      else
      {
        v130 = result;
      }

      v193 = memcmp(__s1, v83, v130);
      sub_2685B593C(v199, v76);
      sub_2685B593C(v77, v79);
      sub_2685B593C(v199, v76);

      sub_2685B593C(v77, v79);

      v12 = v182;
      v20 = v183;
      v26 = v190;
      v8 = v185;
LABEL_221:
      if (v193)
      {
        goto LABEL_295;
      }

      goto LABEL_22;
    }

    v99 = *(v67 + 16);
    v100 = *(v67 + 24);
    v198 = v28;
    v101 = v67;
    v102 = v65;
    sub_2685BA80C(v29, v28);
    sub_2685BA80C(v101, v102);
    v103 = sub_268689764();
    if (v103)
    {
      v104 = sub_268689794();
      if (__OFSUB__(v99, v104))
      {
        goto LABEL_336;
      }

      v103 += v99 - v104;
    }

    v50 = __OFSUB__(v100, v99);
    v105 = v100 - v99;
    if (v50)
    {
      goto LABEL_323;
    }

    v106 = v9;
    v107 = v12;
    result = sub_268689784();
    v14 = v187;
    if (!v103)
    {
      goto LABEL_345;
    }

    goto LABEL_166;
  }

  v84 = *(v29 + 16);
  v85 = v65;
  sub_2685BA80C(v29, v28);
  v192 = v85;
  sub_2685BA80C(v67, v85);
  v86 = sub_268689764();
  v87 = v28;
  v88 = v86;
  v197 = v87;
  if (v86)
  {
    v89 = sub_268689794();
    if (__OFSUB__(v84, v89))
    {
      goto LABEL_311;
    }

    v88 += v84 - v89;
  }

  sub_268689784();
  if (v64 == 2)
  {
    v131 = *(v67 + 16);
    v132 = *(v67 + 24);
    v133 = sub_268689764();
    if (v133)
    {
      v134 = v133;
      v135 = sub_268689794();
      if (__OFSUB__(v131, v135))
      {
        goto LABEL_337;
      }

      v136 = (v131 - v135 + v134);
    }

    else
    {
      v136 = 0;
    }

    if (__OFSUB__(v132, v131))
    {
      goto LABEL_326;
    }

    result = sub_268689784();
    if (result >= v132 - v131)
    {
      v143 = v132 - v131;
    }

    else
    {
      v143 = result;
    }

    if (!v88)
    {
      goto LABEL_355;
    }

    v20 = v183;
    v26 = v190;
    v144 = v199;
    if (!v136)
    {
      goto LABEL_354;
    }

    if (v88 == v136)
    {
      v145 = v199;
      goto LABEL_208;
    }

    v146 = memcmp(v88, v136, v143);
    v147 = v199;
    goto LABEL_210;
  }

  if (v64 == 1)
  {
    if (v67 >> 32 < v67)
    {
      goto LABEL_322;
    }

    v90 = sub_268689764();
    if (v90)
    {
      v91 = v90;
      v92 = sub_268689794();
      if (__OFSUB__(v67, v92))
      {
        goto LABEL_339;
      }

      v93 = (v67 - v92 + v91);
    }

    else
    {
      v93 = 0;
    }

    v26 = v190;
    result = sub_268689784();
    if (result >= (v67 >> 32) - v67)
    {
      v148 = (v67 >> 32) - v67;
    }

    else
    {
      v148 = result;
    }

    if (!v88)
    {
      goto LABEL_358;
    }

    v20 = v183;
    if (!v93)
    {
      goto LABEL_357;
    }

    if (v88 == v93)
    {
      v145 = v199;
      v144 = v199;
LABEL_208:
      v94 = v192;
LABEL_231:
      sub_2685B593C(v145, v94);
      sub_2685B593C(v195, v197);
      sub_2685B593C(v144, v94);

      sub_2685B593C(v195, v197);
      v14 = v187;
      v12 = v182;
      goto LABEL_21;
    }

    v146 = memcmp(v88, v93, v148);
    v147 = v199;
    v144 = v199;
LABEL_210:
    v94 = v192;
LABEL_233:
    sub_2685B593C(v147, v94);
    sub_2685B593C(v195, v197);
    sub_2685B593C(v144, v94);

    sub_2685B593C(v195, v197);

    v14 = v187;
    v8 = v185;
    v12 = v182;
    if (v146)
    {
      goto LABEL_295;
    }

    goto LABEL_22;
  }

  v14 = v187;
  v20 = v183;
  v26 = v190;
  __s1[0] = v67;
  LODWORD(__s1[1]) = v192;
  WORD2(__s1[1]) = WORD2(v192);
  if (v88)
  {
    v200 = memcmp(v88, __s1, BYTE6(v192));
    sub_2685B593C(v67, v192);
    sub_2685B593C(v195, v197);
    sub_2685B593C(v67, v192);

    sub_2685B593C(v195, v197);

    v8 = v185;
    v9 = v181;
    if (v200)
    {
      goto LABEL_295;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_344:
  sub_268689784();
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  result = sub_268689784();
LABEL_348:
  __break(1u);
LABEL_349:
  __break(1u);
LABEL_350:
  __break(1u);
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
  return result;
}

uint64_t sub_2686112F4(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 32);
      v5 = (a2 + 32);
      for (i = v2 - 1; ; --i)
      {
        v7 = v4[4];
        v8 = v4[5];
        v9 = v4[2];
        *&v50[16] = v4[3];
        v51 = v7;
        *v52 = v8;
        *&v52[16] = *(v4 + 12);
        v10 = v4[1];
        v48 = *v4;
        v49 = v10;
        *v50 = v9;
        v11 = v5[1];
        v53 = *v5;
        v54 = v11;
        v12 = v5[2];
        v13 = v5[3];
        v14 = v5[4];
        v15 = v5[5];
        *&v57[16] = *(v5 + 12);
        v56 = v14;
        *v57 = v15;
        *v55 = v12;
        *&v55[16] = v13;
        if (v48 != v53 && (sub_268689E14() & 1) == 0 || v49 != v54 && (sub_268689E14() & 1) == 0 || v50[0] != v55[0] || *&v50[8] != *&v55[8] && (sub_268689E14() & 1) == 0 || v50[24] != v55[24])
        {
          goto LABEL_74;
        }

        v16 = v51;
        v17 = v56;
        sub_268618E10(&v48, v47);
        sub_268618E10(&v53, v47);
        if ((sub_26860E120(v16, v17, sub_2685CD9AC) & 1) == 0)
        {
          goto LABEL_73;
        }

        v18 = *(&v51 + 1);
        if (v52[0])
        {
          v18 = *(&v51 + 1) != 0;
        }

        if (v57[0])
        {
          if (*(&v56 + 1))
          {
            if (v18 != 1)
            {
              goto LABEL_73;
            }
          }

          else if (v18)
          {
            goto LABEL_73;
          }
        }

        else if (v18 != *(&v56 + 1))
        {
          goto LABEL_73;
        }

        v20 = *&v52[8];
        v19 = *&v52[16];
        v22 = *&v57[8];
        v21 = *&v57[16];
        v23 = *&v52[16] >> 62;
        v24 = *&v57[16] >> 62;
        if (*&v52[16] >> 62 == 3)
        {
          break;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v31 = *(*&v52[8] + 16);
            v30 = *(*&v52[8] + 24);
            v28 = __OFSUB__(v30, v31);
            v25 = v30 - v31;
            if (v28)
            {
              goto LABEL_77;
            }

            goto LABEL_37;
          }

          v25 = 0;
          if (v24 <= 1)
          {
            goto LABEL_38;
          }
        }

        else if (v23)
        {
          LODWORD(v25) = *&v52[12] - *&v52[8];
          if (__OFSUB__(*&v52[12], *&v52[8]))
          {
            goto LABEL_78;
          }

          v25 = v25;
          if (v24 <= 1)
          {
LABEL_38:
            if (v24)
            {
              LODWORD(v29) = *&v57[12] - *&v57[8];
              if (__OFSUB__(*&v57[12], *&v57[8]))
              {
                goto LABEL_76;
              }

              v29 = v29;
            }

            else
            {
              v29 = v57[22];
            }

            goto LABEL_44;
          }
        }

        else
        {
          v25 = v52[22];
          if (v24 <= 1)
          {
            goto LABEL_38;
          }
        }

LABEL_31:
        if (v24 != 2)
        {
          if (v25)
          {
            goto LABEL_73;
          }

LABEL_49:
          sub_268618E6C(&v53);
          sub_268618E6C(&v48);
          goto LABEL_70;
        }

        v27 = *(*&v57[8] + 16);
        v26 = *(*&v57[8] + 24);
        v28 = __OFSUB__(v26, v27);
        v29 = v26 - v27;
        if (v28)
        {
          __break(1u);
LABEL_76:
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
        }

LABEL_44:
        if (v25 != v29)
        {
LABEL_73:
          sub_268618E6C(&v53);
          sub_268618E6C(&v48);
          goto LABEL_74;
        }

        if (v25 < 1)
        {
          goto LABEL_49;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v44 = v3;
            v45 = i;
            v32 = *(*&v52[8] + 16);
            v43 = *(*&v52[8] + 24);
            sub_2685BA80C(*&v57[8], *&v57[16]);
            sub_2685BA80C(v22, v21);
            sub_2685BA80C(v20, v19);
            v33 = sub_268689764();
            if (v33)
            {
              v34 = sub_268689794();
              if (__OFSUB__(v32, v34))
              {
                goto LABEL_81;
              }

              v33 += v32 - v34;
            }

            if (__OFSUB__(v43, v32))
            {
              goto LABEL_80;
            }

            sub_268689784();
            v35 = v33;
            v36 = v22;
            v37 = v21;
            v3 = v44;
            goto LABEL_66;
          }

          *&v47[6] = 0;
          *v47 = 0;
          sub_2685BA80C(*&v57[8], *&v57[16]);
          sub_2685BA80C(v22, v21);
        }

        else
        {
          if (v23)
          {
            v45 = i;
            if (*&v52[8] >> 32 < *&v52[8])
            {
              goto LABEL_79;
            }

            sub_2685BA80C(*&v57[8], *&v57[16]);
            sub_2685BA80C(v22, v21);
            sub_2685BA80C(v20, v19);
            v38 = sub_268689764();
            if (v38)
            {
              v39 = sub_268689794();
              if (__OFSUB__(v20, v39))
              {
                goto LABEL_82;
              }

              v38 += v20 - v39;
            }

            sub_268689784();
            v35 = v38;
            v36 = v22;
            v37 = v21;
LABEL_66:
            sub_268612934(v35, v36, v37, v47);
            sub_2685B593C(v22, v21);
            sub_2685B593C(v22, v21);
            sub_2685B593C(v20, v19);
            v40 = v47[0];
            i = v45;
            goto LABEL_69;
          }

          *v47 = *&v52[8];
          *&v47[8] = *&v52[16];
          v47[12] = v52[20];
          v47[13] = v52[21];
          sub_2685BA80C(*&v57[8], *&v57[16]);
          sub_2685BA80C(v22, v21);
        }

        sub_268612934(v47, v22, v21, &v46);
        sub_2685B593C(v22, v21);
        sub_2685B593C(v22, v21);
        sub_2685B593C(v20, v19);
        v40 = v46;
LABEL_69:
        sub_268618E6C(&v53);
        sub_268618E6C(&v48);
        if ((v40 & 1) == 0)
        {
          goto LABEL_74;
        }

LABEL_70:
        if (!i)
        {
          goto LABEL_72;
        }

        v5 = (v5 + 104);
        v4 = (v4 + 104);
      }

      v25 = 0;
      if (*&v52[8] == __PAIR128__(0xC000000000000000, 0) && *&v57[16] >> 62 == 3)
      {
        v25 = 0;
        if (*&v57[8] == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_49;
        }
      }

LABEL_37:
      if (v24 <= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_72:
    result = 1;
  }

  else
  {
LABEL_74:
    result = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2686118C4(uint64_t a1, uint64_t a2)
{
  v39[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v34 = 0;
      v3 = (a1 + 72);
      v4 = (a2 + 40);
      while (1)
      {
        v5 = *(v3 - 3);
        v6 = *(v3 - 2);
        v8 = *(v3 - 1);
        v7 = *v3;
        v9 = v4[1];
        v37 = v4[2];
        v10 = v4[3];
        v11 = v4[4];
        if (*(v3 - 5) != *(v4 - 1) || *(v3 - 4) != *v4)
        {
          v10 = v4[3];
          if ((sub_268689E14() & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        if ((v5 != v9 || v6 != v37) && (sub_268689E14() & 1) == 0)
        {
          goto LABEL_59;
        }

        v12 = v7 >> 62;
        v13 = v11 >> 62;
        if (v7 >> 62 == 3)
        {
          break;
        }

        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v20 = *(v8 + 16);
            v19 = *(v8 + 24);
            v17 = __OFSUB__(v19, v20);
            v14 = v19 - v20;
            if (v17)
            {
              goto LABEL_65;
            }

            goto LABEL_29;
          }

          v14 = 0;
          if (v13 <= 1)
          {
            goto LABEL_30;
          }
        }

        else if (v12)
        {
          LODWORD(v14) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_64;
          }

          v14 = v14;
          if (v13 <= 1)
          {
LABEL_30:
            if (v13)
            {
              LODWORD(v18) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
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
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v11);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v14 = BYTE6(v7);
          if (v13 <= 1)
          {
            goto LABEL_30;
          }
        }

LABEL_23:
        if (v13 != 2)
        {
          if (v14)
          {
            goto LABEL_59;
          }

          goto LABEL_6;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_63;
        }

LABEL_34:
        if (v14 != v18)
        {
          goto LABEL_59;
        }

        if (v14 < 1)
        {
          goto LABEL_6;
        }

        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v22 = v10;
            v23 = *(v8 + 16);
            v35 = *(v8 + 24);

            sub_2685BA80C(v8, v7);

            sub_2685BA80C(v22, v11);
            sub_2685BA80C(v8, v7);
            sub_2685BA80C(v22, v11);
            v24 = sub_268689764();
            if (v24)
            {
              v25 = sub_268689794();
              if (__OFSUB__(v23, v25))
              {
                goto LABEL_68;
              }

              v24 += v23 - v25;
            }

            if (__OFSUB__(v35, v23))
            {
              goto LABEL_67;
            }

            sub_268689784();
            v26 = v24;
            v27 = v22;
            v28 = v11;
            v29 = v34;
            goto LABEL_55;
          }

          memset(v39, 0, 14);

          sub_2685BA80C(v8, v7);

          sub_2685BA80C(v10, v11);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v10, v11);
          sub_268612934(v39, v10, v11, &v38);
          sub_2685B593C(v10, v11);
          sub_2685B593C(v8, v7);

          v21 = v10;
        }

        else
        {
          if (v12)
          {
            v36 = v10;
            if (v8 >> 32 < v8)
            {
              goto LABEL_66;
            }

            sub_2685BA80C(v8, v7);

            sub_2685BA80C(v10, v11);
            sub_2685BA80C(v8, v7);
            sub_2685BA80C(v10, v11);
            v30 = sub_268689764();
            if (v30)
            {
              v31 = sub_268689794();
              if (__OFSUB__(v8, v31))
              {
                goto LABEL_69;
              }

              v30 += v8 - v31;
            }

            v29 = v34;
            v22 = v36;
            sub_268689784();
            v26 = v30;
            v27 = v36;
            v28 = v11;
LABEL_55:
            sub_268612934(v26, v27, v28, v39);
            v34 = v29;
            sub_2685B593C(v22, v11);
            sub_2685B593C(v8, v7);

            sub_2685B593C(v22, v11);

            sub_2685B593C(v8, v7);
            if ((v39[0] & 1) == 0)
            {
              goto LABEL_59;
            }

            goto LABEL_6;
          }

          v39[0] = v8;
          LOWORD(v39[1]) = v7;
          BYTE2(v39[1]) = BYTE2(v7);
          BYTE3(v39[1]) = BYTE3(v7);
          BYTE4(v39[1]) = BYTE4(v7);
          BYTE5(v39[1]) = BYTE5(v7);

          sub_2685BA80C(v8, v7);

          sub_2685BA80C(v10, v11);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v10, v11);
          sub_268612934(v39, v10, v11, &v38);
          sub_2685B593C(v10, v11);
          sub_2685B593C(v8, v7);

          v21 = v10;
        }

        sub_2685B593C(v21, v11);

        sub_2685B593C(v8, v7);
        if (!v38)
        {
          goto LABEL_59;
        }

LABEL_6:
        v3 += 6;
        v4 += 6;
        if (!--v2)
        {
          goto LABEL_60;
        }
      }

      v14 = 0;
      if (!v8 && v7 == 0xC000000000000000 && v11 >> 62 == 3)
      {
        v14 = 0;
        if (!v10 && v11 == 0xC000000000000000)
        {
          goto LABEL_6;
        }
      }

LABEL_29:
      if (v13 <= 1)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

LABEL_60:
    result = 1;
  }

  else
  {
LABEL_59:
    result = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268611F48(uint64_t a1, uint64_t a2)
{
  v35[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = 0;
      v31 = a1;
      v32 = a2;
      while (1)
      {
        v6 = *(a1 + v3 + 32);
        v5 = *(a1 + v3 + 40);
        v8 = *(a2 + v3 + 32);
        v7 = *(a2 + v3 + 40);
        if (*(a1 + v3 + 52))
        {
          if (!*(a2 + v3 + 52))
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (*(a1 + v3 + 48) == *(a2 + v3 + 48))
          {
            v9 = *(a2 + v3 + 52);
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            goto LABEL_68;
          }
        }

        if (*(a1 + v3 + 60))
        {
          if (!*(a2 + v3 + 60))
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (*(a1 + v3 + 56) == *(a2 + v3 + 56))
          {
            v10 = *(a2 + v3 + 60);
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            goto LABEL_68;
          }
        }

        v11 = v5 >> 62;
        v12 = v7 >> 62;
        if (v5 >> 62 == 3)
        {
          break;
        }

        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v19 = *(v6 + 16);
            v18 = *(v6 + 24);
            v16 = __OFSUB__(v18, v19);
            v13 = v18 - v19;
            if (v16)
            {
              goto LABEL_74;
            }

            goto LABEL_37;
          }

          v13 = 0;
          if (v12 <= 1)
          {
            goto LABEL_38;
          }
        }

        else if (v11)
        {
          LODWORD(v13) = HIDWORD(v6) - v6;
          if (__OFSUB__(HIDWORD(v6), v6))
          {
            goto LABEL_73;
          }

          v13 = v13;
          if (v12 <= 1)
          {
LABEL_38:
            if (v12)
            {
              LODWORD(v17) = HIDWORD(v8) - v8;
              if (__OFSUB__(HIDWORD(v8), v8))
              {
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
              }

              v17 = v17;
            }

            else
            {
              v17 = BYTE6(v7);
            }

            goto LABEL_42;
          }
        }

        else
        {
          v13 = BYTE6(v5);
          if (v12 <= 1)
          {
            goto LABEL_38;
          }
        }

LABEL_31:
        if (v12 != 2)
        {
          if (v13)
          {
            goto LABEL_68;
          }

          goto LABEL_6;
        }

        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        v16 = __OFSUB__(v14, v15);
        v17 = v14 - v15;
        if (v16)
        {
          goto LABEL_72;
        }

LABEL_42:
        if (v13 != v17)
        {
          goto LABEL_68;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v11 <= 1)
        {
          if (!v11)
          {
            v20 = a1;
            v21 = a2;
            v35[0] = *(a1 + v3 + 32);
            LOWORD(v35[1]) = v5;
            BYTE2(v35[1]) = BYTE2(v5);
            BYTE3(v35[1]) = BYTE3(v5);
            BYTE4(v35[1]) = BYTE4(v5);
            BYTE5(v35[1]) = BYTE5(v5);
            sub_2685BA80C(v6, v5);
            sub_2685BA80C(v8, v7);
            sub_268612934(v35, v8, v7, &v34);
            sub_2685B593C(v8, v7);
            sub_2685B593C(v6, v5);
            if (!v34)
            {
              goto LABEL_68;
            }

            a2 = v21;
            a1 = v20;
            goto LABEL_6;
          }

          v33 = v4;
          if (v6 >> 32 < v6)
          {
            goto LABEL_75;
          }

          sub_2685BA80C(v6, v5);
          sub_2685BA80C(v8, v7);
          v23 = sub_268689764();
          if (v23)
          {
            v25 = sub_268689794();
            if (__OFSUB__(v6, v25))
            {
              goto LABEL_78;
            }

            v23 += v6 - v25;
          }

          goto LABEL_64;
        }

        if (v11 == 2)
        {
          v22 = *(v6 + 16);
          v30 = *(v6 + 24);
          sub_2685BA80C(v6, v5);
          sub_2685BA80C(v8, v7);
          v23 = sub_268689764();
          v33 = v4;
          if (v23)
          {
            v24 = sub_268689794();
            if (__OFSUB__(v22, v24))
            {
              goto LABEL_77;
            }

            v23 += v22 - v24;
          }

          if (__OFSUB__(v30, v22))
          {
            goto LABEL_76;
          }

LABEL_64:
          sub_268689784();
          v4 = v33;
          sub_268612934(v23, v8, v7, v35);
          sub_2685B593C(v8, v7);
          sub_2685B593C(v6, v5);
          if ((v35[0] & 1) == 0)
          {
            goto LABEL_68;
          }

          a1 = v31;
          a2 = v32;
          goto LABEL_6;
        }

        v26 = a1;
        v27 = a2;
        memset(v35, 0, 14);
        sub_2685BA80C(v6, v5);
        sub_2685BA80C(v8, v7);
        sub_268612934(v35, v8, v7, &v34);
        sub_2685B593C(v8, v7);
        sub_2685B593C(v6, v5);
        if (!v34)
        {
          goto LABEL_68;
        }

        a2 = v27;
        a1 = v26;
LABEL_6:
        v3 += 32;
        if (!--v2)
        {
          goto LABEL_69;
        }
      }

      v13 = 0;
      if (!v6 && v5 == 0xC000000000000000 && v7 >> 62 == 3)
      {
        v13 = 0;
        if (!v8 && v7 == 0xC000000000000000)
        {
          goto LABEL_6;
        }
      }

LABEL_37:
      if (v12 <= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_69:
    result = 1;
  }

  else
  {
LABEL_68:
    result = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2686123CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v42[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (v3 && a1 != a2)
    {
      v39 = 0;
      v4 = (a1 + 48);
      v5 = (a2 + 48);
      while (1)
      {
        v8 = *(v4 - 2);
        v7 = *(v4 - 1);
        v9 = *v4;
        v11 = *(v5 - 2);
        v10 = *(v5 - 1);
        v12 = *v5;
        sub_2685BA80C(v8, v7);

        sub_2685BA80C(v11, v10);

        if (v9 != v12)
        {

          v13 = a3(v9, v12);

          if ((v13 & 1) == 0)
          {
LABEL_62:
            sub_2685B593C(v11, v10);

            sub_2685B593C(v8, v7);

            goto LABEL_63;
          }
        }

        v14 = v7 >> 62;
        v15 = v10 >> 62;
        if (v7 >> 62 == 3)
        {
          break;
        }

        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v24 = *(v8 + 16);
            v23 = *(v8 + 24);
            v21 = __OFSUB__(v23, v24);
            v16 = v23 - v24;
            if (v21)
            {
              goto LABEL_67;
            }

            goto LABEL_27;
          }

          v16 = 0;
          if (v15 <= 1)
          {
            goto LABEL_28;
          }
        }

        else if (v14)
        {
          LODWORD(v16) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_68;
          }

          v16 = v16;
          if (v15 <= 1)
          {
LABEL_28:
            if (v15)
            {
              LODWORD(v22) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
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
              }

              v22 = v22;
            }

            else
            {
              v22 = BYTE6(v10);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v16 = BYTE6(v7);
          if (v15 <= 1)
          {
            goto LABEL_28;
          }
        }

LABEL_21:
        if (v15 != 2)
        {
          if (v16)
          {
            goto LABEL_62;
          }

LABEL_39:
          sub_2685B593C(v11, v10);

          v17 = v8;
          v18 = v7;
LABEL_40:
          sub_2685B593C(v17, v18);

          goto LABEL_8;
        }

        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if (v21)
        {
          goto LABEL_66;
        }

LABEL_34:
        if (v16 != v22)
        {
          goto LABEL_62;
        }

        if (v16 < 1)
        {
          goto LABEL_39;
        }

        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v36 = *(v8 + 24);
            v38 = *(v8 + 16);
            sub_2685BA80C(v8, v7);
            sub_2685BA80C(v11, v10);
            v25 = sub_268689764();
            if (v25)
            {
              v26 = v25;
              v27 = sub_268689794();
              v28 = v38;
              if (__OFSUB__(v38, v27))
              {
                goto LABEL_71;
              }

              v35 = v38 - v27 + v26;
            }

            else
            {
              v35 = 0;
              v28 = v38;
            }

            if (__OFSUB__(v36, v28))
            {
              goto LABEL_70;
            }

            sub_268689784();
            v32 = v35;
            goto LABEL_59;
          }

          memset(v42, 0, 14);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v11, v10);
        }

        else
        {
          if (v14)
          {
            if (v8 >> 32 < v8)
            {
              goto LABEL_69;
            }

            sub_2685BA80C(v8, v7);
            sub_2685BA80C(v11, v10);
            v29 = sub_268689764();
            if (v29)
            {
              v37 = v29;
              v30 = sub_268689794();
              if (__OFSUB__(v8, v30))
              {
                goto LABEL_72;
              }

              v31 = v8 - v30 + v37;
            }

            else
            {
              v31 = 0;
            }

            sub_268689784();
            v32 = v31;
LABEL_59:
            v6 = v39;
            sub_268612934(v32, v11, v10, v42);
            sub_2685B593C(v11, v10);
            sub_2685B593C(v8, v7);
            sub_2685B593C(v11, v10);

            sub_2685B593C(v8, v7);

            if ((v42[0] & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_7;
          }

          v42[0] = v8;
          LOWORD(v42[1]) = v7;
          BYTE2(v42[1]) = BYTE2(v7);
          BYTE3(v42[1]) = BYTE3(v7);
          BYTE4(v42[1]) = BYTE4(v7);
          BYTE5(v42[1]) = BYTE5(v7);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v11, v10);
        }

        v6 = v39;
        sub_268612934(v42, v11, v10, &v41);
        sub_2685B593C(v11, v10);
        sub_2685B593C(v8, v7);
        sub_2685B593C(v11, v10);

        sub_2685B593C(v8, v7);

        if (!v41)
        {
          goto LABEL_63;
        }

LABEL_7:
        v39 = v6;
LABEL_8:
        v4 += 3;
        v5 += 3;
        if (!--v3)
        {
          goto LABEL_61;
        }
      }

      v16 = 0;
      if (!v8 && v7 == 0xC000000000000000 && v10 >> 62 == 3)
      {
        v16 = 0;
        if (!v11 && v10 == 0xC000000000000000)
        {
          sub_2685B593C(0, 0xC000000000000000);

          v17 = 0;
          v18 = 0xC000000000000000;
          goto LABEL_40;
        }
      }

LABEL_27:
      if (v15 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

LABEL_61:
    result = 1;
  }

  else
  {
LABEL_63:
    result = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268612934@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_268689764();
    if (v10)
    {
      v11 = sub_268689794();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_268689784();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_268689764();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_268689794();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_268689784();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_268612B64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_268613124(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2685B593C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_268612934(v14, a3, a4, &v13);
  v10 = v4;
  sub_2685B593C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_268612CF4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a2 + 56) + 24 * v11);
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];

    sub_2685BA80C(v17, v16);

    if (!v13)
    {
LABEL_52:

      return MEMORY[0x26D61D8F0](v8);
    }

    v46 = v8;
    v19 = *(a1 + 48);
    v59 = *(a1 + 32);
    v60 = v19;
    v61 = *(a1 + 64);
    v20 = *(a1 + 16);
    v57 = *a1;
    v58 = v20;
    sub_268689A24();

    v54 = v59;
    v55 = v60;
    v56 = v61;
    v52 = v57;
    v53 = v58;
    v21 = *(v18 + 32);
    v22 = *(v18 + 40);
    if ((~v21 & 0x3000000000000000) != 0 || v22 != 255)
    {
      v23 = (v21 >> 60) & 3 | (4 * (v22 & 1));
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v29 = *(v18 + 16);
          MEMORY[0x26D61D8F0](4);
          sub_268689EB4();
          goto LABEL_45;
        }

        v40 = *(v18 + 24);
        v43 = *(v18 + 16);
        if (v23 != 4)
        {
          MEMORY[0x26D61D8F0](6);
          sub_2685D10C8(v43, v40, v21, v22 & 1);
          sub_2685DCAD0(&v52, v43, v40, v21 & 0xCFFFFFFFFFFFFFFFLL);
          v30 = v43;
          v31 = v40;
          goto LABEL_33;
        }

        MEMORY[0x26D61D8F0](5);
        v49 = v54;
        v50 = v55;
        v51 = v56;
        v47 = v52;
        v48 = v53;
        v25 = v43;
        if (*(v43 + 16))
        {
          MEMORY[0x26D61D8F0](1);
          v25 = v43;
          sub_2685D10C8(v43, v40, v21, v22 & 1);
          sub_268612CF4(&v47, v43);
        }

        else
        {
          sub_2685D10C8(v43, v40, v21, v22 & 1);
        }

        v32 = v21 >> 62;
        if ((v21 >> 62) > 1)
        {
          v33 = v40;
          if (v32 != 2)
          {
            goto LABEL_44;
          }

          v34 = *(v40 + 16);
          v35 = *(v40 + 24);
        }

        else
        {
          v33 = v40;
          if (!v32)
          {
            if ((v21 & 0xFF000000000000) == 0)
            {
              goto LABEL_44;
            }

LABEL_43:
            sub_268689844();
            v33 = v40;
LABEL_44:
            sub_2685D1170(v25, v33, v21, v22);
            v54 = v49;
            v55 = v50;
            v56 = v51;
            v52 = v47;
            v53 = v48;
            goto LABEL_45;
          }

          v34 = v40;
          v35 = v40 >> 32;
        }

        if (v34 != v35)
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      if (v23)
      {
        v42 = *(v18 + 16);
        if (v23 != 1)
        {
          v41 = *(v18 + 24);
          MEMORY[0x26D61D8F0](3);
          sub_2685D10C8(v42, v41, v21, v22 & 1);
          sub_268689A24();
          v30 = v42;
          v31 = v41;
LABEL_33:
          sub_2685D1170(v30, v31, v21, v22);
          goto LABEL_45;
        }

        MEMORY[0x26D61D8F0](2);
        if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v42;
        }

        else
        {
          v24 = 0;
        }

        MEMORY[0x26D61D920](v24);
      }

      else
      {
        v26 = *(v18 + 16);
        v27 = *(v18 + 24);
        MEMORY[0x26D61D8F0](1);
        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        MEMORY[0x26D61D8F0](v28);
      }
    }

LABEL_45:
    v36 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      v37 = v46;
      if (v36 != 2)
      {
        goto LABEL_6;
      }

      v38 = *(v17 + 16);
      v39 = *(v17 + 24);
    }

    else
    {
      v37 = v46;
      if (!v36)
      {
        if ((v16 & 0xFF000000000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_5:
        sub_268689844();
        goto LABEL_6;
      }

      v38 = v17;
      v39 = v17 >> 32;
    }

    if (v38 != v39)
    {
      goto LABEL_5;
    }

LABEL_6:
    v5 &= v5 - 1;
    sub_2685B593C(v17, v16);

    v59 = v54;
    v60 = v55;
    v61 = v56;
    v57 = v52;
    v58 = v53;
    result = sub_268689EF4();
    v8 = result ^ v37;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_52;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268613124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_268689764();
  v11 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_268689784();
  sub_268612934(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2686131DC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2685BA80C(a3, a4);
          return sub_268612B64(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v23 = *(a1 + 16);
  v24 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v34 = *(a1 + 56);
  v6 = *(a1 + 72);
  v35 = *(a1 + 80);
  v36 = *(a1 + 64);
  v31 = *(a1 + 88);
  v32 = *(a1 + 96);
  v26 = *(a1 + 104);
  v22 = *(a2 + 8);
  v7 = *(a2 + 24);
  v21 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v33 = *(a2 + 80);
  v28 = *(a1 + 112);
  v29 = *(a2 + 88);
  v30 = *(a2 + 96);
  v25 = *(a2 + 104);
  v27 = *(a2 + 112);
  if ((sub_26860D458(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v2 != v7 || v4 != v8) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v9)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v36)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v34 == v11)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v35)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    v16 = v33;
    if (v6 != v13)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v32 >> 60 == 15)
  {
    v17 = v30;
    if (v30 >> 60 == 15)
    {
      sub_268614834(v31, v32);
      sub_268614834(v29, v30);
      sub_2685B98FC(v31, v32);
      goto LABEL_36;
    }

LABEL_33:
    sub_268614834(v31, v32);
    sub_268614834(v29, v17);
    sub_2685B98FC(v31, v32);
    sub_2685B98FC(v29, v17);
    return 0;
  }

  v17 = v30;
  if (v30 >> 60 == 15)
  {
    goto LABEL_33;
  }

  sub_268614834(v31, v32);
  sub_268614834(v29, v30);
  v19 = sub_2686131DC(v31, v32, v29, v30);
  sub_2685B98FC(v29, v30);
  sub_2685B98FC(v31, v32);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (!v28)
  {
    if (!v27)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (!v27 || (v26 != v25 || v28 != v27) && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  sub_2685BA80C(v24, v23);
  sub_2685BA80C(v22, v21);
  v20 = sub_2686131DC(v24, v23, v22, v21);
  sub_2685B593C(v22, v21);
  sub_2685B593C(v24, v23);
  return v20 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C15_SourceCodeInfoV8LocationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v19 = a1[2];
  v3 = a1[5];
  v16 = a1[4];
  v17 = a1[3];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a2[1];
  v18 = a2[2];
  v15 = a2[3];
  v8 = a2[5];
  v14 = a2[4];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  if ((sub_26860E058(*a1, *a2) & 1) == 0 || (sub_26860E058(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9 || (v3 != v8 || v4 != v9) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v5 != v10 || v6 != v11) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (sub_26860EBDC(v19, v18))
  {
    sub_2685BA80C(v17, v16);
    sub_2685BA80C(v15, v14);
    v12 = sub_2686131DC(v17, v16, v15, v14);
    sub_2685B593C(v15, v14);
    sub_2685B593C(v17, v16);
    return v12 & 1;
  }

  return 0;
}

uint64_t _s20SiriOntologyProtobuf07Google_C18_GeneratedCodeInfoV10AnnotationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v19 = *(a1 + 16);
  v20 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v16 = *(a1 + 48);
  v21 = *(a1 + 52);
  v6 = *(a2 + 24);
  v17 = *(a2 + 16);
  v18 = *(a2 + 8);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 44);
  v10 = *(a2 + 48);
  v11 = *(a2 + 52);
  if ((sub_26860E058(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v6 || v3 != v7) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v21)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  sub_2685BA80C(v20, v19);
  sub_2685BA80C(v18, v17);
  v15 = sub_2686131DC(v20, v19, v18, v17);
  sub_2685B593C(v18, v17);
  sub_2685B593C(v20, v19);
  return v15 & 1;
}

uint64_t sub_268613930(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v8 = *(a2 + 28);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_2685BA80C(*a1, v3);
  sub_2685BA80C(v4, v5);
  v9 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v9 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV8NamePartV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v11 = *(a1 + 16) == *(a2 + 16) && v5 == v9;
    if (!v11 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6 != 2)
  {
    if (v10 != 2 && ((v6 ^ v10) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v10 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_2685BA80C(v3, v4);
  sub_2685BA80C(v7, v8);
  v13 = sub_2686131DC(v3, v4, v7, v8);
  sub_2685B593C(v7, v8);
  sub_2685B593C(v3, v4);
  return v13 & 1;
}

uint64_t sub_268613BCC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (v5 != v8)
  {
    v10 = a1[2];

    LOBYTE(a3) = a3(v5, v8);

    if ((a3 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2685BA80C(v3, v4);
  sub_2685BA80C(v6, v7);
  v11 = sub_2686131DC(v3, v4, v6, v7);
  sub_2685B593C(v6, v7);
  sub_2685B593C(v3, v4);
  return v11 & 1;
}

uint64_t sub_268613CA8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (v8 == 2)
  {
    if (v13 != 2)
    {
LABEL_9:
      v15 = 0;
      return v15 & 1;
    }
  }

  else if (v13 == 2 || ((v8 ^ v13) & 1) != 0)
  {
    goto LABEL_9;
  }

  if ((sub_26860D2C0(v4, v9) & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v10, v11);
  v14 = sub_2686131DC(v5, v6, v10, v11);
  sub_2685B593C(v10, v11);
  sub_2685B593C(v5, v6);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = v12;
  v18 = v7;

  v15 = static ExtensionFieldValueSet.== infix(_:_:)(&v18, &v17);

  return v15 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C15_MessageOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = *(a1 + 34);
  v11 = *(a1 + 35);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 33);
  v18 = *(a2 + 34);
  v19 = *(a2 + 35);
  if (v8 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v16 == 2 || ((v8 ^ v16) & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v9 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v17 == 2 || ((v9 ^ v17) & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v10 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v18 == 2 || ((v10 ^ v18) & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v11 == 2)
  {
    if (v19 == 2)
    {
      goto LABEL_21;
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v19 == 2 || ((v11 ^ v19) & 1) != 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if ((sub_26860D2C0(v4, v12) & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v13, v14);
  v20 = sub_2686131DC(v5, v6, v13, v14);
  sub_2685B593C(v13, v14);
  sub_2685B593C(v5, v6);
  if ((v20 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = v15;
  v24 = v7;

  v21 = static ExtensionFieldValueSet.== infix(_:_:)(&v24, &v23);

  return v21 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C14_MethodOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  if (v8 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v14 == 2 || ((v8 ^ v14) & 1) != 0)
  {
    goto LABEL_14;
  }

  if (v9 == 3)
  {
    if (v15 != 3)
    {
LABEL_14:
      v16 = 0;
      return v16 & 1;
    }
  }

  else
  {
    v16 = 0;
    if (v15 == 3 || v9 != v15)
    {
      return v16 & 1;
    }
  }

  if ((sub_26860D2C0(v4, v10) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v11, v12);
  v17 = sub_2686131DC(v5, v6, v11, v12);
  sub_2685B593C(v11, v12);
  sub_2685B593C(v5, v6);
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = v13;
  v20 = v7;

  v16 = static ExtensionFieldValueSet.== infix(_:_:)(&v20, &v19);

  return v16 & 1;
}

uint64_t sub_2686140B0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (sub_26860D2C0(*a1, *a2) & 1) != 0 && (sub_2685BA80C(v2, v4), sub_2685BA80C(v5, v7), v8 = sub_2686131DC(v2, v4, v5, v7), sub_2685B593C(v5, v7), sub_2685B593C(v2, v4), (v8))
  {
    v11 = v6;
    v12 = v3;

    v9 = static ExtensionFieldValueSet.== infix(_:_:)(&v12, &v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C13_FieldOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = *(a1 + 34);
  v11 = *(a1 + 35);
  v12 = *(a1 + 36);
  v13 = *(a1 + 37);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 33);
  v20 = *(a2 + 34);
  v21 = *(a2 + 35);
  v22 = *(a2 + 36);
  v23 = *(a2 + 37);
  if (v8 == 3)
  {
    if (v18 != 3)
    {
      goto LABEL_33;
    }
  }

  else if (v8 != v18)
  {
    goto LABEL_33;
  }

  if (v9 == 2)
  {
    if (v19 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v19 == 2 || ((v9 ^ v19) & 1) != 0)
  {
    goto LABEL_33;
  }

  if (v10 == 3)
  {
    if (v20 != 3)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v24 = 0;
    if (v20 == 3 || v10 != v20)
    {
      return v24 & 1;
    }
  }

  if (v11 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v21 == 2 || ((v11 ^ v21) & 1) != 0)
  {
    goto LABEL_33;
  }

  if (v12 == 2)
  {
    if (v22 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v22 == 2 || ((v12 ^ v22) & 1) != 0)
  {
    goto LABEL_33;
  }

  if (v13 != 2)
  {
    if (v23 == 2 || ((v13 ^ v23) & 1) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v23 != 2)
  {
LABEL_33:
    v24 = 0;
    return v24 & 1;
  }

LABEL_30:
  if ((sub_26860D2C0(v4, v14) & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v15, v16);
  v25 = sub_2686131DC(v5, v6, v15, v16);
  sub_2685B593C(v15, v16);
  sub_2685B593C(v5, v6);
  if ((v25 & 1) == 0)
  {
    goto LABEL_33;
  }

  v27 = v17;
  v28 = v7;

  v24 = static ExtensionFieldValueSet.== infix(_:_:)(&v28, &v27);

  return v24 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C12_FileOptionsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v5 != v9)
  {
    v10 = a1[3];

    v11 = sub_2686044A8(v5, v9);

    if ((v11 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v6, v7);
  v12 = sub_2686131DC(v2, v3, v6, v7);
  sub_2685B593C(v6, v7);
  sub_2685B593C(v2, v3);
  if (v12)
  {
    v15 = v8;
    v16 = v4;

    v13 = static ExtensionFieldValueSet.== infix(_:_:)(&v16, &v15);
  }

  else
  {
LABEL_5:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C12_EnumOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  if (v8 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v14 == 2 || ((v8 ^ v14) & 1) != 0)
  {
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    if (v15 != 2)
    {
LABEL_14:
      v17 = 0;
      return v17 & 1;
    }
  }

  else if (v15 == 2 || ((v9 ^ v15) & 1) != 0)
  {
    goto LABEL_14;
  }

  if ((sub_26860D2C0(v4, v10) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v11, v12);
  v16 = sub_2686131DC(v5, v6, v11, v12);
  sub_2685B593C(v11, v12);
  sub_2685B593C(v5, v6);
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = v13;
  v20 = v7;

  v17 = _s20SiriOntologyProtobuf22ExtensionFieldValueSetV2eeoiySbAC_ACtFZ_0(&v20, &v19);

  return v17 & 1;
}

uint64_t sub_2686145F0(uint64_t a1)
{
  *(v1 + 80) = 0u;
  *(v1 + 96) = 33685504;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  LOWORD(v7) = *(a1 + 96);
  swift_beginAccess();
  v13 = *(v1 + 64);
  v17 = *(v1 + 80);
  v18 = *(v1 + 72);
  v16 = *(v1 + 88);
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  *(v1 + 80) = v11;
  *(v1 + 88) = v12;
  v14 = *(v1 + 96);
  *(v1 + 96) = v7;

  sub_268601C34(v9, v10, v11);
  sub_268601C90(v13, v18, v17);
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 98);
  swift_beginAccess();
  *(v1 + 98) = v14;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + 99);
  swift_beginAccess();
  *(v1 + 99) = a1;
  return v1;
}

uint64_t sub_268614834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2685BA80C(a1, a2);
  }

  return a1;
}

unint64_t sub_268614848()
{
  result = qword_28028C8B8;
  if (!qword_28028C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8B8);
  }

  return result;
}

unint64_t sub_26861489C()
{
  result = qword_28028C8C0;
  if (!qword_28028C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8C0);
  }

  return result;
}

unint64_t sub_2686148F0()
{
  result = qword_28028C8C8;
  if (!qword_28028C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8C8);
  }

  return result;
}

unint64_t sub_268614944()
{
  result = qword_28028C8D0;
  if (!qword_28028C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8D0);
  }

  return result;
}

unint64_t sub_268614998()
{
  result = qword_28028C8D8;
  if (!qword_28028C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8D8);
  }

  return result;
}

unint64_t sub_2686149EC()
{
  result = qword_28028C8E0;
  if (!qword_28028C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8E0);
  }

  return result;
}

unint64_t sub_268614A40()
{
  result = qword_28028C8E8;
  if (!qword_28028C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8E8);
  }

  return result;
}

unint64_t sub_268614A94()
{
  result = qword_28028C8F0;
  if (!qword_28028C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8F0);
  }

  return result;
}

unint64_t sub_268614AE8()
{
  result = qword_28028C8F8;
  if (!qword_28028C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8F8);
  }

  return result;
}

unint64_t sub_268614B3C()
{
  result = qword_28028C900;
  if (!qword_28028C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C900);
  }

  return result;
}

unint64_t sub_268614B90()
{
  result = qword_28028C908;
  if (!qword_28028C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C908);
  }

  return result;
}

unint64_t sub_268614BE4()
{
  result = qword_28028C910;
  if (!qword_28028C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C910);
  }

  return result;
}

unint64_t sub_268614C38()
{
  result = qword_28028C918;
  if (!qword_28028C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C918);
  }

  return result;
}

unint64_t sub_268614C8C()
{
  result = qword_28028C920;
  if (!qword_28028C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C920);
  }

  return result;
}

unint64_t sub_268614CE0()
{
  result = qword_28028C928;
  if (!qword_28028C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C928);
  }

  return result;
}

unint64_t sub_268614D34()
{
  result = qword_28028C930;
  if (!qword_28028C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C930);
  }

  return result;
}

unint64_t sub_268614D88(uint64_t a1)
{
  result = sub_26861489C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268614DB4()
{
  result = qword_28028C938;
  if (!qword_28028C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C938);
  }

  return result;
}

unint64_t sub_268614E34()
{
  result = qword_28028C940;
  if (!qword_28028C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C940);
  }

  return result;
}

unint64_t sub_268614E88()
{
  result = qword_28028C948;
  if (!qword_28028C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C948);
  }

  return result;
}

unint64_t sub_268614EE0()
{
  result = qword_28028C950;
  if (!qword_28028C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C950);
  }

  return result;
}

unint64_t sub_268614F60()
{
  result = qword_28028C958;
  if (!qword_28028C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C958);
  }

  return result;
}

unint64_t sub_268614FB4()
{
  result = qword_28028C960;
  if (!qword_28028C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C960);
  }

  return result;
}

unint64_t sub_26861506C()
{
  result = qword_28028C988;
  if (!qword_28028C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C988);
  }

  return result;
}

unint64_t sub_2686150EC()
{
  result = qword_28028C990;
  if (!qword_28028C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C990);
  }

  return result;
}

unint64_t sub_268615140()
{
  result = qword_28028C998;
  if (!qword_28028C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C998);
  }

  return result;
}

unint64_t sub_268615194(uint64_t a1)
{
  result = sub_2686151BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686151BC()
{
  result = qword_28028C9A0;
  if (!qword_28028C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9A0);
  }

  return result;
}

unint64_t sub_268615240(uint64_t a1)
{
  result = sub_268614944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861526C()
{
  result = qword_28028C9B8;
  if (!qword_28028C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9B8);
  }

  return result;
}

unint64_t sub_2686152EC()
{
  result = qword_28028C9C0;
  if (!qword_28028C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9C0);
  }

  return result;
}

unint64_t sub_268615340()
{
  result = qword_28028C9C8;
  if (!qword_28028C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9C8);
  }

  return result;
}

unint64_t sub_268615398()
{
  result = qword_28028C9D0;
  if (!qword_28028C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9D0);
  }

  return result;
}

unint64_t sub_268615418()
{
  result = qword_28028C9D8;
  if (!qword_28028C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9D8);
  }

  return result;
}

unint64_t sub_26861546C()
{
  result = qword_28028C9E0;
  if (!qword_28028C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9E0);
  }

  return result;
}

unint64_t sub_2686154C0(uint64_t a1)
{
  result = sub_268614998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615548(uint64_t a1)
{
  result = sub_268614A94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615570(uint64_t a1)
{
  result = sub_268614AE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615598(uint64_t a1)
{
  result = sub_268614B3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686155C0(uint64_t a1)
{
  result = sub_268614B90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686155EC()
{
  result = qword_28028CA08;
  if (!qword_28028CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA08);
  }

  return result;
}

unint64_t sub_26861566C()
{
  result = qword_28028CA10;
  if (!qword_28028CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA10);
  }

  return result;
}

unint64_t sub_2686156C0()
{
  result = qword_28028CA18;
  if (!qword_28028CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA18);
  }

  return result;
}

unint64_t sub_268615714(uint64_t a1)
{
  result = sub_268614BE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861576C(uint64_t a1)
{
  result = sub_268615794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615794()
{
  result = qword_28028CA30;
  if (!qword_28028CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA30);
  }

  return result;
}

unint64_t sub_268615814()
{
  result = qword_28028CA38;
  if (!qword_28028CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA38);
  }

  return result;
}

unint64_t sub_268615868()
{
  result = qword_28028CA40;
  if (!qword_28028CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA40);
  }

  return result;
}

unint64_t sub_2686158C0()
{
  result = qword_28028CA48;
  if (!qword_28028CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA48);
  }

  return result;
}

unint64_t sub_268615914(uint64_t a1)
{
  result = sub_26861593C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861593C()
{
  result = qword_28028CA50;
  if (!qword_28028CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA50);
  }

  return result;
}

unint64_t sub_2686159BC()
{
  result = qword_28028CA58;
  if (!qword_28028CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA58);
  }

  return result;
}

unint64_t sub_268615A14()
{
  result = qword_28028CA60;
  if (!qword_28028CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA60);
  }

  return result;
}

unint64_t sub_268615A68(uint64_t a1)
{
  result = sub_268615A90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615A90()
{
  result = qword_28028CA68;
  if (!qword_28028CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA68);
  }

  return result;
}

unint64_t sub_268615B10()
{
  result = qword_28028CA70;
  if (!qword_28028CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA70);
  }

  return result;
}

unint64_t sub_268615B64()
{
  result = qword_28028CA78;
  if (!qword_28028CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA78);
  }

  return result;
}

unint64_t sub_268615BBC()
{
  result = qword_28028CA80;
  if (!qword_28028CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA80);
  }

  return result;
}

unint64_t sub_268615C10(uint64_t a1)
{
  result = sub_268615C38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615C38()
{
  result = qword_28028CA88;
  if (!qword_28028CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA88);
  }

  return result;
}

unint64_t sub_268615CB8()
{
  result = qword_28028CA90;
  if (!qword_28028CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA90);
  }

  return result;
}

unint64_t sub_268615D0C()
{
  result = qword_28028CA98;
  if (!qword_28028CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA98);
  }

  return result;
}

unint64_t sub_268615D64()
{
  result = qword_28028CAA0;
  if (!qword_28028CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAA0);
  }

  return result;
}

unint64_t sub_268615DB8(uint64_t a1)
{
  result = sub_268615DE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615DE0()
{
  result = qword_28028CAA8;
  if (!qword_28028CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAA8);
  }

  return result;
}

unint64_t sub_268615E60()
{
  result = qword_28028CAB0;
  if (!qword_28028CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAB0);
  }

  return result;
}

unint64_t sub_268615EB4()
{
  result = qword_28028CAB8;
  if (!qword_28028CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAB8);
  }

  return result;
}

unint64_t sub_268615F0C()
{
  result = qword_28028CAC0;
  if (!qword_28028CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAC0);
  }

  return result;
}

unint64_t sub_268615F60(uint64_t a1)
{
  result = sub_268615F88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615F88()
{
  result = qword_28028CAC8;
  if (!qword_28028CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAC8);
  }

  return result;
}

unint64_t sub_268616008()
{
  result = qword_28028CAD0;
  if (!qword_28028CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAD0);
  }

  return result;
}

unint64_t sub_268616060()
{
  result = qword_28028CAD8;
  if (!qword_28028CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAD8);
  }

  return result;
}

unint64_t sub_2686160B4(uint64_t a1)
{
  result = sub_2686160DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686160DC()
{
  result = qword_28028CAE0;
  if (!qword_28028CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAE0);
  }

  return result;
}

unint64_t sub_26861615C()
{
  result = qword_28028CAE8;
  if (!qword_28028CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAE8);
  }

  return result;
}

unint64_t sub_2686161B0()
{
  result = qword_28028CAF0;
  if (!qword_28028CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAF0);
  }

  return result;
}

unint64_t sub_268616208()
{
  result = qword_28028CAF8;
  if (!qword_28028CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAF8);
  }

  return result;
}

unint64_t sub_26861625C(uint64_t a1)
{
  result = sub_268616284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616284()
{
  result = qword_28028CB00;
  if (!qword_28028CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB00);
  }

  return result;
}

unint64_t sub_268616304()
{
  result = qword_28028CB08;
  if (!qword_28028CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB08);
  }

  return result;
}

unint64_t sub_268616358()
{
  result = qword_28028CB10;
  if (!qword_28028CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB10);
  }

  return result;
}

unint64_t sub_2686163B0()
{
  result = qword_28028CB18;
  if (!qword_28028CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB18);
  }

  return result;
}

unint64_t sub_268616404(uint64_t a1)
{
  result = sub_26861642C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861642C()
{
  result = qword_28028CB20;
  if (!qword_28028CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB20);
  }

  return result;
}

unint64_t sub_2686164AC()
{
  result = qword_28028CB28;
  if (!qword_28028CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB28);
  }

  return result;
}

unint64_t sub_268616500()
{
  result = qword_28028CB30;
  if (!qword_28028CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB30);
  }

  return result;
}

unint64_t sub_268616558()
{
  result = qword_28028CB38;
  if (!qword_28028CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB38);
  }

  return result;
}

unint64_t sub_2686165AC(uint64_t a1)
{
  result = sub_2686165D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686165D4()
{
  result = qword_28028CB40;
  if (!qword_28028CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB40);
  }

  return result;
}

unint64_t sub_268616654()
{
  result = qword_28028CB48;
  if (!qword_28028CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB48);
  }

  return result;
}

unint64_t sub_2686166A8()
{
  result = qword_28028CB50;
  if (!qword_28028CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB50);
  }

  return result;
}

unint64_t sub_268616700()
{
  result = qword_28028CB58;
  if (!qword_28028CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB58);
  }

  return result;
}

unint64_t sub_268616754(uint64_t a1)
{
  result = sub_26861677C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861677C()
{
  result = qword_28028CB60;
  if (!qword_28028CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB60);
  }

  return result;
}

unint64_t sub_2686167FC()
{
  result = qword_28028CB68;
  if (!qword_28028CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB68);
  }

  return result;
}

unint64_t sub_268616850()
{
  result = qword_28028CB70;
  if (!qword_28028CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB70);
  }

  return result;
}

unint64_t sub_2686168A8()
{
  result = qword_28028CB78;
  if (!qword_28028CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB78);
  }

  return result;
}

unint64_t sub_2686168FC(uint64_t a1)
{
  result = sub_268616924();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616924()
{
  result = qword_28028CB80;
  if (!qword_28028CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB80);
  }

  return result;
}

unint64_t sub_2686169A4()
{
  result = qword_28028CB88;
  if (!qword_28028CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB88);
  }

  return result;
}

unint64_t sub_2686169F8()
{
  result = qword_28028CB90;
  if (!qword_28028CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB90);
  }

  return result;
}

unint64_t sub_268616A50()
{
  result = qword_28028CB98;
  if (!qword_28028CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB98);
  }

  return result;
}

unint64_t sub_268616AA4(uint64_t a1)
{
  result = sub_268616ACC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616ACC()
{
  result = qword_28028CBA0;
  if (!qword_28028CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBA0);
  }

  return result;
}

unint64_t sub_268616B4C()
{
  result = qword_28028CBA8;
  if (!qword_28028CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBA8);
  }

  return result;
}

unint64_t sub_268616BA0()
{
  result = qword_28028CBB0;
  if (!qword_28028CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBB0);
  }

  return result;
}

unint64_t sub_268616BF8()
{
  result = qword_28028CBB8;
  if (!qword_28028CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBB8);
  }

  return result;
}

unint64_t sub_268616C4C(uint64_t a1)
{
  result = sub_268616C74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616C74()
{
  result = qword_28028CBC0;
  if (!qword_28028CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBC0);
  }

  return result;
}

unint64_t sub_268616CF4()
{
  result = qword_28028CBC8;
  if (!qword_28028CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBC8);
  }

  return result;
}

unint64_t sub_268616D4C()
{
  result = qword_28028CBD0;
  if (!qword_28028CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBD0);
  }

  return result;
}

unint64_t sub_268616DA0(uint64_t a1)
{
  result = sub_268616DC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616DC8()
{
  result = qword_28028CBD8;
  if (!qword_28028CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBD8);
  }

  return result;
}

unint64_t sub_268616E48()
{
  result = qword_28028CBE0;
  if (!qword_28028CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBE0);
  }

  return result;
}

unint64_t sub_268616EA0()
{
  result = qword_28028CBE8;
  if (!qword_28028CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBE8);
  }

  return result;
}

unint64_t sub_268616EF4(uint64_t a1)
{
  result = sub_268616F1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616F1C()
{
  result = qword_28028CBF0;
  if (!qword_28028CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBF0);
  }

  return result;
}

unint64_t sub_268616F9C()
{
  result = qword_28028CBF8;
  if (!qword_28028CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBF8);
  }

  return result;
}

unint64_t sub_268616FF4()
{
  result = qword_28028CC00;
  if (!qword_28028CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC00);
  }

  return result;
}

unint64_t sub_268617048(uint64_t a1)
{
  result = sub_268617070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617070()
{
  result = qword_28028CC08;
  if (!qword_28028CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC08);
  }

  return result;
}

unint64_t sub_2686170F0()
{
  result = qword_28028CC10;
  if (!qword_28028CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC10);
  }

  return result;
}

unint64_t sub_268617148()
{
  result = qword_28028CC18;
  if (!qword_28028CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC18);
  }

  return result;
}

unint64_t sub_26861719C(uint64_t a1)
{
  result = sub_2686171C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686171C4()
{
  result = qword_28028CC20;
  if (!qword_28028CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC20);
  }

  return result;
}

unint64_t sub_268617244()
{
  result = qword_28028CC28;
  if (!qword_28028CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC28);
  }

  return result;
}

unint64_t sub_26861729C()
{
  result = qword_28028CC30;
  if (!qword_28028CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC30);
  }

  return result;
}

unint64_t sub_2686172F0(uint64_t a1)
{
  result = sub_268617318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617318()
{
  result = qword_28028CC38;
  if (!qword_28028CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC38);
  }

  return result;
}

unint64_t sub_268617398()
{
  result = qword_28028CC40;
  if (!qword_28028CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC40);
  }

  return result;
}

unint64_t sub_2686173F0()
{
  result = qword_28028CC48;
  if (!qword_28028CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC48);
  }

  return result;
}

unint64_t sub_268617444(uint64_t a1)
{
  result = sub_26861746C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861746C()
{
  result = qword_28028CC50;
  if (!qword_28028CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC50);
  }

  return result;
}

unint64_t sub_2686174EC()
{
  result = qword_28028CC58;
  if (!qword_28028CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC58);
  }

  return result;
}

unint64_t sub_268617544()
{
  result = qword_28028CC60;
  if (!qword_28028CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC60);
  }

  return result;
}

unint64_t sub_268617598(uint64_t a1)
{
  result = sub_2686175C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686175C0()
{
  result = qword_28028CC68;
  if (!qword_28028CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC68);
  }

  return result;
}

unint64_t sub_268617640()
{
  result = qword_28028CC70;
  if (!qword_28028CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC70);
  }

  return result;
}

unint64_t sub_268617698()
{
  result = qword_28028CC78;
  if (!qword_28028CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC78);
  }

  return result;
}

unint64_t sub_2686176EC(uint64_t a1)
{
  result = sub_268617714();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617714()
{
  result = qword_28028CC80;
  if (!qword_28028CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC80);
  }

  return result;
}

unint64_t sub_268617794()
{
  result = qword_28028CC88;
  if (!qword_28028CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC88);
  }

  return result;
}

unint64_t sub_2686177EC()
{
  result = qword_28028CC90;
  if (!qword_28028CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC90);
  }

  return result;
}

unint64_t sub_268617840(uint64_t a1)
{
  result = sub_268617868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617868()
{
  result = qword_28028CC98;
  if (!qword_28028CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC98);
  }

  return result;
}

unint64_t sub_2686178E8()
{
  result = qword_28028CCA0;
  if (!qword_28028CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCA0);
  }

  return result;
}

unint64_t sub_268617940()
{
  result = qword_28028CCA8;
  if (!qword_28028CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCA8);
  }

  return result;
}

unint64_t sub_268617994(uint64_t a1)
{
  result = sub_2686179BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686179BC()
{
  result = qword_28028CCB0;
  if (!qword_28028CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCB0);
  }

  return result;
}

unint64_t sub_268617A3C()
{
  result = qword_28028CCB8;
  if (!qword_28028CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCB8);
  }

  return result;
}

unint64_t sub_268617A90()
{
  result = qword_28028CCC0;
  if (!qword_28028CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCC0);
  }

  return result;
}

unint64_t sub_268617AE8()
{
  result = qword_28028CCC8;
  if (!qword_28028CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCC8);
  }

  return result;
}

unint64_t sub_268617B3C(uint64_t a1)
{
  result = sub_268617B64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617B64()
{
  result = qword_28028CCD0;
  if (!qword_28028CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCD0);
  }

  return result;
}

unint64_t sub_268617BE4()
{
  result = qword_28028CCD8;
  if (!qword_28028CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCD8);
  }

  return result;
}

unint64_t sub_268617C3C()
{
  result = qword_28028CCE0;
  if (!qword_28028CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCE0);
  }

  return result;
}

unint64_t sub_268617C90(uint64_t a1)
{
  result = sub_268617CB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617CB8()
{
  result = qword_28028CCE8;
  if (!qword_28028CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCE8);
  }

  return result;
}

unint64_t sub_268617D38()
{
  result = qword_28028CCF0;
  if (!qword_28028CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCF0);
  }

  return result;
}

unint64_t sub_268617D8C()
{
  result = qword_28028CCF8;
  if (!qword_28028CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCF8);
  }

  return result;
}

unint64_t sub_268617DE4()
{
  result = qword_28028CD00;
  if (!qword_28028CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD00);
  }

  return result;
}

unint64_t sub_268617E38(uint64_t a1)
{
  result = sub_268617E60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617E60()
{
  result = qword_28028CD08;
  if (!qword_28028CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD08);
  }

  return result;
}

uint64_t sub_268617EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268617F1C()
{
  result = qword_28028CD10;
  if (!qword_28028CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD10);
  }

  return result;
}

unint64_t sub_268617F74()
{
  result = qword_28028CD18;
  if (!qword_28028CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD18);
  }

  return result;
}

uint64_t keypath_get_81Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t keypath_get_83Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t keypath_get_85Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t keypath_get_87Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t keypath_get_89Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t keypath_get_91Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t keypath_get_133Tm@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 32);
  if (*(v3 + 36))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Google_Protobuf_FieldDescriptorProto.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Google_Protobuf_FieldDescriptorProto.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2686183E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 29))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26861843C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2686184D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26861851C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26861857C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_2686185C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26861862C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
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

uint64_t sub_268618674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2686186EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_268618734(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2686187CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_268618814(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268618868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_2686188B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyUnpackError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnyUnpackError(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_268618A80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_268618AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268618B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268618B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_268618C08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_268618C50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268618CB0(uint64_t *a1, int a2)
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

uint64_t sub_268618CF8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_268618D64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_268618DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2686190A8()
{
  result = qword_28028CD20;
  if (!qword_28028CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD20);
  }

  return result;
}

unint64_t sub_2686190FC()
{
  result = qword_28028CD28;
  if (!qword_28028CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD28);
  }

  return result;
}

unint64_t sub_268619150()
{
  result = qword_28028CD30;
  if (!qword_28028CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD30);
  }

  return result;
}

uint64_t Decoder.decodeExtensionFieldsAsMessageSet(values:messageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  while (1)
  {
    result = v11(a4, a5);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    (*(a5 + 464))(a1, a2, a3, result, a4, a5);
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularFloatField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 32))();
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 48))();
}

{
  return (*(a3 + 56))();
}

uint64_t dispatch thunk of Decoder.decodeSingularInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))();
}

{
  return (*(a3 + 80))();
}

uint64_t dispatch thunk of Decoder.decodeSingularInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 96))();
}

{
  return (*(a3 + 104))();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 120))();
}

{
  return (*(a3 + 128))();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 144))();
}

{
  return (*(a3 + 152))();
}

uint64_t dispatch thunk of Decoder.decodeSingularSInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 168))();
}

{
  return (*(a3 + 176))();
}

uint64_t dispatch thunk of Decoder.decodeSingularSInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 192))();
}

{
  return (*(a3 + 200))();
}

uint64_t dispatch thunk of Decoder.decodeSingularFixed32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 216))();
}

{
  return (*(a3 + 224))();
}

uint64_t dispatch thunk of Decoder.decodeSingularFixed64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 240))();
}

{
  return (*(a3 + 248))();
}

uint64_t dispatch thunk of Decoder.decodeSingularSFixed32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 264))();
}

{
  return (*(a3 + 272))();
}

uint64_t dispatch thunk of Decoder.decodeSingularSFixed64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 288))();
}

{
  return (*(a3 + 296))();
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 360))();
}

{
  return (*(a3 + 368))();
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 384))();
}

{
  return (*(a5 + 392))();
}

uint64_t dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 440))();
}

{
  return (*(a7 + 448))();
}

uint64_t sub_268619E50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26863C318();
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    sub_2686434CC(a1, a2, a3, result);
  }

  return result;
}

uint64_t sub_268619EBC()
{
  v2 = v1;
  result = sub_2685BE428();
  if ((result & 1) == 0)
  {
    v4 = v0[9];
    if (v4 < 1 || (result = sub_2685BE1FC(44), !v1))
    {
      result = v0[11];
      if (!result)
      {
        goto LABEL_12;
      }

      v6 = v0[13];
      v5 = v0[14];
      v7 = v0[12];
      v11[0] = v0[11];
      v11[1] = v7;
      v11[2] = v6;
      v11[3] = v5;

      sub_2685BDD9C(v11);
      if (v2)
      {
      }

      v9 = v8;

      if ((v9 & 1) == 0)
      {
        if (!__OFADD__(v4, 1))
        {
          v0[9] = v4 + 1;
          sub_2685BD910();
          swift_allocError();
          *v10 = xmmword_26868F110;
          return swift_willThrow();
        }

        __break(1u);
LABEL_12:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_26861A00C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x26D61DE30](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

char *sub_26861A074(void *__src, int64_t __len)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_7:
    result = 0;
LABEL_8:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = 0;
  if (__len < 1 || *(v2 + 24) - v3 <= __len)
  {
    goto LABEL_8;
  }

  memmove(*(v2 + 16), __src, __len);
  result = *(v2 + 16);
  v7 = &result[__len];
  *v7 = 0;
  if (result)
  {
    v10[0] = result;
    v8 = strtod(result, v10);
    if (v7 == v10[0])
    {
      result = *&v8;
      if ((~*&v8 & 0x7FF0000000000000) != 0)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_26861A150()
{
  result = qword_28028CD38;
  if (!qword_28028CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD38);
  }

  return result;
}

void sub_26861A1A4(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 2;
}

double sub_26861A1B4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_26861A1C0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868BD70;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for TextFormatEncodingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26861A320()
{

  v0 = 0;
  v1 = 0;
  v64 = 0;
  v2 = MEMORY[0x277D84F90];
  v65 = 1;
  do
  {
    v5 = sub_268689A74();
    if (!v6)
    {
      goto LABEL_132;
    }

    v7 = v5;
    v8 = v6;
    if (v5 == 45 && v6 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {
      if (v0)
      {
        goto LABEL_131;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_268665D44(0, *(v2 + 2) + 1, 1, v2);
      }

      v10 = *(v2 + 2);
      v9 = *(v2 + 3);
      if (v10 >= v9 >> 1)
      {
        v2 = sub_268665D44((v9 > 1), v10 + 1, 1, v2);
      }

      *(v2 + 2) = v10 + 1;
      v3 = &v2[16 * v10];
      *(v3 + 4) = v7;
      *(v3 + 5) = v8;
    }

    else
    {
      if (v7 == 48 && v8 == 0xE100000000000000)
      {
        goto LABEL_15;
      }

      v14 = sub_268689E14();
      v15 = v7 == 49 && v8 == 0xE100000000000000;
      v16 = v15;
      if ((v14 & 1) != 0 || v16)
      {
        goto LABEL_15;
      }

      v17 = sub_268689E14();
      v18 = v7 == 50 && v8 == 0xE100000000000000;
      v19 = v18;
      if ((v17 & 1) != 0 || v19)
      {
        goto LABEL_15;
      }

      v20 = sub_268689E14();
      v21 = v7 == 51 && v8 == 0xE100000000000000;
      v22 = v21;
      if ((v20 & 1) != 0 || v22)
      {
        goto LABEL_15;
      }

      v23 = sub_268689E14();
      v24 = v7 == 52 && v8 == 0xE100000000000000;
      v25 = v24;
      if ((v23 & 1) != 0 || v25)
      {
        goto LABEL_15;
      }

      v26 = sub_268689E14();
      v27 = v7 == 53 && v8 == 0xE100000000000000;
      v28 = v27;
      if ((v26 & 1) != 0 || v28)
      {
        goto LABEL_15;
      }

      v29 = sub_268689E14();
      v30 = v7 == 54 && v8 == 0xE100000000000000;
      v31 = v30;
      if ((v29 & 1) != 0 || v31)
      {
        goto LABEL_15;
      }

      v32 = sub_268689E14();
      v33 = v7 == 55 && v8 == 0xE100000000000000;
      v34 = v33;
      if (v32 & 1) != 0 || v34 || ((v35 = sub_268689E14(), v7 == 56) ? (v36 = v8 == 0xE100000000000000) : (v36 = 0), !v36 ? (v37 = 0) : (v37 = 1), (v35 & 1) != 0 || (v37 & 1) != 0 || ((v38 = sub_268689E14(), v7 == 57) ? (v39 = v8 == 0xE100000000000000) : (v39 = 0), !v39 ? (v40 = 0) : (v40 = 1), (v38 & 1) != 0 || (v40 & 1) != 0 || (sub_268689E14())))
      {
LABEL_15:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_268665D44(0, *(v2 + 2) + 1, 1, v2);
        }

        v12 = *(v2 + 2);
        v11 = *(v2 + 3);
        if (v12 >= v11 >> 1)
        {
          v2 = sub_268665D44((v11 > 1), v12 + 1, 1, v2);
        }

        *(v2 + 2) = v12 + 1;
        v13 = &v2[16 * v12];
        *(v13 + 4) = v7;
        *(v13 + 5) = v8;
        v4 = __OFADD__(v1++, 1);
        if (v4)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if ((v7 != 46 || v8 != 0xE100000000000000) && (sub_268689E14() & 1) == 0)
        {
          goto LABEL_107;
        }

        if ((v65 & 1) == 0)
        {
          goto LABEL_132;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD48, &qword_26868F240);
        sub_26861B748();
        v41 = sub_268689AE4();
        v43 = sub_26861AA60(v41, v42);
        if (v44)
        {
          goto LABEL_132;
        }

        v45 = v43;
        if (qword_28028BDB0 != -1)
        {
          swift_once();
        }

        v7 = qword_28028CD40;

        if (v45 > 315576000000 || v45 < v7)
        {
          goto LABEL_133;
        }

        v64 = v45;
        v1 = 0;
        v65 = 0;
        v2 = MEMORY[0x277D84F90];
      }
    }

    v4 = __OFADD__(v0++, 1);
  }

  while (!v4);
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  if ((v7 != 115 || v8 != 0xE100000000000000) && (sub_268689E14() & 1) == 0)
  {
    goto LABEL_131;
  }

  if ((v65 & 1) == 0)
  {
    if (v1 > 8)
    {
      if (v1 != 9)
      {
        v59 = v1 + 1;
        while (*(v2 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v60 = *(v2 + 2);
            if (!v60)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v2 = sub_2685D1024(v2);
            v60 = *(v2 + 2);
            if (!v60)
            {
LABEL_141:
              __break(1u);
              goto LABEL_142;
            }
          }

          v61 = v60 - 1;
          v62 = *&v2[16 * v61 + 40];
          *(v2 + 2) = v61;

          if (--v59 <= 10)
          {
            goto LABEL_126;
          }
        }

        __break(1u);
        goto LABEL_146;
      }
    }

    else
    {
      v49 = v1 - 9;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_268665D44(0, *(v2 + 2) + 1, 1, v2);
        }

        v51 = *(v2 + 2);
        v50 = *(v2 + 3);
        if (v51 >= v50 >> 1)
        {
          v2 = sub_268665D44((v50 > 1), v51 + 1, 1, v2);
        }

        *(v2 + 2) = v51 + 1;
        v52 = &v2[16 * v51];
        *(v52 + 4) = 48;
        *(v52 + 5) = 0xE100000000000000;
      }

      while (!__CFADD__(v49++, 1));
    }

LABEL_126:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD48, &qword_26868F240);
    sub_26861B748();
    v54 = sub_268689AE4();
    v56 = sub_26861AD60(v54, v55);
    if ((v56 & 0x100000000) == 0)
    {
      if ((v64 & 0x8000000000000000) == 0 || !__OFSUB__(0, v56))
      {
        goto LABEL_142;
      }

      __break(1u);
    }

LABEL_131:

LABEL_132:

LABEL_133:
    sub_2685BD910();
    swift_allocError();
    *v57 = xmmword_26868F1C0;
    swift_willThrow();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD48, &qword_26868F240);
  sub_26861B748();
  v46 = sub_268689AE4();
  v64 = sub_26861AA60(v46, v47);
  if (v48)
  {
    goto LABEL_131;
  }

  if (qword_28028BDB0 != -1)
  {
LABEL_146:
    swift_once();
  }

  if (v64 < qword_28028CD40 || v64 > 315576000000)
  {
    goto LABEL_131;
  }

LABEL_142:
  sub_268689A74();
  if (v63)
  {

    goto LABEL_132;
  }

  return v64;
}

uint64_t sub_26861AA60(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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
        result = sub_268689D24();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_26861BD28(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_26861AD60(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_26861B7AC(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_268689D24();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}