uint64_t Data.spEncrypt(key:ivLength:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_15;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 < 16)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 16)
      {
        goto LABEL_11;
      }

LABEL_15:
      sub_2644D0F90();
      swift_allocError();
      *v15 = 10;
      return swift_willThrow();
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!v7)
  {
    goto LABEL_18;
  }

  if (v7 != 2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 257)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v10 = __OFSUB__(v12, v13);
  v14 = v12 - v13;
  if (v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v14 >= 257)
  {
    goto LABEL_15;
  }

LABEL_18:
  v17 = result;
  v20 = MEMORY[0x2667396E0](a3);
  v22 = v21;
  v23 = sub_2644EAC3C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  result = sub_2644EAC0C();
  v39 = 0x1000000000;
  v40 = result | 0x4000000000000000;
  v26 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    result = 0;
    if (v26 != 2)
    {
      goto LABEL_27;
    }

    v27 = *(a4 + 16);
    v28 = *(a4 + 24);
    result = v28 - v27;
    if (!__OFSUB__(v28, v27))
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_25:
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      result = HIDWORD(a4) - a4;
      goto LABEL_27;
    }

LABEL_38:
    __break(1u);
    return result;
  }

  if (v26)
  {
    goto LABEL_25;
  }

  result = BYTE6(a5);
LABEL_27:
  *&v38 = sub_2644CFE44(result);
  *(&v38 + 1) = v29;
  sub_2644C206C(v20, v22);
  sub_2644C206C(v17, a2);
  sub_2644C206C(a4, a5);
  v30 = sub_2644D0790(&v38, &v39, v20, v22, v17, a2, a4, a5);
  sub_2644C20C0(a4, a5);
  sub_2644C20C0(v17, a2);
  sub_2644C20C0(v20, v22);
  if (v30)
  {
    CryptoError.init(rawValue:)(v30);
    v31 = v41;
    sub_2644D0F90();
    swift_allocError();
    if (v31 == 13)
    {
      v33 = 8;
    }

    else
    {
      v33 = v31;
    }

    *v32 = v33;
    swift_willThrow();
    sub_2644C20C0(v20, v22);
    sub_2644C20C0(v38, *(&v38 + 1));
    v34 = v39;
    v35 = v40;
  }

  else
  {
    v36 = v39;
    v37 = v40;
    *a6 = v20;
    *(a6 + 8) = v22;
    *(a6 + 16) = v36;
    *(a6 + 24) = v37;
    *(a6 + 32) = v38;
    sub_2644C206C(v36, v37);
    v34 = v36;
    v35 = v37;
  }

  return sub_2644C20C0(v34, v35);
}

uint64_t sub_2644C8988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _DWORD *a9@<X8>)
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v81[2] = *MEMORY[0x277D85DE8];
  v15 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v81, 0, 14);
      sub_2644C206C(a7, a8);
      v34 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v34 != 2)
        {
          v44 = v9 >> 62;
          memset(v80, 0, 14);
          if ((v9 >> 62) <= 1)
          {
            if (!v44)
            {
LABEL_52:
              v45 = a5;
              sub_2644C206C(a5, v11);
              v26 = CCCryptorGCMOneshotEncrypt();
              v46 = v45;
LABEL_73:
              v64 = v11;
LABEL_90:
              sub_2644C20C0(v46, v64);
              goto LABEL_92;
            }

            v71 = v11;
            if (v10 >> 32 >= v10)
            {
              v74 = a5;
              sub_2644C206C(a5, v11);
              if (!sub_2644EABFC() || !__OFSUB__(v10, sub_2644EAC2C()))
              {
                goto LABEL_89;
              }

LABEL_120:
              __break(1u);
            }

            goto LABEL_108;
          }

          if (v44 == 2)
          {
            v60 = a9;
            v61 = v9;
            v62 = *(v10 + 16);
            v63 = *(v10 + 24);
            v73 = a5;
            sub_2644C206C(a5, v11);
            v51 = v61;
            if (sub_2644EABFC() && __OFSUB__(v62, sub_2644EAC2C()))
            {
              goto LABEL_116;
            }

            a9 = v60;
            if (__OFSUB__(v63, v62))
            {
              goto LABEL_112;
            }

            goto LABEL_72;
          }

          goto LABEL_91;
        }

        v76 = a9;
        a9 = a1;
        v39 = v9;
        v40 = *(a5 + 16);
        v41 = *(a5 + 24);
        v72 = a5;
        sub_2644C206C(a5, v11);
        if (sub_2644EABFC() && __OFSUB__(v40, sub_2644EAC2C()))
        {
          goto LABEL_102;
        }

        if (__OFSUB__(v41, v40))
        {
          goto LABEL_100;
        }

        sub_2644EAC1C();
        v42 = v10;
        v9 = v39;
      }

      else
      {
        if (!v34)
        {
          v80[0] = a5;
          LOWORD(v80[1]) = v11;
          BYTE2(v80[1]) = BYTE2(v11);
          BYTE3(v80[1]) = BYTE3(v11);
          BYTE4(v80[1]) = BYTE4(v11);
          BYTE5(v80[1]) = BYTE5(v11);
          v35 = v9 >> 62;
          if ((v9 >> 62) <= 1)
          {
            if (!v35)
            {
              goto LABEL_52;
            }

            v71 = v11;
            if (v10 >> 32 >= v10)
            {
              v74 = a5;
              sub_2644C206C(a5, v11);
              if (!sub_2644EABFC() || !__OFSUB__(v10, sub_2644EAC2C()))
              {
                goto LABEL_89;
              }

              goto LABEL_118;
            }

            goto LABEL_106;
          }

          if (v35 == 2)
          {
            v52 = a9;
            v53 = v9;
            v54 = *(v10 + 16);
            v55 = *(v10 + 24);
            v73 = a5;
            sub_2644C206C(a5, v11);
            v51 = v53;
            if (sub_2644EABFC() && __OFSUB__(v54, sub_2644EAC2C()))
            {
              goto LABEL_114;
            }

            a9 = v52;
            if (__OFSUB__(v55, v54))
            {
              goto LABEL_110;
            }

            goto LABEL_72;
          }

LABEL_91:
          sub_2644C206C(a5, v11);
          v65 = CCCryptorGCMOneshotEncrypt();
          v66 = a5;
          v26 = v65;
          sub_2644C20C0(v66, v11);
          goto LABEL_92;
        }

        v76 = a9;
        a9 = a1;
        v39 = v9;
        if (a5 >> 32 < a5)
        {
          goto LABEL_98;
        }

        v72 = a5;
        sub_2644C206C(a5, v11);
        if (sub_2644EABFC() && __OFSUB__(a5, sub_2644EAC2C()))
        {
          goto LABEL_104;
        }

        sub_2644EAC1C();
        v42 = v10;
      }

      sub_2644CA2B8(v42, v39, v80);
      v25 = v79;
      if (v79)
      {
LABEL_122:
        v32 = v72;
        v33 = v11;
        goto LABEL_123;
      }

      sub_2644C20C0(v72, v11);
      v26 = v80[0];
      goto LABEL_46;
    }

    v18 = a9;
    a9 = a1;
    v76 = v18;
    v20 = *(a3 + 16);
    v21 = *(a3 + 24);
    sub_2644C206C(a5, a6);
    v11 = v10;
    v23 = a8;
    sub_2644C206C(v10, a8);
    if (sub_2644EABFC() && __OFSUB__(v20, sub_2644EAC2C()))
    {
      goto LABEL_95;
    }

    if (!__OFSUB__(v21, v20))
    {
      sub_2644EAC1C();
      v24 = a5;
      v9 = v23;
      sub_2644C9B58(a5, a6, v10, v23, v81, a9, a2);
      v25 = v79;
      if (v79)
      {
        sub_2644C20C0(v24, a6);
        i = v10;
        goto LABEL_124;
      }

      sub_2644C20C0(v24, a6);
      v26 = v81[0];
      goto LABEL_46;
    }

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
    goto LABEL_120;
  }

  if (!v15)
  {
    v81[0] = a3;
    LOWORD(v81[1]) = a4;
    BYTE2(v81[1]) = BYTE2(a4);
    BYTE3(v81[1]) = BYTE3(a4);
    BYTE4(v81[1]) = BYTE4(a4);
    BYTE5(v81[1]) = BYTE5(a4);
    sub_2644C206C(a7, a8);
    v16 = v11 >> 62;
    if ((v11 >> 62) <= 1)
    {
      if (!v16)
      {
        v80[0] = a5;
        LOWORD(v80[1]) = v11;
        BYTE2(v80[1]) = BYTE2(v11);
        BYTE3(v80[1]) = BYTE3(v11);
        BYTE4(v80[1]) = BYTE4(v11);
        BYTE5(v80[1]) = BYTE5(v11);
        v17 = v9 >> 62;
        if ((v9 >> 62) <= 1)
        {
          if (!v17)
          {
            goto LABEL_52;
          }

          v71 = v11;
          if (v10 >> 32 >= v10)
          {
            v74 = a5;
            sub_2644C206C(a5, v11);
            if (!sub_2644EABFC() || !__OFSUB__(v10, sub_2644EAC2C()))
            {
LABEL_89:
              sub_2644EAC1C();
              v26 = CCCryptorGCMOneshotEncrypt();
              v64 = v71;
              v46 = v74;
              goto LABEL_90;
            }

            goto LABEL_117;
          }

          goto LABEL_105;
        }

        if (v17 == 2)
        {
          v47 = a9;
          v48 = v9;
          v49 = *(v10 + 16);
          v50 = *(v10 + 24);
          v73 = a5;
          sub_2644C206C(a5, v11);
          v51 = v48;
          if (sub_2644EABFC() && __OFSUB__(v49, sub_2644EAC2C()))
          {
            goto LABEL_113;
          }

          a9 = v47;
          if (__OFSUB__(v50, v49))
          {
            goto LABEL_109;
          }

LABEL_72:
          v9 = v51;
          sub_2644EAC1C();
          v26 = CCCryptorGCMOneshotEncrypt();
          v46 = v73;
          goto LABEL_73;
        }

        goto LABEL_91;
      }

      if (a5 >> 32 >= a5)
      {
        v72 = a5;
        sub_2644C206C(a5, v11);
        if (!sub_2644EABFC() || !__OFSUB__(a5, sub_2644EAC2C()))
        {
          sub_2644EAC1C();
          sub_2644CA2B8(v10, v9, v80);
          v25 = v79;
          if (!v79)
          {
            sub_2644C20C0(a5, v11);
            v26 = v80[0];
            goto LABEL_92;
          }

          goto LABEL_122;
        }

        goto LABEL_103;
      }

      goto LABEL_97;
    }

    if (v16 != 2)
    {
      v43 = v9 >> 62;
      memset(v80, 0, 14);
      if ((v9 >> 62) <= 1)
      {
        if (!v43)
        {
          goto LABEL_52;
        }

        v71 = v11;
        if (v10 >> 32 >= v10)
        {
          v74 = a5;
          sub_2644C206C(a5, v11);
          if (!sub_2644EABFC() || !__OFSUB__(v10, sub_2644EAC2C()))
          {
            goto LABEL_89;
          }

          goto LABEL_119;
        }

        goto LABEL_107;
      }

      if (v43 == 2)
      {
        v56 = a9;
        v57 = v9;
        v58 = *(v10 + 16);
        v59 = *(v10 + 24);
        v73 = a5;
        sub_2644C206C(a5, v11);
        v51 = v57;
        if (sub_2644EABFC() && __OFSUB__(v58, sub_2644EAC2C()))
        {
          goto LABEL_115;
        }

        a9 = v56;
        if (__OFSUB__(v59, v58))
        {
          goto LABEL_111;
        }

        goto LABEL_72;
      }

      goto LABEL_91;
    }

    v76 = a9;
    a9 = v10;
    v36 = v9;
    v37 = *(a5 + 16);
    v38 = *(a5 + 24);
    v72 = a5;
    sub_2644C206C(a5, v11);
    if (sub_2644EABFC() && __OFSUB__(v37, sub_2644EAC2C()))
    {
      goto LABEL_101;
    }

    if (__OFSUB__(v38, v37))
    {
      goto LABEL_99;
    }

    sub_2644EAC1C();
    v9 = v36;
    sub_2644CA2B8(a9, v36, v80);
    v25 = v79;
    if (v79)
    {
      goto LABEL_125;
    }

    sub_2644C20C0(a5, v11);
    v26 = v80[0];
    v10 = a9;
LABEL_46:
    a9 = v76;
    goto LABEL_92;
  }

  v27 = a9;
  a9 = a6;
  v77 = v27;
  v11 = a8;
  v28 = a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_94;
  }

  sub_2644C206C(a5, a6);
  sub_2644C206C(v10, v11);
  if (sub_2644EABFC() && __OFSUB__(v28, sub_2644EAC2C()))
  {
    goto LABEL_96;
  }

  v9 = v11;
  sub_2644EAC1C();
  v31 = a5;
  v10 = a7;
  sub_2644C9B58(a5, a9, a7, v11, v81, a1, a2);
  v25 = v79;
  v32 = v31;
  v33 = a9;
  if (v79)
  {
LABEL_123:
    sub_2644C20C0(v32, v33);
    for (i = v10; ; i = a9)
    {
LABEL_124:
      sub_2644C20C0(i, v9);

      __break(1u);
LABEL_125:
      sub_2644C20C0(v72, v11);
    }
  }

  sub_2644C20C0(v31, a9);
  v26 = v81[0];
  a9 = v77;
LABEL_92:
  result = sub_2644C20C0(v10, v9);
  *a9 = v26;
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2644C9B58@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, _DWORD *a5@<X8>, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  v9 = a3;
  v28[2] = *MEMORY[0x277D85DE8];
  v11 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v11)
    {
      v28[0] = a1;
      LOWORD(v28[1]) = a2;
      BYTE2(v28[1]) = BYTE2(a2);
      BYTE3(v28[1]) = BYTE3(a2);
      BYTE4(v28[1]) = BYTE4(a2);
      BYTE5(v28[1]) = BYTE5(a2);
      v12 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v12 != 2)
        {
          result = CCCryptorGCMOneshotEncrypt();
          v18 = result;
          goto LABEL_42;
        }

        v22 = *(a3 + 16);
        v21 = *(a3 + 24);
        sub_2644C206C(a3, a4);
        if (sub_2644EABFC() && __OFSUB__(v22, sub_2644EAC2C()))
        {
          goto LABEL_51;
        }

        if (!__OFSUB__(v21, v22))
        {
LABEL_34:
          sub_2644EAC1C();
LABEL_39:
          v18 = CCCryptorGCMOneshotEncrypt();
          result = sub_2644C20C0(v9, v8);
          goto LABEL_42;
        }

        goto LABEL_49;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      if (a3 >> 32 >= a3)
      {
        sub_2644C206C(a3, a4);
        if (!sub_2644EABFC() || !__OFSUB__(v9, sub_2644EAC2C()))
        {
          goto LABEL_34;
        }

        goto LABEL_53;
      }

      goto LABEL_47;
    }

    v27 = a5;
    v19 = a1;
    a5 = ((a1 >> 32) - a1);
    if (a1 >> 32 >= a1)
    {
      v9 = a7;
      v8 = a3;
      sub_2644C206C(a3, a4);
      if (!sub_2644EABFC() || !__OFSUB__(v19, sub_2644EAC2C()))
      {
        sub_2644EAC1C();
        sub_2644CA2B8(v8, a4, v28);
        v14 = v7;
        v15 = v8;
        v16 = a4;
        if (v7)
        {
          goto LABEL_17;
        }

        goto LABEL_11;
      }

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
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v11 == 2)
  {
    v27 = a5;
    a5 = *(a1 + 16);
    v13 = *(a1 + 24);
    sub_2644C206C(a3, a4);
    if (sub_2644EABFC() && __OFSUB__(a5, sub_2644EAC2C()))
    {
      goto LABEL_45;
    }

    if (!__OFSUB__(v13, a5))
    {
      sub_2644EAC1C();
      sub_2644CA2B8(v9, v8, v28);
      v14 = v7;
      v15 = v9;
      v16 = v8;
      if (v7)
      {
LABEL_17:
        sub_2644C20C0(v15, v16);

        __break(1u);
        goto LABEL_18;
      }

LABEL_11:
      result = sub_2644C20C0(v15, v16);
      v18 = v28[0];
      goto LABEL_12;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_18:
  v20 = v8 >> 62;
  memset(v28, 0, 14);
  if ((v8 >> 62) <= 1)
  {
    if (!v20)
    {
      goto LABEL_41;
    }

    if (v9 >> 32 >= v9)
    {
      sub_2644C206C(v9, v8);
      if (!sub_2644EABFC() || !__OFSUB__(v9, sub_2644EAC2C()))
      {
        sub_2644EAC1C();
        goto LABEL_39;
      }

LABEL_54:
      __break(1u);
    }

    goto LABEL_48;
  }

  if (v20 != 2)
  {
LABEL_41:
    result = CCCryptorGCMOneshotEncrypt();
    v18 = result;
    goto LABEL_42;
  }

  v27 = a5;
  v23 = *(v9 + 16);
  v24 = *(v9 + 24);
  sub_2644C206C(v9, v8);
  if (sub_2644EABFC() && __OFSUB__(v23, sub_2644EAC2C()))
  {
    goto LABEL_52;
  }

  if (__OFSUB__(v24, v23))
  {
    goto LABEL_50;
  }

  sub_2644EAC1C();
  v18 = CCCryptorGCMOneshotEncrypt();
  result = sub_2644C20C0(v9, v8);
LABEL_12:
  a5 = v27;
LABEL_42:
  *a5 = v18;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2644CA2B8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, _DWORD *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v4 != 2)
  {
LABEL_15:
    result = CCCryptorGCMOneshotEncrypt();
    goto LABEL_16;
  }

  v11 = a3;
  v5 = *(a1 + 16);
  v10 = *(a1 + 24);
  a3 = sub_2644EABFC();
  if (a3)
  {
    v6 = sub_2644EAC2C();
    if (__OFSUB__(v5, v6))
    {
      goto LABEL_18;
    }

    a3 = (a3 + v5 - v6);
  }

  if (__OFSUB__(v10, v5))
  {
    __break(1u);
LABEL_11:
    v7 = a1;
    if (a1 >> 32 >= a1)
    {
      v11 = a3;
      if (!sub_2644EABFC() || !__OFSUB__(v7, sub_2644EAC2C()))
      {
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  sub_2644EAC1C();
  result = CCCryptorGCMOneshotEncrypt();
  a3 = v11;
LABEL_16:
  *a3 = result;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncryptedData.init(initializationVector:tag:cipherText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t Data.hmac(key:algorithm:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v9 = *a3;
  v12[0] = sub_2644CFE44(qword_2644ED8A8[*a3]);
  v12[1] = v10;
  sub_2644C206C(a1, a2);
  sub_2644C206C(a4, a5);
  sub_2644CF504(v12, a1, a2, a4, a5, v9);
  return v12[0];
}

void sub_2644CA608(void *key, uint64_t a2, uint64_t a3, unint64_t a4, char a5, void *a6)
{
  data[2] = *MEMORY[0x277D85DE8];
  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      data[0] = a3;
      LOWORD(data[1]) = a4;
      BYTE2(data[1]) = BYTE2(a4);
      BYTE3(data[1]) = BYTE3(a4);
      if (key)
      {
        v10 = a2 - key;
      }

      else
      {
        v10 = 0;
      }

      BYTE4(data[1]) = BYTE4(a4);
      v11 = BYTE6(a4);
      BYTE5(data[1]) = BYTE5(a4);
      v12 = dword_2644ED8D8[a5];
      v13 = data;
      v14 = key;
      goto LABEL_39;
    }

    v23 = a3;
    v24 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      macOut = a6;
      v17 = sub_2644EABFC();
      if (!v17)
      {
LABEL_25:
        v26 = sub_2644EAC1C();
        if (v26 >= v24)
        {
          v27 = v24;
        }

        else
        {
          v27 = v26;
        }

        if (key)
        {
          v10 = a2 - key;
        }

        else
        {
          v10 = 0;
        }

        if (v17)
        {
          v11 = v27;
        }

        else
        {
          v11 = 0;
        }

LABEL_34:
        v12 = dword_2644ED8D8[a5];
        v14 = key;
        v13 = v17;
        a6 = macOut;
        goto LABEL_39;
      }

      v25 = sub_2644EAC2C();
      if (!__OFSUB__(v23, v25))
      {
        v17 += v23 - v25;
        goto LABEL_25;
      }

LABEL_43:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    macOut = a6;
    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    v17 = sub_2644EABFC();
    if (v17)
    {
      v18 = sub_2644EAC2C();
      if (__OFSUB__(v16, v18))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v17 += v16 - v18;
    }

    v19 = __OFSUB__(v15, v16);
    v20 = v15 - v16;
    if (!v19)
    {
      v21 = sub_2644EAC1C();
      if (v21 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      if (key)
      {
        v10 = a2 - key;
      }

      else
      {
        v10 = 0;
      }

      if (v17)
      {
        v11 = v22;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_34;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (key)
  {
    v10 = a2 - key;
  }

  else
  {
    v10 = 0;
  }

  memset(data, 0, 14);
  v12 = dword_2644ED8D8[a5];
  v13 = data;
  v14 = key;
  v11 = 0;
LABEL_39:
  CCHmac(v12, v14, v10, v13, v11, a6);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t EncryptedData.initializationVector.getter()
{
  v1 = *v0;
  sub_2644C206C(*v0, *(v0 + 8));
  return v1;
}

uint64_t EncryptedData.tag.getter()
{
  v1 = *(v0 + 16);
  sub_2644C206C(v1, *(v0 + 24));
  return v1;
}

uint64_t EncryptedData.cipherText.getter()
{
  v1 = *(v0 + 32);
  sub_2644C206C(v1, *(v0 + 40));
  return v1;
}

uint64_t EncryptedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2644EBACC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_2644D1034();
  sub_2644EB96C();
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_2644EB96C();
  v12 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_2644EB96C();
  __swift_destroy_boxed_opaque_existential_0(v10);
  *a2 = v8;
  a2[1] = v9;
  v6 = v12;
  a2[2] = v8;
  a2[3] = v6;
  a2[4] = v8;
  a2[5] = v9;
  sub_2644C206C(v8, v9);
  sub_2644C206C(v8, v6);
  sub_2644C206C(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_2644C20C0(v8, v9);
  sub_2644C20C0(v8, v6);
  return sub_2644C20C0(v8, v9);
}

uint64_t EncryptedData.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  v14 = v1[4];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2644C206C(v3, v4);
  sub_2644EBAFC();
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_2644D1088();
  sub_2644EB97C();
  sub_2644C20C0(v3, v4);
  if (!v2)
  {
    v9 = v7;
    v10 = v14;
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    sub_2644C206C(v5, v6);
    sub_2644EB97C();
    sub_2644C20C0(v5, v6);
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    sub_2644C206C(v10, v9);
    sub_2644EB97C();
    sub_2644C20C0(v10, v9);
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

unint64_t EncryptedData.decrypt(key:)(unint64_t result, unint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = *(result + 16);
    v10 = *(result + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 < 16)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 16)
      {
        goto LABEL_11;
      }

LABEL_15:
      sub_2644D0F90();
      swift_allocError();
      *v17 = 10;
      return swift_willThrow();
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!v9)
  {
    goto LABEL_18;
  }

  if (v9 != 2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 257)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = *(result + 16);
  v14 = *(result + 24);
  v12 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (v12)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v16 >= 257)
  {
    goto LABEL_15;
  }

LABEL_18:
  v18 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = result;
      v20 = a2;
      result = BYTE6(v8);
      goto LABEL_27;
    }

    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v19 = result;
      v20 = a2;
      result = HIDWORD(v7) - v7;
      goto LABEL_27;
    }

LABEL_38:
    __break(1u);
    return result;
  }

  if (v18 == 2)
  {
    v19 = result;
    v22 = *(v7 + 16);
    v21 = *(v7 + 24);
    result = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      v20 = a2;
      goto LABEL_27;
    }

    goto LABEL_37;
  }

  v19 = result;
  v20 = a2;
  result = 0;
LABEL_27:
  v31 = sub_2644CFE44(result);
  v32 = v23;
  sub_2644C206C(v7, v8);
  sub_2644C206C(v4, v3);
  sub_2644C206C(v19, v20);
  sub_2644C206C(v5, v6);
  v24 = sub_2644D11C8(&v31, v7, v8, v4, v3, v19, v20, v5, v6);
  v25 = v5;
  v26 = v3;
  v27 = v24;
  sub_2644C20C0(v25, v6);
  sub_2644C20C0(v19, v20);
  sub_2644C20C0(v4, v26);
  sub_2644C20C0(v7, v8);
  if (!v27)
  {
    return v31;
  }

  CryptoError.init(rawValue:)(v27);
  v28 = v33;
  sub_2644D0F90();
  swift_allocError();
  if (v28 == 13)
  {
    v30 = 8;
  }

  else
  {
    v30 = v28;
  }

  *v29 = v30;
  swift_willThrow();
  return sub_2644C20C0(v31, v32);
}

void sub_2644CAF3C(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t a6@<X7>, _DWORD *a7@<X8>, uint64_t a8, unint64_t a9)
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v15 = a8;
  v14 = a9;
  v107[2] = *MEMORY[0x277D85DE8];
  v16 = a2 >> 62;
  v102 = a7;
  if ((a2 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v21 = *(a1 + 16);
      v20 = *(a1 + 24);
      sub_2644C206C(a3, a4);
      sub_2644C206C(v10, v9);
      sub_2644C206C(a8, a9);
      sub_2644C206C(a8, a9);
      if (sub_2644EABFC() && __OFSUB__(v21, sub_2644EAC2C()))
      {
        goto LABEL_195;
      }

      if (!__OFSUB__(v20, v21))
      {
        sub_2644EAC1C();
        v12 = a3;
        v15 = a8;
        v14 = a9;
        sub_2644CD8FC(a3, a4, v10, v9, a8, a9, v107);
        if (v104)
        {
          sub_2644C20C0(a8, a9);
          sub_2644C20C0(a3, a4);
          v79 = v10;
LABEL_253:
          v83 = v9;
LABEL_256:
          sub_2644C20C0(v79, v83);
          v80 = v15;
          v81 = v14;
          goto LABEL_257;
        }

        sub_2644C20C0(a8, a9);
        v22 = v107[0];
        v11 = a4;
        a7 = v102;
LABEL_192:
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v10, v9);
        sub_2644C20C0(v15, v14);
        *a7 = v22;
        v78 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_194:
      __break(1u);
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
      goto LABEL_204;
    }

    memset(v107, 0, 14);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a8, a9);
    sub_2644C206C(v10, v9);
    sub_2644C206C(a8, a9);
    v24 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v30 = v12;
        v31 = *(v12 + 16);
        v32 = *(v12 + 24);
        sub_2644C206C(v30, v11);
        sub_2644C206C(v10, v9);
        sub_2644C206C(a8, a9);
        sub_2644C206C(v30, v11);
        if (sub_2644EABFC() && __OFSUB__(v31, sub_2644EAC2C()))
        {
          goto LABEL_202;
        }

        if (__OFSUB__(v32, v31))
        {
          goto LABEL_200;
        }

        sub_2644EAC1C();
        v15 = a8;
        sub_2644CEB14(v10, v9, a8, a9, v106);
        v12 = a3;
        if (!v104)
        {
          sub_2644C20C0(v10, v9);
          v22 = v106[0];
          goto LABEL_191;
        }

LABEL_252:
        sub_2644C20C0(a3, v11);
        sub_2644C20C0(a3, v11);
        sub_2644C20C0(v10, v9);
        sub_2644C20C0(v15, a9);
        sub_2644C20C0(v10, v9);
        sub_2644C20C0(v15, a9);
        v79 = v10;
        goto LABEL_253;
      }

      memset(v106, 0, 14);
      sub_2644C206C(a8, a9);
      v38 = v9 >> 62;
      if ((v9 >> 62) <= 1)
      {
        if (v38)
        {
          v89 = a8;
          if (v10 >> 32 < v10)
          {
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
            goto LABEL_217;
          }

          sub_2644C206C(a3, v11);
          sub_2644C206C(v10, v9);
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v11);
          sub_2644C206C(a8, a9);
          if (sub_2644EABFC() && __OFSUB__(v10, sub_2644EAC2C()))
          {
            goto LABEL_215;
          }

          goto LABEL_90;
        }

        v105[0] = v10;
        v26 = v10;
        LOWORD(v105[1]) = v9;
        BYTE2(v105[1]) = BYTE2(v9);
        BYTE3(v105[1]) = BYTE3(v9);
        BYTE4(v105[1]) = BYTE4(v9);
        BYTE5(v105[1]) = BYTE5(v9);
        v39 = a9 >> 62;
        if ((a9 >> 62) <= 1)
        {
          if (!v39)
          {
LABEL_59:
            sub_2644C206C(a3, v11);
            sub_2644C206C(v26, v9);
            sub_2644C206C(a8, a9);
            sub_2644C206C(a3, v11);
            v10 = v26;
            v12 = a3;
LABEL_188:
            v22 = CCCryptorGCMOneshotDecrypt();
            goto LABEL_189;
          }

          v99 = v11;
          v75 = v9;
          if (a8 >> 32 < a8)
          {
LABEL_219:
            __break(1u);
            goto LABEL_220;
          }

          sub_2644C206C(a3, v99);
          sub_2644C206C(v10, v9);
          v93 = a8;
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v99);
          if (sub_2644EABFC() && __OFSUB__(a8, sub_2644EAC2C()))
          {
            goto LABEL_243;
          }

LABEL_162:
          sub_2644EAC1C();
          v22 = CCCryptorGCMOneshotDecrypt();
          v15 = v93;
          sub_2644C20C0(v93, a9);
          v9 = v75;
          v10 = v26;
LABEL_175:
          v11 = v99;
          v12 = a3;
          goto LABEL_190;
        }

        if (v39 != 2)
        {
          goto LABEL_59;
        }

        v61 = *(a8 + 16);
        v62 = *(a8 + 24);
        sub_2644C206C(a3, v11);
        v85 = v9;
        sub_2644C206C(v10, v9);
        v91 = a8;
        sub_2644C206C(a8, a9);
        v98 = v11;
        sub_2644C206C(a3, v11);
        if (sub_2644EABFC() && __OFSUB__(v61, sub_2644EAC2C()))
        {
          goto LABEL_235;
        }

        if (__OFSUB__(v62, v61))
        {
          goto LABEL_227;
        }

LABEL_123:
        sub_2644EAC1C();
        v22 = CCCryptorGCMOneshotDecrypt();
        v15 = v91;
        sub_2644C20C0(v91, a9);
        v9 = v85;
        v10 = v26;
        v11 = v98;
LABEL_145:
        v12 = a3;
        goto LABEL_146;
      }

      if (v38 == 2)
      {
        v46 = v12;
        v47 = *(v10 + 16);
        v48 = *(v10 + 24);
        sub_2644C206C(v46, v11);
        sub_2644C206C(v10, v9);
        sub_2644C206C(a8, a9);
        sub_2644C206C(v46, v11);
        v88 = a8;
        sub_2644C206C(a8, a9);
        if (sub_2644EABFC() && __OFSUB__(v47, sub_2644EAC2C()))
        {
          goto LABEL_212;
        }

        if (__OFSUB__(v48, v47))
        {
          goto LABEL_210;
        }

        goto LABEL_73;
      }

      v53 = a9 >> 62;
      memset(v105, 0, 14);
      if ((a9 >> 62) <= 1)
      {
        if (!v53)
        {
          goto LABEL_187;
        }

        v87 = v9;
        if (a8 >> 32 < a8)
        {
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
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
          goto LABEL_247;
        }

        sub_2644C206C(a3, v11);
        sub_2644C206C(v10, v9);
        v95 = a8;
        sub_2644C206C(a8, a9);
        sub_2644C206C(a3, v11);
        if (sub_2644EABFC() && __OFSUB__(a8, sub_2644EAC2C()))
        {
LABEL_247:
          __break(1u);
        }

        goto LABEL_179;
      }

      if (v53 != 2)
      {
LABEL_187:
        sub_2644C206C(v12, v11);
        sub_2644C206C(v10, v9);
        sub_2644C206C(a8, a9);
        sub_2644C206C(v12, v11);
        goto LABEL_188;
      }

      v72 = v9;
      v73 = *(a8 + 16);
      v74 = *(a8 + 24);
      sub_2644C206C(v12, v11);
      v101 = v10;
      v86 = v72;
      sub_2644C206C(v10, v72);
      v69 = a8;
      sub_2644C206C(a8, a9);
      sub_2644C206C(v12, v11);
      if (sub_2644EABFC() && __OFSUB__(v73, sub_2644EAC2C()))
      {
        goto LABEL_239;
      }

      if (__OFSUB__(v74, v73))
      {
        goto LABEL_231;
      }
    }

    else
    {
      if (v24)
      {
        if (v12 >> 32 >= v12)
        {
          sub_2644C206C(v12, v11);
          sub_2644C206C(v10, v9);
          sub_2644C206C(a8, a9);
          sub_2644C206C(v12, v11);
          if (!sub_2644EABFC() || !__OFSUB__(v12, sub_2644EAC2C()))
          {
            sub_2644EAC1C();
            v33 = v10;
            v34 = v9;
            v35 = a8;
LABEL_48:
            sub_2644CEB14(v33, v34, v35, a9, v106);
            if (!v104)
            {
              sub_2644C20C0(v10, v9);
              v22 = v106[0];
              v12 = a3;
              goto LABEL_191;
            }

            goto LABEL_252;
          }

LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        goto LABEL_198;
      }

      v106[0] = v12;
      LOWORD(v106[1]) = v11;
      BYTE2(v106[1]) = BYTE2(v11);
      BYTE3(v106[1]) = BYTE3(v11);
      BYTE4(v106[1]) = BYTE4(v11);
      BYTE5(v106[1]) = BYTE5(v11);
      sub_2644C206C(a8, a9);
      v25 = v9 >> 62;
      if ((v9 >> 62) <= 1)
      {
        if (v25)
        {
          v89 = a8;
          if (v10 >> 32 < v10)
          {
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

          sub_2644C206C(a3, v11);
          sub_2644C206C(v10, v9);
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v11);
          sub_2644C206C(a8, a9);
          if (sub_2644EABFC() && __OFSUB__(v10, sub_2644EAC2C()))
          {
            goto LABEL_213;
          }

          goto LABEL_90;
        }

        v105[0] = v10;
        v26 = v10;
        LOWORD(v105[1]) = v9;
        BYTE2(v105[1]) = BYTE2(v9);
        BYTE3(v105[1]) = BYTE3(v9);
        BYTE4(v105[1]) = BYTE4(v9);
        BYTE5(v105[1]) = BYTE5(v9);
        v27 = a9 >> 62;
        if ((a9 >> 62) <= 1)
        {
          if (!v27)
          {
            goto LABEL_59;
          }

          v99 = v11;
          v75 = v9;
          if (a8 >> 32 < a8)
          {
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
            goto LABEL_219;
          }

          sub_2644C206C(a3, v99);
          sub_2644C206C(v10, v9);
          v93 = a8;
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v99);
          if (sub_2644EABFC() && __OFSUB__(a8, sub_2644EAC2C()))
          {
            goto LABEL_241;
          }

          goto LABEL_162;
        }

        if (v27 != 2)
        {
          goto LABEL_59;
        }

        v56 = *(a8 + 16);
        v57 = *(a8 + 24);
        sub_2644C206C(a3, v11);
        v85 = v9;
        sub_2644C206C(v10, v9);
        v91 = a8;
        sub_2644C206C(a8, a9);
        v98 = v11;
        sub_2644C206C(a3, v11);
        if (sub_2644EABFC() && __OFSUB__(v56, sub_2644EAC2C()))
        {
          goto LABEL_233;
        }

        if (__OFSUB__(v57, v56))
        {
          goto LABEL_225;
        }

        goto LABEL_123;
      }

      if (v25 == 2)
      {
        v42 = v12;
        v43 = *(v10 + 16);
        v44 = *(v10 + 24);
        sub_2644C206C(v42, v11);
        sub_2644C206C(v10, v9);
        sub_2644C206C(a8, a9);
        sub_2644C206C(v42, v11);
        v88 = a8;
        sub_2644C206C(a8, a9);
        if (sub_2644EABFC() && __OFSUB__(v43, sub_2644EAC2C()))
        {
          goto LABEL_211;
        }

        if (__OFSUB__(v44, v43))
        {
          goto LABEL_209;
        }

LABEL_73:
        sub_2644EAC1C();
        v15 = v88;
        sub_2644CF230(v88, a9, v105);
        v12 = a3;
        if (!v104)
        {
          sub_2644C20C0(v88, a9);
          sub_2644C20C0(v88, a9);
          v22 = v105[0];
          goto LABEL_146;
        }

LABEL_251:
        sub_2644C20C0(v12, v11);
        v82 = v12;
LABEL_255:
        sub_2644C20C0(v82, v11);
        sub_2644C20C0(v10, v9);
        sub_2644C20C0(v15, a9);
        sub_2644C20C0(v10, v9);
        sub_2644C20C0(v15, a9);
        sub_2644C20C0(v10, v9);
        sub_2644C20C0(v15, a9);
        v79 = v15;
        v83 = a9;
        goto LABEL_256;
      }

      v51 = a9 >> 62;
      memset(v105, 0, 14);
      if ((a9 >> 62) <= 1)
      {
        if (!v51)
        {
          goto LABEL_187;
        }

        v87 = v9;
        if (a8 >> 32 < a8)
        {
LABEL_221:
          __break(1u);
          goto LABEL_222;
        }

        sub_2644C206C(a3, v11);
        sub_2644C206C(v10, v9);
        v95 = a8;
        sub_2644C206C(a8, a9);
        sub_2644C206C(a3, v11);
        if (sub_2644EABFC() && __OFSUB__(a8, sub_2644EAC2C()))
        {
          goto LABEL_245;
        }

LABEL_179:
        sub_2644EAC1C();
        v22 = CCCryptorGCMOneshotDecrypt();
        v15 = v95;
        sub_2644C20C0(v95, a9);
        v9 = v87;
        v12 = a3;
        goto LABEL_190;
      }

      if (v51 != 2)
      {
        goto LABEL_187;
      }

      v66 = v9;
      v67 = *(a8 + 16);
      v68 = *(a8 + 24);
      sub_2644C206C(v12, v11);
      v101 = v10;
      v86 = v66;
      sub_2644C206C(v10, v66);
      v69 = a8;
      sub_2644C206C(a8, a9);
      sub_2644C206C(v12, v11);
      if (sub_2644EABFC() && __OFSUB__(v67, sub_2644EAC2C()))
      {
        goto LABEL_237;
      }

      if (__OFSUB__(v68, v67))
      {
        goto LABEL_229;
      }
    }

    sub_2644EAC1C();
    v22 = CCCryptorGCMOneshotDecrypt();
    v15 = v69;
    sub_2644C20C0(v69, a9);
    v9 = v86;
    v10 = v101;
    goto LABEL_145;
  }

  if (!v16)
  {
    v107[0] = a1;
    LOWORD(v107[1]) = a2;
    BYTE2(v107[1]) = BYTE2(a2);
    BYTE3(v107[1]) = BYTE3(a2);
    BYTE4(v107[1]) = BYTE4(a2);
    BYTE5(v107[1]) = BYTE5(a2);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a8, a9);
    sub_2644C206C(v10, v9);
    sub_2644C206C(a8, a9);
    v17 = v11 >> 62;
    if ((v11 >> 62) <= 1)
    {
      if (!v17)
      {
        v106[0] = a3;
        LOWORD(v106[1]) = v11;
        BYTE2(v106[1]) = BYTE2(v11);
        BYTE3(v106[1]) = BYTE3(v11);
        BYTE4(v106[1]) = BYTE4(v11);
        BYTE5(v106[1]) = BYTE5(v11);
        sub_2644C206C(a8, a9);
        v18 = v9 >> 62;
        if ((v9 >> 62) <= 1)
        {
          if (!v18)
          {
            v105[0] = v10;
            v100 = v10;
            LOWORD(v105[1]) = v9;
            BYTE2(v105[1]) = BYTE2(v9);
            BYTE3(v105[1]) = BYTE3(v9);
            BYTE4(v105[1]) = BYTE4(v9);
            BYTE5(v105[1]) = BYTE5(v9);
            v19 = a9 >> 62;
            if ((a9 >> 62) <= 1)
            {
              if (!v19)
              {
                goto LABEL_54;
              }

              if (a8 >> 32 >= a8)
              {
                sub_2644C206C(a3, v11);
                sub_2644C206C(v10, v9);
                v92 = a8;
                sub_2644C206C(a8, a9);
                sub_2644C206C(a3, v11);
                if (!sub_2644EABFC() || !__OFSUB__(a8, sub_2644EAC2C()))
                {
LABEL_158:
                  sub_2644EAC1C();
                  v22 = CCCryptorGCMOneshotDecrypt();
                  v15 = v92;
                  sub_2644C20C0(v92, a9);
                  v10 = v100;
                  v12 = a3;
                  goto LABEL_190;
                }

                goto LABEL_240;
              }

              goto LABEL_216;
            }

            if (v19 == 2)
            {
              v54 = *(a8 + 16);
              v55 = *(a8 + 24);
              sub_2644C206C(a3, v11);
              v84 = v9;
              sub_2644C206C(v10, v9);
              v90 = a8;
              sub_2644C206C(a8, a9);
              v97 = v11;
              sub_2644C206C(a3, v11);
              if (sub_2644EABFC() && __OFSUB__(v54, sub_2644EAC2C()))
              {
                goto LABEL_232;
              }

              if (__OFSUB__(v55, v54))
              {
                goto LABEL_224;
              }

              goto LABEL_118;
            }

LABEL_182:
            sub_2644C206C(a3, v11);
            sub_2644C206C(v100, v9);
            sub_2644C206C(a8, a9);
            sub_2644C206C(a3, v11);
            v12 = a3;
            v10 = v100;
            goto LABEL_188;
          }

          v40 = v10;
          v41 = v10 >> 32;
          if (v10 >> 32 >= v10)
          {
            goto LABEL_76;
          }

          goto LABEL_205;
        }

        if (v18 == 2)
        {
          v40 = *(v10 + 16);
          v41 = *(v10 + 24);
LABEL_76:
          v12 = a3;
          sub_2644C206C(a3, v11);
          sub_2644C206C(v10, v9);
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v11);
          sub_2644C206C(a8, a9);
          v45 = v9 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_77:
          v49 = sub_2644D10DC(v40, v41, v45, a8, a9);
          if (!v104)
          {
            v22 = v49;
            sub_2644C20C0(a8, a9);
LABEL_189:
            sub_2644C20C0(a8, a9);
            goto LABEL_190;
          }

          goto LABEL_251;
        }

        v50 = a9 >> 62;
        memset(v105, 0, 14);
        if ((a9 >> 62) <= 1)
        {
          if (!v50)
          {
            goto LABEL_100;
          }

          v99 = v11;
          v76 = v10;
          v77 = v9;
          if (a8 >> 32 < a8)
          {
LABEL_220:
            __break(1u);
            goto LABEL_221;
          }

          sub_2644C206C(a3, v99);
          sub_2644C206C(v76, v9);
          v94 = a8;
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v99);
          if (sub_2644EABFC() && __OFSUB__(a8, sub_2644EAC2C()))
          {
            goto LABEL_244;
          }

LABEL_174:
          sub_2644EAC1C();
          v22 = CCCryptorGCMOneshotDecrypt();
          v15 = v94;
          sub_2644C20C0(v94, a9);
          v9 = v77;
          v10 = v76;
          goto LABEL_175;
        }

        if (v50 != 2)
        {
          goto LABEL_100;
        }

        v63 = *(a8 + 16);
        v64 = *(a8 + 24);
        sub_2644C206C(a3, v11);
        v100 = v10;
        v84 = v9;
        sub_2644C206C(v10, v9);
        v65 = a8;
        sub_2644C206C(a8, a9);
        v97 = v11;
        sub_2644C206C(a3, v11);
        if (sub_2644EABFC() && __OFSUB__(v63, sub_2644EAC2C()))
        {
          goto LABEL_236;
        }

        if (__OFSUB__(v64, v63))
        {
          goto LABEL_228;
        }

        goto LABEL_138;
      }

      if (a3 >> 32 >= a3)
      {
        sub_2644C206C(a3, v11);
        sub_2644C206C(v10, v9);
        sub_2644C206C(a8, a9);
        sub_2644C206C(a3, v11);
        if (!sub_2644EABFC() || !__OFSUB__(a3, sub_2644EAC2C()))
        {
          sub_2644EAC1C();
          v33 = v10;
          v34 = v9;
          v15 = a8;
          v35 = a8;
          goto LABEL_48;
        }

        goto LABEL_203;
      }

      goto LABEL_197;
    }

    if (v17 == 2)
    {
      v29 = *(a3 + 16);
      v28 = *(a3 + 24);
      sub_2644C206C(a3, v11);
      sub_2644C206C(v10, v9);
      sub_2644C206C(a8, a9);
      sub_2644C206C(a3, v11);
      if (sub_2644EABFC() && __OFSUB__(v29, sub_2644EAC2C()))
      {
        goto LABEL_201;
      }

      if (__OFSUB__(v28, v29))
      {
        goto LABEL_199;
      }

      sub_2644EAC1C();
      v15 = a8;
      sub_2644CEB14(v10, v9, a8, a9, v106);
      if (!v104)
      {
        sub_2644C20C0(v10, v9);
        v22 = v106[0];
        v12 = a3;
        a7 = v102;
LABEL_191:
        sub_2644C20C0(v15, a9);
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v10, v9);
        sub_2644C20C0(v15, a9);
        goto LABEL_192;
      }

      goto LABEL_252;
    }

    memset(v106, 0, 14);
    sub_2644C206C(a8, a9);
    v36 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v36 == 2)
      {
        v40 = *(v10 + 16);
        v41 = *(v10 + 24);
        v12 = a3;
        sub_2644C206C(a3, v11);
        sub_2644C206C(v10, v9);
        sub_2644C206C(a8, a9);
        sub_2644C206C(a3, v11);
        sub_2644C206C(a8, a9);
        v45 = v9 & 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_77;
      }

      v52 = a9 >> 62;
      memset(v105, 0, 14);
      if ((a9 >> 62) <= 1)
      {
        if (!v52)
        {
LABEL_100:
          sub_2644C206C(a3, v11);
          sub_2644C206C(v10, v9);
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v11);
          v12 = a3;
          goto LABEL_188;
        }

        v99 = v11;
        v76 = v10;
        v77 = v9;
        if (a8 >> 32 < a8)
        {
LABEL_222:
          __break(1u);
          goto LABEL_223;
        }

        sub_2644C206C(a3, v99);
        sub_2644C206C(v76, v9);
        v94 = a8;
        sub_2644C206C(a8, a9);
        sub_2644C206C(a3, v99);
        if (sub_2644EABFC() && __OFSUB__(a8, sub_2644EAC2C()))
        {
          goto LABEL_246;
        }

        goto LABEL_174;
      }

      if (v52 != 2)
      {
        goto LABEL_100;
      }

      v70 = *(a8 + 16);
      v71 = *(a8 + 24);
      sub_2644C206C(a3, v11);
      v100 = v10;
      v84 = v9;
      sub_2644C206C(v10, v9);
      v65 = a8;
      sub_2644C206C(a8, a9);
      v97 = v11;
      sub_2644C206C(a3, v11);
      if (sub_2644EABFC() && __OFSUB__(v70, sub_2644EAC2C()))
      {
        goto LABEL_238;
      }

      if (__OFSUB__(v71, v70))
      {
        goto LABEL_230;
      }

LABEL_138:
      sub_2644EAC1C();
      v22 = CCCryptorGCMOneshotDecrypt();
      v15 = v65;
      v60 = v65;
      goto LABEL_139;
    }

    if (!v36)
    {
      v105[0] = v10;
      v100 = v10;
      LOWORD(v105[1]) = v9;
      BYTE2(v105[1]) = BYTE2(v9);
      BYTE3(v105[1]) = BYTE3(v9);
      BYTE4(v105[1]) = BYTE4(v9);
      BYTE5(v105[1]) = BYTE5(v9);
      v37 = a9 >> 62;
      if ((a9 >> 62) <= 1)
      {
        if (!v37)
        {
LABEL_54:
          sub_2644C206C(a3, v11);
          sub_2644C206C(v100, v9);
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v11);
          v12 = a3;
          v10 = v100;
          v22 = CCCryptorGCMOneshotDecrypt();
          sub_2644C20C0(a8, a9);
LABEL_146:
          a7 = v102;
          goto LABEL_190;
        }

        if (a8 >> 32 >= a8)
        {
          sub_2644C206C(a3, v11);
          sub_2644C206C(v10, v9);
          v92 = a8;
          sub_2644C206C(a8, a9);
          sub_2644C206C(a3, v11);
          if (!sub_2644EABFC() || !__OFSUB__(a8, sub_2644EAC2C()))
          {
            goto LABEL_158;
          }

          goto LABEL_242;
        }

        goto LABEL_218;
      }

      if (v37 == 2)
      {
        v58 = *(a8 + 16);
        v59 = *(a8 + 24);
        sub_2644C206C(a3, v11);
        v84 = v9;
        sub_2644C206C(v10, v9);
        v90 = a8;
        sub_2644C206C(a8, a9);
        v97 = v11;
        sub_2644C206C(a3, v11);
        if (sub_2644EABFC() && __OFSUB__(v58, sub_2644EAC2C()))
        {
          goto LABEL_234;
        }

        if (__OFSUB__(v59, v58))
        {
          goto LABEL_226;
        }

LABEL_118:
        sub_2644EAC1C();
        v22 = CCCryptorGCMOneshotDecrypt();
        v15 = v90;
        v60 = v90;
LABEL_139:
        sub_2644C20C0(v60, a9);
        v9 = v84;
        v11 = v97;
        v10 = v100;
        goto LABEL_145;
      }

      goto LABEL_182;
    }

    v89 = a8;
    if (v10 >> 32 < v10)
    {
      goto LABEL_207;
    }

    sub_2644C206C(a3, v11);
    sub_2644C206C(v10, v9);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a3, v11);
    sub_2644C206C(a8, a9);
    if (sub_2644EABFC() && __OFSUB__(v10, sub_2644EAC2C()))
    {
      goto LABEL_214;
    }

LABEL_90:
    sub_2644EAC1C();
    v15 = v89;
    sub_2644CF230(v89, a9, v105);
    if (!v104)
    {
      sub_2644C20C0(v89, a9);
      sub_2644C20C0(v89, a9);
      v22 = v105[0];
      v12 = a3;
LABEL_190:
      sub_2644C20C0(v10, v9);
      goto LABEL_191;
    }

    sub_2644C20C0(a3, v11);
    v82 = a3;
    goto LABEL_255;
  }

  v23 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_194;
  }

  sub_2644C206C(a3, a4);
  sub_2644C206C(v10, v9);
  sub_2644C206C(a8, a9);
  sub_2644C206C(a8, a9);
  if (sub_2644EABFC() && __OFSUB__(v23, sub_2644EAC2C()))
  {
    goto LABEL_196;
  }

  sub_2644EAC1C();
  v12 = a3;
  sub_2644CD8FC(a3, v11, v10, v9, a8, a9, v107);
  if (!v104)
  {
    sub_2644C20C0(a8, a9);
    v22 = v107[0];
    v15 = a8;
    v14 = a9;
    a7 = v102;
    goto LABEL_192;
  }

  sub_2644C20C0(a8, a9);
  sub_2644C20C0(a3, v11);
  sub_2644C20C0(v10, v9);
  v80 = a8;
  v81 = a9;
LABEL_257:
  sub_2644C20C0(v80, v81);

  __break(1u);
}

void sub_2644CD8FC(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t a6@<X7>, _DWORD *a7@<X8>)
{
  v8 = v7;
  v9 = a5;
  v82[2] = *MEMORY[0x277D85DE8];
  v13 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v80 = a7;
    if (!v13)
    {
      v82[0] = a1;
      LOWORD(v82[1]) = a2;
      BYTE2(v82[1]) = BYTE2(a2);
      BYTE3(v82[1]) = BYTE3(a2);
      BYTE4(v82[1]) = BYTE4(a2);
      BYTE5(v82[1]) = BYTE5(a2);
      v14 = a6;
      sub_2644C206C(a5, a6);
      v15 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v15 != 2)
        {
          v44 = v14 >> 62;
          memset(v81, 0, 14);
          if ((v14 >> 62) <= 1)
          {
            if (!v44)
            {
LABEL_50:
              v45 = a3;
              sub_2644C206C(a3, a4);
              v28 = CCCryptorGCMOneshotDecrypt();
              sub_2644C20C0(v45, a4);
              goto LABEL_14;
            }

            v77 = v9;
            if (v9 >> 32 >= v9)
            {
              v75 = a3;
              sub_2644C206C(a3, a4);
              if (!sub_2644EABFC() || !__OFSUB__(v9, sub_2644EAC2C()))
              {
                goto LABEL_102;
              }

              goto LABEL_131;
            }

            goto LABEL_119;
          }

          if (v44 == 2)
          {
            v57 = v9;
            v58 = *(v9 + 16);
            v74 = a3;
            v77 = v57;
            v59 = *(v57 + 24);
            sub_2644C206C(a3, a4);
            if (sub_2644EABFC() && __OFSUB__(v58, sub_2644EAC2C()))
            {
              goto LABEL_127;
            }

            if (__OFSUB__(v59, v58))
            {
              goto LABEL_123;
            }

LABEL_98:
            sub_2644EAC1C();
            v28 = CCCryptorGCMOneshotDecrypt();
            v70 = v74;
            v71 = a4;
            goto LABEL_101;
          }

          v29 = a7;
LABEL_89:
          sub_2644C206C(a3, a4);
          v66 = CCCryptorGCMOneshotDecrypt();
          v67 = a3;
          v28 = v66;
          sub_2644C20C0(v67, a4);
          goto LABEL_15;
        }

        v38 = v9;
        v39 = *(a3 + 16);
        v40 = *(a3 + 24);
        v73 = a3;
        sub_2644C206C(a3, a4);
        if (sub_2644EABFC() && __OFSUB__(v39, sub_2644EAC2C()))
        {
          goto LABEL_113;
        }

        if (!__OFSUB__(v40, v39))
        {
          sub_2644EAC1C();
          v9 = v38;
          goto LABEL_40;
        }

        goto LABEL_111;
      }

      if (!v15)
      {
        v81[0] = a3;
        LOWORD(v81[1]) = a4;
        BYTE2(v81[1]) = BYTE2(a4);
        BYTE3(v81[1]) = BYTE3(a4);
        BYTE4(v81[1]) = BYTE4(a4);
        BYTE5(v81[1]) = BYTE5(a4);
        v16 = v14 >> 62;
        if ((v14 >> 62) <= 1)
        {
          if (!v16)
          {
            goto LABEL_50;
          }

          v77 = v9;
          if (v9 >> 32 >= v9)
          {
            v75 = a3;
            sub_2644C206C(a3, a4);
            if (!sub_2644EABFC() || !__OFSUB__(v9, sub_2644EAC2C()))
            {
LABEL_102:
              sub_2644EAC1C();
              v28 = CCCryptorGCMOneshotDecrypt();
              sub_2644C20C0(v75, a4);
              goto LABEL_103;
            }

            goto LABEL_129;
          }

          goto LABEL_117;
        }

        if (v16 == 2)
        {
          v49 = v9;
          v50 = *(v9 + 16);
          v77 = v49;
          v51 = *(v49 + 24);
          v74 = a3;
          sub_2644C206C(a3, a4);
          if (sub_2644EABFC() && __OFSUB__(v50, sub_2644EAC2C()))
          {
            goto LABEL_125;
          }

          if (__OFSUB__(v51, v50))
          {
            goto LABEL_121;
          }

          goto LABEL_98;
        }

        v29 = a7;
        goto LABEL_89;
      }

      v38 = v9;
      if (a3 >> 32 >= a3)
      {
        v73 = a3;
        sub_2644C206C(a3, a4);
        if (!sub_2644EABFC() || !__OFSUB__(a3, sub_2644EAC2C()))
        {
          sub_2644EAC1C();
LABEL_40:
          sub_2644CF230(v38, v14, v81);
          v8 = v7;
          if (!v7)
          {
            sub_2644C20C0(v73, a4);
            v28 = v81[0];
            goto LABEL_14;
          }

          goto LABEL_133;
        }

        goto LABEL_115;
      }

      goto LABEL_109;
    }

    v32 = a1;
    if (a1 >> 32 >= a1)
    {
      sub_2644C206C(a3, a4);
      v25 = a6;
      sub_2644C206C(a5, a6);
      if (!sub_2644EABFC() || !__OFSUB__(v32, sub_2644EAC2C()))
      {
        v9 = a5;
        sub_2644EAC1C();
        sub_2644CEB14(a3, a4, a5, a6, v82);
        v8 = v7;
        v26 = a3;
        v27 = a4;
        if (v7)
        {
          goto LABEL_20;
        }

LABEL_13:
        sub_2644C20C0(v26, v27);
        v28 = v82[0];
        v14 = v25;
LABEL_14:
        v29 = v80;
LABEL_15:
        sub_2644C20C0(v9, v14);
        *v29 = v28;
        v30 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    __break(1u);
    goto LABEL_106;
  }

  if (v13 != 2)
  {
    memset(v82, 0, 14);
    v14 = a6;
    sub_2644C206C(a5, a6);
    v36 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v36 != 2)
      {
        v46 = v14 >> 62;
        memset(v81, 0, 14);
        if ((v14 >> 62) <= 1)
        {
          v29 = a7;
          if (v46)
          {
            if (v9 >> 32 >= v9)
            {
              v76 = a3;
              sub_2644C206C(a3, a4);
              if (!sub_2644EABFC() || !__OFSUB__(v9, sub_2644EAC2C()))
              {
                sub_2644EAC1C();
                v28 = CCCryptorGCMOneshotDecrypt();
                sub_2644C20C0(v76, a4);
                goto LABEL_15;
              }

LABEL_132:
              __break(1u);
            }

            goto LABEL_120;
          }

          v47 = a3;
          sub_2644C206C(a3, a4);
          v28 = CCCryptorGCMOneshotDecrypt();
          v48 = v47;
LABEL_92:
          sub_2644C20C0(v48, a4);
          goto LABEL_15;
        }

        if (v46 == 2)
        {
          v60 = a4;
          v80 = a7;
          v61 = v9;
          v62 = *(v9 + 16);
          v77 = v61;
          v63 = *(v61 + 24);
          v64 = a3;
          v65 = v60;
          sub_2644C206C(a3, v60);
          if (sub_2644EABFC() && __OFSUB__(v62, sub_2644EAC2C()))
          {
            goto LABEL_128;
          }

          if (__OFSUB__(v63, v62))
          {
            goto LABEL_124;
          }

          sub_2644EAC1C();
          v28 = CCCryptorGCMOneshotDecrypt();
          v70 = v64;
          v71 = v65;
          goto LABEL_101;
        }

        v29 = a7;
LABEL_91:
        sub_2644C206C(a3, a4);
        v68 = CCCryptorGCMOneshotDecrypt();
        v69 = a3;
        v28 = v68;
        v48 = v69;
        goto LABEL_92;
      }

      v29 = a7;
      v73 = a3;
      v41 = v9;
      v42 = *(a3 + 16);
      v43 = *(a3 + 24);
      sub_2644C206C(a3, a4);
      if (sub_2644EABFC() && __OFSUB__(v42, sub_2644EAC2C()))
      {
        goto LABEL_114;
      }

      if (__OFSUB__(v43, v42))
      {
        goto LABEL_112;
      }

      sub_2644EAC1C();
      v9 = v41;
    }

    else
    {
      if (!v36)
      {
        v81[0] = a3;
        LOWORD(v81[1]) = a4;
        BYTE2(v81[1]) = BYTE2(a4);
        BYTE3(v81[1]) = BYTE3(a4);
        BYTE4(v81[1]) = BYTE4(a4);
        BYTE5(v81[1]) = BYTE5(a4);
        v37 = v14 >> 62;
        if ((v14 >> 62) <= 1)
        {
          v80 = a7;
          if (!v37)
          {
            goto LABEL_50;
          }

          v77 = v9;
          if (v9 >> 32 >= v9)
          {
            v75 = a3;
            sub_2644C206C(a3, a4);
            if (!sub_2644EABFC() || !__OFSUB__(v9, sub_2644EAC2C()))
            {
              goto LABEL_102;
            }

            goto LABEL_130;
          }

          goto LABEL_118;
        }

        if (v37 == 2)
        {
          v52 = a4;
          v80 = a7;
          v53 = v9;
          v54 = *(v9 + 16);
          v77 = v53;
          v79 = a4;
          v55 = *(v53 + 24);
          v56 = a3;
          sub_2644C206C(a3, v52);
          if (sub_2644EABFC() && __OFSUB__(v54, sub_2644EAC2C()))
          {
            goto LABEL_126;
          }

          if (__OFSUB__(v55, v54))
          {
            goto LABEL_122;
          }

          sub_2644EAC1C();
          v28 = CCCryptorGCMOneshotDecrypt();
          v70 = v56;
          v71 = v79;
LABEL_101:
          sub_2644C20C0(v70, v71);
LABEL_103:
          v9 = v77;
          goto LABEL_14;
        }

        v29 = a7;
        goto LABEL_91;
      }

      v29 = a7;
      v41 = v9;
      if (a3 >> 32 < a3)
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

      v73 = a3;
      sub_2644C206C(a3, a4);
      if (sub_2644EABFC() && __OFSUB__(a3, sub_2644EAC2C()))
      {
        goto LABEL_116;
      }

      sub_2644EAC1C();
    }

    sub_2644CF230(v41, v14, v81);
    if (!v7)
    {
      sub_2644C20C0(v73, a4);
      v28 = v81[0];
      goto LABEL_15;
    }

LABEL_133:
    sub_2644C20C0(v73, a4);
    v34 = v9;
    v35 = v14;
    goto LABEL_134;
  }

  v80 = a7;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  sub_2644C206C(a3, a4);
  v23 = a5;
  v24 = a5;
  v25 = a6;
  sub_2644C206C(v24, a6);
  if (sub_2644EABFC() && __OFSUB__(v19, sub_2644EAC2C()))
  {
    goto LABEL_107;
  }

  if (__OFSUB__(v20, v19))
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_2644EAC1C();
  v9 = v23;
  sub_2644CEB14(a3, a4, v23, a6, v82);
  v8 = v7;
  v26 = a3;
  v27 = a4;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_20:
  sub_2644C20C0(v26, v27);
  v34 = v9;
  v35 = v25;
LABEL_134:
  sub_2644C20C0(v34, v35);

  __break(1u);
}

void sub_2644CEB14(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, _DWORD *a5@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v16 = a4 >> 62;
      memset(v24, 0, 14);
      if ((a4 >> 62) <= 1)
      {
        if (!v16)
        {
          goto LABEL_38;
        }

        if (a3 >> 32 >= a3)
        {
          sub_2644C206C(a3, a4);
          if (!sub_2644EABFC() || !__OFSUB__(a3, sub_2644EAC2C()))
          {
            goto LABEL_37;
          }

LABEL_54:
          __break(1u);
        }

        goto LABEL_48;
      }

      if (v16 == 2)
      {
        v22 = a5;
        v19 = *(a3 + 16);
        v20 = *(a3 + 24);
        sub_2644C206C(a3, a4);
        if (sub_2644EABFC() && __OFSUB__(v19, sub_2644EAC2C()))
        {
          goto LABEL_52;
        }

        if (__OFSUB__(v20, v19))
        {
          goto LABEL_50;
        }

LABEL_43:
        sub_2644EAC1C();
        v15 = CCCryptorGCMOneshotDecrypt();
        sub_2644C20C0(a3, a4);
        goto LABEL_18;
      }

LABEL_38:
      v15 = CCCryptorGCMOneshotDecrypt();
      goto LABEL_39;
    }

    v22 = a5;
    v23 = v5;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    sub_2644C206C(a3, a4);
    a5 = sub_2644EABFC();
    if (a5)
    {
      v13 = sub_2644EAC2C();
      if (__OFSUB__(v11, v13))
      {
LABEL_45:
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
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      a5 = (a5 + v11 - v13);
    }

    if (!__OFSUB__(v12, v11))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v24[0] = a1;
    LOWORD(v24[1]) = a2;
    BYTE2(v24[1]) = BYTE2(a2);
    BYTE3(v24[1]) = BYTE3(a2);
    BYTE4(v24[1]) = BYTE4(a2);
    BYTE5(v24[1]) = BYTE5(a2);
    v10 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v10)
      {
        goto LABEL_38;
      }

      if (a3 >> 32 >= a3)
      {
        sub_2644C206C(a3, a4);
        if (!sub_2644EABFC() || !__OFSUB__(a3, sub_2644EAC2C()))
        {
LABEL_37:
          sub_2644EAC1C();
          v15 = CCCryptorGCMOneshotDecrypt();
          sub_2644C20C0(a3, a4);
          goto LABEL_39;
        }

        goto LABEL_53;
      }

      goto LABEL_47;
    }

    if (v10 == 2)
    {
      v22 = a5;
      v18 = *(a3 + 16);
      v17 = *(a3 + 24);
      sub_2644C206C(a3, a4);
      if (sub_2644EABFC() && __OFSUB__(v18, sub_2644EAC2C()))
      {
        goto LABEL_51;
      }

      if (__OFSUB__(v17, v18))
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v14 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_45;
  }

  v22 = a5;
  v23 = v5;
  sub_2644C206C(a3, a4);
  if (sub_2644EABFC() && __OFSUB__(v14, sub_2644EAC2C()))
  {
    goto LABEL_46;
  }

LABEL_16:
  sub_2644EAC1C();
  sub_2644CF230(a3, a4, v24);
  if (!v23)
  {
    sub_2644C20C0(a3, a4);
    v15 = v24[0];
LABEL_18:
    a5 = v22;
LABEL_39:
    *a5 = v15;
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  sub_2644C20C0(a3, a4);

  __break(1u);
}

uint64_t sub_2644CF230@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, _DWORD *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v5 != 2)
  {
LABEL_14:
    result = CCCryptorGCMOneshotDecrypt();
    goto LABEL_15;
  }

  v11 = a3;
  v6 = *(a1 + 16);
  v10 = *(a1 + 24);
  a3 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
  if (sub_2644EABFC())
  {
    a3 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
    if (__OFSUB__(v6, sub_2644EAC2C()))
    {
      goto LABEL_17;
    }
  }

  if (__OFSUB__(v10, v6))
  {
    __break(1u);
LABEL_10:
    v7 = a1;
    if (a1 >> 32 >= a1)
    {
      v11 = a3;
      if (!sub_2644EABFC() || !__OFSUB__(v7, sub_2644EAC2C()))
      {
        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  sub_2644EAC1C();
  result = CCCryptorGCMOneshotDecrypt();
  a3 = v11;
LABEL_15:
  *a3 = result;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2644CF504(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      *(&v45 + 7) = 0;
      *&v45 = 0;
      sub_2644C206C(a4, a5);
      sub_2644CFC14(a2, a3, a4, a5, a6, &v45);
      sub_2644C20C0(a2, a3);
      goto LABEL_20;
    }

    sub_2644C206C(a4, a5);
    v40 = a3;
    v42 = a2;
    sub_2644C206C(a2, a3);

    sub_2644C20C0(v12, v11);
    *&v45 = v12;
    *(&v45 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v17 = *(&v45 + 1);
    v18 = *(v45 + 16);
    v19 = *(v45 + 24);
    v20 = sub_2644EABFC();
    if (!v20)
    {
      sub_2644C20C0(v42, a3);
      result = sub_2644C20C0(a4, a5);
      __break(1u);
      goto LABEL_28;
    }

    v21 = v20;
    v22 = sub_2644EAC2C();
    v23 = v18 - v22;
    if (!__OFSUB__(v18, v22))
    {
      if (!__OFSUB__(v19, v18))
      {
        sub_2644EAC1C();
        sub_2644C206C(a4, a5);
        sub_2644CFC14(v42, v40, a4, a5, a6, (v21 + v23));
        sub_2644C20C0(v42, v40);
        sub_2644C20C0(a4, a5);
        sub_2644C20C0(v42, v40);
        *a1 = v45;
        a1[1] = v17 | 0x8000000000000000;
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v13)
  {
    sub_2644C206C(a4, a5);
    sub_2644C206C(a2, a3);
    sub_2644C20C0(v12, v11);
    *&v45 = v12;
    WORD4(v45) = v11;
    BYTE10(v45) = BYTE2(v11);
    BYTE11(v45) = BYTE3(v11);
    BYTE12(v45) = BYTE4(v11);
    BYTE13(v45) = BYTE5(v11);
    BYTE14(v45) = BYTE6(v11);
    sub_2644C206C(a4, a5);
    sub_2644CFC14(a2, a3, a4, a5, a6, &v45);
    v15 = v45;
    v16 = DWORD2(v45) | ((WORD6(v45) | (BYTE14(v45) << 16)) << 32);
    sub_2644C20C0(a2, a3);
    sub_2644C20C0(a4, a5);
    sub_2644C20C0(a2, a3);
    *a1 = v15;
    a1[1] = v16;
LABEL_20:
    result = sub_2644C20C0(a4, a5);
    v38 = *MEMORY[0x277D85DE8];
    return result;
  }

  v24 = v11 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2644C206C(a4, a5);
  sub_2644C206C(a2, a3);
  sub_2644C206C(v12, v11);
  sub_2644C20C0(v12, v11);
  *a1 = xmmword_2644ECCF0;
  sub_2644C20C0(0, 0xC000000000000000);
  sub_2644C206C(a4, a5);
  sub_2644C206C(a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v12;
  v27 = v12 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v27 < v12)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (sub_2644EABFC() && __OFSUB__(v12, sub_2644EAC2C()))
    {
LABEL_26:
      __break(1u);
    }

    v29 = sub_2644EAC3C();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v26 = v12;
    v32 = sub_2644EABDC();

    v24 = v32;
    v27 = v12 >> 32;
  }

  if (v27 < v26)
  {
    goto LABEL_22;
  }

  v39 = a1;
  v41 = a3;
  v33 = v26;

  result = sub_2644EABFC();
  if (result)
  {
    v35 = result;
    v36 = sub_2644EAC2C();
    v37 = v33 - v36;
    if (!__OFSUB__(v33, v36))
    {
      sub_2644EAC1C();
      sub_2644C206C(a4, a5);
      sub_2644CFC14(a2, v41, a4, a5, a6, (v35 + v37));

      sub_2644C20C0(a2, v41);
      sub_2644C20C0(a4, a5);
      sub_2644C20C0(a2, v41);
      sub_2644C20C0(a4, a5);
      sub_2644C20C0(a2, v41);
      *v39 = v12;
      v39[1] = v24 | 0x4000000000000000;
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2644CFAA4(int *a1, CC_SHA256_CTX *a2)
{
  result = sub_2644EACBC();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(a1 + 1);

  result = sub_2644EABFC();
  if (result)
  {
    v7 = result;
    result = sub_2644EAC2C();
    v8 = __OFSUB__(v5, result);
    v9 = v5 - result;
    if (!v8)
    {
      sub_2644EAC1C();
      CC_SHA256_Final((v7 + v9), a2);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2644CFB3C(int *a1, uint64_t a2, unint64_t a3)
{
  result = sub_2644EACBC();
  v7 = *a1;
  v8 = a1[1];
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(a1 + 1);

  result = sub_2644EABFC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = result;
  result = sub_2644EAC2C();
  v11 = v7 - result;
  if (__OFSUB__(v7, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v8 - v7;
  v13 = sub_2644EAC1C();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  sub_2644C84D4((v10 + v11), v10 + v11 + v14, a2, a3);

  return sub_2644C20C0(a2, a3);
}

uint64_t sub_2644CFC14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5, void *a6)
{
  v6 = a4;
  v7 = a3;
  key[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(key, 0, 14);
      v10 = key;
      v9 = key;
      goto LABEL_23;
    }

    v11 = a5;
    v24 = a6;
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_2644EABFC();
    v14 = a1;
    if (a1)
    {
      a1 = sub_2644EAC2C();
      if (__OFSUB__(v12, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 += v12 - a1;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v8)
  {
    key[0] = a1;
    LOWORD(key[1]) = a2;
    BYTE2(key[1]) = BYTE2(a2);
    BYTE3(key[1]) = BYTE3(a2);
    BYTE4(key[1]) = BYTE4(a2);
    BYTE5(key[1]) = BYTE5(a2);
    v9 = key + BYTE6(a2);
    v10 = key;
    goto LABEL_23;
  }

  v17 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = a5;
  v24 = a6;
  v14 = sub_2644EABFC();
  if (v14)
  {
    v18 = sub_2644EAC2C();
    if (!__OFSUB__(v17, v18))
    {
      v14 += v17 - v18;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v19 = sub_2644EAC1C();
  if (v19 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  v21 = (v20 + v14);
  if (v14)
  {
    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  v10 = v14;
  a3 = v7;
  a4 = v6;
  a5 = v11;
  a6 = v24;
LABEL_23:
  sub_2644CA608(v10, v9, a3, a4, a5, a6);
  result = sub_2644C20C0(v7, v6);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2644CFE24(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2644CFE44(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_2644EAC3C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2644EAC0C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2644EACDC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2644CFEE4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v15 = a1[1];
  v17 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v17 != 2)
    {
      *(&v63 + 7) = 0;
      *&v63 = 0;
      v19 = a8;
      sub_2644C206C(a2, a3);
      sub_2644C206C(a4, a5);
      sub_2644C206C(a6, a7);
      sub_2644C8988(&v63, &v63, a2, a3, a4, a5, a6, a7, &v62);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      if (!v8)
      {
        v19 = v62;
      }

      goto LABEL_35;
    }

    v19 = a4;
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C206C(v16, v15);
    sub_2644C20C0(v16, v15);
    *&v63 = v16;
    *(&v63 + 1) = v15 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v20 = *(&v63 + 1);
    v21 = a6;
    v52 = v63;
    v22 = *(v63 + 16);
    v54 = *(v63 + 24);
    sub_2644C206C(a2, a3);
    v56 = v19;
    v58 = a5;
    sub_2644C206C(v19, a5);
    v23 = v21;
    sub_2644C206C(v21, a7);
    result = sub_2644EABFC();
    if (!result)
    {
      __break(1u);
      goto LABEL_43;
    }

    v25 = result;
    v26 = sub_2644EAC2C();
    v27 = v22 - v26;
    if (!__OFSUB__(v22, v26))
    {
      v28 = __OFSUB__(v54, v22);
      v29 = v54 - v22;
      if (!v28)
      {
        v30 = sub_2644EAC1C();
        if (v30 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v30;
        }

        a6 = v23;
        sub_2644C8988(v25 + v27, v25 + v27 + v31, a2, a3, v19, v58, v23, a7, &v62);
        v32 = v20 | 0x8000000000000000;
        sub_2644C20C0(v23, a7);
        sub_2644C20C0(v19, v58);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(v19, v58);
        if (v8)
        {
          sub_2644C20C0(v23, a7);
          sub_2644C20C0(a2, a3);
          sub_2644C20C0(v19, v58);
        }

        else
        {
          v19 = v62;
          sub_2644C20C0(v23, a7);
          sub_2644C20C0(a2, a3);
          sub_2644C20C0(v56, v58);
        }

        *a1 = v52;
        a1[1] = v32;
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v17)
  {
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C20C0(v16, v15);
    *&v63 = v16;
    WORD4(v63) = v15;
    BYTE10(v63) = BYTE2(v15);
    BYTE11(v63) = BYTE3(v15);
    BYTE12(v63) = BYTE4(v15);
    BYTE13(v63) = BYTE5(v15);
    BYTE14(v63) = BYTE6(v15);
    sub_2644C8988(&v63, &v63 + BYTE6(v15), a2, a3, a4, a5, a6, a7, &v62);
    if (v8)
    {
      v18 = v63;
      v19 = DWORD2(v63) | ((WORD6(v63) | (BYTE14(v63) << 16)) << 32);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      sub_2644C20C0(a6, a7);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      *a1 = v18;
      a1[1] = v19;
    }

    else
    {
      v19 = v62;
      v60 = v63;
      v36 = DWORD2(v63) | ((WORD6(v63) | (BYTE14(v63) << 16)) << 32);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      sub_2644C20C0(a6, a7);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      *a1 = v60;
      a1[1] = v36;
    }

LABEL_35:
    sub_2644C20C0(a6, a7);
    v51 = *MEMORY[0x277D85DE8];
    return v19;
  }

  v19 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, a5);
  sub_2644C206C(a6, a7);
  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, a5);
  sub_2644C206C(a6, a7);
  sub_2644C206C(v16, v15);
  sub_2644C20C0(v16, v15);
  *a1 = xmmword_2644ECCF0;
  sub_2644C20C0(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v16;
  v35 = v16 >> 32;
  v57 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v35 < v16)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (sub_2644EABFC() && __OFSUB__(v16, sub_2644EAC2C()))
    {
LABEL_41:
      __break(1u);
    }

    v37 = sub_2644EAC3C();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_2644EABDC();

    v34 = v16;
    v19 = v40;
    v35 = v16 >> 32;
  }

  v59 = a5;
  v55 = a6;
  v41 = v35 - v34;
  if (v35 < v34)
  {
    goto LABEL_37;
  }

  v42 = v34;
  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, v59);
  v53 = a7;
  sub_2644C206C(v55, a7);

  result = sub_2644EABFC();
  if (result)
  {
    v43 = result;
    v44 = sub_2644EAC2C();
    v45 = v42 - v44;
    if (!__OFSUB__(v42, v44))
    {
      v46 = sub_2644EAC1C();
      if (v46 >= v41)
      {
        v47 = v41;
      }

      else
      {
        v47 = v46;
      }

      v48 = v43 + v45;
      v49 = v43 + v45 + v47;
      a6 = v55;
      a7 = v53;
      sub_2644C8988(v48, v49, a2, a3, v57, v59, v55, v53, &v63);
      v50 = v19 | 0x4000000000000000;
      if (v8)
      {
        sub_2644C20C0(v55, v53);
        sub_2644C20C0(v57, v59);
        sub_2644C20C0(a2, a3);

        sub_2644C20C0(a2, a3);
        sub_2644C20C0(v57, v59);
        sub_2644C20C0(v55, v53);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(v57, v59);
        *a1 = v16;
        a1[1] = v50;
      }

      else
      {
        sub_2644C20C0(v55, v53);
        sub_2644C20C0(v57, v59);
        sub_2644C20C0(a2, a3);

        sub_2644C20C0(a2, a3);
        v19 = v63;
        sub_2644C20C0(v57, v59);
        sub_2644C20C0(v55, v53);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(v57, v59);
        *a1 = v16;
        a1[1] = v50;
      }

      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2644D0790(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v53 = *MEMORY[0x277D85DE8];
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      *(&v52 + 7) = 0;
      *&v52 = 0;
      sub_2644C206C(a3, a4);
      sub_2644C206C(a5, a6);
      sub_2644C206C(a7, a8);
      v17 = sub_2644CFEE4(a2, a3, a4, a5, a6, a7, a8, &v52);
      sub_2644C20C0(a3, a4);
      sub_2644C20C0(a5, a6);
      goto LABEL_21;
    }

    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    sub_2644C206C(v15, v14);
    sub_2644C20C0(v15, v14);
    *&v52 = v15;
    *(&v52 + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
    v47 = a1;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v21 = *(v52 + 16);
    v48 = *(v52 + 24);
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    v44 = a7;
    sub_2644C206C(a7, a8);
    result = sub_2644EABFC();
    if (!result)
    {
      __break(1u);
      goto LABEL_29;
    }

    v23 = result;
    v24 = sub_2644EAC2C();
    v25 = v21 - v24;
    if (!__OFSUB__(v21, v24))
    {
      if (!__OFSUB__(v48, v21))
      {
        sub_2644EAC1C();
        sub_2644C206C(a3, a4);
        sub_2644C206C(a5, a6);
        sub_2644C206C(v44, a8);
        v26 = v23 + v25;
        a7 = v44;
        v17 = sub_2644CFEE4(a2, a3, a4, a5, a6, v44, a8, v26);
        sub_2644C20C0(v44, a8);
        sub_2644C20C0(a5, a6);
        sub_2644C20C0(a3, a4);
        sub_2644C20C0(v44, a8);
        sub_2644C20C0(a5, a6);
        sub_2644C20C0(a3, a4);
        sub_2644C20C0(a3, a4);
        sub_2644C20C0(a5, a6);
        sub_2644C20C0(v44, a8);
        sub_2644C20C0(a3, a4);
        sub_2644C20C0(a5, a6);
        v27 = *(&v52 + 1) | 0x8000000000000000;
        v28 = v47;
        *v47 = v52;
LABEL_20:
        v28[1] = v27;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v16)
  {
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    sub_2644C20C0(v15, v14);
    *&v52 = v15;
    WORD4(v52) = v14;
    BYTE10(v52) = BYTE2(v14);
    BYTE11(v52) = BYTE3(v14);
    BYTE12(v52) = BYTE4(v14);
    BYTE13(v52) = BYTE5(v14);
    BYTE14(v52) = BYTE6(v14);
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    v17 = sub_2644CFEE4(a2, a3, a4, a5, a6, a7, a8, &v52);
    sub_2644C20C0(a7, a8);
    sub_2644C20C0(a5, a6);
    sub_2644C20C0(a3, a4);
    v18 = v52;
    v19 = DWORD2(v52) | ((WORD6(v52) | (BYTE14(v52) << 16)) << 32);
    sub_2644C20C0(a3, a4);
    sub_2644C20C0(a5, a6);
    sub_2644C20C0(a7, a8);
    sub_2644C20C0(a3, a4);
    sub_2644C20C0(a5, a6);
    *a1 = v18;
    a1[1] = v19;
LABEL_21:
    sub_2644C20C0(a7, a8);
    v41 = *MEMORY[0x277D85DE8];
    return v17;
  }

  v49 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2644C206C(a3, a4);
  sub_2644C206C(a5, a6);
  sub_2644C206C(a7, a8);
  sub_2644C206C(a3, a4);
  sub_2644C206C(a5, a6);
  sub_2644C206C(a7, a8);
  sub_2644C206C(v15, v14);
  sub_2644C20C0(v15, v14);
  *a1 = xmmword_2644ECCF0;
  sub_2644C20C0(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v15;
  v32 = v15 >> 32;
  v45 = a7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v32 < v15)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (sub_2644EABFC() && __OFSUB__(v15, sub_2644EAC2C()))
    {
LABEL_27:
      __break(1u);
    }

    v33 = sub_2644EAC3C();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_2644EABDC();

    v31 = v15;
    v49 = v36;
    v32 = v15 >> 32;
  }

  if (v32 < v31)
  {
    goto LABEL_23;
  }

  v43 = v31;
  sub_2644C206C(a3, a4);
  sub_2644C206C(a5, a6);
  v42 = a8;
  sub_2644C206C(a7, a8);

  result = sub_2644EABFC();
  if (result)
  {
    v37 = result;
    v38 = sub_2644EAC2C();
    v39 = v43 - v38;
    if (!__OFSUB__(v43, v38))
    {
      sub_2644EAC1C();
      v40 = v37 + v39;
      sub_2644C206C(a3, a4);
      sub_2644C206C(a5, a6);
      a7 = v45;
      a8 = v42;
      sub_2644C206C(v45, v42);
      v51 = sub_2644CFEE4(a2, a3, a4, a5, a6, v45, v42, v40);
      sub_2644C20C0(v45, v42);
      sub_2644C20C0(a5, a6);
      sub_2644C20C0(a3, a4);
      sub_2644C20C0(v45, v42);
      sub_2644C20C0(a5, a6);
      sub_2644C20C0(a3, a4);

      sub_2644C20C0(a3, a4);
      sub_2644C20C0(a5, a6);
      sub_2644C20C0(v45, v42);
      sub_2644C20C0(a3, a4);
      sub_2644C20C0(a5, a6);
      v27 = v49 | 0x4000000000000000;
      v28 = a1;
      *a1 = v15;
      v17 = v51;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2644D0F90()
{
  result = qword_27FF6F930;
  if (!qword_27FF6F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F930);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_2644D1034()
{
  result = qword_2814ABF40;
  if (!qword_2814ABF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814ABF40);
  }

  return result;
}

unint64_t sub_2644D1088()
{
  result = qword_2814ABF48;
  if (!qword_2814ABF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814ABF48);
  }

  return result;
}

uint64_t sub_2644D10DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2644EABFC();
  if (result)
  {
    result = sub_2644EAC2C();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_2644EAC1C();
  result = sub_2644CF230(a4, a5, &v11);
  if (!v5)
  {
    return v11;
  }

  return result;
}

uint64_t sub_2644D11C8(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a7;
  v12 = a4;
  v15 = a9;
  v78 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      *(&v77 + 7) = 0;
      *&v77 = 0;
      sub_2644C206C(a8, a9);
      sub_2644C206C(a2, a3);
      sub_2644C206C(v12, a5);
      v26 = a6;
      v22 = a5;
      sub_2644C206C(v26, v9);
      v39 = a8;
      sub_2644CAF3C(a2, a3, v12, v22, v26, v9, &v76, a8, a9);
      sub_2644C20C0(a2, a3);
      if (v68)
      {
        v25 = a8;
        goto LABEL_27;
      }

      v40 = v12;
      v12 = v76;
      v25 = v39;
      goto LABEL_29;
    }

    sub_2644C206C(a2, a3);
    sub_2644C206C(v12, a5);
    sub_2644C206C(a6, v9);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C206C(v16, v17);
    sub_2644C20C0(v16, v17);
    *&v77 = v16;
    *(&v77 + 1) = v17 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v28 = *(&v77 + 1);
    v29 = *(v77 + 16);
    v57 = *(v77 + 24);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a2, a3);
    v65 = a5;
    sub_2644C206C(a4, a5);
    v53 = a6;
    sub_2644C206C(a6, a7);
    result = sub_2644EABFC();
    if (!result)
    {
      __break(1u);
      goto LABEL_38;
    }

    if (!__OFSUB__(v29, sub_2644EAC2C()))
    {
      if (!__OFSUB__(v57, v29))
      {
        v58 = v77;
        sub_2644EAC1C();
        v12 = a4;
        v26 = a6;
        sub_2644CAF3C(a2, a3, a4, a5, a6, a7, &v76, a8, a9);
        v31 = v68;
        v69 = v28 | 0x8000000000000000;
        if (v31)
        {
          v15 = a9;
          sub_2644C20C0(a8, a9);
          sub_2644C20C0(a6, a7);
          v22 = v65;
          sub_2644C20C0(a4, v65);
          sub_2644C20C0(a2, a3);
          sub_2644C20C0(a2, a3);
          sub_2644C20C0(a4, v65);
          sub_2644C20C0(v53, a7);
          sub_2644C20C0(a8, a9);
          sub_2644C20C0(a2, a3);
          *a1 = v58;
          a1[1] = v69;
          v9 = a7;
          v25 = a8;
          goto LABEL_27;
        }

        v15 = a9;
        sub_2644C20C0(a8, a9);
        sub_2644C20C0(a6, a7);
        v22 = v65;
        sub_2644C20C0(a4, v65);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(a2, a3);
        v40 = a4;
        v12 = v76;
        sub_2644C20C0(a4, v65);
        sub_2644C20C0(v53, a7);
        sub_2644C20C0(a8, a9);
        sub_2644C20C0(a2, a3);
        *a1 = v58;
        a1[1] = v69;
        v9 = a7;
        v25 = a8;
LABEL_29:
        sub_2644C20C0(v40, v22);
        sub_2644C20C0(v26, v9);
        sub_2644C20C0(v25, v15);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v55 = *a1;
  if (!v18)
  {
    v46 = v16 >> 8;
    v47 = v16 >> 16;
    v48 = v16 >> 24;
    v49 = HIDWORD(v16);
    v50 = v16 >> 40;
    v51 = HIWORD(v16);
    v52 = HIBYTE(v16);
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    v21 = a6;
    sub_2644C206C(a6, a7);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a2, a3);
    v12 = a4;
    sub_2644C206C(a4, a5);
    v9 = a7;
    sub_2644C206C(a6, a7);
    sub_2644C20C0(v55, v17);
    LOBYTE(v77) = v55;
    BYTE1(v77) = v46;
    v22 = a5;
    BYTE2(v77) = v47;
    BYTE3(v77) = v48;
    BYTE4(v77) = v49;
    BYTE5(v77) = v50;
    BYTE6(v77) = v51;
    BYTE7(v77) = v52;
    WORD4(v77) = v17;
    BYTE10(v77) = BYTE2(v17);
    BYTE11(v77) = BYTE3(v17);
    BYTE12(v77) = BYTE4(v17);
    BYTE13(v77) = BYTE5(v17);
    BYTE14(v77) = BYTE6(v17);
    v23 = a5;
    v24 = v21;
    sub_2644CAF3C(a2, a3, a4, v23, v21, a7, &v76, a8, a9);
    v25 = a8;
    if (v68)
    {
      v61 = v77;
      v56 = DWORD2(v77) | ((WORD6(v77) | (BYTE14(v77) << 16)) << 32);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, v22);
      sub_2644C20C0(v24, a7);
      v15 = a9;
      sub_2644C20C0(a8, a9);
      sub_2644C20C0(a2, a3);
      *a1 = v61;
      a1[1] = v56;
      v26 = v24;
LABEL_27:
      sub_2644C20C0(v12, v22);
      sub_2644C20C0(v26, v9);
      sub_2644C20C0(v25, v15);
LABEL_30:
      v45 = *MEMORY[0x277D85DE8];
      return v12;
    }

    v40 = a4;
    v12 = v76;
    v64 = v77;
    v59 = DWORD2(v77) | ((WORD6(v77) | (BYTE14(v77) << 16)) << 32);
    sub_2644C20C0(a2, a3);
    sub_2644C20C0(a4, v22);
    sub_2644C20C0(v24, a7);
    v15 = a9;
    sub_2644C20C0(a8, a9);
    sub_2644C20C0(a2, a3);
    *a1 = v64;
    a1[1] = v59;
    v26 = v24;
    goto LABEL_29;
  }

  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, a5);
  sub_2644C206C(a6, a7);
  sub_2644C206C(a8, a9);
  sub_2644C206C(a8, a9);
  v34 = a3;
  v26 = a6;
  v22 = a5;
  v35 = v17 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2644C206C(a2, v34);
  sub_2644C206C(a4, v22);
  sub_2644C206C(v26, a7);
  sub_2644C206C(v16, v17);
  sub_2644C20C0(v16, v17);
  *a1 = xmmword_2644ECCF0;
  sub_2644C20C0(0, 0xC000000000000000);
  v36 = v16 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v36 < v55)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (sub_2644EABFC() && __OFSUB__(v55, sub_2644EAC2C()))
    {
LABEL_36:
      __break(1u);
    }

    v41 = sub_2644EAC3C();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v44 = sub_2644EABDC();

    v35 = v44;
  }

  if (v36 < v55)
  {
    goto LABEL_32;
  }

  sub_2644C206C(a8, a9);
  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, v22);
  sub_2644C206C(v26, a7);

  result = sub_2644EABFC();
  if (result)
  {
    if (!__OFSUB__(v55, sub_2644EAC2C()))
    {
      sub_2644EAC1C();
      v25 = a8;
      v40 = a4;
      sub_2644CAF3C(a2, a3, a4, v22, v26, a7, &v77, a8, a9);
      v54 = v35 | 0x4000000000000000;
      if (v68)
      {
        sub_2644C20C0(a8, a9);
        sub_2644C20C0(v26, a7);
        sub_2644C20C0(a4, v22);
        sub_2644C20C0(a2, a3);

        sub_2644C20C0(a2, a3);
        sub_2644C20C0(a4, v22);
        sub_2644C20C0(v26, a7);
        sub_2644C20C0(a8, a9);
        sub_2644C20C0(a2, a3);
        *a1 = v55;
        a1[1] = v54;
        v12 = a4;
        v9 = a7;
        v15 = a9;
        goto LABEL_27;
      }

      sub_2644C20C0(a8, a9);
      sub_2644C20C0(v26, a7);
      sub_2644C20C0(a4, v22);
      sub_2644C20C0(a2, a3);

      v12 = v77;
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, v22);
      sub_2644C20C0(v26, a7);
      sub_2644C20C0(a8, a9);
      sub_2644C20C0(a2, a3);
      *a1 = v55;
      a1[1] = v54;
      v9 = a7;
      v15 = a9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2644D1C84()
{
  result = qword_27FF6F938;
  if (!qword_27FF6F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F938);
  }

  return result;
}

unint64_t sub_2644D1CDC()
{
  result = qword_27FF6F940;
  if (!qword_27FF6F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F940);
  }

  return result;
}

unint64_t sub_2644D1D34()
{
  result = qword_27FF6F948;
  if (!qword_27FF6F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F948);
  }

  return result;
}

unint64_t sub_2644D1D8C()
{
  result = qword_27FF6F950;
  if (!qword_27FF6F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptoError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_2644D1F80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
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

uint64_t sub_2644D1FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2644D2040()
{
  result = qword_27FF6F958;
  if (!qword_27FF6F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F958);
  }

  return result;
}

unint64_t sub_2644D2094()
{
  result = qword_27FF6F960;
  if (!qword_27FF6F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F960);
  }

  return result;
}

uint64_t sub_2644D212C()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF715F8);
  __swift_project_value_buffer(v0, qword_27FF715F8);
  return sub_2644EADFC();
}

uint64_t AsynchronousCache.__allocating_init(timeout:timeoutError:fetchBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AsynchronousCache.init(timeout:timeoutError:fetchBlock:)(a1, a2, a3, a4);
  return v11;
}

double *AsynchronousCache.init(timeout:timeoutError:fetchBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v7 = *v4;
  v8 = sub_2644EB4DC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2644EB0AC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2644EB55C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F878, &unk_2644ED920);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v4 + 2) = v17;
  sub_2644B4694(0, &qword_2814AC6A0, 0x277D85C78);
  (*(v13 + 104))(v16, *MEMORY[0x277D85268], v12);
  sub_2644EB08C();
  v32 = MEMORY[0x277D84F90];
  sub_2644D2618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B2ECC();
  sub_2644EB6CC();
  *(v4 + 3) = sub_2644EB59C();
  v18 = v7[10];
  v19 = v7[11];
  v20 = v7[13];
  *(v4 + 4) = sub_2644EB13C();
  v21 = *(*v4 + 168);
  v22 = v7[12];
  v23 = v7[14];
  sub_2644EAF5C();
  *(v5 + v21) = sub_2644EB13C();
  v24 = *(*v5 + 176);
  sub_2644EBABC();
  swift_getFunctionTypeMetadata1();
  *(v5 + v24) = sub_2644EB13C();
  v25 = *(*v5 + 184);
  sub_2644EAEDC();
  *(v5 + v25) = sub_2644EB13C();
  v5[5] = a4;
  (*(*(v22 - 8) + 32))(v5 + *(*v5 + 152), v29, v22);
  v26 = (v5 + *(*v5 + 160));
  v27 = v31;
  *v26 = v30;
  v26[1] = v27;
  return v5;
}

unint64_t sub_2644D2618()
{
  result = qword_2814AC6A8;
  if (!qword_2814AC6A8)
  {
    sub_2644EB4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AC6A8);
  }

  return result;
}

uint64_t sub_2644D2670()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 112);
  sub_2644EAECC();
  sub_2644EADDC();
  return v6;
}

uint64_t sub_2644D2728@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v124 = a2;
  v123 = a3;
  v121 = *a1;
  v4 = v121;
  v5 = v121[10];
  v122 = *(v5 - 1);
  v6 = *(v122 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v113 = &v105[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v7);
  v119 = &v105[-v9];
  MEMORY[0x28223BE20](v8);
  v116 = &v105[-v10];
  v11 = v4[11];
  v120 = sub_2644EB60C();
  v114 = *(v120 - 1);
  v12 = *(v114 + 64);
  v13 = MEMORY[0x28223BE20](v120);
  v15 = &v105[-v14];
  v16 = *(v11 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v118 = &v105[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v115 = &v105[-v21];
  v117 = v22;
  MEMORY[0x28223BE20](v20);
  v24 = &v105[-v23];
  swift_beginAccess();
  v25 = a1[4];
  v26 = v4[13];

  sub_2644EB1AC();

  if ((*(v16 + 48))(v15, 1, v11) == 1)
  {
    (*(v114 + 8))(v15, v120);
    v27 = *(*a1 + 168);
    swift_beginAccess();
    v28 = *(a1 + v27);
    v29 = v121[12];
    v30 = v121[14];
    v31 = sub_2644EAF5C();

    v121 = v31;
    sub_2644EB1AC();

    v32 = v126;
    v33 = v5;
    if (v126)
    {
      v34 = v124;
      if (qword_27FF6F5C0 != -1)
      {
        swift_once();
      }

      v35 = sub_2644EAE0C();
      __swift_project_value_buffer(v35, qword_27FF715F8);
      v36 = v122;
      v37 = *(v122 + 16);
      v38 = v113;
      v37(v113, v34, v5);
      v39 = sub_2644EADEC();
      v40 = sub_2644EB48C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v124 = v32;
        v42 = v41;
        v120 = swift_slowAlloc();
        v126 = v120;
        *v42 = 136315138;
        v37(v119, v38, v5);
        v43 = sub_2644EB23C();
        v45 = v44;
        (*(v36 + 8))(v38, v5);
        v46 = sub_2644B73B8(v43, v45, &v126);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_2644B1000, v39, v40, "already have a request in-flight for %s -- returning existing future", v42, 0xCu);
        v47 = v120;
        __swift_destroy_boxed_opaque_existential_0(v120);
        MEMORY[0x26673AD40](v47, -1, -1);
        v48 = v42;
        v32 = v124;
        MEMORY[0x26673AD40](v48, -1, -1);
      }

      else
      {

        (*(v36 + 8))(v38, v5);
      }

      v126 = v32;
      swift_getWitnessTable();
      v81 = sub_2644EAF7C();
    }

    else
    {
      v83 = swift_allocObject();
      v120 = v83;
      v83[2] = 0;
      v118 = v83 + 2;
      v84 = swift_allocObject();
      v114 = v26;
      v85 = v84;
      swift_weakInit();
      v86 = v122;
      v115 = v11;
      v87 = *(v122 + 16);
      v116 = (v122 + 16);
      v117 = v87;
      v87(v119, v124, v5);
      v88 = (*(v86 + 80) + 64) & ~*(v86 + 80);
      v89 = (v6 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      v91 = v33;
      v92 = v115;
      v90[2] = v33;
      v90[3] = v92;
      v93 = v114;
      v90[4] = v29;
      v90[5] = v93;
      v90[6] = v30;
      v90[7] = v85;
      v94 = v90 + v88;
      v95 = v119;
      v96 = v91;
      (*(v86 + 32))(v94, v119);
      *(v90 + v89) = v120;

      v97 = sub_2644EAF6C();
      v98 = v95;
      v99 = v124;
      v100 = v117;
      v117(v98, v124, v96);
      v125 = v97;
      v122 = v97;
      v101 = *(*a1 + 168);
      swift_beginAccess();
      sub_2644EB18C();

      v102 = v119;
      sub_2644EB1BC();
      swift_endAccess();
      v100(v102, v99, v96);
      v103 = v118;
      swift_beginAccess();
      v127[5] = *v103;
      v104 = *(*a1 + 184);
      swift_beginAccess();
      sub_2644EAEDC();
      sub_2644EB18C();

      sub_2644EB1BC();
      swift_endAccess();
      v125 = v122;
      swift_getWitnessTable();
      v81 = sub_2644EAF7C();
    }
  }

  else
  {
    v49 = v124;
    v114 = v26;
    v120 = v5;
    v50 = *(v16 + 32);
    v110 = v16 + 32;
    v109 = v50;
    v50(v24, v15, v11);
    if (qword_27FF6F5C0 != -1)
    {
      swift_once();
    }

    v51 = sub_2644EAE0C();
    __swift_project_value_buffer(v51, qword_27FF715F8);
    v52 = v122;
    v53 = *(v122 + 16);
    v54 = v116;
    v53(v116, v49, v120);
    v124 = v16;
    v55 = *(v16 + 16);
    v56 = v115;
    v111 = v24;
    v113 = (v16 + 16);
    v112 = v55;
    v55(v115, v24, v11);
    v57 = sub_2644EADEC();
    v58 = sub_2644EB48C();
    v59 = v11;
    if (os_log_type_enabled(v57, v58))
    {
      v60 = swift_slowAlloc();
      v107 = v57;
      v61 = v60;
      v108 = swift_slowAlloc();
      v127[0] = v108;
      *v61 = 136315394;
      v106 = v58;
      v62 = v120;
      v53(v119, v54, v120);
      v63 = sub_2644EB23C();
      v65 = v64;
      (*(v52 + 8))(v54, v62);
      v66 = sub_2644B73B8(v63, v65, v127);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      v67 = v118;
      v112(v118, v56, v59);
      v68 = sub_2644EB23C();
      v70 = v69;
      v119 = *(v124 + 8);
      (v119)(v56, v59);
      v71 = sub_2644B73B8(v68, v70, v127);

      *(v61 + 14) = v71;
      v72 = v107;
      _os_log_impl(&dword_2644B1000, v107, v106, "already have a cached value for %s -- %s", v61, 0x16u);
      v73 = v108;
      swift_arrayDestroy();
      MEMORY[0x26673AD40](v73, -1, -1);
      MEMORY[0x26673AD40](v61, -1, -1);

      v74 = v121;
    }

    else
    {

      v119 = *(v124 + 8);
      (v119)(v56, v11);
      (*(v52 + 8))(v54, v120);
      v74 = v121;
      v67 = v118;
    }

    v75 = v74[12];
    v76 = v74[14];
    sub_2644EAF5C();
    v77 = v111;
    v112(v67, v111, v59);
    v78 = (*(v124 + 80) + 56) & ~*(v124 + 80);
    v79 = swift_allocObject();
    *(v79 + 2) = v120;
    *(v79 + 3) = v59;
    v80 = v114;
    *(v79 + 4) = v75;
    *(v79 + 5) = v80;
    *(v79 + 6) = v76;
    v109(&v79[v78], v67, v59);
    v127[0] = sub_2644EAF6C();
    swift_getWitnessTable();
    v81 = sub_2644EAF7C();

    result = (v119)(v77, v59);
  }

  *v123 = v81;
  return result;
}

uint64_t sub_2644D3408(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2644EBABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(*(a5 - 8) + 16))(&v14 - v11, a3, a5);
  swift_storeEnumTagMultiPayload();
  a1(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2644D353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v84 = a5;
  v86 = a4;
  v74 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F858, "$1");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v67 - v16;
  v87 = a10;
  v88 = a7;
  v85 = a8;
  v17 = sub_2644EAECC();
  v18 = sub_2644B4694(255, &qword_27FF6F868, 0x277CBEB88);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_2644C0CB0(&qword_27FF6F870, &qword_27FF6F868, 0x277CBEB88);
  v82 = v17;
  v92 = v17;
  v93 = v18;
  v80 = WitnessTable;
  v94 = WitnessTable;
  v95 = v20;
  v21 = sub_2644EAE7C();
  v22 = sub_2644B4694(255, &qword_2814AC6A0, 0x277D85C78);
  v23 = swift_getWitnessTable();
  v24 = sub_2644C0CB0(&unk_2814AC428, &qword_2814AC6A0, 0x277D85C78);
  v92 = v21;
  v93 = v22;
  v94 = v23;
  v95 = v24;
  v25 = sub_2644EAEBC();
  v78 = *(v25 - 8);
  v26 = *(v78 + 64);
  MEMORY[0x28223BE20](v25);
  v77 = &v67 - v27;
  v28 = swift_getWitnessTable();
  v92 = v25;
  v93 = v22;
  v81 = v22;
  v76 = v28;
  v94 = v28;
  v95 = v24;
  v79 = v24;
  v29 = sub_2644EAEBC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v73 = &v67 - v33;
  v34 = a6;
  v35 = *(a6 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v75 = v37;
  v38 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v40 = result;
    v72 = v29;
    v68 = v35;
    v70 = *(v35 + 16);
    v71 = v35 + 16;
    v70(v38, v86, v34);
    v41 = swift_allocObject();
    v42 = v88;
    v41[2] = v34;
    v41[3] = v42;
    v41[4] = v85;
    v41[5] = a9;
    v69 = a9;
    v41[6] = v87;
    v41[7] = v74;
    v41[8] = a2;
    v90 = sub_2644D68EC;
    v91 = v41;
    v43 = *v40;
    v74 = v30;
    v44 = *(v43 + 176);
    swift_beginAccess();
    sub_2644EBABC();
    swift_getFunctionTypeMetadata1();
    sub_2644EB18C();

    sub_2644EB1BC();
    swift_endAccess();
    v45 = v40 + *(*v40 + 160);
    v46 = *(v45 + 1);
    v47 = v86;
    v89 = (*v45)(v86);
    v48 = v40[5];
    v49 = v40[3];

    v67 = v38;
    v50 = v68;
    v51 = v77;
    Publisher.timeout(_:queue:customError:)(v49, sub_2644D6914, v40, v82, v80, v77);

    v89 = v40[3];
    v52 = v89;
    v53 = sub_2644EB53C();
    v54 = v83;
    (*(*(v53 - 8) + 56))(v83, 1, 1, v53);
    v55 = v52;
    v56 = v73;
    sub_2644EAFFC();
    sub_2644D6970(v54);

    (*(v78 + 8))(v51, v25);
    v57 = v67;
    v70(v67, v47, v34);
    v58 = (*(v50 + 80) + 64) & ~*(v50 + 80);
    v59 = swift_allocObject();
    v60 = v88;
    *(v59 + 2) = v34;
    *(v59 + 3) = v60;
    v61 = v69;
    *(v59 + 4) = v85;
    *(v59 + 5) = v61;
    *(v59 + 6) = v87;
    *(v59 + 7) = v40;
    (*(v50 + 32))(&v59[v58], v57, v34);

    v62 = v72;
    v63 = swift_getWitnessTable();
    v64 = Publisher.futureSink(_:)(sub_2644D69D8, v59, v62, v63);

    (*(v74 + 8))(v56, v62);
    v65 = v84;
    swift_beginAccess();
    v66 = *(v65 + 16);
    *(v65 + 16) = v64;
  }

  return result;
}

uint64_t sub_2644D3CC8()
{
  v1 = *(v0 + 16);
  sub_2644EADDC();
  return v3;
}

uint64_t sub_2644D3D34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v65 = a3;
  v67 = *a1;
  v6 = v67;
  v68 = a4;
  v7 = *(v67 + 80);
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v57 - v11;
  v12 = *(v6 + 88);
  v13 = sub_2644EB60C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v64 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  swift_beginAccess();
  v20 = a1[4];
  v21 = *(v6 + 104);

  sub_2644EB1AC();

  v62 = *(v12 - 8);
  LODWORD(v20) = (*(v62 + 48))(v19, 1, v12);
  result = (*(v14 + 8))(v19, v13);
  if (v20 != 1)
  {
    goto LABEL_6;
  }

  v23 = *(*a1 + 168);
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = *(v67 + 96);
  v26 = *(v67 + 112);
  sub_2644EAF5C();

  sub_2644EB1AC();

  if (v70)
  {
    goto LABEL_3;
  }

  v27 = a2;
  v28 = v12;
  v29 = *(*a1 + 176);
  swift_beginAccess();
  v30 = *(a1 + v29);
  sub_2644EBABC();
  swift_getFunctionTypeMetadata1();

  sub_2644EB1AC();

  if (v70)
  {
    result = sub_2644B3C64(v70);
    goto LABEL_6;
  }

  v32 = *(*a1 + 184);
  swift_beginAccess();
  v33 = *(a1 + v32);
  sub_2644EAEDC();

  sub_2644EB1AC();

  if (v69)
  {
LABEL_3:

LABEL_6:
    v31 = 0;
    goto LABEL_7;
  }

  v60 = v28;
  if (qword_27FF6F5C0 != -1)
  {
    swift_once();
  }

  v34 = sub_2644EAE0C();
  __swift_project_value_buffer(v34, qword_27FF715F8);
  v35 = v63;
  v36 = v61;
  v67 = *(v63 + 16);
  (v67)(v61, v27, v7);
  v37 = sub_2644EADEC();
  v59 = sub_2644EB47C();
  v38 = os_log_type_enabled(v37, v59);
  v39 = v7;
  v40 = v66;
  if (v38)
  {
    v41 = swift_slowAlloc();
    v57 = v37;
    v42 = v41;
    v58 = swift_slowAlloc();
    v69 = v58;
    *v42 = 136315138;
    (v67)(v40, v36, v39);
    v43 = sub_2644EB23C();
    v44 = v35;
    v45 = v43;
    v46 = v27;
    v48 = v47;
    (*(v44 + 8))(v36, v39);
    v49 = sub_2644B73B8(v45, v48, &v69);
    v27 = v46;
    v40 = v66;

    v50 = v42;
    *(v42 + 4) = v49;
    v51 = v57;
    v52 = v50;
    _os_log_impl(&dword_2644B1000, v57, v59, "Inserting cached value for: %s", v50, 0xCu);
    v53 = v58;
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x26673AD40](v53, -1, -1);
    MEMORY[0x26673AD40](v52, -1, -1);
  }

  else
  {

    (*(v35 + 8))(v36, v39);
  }

  (v67)(v40, v27, v39);
  v54 = v62;
  v55 = v64;
  v56 = v60;
  (*(v62 + 16))(v64, v65, v60);
  v31 = 1;
  (*(v54 + 56))(v55, 0, 1, v56);
  swift_beginAccess();
  sub_2644EB18C();
  sub_2644EB1BC();
  result = swift_endAccess();
LABEL_7:
  *v68 = v31;
  return result;
}

uint64_t sub_2644D44B0(_BYTE *a1, void *a2)
{
  v38 = *a2;
  v4 = v38[11];
  v5 = sub_2644EB60C();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v37 = &v31[-v8];
  v9 = v38[10];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v31[-v15];
  if (qword_27FF6F5C0 != -1)
  {
    swift_once();
  }

  v17 = sub_2644EAE0C();
  __swift_project_value_buffer(v17, qword_27FF715F8);
  v18 = *(v10 + 16);
  v36 = a1;
  v40 = v18;
  v18(v16, a1, v9);
  v19 = sub_2644EADEC();
  v20 = sub_2644EB47C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = a2;
    v22 = v21;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v22 = 136315138;
    v32 = v20;
    v23 = v14;
    v40(v14, v16, v9);
    v24 = sub_2644EB23C();
    v34 = v4;
    v26 = v25;
    (*(v10 + 8))(v16, v9);
    v27 = sub_2644B73B8(v24, v26, &v39);
    v4 = v34;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2644B1000, v19, v32, "Removing cached value for: %s", v22, 0xCu);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26673AD40](v28, -1, -1);
    MEMORY[0x26673AD40](v22, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v16, v9);
    v23 = v14;
  }

  v40(v23, v36, v9);
  (*(*(v4 - 8) + 56))(v37, 1, 1, v4);
  swift_beginAccess();
  v29 = v38[13];
  sub_2644EB18C();
  sub_2644EB1BC();
  return swift_endAccess();
}

uint64_t sub_2644D48FC(void *a1)
{
  v1 = *a1;
  if (qword_27FF6F5C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2644EAE0C();
  __swift_project_value_buffer(v2, qword_27FF715F8);
  v3 = sub_2644EADEC();
  v4 = sub_2644EB47C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2644B1000, v3, v4, "Flushing cache.", v5, 2u);
    MEMORY[0x26673AD40](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[13];
  sub_2644EB18C();
  sub_2644EB17C();
  return swift_endAccess();
}

uint64_t sub_2644D4AD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v63 = a3;
  v5 = *a1;
  v6 = *(*a1 + 88);
  v7 = sub_2644EB60C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v58 = &v55 - v10;
  v11 = v5[10];
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v55 - v15;
  v16 = v5[12];
  v17 = v5[14];
  v18 = sub_2644EBABC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v55 - v22;
  v57 = *(v6 - 8);
  v24 = *(v57 + 64);
  MEMORY[0x28223BE20](v21);
  v56 = &v55 - v25;
  v26 = v5[22];
  swift_beginAccess();
  v27 = *(a1 + v26);
  swift_getFunctionTypeMetadata1();
  v28 = v5[13];

  v65 = a2;
  v61 = v11;
  sub_2644EB1AC();

  v29 = v64[0];
  if (v64[0])
  {
    v30 = v64[1];
    v31 = v63;
    (*(v19 + 16))(v23, v63, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v19 + 8))(v23, v18);
      v32 = v65;
    }

    else
    {
      v50 = v56;
      v51 = v57;
      (*(v57 + 32))(v56, v23, v6);
      v52 = *(v60 + 16);
      v32 = v65;
      v60 = v30;
      v52(v62, v65, v61);
      v53 = v58;
      (*(v51 + 16))(v58, v50, v6);
      (*(v51 + 56))(v53, 0, 1, v6);
      swift_beginAccess();
      sub_2644EB18C();
      sub_2644EB1BC();
      swift_endAccess();
      (*(v51 + 8))(v50, v6);
      v31 = v63;
    }

    v29(v31);
    sub_2644B3C64(v29);
  }

  else
  {
    v33 = v59;
    if (qword_27FF6F5C0 != -1)
    {
      swift_once();
    }

    v34 = sub_2644EAE0C();
    __swift_project_value_buffer(v34, qword_27FF715F8);
    v35 = v60;
    v36 = v61;
    v37 = *(v60 + 16);
    v32 = v65;
    v37(v33, v65, v61);
    v38 = sub_2644EADEC();
    v39 = sub_2644EB49C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64[0] = v63;
      *v40 = 136315138;
      LODWORD(v58) = v39;
      v41 = v33;
      v37(v62, v33, v36);
      v42 = sub_2644EB23C();
      v43 = v36;
      v44 = v42;
      v46 = v45;
      (*(v35 + 8))(v41, v43);
      v47 = sub_2644B73B8(v44, v46, v64);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_2644B1000, v38, v58, "Expected inFlightPromise for key: %s", v40, 0xCu);
      v48 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x26673AD40](v48, -1, -1);
      v49 = v40;
      v32 = v65;
      MEMORY[0x26673AD40](v49, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v33, v36);
    }
  }

  return sub_2644D5108(a1, v32);
}

uint64_t sub_2644D5108(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v18 - v7;
  v9 = *(v5 + 16);
  v9(v18 - v7);
  v20 = 0;
  v10 = *(*a1 + 168);
  swift_beginAccess();
  v11 = v3[11];
  v12 = v3[12];
  v13 = v3[14];
  sub_2644EAF5C();
  v18[1] = v3[13];
  sub_2644EB18C();
  sub_2644EB1BC();
  swift_endAccess();
  v14 = v19;
  (v9)(v8, v19, v4);
  v20 = 0;
  v21 = 0;
  v15 = *(*a1 + 176);
  swift_beginAccess();
  sub_2644EBABC();
  swift_getFunctionTypeMetadata1();
  sub_2644EB18C();
  sub_2644EB1BC();
  swift_endAccess();
  (v9)(v8, v14, v4);
  v20 = 0;
  v16 = *(*a1 + 184);
  swift_beginAccess();
  sub_2644EAEDC();
  sub_2644EB18C();
  sub_2644EB1BC();
  return swift_endAccess();
}

uint64_t *AsynchronousCache.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[4];

  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 152));
  v4 = *(v0 + *(*v0 + 160) + 8);

  v5 = *(v0 + *(*v0 + 168));

  v6 = *(v0 + *(*v0 + 176));

  v7 = *(v0 + *(*v0 + 184));

  return v0;
}

uint64_t AsynchronousCache.__deallocating_deinit()
{
  AsynchronousCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2644D5590(void *a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v74 = a2;
  v65 = *a1;
  v4 = v65;
  v5 = *(v65 + 88);
  v6 = sub_2644EB60C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v64 = v62 - v9;
  v69 = *(v5 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v90 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v62 - v14;
  v67 = a1;
  v68 = *(*(v4 + 80) - 8);
  v16 = *(v68 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v62 - v20;
  v91 = v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_2644EB60C();
  v23 = *(v84 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v84);
  v27 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v82 = v62 - v28;
  if (qword_27FF6F5C0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v29 = sub_2644EAE0C();
  __swift_project_value_buffer(v29, qword_27FF715F8);
  v30 = sub_2644EADEC();
  v31 = sub_2644EB47C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2644B1000, v30, v31, "Removing cached value", v32, 2u);
    MEMORY[0x26673AD40](v32, -1, -1);
  }

  v33 = v67;
  swift_beginAccess();
  v34 = v33[4];
  v71 = v15;
  v85 = v21;
  v83 = v27;
  if ((v34 & 0xC000000000000001) != 0)
  {
    v35 = sub_2644EB83C();
    v36 = 0;
    v37 = 0;
    v15 = 0;
    v38 = v35 | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(v34 + 32);
    v37 = ~v39;
    v36 = v34 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v15 = (v41 & *(v34 + 64));
    v38 = v34;
  }

  v21 = TupleTypeMetadata2;
  v88 = (v68 + 32);
  v87 = (v69 + 32);
  v79 = TupleTypeMetadata2 - 8;
  v62[1] = v37;
  v27 = ((v37 + 64) >> 6);
  v76 = (v68 + 16);
  v66 = v69 + 16;
  v78 = (v23 + 32);
  v73 = (v69 + 8);
  v72 = (v68 + 8);
  v63 = (v69 + 56);

  v23 = 0;
  v70 = v19;
  v80 = v38;
  for (i = v36; ; v36 = i)
  {
    v77 = v15;
    if ((v38 & 0x8000000000000000) == 0)
    {
      v42 = v15;
      v43 = v23;
      if (!v15)
      {
        if (v27 <= v23 + 1)
        {
          v44 = (v23 + 1);
        }

        else
        {
          v44 = v27;
        }

        v45 = v44 - 1;
        v46 = v23;
        while (1)
        {
          v43 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v43 >= v27)
          {
            v89 = 0;
            v55 = 1;
            v53 = v83;
            goto LABEL_25;
          }

          v42 = *(v36 + 8 * v43);
          ++v46;
          if (v42)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_21:
      v89 = (v42 - 1) & v42;
      v47 = __clz(__rbit64(v42)) | (v43 << 6);
      v48 = v85;
      v49 = v91;
      (*(v68 + 16))(v85, *(v38 + 48) + *(v68 + 72) * v47, v91);
      v50 = *(v38 + 56) + *(v69 + 72) * v47;
      v51 = v71;
      (*(v69 + 16))(v71, v50, v5);
      goto LABEL_24;
    }

    if (sub_2644EB84C())
    {
      v48 = v85;
      v49 = v91;
      sub_2644EB98C();
      swift_unknownObjectRelease();
      v51 = v71;
      sub_2644EB98C();
      swift_unknownObjectRelease();
      v43 = v23;
      v89 = v15;
LABEL_24:
      v52 = *(TupleTypeMetadata2 + 48);
      v53 = v83;
      v54 = v48;
      v21 = TupleTypeMetadata2;
      (*v88)(v83, v54, v49);
      (*v87)(&v53[v52], v51, v5);
      v55 = 0;
      v45 = v43;
      v19 = v70;
      goto LABEL_25;
    }

    v55 = 1;
    v45 = v23;
    v89 = v15;
    v53 = v83;
LABEL_25:
    v56 = *(v21 - 1);
    (*(v56 + 56))(v53, v55, 1, v21);
    v57 = v82;
    (*v78)();
    if ((*(v56 + 48))(v57, 1, v21) == 1)
    {
      break;
    }

    v58 = *(v21 + 12);
    v59 = v91;
    (*v88)(v19, v57, v91);
    (*v87)(v90, &v57[v58], v5);
    if (sub_2644EB20C())
    {
      (*v76)(v85, v19, v59);
      (*v63)(v64, 1, 1, v5);
      swift_beginAccess();
      v60 = *(v65 + 104);
      sub_2644EB18C();
      v59 = v91;
      v21 = TupleTypeMetadata2;
      sub_2644EB1BC();
      swift_endAccess();
    }

    (*v73)(v90, v5);
    (*v72)(v19, v59);
    v23 = v45;
    v15 = v89;
    v38 = v80;
  }

  return sub_2644D6810();
}

uint64_t AsynchronousCache.description.getter()
{
  v1 = *(v0 + 16);
  sub_2644EADDC();
  return v3;
}

uint64_t sub_2644D5ED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = *a1;
  v4 = *(*a1 + 88);
  v58 = sub_2644EB60C();
  v72 = *(v58 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x28223BE20](v58);
  v8 = v47 - v7;
  v9 = *(v4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v57 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = v47 - v14;
  v15 = *(v3 + 80);
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v55 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v47 - v19;
  v21 = sub_2644EB60C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v47 - v23;
  v70 = 2651;
  v71 = 0xE200000000000000;
  swift_beginAccess();
  v25 = a1[4];
  v63 = *(v3 + 104);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = v25;
    v27 = sub_2644EB83C();
    v28 = 0;
    v29 = 0;
    v67 = v27 | 0x8000000000000000;
    v25 = v26;
    v30 = 0;
  }

  else
  {
    v31 = -1 << *(v25 + 32);
    v28 = ~v31;
    v30 = v25 + 64;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v29 = v33 & *(v25 + 64);
    v67 = v25;
  }

  v65 = (v59 + 56);
  v47[0] = v28;
  v66 = (v28 + 64) >> 6;
  v64 = (v59 + 16);
  v61 = (v9 + 48);
  v62 = (v59 + 32);
  v52 = (v9 + 32);
  v51 = (v9 + 16);
  v50 = (v9 + 8);
  v60 = (v59 + 8);
  v49 = (v72 + 8);
  v47[1] = v25;
  result = swift_bridgeObjectRetain_n();
  v72 = 0;
  v54 = v15;
  v53 = v30;
  v35 = v66;
  v36 = v67;
  if ((v67 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  while (sub_2644EB85C())
  {
    sub_2644EB98C();
    swift_unknownObjectRelease();
    while (1)
    {
      (*v65)(v24, 0, 1, v15);
      (*v62)(v20, v24, v15);
      swift_beginAccess();
      v40 = a1[4];

      sub_2644EB1AC();

      if ((*v61)(v8, 1, v4) == 1)
      {
        (*v60)(v20, v15);
        result = (*v49)(v8, v58);
      }

      else
      {
        v41 = v56;
        (*v52)(v56, v8, v4);
        (*v64)(v55, v20, v15);
        v68 = sub_2644EB23C();
        v69 = v42;
        MEMORY[0x266739CC0](8250, 0xE200000000000000);
        (*v51)(v57, v41, v4);
        v43 = sub_2644EB23C();
        MEMORY[0x266739CC0](v43);

        MEMORY[0x266739CC0](10, 0xE100000000000000);
        MEMORY[0x266739CC0](v68, v69);
        v15 = v54;

        v44 = v41;
        v30 = v53;
        (*v50)(v44, v4);
        result = (*v60)(v20, v15);
      }

      v35 = v66;
      v36 = v67;
      if ((v67 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_10:
      v37 = v72;
      if (!v29)
      {
        while (1)
        {
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v38 >= v35)
          {
            goto LABEL_22;
          }

          v29 = *(v30 + 8 * v38);
          ++v37;
          if (v29)
          {
            v72 = v38;
            goto LABEL_16;
          }
        }

        __break(1u);
        return result;
      }

      v38 = v72;
LABEL_16:
      v39 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      (*(v59 + 16))(v24, *(v36 + 48) + *(v59 + 72) * (v39 | (v38 << 6)), v15);
    }
  }

LABEL_22:
  (*v65)(v24, 1, 1, v15);
  sub_2644D6810();
  MEMORY[0x266739CC0](93, 0xE100000000000000);

  v45 = v71;
  v46 = v48;
  *v48 = v70;
  v46[1] = v45;
  return result;
}

uint64_t sub_2644D6620(uint64_t a1)
{
  v1 = *(a1 + 96);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_2644D68A8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  return sub_2644D3408(a1, a2, v2 + ((*(*(v2[3] - 8) + 80) + 56) & ~*(*(v2[3] - 8) + 80)), v2[2], v2[3]);
}

uint64_t sub_2644D68EC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

uint64_t sub_2644D6970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F858, "$1");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2644D69D8()
{
  v1 = *(*(v0 + 56) + 16);
  v3 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80));
  return sub_2644EADDC();
}

uint64_t sub_2644D6A70()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF71610);
  __swift_project_value_buffer(v0, qword_27FF71610);
  return sub_2644EADFC();
}

uint64_t sub_2644D6AEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return sub_2644D6C4C(v7);
}

uint64_t sub_2644D6BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2644D6C4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_2644D6CF4())()
{
  v1 = *(*v0 + 96);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2644D6D60()
{
  sub_2644D8E6C();
}

uint64_t sub_2644D6D88(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*sub_2644D6DEC())()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t QueuePool.Wrapper.__allocating_init(identifier:blocks:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  (*(*(*(*v7 + 80) - 8) + 32))(v7 + *(*v7 + 96), a1);
  *(v7 + *(*v7 + 104)) = a2;
  return v7;
}

uint64_t QueuePool.Wrapper.init(identifier:blocks:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  *(v2 + *(*v2 + 104)) = a2;
  return v2;
}

uint64_t QueuePool.Wrapper.__allocating_init(identifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F968, &qword_2644ED9A8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2644ED0A0;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v12 + 32) = sub_2644B3F34;
  *(v12 + 40) = v13;
  (*(v8 + 8))(a1, v7);
  return QueuePool.Wrapper.__allocating_init(identifier:blocks:)(v11, v12);
}

uint64_t QueuePool.Wrapper.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t QueuePool.Wrapper.__deallocating_deinit()
{
  QueuePool.Wrapper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2644D7204()
{
  v1 = *v0;
  sub_2644D8E6C();
}

uint64_t QueuePool.__allocating_init(name:workers:completionQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_2644D8EBC(a1, a2, a3, a4);

  return v8;
}

uint64_t QueuePool.init(name:workers:completionQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_2644D8EBC(a1, a2, a3, a4);

  return v5;
}

void sub_2644D72F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = sub_2644EB06C();
  v60 = *(v73 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2644EB0AC();
  v59 = *(v72 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch_group_create();
  v14 = dispatch_group_create();
  v15 = v4[5];
  v16 = v4[3];
  v67 = v4[2];
  v68 = v16;

  v69 = v14;
  dispatch_group_enter(v14);
  v61 = v4;
  v17 = v4[4];
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v54 = v15;
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v18 = v17 - 1;
  if (v17 == 1)
  {
    goto LABEL_14;
  }

  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v61[6];
  v66 = (v19 & 0xC000000000000001);
  if ((v19 & 0xC000000000000001) == 0)
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 < 2 || v17 > v20)
    {
      goto LABEL_22;
    }
  }

  v64 = &v77;
  v63 = (v60 + 8);
  v62 = (v59 + 8);
  v22 = 5;
  v65 = v19;
  do
  {
    dispatch_group_enter(v13);
    if (v66)
    {
      v23 = MEMORY[0x26673A200](v22 - 4, v19);
    }

    else
    {
      v23 = *(v19 + 8 * v22);
    }

    v24 = v23;
    v25 = swift_allocObject();
    v26 = v67;
    v27 = v68;
    v25[2] = v13;
    v25[3] = v26;
    v25[4] = v27;
    v25[5] = v22 - 4;
    v28 = v69;
    v25[6] = v69;
    v79 = sub_2644D923C;
    v80 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_2644BD140;
    v78 = &block_descriptor_3;
    v29 = _Block_copy(&aBlock);

    v30 = v13;
    v31 = v28;
    v32 = v70;
    sub_2644EB08C();
    v74 = MEMORY[0x277D84F90];
    sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v33 = v13;
    v34 = v71;
    v35 = v73;
    sub_2644EB6CC();
    MEMORY[0x266739FD0](0, v32, v34, v29);
    _Block_release(v29);

    v36 = v34;
    v13 = v33;
    (*v63)(v36, v35);
    (*v62)(v32, v72);

    ++v22;
    --v18;
    v19 = v65;
  }

  while (v18);
LABEL_14:
  v37 = v61[6];
  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v66 = MEMORY[0x26673A200](0);
    v38 = v58;
    v39 = v57;
    v40 = v56;
    v41 = v55;
    v42 = v54;
    goto LABEL_17;
  }

  v38 = v58;
  v39 = v57;
  v40 = v56;
  v41 = v55;
  v42 = v54;
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v66 = *(v37 + 32);
LABEL_17:
    v43 = swift_allocObject();
    v44 = v68;
    v43[2] = v67;
    v43[3] = v44;
    v43[4] = v13;
    v43[5] = v41;
    v45 = v69;
    v43[6] = v40;
    v43[7] = v45;
    v43[8] = v39;
    v43[9] = v38;
    v43[10] = v42;
    v79 = sub_2644D924C;
    v80 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_2644BD140;
    v78 = &block_descriptor_9;
    v46 = _Block_copy(&aBlock);
    v47 = v13;
    v48 = v45;

    sub_2644D9284(v39);
    v49 = v42;
    v50 = v70;
    sub_2644EB08C();
    v74 = MEMORY[0x277D84F90];
    sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v51 = v71;
    v52 = v73;
    sub_2644EB6CC();
    v53 = v66;
    MEMORY[0x266739FD0](0, v50, v51, v46);
    _Block_release(v46);

    (*(v60 + 8))(v51, v52);
    (*(v59 + 8))(v50, v72);

    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_2644D7998(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  dispatch_group_leave(a1);
  if (qword_27FF6F5C8 != -1)
  {
    swift_once();
  }

  v7 = sub_2644EAE0C();
  __swift_project_value_buffer(v7, qword_27FF71610);

  v8 = sub_2644EADEC();
  v9 = sub_2644EB48C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2644B73B8(a2, a3, &v16);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a4;
    _os_log_impl(&dword_2644B1000, v8, v9, "%s-workQueue-%ld: >>> wait on barrierGroup", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26673AD40](v11, -1, -1);
    MEMORY[0x26673AD40](v10, -1, -1);
  }

  sub_2644EB4CC();

  oslog = sub_2644EADEC();
  v12 = sub_2644EB48C();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_2644B73B8(a2, a3, &v16);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a4;
    _os_log_impl(&dword_2644B1000, oslog, v12, "%s-workQueue-%ld: <<< wait on barrierGroup", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26673AD40](v14, -1, -1);
    MEMORY[0x26673AD40](v13, -1, -1);
  }
}

void sub_2644D7BF4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v46 = a8;
  v47 = a5;
  v49 = a6;
  v50 = a7;
  v48 = a4;
  v10 = sub_2644EB06C();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2644EB0AC();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF6F5C8 != -1)
  {
    swift_once();
  }

  v16 = sub_2644EAE0C();
  __swift_project_value_buffer(v16, qword_27FF71610);

  v17 = sub_2644EADEC();
  v18 = sub_2644EB48C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2644B73B8(a1, a2, aBlock);
    _os_log_impl(&dword_2644B1000, v17, v18, "%s-workQueue-0: >>> wait on enterGroup", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26673AD40](v20, -1, -1);
    MEMORY[0x26673AD40](v19, -1, -1);
  }

  sub_2644EB4CC();

  v21 = sub_2644EADEC();
  v22 = sub_2644EB48C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_2644B73B8(a1, a2, aBlock);
    _os_log_impl(&dword_2644B1000, v21, v22, "%s-workQueue-0: <<< wait on enterGroup", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26673AD40](v24, -1, -1);
    MEMORY[0x26673AD40](v23, -1, -1);
  }

  v25 = sub_2644EADEC();
  v26 = sub_2644EB48C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_2644B73B8(a1, a2, aBlock);
    _os_log_impl(&dword_2644B1000, v25, v26, "%s-workQueue-0: >>> Executing barrier block", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x26673AD40](v28, -1, -1);
    MEMORY[0x26673AD40](v27, -1, -1);
  }

  v48();

  v29 = sub_2644EADEC();
  v30 = sub_2644EB48C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_2644B73B8(a1, a2, aBlock);
    _os_log_impl(&dword_2644B1000, v29, v30, "%s-workQueue-0: <<< Executing barrier block", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26673AD40](v32, -1, -1);
    MEMORY[0x26673AD40](v31, -1, -1);
  }

  dispatch_group_leave(v49);
  v33 = v50;
  if (v50)
  {
    v34 = swift_allocObject();
    v35 = v46;
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    aBlock[4] = sub_2644B3F34;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2644BD140;
    aBlock[3] = &block_descriptor_43;
    v36 = _Block_copy(aBlock);
    sub_2644D9284(v33);

    v37 = v40;
    sub_2644EB08C();
    v51 = MEMORY[0x277D84F90];
    sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v38 = v41;
    v39 = v45;
    sub_2644EB6CC();
    MEMORY[0x266739FD0](0, v37, v38, v36);
    _Block_release(v36);
    sub_2644B3C64(v33);
    (*(v44 + 8))(v38, v39);
    (*(v42 + 8))(v37, v43);
  }
}

void sub_2644D827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a3;
  v46 = a2;
  v59 = sub_2644EB06C();
  v48 = *(v59 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v59);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2644EB0AC();
  v47 = *(v55 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v55);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v44 - v17;
  (*(a5 + 24))(a4, a5);
  swift_getAssociatedConformanceWitness();
  v19 = sub_2644EB1EC();
  (*(v15 + 8))(v18, AssociatedTypeWitness);
  v20 = v6[4];
  if (!v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v19 % v20;
  if (((v19 % v20) & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v6[6];
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v23 = v13;
    v24 = MEMORY[0x26673A200]();
    goto LABEL_6;
  }

  if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v23 = v13;
  v24 = *(v22 + 8 * v21 + 32);
LABEL_6:
  v51 = v24;
  v44 = v6[5];
  v49 = (*(a5 + 32))(a4, a5);
  v25 = *(v49 + 16);
  v26 = MEMORY[0x277D84F90];
  v27 = v59;
  v28 = v55;
  v29 = v50;
  if (v25)
  {
    v30 = (v49 + 32);
    v54 = &v63;
    v53 = (v48 + 8);
    v52 = (v47 + 8);
    do
    {
      v59 = v25;
      v31 = swift_allocObject();
      v56 = *v30;
      v58 = v30 + 1;
      *(v31 + 16) = v56;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_2644D9294;
      *(v32 + 24) = v31;
      v65 = sub_2644B3F04;
      v66 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_2644BD140;
      v64 = &block_descriptor_18;
      v57 = _Block_copy(&aBlock);

      sub_2644EB08C();
      v60 = v26;
      sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
      sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
      sub_2644EB6CC();
      v33 = v57;
      MEMORY[0x266739FD0](0, v23, v29, v57);
      v30 = v58;
      v28 = v55;
      _Block_release(v33);

      (*v53)(v29, v27);
      (*v52)(v23, v28);

      v25 = v59 - 1;
    }

    while (v59 != 1);
  }

  v34 = v46;
  if (v46)
  {
    v35 = v27;
    v36 = swift_allocObject();
    v37 = v44;
    v36[2] = v44;
    v36[3] = v34;
    v36[4] = v45;
    v65 = sub_2644D92BC;
    v66 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_2644BD140;
    v64 = &block_descriptor_24_0;
    v38 = v26;
    v39 = _Block_copy(&aBlock);
    sub_2644D9284(v34);
    sub_2644D9284(v34);
    v40 = v37;
    v41 = v23;
    sub_2644EB08C();
    v60 = v38;
    sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v42 = v50;
    sub_2644EB6CC();
    v43 = v51;
    MEMORY[0x266739FD0](0, v41, v42, v39);

    _Block_release(v39);
    sub_2644B3C64(v34);
    (*(v48 + 8))(v42, v35);
    (*(v47 + 8))(v41, v28);
  }

  else
  {
  }
}

uint64_t sub_2644D89BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = sub_2644EB06C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2644EB0AC();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_2644B3F04;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_37;
  v15 = _Block_copy(aBlock);

  sub_2644EB08C();
  v20 = MEMORY[0x277D84F90];
  sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t QueuePool.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t QueuePool.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t QueuePool.description.getter()
{
  v1 = type metadata accessor for QueuePool();
  v3 = sub_2644D9524(&qword_27FF6F970, v2, type metadata accessor for QueuePool);
  v4 = sub_2644EB92C();
  MEMORY[0x266739CC0](v4);

  MEMORY[0x266739CC0](32, 0xE100000000000000);
  v5 = MEMORY[0x26673A380](v1, v3);
  MEMORY[0x266739CC0](v5);

  MEMORY[0x266739CC0](32, 0xE100000000000000);
  MEMORY[0x266739CC0](v0[2], v0[3]);
  MEMORY[0x266739CC0](58, 0xE100000000000000);
  v8 = v0[4];
  v6 = sub_2644EB94C();
  MEMORY[0x266739CC0](v6);

  MEMORY[0x266739CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2644D8E6C()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2644D8EBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = sub_2644EB4DC();
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2644EB0AC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v30 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2644EB55C();
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x28223BE20](v32);
  v29 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 2)
  {
    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v27 = a1;
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
    v23 = v4;
    v26 = sub_2644B2D18();
    v25 = *MEMORY[0x277D85268];
    v24 = (v14 + 104);
    v28 = a2;

    v18 = a4;
    v19 = 0;
    v20 = v29;
    do
    {
      v35 = v27;
      v36 = v28;

      MEMORY[0x266739CC0](0x6575516B726F772DLL, 0xEB000000002D6575);
      v34 = v19;
      v21 = sub_2644EB94C();
      MEMORY[0x266739CC0](v21);

      (*v24)(v20, v25, v32);
      sub_2644EB08C();
      v35 = MEMORY[0x277D84F90];
      sub_2644D9524(&qword_2814AC6A8, 255, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
      sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
      sub_2644EB6CC();
      sub_2644EB59C();
      MEMORY[0x266739D30]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2644EB30C();
      }

      ++v19;
      sub_2644EB33C();
    }

    while (a3 != v19);
    result = v23;
    v23[6] = v37;
  }

  return result;
}

uint64_t sub_2644D9284(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2644D9294()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2644D9368(uint64_t a1)
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

uint64_t sub_2644D9524(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SimpleThrottle.init(interval:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v29 = a5;
  v33 = sub_2644EB55C();
  v31 = *(v33 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v30 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2644EB4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_2644EB0AC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2644EAECC();
  v14 = sub_2644B2D18();
  v28[2] = v13;
  WitnessTable = swift_getWitnessTable();
  v28[1] = WitnessTable;
  v28[0] = sub_2644D9A74(&unk_2814AC428, sub_2644B2D18);
  v38 = v13;
  v39 = v14;
  v40 = WitnessTable;
  v41 = v28[0];
  v16 = sub_2644EAE8C();
  v32 = *(v16 - 8);
  v17 = *(v32 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v28 - v18;
  sub_2644EAF0C();
  v20 = sub_2644EAEFC();
  *a5 = v20;
  v38 = v20;
  swift_getWitnessTable();
  v38 = sub_2644EAF7C();
  sub_2644EB08C();
  v37 = MEMORY[0x277D84F90];
  sub_2644D9A74(&qword_2814AC6A8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B2ECC();
  sub_2644EB6CC();
  (*(v31 + 104))(v30, *MEMORY[0x277D85260], v33);
  v21 = sub_2644EB59C();
  v37 = v21;
  v22 = v34;
  sub_2644EB01C();

  v23 = swift_allocObject();
  v24 = v35;
  v23[2] = a4;
  v23[3] = v24;
  v23[4] = v36;

  swift_getWitnessTable();
  v25 = sub_2644EB02C();

  v26 = sub_2644EB54C();
  (*(*(v26 - 8) + 8))(v22, v26);
  result = (*(v32 + 8))(v19, v16);
  v29[1] = v25;
  return result;
}

uint64_t sub_2644D9A74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2644D9ABC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_2644D9B08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2644D9B50(uint64_t *a1, int a2)
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

uint64_t sub_2644D9B98(uint64_t result, int a2, int a3)
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

uint64_t XPCSession.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2814ACCC8;
  v4 = sub_2644EADAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2644D9C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCServiceDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644D9CDC()
{
  v0 = type metadata accessor for XPCServiceDescription();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2644D9C78(Strong + qword_2814ACCC0, v3);

    v5 = &v3[*(v0 + 40)];
    v7 = *v5;
    v6 = v5[1];
    sub_2644D9284(*v5);
    sub_2644DC22C(v3);
    if (v7)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v7();

        return sub_2644B3C64(v7);
      }

      sub_2644B3C64(v7);
    }
  }

  sub_2644EB4BC();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2644ED0A0;
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F980, &qword_2644EDB88);
  v12 = sub_2644EB23C();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2644B4744();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_2644EADCC();
}

uint64_t sub_2644D9F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v36 = a2;
  v33 = type metadata accessor for XPCServiceDescription();
  v6 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2644EB06C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2644EB0AC();
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v35);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = Strong;
  aBlock[4] = sub_2644DC504;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_43_0;
  v19 = _Block_copy(aBlock);
  v37 = Strong;

  sub_2644EB08C();
  v40 = MEMORY[0x277D84F90];
  sub_2644B2DAC(&qword_2814AC1D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v16, v12, v19);
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v35);

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = v32;
    sub_2644D9C78(v20 + qword_2814ACCC0, v32);

    v22 = (v21 + *(v33 + 44));
    v23 = *v22;
    v24 = v22[1];
    sub_2644D9284(*v22);
    sub_2644DC22C(v21);
    if (v23)
    {
      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        v23();

        sub_2644B3C64(v23);
      }

      sub_2644B3C64(v23);
    }
  }

  sub_2644EB4BC();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2644ED0A0;
  swift_beginAccess();
  v39 = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F980, &qword_2644EDB88);
  v29 = sub_2644EB23C();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_2644B4744();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_2644EADCC();
}

uint64_t sub_2644DA430()
{
  v1 = *(*v0 + 80);
  v2 = sub_2644EB60C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = qword_2814ABF20;
  v8 = *(v0 + qword_2814ABF20);
  if (v8)
  {
    [v8 invalidate];
    v9 = *(v0 + v7);
  }

  else
  {
    v9 = 0;
  }

  *(v0 + v7) = 0;

  (*(*(v1 - 8) + 56))(v6, 1, 1, v1);
  v10 = *(*v0 + 112);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v10, v6, v2);
  return swift_endAccess();
}

uint64_t XPCSession.__allocating_init(service:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  XPCSession.init(service:)(a1);
  return v5;
}

uint64_t *XPCSession.init(service:)(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = *v1;
  v4 = sub_2644EADAC();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v21 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2644EB4DC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_2644EB0AC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2644EB55C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2814ABF20) = 0;
  (*(*(*(v3 + 80) - 8) + 56))(v2 + *(*v2 + 112), 1, 1);
  v20 = *(*v1 + 120);
  v19[1] = sub_2644B4694(0, &qword_2814AC6A0, 0x277D85C78);
  (*(v12 + 104))(v15, *MEMORY[0x277D85268], v11);
  sub_2644EB08C();
  v25 = MEMORY[0x277D84F90];
  sub_2644B2DAC(&qword_2814AC6A8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  v16 = sub_2644EB59C();
  v17 = v21;
  *(v2 + v20) = v16;
  sub_2644EAD9C();
  (*(v22 + 32))(v2 + qword_2814ACCC8, v17, v23);
  sub_2644B5C10(v24, v2 + qword_2814ACCC0);
  return v2;
}

uint64_t *XPCSession.__allocating_init(connection:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return XPCSession.init(connection:)(a1);
}

uint64_t *XPCSession.deinit()
{
  v1 = *v0;
  sub_2644EB48C();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2644ED0A0;

  v3 = sub_2644EB23C();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2644B4744();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_2644EADCC();

  sub_2644DA430();
  v6 = qword_2814ACCC8;
  v7 = sub_2644EADAC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_2644DC22C(v0 + qword_2814ACCC0);

  v8 = *(*v0 + 112);
  v9 = *(v1 + 80);
  v10 = sub_2644EB60C();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);

  return v0;
}

uint64_t XPCSession.__deallocating_deinit()
{
  XPCSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall XPCSession.resume()()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2644DC288;
  *(v2 + 24) = v0;
  v4[4] = sub_2644B3F5C;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2644B3F0C;
  v4[3] = &block_descriptor_4;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall XPCSession.suspend()()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2644DC2CC;
  *(v2 + 24) = v0;
  v4[4] = sub_2644B42CC;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2644B3F0C;
  v4[3] = &block_descriptor_7;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall XPCSession.invalidate()()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2644DC310;
  *(v2 + 24) = v0;
  v4[4] = sub_2644B42CC;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2644B3F0C;
  v4[3] = &block_descriptor_14;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t XPCSession.proxy.getter()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 120));
  v3 = *(v1 + 80);
  sub_2644EB60C();
  return sub_2644EB57C();
}

uint64_t sub_2644DB09C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = sub_2644EB60C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v23 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(v3 + 112);
  swift_beginAccess();
  v13 = *(v6 + 16);
  v13(v11, &a1[v12], v5);
  v14 = *(v4 - 8);
  if ((*(v14 + 48))(v11, 1, v4) == 1)
  {
    (*(v6 + 8))(v11, v5);
    v15 = sub_2644B4A30();
    v16 = [v15 remoteObjectProxy];
    v22 = v13;

    sub_2644EB6AC();
    swift_unknownObjectRelease();
    v17 = v23;
    v18 = swift_dynamicCast();
    (*(v14 + 56))(v17, v18 ^ 1u, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(&a1[v12], v17, v5);
    swift_endAccess();
    return v22(v24, &a1[v12], v5);
  }

  else
  {
    v20 = v24;
    (*(v14 + 32))(v24, v11, v4);
    return (*(v14 + 56))(v20, 0, 1, v4);
  }
}

uint64_t XPCSession.proxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_2644DB3C8, 0, 0);
}

uint64_t sub_2644DB3C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v2 + 80);
  v8 = sub_2644EB60C();
  *v6 = v0;
  v6[1] = sub_2644DB4D0;
  v9 = *(v0 + 16);

  return MEMORY[0x2822007B8](v9, 0, 0, 0xD000000000000014, 0x80000002644EEB00, sub_2644DC330, v3, v8);
}

uint64_t sub_2644DB4D0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2644DB5E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v5 = *a2;
  v6 = sub_2644EB06C();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2644EB0AC();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 80);
  sub_2644EB60C();
  v15 = sub_2644EB3BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v28 = *(a2 + *(v5 + 120));
  (*(v16 + 16))(&v25 - v18, v25, v15);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v14;
  *(v21 + 3) = a2;
  v22 = v27;
  *(v21 + 4) = v26;
  *(v21 + 5) = v22;
  (*(v16 + 32))(&v21[v20], v19, v15);
  aBlock[4] = sub_2644DC52C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_49;
  v23 = _Block_copy(aBlock);

  sub_2644EB08C();
  v32 = MEMORY[0x277D84F90];
  sub_2644B2DAC(&qword_2814AC1D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v13, v9, v23);
  _Block_release(v23);
  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);
}

uint64_t sub_2644DB9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 80);
  v6 = sub_2644EB60C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  v14 = sub_2644B4A30();
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644DBC34;
  aBlock[3] = &block_descriptor_52;
  v15 = _Block_copy(aBlock);

  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_2644EB6AC();
  swift_unknownObjectRelease();
  v17 = swift_dynamicCast();
  (*(*(v5 - 8) + 56))(v13, v17 ^ 1u, 1, v5);
  (*(v7 + 16))(v11, v13, v6);
  sub_2644EB3BC();
  sub_2644EB3AC();
  return (*(v7 + 8))(v13, v6);
}

void sub_2644DBC34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t XPCSession.syncProxy(errorHandler:)()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = *(*v0 + 80);
  sub_2644EB60C();
  return sub_2644EB57C();
}

uint64_t sub_2644DBD38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_2644B4A30();
  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2644DBC34;
  v14[3] = &block_descriptor_18_0;
  v9 = _Block_copy(v14);

  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  sub_2644EB6AC();
  swift_unknownObjectRelease();
  v11 = *(v7 + 80);
  v12 = swift_dynamicCast();
  return (*(*(v11 - 8) + 56))(a4, v12 ^ 1u, 1, v11);
}

uint64_t XPCSession.hashValue.getter()
{
  sub_2644EBA7C();
  XPCSession.hash(into:)();
  return sub_2644EBAAC();
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F978, &qword_2644EDAB0);
      [v2 addObject_];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v6 = v2;
  sub_2644EB40C();

  sub_2644EB86C();
  __break(1u);
}

uint64_t XPCSession.debugDescription.getter()
{
  v1 = *v0;
  WitnessTable = swift_getWitnessTable();
  v3 = sub_2644EB9BC();
  MEMORY[0x266739CC0](v3);

  MEMORY[0x266739CC0](32, 0xE100000000000000);
  v4 = MEMORY[0x26673A410](v1, WitnessTable);
  MEMORY[0x266739CC0](v4);

  MEMORY[0x266739CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2644DC22C(uint64_t a1)
{
  v2 = type metadata accessor for XPCServiceDescription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2644DC288()
{
  v0 = sub_2644B4A30();
  [v0 resume];
}

void sub_2644DC2CC()
{
  v0 = sub_2644B4A30();
  [v0 suspend];
}

uint64_t sub_2644DC378(uint64_t a1)
{
  result = sub_2644EADAC();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = type metadata accessor for XPCServiceDescription();
    if (v4 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      v5 = *(a1 + 80);
      result = sub_2644EB60C();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2644DC4EC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  return sub_2644D9CDC();
}

uint64_t sub_2644DC504()
{
  if (*(v0 + 24))
  {
    return sub_2644DA430();
  }

  return result;
}

uint64_t sub_2644DC52C()
{
  v1 = v0[2];
  sub_2644EB60C();
  v2 = *(*(sub_2644EB3BC() - 8) + 80);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  return sub_2644DB9C4(v3, v4, v5);
}

void sub_2644DC5F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2644DC65C()
{
  v0 = type metadata accessor for _ImmediateScheduler();
  result = swift_allocObject();
  qword_27FF6F9A0 = v0;
  unk_27FF6F9A8 = &off_2875F7530;
  qword_27FF6F988 = result;
  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t (*static Scheduler.immediateScheduler.modify())()
{
  if (qword_27FF6F5D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2644DC994()
{
  v0 = sub_2644EB07C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2644B2D18();
  (*(v1 + 104))(v4, *MEMORY[0x277D851C8], v0);
  v5 = sub_2644EB5AC();
  (*(v1 + 8))(v4, v0);
  v6 = type metadata accessor for _QueueScheduler();
  result = swift_allocObject();
  *(result + 16) = v5;
  qword_27FF6F9C8 = v6;
  unk_27FF6F9D0 = &off_2875F7580;
  qword_27FF6F9B0 = result;
  return result;
}

uint64_t (*static Scheduler.globalAsyncScheduler.modify())()
{
  if (qword_27FF6F5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2644DCB90()
{
  v0 = type metadata accessor for _MainThreadScheduler();
  result = swift_allocObject();
  qword_27FF6F9F0 = v0;
  unk_27FF6F9F8 = &off_2875F7510;
  qword_27FF6F9D8 = result;
  return result;
}

uint64_t sub_2644DCC00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2644BF0F0(a2, a3);
}

uint64_t sub_2644DCC88(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(a3, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t (*static Scheduler.mainThreadScheduler.modify())()
{
  if (qword_27FF6F5E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2644DCD88@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2644BF0F0(a2, a3);
}

uint64_t sub_2644DCDF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(a6, a1);
  return swift_endAccess();
}

id static Scheduler.scheduler(with:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for _QueueScheduler();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[3] = v3;
  a2[4] = &off_2875F7580;
  *a2 = v4;

  return a1;
}

uint64_t static Scheduler.serialDispatchQueueScheduler(name:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2644EB4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_2644EB55C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2644EB0AC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2644B2D18();
  sub_2644EB09C();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  v14[1] = MEMORY[0x277D84F90];
  sub_2644B2DF4(&qword_2814AC6A8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  v11 = sub_2644EB59C();
  v12 = type metadata accessor for _QueueScheduler();
  result = swift_allocObject();
  *(result + 16) = v11;
  a1[3] = v12;
  a1[4] = &off_2875F7580;
  *a1 = result;
  return result;
}

id static Scheduler.operationQueueScheduler(maxConcurrentOperationCount:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for _OperationQueueScheduler();
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v5 + 16) = v6;
  result = [v6 setMaxConcurrentOperationCount_];
  a2[3] = v4;
  a2[4] = &off_2875F7560;
  *a2 = v5;
  return result;
}

uint64_t sub_2644DD264()
{
  v1 = v0;
  v14 = MEMORY[0x277D84F90];
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v14;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2644DF7A8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2644B42CC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_135;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v14;
    v8 = *(v14 + 16);
    if (v8)
    {

      v9 = (v7 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;

        v11(v12);

        v9 += 2;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_2644DD41C(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  if ((*(a2 + 16) & 1) == 0)
  {
    *(a2 + 16) = 1;
    swift_beginAccess();
    v5 = *(a2 + 24);
    *(a2 + 24) = v3;
    v3 = v5;
  }

  v6 = *a1;
  *a1 = v3;
}

uint64_t sub_2644DD494()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2644BDE94;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2644B42CC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_125;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_2644DD5F8(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) == 1)
  {
    *a2 = 1;
  }

  else
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    swift_beginAccess();
    v8 = *(v6 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2644DF2BC(0, v8[2] + 1, 1, v8);
      *(v6 + 24) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2644DF2BC((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_2644B3F5C;
    v12[5] = v7;
    *(v6 + 24) = v8;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2644DD718()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2644DD77C()
{
  v1 = sub_2644EB4DC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_2644EB0AC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2644EB55C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];
  v12[0] = sub_2644B2D18();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  sub_2644EB08C();
  v12[1] = v10;
  sub_2644B2DF4(&qword_2814AC6A8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  *(v0 + 32) = sub_2644EB59C();
  return v0;
}

uint64_t sub_2644DDA20@<X0>(void (*a1)(uint64_t *)@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v6[3] = v4;
  v6[4] = &off_2875F7550;
  v6[0] = sub_2644DD77C();
  a1(v6);
  __swift_destroy_boxed_opaque_existential_0(v6);
  swift_allocObject();
  result = sub_2644DD77C();
  a2[3] = v4;
  a2[4] = &off_2875F7550;
  *a2 = result;
  return result;
}

uint64_t sub_2644DDAC8@<X0>(void (*a1)(id)@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v5 = [objc_opt_self() sleepForTimeInterval_];
  a1(v5);
  v6 = type metadata accessor for CancellationToken();
  swift_allocObject();
  result = sub_2644DD77C();
  a2[3] = v6;
  a2[4] = &off_2875F7550;
  *a2 = result;
  return result;
}

void sub_2644DDB58(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v7 = sub_2644DD77C();
  if ([objc_opt_self() isMainThread])
  {
    v14 = v6;
    v15 = &off_2875F7550;
    v13[0] = v7;

    a1(v13);
    __swift_destroy_boxed_opaque_existential_0(v13);
LABEL_5:
    a3[3] = v6;
    a3[4] = &off_2875F7550;
    *a3 = v7;
    return;
  }

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;

  v9 = CFRunLoopGetMain();
  v10 = *MEMORY[0x277CBF058];
  if (*MEMORY[0x277CBF058])
  {
    v11 = v9;
    v15 = sub_2644DF818;
    v16 = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2644BD140;
    v14 = &block_descriptor_115;
    v12 = _Block_copy(v13);

    CFRunLoopPerformBlock(v11, v10, v12);
    _Block_release(v12);

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_2644DDD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v36 = 0;
  if ([objc_opt_self() isMainThread])
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v34 = sub_2644B3F34;
    v35 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_2644DC5F4;
    v33 = &block_descriptor_100;
    v9 = _Block_copy(&aBlock);

    v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:a4];
    _Block_release(v9);
    v11 = 0;
    v36 = v10;
  }

  else
  {
    sub_2644B2D18();
    v12 = sub_2644EB56C();
    v13 = swift_allocObject();
    *(v13 + 16) = &v36;
    *(v13 + 24) = a4;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2644DF744;
    *(v14 + 24) = v13;
    v34 = sub_2644B3F5C;
    v35 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_2644B3F0C;
    v33 = &block_descriptor_81;
    v15 = _Block_copy(&aBlock);

    dispatch_sync(v12, v15);

    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 = sub_2644DF744;
  }

  v17 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v18 = sub_2644DD77C();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = 0;
  v20 = *(v18 + 32);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = &v29;
  v21[4] = sub_2644DF754;
  v21[5] = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2644DF75C;
  *(v22 + 24) = v21;
  v34 = sub_2644B42CC;
  v35 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2644B3F0C;
  v33 = &block_descriptor_94;
  v23 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v20, v23);
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v29 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v26 = v11;
    if (Strong)
    {
      v27 = Strong;
      [Strong invalidate];
    }

    else
    {
    }
  }

  else
  {

    v26 = v11;
  }

  a3[3] = v17;
  a3[4] = &off_2875F7550;
  *a3 = v18;

  return sub_2644B3C64(v26);
}

void sub_2644DE1DC(void **a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v13[4] = sub_2644B3F04;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2644DC5F4;
  v13[3] = &block_descriptor_109;
  v10 = _Block_copy(v13);

  v11 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:a4];
  _Block_release(v10);
  v12 = *a1;
  *a1 = v11;
}

void sub_2644DE304()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_2644DE3D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_2644EB06C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2644EB0AC();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_2644B3F34;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_72;
  v15 = _Block_copy(aBlock);

  sub_2644EB08C();
  v19 = MEMORY[0x277D84F90];
  sub_2644B2DF4(&qword_2814AC1D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_2644DE690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  v6 = sub_2644EB06C();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2644EB0AC();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v21);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v14 = sub_2644DD77C();
  v19 = *(v3 + 16);
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_2644DF724;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_66;
  v16 = _Block_copy(aBlock);

  sub_2644EB08C();
  v24 = MEMORY[0x277D84F90];
  sub_2644B2DF4(&qword_2814AC1D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v22 + 8))(v9, v6);
  (*(v10 + 8))(v13, v21);

  v18 = v23;
  v23[3] = v20;
  v18[4] = &off_2875F7550;
  *v18 = v14;
  return result;
}

uint64_t sub_2644DE9A4(uint64_t a1, void (*a2)(uint64_t *))
{
  result = sub_2644DD494();
  if ((result & 1) == 0)
  {
    v5[3] = type metadata accessor for CancellationToken();
    v5[4] = &off_2875F7550;
    v5[0] = a1;

    a2(v5);
    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return result;
}

uint64_t sub_2644DEA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a1;
  v33 = a3;
  v30 = sub_2644EB06C();
  v32 = *(v30 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2644EB0AC();
  v29 = *(v31 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2644EB0CC();
  v25 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v28 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v27 = sub_2644DD77C();
  v24 = *(v3 + 16);
  sub_2644EB0BC();
  sub_2644EB11C();
  v19 = *(v12 + 8);
  v19(v16, v11);
  aBlock[4] = v26;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_60;
  v20 = _Block_copy(aBlock);

  sub_2644EB08C();
  v34 = MEMORY[0x277D84F90];
  sub_2644B2DF4(&qword_2814AC1D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  v21 = v30;
  sub_2644EB6CC();
  MEMORY[0x266739F30](v18, v10, v7, v20);
  _Block_release(v20);
  (*(v32 + 8))(v7, v21);
  (*(v29 + 8))(v10, v31);
  v19(v18, v25);

  v23 = v33;
  v33[3] = v28;
  v23[4] = &off_2875F7550;
  *v23 = v27;
  return result;
}

void sub_2644DEE64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v9 = sub_2644DD77C();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v14[4] = sub_2644DF718;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2644BD140;
  v14[3] = &block_descriptor_57;
  v11 = _Block_copy(v14);
  v12 = objc_opt_self();

  v13 = [v12 blockOperationWithBlock_];
  _Block_release(v11);

  [*(v4 + 16) addOperation_];
  a3[3] = v8;
  a3[4] = &off_2875F7550;

  *a3 = v9;
}

uint64_t sub_2644DEFCC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for CancellationToken();
  v6[4] = &off_2875F7550;
  v6[0] = a3;

  a1(v6);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_2644DF038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v9 = sub_2644DD77C();
  if (qword_27FF6F5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2644BF0F0(&qword_27FF6F9B0, v16);
  v10 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a1;
  v12[4] = a2;
  v13 = *(v11 + 24);

  v13(v15, sub_2644DF6D4, v12, v10, v11, a4);

  __swift_destroy_boxed_opaque_existential_0(v15);
  result = __swift_destroy_boxed_opaque_existential_0(v16);
  a3[3] = v8;
  a3[4] = &off_2875F7550;
  *a3 = v9;
  return result;
}

void sub_2644DF1B8(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2644BD140;
  v5[3] = &block_descriptor_5;
  v4 = _Block_copy(v5);

  [v3 addOperationWithBlock_];
  _Block_release(v4);
}

void *sub_2644DF2BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F968, &qword_2644ED9A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8D0, &qword_2644EDCF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2644DF3F0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA00, &qword_2644EDCF8);
  v10 = *(type metadata accessor for Sequencer.WorkItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Sequencer.WorkItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2644DF5C8(void (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    v4 = CFRunLoopGetMain();
    v5 = *MEMORY[0x277CBF058];
    if (*MEMORY[0x277CBF058])
    {
      v6 = v4;
      v8[4] = a1;
      v8[5] = a2;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_2644BD140;
      v8[3] = &block_descriptor_51;
      v7 = _Block_copy(v8);

      CFRunLoopPerformBlock(v6, v5, v7);
      _Block_release(v7);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2644DF6D4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  result = sub_2644DD494();
  if ((result & 1) == 0)
  {
    return v1();
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t CustomCodableKeyDictionary.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 24);
  v70 = *(v6 - 8);
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v84 = v65 - v12;
  v14 = *(v13 + 16);
  v69 = *(v14 - 8);
  v15 = *(v69 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v73 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v88 = v65 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = sub_2644EB60C();
  v90 = *(v83 - 8);
  v19 = *(v90 + 64);
  v20 = MEMORY[0x28223BE20](v83);
  v79 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v82 = v65 - v22;
  v75 = a2;
  v23 = *(a2 + 32);
  v86 = sub_2644EB91C();
  v66 = *(v86 - 8);
  v24 = *(v66 + 64);
  MEMORY[0x28223BE20](v86);
  v26 = v65 - v25;
  v27 = *v3;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v85 = v26;
  v92 = v14;
  result = sub_2644EBB0C();
  if (!v27)
  {
    v30 = v92;
    swift_getTupleTypeMetadata2();
    v31 = sub_2644EB31C();
    v27 = sub_2644E0C04(v31, v30, v6, *(v75 + 40));
  }

  v91 = v6;
  v74 = v10;
  if ((v27 & 0xC000000000000001) != 0)
  {
    result = sub_2644EB83C();
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v27 = result | 0x8000000000000000;
  }

  else
  {
    v35 = -1 << *(v27 + 32);
    v32 = v27 + 64;
    v33 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v27 + 64);
  }

  v38 = v84;
  v39 = v90;
  v40 = 0;
  v90 = v69 + 32;
  v41 = (v70 + 32);
  v42 = v88;
  v81 = TupleTypeMetadata2 - 8;
  v65[1] = v33;
  v43 = (v33 + 64) >> 6;
  v68 = v69 + 16;
  v67 = v70 + 16;
  v80 = (v39 + 32);
  v71 = (v70 + 8);
  v72 = (v69 + 8);
  v44 = v92;
  v77 = v32;
  for (i = v27; ; v27 = i)
  {
    v89 = v34;
    v76 = v40;
    if ((v27 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_2644EB84C())
    {
      sub_2644EB98C();
      swift_unknownObjectRelease();
      v47 = v91;
      sub_2644EB98C();
      swift_unknownObjectRelease();
      v46 = v40;
      v92 = v89;
LABEL_23:
      v51 = TupleTypeMetadata2;
      v52 = *(TupleTypeMetadata2 + 48);
      v53 = v79;
      (*v90)();
      (*v41)(&v53[v52], v38, v47);
      v54 = 0;
      v40 = v46;
      goto LABEL_27;
    }

    v54 = 1;
    v92 = v89;
LABEL_26:
    v51 = TupleTypeMetadata2;
    v53 = v79;
LABEL_27:
    v55 = *(v51 - 8);
    (*(v55 + 56))(v53, v54, 1, v51);
    v56 = v82;
    (*v80)(v82, v53, v83);
    if ((*(v55 + 48))(v56, 1, v51) == 1)
    {
      (*(v66 + 8))(v85, v86);
      return sub_2644D6810();
    }

    v57 = *(v51 + 48);
    v58 = v73;
    (*v90)(v73, v56, v44);
    v59 = &v56[v57];
    v60 = v44;
    v61 = v74;
    v62 = v91;
    (*v41)(v74, v59, v91);
    v63 = *(v75 + 56);
    v64 = v93;
    sub_2644EB90C();
    v93 = v64;
    if (v64)
    {
      sub_2644D6810();
      (*v71)(v61, v62);
      (*v72)(v58, v60);
      return (*(v66 + 8))(v85, v86);
    }

    (*v71)(v61, v62);
    result = (*v72)(v58, v60);
    v34 = v92;
    v44 = v60;
    v38 = v84;
    v42 = v88;
    v32 = v77;
  }

  if (v34)
  {
    v45 = v34;
    v46 = v40;
LABEL_22:
    v92 = (v45 - 1) & v45;
    v50 = __clz(__rbit64(v45)) | (v46 << 6);
    (*(v69 + 16))(v42, *(v27 + 48) + *(v69 + 72) * v50, v44);
    v47 = v91;
    (*(v70 + 16))(v38, *(v27 + 56) + *(v70 + 72) * v50, v91);
    goto LABEL_23;
  }

  if (v43 <= v40 + 1)
  {
    v48 = v40 + 1;
  }

  else
  {
    v48 = v43;
  }

  v49 = v40;
  v40 = v48 - 1;
  while (1)
  {
    v46 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      v92 = 0;
      v54 = 1;
      goto LABEL_26;
    }

    v45 = *(v32 + 8 * v46);
    ++v49;
    if (v45)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t CustomCodableKeyDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v30 = a6;
  v31 = a7;
  v32 = a3;
  v33 = a5;
  v29 = a8;
  v34 = sub_2644EB8FC();
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v34);
  v15 = v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2644EBAEC();
  if (!v8)
  {
    v28 = v12;
    v27[0] = sub_2644EB8EC();
    v27[1] = v27;
    v36 = v27[0];
    MEMORY[0x28223BE20](v27[0]);
    v18 = v32;
    v17 = v33;
    v27[-8] = a2;
    v27[-7] = v18;
    v27[-6] = a4;
    v27[-5] = v17;
    v19 = v31;
    v27[-4] = v30;
    v27[-3] = v19;
    v27[-2] = v15;
    v20 = sub_2644EB38C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F900, &qword_2644EDD00);
    WitnessTable = swift_getWitnessTable();
    v24 = sub_2644E0444(sub_2644E0EF0, &v27[-10], v20, TupleTypeMetadata2, v22, WitnessTable, MEMORY[0x277D84950], &v35);

    v36 = v24;
    sub_2644EB38C();
    swift_getWitnessTable();
    v25 = sub_2644EB16C();
    (*(v28 + 8))(v15, v34);
    *v29 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2644E030C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, void *a4)
{
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  v8 = *(a2 - 8);
  (*(v8 + 16))(a3, a1, a2);
  sub_2644EB8FC();
  result = sub_2644EB8DC();
  if (v10)
  {
    result = (*(v8 + 8))(a3, a2);
    *a4 = v10;
  }

  return result;
}

uint64_t sub_2644E0444(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2644EB44C();
  if (!v26)
  {
    return sub_2644EB31C();
  }

  v48 = v26;
  v52 = sub_2644EB7FC();
  v39 = sub_2644EB80C();
  sub_2644EB7DC();
  result = sub_2644EB43C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2644EB46C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2644EB7EC();
      result = sub_2644EB45C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t KeyedDecodingContainer.decode<A, B>(_:forKey:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for CustomCodableKeyDictionary();
  swift_getWitnessTable();
  result = sub_2644EB8CC();
  if (!v1)
  {
    v4 = v5;
    if (v5 == 1)
    {
      v4 = 0;
    }

    *a1 = v4;
  }

  return result;
}

uint64_t static CustomCodableKeyDictionary<>.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v4 = sub_2644EB19C();

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2644E09E8(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[5];
  return static CustomCodableKeyDictionary<>.== infix(_:_:)(a1, a2) & 1;
}

unint64_t sub_2644E0A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_2644EB1CC();

  return sub_2644E0A7C(a1, v9, a2, a3);
}

unint64_t sub_2644E0A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_2644EB20C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_2644E0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2644EB34C())
  {
    sub_2644EB8AC();
    v13 = sub_2644EB89C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2644EB34C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2644EB32C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2644EB7AC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2644E0A20(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}