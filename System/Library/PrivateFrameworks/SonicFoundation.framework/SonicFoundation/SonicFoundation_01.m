_BYTE *_s16CompressionErrorOwst(_BYTE *result, int a2, int a3)
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

void *sub_26B15D870(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_26B211D10();
  v8 = result;
  if (result)
  {
    result = sub_26B211D40();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_26B211D30();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_26B15D920(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_26B211D10();
  v7 = result;
  if (result)
  {
    result = sub_26B211D40();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_26B211D30();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = sub_26B211BE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v50 - v10;
  v53 = a1;
  v54 = a2;
  sub_26B211BB0();
  sub_26B211BD0();
  v12 = *(v5 + 8);
  v12(v11, v4);
  sub_26B14FCC8();
  sub_26B213490();
  v12(v9, v4);
  v13 = OUTLINED_FUNCTION_9();
  v15 = sub_26B15FB88(v13, v14);

  if (v15[2])
  {

    result = 0;
  }

  else
  {
    v57 = xmmword_26B215BA0;
    sub_26B211F80();
    v16 = v15[2];
    if (v16)
    {
      v50[0] = a2;
      v17 = v15 + 4;
      sub_26B15FC94(0, &qword_2803E6D50, MEMORY[0x277D835B0], MEMORY[0x277D84560]);
      v18 = 0;
      v50[1] = &v53 + 1;
      v51 = xmmword_26B216070;
      do
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v51;
        v20 = v15[2];
        if (v18 >= v20)
        {
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
        }

        v21 = &v17[2 * v18];
        v22 = v21[1];
        *(v19 + 32) = *v21;
        *(v19 + 40) = v22;
        if ((v18 | 1) >= v20)
        {
          goto LABEL_105;
        }

        v23 = &v17[2 * (v18 | 1)];
        v24 = v23[1];
        *(v19 + 48) = *v23;
        *(v19 + 56) = v24;
        v53 = v19;
        OUTLINED_FUNCTION_0_8();
        sub_26B15FC94(0, &qword_2803E6D90, MEMORY[0x277D835B0], v25);
        sub_26B15FCE4(&qword_2803E6D98);
        sub_26B2128F0();
        sub_26B2128F0();
        v26 = sub_26B212CE0();
        v28 = v27;
        v29 = HIBYTE(v27) & 0xF;
        v30 = v26 & 0xFFFFFFFFFFFFLL;
        if ((v28 & 0x2000000000000000) != 0)
        {
          v31 = v29;
        }

        else
        {
          v31 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (!v31)
        {
          goto LABEL_106;
        }

        if ((v28 & 0x1000000000000000) != 0)
        {
          v47 = sub_26B15F5B8(v26, v28, 16);
          LOBYTE(v34) = v47;
          if ((v47 & 0x100) != 0)
          {
            goto LABEL_111;
          }

          goto LABEL_94;
        }

        if ((v28 & 0x2000000000000000) != 0)
        {
          v53 = v26;
          v54 = v28 & 0xFFFFFFFFFFFFFFLL;
          if (v26 == 43)
          {
            if (!v29)
            {
              goto LABEL_107;
            }

            if (v29 != 1)
            {
              LOBYTE(v34) = 0;
              while (1)
              {
                OUTLINED_FUNCTION_1_6();
                if (v35)
                {
                  OUTLINED_FUNCTION_5_2();
                  if (v35)
                  {
                    OUTLINED_FUNCTION_4_6();
                    if (!v36 & v35)
                    {
                      break;
                    }
                  }
                }

                OUTLINED_FUNCTION_3_6();
                if (!v36 & v35)
                {
                  break;
                }

                OUTLINED_FUNCTION_2_7();
                if (v36)
                {
                  goto LABEL_93;
                }
              }
            }
          }

          else if (v26 == 45)
          {
            if (!v29)
            {
              goto LABEL_110;
            }

            if (v29 != 1)
            {
              LOBYTE(v34) = 0;
              while (1)
              {
                OUTLINED_FUNCTION_1_6();
                if (v35)
                {
                  OUTLINED_FUNCTION_5_2();
                  if (v35)
                  {
                    OUTLINED_FUNCTION_4_6();
                    if (!v36 & v35)
                    {
                      break;
                    }
                  }
                }

                OUTLINED_FUNCTION_3_6();
                if (!v36 & v35)
                {
                  break;
                }

                v34 = 16 * (v34 & 0xF) - v41;
                if ((v34 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                v39 = v40 - 1;
                if (!v39)
                {
                  goto LABEL_93;
                }
              }
            }
          }

          else if (v29)
          {
            LOBYTE(v34) = 0;
            while (1)
            {
              OUTLINED_FUNCTION_1_6();
              if (v35)
              {
                OUTLINED_FUNCTION_5_2();
                if (v35)
                {
                  OUTLINED_FUNCTION_4_6();
                  if (!v36 & v35)
                  {
                    break;
                  }
                }
              }

              OUTLINED_FUNCTION_3_6();
              if (!v36 & v35)
              {
                break;
              }

              OUTLINED_FUNCTION_2_7();
              if (v36)
              {
                goto LABEL_93;
              }
            }
          }

          goto LABEL_92;
        }

        if ((v26 & 0x1000000000000000) != 0)
        {
          v32 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v32 = sub_26B213780();
        }

        v33 = *v32;
        if (v33 == 43)
        {
          if (v30 < 1)
          {
            goto LABEL_108;
          }

          if (v30 == 1)
          {
            goto LABEL_92;
          }

          if (v32)
          {
            LOBYTE(v34) = 0;
            while (1)
            {
              OUTLINED_FUNCTION_1_6();
              if (v35)
              {
                OUTLINED_FUNCTION_5_2();
                if (v35)
                {
                  OUTLINED_FUNCTION_4_6();
                  if (!v36 & v35)
                  {
                    goto LABEL_92;
                  }
                }
              }

              OUTLINED_FUNCTION_3_6();
              if (!v36 & v35)
              {
                goto LABEL_92;
              }

              OUTLINED_FUNCTION_2_7();
              if (v36)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else if (v33 == 45)
        {
          if (v30 < 1)
          {
            goto LABEL_109;
          }

          if (v30 == 1)
          {
            goto LABEL_92;
          }

          if (v32)
          {
            LOBYTE(v34) = 0;
            while (1)
            {
              OUTLINED_FUNCTION_1_6();
              if (v35)
              {
                OUTLINED_FUNCTION_5_2();
                if (v35)
                {
                  OUTLINED_FUNCTION_4_6();
                  if (!v36 & v35)
                  {
                    break;
                  }
                }
              }

              OUTLINED_FUNCTION_3_6();
              if (!v36 & v35)
              {
                break;
              }

              v34 = 16 * (v34 & 0xF) - v38;
              if ((v34 & 0xFFFFFF00) != 0)
              {
                break;
              }

              v39 = v37 - 1;
              if (!v39)
              {
                goto LABEL_93;
              }
            }

LABEL_92:
            LOBYTE(v34) = 0;
            LOBYTE(v39) = 1;
            goto LABEL_93;
          }
        }

        else
        {
          if (!v30)
          {
            goto LABEL_92;
          }

          if (v32)
          {
            LOBYTE(v34) = 0;
            while (1)
            {
              v42 = *v32;
              v43 = v42 - 48;
              if ((v42 - 48) >= 0xA)
              {
                if ((v42 - 65) < 6)
                {
                  v43 = v42 - 55;
                }

                else
                {
                  if ((v42 - 97) > 5)
                  {
                    goto LABEL_92;
                  }

                  v43 = v42 - 87;
                }
              }

              if (v34 > 0xFu)
              {
                goto LABEL_92;
              }

              LOBYTE(v34) = v43 + 16 * v34;
              ++v32;
              if (!--v30)
              {
                goto LABEL_80;
              }
            }
          }
        }

        LOBYTE(v34) = 0;
LABEL_80:
        LOBYTE(v39) = 0;
LABEL_93:
        v52 = v39;
        if (v39)
        {
          goto LABEL_111;
        }

LABEL_94:
        v18 += 2;

        switch(*(&v57 + 1) >> 62)
        {
          case 2:
            v44 = *(v57 + 24);
            break;
          default:
            break;
        }

        sub_26B15FC94(0, &qword_2803E6DA0, MEMORY[0x277D84B78], MEMORY[0x277D84220]);
        v46 = v45;
        v55 = v45;
        v56 = sub_26B15FC18();
        LOBYTE(v53) = v34;
        v52 = *__swift_project_boxed_opaque_existential_1(&v53, v46);
        sub_26B211F70();
        __swift_destroy_boxed_opaque_existential_1(&v53);
      }

      while (v18 < v16);
    }

    result = v57;
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Data.chunked(by:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_26B15E17C(a1, a2, a3);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    sub_26B15B1D4();
    v6 = v17;
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = sub_26B212030();
      v12 = v11;
      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_8_3(v13);
        sub_26B15B1D4();
      }

      v7 += 2;
      *(v17 + 16) = v14 + 1;
      v15 = v17 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

void sub_26B15E17C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  v5 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_42;
      }

      v5 = v5;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(a3);
LABEL_6:
      if (!a1)
      {
        goto LABEL_40;
      }

      if (v5 == 0x8000000000000000 && a1 == -1)
      {
        goto LABEL_41;
      }

      v25 = BYTE6(a3);
      sub_26B16A72C();
      v11 = v10;
      v12 = 0;
      v14 = v25;
      v13 = a2;
      v15 = 0;
      switch(v3)
      {
        case 1:
          v15 = a2;
          v12 = a2 >> 32;
          break;
        case 2:
          v15 = *(a2 + 16);
          v12 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v15 = 0;
          v12 = v25;
          break;
      }

      v16 = 0;
      break;
  }

  while (1)
  {
    v17 = v12 >= v15;
    if (a1 > 0)
    {
      v17 = v15 >= v12;
    }

    if (v17)
    {
      break;
    }

    v18 = v15 + a1;
    if (__OFADD__(v15, a1))
    {
      v19 = ((v15 + a1) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v19 = v15 + a1;
    }

    if (__OFADD__(v15, a1))
    {
      goto LABEL_38;
    }

LABEL_26:
    v20 = 0;
    switch(v3)
    {
      case 1:
        v20 = a2 >> 32;
        break;
      case 2:
        v20 = *(v13 + 24);
        break;
      case 3:
        break;
      default:
        v20 = v14;
        break;
    }

    if (v20 >= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    if (v21 < v15)
    {
      goto LABEL_39;
    }

    v22 = *(v11 + 16);
    if (v22 >= *(v11 + 24) >> 1)
    {
      sub_26B16A72C();
      v14 = v25;
      v13 = a2;
      v11 = v24;
    }

    *(v11 + 16) = v22 + 1;
    v23 = v11 + 16 * v22;
    *(v23 + 32) = v15;
    *(v23 + 40) = v21;
    v15 = v19;
  }

  if ((v15 != v12) | v16 & 1)
  {
    return;
  }

  v18 = v15 + a1;
  if (!__OFADD__(v15, a1))
  {
    v16 = 1;
    v19 = v15;
    goto LABEL_26;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t Data.HexLine.offset.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return OUTLINED_FUNCTION_9();
}

uint64_t Data.HexLine.offset.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Data.HexLine.hex.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26B2128F0();
  return OUTLINED_FUNCTION_9();
}

uint64_t Data.HexLine.hex.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Data.HexLine.text.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_26B2128F0();
  return OUTLINED_FUNCTION_9();
}

uint64_t Data.HexLine.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void Data.HexLine.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v9 = v0[2];
  v10 = v0[3];
  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(2 * v5, 8))
  {
    sub_26B14FCC8();
    v6 = sub_26B2134D0();
    v8 = v7;
    sub_26B2128F0();
    MEMORY[0x26D670040](8250, 0xE200000000000000);
    MEMORY[0x26D670040](v6, v8);

    MEMORY[0x26D670040](32, 0xE100000000000000);
    MEMORY[0x26D670040](v3, v4);
    return;
  }

  __break(1u);
}

uint64_t Data.hexLines(bytesPerRow:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = Data.chunked(by:)(a1, a2, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v37 = MEMORY[0x277D84F90];
    result = sub_26B15B218(0, v4, 0);
    v6 = 0;
    v7 = v37;
    v34 = v4;
    v8 = (v3 + 40);
    while (v4 != v6)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = OUTLINED_FUNCTION_7_3();
      sub_26B14F044(v11, v12);
      v13 = OUTLINED_FUNCTION_7_3();
      sub_26B14F044(v13, v14);
      v15 = OUTLINED_FUNCTION_7_3();
      sub_26B14FF4C(v15, v16);
      sub_26B15E7B4(v6, v9, v10, a1, v36);
      v17 = OUTLINED_FUNCTION_7_3();
      result = sub_26B14FF4C(v17, v18);
      v19 = v36[0];
      v20 = v36[1];
      v21 = v36[2];
      v22 = v36[3];
      v23 = v36[4];
      v24 = v36[5];
      v25 = v36[6];
      v37 = v7;
      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = OUTLINED_FUNCTION_8_3(v26);
        v32 = v31;
        v33 = v30;
        result = sub_26B15B218(v29, v27 + 1, 1);
        v25 = v32;
        v23 = v33;
        v7 = v37;
      }

      ++v6;
      *(v7 + 16) = v27 + 1;
      v28 = (v7 + 56 * v27);
      v28[4] = v19;
      v28[5] = v20;
      v28[6] = v21;
      v28[7] = v22;
      v28[8] = v23;
      v28[9] = v24;
      v28[10] = v25;
      v8 += 2;
      v4 = v34;
      if (v34 == v6)
      {

        return v7;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_26B15E7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v103 = *MEMORY[0x277D85DE8];
  sub_26B15FDE4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B2162F0;
  if ((a1 * a4) >> 64 != (a1 * a4) >> 63)
  {
    goto LABEL_107;
  }

  v79 = a4;
  v10 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v10;
  *(v9 + 32) = a1 * a4;
  v11 = sub_26B212AB0();
  v77 = v12;
  v78 = v11;
  v84 = a2;
  v13 = Data.chunked(by:)(2, a2, a3);
  v14 = *(v13 + 16);
  v85 = a3;
  if (!v14)
  {

    v16 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v102 = MEMORY[0x277D84F90];
  sub_26B15B06C();
  v15 = 0;
  v16 = v102;
  v82 = v13;
  v83 = v13 + 32;
  v81 = v14;
  do
  {
    if (v15 >= *(v13 + 16))
    {
      goto LABEL_97;
    }

    v86 = v15 + 1;
    v87 = v16;
    v17 = (v83 + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v19 >> 62;
    v21 = MEMORY[0x277D84F90];
    v22 = HIDWORD(*v17);
    switch(v19 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(v22, v18))
        {
          goto LABEL_106;
        }

        v23 = v22 - v18;
LABEL_11:
        v26 = v22;
        sub_26B14F044(v18, v19);
        LOBYTE(v22) = v26;
        if (!v23)
        {
          goto LABEL_43;
        }

LABEL_12:
        v89 = v22;
        v101 = MEMORY[0x277D84F90];
        sub_26B15B06C();
        if (v20)
        {
          if (v20 == 2)
          {
            v27 = *(v18 + 16);
          }

          else
          {
            v27 = v18;
          }
        }

        else
        {
          v27 = 0;
        }

        v94 = v27;
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_98;
        }

        v28 = 0;
        v21 = v101;
        v88 = &v95 + v27;
        v92 = v23;
        break;
      case 2uLL:
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        v23 = v24 - v25;
        if (!__OFSUB__(v24, v25))
        {
          goto LABEL_11;
        }

        goto LABEL_105;
      case 3uLL:
        goto LABEL_43;
      default:
        v23 = BYTE6(v19);
        if (!BYTE6(v19))
        {
          goto LABEL_43;
        }

        goto LABEL_12;
    }

    do
    {
      if (v28 >= v23)
      {
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
      }

      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_90;
      }

      v30 = v94 + v28;
      if (v20 == 2)
      {
        if (v30 < *(v18 + 16))
        {
          goto LABEL_92;
        }

        if (v30 >= *(v18 + 24))
        {
          goto LABEL_94;
        }

        v36 = sub_26B211D10();
        if (!v36)
        {
          goto LABEL_112;
        }

        v33 = v36;
        v37 = sub_26B211D40();
        v35 = v30 - v37;
        if (__OFSUB__(v30, v37))
        {
          goto LABEL_96;
        }

        goto LABEL_36;
      }

      if (v20 == 1)
      {
        if (v30 < v18 || v30 >= v18 >> 32)
        {
          goto LABEL_93;
        }

        v32 = sub_26B211D10();
        if (!v32)
        {
          goto LABEL_111;
        }

        v33 = v32;
        v34 = sub_26B211D40();
        v35 = v30 - v34;
        if (__OFSUB__(v30, v34))
        {
          goto LABEL_95;
        }

LABEL_36:
        v38 = *(v33 + v35);
        goto LABEL_39;
      }

      if (v30 >= BYTE6(v19))
      {
        goto LABEL_91;
      }

      LOWORD(v95) = v18;
      BYTE2(v95) = BYTE2(v18);
      BYTE3(v95) = BYTE3(v18);
      BYTE4(v95) = v89;
      BYTE5(v95) = BYTE5(v18);
      BYTE6(v95) = BYTE6(v18);
      HIBYTE(v95) = HIBYTE(v18);
      v96 = v19;
      v97 = BYTE2(v19);
      v98 = BYTE3(v19);
      v99 = BYTE4(v19);
      v100 = BYTE5(v19);
      v38 = v88[v28];
LABEL_39:
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_26B2162F0;
      *(v39 + 56) = MEMORY[0x277D84B78];
      *(v39 + 64) = MEMORY[0x277D84BC0];
      *(v39 + 32) = v38;
      v40 = sub_26B212AB0();
      v42 = v41;
      v101 = v21;
      v43 = *(v21 + 16);
      if (v43 >= *(v21 + 24) >> 1)
      {
        sub_26B15B06C();
        v21 = v101;
      }

      *(v21 + 16) = v43 + 1;
      v44 = v21 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v42;
      ++v28;
      v23 = v92;
      LODWORD(v20) = v19 >> 62;
    }

    while (v29 != v92);
    a3 = v85;
LABEL_43:
    v95 = v21;
    sub_26B15FC94(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_26B15FCE4(&qword_2803E6DB0);
    v45 = sub_26B2129F0();
    v47 = v46;
    sub_26B14FF4C(v18, v19);

    v16 = v87;
    v102 = v87;
    v48 = *(v87 + 16);
    if (v48 >= *(v87 + 24) >> 1)
    {
      sub_26B15B06C();
      v16 = v102;
    }

    *(v16 + 16) = v48 + 1;
    v49 = v16 + 16 * v48;
    *(v49 + 32) = v45;
    *(v49 + 40) = v47;
    v15 = v86;
    v13 = v82;
  }

  while (v86 != v81);

LABEL_48:
  v95 = v16;
  sub_26B15FC94(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_26B15FCE4(&qword_2803E6DB0);
  v50 = sub_26B2129F0();
  v52 = v51;

  v53 = a3 >> 62;
  v54 = MEMORY[0x277D84F90];
  switch(a3 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v84), v84))
      {
        goto LABEL_109;
      }

      v55 = HIDWORD(v84) - v84;
LABEL_53:
      if (!v55)
      {
        goto LABEL_88;
      }

      v102 = MEMORY[0x277D84F90];
      sub_26B15B238();
      v58 = v84;
      if (v53)
      {
        if (v53 == 2)
        {
          v59 = *(v84 + 16);
        }

        else
        {
          v59 = v84;
        }
      }

      else
      {
        v59 = 0;
      }

      if (v55 < 0)
      {
        goto LABEL_108;
      }

      v93 = BYTE6(a3);
      v91 = v50;
      v90 = v52;
      v54 = v102;
      break;
    case 2uLL:
      v57 = *(v84 + 16);
      v56 = *(v84 + 24);
      v55 = v56 - v57;
      if (!__OFSUB__(v56, v57))
      {
        goto LABEL_53;
      }

      goto LABEL_110;
    case 3uLL:
      goto LABEL_88;
    default:
      v55 = BYTE6(a3);
      goto LABEL_53;
  }

  while (2)
  {
    if (v53 == 1)
    {
      if (v59 < v84 || v59 >= v84 >> 32)
      {
        goto LABEL_101;
      }

      v62 = sub_26B211D10();
      if (!v62)
      {
        goto LABEL_113;
      }

      v63 = v62;
      v64 = sub_26B211D40();
      v65 = v59 - v64;
      if (__OFSUB__(v59, v64))
      {
        goto LABEL_103;
      }

LABEL_78:
      v60 = *(v63 + v65);
      goto LABEL_79;
    }

    if (v53)
    {
      if (v59 < *(v58 + 16))
      {
        goto LABEL_99;
      }

      if (v59 >= *(v58 + 24))
      {
        goto LABEL_102;
      }

      v66 = sub_26B211D10();
      if (!v66)
      {
        goto LABEL_114;
      }

      v63 = v66;
      v67 = sub_26B211D40();
      v65 = v59 - v67;
      if (__OFSUB__(v59, v67))
      {
        goto LABEL_104;
      }

      goto LABEL_78;
    }

    if (v59 >= v93)
    {
      goto LABEL_100;
    }

    LOWORD(v95) = v58;
    BYTE2(v95) = BYTE2(v58);
    BYTE3(v95) = BYTE3(v58);
    BYTE4(v95) = BYTE4(v84);
    BYTE5(v95) = BYTE5(v58);
    BYTE6(v95) = BYTE6(v58);
    HIBYTE(v95) = HIBYTE(v58);
    v96 = a3;
    v97 = BYTE2(a3);
    v98 = BYTE3(a3);
    v99 = BYTE4(a3);
    v100 = BYTE5(a3);
    v60 = *(&v95 + v59);
LABEL_79:
    if (isprint(v60))
    {
      v68 = ((v60 >> 6) & 0xFFFFC0FF | ((v60 & 0x3F) << 8)) + 33217;
      if ((v60 & 0x80) == 0)
      {
        v68 = v60 + 1;
      }

      v95 = (v68 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v68) >> 3))));
      v69 = sub_26B212B60();
      v71 = v70;
    }

    else
    {
      v71 = 0xE100000000000000;
      v69 = 46;
    }

    v58 = v84;
    v102 = v54;
    v72 = *(v54 + 16);
    if (v72 >= *(v54 + 24) >> 1)
    {
      sub_26B15B238();
      v58 = v84;
      v54 = v102;
    }

    *(v54 + 16) = v72 + 1;
    v73 = v54 + 16 * v72;
    *(v73 + 32) = v69;
    *(v73 + 40) = v71;
    ++v59;
    --v55;
    a3 = v85;
    if (v55)
    {
      continue;
    }

    break;
  }

  v50 = v91;
  v52 = v90;
LABEL_88:
  v95 = v54;
  sub_26B15FC94(0, &qword_2803E6D90, MEMORY[0x277D835B0], MEMORY[0x277D83940]);
  sub_26B15FCE4(&qword_2803E6D98);
  result = sub_26B212CE0();
  *a5 = v78;
  a5[1] = v77;
  a5[2] = v50;
  a5[3] = v52;
  a5[4] = result;
  a5[5] = v75;
  a5[6] = v79;
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

void Data.hexDescription.getter(uint64_t a1, unint64_t a2)
{
  sub_26B2136C0();

  v66 = 0x3C2061746144;
  v67 = 0xE600000000000000;
  MEMORY[0x26D66F450](a1, a2);
  v4 = sub_26B213B90();
  MEMORY[0x26D670040](v4);

  MEMORY[0x26D670040](0xA3E736574796220, 0xE800000000000000);
  v5 = Data.chunked(by:)(16, a1, a2);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    sub_26B15B218(0, v6, 0);
    v8 = 0;
    v9 = (v5 + 40);
    v63 = v6;
    while (v6 != v8)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = OUTLINED_FUNCTION_6_3();
      v14 = v13;
      sub_26B14F044(v12, v15);
      v16 = OUTLINED_FUNCTION_6_3();
      sub_26B14F044(v16, v17);
      v18 = OUTLINED_FUNCTION_6_3();
      sub_26B14FF4C(v18, v19);
      sub_26B15E7B4(v8, v10, v11, 16, &v66);
      v20 = OUTLINED_FUNCTION_6_3();
      sub_26B14FF4C(v20, v21);
      v22 = v14;
      v23 = v66;
      v24 = v67;
      v25 = v68;
      v26 = v69;
      v28 = v70;
      v27 = v71;
      v29 = v72;
      v64 = v14;
      v30 = *(v14 + 16);
      v31 = *(v22 + 24);
      if (v30 >= v31 >> 1)
      {
        v33 = OUTLINED_FUNCTION_8_3(v31);
        v61 = v35;
        v62 = v34;
        sub_26B15B218(v33, v30 + 1, 1);
        v29 = v61;
        v25 = v62;
        v22 = v64;
      }

      ++v8;
      *(v22 + 16) = v30 + 1;
      v32 = (v22 + 56 * v30);
      v32[4] = v23;
      v32[5] = v24;
      v32[6] = v25;
      v32[7] = v26;
      v32[8] = v28;
      v32[9] = v27;
      v32[10] = v29;
      v9 += 2;
      v6 = v63;
      if (v63 == v8)
      {
        v36 = v22;

        v37 = v36;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_9:
  v38 = *(v37 + 16);
  if (v38)
  {
    v65 = v7;
    v39 = v37;
    sub_26B15B06C();
    v40 = v65;
    v41 = (v39 + 80);
    while (1)
    {
      v42 = *(v41 - 6);
      v43 = *(v41 - 5);
      v44 = *(v41 - 3);
      v45 = *(v41 - 2);
      v46 = *(v41 - 1);
      v47 = *v41;
      v66 = *(v41 - 4);
      v67 = v44;
      if (v47 + 0x4000000000000000 < 0)
      {
        break;
      }

      if (__OFADD__(2 * v47, 8))
      {
        goto LABEL_21;
      }

      sub_26B14FCC8();
      v48 = sub_26B2134D0();
      v50 = v49;
      v66 = v42;
      v67 = v43;
      sub_26B2128F0();
      MEMORY[0x26D670040](8250, 0xE200000000000000);
      MEMORY[0x26D670040](v48, v50);

      MEMORY[0x26D670040](32, 0xE100000000000000);
      MEMORY[0x26D670040](v45, v46);
      v51 = v66;
      v52 = v67;
      v54 = *(v65 + 16);
      v53 = *(v65 + 24);
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_8_3(v53);
        sub_26B15B06C();
      }

      v41 += 7;
      *(v65 + 16) = v54 + 1;
      v55 = v65 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v52;
      if (!--v38)
      {

        goto LABEL_18;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_18:
  v66 = v40;
  v56 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_0_8();
  sub_26B15FC94(0, &qword_2803E6D38, v56, v57);
  sub_26B15FCE4(&qword_2803E6DB0);
  v58 = sub_26B2129F0();
  v60 = v59;

  v66 = 0x3C2061746144;
  v67 = 0xE600000000000000;
  sub_26B2128F0();
  MEMORY[0x26D670040](v58, v60);
}

void sub_26B15F540(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_26B15B06C();
  }
}

unsigned __int8 *sub_26B15F5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;
  sub_26B2128F0();
  result = sub_26B212CF0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26B1653B0();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26B213780();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            LOBYTE(v14) = 0;
            v25 = result + 1;
            v16 = 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v14 * a3;
              if ((v28 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v14 = v28 + (v26 + v27);
              if ((v14 >> 8))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v16 = 0;
            v19 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          LOBYTE(v32) = 0;
          v16 = 1;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a3;
            if ((v35 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if ((v32 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v32;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          LOBYTE(v14) = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v14 = v20 - (v17 + v18);
            if ((v14 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v63 = v6;
  v64 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v38)
      {
        LOBYTE(v40) = 0;
        v56 = a3 + 48;
        v57 = a3 + 55;
        v58 = a3 + 87;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v63;
        v16 = 1;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a3;
          if ((v62 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if ((v40 >> 8))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        LOBYTE(v40) = 0;
        v41 = a3 + 48;
        v42 = a3 + 55;
        v43 = a3 + 87;
        if (a3 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v63 + 1;
        v16 = 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a3;
          if ((v47 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if ((v40 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      LOBYTE(v40) = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v63 + 1;
      v16 = 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
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

        v55 = v40 * a3;
        if ((v55 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if ((v40 >> 8))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v16 = 0;
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void *sub_26B15FB88(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B212BB0();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_26B15FF64(v4, 0);
  sub_26B2128F0();
  v7 = sub_26B15FE98(&v9, v6 + 4, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

unint64_t sub_26B15FC18()
{
  result = qword_2803E6DA8;
  if (!qword_2803E6DA8)
  {
    sub_26B15FC94(255, &qword_2803E6DA0, MEMORY[0x277D84B78], MEMORY[0x277D84220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6DA8);
  }

  return result;
}

void sub_26B15FC94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26B15FCE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_8();
    sub_26B15FC94(255, v3, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26B15FD48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26B15FD88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_26B15FDE4()
{
  if (!qword_2803E6DB8)
  {
    sub_26B15FE3C();
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6DB8);
    }
  }
}

unint64_t sub_26B15FE3C()
{
  result = qword_2803E6DC0;
  if (!qword_2803E6DC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803E6DC0);
  }

  return result;
}

uint64_t sub_26B15FE98(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_26B212C30();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B15FF64(uint64_t a1, uint64_t a2)
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

  sub_26B15FC94(0, &qword_2803E6D50, MEMORY[0x277D835B0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t NSProcessInfo.isDebugging.getter()
{
  if (qword_2803E6AD0 != -1)
  {
    swift_once();
  }

  sub_26B1620DC(0, &qword_2803E6DC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26B216370;
  *(v0 + 32) = 0xE00000001;
  *(v0 + 40) = 1;
  *(v0 + 44) = getpid();
  sub_26B160108(v0, v2);

  return (v3 >> 11) & 1;
}

uint64_t sub_26B160108@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x288uLL);
  v7 = a1;
  v8 = 648;
  sub_26B2128F0();
  sub_26B16256C(__src, &v7, &v8);
  if (!v2)
  {
    memcpy(a2, __src, 0x288uLL);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KernelError.message.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_26B2128F0();
  return v1;
}

uint64_t KernelError.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NSThread.ThreadInfo.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26B2128F0();
  return v1;
}

uint64_t NSThread.ThreadInfo.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NSThread.info.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = sub_26B2140A0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = thread_info_out - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *thread_info_out = 0u;
  thread_info_outCnt[0] = 28;
  v10 = pthread_self();
  v11 = pthread_mach_thread_np(v10);
  v12 = thread_info(v11, 5u, thread_info_out, thread_info_outCnt);
  if (v12)
  {
    v13 = v12;
    sub_26B161D38();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0xD00000000000001BLL;
    *(v14 + 16) = 0x800000026B21F600;
    result = swift_willThrow();
  }

  else
  {
    v33 = sub_26B161D8C();
    v16 = swift_allocObject();
    *thread_info_outCnt = v16;
    v17 = v29;
    v16[1] = v28;
    v16[2] = v17;
    v18 = v31;
    v16[3] = v30;
    v16[4] = v18;
    sub_26B214080();
    sub_26B214090();
    v19 = sub_26B160634();

    v20 = sub_26B1606C4(v19);
    v22 = v21;
    result = (*(v5 + 8))(v9, v2);
    v23 = HIDWORD(v27);
    *a1 = *(&v27 + 4);
    *(a1 + 8) = v23;
    *(a1 + 16) = v20;
    *(a1 + 24) = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B1605A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B15CF98(a3, v5);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_26B1605F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B1605A8(*a1, a1[1], (a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_26B160634()
{
  result = sub_26B2138D0();
  if (v0)
  {
    sub_26B162128();
    swift_dynamicCast();
    result = swift_willThrowTypedImpl();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1606C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = sub_26B212B50();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t waitForDebugger(for:)()
{
  OUTLINED_FUNCTION_25();
  v0[9] = v1;
  v0[10] = v2;
  v3 = sub_26B212FB0();
  v0[11] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v0[12] = v4;
  v6 = *(v5 + 64);
  v0[13] = OUTLINED_FUNCTION_31();
  v7 = sub_26B2126F0();
  v0[14] = v7;
  OUTLINED_FUNCTION_1_7(v7);
  v0[15] = v8;
  v10 = *(v9 + 64);
  v0[16] = OUTLINED_FUNCTION_31();
  v11 = sub_26B212720();
  v0[17] = v11;
  OUTLINED_FUNCTION_1_7(v11);
  v0[18] = v12;
  v14 = *(v13 + 64);
  v0[19] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_9();
  sub_26B162480(0, v15, v16, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  v0[20] = OUTLINED_FUNCTION_31();
  v20 = sub_26B213880();
  v0[21] = v20;
  OUTLINED_FUNCTION_1_7(v20);
  v0[22] = v21;
  v0[23] = *(v22 + 64);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v23 = sub_26B2138A0();
  v0[26] = v23;
  OUTLINED_FUNCTION_1_7(v23);
  v0[27] = v24;
  v0[28] = *(v25 + 64);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B1609A0, 0, 0);
}

uint64_t sub_26B1609A0()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v36 = v1;
  v37 = v0[23];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[20];
  v38 = v0[28];
  v39 = v0[9];
  v41 = v0[10];
  sub_26B213890();
  sub_26B213840();
  v10 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  (*(v8 + 16))(v6, v5, v7);
  (*(v3 + 16))(v1, v2, v4);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = (v37 + *(v3 + 80) + v11) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v8 + 32))(v13 + v11, v6, v7);
  (*(v3 + 32))(v13 + v12, v36, v4);
  v14 = (v13 + ((v38 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v39;
  v14[1] = v41;
  sub_26B161608();
  v16 = v15;
  v0[31] = v15;
  LODWORD(v9) = isatty(0);
  sub_26B1620DC(0, &qword_2803E6DE8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26B2162F0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  if (v9 == 1)
  {
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[16];
    v21 = v0[15];
    v40 = v0[14];
    v42 = v0[17];
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_24_0(v22);
    sub_26B214020();

    v23 = sub_26B2126C0();
    fflush(v23);
    v24 = sub_26B2126E0();
    v25 = signal(2, v24);
    sub_26B162184();
    v26 = sub_26B213350();
    swift_getObjectType();
    v0[6] = sub_26B1621C8;
    v0[7] = v16;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26B161BE4;
    v0[5] = &block_descriptor;
    v27 = _Block_copy(v0 + 2);

    sub_26B212710();
    sub_26B161C28();
    sub_26B213360();
    _Block_release(v27);
    (*(v21 + 8))(v20, v40);
    (*(v19 + 8))(v18, v42);
    v28 = v0[7];

    sub_26B213380();
  }

  else
  {
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_24_0(v29);
    sub_26B214020();

    v25 = 0;
    v26 = 0;
  }

  v0[32] = v25;
  v0[33] = v26;
  v30 = *(MEMORY[0x277D857C8] + 4);
  v31 = swift_task_alloc();
  v0[34] = v31;
  v32 = sub_26B162128();
  v0[35] = v32;
  *v31 = v0;
  v31[1] = sub_26B160DB4;
  v33 = MEMORY[0x277D84950];
  v34 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v32, v16, v34, v32, v33);
}

uint64_t sub_26B160DB4()
{
  OUTLINED_FUNCTION_25();
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_22();
  *v8 = v7;
  *(v9 + 288) = v0;

  if (v0)
  {
    v10 = sub_26B161034;
  }

  else
  {
    v10 = sub_26B160EBC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26B160EBC()
{
  if (*(v0 + 264))
  {
    v5 = *(v0 + 264);
    swift_getObjectType();
    sub_26B213370();
  }

  if (isatty(0) == 1)
  {
    v6 = *(v0 + 256);
    if (!v6)
    {
      v6 = sub_26B2126D0();
    }

    signal(2, v6);
    sub_26B1620DC(0, &qword_2803E6DE8);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_6_4(v7, MEMORY[0x277D837D0], xmmword_26B2162F0);

    v8 = sub_26B2126C0();
    fflush(v8);
  }

  OUTLINED_FUNCTION_3_7();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_23();
  v11(v10);

  OUTLINED_FUNCTION_10_0();

  return v12();
}

void sub_26B161034()
{
  v5 = *(v0 + 288);
  *(v0 + 64) = v5;
  v6 = *(v0 + 280);
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = v5;
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 88);

    (*(v11 + 8))(v10, v12);
    if (*(v0 + 264))
    {
      v13 = *(v0 + 264);
      swift_getObjectType();
      sub_26B213370();
    }

    if (isatty(0) == 1)
    {
      v14 = *(v0 + 256);
      if (!v14)
      {
        v14 = sub_26B2126D0();
      }

      signal(2, v14);
      sub_26B1620DC(0, &qword_2803E6DE8);
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_6_4(v15, MEMORY[0x277D837D0], xmmword_26B2162F0);

      v16 = sub_26B2126C0();
      fflush(v16);
    }

    OUTLINED_FUNCTION_3_7();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v1, v2);
    v17 = *(v4 + 8);
    v18 = OUTLINED_FUNCTION_23();
    v19(v18);

    OUTLINED_FUNCTION_10_0();

    v20();
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_26B161220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_26B213880();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B1612F0, 0, 0);
}

uint64_t sub_26B1612F0()
{
  OUTLINED_FUNCTION_18();
  sub_26B213870();
  v2 = OUTLINED_FUNCTION_8_4();
  v1(v2);
  OUTLINED_FUNCTION_6_3();
  if (sub_26B214140() & 1) == 0 || (v3 = [objc_opt_self() processInfo], v4 = NSProcessInfo.isDebugging.getter(), v3, (v4))
  {
    v6 = v0[8];
    v5 = v0[9];

    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_20_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_14_0();
  v9 = OUTLINED_FUNCTION_23();
  v1(v9);
  v10 = *(MEMORY[0x277D858F0] + 4);
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_2_8(v11);
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x282200618]();
}

uint64_t sub_26B161438()
{
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 88);
  (*(v2 + 80))(*(v2 + 64), *(v2 + 48));
  if (v0)
  {
    v7 = sub_26B1615A4;
  }

  else
  {
    v7 = sub_26B1612F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26B1615A4()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_10_0();
  v4 = v0[13];

  return v3();
}

void sub_26B161608()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_0_9();
  sub_26B162480(0, v6, v7, MEMORY[0x277D83D88]);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_2();
  sub_26B162308(v3, v1);
  v12 = sub_26B213020();
  OUTLINED_FUNCTION_4_7(v12);
  if (v4 == 1)
  {
    sub_26B16239C(v1);
  }

  else
  {
    sub_26B213010();
    OUTLINED_FUNCTION_7_4();
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_6_3();
    v16(v15);
  }

  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = v18;
    sub_26B212F70();
    OUTLINED_FUNCTION_19_0();
    if (v2)
    {
LABEL_6:
      sub_26B212B10();
      OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        OUTLINED_FUNCTION_13_1();
      }

      OUTLINED_FUNCTION_9_4();

      sub_26B16239C(v3);

      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  sub_26B16239C(v3);
  if (v17 | v19)
  {
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_9_4();
LABEL_13:
  OUTLINED_FUNCTION_28();
}

void sub_26B1617D0()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_0_9();
  sub_26B162480(0, v6, v7, MEMORY[0x277D83D88]);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_2();
  sub_26B162308(v3, v1);
  v12 = sub_26B213020();
  OUTLINED_FUNCTION_4_7(v12);
  if (v4 == 1)
  {
    sub_26B16239C(v1);
  }

  else
  {
    sub_26B213010();
    OUTLINED_FUNCTION_7_4();
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_6_3();
    v16(v15);
  }

  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = v18;
    sub_26B212F70();
    OUTLINED_FUNCTION_19_0();
    if (v2)
    {
LABEL_6:
      sub_26B212B10();
      OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        OUTLINED_FUNCTION_13_1();
      }

      OUTLINED_FUNCTION_9_4();

      sub_26B16239C(v3);

      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  sub_26B16239C(v3);
  if (v17 | v19)
  {
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_9_4();
LABEL_13:
  OUTLINED_FUNCTION_28();
}

void sub_26B161990()
{
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_0_9();
  sub_26B162480(0, v8, v9, MEMORY[0x277D83D88]);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_2();
  sub_26B162308(v5, v0);
  v14 = sub_26B213020();
  OUTLINED_FUNCTION_4_7(v14);
  if (v1 == 1)
  {
    sub_26B16239C(v0);
  }

  else
  {
    sub_26B213010();
    OUTLINED_FUNCTION_7_4();
    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_6_3();
    v18(v17);
  }

  v20 = *(v3 + 16);
  v19 = *(v3 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = v20;
    sub_26B212F70();
    OUTLINED_FUNCTION_19_0();
    if (v7)
    {
LABEL_6:
      sub_26B212B10();
      type metadata accessor for SQLDatabase(0);

      if (v19 | v21)
      {
        OUTLINED_FUNCTION_13_1();
      }

      swift_task_create();

      sub_26B16239C(v5);

      goto LABEL_13;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_26B16239C(v5);
  type metadata accessor for SQLDatabase(0);
  if (v19 | v21)
  {
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_9_4();
LABEL_13:
  OUTLINED_FUNCTION_28();
}

uint64_t sub_26B161B90()
{
  sub_26B162128();

  return sub_26B2130E0();
}

uint64_t sub_26B161BE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26B161C28()
{
  sub_26B2126F0();
  sub_26B162428();
  sub_26B162480(0, &qword_2803E6E00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_26B1624E4();
  return sub_26B2135B0();
}

void sub_26B161CD4(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v4 = *(v3 + 16);
    }

    sub_26B16A808();
    v3 = v5;
  }

  *v1 = v3;
}

unint64_t sub_26B161D38()
{
  result = qword_2803E6DD0;
  if (!qword_2803E6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6DD0);
  }

  return result;
}

uint64_t sub_26B161D8C()
{
  v0 = qword_2803E6DD8;
  if (!qword_2803E6DD8)
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v0 = TupleTypeMetadata;
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2803E6DD8);
    }
  }

  return v0;
}

uint64_t sub_26B161E7C()
{
  v2 = sub_26B213880();
  OUTLINED_FUNCTION_1_7(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_26B2138A0();
  OUTLINED_FUNCTION_1_7(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = (v0 + ((*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = sub_26B161FF4;
  OUTLINED_FUNCTION_20_0();

  return sub_26B161220(v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_26B161FF4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_22();
  *v3 = v2;

  OUTLINED_FUNCTION_10_0();

  return v4();
}

void sub_26B1620DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26B213BA0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_26B162128()
{
  result = qword_280D2DA78;
  if (!qword_280D2DA78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280D2DA78);
  }

  return result;
}

unint64_t sub_26B162184()
{
  result = qword_2803E6DF0;
  if (!qword_2803E6DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803E6DF0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B1621E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_26B162228(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26B162278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26B1622B8(uint64_t result, int a2, int a3)
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

uint64_t sub_26B162308(uint64_t a1, uint64_t a2)
{
  sub_26B162480(0, &qword_2803E6DE0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B16239C(uint64_t a1)
{
  sub_26B162480(0, &qword_2803E6DE0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B162428()
{
  result = qword_2803E6DF8;
  if (!qword_2803E6DF8)
  {
    sub_26B2126F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6DF8);
  }

  return result;
}

void sub_26B162480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26B1624E4()
{
  result = qword_2803E6E08;
  if (!qword_2803E6E08)
  {
    sub_26B162480(255, &qword_2803E6E00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E08);
  }

  return result;
}

uint64_t sub_26B16256C(uint64_t result, uint64_t *a2, size_t *a3)
{
  v3 = *(*a2 + 16);
  if (HIDWORD(v3))
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    sub_26B161CD4(0);
    result = sysctl((*a2 + 32), v3, v6, a3, 0, 0);
    v7 = result;
    if (result || *a3 != 648)
    {
      sub_26B2136C0();

      v8 = *a2;
      v9 = sub_26B2128F0();
      v10 = MEMORY[0x26D670290](v9, MEMORY[0x277D849A8]);
      v12 = v11;

      MEMORY[0x26D670040](v10, v12);

      sub_26B161D38();
      swift_allocError();
      *v13 = v7;
      *(v13 + 8) = 0xD000000000000020;
      *(v13 + 16) = 0x800000026B21F670;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_26B1626B4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (v2)
  {
    return swift_allocError();
  }

  *a2 = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return MEMORY[0x282200638](100000000000000000, 0);
}

uint64_t OUTLINED_FUNCTION_18()
{
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return sub_26B213840();
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

uint64_t OUTLINED_FUNCTION_30_1()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[3];

  return sub_26B213840();
}

uint64_t UUID.v7Precision.hashValue.getter(unsigned __int8 a1)
{
  sub_26B214030();
  MEMORY[0x26D671480](a1);
  return sub_26B214070();
}

uint64_t sub_26B1628EC()
{
  v1 = *v0;
  sub_26B214030();
  UUID.v7Precision.hash(into:)(v3, v1);
  return sub_26B214070();
}

void static UUID.v7(precision:)(char a1)
{
  if (qword_2803E6A70 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2803E6E10);
  sub_26B1629CC(&unk_2803E6E18, a1);

  os_unfair_lock_unlock(&dword_2803E6E10);
}

uint64_t sub_26B1629CC(unint64_t *a1, char a2)
{
  v4 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  v5 = v4 / 0x3B9ACA00;
  v6 = v4 % 0x3B9ACA00;
  v15 = 0;
  result = MEMORY[0x26D672400](&v15, 8);
  if (!a2)
  {
    v10 = v6 / 0xF4240;
    if (*a1 != v5 || a1[1] != v10)
    {
      *a1 = v5;
      a1[1] = v10;
      a1[4] = 0;
      return sub_26B2120B0();
    }

    v11 = a1[4];
    if (!__OFADD__(v11, 1))
    {
      a1[4] = v11 + 1;
      return sub_26B2120B0();
    }

    goto LABEL_20;
  }

  if (a2 == 1)
  {
    v8 = v6 / 0x3E8;
    if (*a1 != v5 || a1[2] != v8)
    {
      *a1 = v5;
      a1[2] = v8;
      a1[4] = 0;
      return sub_26B2120B0();
    }

    v9 = a1[4];
    if (!__OFADD__(v9, 1))
    {
      a1[4] = v9 + 1;
      return sub_26B2120B0();
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*a1 != v5 || a1[3] != v6)
  {
    *a1 = v5;
    a1[3] = v6;
    a1[4] = 0;
    return sub_26B2120B0();
  }

  v12 = a1[4];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    a1[4] = v14;
    return sub_26B2120B0();
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t static UUID._v7<A>(precision:ns:random:counters:)(char a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = a2 / 0x3B9ACA00;
  v7 = a2 % 0x3B9ACA00;
  result = sub_26B212980();
  if (!a1)
  {
    v11 = v7 / 0xF4240;
    if (*a4 != v6 || a4[1] != v11)
    {
      *a4 = v6;
      a4[1] = v11;
      a4[4] = 0;
      return sub_26B2120B0();
    }

    v12 = a4[4];
    if (!__OFADD__(v12, 1))
    {
      a4[4] = v12 + 1;
      return sub_26B2120B0();
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    v9 = v7 / 0x3E8;
    if (*a4 != v6 || a4[2] != v9)
    {
      *a4 = v6;
      a4[2] = v9;
      a4[4] = 0;
      return sub_26B2120B0();
    }

    v10 = a4[4];
    if (!__OFADD__(v10, 1))
    {
      a4[4] = v10 + 1;
      return sub_26B2120B0();
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*a4 != v6 || a4[3] != v7)
  {
    *a4 = v6;
    a4[3] = v7;
    a4[4] = 0;
    return sub_26B2120B0();
  }

  v13 = a4[4];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    a4[4] = v15;
    return sub_26B2120B0();
  }

LABEL_21:
  __break(1u);
  return result;
}

double sub_26B162E98()
{
  dword_2803E6E10 = 0;
  result = 0.0;
  unk_2803E6E18 = 0u;
  unk_2803E6E28 = 0u;
  qword_2803E6E38 = 0;
  return result;
}

uint64_t UUID.UUIDVersion.init(rawValue:)(char a1)
{
  if ((a1 - 1) >= 0xFu)
  {
    return 15;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t sub_26B162EFC@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = UUID.UUIDVersion.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26B162F28@<X0>(_BYTE *a1@<X8>)
{
  result = UUID.UUIDVersion.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t UUID.version.getter()
{
  v0 = sub_26B2120C0();
  result = UUID.UUIDVersion.init(rawValue:)((v0 >> 52) & 0xF);
  if (result == 15)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B162F88()
{
  result = qword_2803E6E40;
  if (!qword_2803E6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E40);
  }

  return result;
}

unint64_t sub_26B162FE0()
{
  result = qword_2803E6E48;
  if (!qword_2803E6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E48);
  }

  return result;
}

uint64_t _s11v7PrecisionOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s11v7PrecisionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B1631A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1631C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t _s11UUIDVersionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11UUIDVersionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

void Error.encodedOnionDescription.getter()
{
  OUTLINED_FUNCTION_27_0();
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1();
  v52 = *(v6 + 16);
  v53 = v1;
  v52(v0, v1, v4);
  OUTLINED_FUNCTION_26_0();
  v11 = sub_26B213DE0();
  if (v11)
  {
    v1 = v11;
    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_26_0();
    v14(v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_3();
    v17 = OUTLINED_FUNCTION_25_0(v15, v16);
    (*(v6 + 32))(v17, v0, v4);
  }

  v18 = sub_26B211DF0();

  if (qword_2803E6A78 != -1)
  {
    OUTLINED_FUNCTION_4_8();
    swift_once();
  }

  v19 = off_2803E6E50;
  v20 = [v18 domain];
  v21 = sub_26B212A80();
  v23 = v22;

  sub_26B15CE28(v21, v23, v19);

  v24 = sub_26B213B90();
  MEMORY[0x26D670040](v24);

  MEMORY[0x26D670040](8236, 0xE200000000000000);
  [v18 code];
  v25 = sub_26B213B90();
  MEMORY[0x26D670040](v25);

  MEMORY[0x26D670040](41, 0xE100000000000000);
  v26 = &v54;
  MEMORY[0x26D670040](40, 0xE100000000000000);

  v52(v2, v53, v4);
  OUTLINED_FUNCTION_16_0();
  v27 = sub_26B213DE0();
  if (v27)
  {
    v26 = v27;
    v28 = *(v6 + 8);
    v29 = OUTLINED_FUNCTION_16_0();
    v30(v29);
  }

  else
  {
    v31 = OUTLINED_FUNCTION_5_3();
    v33 = OUTLINED_FUNCTION_25_0(v31, v32);
    (*(v6 + 32))(v33, v2, v4);
  }

  v34 = sub_26B211DF0();

  v35 = [v34 underlyingErrors];
  sub_26B162128();
  v36 = sub_26B212E40();

  if (*(v36 + 16))
  {
    v51 = v34;
    OUTLINED_FUNCTION_21_0(MEMORY[0x277D84F90]);
    do
    {
      OUTLINED_FUNCTION_28_0();
      OUTLINED_FUNCTION_9_0();
      v38 = *(v37 + 64);
      MEMORY[0x28223BE20](v39);
      v41 = OUTLINED_FUNCTION_8_5(v40, v51);
      v42(v41);
      v43 = 0xE100000000000000;
      (Error.encodedOnionDescription.getter)();
      v44 = OUTLINED_FUNCTION_19_1();
      v45(v44);

      OUTLINED_FUNCTION_18_0();
      if (v46)
      {
        OUTLINED_FUNCTION_23_0();
      }

      OUTLINED_FUNCTION_13_2();
    }

    while (!v47);

    v34 = v51;
  }

  else
  {
  }

  sub_26B165308();
  sub_26B165358();
  v48 = OUTLINED_FUNCTION_22_2();
  v50 = v49;

  MEMORY[0x26D670040](v48, v50);

  OUTLINED_FUNCTION_28();
}

void Error.onionDescription.getter()
{
  OUTLINED_FUNCTION_27_0();
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1();
  v11 = *(v6 + 16);
  v51 = v1;
  v11(v0, v1, v4);
  OUTLINED_FUNCTION_26_0();
  v12 = sub_26B213DE0();
  if (v12)
  {
    v1 = v12;
    v13 = *(v6 + 8);
    v14 = OUTLINED_FUNCTION_26_0();
    v15(v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_3();
    v18 = OUTLINED_FUNCTION_25_0(v16, v17);
    (*(v6 + 32))(v18, v0, v4);
  }

  v19 = sub_26B211DF0();

  v20 = [v19 domain];
  v21 = sub_26B212A80();
  v23 = v22;

  MEMORY[0x26D670040](v21, v23);

  MEMORY[0x26D670040](8236, 0xE200000000000000);
  [v19 code];
  v24 = sub_26B213B90();
  MEMORY[0x26D670040](v24);

  MEMORY[0x26D670040](41, 0xE100000000000000);
  v25 = &v52;
  MEMORY[0x26D670040](40, 0xE100000000000000);

  v11(v2, v51, v4);
  OUTLINED_FUNCTION_16_0();
  v26 = sub_26B213DE0();
  if (v26)
  {
    v25 = v26;
    v27 = *(v6 + 8);
    v28 = OUTLINED_FUNCTION_16_0();
    v29(v28);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_5_3();
    v32 = OUTLINED_FUNCTION_25_0(v30, v31);
    (*(v6 + 32))(v32, v2, v4);
  }

  v33 = sub_26B211DF0();

  v34 = [v33 underlyingErrors];
  sub_26B162128();
  v35 = sub_26B212E40();

  if (*(v35 + 16))
  {
    v50 = v33;
    OUTLINED_FUNCTION_21_0(MEMORY[0x277D84F90]);
    do
    {
      OUTLINED_FUNCTION_28_0();
      OUTLINED_FUNCTION_9_0();
      v37 = *(v36 + 64);
      MEMORY[0x28223BE20](v38);
      v40 = OUTLINED_FUNCTION_8_5(v39, v50);
      v41(v40);
      v42 = 0xE100000000000000;
      (Error.onionDescription.getter)();
      v43 = OUTLINED_FUNCTION_19_1();
      v44(v43);

      OUTLINED_FUNCTION_18_0();
      if (v45)
      {
        OUTLINED_FUNCTION_23_0();
      }

      OUTLINED_FUNCTION_13_2();
    }

    while (!v46);

    v33 = v50;
  }

  else
  {
  }

  sub_26B165308();
  sub_26B165358();
  v47 = OUTLINED_FUNCTION_22_2();
  v49 = v48;

  MEMORY[0x26D670040](v47, v49);

  OUTLINED_FUNCTION_28();
}

void sub_26B163BB0(uint64_t a1, unint64_t a2)
{
  v136 = sub_26B211BE0();
  v4 = *(v136 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_26B212C90() & 1) == 0)
  {
    return;
  }

  v7 = sub_26B212CA0();
  v8 = MEMORY[0x277D84F90];
  if ((v7 & 1) == 0)
  {
    return;
  }

  v126 = v4;
  sub_26B2128F0();
  v9 = sub_26B16CD98(1uLL, a1, a2);
  *&v141 = sub_26B19B2C8(1, v9, v10);
  *(&v141 + 1) = v11;
  v142 = v12;
  v143 = v13;
  v139 = 10281;
  v140 = 0xE200000000000000;
  sub_26B1668E4();
  sub_26B166938();
  v14 = sub_26B213230();

  v15 = *(v14 + 16);
  if (v15)
  {
    *&v141 = v8;
    sub_26B15B2C8(0, v15, 0);
    v16 = 0;
    v17 = v141;
    v18 = v14 + 32;
    v128 = v15;
    v129 = v14;
    v127 = v14 + 32;
    do
    {
      if (v16 >= *(v14 + 16))
      {
        goto LABEL_131;
      }

      v19 = (v18 + 32 * v16);
      v20 = *v19;
      v21 = v19[1] >> 14;
      v22 = v8;
      if (v21 != *v19 >> 14)
      {
        v132 = v16;
        v133 = v17;
        v23 = v19[3];
        v137 = v19[2];
        sub_26B2128F0();
        v24 = v20;
        v134 = v8;
LABEL_8:
        for (i = v24; ; i = sub_26B2133F0())
        {
          v26 = i >> 14;
          v27 = v24 >> 14;
          if (i >> 14 == v21)
          {
            break;
          }

          if (sub_26B213440() == 44 && v28 == 0xE100000000000000)
          {

LABEL_17:
            if (v27 != v26)
            {
              if (v26 < v27)
              {
                goto LABEL_133;
              }

              v31 = sub_26B213450();
              v33 = v32;
              v130 = v35;
              v131 = v34;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = *(v134 + 16);
                sub_26B16A990();
                v134 = v41;
              }

              v36 = *(v134 + 16);
              if (v36 >= *(v134 + 24) >> 1)
              {
                sub_26B16A990();
                v134 = v42;
              }

              v37 = v134;
              *(v134 + 16) = v36 + 1;
              v38 = (v37 + 32 * v36);
              v38[4] = v31;
              v38[5] = v33;
              v39 = v130;
              v38[6] = v131;
              v38[7] = v39;
            }

            v24 = sub_26B2133F0();
            goto LABEL_8;
          }

          v30 = sub_26B213E30();

          if (v30)
          {
            goto LABEL_17;
          }
        }

        if (v27 == v21)
        {

          v8 = MEMORY[0x277D84F90];
          v16 = v132;
          v17 = v133;
          v15 = v128;
          v14 = v129;
          v18 = v127;
          v22 = v134;
        }

        else
        {
          if (v21 < v27)
          {
            goto LABEL_134;
          }

          v43 = sub_26B213450();
          v45 = v44;
          v47 = v46;
          v49 = v48;

          v50 = v134;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = *(v50 + 16);
            sub_26B16A990();
            v50 = v59;
          }

          v17 = v133;
          v51 = *(v50 + 16);
          v52 = v50;
          if (v51 >= *(v50 + 24) >> 1)
          {
            sub_26B16A990();
            v52 = v60;
          }

          v22 = v52;
          *(v52 + 16) = v51 + 1;
          v53 = (v52 + 32 * v51);
          v53[4] = v43;
          v53[5] = v45;
          v53[6] = v47;
          v53[7] = v49;
          v8 = MEMORY[0x277D84F90];
          v15 = v128;
          v14 = v129;
          v16 = v132;
          v18 = v127;
        }
      }

      *&v141 = v17;
      v55 = *(v17 + 16);
      v54 = *(v17 + 24);
      if (v55 >= v54 >> 1)
      {
        v56 = v18;
        v57 = v22;
        sub_26B15B2C8(v54 > 1, v55 + 1, 1);
        v22 = v57;
        v18 = v56;
        v17 = v141;
      }

      ++v16;
      *(v17 + 16) = v55 + 1;
      *(v17 + 8 * v55 + 32) = v22;
    }

    while (v16 != v15);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v61 = *(v17 + 16);
  if (v61)
  {
    v139 = v8;
    sub_26B15B27C(0, v61, 0);
    v62 = 0;
    v63 = v139;
    v131 = v17 + 32;
    v64 = (v126 + 8);
    v133 = v17;
    v130 = v61;
    do
    {
      if (v62 >= *(v17 + 16))
      {
        goto LABEL_132;
      }

      v65 = *(v131 + 8 * v62);
      v66 = *(v65 + 16);
      if (v66)
      {
        v134 = v62;
        v137 = v63;
        v138 = v8;
        sub_26B2128F0();
        sub_26B15B06C();
        v67 = v138;
        v132 = v65;
        v68 = (v65 + 56);
        do
        {
          v69 = *(v68 - 1);
          v70 = *v68;
          v141 = *(v68 - 3);
          v142 = v69;
          v143 = v70;
          sub_26B2128F0();
          v71 = v135;
          sub_26B211BA0();
          sub_26B16698C();
          v72 = sub_26B213490();
          v74 = v73;
          (*v64)(v71, v136);

          v138 = v67;
          v75 = *(v67 + 16);
          if (v75 >= *(v67 + 24) >> 1)
          {
            sub_26B15B06C();
            v67 = v138;
          }

          *(v67 + 16) = v75 + 1;
          v76 = v67 + 16 * v75;
          *(v76 + 32) = v72;
          *(v76 + 40) = v74;
          v68 += 4;
          --v66;
        }

        while (v66);

        v8 = MEMORY[0x277D84F90];
        v63 = v137;
        v17 = v133;
        v62 = v134;
        v61 = v130;
      }

      else
      {
        v67 = v8;
      }

      v139 = v63;
      v78 = *(v63 + 16);
      v77 = *(v63 + 24);
      if (v78 >= v77 >> 1)
      {
        v79 = v62;
        sub_26B15B27C(v77 > 1, v78 + 1, 1);
        v62 = v79;
        v63 = v139;
      }

      ++v62;
      *(v63 + 16) = v78 + 1;
      *(v63 + 8 * v78 + 32) = v67;
    }

    while (v62 != v61);
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
  }

  v80 = 0;
  v81 = *(v63 + 16);
  v82 = v63 + 32;
  v83 = &v141 + 1;
  v137 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v80 == v81)
    {

      return;
    }

    if (v80 >= *(v63 + 16))
    {
      break;
    }

    v84 = *(v82 + 8 * v80++);
    v85 = v84[2];
    if (v85)
    {
      v86 = v84[4];
      v87 = &v84[2 * v85 + 4];
      v88 = *(v87 - 16);
      v89 = *(v87 - 8);
      v90 = HIBYTE(v89) & 0xF;
      v91 = v88 & 0xFFFFFFFFFFFFLL;
      if ((v89 & 0x2000000000000000) != 0 ? HIBYTE(v89) & 0xF : v88 & 0xFFFFFFFFFFFFLL)
      {
        v93 = v63;
        v94 = v84[5];
        if ((v89 & 0x1000000000000000) != 0)
        {
          v116 = v84[5];
          sub_26B2128F0();
          sub_26B2128F0();
          sub_26B2128F0();
          v97 = sub_26B16583C(v88, v89, 10);
          LODWORD(v136) = v117;

          if ((v136 & 1) == 0)
          {
            goto LABEL_122;
          }

LABEL_120:

          v63 = v93;
        }

        else
        {
          if ((v89 & 0x2000000000000000) != 0)
          {
            *&v141 = v88;
            *(&v141 + 1) = v89 & 0xFFFFFFFFFFFFFFLL;
            if (v88 == 43)
            {
              if (!v90)
              {
                goto LABEL_135;
              }

              if (--v90)
              {
                v97 = 0;
                v107 = v83;
                while (1)
                {
                  v108 = *v107 - 48;
                  if (v108 > 9)
                  {
                    break;
                  }

                  v109 = 10 * v97;
                  if ((v97 * 10) >> 64 != (10 * v97) >> 63)
                  {
                    break;
                  }

                  v97 = v109 + v108;
                  if (__OFADD__(v109, v108))
                  {
                    break;
                  }

                  ++v107;
                  if (!--v90)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (v88 == 45)
            {
              if (!v90)
              {
                goto LABEL_138;
              }

              if (--v90)
              {
                v97 = 0;
                v101 = v83;
                while (1)
                {
                  v102 = *v101 - 48;
                  if (v102 > 9)
                  {
                    break;
                  }

                  v103 = 10 * v97;
                  if ((v97 * 10) >> 64 != (10 * v97) >> 63)
                  {
                    break;
                  }

                  v97 = v103 - v102;
                  if (__OFSUB__(v103, v102))
                  {
                    break;
                  }

                  ++v101;
                  if (!--v90)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (v90)
            {
              v97 = 0;
              v112 = &v141;
              while (1)
              {
                v113 = *v112 - 48;
                if (v113 > 9)
                {
                  break;
                }

                v114 = 10 * v97;
                if ((v97 * 10) >> 64 != (10 * v97) >> 63)
                {
                  break;
                }

                v97 = v114 + v113;
                if (__OFADD__(v114, v113))
                {
                  break;
                }

                ++v112;
                if (!--v90)
                {
                  goto LABEL_119;
                }
              }
            }
          }

          else
          {
            if ((v88 & 0x1000000000000000) != 0)
            {
              v95 = ((v89 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v95 = sub_26B213780();
            }

            v96 = *v95;
            if (v96 == 43)
            {
              if (v91 < 1)
              {
                goto LABEL_137;
              }

              v90 = v91 - 1;
              if (v91 != 1)
              {
                v97 = 0;
                if (!v95)
                {
                  goto LABEL_110;
                }

                v104 = v95 + 1;
                while (1)
                {
                  v105 = *v104 - 48;
                  if (v105 > 9)
                  {
                    break;
                  }

                  v106 = 10 * v97;
                  if ((v97 * 10) >> 64 != (10 * v97) >> 63)
                  {
                    break;
                  }

                  v97 = v106 + v105;
                  if (__OFADD__(v106, v105))
                  {
                    break;
                  }

                  ++v104;
                  if (!--v90)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (v96 == 45)
            {
              if (v91 < 1)
              {
                goto LABEL_136;
              }

              v90 = v91 - 1;
              if (v91 != 1)
              {
                v97 = 0;
                if (!v95)
                {
                  goto LABEL_110;
                }

                v98 = v95 + 1;
                while (1)
                {
                  v99 = *v98 - 48;
                  if (v99 > 9)
                  {
                    break;
                  }

                  v100 = 10 * v97;
                  if ((v97 * 10) >> 64 != (10 * v97) >> 63)
                  {
                    break;
                  }

                  v97 = v100 - v99;
                  if (__OFSUB__(v100, v99))
                  {
                    break;
                  }

                  ++v98;
                  if (!--v90)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (v91)
            {
              v97 = 0;
              if (!v95)
              {
LABEL_110:
                LOBYTE(v90) = 0;
                goto LABEL_119;
              }

              while (1)
              {
                v110 = *v95 - 48;
                if (v110 > 9)
                {
                  break;
                }

                v111 = 10 * v97;
                if ((v97 * 10) >> 64 != (10 * v97) >> 63)
                {
                  break;
                }

                v97 = v111 + v110;
                if (__OFADD__(v111, v110))
                {
                  break;
                }

                ++v95;
                if (!--v91)
                {
                  goto LABEL_110;
                }
              }
            }
          }

          v97 = 0;
          LOBYTE(v90) = 1;
LABEL_119:
          LOBYTE(v139) = v90;
          v115 = v90;
          sub_26B2128F0();
          if (v115)
          {
            goto LABEL_120;
          }

LABEL_122:
          v118 = v83;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = *(v137 + 16);
            sub_26B16A8C0();
            v137 = v123;
          }

          v119 = *(v137 + 16);
          if (v119 >= *(v137 + 24) >> 1)
          {
            sub_26B16A8C0();
            v137 = v124;
          }

          v120 = v137;
          *(v137 + 16) = v119 + 1;
          v121 = (v120 + 24 * v119);
          v121[4] = v86;
          v121[5] = v94;
          v121[6] = v97;
          v63 = v93;
          v83 = v118;
        }
      }
    }
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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

void sub_26B164680(uint64_t a1, unint64_t a2)
{
  sub_26B163BB0(a1, a2);
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    return;
  }

  v52 = MEMORY[0x277D84F90];
  sub_26B15B314(0, v4, 0);
  v5 = 0;
  v6 = v52;
  while (v5 < *(v3 + 16))
  {
    v7 = (v3 + 32 + 24 * v5);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    v11 = HIBYTE(v8) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      sub_26B2128F0();
      goto LABEL_66;
    }

    if ((v8 & 0x1000000000000000) == 0)
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v50[0] = v9;
        v50[1] = v8 & 0xFFFFFFFFFFFFFFLL;
        if (v9 == 43)
        {
          if (!v11)
          {
            goto LABEL_90;
          }

          if (--v11)
          {
            v16 = 0;
            v26 = v50 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v11)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v9 == 45)
        {
          if (!v11)
          {
            goto LABEL_92;
          }

          if (--v11)
          {
            v16 = 0;
            v20 = v50 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v11)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v11)
        {
          v16 = 0;
          v31 = v50;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v14 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v14 = sub_26B213780();
        }

        v15 = *v14;
        if (v15 == 43)
        {
          if (v12 < 1)
          {
            goto LABEL_93;
          }

          v11 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (!v14)
            {
              goto LABEL_56;
            }

            v23 = v14 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v11)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (v12 < 1)
          {
            goto LABEL_91;
          }

          v11 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (v14)
            {
              v17 = v14 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_64;
                }

                v19 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_64;
                }

                v16 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  goto LABEL_64;
                }

                ++v17;
                if (!--v11)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_56:
            LOBYTE(v11) = 0;
LABEL_65:
            v51 = v11;
            v34 = v11;
            sub_26B2128F0();
            if ((v34 & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_66;
          }
        }

        else
        {
          if (!v12)
          {
            goto LABEL_64;
          }

          v16 = 0;
          if (!v14)
          {
            goto LABEL_56;
          }

          while (1)
          {
            v29 = *v14 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_56;
            }
          }
        }
      }

LABEL_64:
      v16 = 0;
      LOBYTE(v11) = 1;
      goto LABEL_65;
    }

    swift_bridgeObjectRetain_n();
    v16 = sub_26B16583C(v9, v8, 10);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
LABEL_72:
      if (qword_2803E6A78 != -1)
      {
        swift_once();
      }

      v40 = 0;
      v41 = 1 << *(off_2803E6E50 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & *(off_2803E6E50 + 8);
      v44 = (v41 + 63) >> 6;
      while (v43)
      {
        v45 = v40;
LABEL_84:
        v46 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v47 = v46 | (v45 << 6);
        if (*(*(off_2803E6E50 + 7) + 8 * v47) == v16)
        {
          v48 = (*(off_2803E6E50 + 6) + 16 * v47);
          v9 = *v48;
          v49 = v48[1];
          sub_26B2128F0();

          v8 = v49;
          goto LABEL_66;
        }
      }

      while (1)
      {
        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v45 >= v44)
        {
          goto LABEL_66;
        }

        v43 = *(off_2803E6E50 + v45 + 8);
        ++v40;
        if (v43)
        {
          v40 = v45;
          goto LABEL_84;
        }
      }

      __break(1u);
      break;
    }

LABEL_66:
    v52 = v6;
    v36 = *(v6 + 16);
    v35 = *(v6 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_26B15B314(v35 > 1, v36 + 1, 1);
      v6 = v52;
    }

    ++v5;
    *(v6 + 16) = v36 + 1;
    v37 = (v6 + 24 * v36);
    v37[4] = v9;
    v37[5] = v8;
    v37[6] = v10;
    if (v5 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

void static SonicErrorOnion.decodeOnionPairs(_:)(uint64_t a1, unint64_t a2)
{
  sub_26B163BB0(a1, a2);
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_76:

    return;
  }

  v48 = MEMORY[0x277D84F90];
  sub_26B15B378(0, v4, 0);
  v5 = 0;
  while (v5 < *(v3 + 16))
  {
    v6 = (v3 + 32 + 24 * v5);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = HIBYTE(v7) & 0xF;
    v11 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      if ((v7 & 0x1000000000000000) == 0)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
          if (v8 == 43)
          {
            if (!v10)
            {
              goto LABEL_97;
            }

            if (v10 != 1)
            {
              while (1)
              {
                OUTLINED_FUNCTION_3_8();
                if (!v17 & v16)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_10();
                if (!v17)
                {
                  break;
                }

                v15 = (v26 + v25);
                if (__OFADD__(v26, v25))
                {
                  break;
                }

                OUTLINED_FUNCTION_20_1();
                if (v17)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v8 == 45)
          {
            if (!v10)
            {
              goto LABEL_99;
            }

            if (v10 != 1)
            {
              while (1)
              {
                OUTLINED_FUNCTION_3_8();
                if (!v17 & v16)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_10();
                if (!v17)
                {
                  break;
                }

                v15 = (v22 - v21);
                if (__OFSUB__(v22, v21))
                {
                  break;
                }

                OUTLINED_FUNCTION_20_1();
                if (v17)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v10)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_8();
              if (!v17 & v16)
              {
                break;
              }

              OUTLINED_FUNCTION_0_10();
              if (!v17)
              {
                break;
              }

              v15 = (v30 + v29);
              if (__OFADD__(v30, v29))
              {
                break;
              }

              OUTLINED_FUNCTION_20_1();
              if (v17)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v13 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v13 = sub_26B213780();
          }

          v14 = *v13;
          if (v14 == 43)
          {
            if (v11 < 1)
            {
              goto LABEL_100;
            }

            if (v11 != 1)
            {
              v15 = 0;
              if (!v13)
              {
                goto LABEL_60;
              }

              while (1)
              {
                OUTLINED_FUNCTION_3_8();
                if (!v17 & v16)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_10();
                if (!v17)
                {
                  break;
                }

                v15 = (v24 + v23);
                if (__OFADD__(v24, v23))
                {
                  break;
                }

                OUTLINED_FUNCTION_20_1();
                if (v17)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v14 == 45)
          {
            if (v11 < 1)
            {
              goto LABEL_98;
            }

            if (v11 != 1)
            {
              v15 = 0;
              if (v13)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_3_8();
                  if (!v17 & v16)
                  {
                    goto LABEL_69;
                  }

                  OUTLINED_FUNCTION_0_10();
                  if (!v17)
                  {
                    goto LABEL_69;
                  }

                  v15 = (v19 - v18);
                  if (__OFSUB__(v19, v18))
                  {
                    goto LABEL_69;
                  }

                  OUTLINED_FUNCTION_20_1();
                  if (v17)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_60:
              v20 = 0;
LABEL_70:
              v31 = v20;
              sub_26B2128F0();
              if ((v31 & 1) == 0)
              {
                goto LABEL_79;
              }

LABEL_71:

              goto LABEL_72;
            }
          }

          else
          {
            if (!v11)
            {
              goto LABEL_69;
            }

            v15 = 0;
            if (!v13)
            {
              goto LABEL_60;
            }

            while (1)
            {
              v27 = *v13 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = (v28 + v27);
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_60;
              }
            }
          }
        }

LABEL_69:
        v15 = 0;
        v20 = 1;
        goto LABEL_70;
      }

      sub_26B2128F0();
      v37 = sub_26B16583C(v8, v7, 10);
      if ((v38 & 1) == 0)
      {
        v15 = v37;
LABEL_79:
        if (qword_2803E6A78 != -1)
        {
          OUTLINED_FUNCTION_4_8();
          swift_once();
        }

        v39 = 0;
        v40 = 1 << *(off_2803E6E50 + 32);
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v42 = v41 & *(off_2803E6E50 + 8);
        v43 = (v40 + 63) >> 6;
        while (v42)
        {
          v44 = v39;
LABEL_91:
          v45 = __clz(__rbit64(v42));
          v42 &= v42 - 1;
          v46 = v45 | (v44 << 6);
          if (*(*(off_2803E6E50 + 7) + 8 * v46) == v15)
          {
            v47 = (*(off_2803E6E50 + 6) + 16 * v46);
            v32 = *v47;
            v33 = v47[1];
            sub_26B2128F0();

            goto LABEL_73;
          }
        }

        while (1)
        {
          v44 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v44 >= v43)
          {
            goto LABEL_71;
          }

          v42 = *(off_2803E6E50 + v44 + 8);
          ++v39;
          if (v42)
          {
            v39 = v44;
            goto LABEL_91;
          }
        }

        __break(1u);
        break;
      }

      goto LABEL_71;
    }

LABEL_72:
    v32 = 0;
    v33 = 0;
LABEL_73:
    v35 = *(v48 + 16);
    v34 = *(v48 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_26B15B378(v34 > 1, v35 + 1, 1);
    }

    ++v5;
    *(v48 + 16) = v35 + 1;
    v36 = (v48 + 24 * v35);
    v36[4] = v32;
    v36[5] = v33;
    v36[6] = v9;
    if (v5 == v4)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

id static SonicErrorOnion.decodeOnion(_:)(uint64_t a1, unint64_t a2)
{
  sub_26B164680(a1, a2);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v15 = *MEMORY[0x277CCA7E8];
    v6 = (v2 + 24 * v4 + 24);
    while (v4 <= *(v3 + 16))
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v16 = *v6;
      sub_26B2128F0();
      sub_26B2128C0();
      if (v5)
      {
        sub_26B212A80();
        v19 = sub_26B165DC4();
        *&v18 = v5;
        sub_26B165E08(&v18, &v17);
        v9 = v5;
        swift_isUniquelyReferenced_nonNull_native();
        sub_26B165EF4();
      }

      --v4;
      v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_26B2128F0();
      v11 = sub_26B212A50();

      v12 = sub_26B212890();

      v13 = [v10 initWithDomain:v11 code:v16 userInfo:v12];

      v6 -= 3;
      v5 = v13;
      if (!v4)
      {

        return v13;
      }
    }

    __break(1u);
  }

  return 0;
}

void *sub_26B16519C()
{
  result = sub_26B2128C0();
  off_2803E6E50 = result;
  return result;
}

uint64_t sub_26B165200()
{
  v1 = [v0 underlyingErrors];
  sub_26B162128();
  v2 = sub_26B212E40();

  return v2;
}

id sub_26B165258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B212A50();

  if (a4)
  {
    v8 = sub_26B212890();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void sub_26B165308()
{
  if (!qword_2803E6D38)
  {
    v0 = sub_26B212F50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6D38);
    }
  }
}

unint64_t sub_26B165358()
{
  result = qword_2803E6DB0;
  if (!qword_2803E6DB0)
  {
    sub_26B165308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6DB0);
  }

  return result;
}

uint64_t sub_26B1653B0()
{
  v0 = sub_26B16541C();
  v4 = sub_26B165450(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26B165450(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26B212B60();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26B213420();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26B2072D4(v9, 0);
  v12 = sub_26B1655B0(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_26B2128F0();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26B212B60();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26B213780();
LABEL_4:

  return sub_26B212B60();
}

unint64_t sub_26B1655B0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_26B1657C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26B212C70();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26B213780();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_26B1657C0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_26B212C50();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26B1657C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26B212C80();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D670090](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_26B16583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_26B2128F0();
  result = sub_26B212CF0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26B1653B0();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26B213780();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
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

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_26B165DC4()
{
  result = qword_280D2DA98;
  if (!qword_280D2DA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D2DA98);
  }

  return result;
}

_OWORD *sub_26B165E08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SonicErrorOnion(_BYTE *result, int a2, int a3)
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

_OWORD *sub_26B165EF4()
{
  OUTLINED_FUNCTION_27_0();
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = (v3)(v8, v6);
  OUTLINED_FUNCTION_1_8(v13, v14);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_26B213F10();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_27_1();
  sub_26B166880();
  if (sub_26B2139B0())
  {
    v16 = *v5;
    v17 = OUTLINED_FUNCTION_16_0();
    v4(v17);
    OUTLINED_FUNCTION_6_5();
    if (!v19)
    {
      goto LABEL_14;
    }

    v2 = v18;
  }

  v20 = *v5;
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((*(v20 + 56) + 32 * v2));
    OUTLINED_FUNCTION_28();

    return sub_26B165E08(v21, v22);
  }

  else
  {
    sub_26B1664B4(v2, v9, v7, v11, v20);
    OUTLINED_FUNCTION_28();

    return sub_26B2128F0();
  }
}

uint64_t sub_26B166014(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_2_9(a1, a2);
  v8 = sub_26B16E800(v6, v7);
  OUTLINED_FUNCTION_1_8(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_26B213F10();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_27_1();
  sub_26B1666F4();
  if (OUTLINED_FUNCTION_11_3())
  {
    v11 = OUTLINED_FUNCTION_15_0();
    sub_26B16E800(v11, v12);
    OUTLINED_FUNCTION_6_5();
    if (!v14)
    {
      goto LABEL_14;
    }

    v5 = v13;
  }

  if (v4)
  {
    v15 = *(*v3 + 56);
    v16 = *(v15 + 8 * v5);
    *(v15 + 8 * v5) = v2;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_7_5();
    sub_26B1664F8(v18, v19, v20, v21, v22);

    return sub_26B2128F0();
  }
}

void sub_26B1660EC()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_26B16E800(v4, v2);
  OUTLINED_FUNCTION_1_8(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_26B1667B4(0, &qword_2803E6E88, sub_26B166828, MEMORY[0x277D843B8]);
  if ((sub_26B2139B0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_26B16E800(v5, v3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    sub_26B213F10();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = v21[7] + 16 * v16;
    v23 = *v22;
    *v22 = v9;
    v24 = *(v22 + 8);
    *(v22 + 8) = v7;
    OUTLINED_FUNCTION_28();

    sub_26B166870(v25, v26);
  }

  else
  {
    sub_26B166540(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_28();

    sub_26B2128F0();
  }
}

uint64_t sub_26B166268()
{
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  v7 = v6;
  v10 = OUTLINED_FUNCTION_2_9(v8, v9);
  v12 = sub_26B16E800(v10, v11);
  OUTLINED_FUNCTION_1_8(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_26B213F10();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_27_1();
  sub_26B1667B4(0, v7, v5, MEMORY[0x277D843B8]);
  if (OUTLINED_FUNCTION_11_3())
  {
    v15 = OUTLINED_FUNCTION_15_0();
    sub_26B16E800(v15, v16);
    OUTLINED_FUNCTION_6_5();
    if (!v18)
    {
      goto LABEL_14;
    }

    v3 = v17;
  }

  if (v2)
  {
    v19 = *(*v1 + 56);
    v20 = *(v19 + 8 * v3);
    *(v19 + 8 * v3) = v0;
    OUTLINED_FUNCTION_28();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_7_5();
    sub_26B166590(v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_28();

    return sub_26B2128F0();
  }
}

uint64_t sub_26B166378(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_2_9(a1, a2);
  v8 = sub_26B16E800(v6, v7);
  OUTLINED_FUNCTION_1_8(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_26B213F10();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_27_1();
  sub_26B1667B4(0, &qword_2803E6E58, sub_26B166480, MEMORY[0x277D843B8]);
  if (OUTLINED_FUNCTION_11_3())
  {
    v11 = OUTLINED_FUNCTION_15_0();
    sub_26B16E800(v11, v12);
    OUTLINED_FUNCTION_6_5();
    if (!v14)
    {
      goto LABEL_14;
    }

    v5 = v13;
  }

  if (v4)
  {
    v15 = *(*v3 + 56) + 8 * v5;

    return sub_26B16662C(v2, v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_7_5();
    sub_26B1665C0(v17, v18, v19, v20, v21);

    return sub_26B2128F0();
  }
}

_OWORD *sub_26B1664B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_10_5(a1, a2, a3, a4, a5);
  result = sub_26B165E08(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_26B1664F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_26B166540(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
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

unint64_t sub_26B166590(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_10_5(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

uint64_t sub_26B1665C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26B166690(a4, a5[7] + 8 * a1);
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

uint64_t sub_26B16662C(uint64_t a1, uint64_t a2)
{
  sub_26B166480(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B166690(uint64_t a1, uint64_t a2)
{
  sub_26B166480(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26B1666F4()
{
  if (!qword_2803E6E78)
  {
    _s9StatementCMa();
    sub_26B166760();
    v0 = sub_26B2139D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6E78);
    }
  }
}

unint64_t sub_26B166760()
{
  result = qword_2803E6E80;
  if (!qword_2803E6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E80);
  }

  return result;
}

void sub_26B1667B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26B166828()
{
  if (!qword_280D2DAA0[0])
  {
    v0 = type metadata accessor for Task<>.Condition();
    if (!v1)
    {
      atomic_store(v0, qword_280D2DAA0);
    }
  }
}

void sub_26B166870(id a1, char a2)
{
  if (!a2)
  {
  }
}

void sub_26B166880()
{
  if (!qword_280D2DA90)
  {
    v0 = sub_26B2139D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280D2DA90);
    }
  }
}

unint64_t sub_26B1668E4()
{
  result = qword_2803E6E90;
  if (!qword_2803E6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E90);
  }

  return result;
}

unint64_t sub_26B166938()
{
  result = qword_2803E6E98;
  if (!qword_2803E6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E98);
  }

  return result;
}

unint64_t sub_26B16698C()
{
  result = qword_280D2DB58;
  if (!qword_280D2DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2DB58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_10_5(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

void OUTLINED_FUNCTION_18_0()
{
  *(v1 - 112) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_21_0(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  sub_26B15B06C();
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_26B2129F0();
}

void OUTLINED_FUNCTION_23_0()
{

  sub_26B15B06C();
}

uint64_t sub_26B166B3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26B2135F0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26B166BE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v13 - v8;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v10 = (*(a2 + 24))(a1, a2);
  MEMORY[0x26D670040](v10);

  MEMORY[0x26D670040](46, 0xE100000000000000);
  sub_26B213DF0();
  MEMORY[0x26D670040](10272, 0xE200000000000000);
  sub_26B212DF0();
  v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  sub_26B213E00();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  MEMORY[0x26D670040](41, 0xE100000000000000);
  return v13[0];
}

uint64_t SonicError.init(stringLiteral:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_26B212BB0();
  SonicError.Interpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  SonicError.Interpolation.appendLiteral(_:)(v8);

  return SonicError.init(stringInterpolation:)(v10, a3, a4);
}

void SonicError.Interpolation.init(literalCapacity:interpolationCount:)()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v20[0] = v2;
  v20[1] = v2;
  v20[2] = v0;
  v20[3] = v0;
  v6 = type metadata accessor for SonicError.Interpolation.State();
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  *v5 = MEMORY[0x277D84F90];
  sub_26B16775C(v3, v1, v20 - v16);
  sub_26B16A3B4();
  v18 = *(*v5 + 16);
  sub_26B16A59C(v18);
  (*(v8 + 16))(v14, v17, v6);
  OUTLINED_FUNCTION_1_9();
  WitnessTable = swift_getWitnessTable();
  sub_26B16BC10(v18, v14, v5, v6, WitnessTable);
  (*(v8 + 8))(v17, v6);
  OUTLINED_FUNCTION_39();
}

Swift::Void __swiftcall SonicError.Interpolation.appendLiteral(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_26B211BE0();
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v28[0] = v6;
  v28[1] = v4;
  sub_26B211BC0();
  sub_26B14FCC8();
  v16 = sub_26B213490();
  v18 = v17;
  (*(v9 + 8))(v15, v7);

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = *v2;
  v21 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v20;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B16BA94(v20);
  v20 = v27;
  *v2 = v27;
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v21 <= *(v20 + 16))
  {
    v23 = v20 + 40 * v21;
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    __swift_mutable_project_boxed_opaque_existential_1(v23 - 8, v24);
    v26 = (*(v25 + 64))(v28, v24, v25);
    MEMORY[0x26D670040](v6, v4);
    v26(v28, 0);
    *v2 = v20;
LABEL_8:
    OUTLINED_FUNCTION_39();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t SonicError.init(stringInterpolation:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  sub_26B2128F0();
  v7 = 0;
  v8 = v4 + 40 * v5 - 8;
  while (v5 <= *(v4 + 16))
  {
    sub_26B16BCF8(v8, v27);
    if (v7)
    {
      v9 = v28;
      v10 = v29;
      __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v11 = *(v10 + 88);
      v12 = v7;
      v13 = v11(v26, v9, v10);
      v15 = v14;
      v16 = *v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v15 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26B16AA60(0, *(v16 + 16) + 1, 1, v16, sub_26B173F04);
        v16 = v23;
        *v15 = v23;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26B16AA60(v18 > 1, v19 + 1, 1, v16, sub_26B173F04);
        v16 = v24;
        *v15 = v24;
      }

      *(v16 + 16) = v19 + 1;
      *(v16 + 8 * v19 + 32) = v7;
      v13(v26, 0);
    }

    --v5;
    v20 = v28;
    v21 = v29;
    v22 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v3 = sub_26B168490(v22, a2, v20, a3, v21);

    __swift_destroy_boxed_opaque_existential_1(v27);
    v8 -= 40;
    v7 = v3;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:

  if (v3)
  {

    v27[0] = v3;
    sub_26B16C9BC(0, &qword_280D2DA78);
    type metadata accessor for SonicError();
    return swift_dynamicCast();
  }

  else
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

id static SonicError.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_36();
  v6 = type metadata accessor for SonicError();
  OUTLINED_FUNCTION_27(v6);
  (*(v7 + 16))(a3, a1, v6);
  v8 = *(v6 + 40);
  sub_26B16A42C();
  v9 = *(*(a3 + v8) + 16);
  sub_26B16A608(v9);
  v10 = *(a3 + v8);
  *(v10 + 16) = v9 + 1;
  *(v10 + 8 * v9 + 32) = a2;
  *(a3 + v8) = v10;

  return a2;
}

uint64_t SonicError.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SonicError();
  v5 = OUTLINED_FUNCTION_27(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_26B1674D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for SonicError();
  v11 = (a6 + *(result + 36));
  *v11 = a2;
  v11[1] = a3;
  *(a6 + *(result + 40)) = a4;
  return result;
}

uint64_t sub_26B167574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = sub_26B211BE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v2, v11);
  v16 = (v2 + *(a1 + 52));
  v17 = v16[1];
  v25 = *v16;
  v26 = v17;
  sub_26B2128F0();
  sub_26B211BC0();
  sub_26B14FCC8();
  v18 = sub_26B213490();
  v20 = v19;
  (*(v6 + 8))(v10, v5);

  v21 = *(a1 + 40);
  sub_26B1674D8(v14, v18, v20, *(v3 + *(a1 + 56)), v11, v24);
  return sub_26B2128F0();
}

uint64_t sub_26B16775C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(a2 + 32))(a1, a2);
  result = type metadata accessor for SonicError.Interpolation.State();
  v5 = (a3 + *(result + 52));
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(a3 + *(result + 56)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26B1677F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for SonicError.Interpolation.State();
  v11 = (a6 + *(result + 52));
  *v11 = a2;
  v11[1] = a3;
  *(a6 + *(result + 56)) = a4;
  return result;
}

uint64_t (*sub_26B1678AC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t (*sub_26B1678D0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

void SonicError.Interpolation.appendInterpolation(code:)(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  *&v78.val[0].f64[0] = v3;
  v72 = *(v12 + 24);
  v78.val[0].f64[1] = v72;
  v78.val[1] = v78.val[0];
  v13 = &v75;
  vst2q_f64(v13, v78);
  v14 = type metadata accessor for SonicError.Interpolation.State();
  v15 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  OUTLINED_FUNCTION_9_0();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_0();
  v29 = MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v71 = &v68 - v32;
  v73 = v2;
  v33 = *v2;
  v34 = *(*v2 + 16);
  if (!v34)
  {
    __break(1u);
    goto LABEL_12;
  }

  v69 = v31;
  v70 = v30;
  sub_26B16BCF8(v33 + 40 * v34 - 8, &v75);
  sub_26B16C9BC(0, &qword_2803E6EA0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v14);
    v42 = *(v17 + 8);
    v41 = v17 + 8;
    v42(v22, v15);
    (*(v5 + 16))(v11, v74, v3);
    v43 = OUTLINED_FUNCTION_24_1();
    v44 = *&v72;
    sub_26B1677F4(v43, v45, v46, v47, v48, v49);
    v50 = v73;
    sub_26B16A3B4();
    v51 = *(*v50 + 16);
    sub_26B16A59C(v51);
    v52 = v69;
    (*(v24 + 16))(v69, v41, v14);
    OUTLINED_FUNCTION_1_9();
    WitnessTable = swift_getWitnessTable();
    sub_26B16BC10(v51, v52, v50, v14, WitnessTable);
    (*(v24 + 8))(v41, v14);
    v54._countAndFlagsBits = sub_26B166BE4(v3, v44);
    SonicError.Interpolation.appendLiteral(_:)(v54);

    return;
  }

  __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
  v35 = v71;
  (*(v24 + 32))(v71, v22, v14);
  v17 = *&v72;
  (*(*&v72 + 32))(v3, COERCE_FLOAT64_T(*&v72));
  v36 = *(v17 + 8);
  swift_getAssociatedTypeWitness();
  v37 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 16) + 8);
  LOBYTE(v36) = sub_26B213EB0();
  (*(v5 + 8))(v11, v3);
  if (v36)
  {
    (*(v5 + 24))(v35, v74, v3);
    v5 = *(v33 + 16);
    v76 = v14;
    OUTLINED_FUNCTION_1_9();
    v77 = swift_getWitnessTable();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v75);
    (*(v24 + 16))(boxed_opaque_existential_0, v35, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v73;
    *v73 = v33;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    sub_26B16BA94(v33);
    v33 = v67;
    *v15 = v67;
    if (v5)
    {
LABEL_6:
      if (v5 <= *(v33 + 16))
      {
        __swift_destroy_boxed_opaque_existential_1((v33 + 40 * v5 - 8));
        sub_26B150514(&v75, v33 + 40 * v5 - 8);
        *v15 = v33;
        v40._countAndFlagsBits = sub_26B166BE4(v3, v17);
        SonicError.Interpolation.appendLiteral(_:)(v40);

        (*(v24 + 8))(v71, v14);
        return;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  (*(v5 + 16))(v11, v74, v3);
  v55 = OUTLINED_FUNCTION_24_1();
  sub_26B1677F4(v55, v56, v57, v58, v59, v60);
  v61 = v73;
  sub_26B16A3B4();
  v62 = *(*v61 + 16);
  sub_26B16A59C(v62);
  v63 = v69;
  (*(v24 + 16))(v69, v17, v14);
  OUTLINED_FUNCTION_1_9();
  v64 = swift_getWitnessTable();
  sub_26B16BC10(v62, v63, v61, v14, v64);
  v65 = *(v24 + 8);
  v65(v17, v14);
  v66._countAndFlagsBits = sub_26B166BE4(v3, v17);
  SonicError.Interpolation.appendLiteral(_:)(v66);

  v65(v71, v14);
}

uint64_t SonicError.Interpolation.appendInterpolation<A>(underlying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a4;
  v37 = a1;
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v16 = *(v15 + 24);
  v38 = *(v15 + 16);
  v39 = v17;
  v40 = v16;
  v41 = v18;
  v19 = type metadata accessor for SonicError.Interpolation.State();
  OUTLINED_FUNCTION_9_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v36 - v29;
  (*(v8 + 16))(v14, v37, a3);
  v31 = v36;
  sub_26B1677F4(v14, 0, 0xE000000000000000, MEMORY[0x277D84F90], a3, v30);
  sub_26B16A3B4();
  v32 = *(*v5 + 16);
  sub_26B16A59C(v32);
  (*(v21 + 16))(v27, v30, v19);
  OUTLINED_FUNCTION_1_9();
  WitnessTable = swift_getWitnessTable();
  sub_26B16BC10(v32, v27, v5, v19, WitnessTable);
  (*(v21 + 8))(v30, v19);
  v34._countAndFlagsBits = sub_26B166BE4(a3, v31);
  SonicError.Interpolation.appendLiteral(_:)(v34);
}

void SonicError.Interpolation.appendInterpolation<A>(_:)()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = *v1;
  v13 = *(*v1 + 16);
  (*(v5 + 16))(v10 - v9);
  v14 = sub_26B213DE0();
  if (v14)
  {
    v15 = v14;
    (*(v5 + 8))(v11, v3);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v15 = swift_allocError();
    (*(v5 + 32))(v16, v11, v3);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v12;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_26B16BA94(v12);
  v12 = v26;
  *v1 = v26;
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v13 <= *(v12 + 16))
  {
    v18 = v12 + 40 * v13;
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    __swift_mutable_project_boxed_opaque_existential_1(v18 - 8, v19);
    v21 = (*(v20 + 88))(v27, v19, v20);
    v23 = v22;
    sub_26B16A42C();
    v24 = *(*v23 + 16);
    sub_26B16A608(v24);
    v25 = *v23;
    *(v25 + 16) = v24 + 1;
    *(v25 + 8 * v24 + 32) = v15;
    v21(v27, 0);
    *v1 = v12;
    OUTLINED_FUNCTION_39();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t SonicError.Interpolation.appendInterpolation<A>(_:)()
{
  v0._countAndFlagsBits = sub_26B213B90();
  SonicError.Interpolation.appendLiteral(_:)(v0);
}

{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v4 - v3);
  OUTLINED_FUNCTION_19();
  v6._countAndFlagsBits = sub_26B212AE0();
  SonicError.Interpolation.appendLiteral(_:)(v6);
}

uint64_t SonicError.Interpolation.appendInterpolation(_:)()
{
  swift_getMetatypeMetadata();
  v0._countAndFlagsBits = sub_26B212AE0();
  SonicError.Interpolation.appendLiteral(_:)(v0);
}

void sub_26B168478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  SonicError.Interpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_26B168490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SonicError();
  swift_getWitnessTable();
  v8 = swift_allocError();
  v7(a3, a5);
  return v8;
}

uint64_t SonicError.debugMessage.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  sub_26B2128F0();
  return v3;
}

uint64_t SonicError.debugMessage.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SonicError.underlyingErrors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t SonicError.withUnderlyingErrors(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  (*(v5 + 16))(v10 - v9, v2, a2);
  v12 = *(a2 + 40);
  v13 = sub_26B2128F0();
  sub_26B1688CC(v13, sub_26B173744);
  OUTLINED_FUNCTION_2_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  v14 = swift_allocError();
  (*(v5 + 32))(v15, v11, a2);
  return v14;
}

void sub_26B168818(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B173774(v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26B1688CC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(v5 + v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26B16C9BC(0, &qword_280D2DA78);
  OUTLINED_FUNCTION_25_1();

  if (!v4)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_26B16898C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26B17378C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26B168A44(uint64_t a1)
{
  v4 = a1;
  v5 = *(*(a1 + 16) + 16);
  v6 = sub_26B166B3C(*v1);
  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26B1737A4(v8);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  v11 = sub_26B20683C(&v18, v3 + 8 * v9 + 32, v10);
  if (v11 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = *(v3 + 16);
    v7 = __OFADD__(v12, v11);
    v13 = v11 + v12;
    if (v7)
    {
      __break(1u);
LABEL_19:
      *(v10 + 16) = v4;
      goto LABEL_7;
    }

    *(v3 + 16) = v13;
  }

  if (v11 != v10)
  {
    goto LABEL_7;
  }

LABEL_10:
  v4 = *(v3 + 16);
  v15 = sub_26B16A2C8();
  if (v15)
  {
    while (1)
    {
      if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = v15;
        sub_26B212EA0();
        v15 = v17;
      }

      v2 = *v1;
      v10 = *v1 & 0xFFFFFFFFFFFFFF8;
      v16 = *(v10 + 0x18) >> 1;
      while (v4 < v16)
      {
        *(v10 + 32 + 8 * v4++) = v15;
        v15 = sub_26B16A2C8();
        if (!v15)
        {
          goto LABEL_19;
        }
      }

      *(v10 + 16) = v4;
    }
  }

LABEL_7:

  *v1 = v2;
  return result;
}

void sub_26B168BB8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B173844(v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26B168C58()
{
  OUTLINED_FUNCTION_38();
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(*v0 + 16);
  if (__OFADD__(v6, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v2;
  sub_26B173874(v6 + v5, 1);
  v1 = *v0;
  v8 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  if (v4 == v7)
  {
    if (v5 <= 0)
    {
      v5 = 0;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < v5)
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();
    if (v5 <= 0)
    {
      goto LABEL_10;
    }

    v9 = *(v1 + 16);
    v10 = __OFADD__(v9, v5);
    v11 = v9 + v5;
    if (!v10)
    {
      *(v1 + 16) = v11;
LABEL_10:
      if (v5 != v8)
      {
LABEL_11:
        swift_unknownObjectRelease();
        *v0 = v1;
        OUTLINED_FUNCTION_39();
        return;
      }

LABEL_15:

      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_26B168D4C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B17388C(v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26B16CB10(0, &qword_2803E7060);
  OUTLINED_FUNCTION_25_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26B168E08(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B1738A4(v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26B16C9BC(0, &qword_2803E6FE0);
  OUTLINED_FUNCTION_25_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_26B168EC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_26B168F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

uint64_t SonicError.errorCode.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  v4 = *(*(v3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_27(AssociatedTypeWitness);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = swift_checkMetadataState();
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_0();
  v36 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_26B212DF0();
  OUTLINED_FUNCTION_19();
  if (sub_26B213570())
  {
    OUTLINED_FUNCTION_12_4();
    if (sub_26B213560() > 64)
    {
      v37 = 0x8000000000000000;
      v20 = v9;
      OUTLINED_FUNCTION_19();
      if (sub_26B213570())
      {
        OUTLINED_FUNCTION_12_4();
        if (sub_26B213560() < 64)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v20 = v9;
      OUTLINED_FUNCTION_19();
      v21 = sub_26B213570();
      OUTLINED_FUNCTION_12_4();
      v22 = sub_26B213560();
      if (v21)
      {
        if (v22 > 64)
        {
LABEL_8:
          v23 = sub_26B16BD74();
          OUTLINED_FUNCTION_28_1(v23, MEMORY[0x277D83B88], v23);
          v24 = *(*(v3 + 32) + 8);
          sub_26B212A00();
          OUTLINED_FUNCTION_26_1();
          result = v25(v4, v9);
          if ((v20 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_25:
          __break(1u);
          return result;
        }

        swift_getAssociatedConformanceWitness();
        sub_26B213ED0();
        v27 = v36;
        sub_26B213E10();
        v28 = *(*(v3 + 32) + 8);
        sub_26B212A00();
        OUTLINED_FUNCTION_26_1();
        result = v29(v27, v9);
        if (v9)
        {
          goto LABEL_25;
        }

LABEL_13:
        OUTLINED_FUNCTION_12_4();
        sub_26B213550();
        goto LABEL_14;
      }

      if (v22 < 64)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_12_4();
  if (sub_26B213560() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_19();
    v30 = sub_26B213570();
    OUTLINED_FUNCTION_12_4();
    v31 = sub_26B213560();
    if ((v30 & 1) == 0)
    {
      break;
    }

    if (v31 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    v32 = sub_26B16BD74();
    OUTLINED_FUNCTION_28_1(v32, MEMORY[0x277D83B88], v32);
    v33 = *(*(v3 + 32) + 8);
    sub_26B212A00();
    OUTLINED_FUNCTION_26_1();
    v34(v30, v9);
    if (v9)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_12_4();
      if (sub_26B213560() == 64)
      {
        OUTLINED_FUNCTION_19();
        if ((sub_26B213570() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v31 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  OUTLINED_FUNCTION_12_4();
  sub_26B213550();
LABEL_24:
  OUTLINED_FUNCTION_12_4();
  v35 = sub_26B213550();
  (*(v11 + 8))(v19, v9);
  return v35;
}

uint64_t SonicError.errorUserInfo.getter(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D837D0];
  v5 = sub_26B2128C0();
  v6 = (v2 + *(a1 + 36));
  v8 = *v6;
  v7 = v6[1];
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = *MEMORY[0x277CCA068];
    sub_26B212A80();
    v19 = v4;
    *&v18 = v8;
    *(&v18 + 1) = v7;
    sub_26B165E08(&v18, v17);
    sub_26B2128F0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_35();
    sub_26B165E18();

    v5 = v16;
  }

  v11 = *(v2 + *(a1 + 40));
  if (*(v11 + 16))
  {
    v12 = *MEMORY[0x277CCA578];
    sub_26B212A80();
    v13 = sub_26B16951C(v11);
    sub_26B16C794(0, qword_280D2CCE8, sub_26B165DC4, MEMORY[0x277D83940]);
    v19 = v14;
    *&v18 = v13;
    sub_26B165E08(&v18, v17);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_35();
    sub_26B165E18();

    return v16;
  }

  return v5;
}

uint64_t sub_26B16951C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_26B2137C0();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      sub_26B16C9BC(0, &qword_280D2DA78);
      sub_26B165DC4();
      swift_dynamicCast();
      sub_26B213790();
      v7 = *(v8 + 16);
      sub_26B2137D0();
      sub_26B2137E0();
      sub_26B2137A0();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t SonicError.description.getter(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_2_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  v4 = swift_allocError();
  (*(*(a1 - 8) + 16))(v5, v1, a1);
  sub_26B169728(v4, 0, v3);

  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  sub_26B2128F0();

  return v6;
}

void sub_26B169728(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  if (a2)
  {
    v6 = a2;
    do
    {
      MEMORY[0x26D670040](8224, 0xE200000000000000);
      --v6;
    }

    while (v6);
    v59 = v56;
    swift_beginAccess();
    MEMORY[0x26D670040](10, 0xE100000000000000);
    swift_endAccess();
    MEMORY[0x26D670040](546537698, 0xA400000000000000);
  }

  else
  {
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
  }

  *&v51 = a1;
  v7 = a1;
  sub_26B16C9BC(0, &qword_280D2DA78);
  sub_26B16C9BC(0, &qword_280D2DA40);
  if (swift_dynamicCast())
  {
    sub_26B150514(&v53, &v56);
    v8 = v57;
    v9 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v10 = (*(v9 + 24))(v8, v9);
    v12 = v11;
    v13 = v57;
    v14 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v15 = (*(v14 + 16))(v13, v14);
    v17 = v16;
    v18 = v59;
    swift_beginAccess();
    MEMORY[0x26D670040](v18, *(&v18 + 1));
    swift_endAccess();

    if ((sub_26B212C90() & 1) == 0)
    {
      *&v53 = v15;
      *(&v53 + 1) = v17;
      sub_26B2128F0();
      MEMORY[0x26D670040](8250, 0xE200000000000000);

      v19 = v53;
      swift_beginAccess();
      MEMORY[0x26D670040](v19, *(&v19 + 1));
      swift_endAccess();
    }

    swift_beginAccess();
    MEMORY[0x26D670040](v10, v12);
    swift_endAccess();

    v21 = v57;
    v20 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v22 = (*(*(v20 + 8) + 8))(v21);
    v23 = *(v22 + 16);
    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = __OFADD__(a2, 1);
    v25 = a2 + 1;
    if (!v24)
    {
      v26 = (v22 + 32);
      do
      {
        v27 = *v26++;
        v28 = v27;
        sub_26B169728(v27, v25, a3);

        --v23;
      }

      while (v23);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_26B16CA10(&v53);
  v29 = sub_26B211DF0();
  v30 = [v29 userInfo];
  v31 = sub_26B2128A0();

  v32 = *MEMORY[0x277CCA068];
  sub_26B212A80();
  sub_26B15CE10(v31, &v53);

  if (*(&v54 + 1))
  {
    sub_26B165E08(&v53, &v56);
  }

  else
  {
    v33 = [v29 userInfo];
    v34 = MEMORY[0x277D837D0];
    v35 = sub_26B2128A0();

    v36 = *MEMORY[0x277CCA450];
    sub_26B212A80();
    sub_26B15CE10(v35, &v51);

    if (v52)
    {
      sub_26B165E08(&v51, &v56);
    }

    else
    {
      v57 = v34;
      *&v56 = 0xD00000000000001ELL;
      *(&v56 + 1) = 0x800000026B21F6A0;
    }

    if (*(&v54 + 1))
    {
      sub_26B159D48(&v53);
    }
  }

  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  MEMORY[0x26D670040](v59, *(&v59 + 1));

  v37 = [v29 domain];
  v38 = sub_26B212A80();
  v40 = v39;

  MEMORY[0x26D670040](v38, v40);

  MEMORY[0x26D670040](10272, 0xE200000000000000);
  *&v51 = [v29 code];
  v41 = sub_26B213B90();
  MEMORY[0x26D670040](v41);

  MEMORY[0x26D670040](2112041, 0xE300000000000000);
  __swift_project_boxed_opaque_existential_1(&v56, v57);
  sub_26B213DF0();
  v43 = *(&v53 + 1);
  v42 = v53;
  swift_beginAccess();
  MEMORY[0x26D670040](v42, v43);
  swift_endAccess();

  v44 = [v29 underlyingErrors];
  v45 = sub_26B212E40();

  v46 = *(v45 + 16);
  if (!v46)
  {
LABEL_26:

LABEL_27:

    __swift_destroy_boxed_opaque_existential_1(&v56);
    return;
  }

  v24 = __OFADD__(a2, 1);
  v47 = a2 + 1;
  if (!v24)
  {
    v48 = (v45 + 32);
    do
    {
      v49 = *v48++;
      v50 = v49;
      sub_26B169728(v49, v47, a3);

      --v46;
    }

    while (v46);
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
}

uint64_t wrappingErrors<A, B>(in:_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13);
  if (v7)
  {
    v18 = (*(v11 + 16))(v15, a1, a7);
    v19 = a2(v18);
    v21 = v20;
    v22 = OUTLINED_FUNCTION_8_6();
    sub_26B16BDC8(v22, v23, v24, v25, v26);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26B2162F0;
    *(v27 + 32) = v7;
    type metadata accessor for SonicError();
    OUTLINED_FUNCTION_2_10();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    sub_26B1674D8(v15, v19, v21, v27, a7, v28);
    return swift_willThrow();
  }

  return result;
}

uint64_t wrappingErrors<A, B>(in:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v18;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v11 = *(a8 - 8);
  v8[7] = v11;
  v12 = *(v11 + 64) + 15;
  v8[8] = swift_task_alloc();
  v16 = (a5 + *a5);
  v13 = a5[1];
  v14 = swift_task_alloc();
  v8[9] = v14;
  *v14 = v8;
  v14[1] = sub_26B16A034;

  return v16(a1);
}

uint64_t sub_26B16A034()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B16A170, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26B16A170()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = (*(v0[7] + 16))(v2, v0[2], v3);
  v7 = v5(v6);
  v9 = v8;
  v10 = OUTLINED_FUNCTION_8_6();
  sub_26B16BDC8(v10, v11, v12, v13, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B2162F0;
  *(v15 + 32) = v1;
  type metadata accessor for SonicError();
  OUTLINED_FUNCTION_2_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  swift_allocError();
  sub_26B1674D8(v2, v7, v9, v15, v3, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

unint64_t sub_26B16A2C8()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v2 == *(v1 + 16))
  {
    return 0;
  }

  result = sub_26B16BBC0(v0[3], v1);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v0[3] = v2 + 1;
    v6 = v0[4];
    v7 = v0[5];
    v9[0] = result;
    v9[1] = v4;
    v10 = v5 & 1;
    v6(&v8, v9);

    return v8;
  }

  return result;
}

void sub_26B16A354()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_5_4();
    sub_26B16ACD4();
    *v0 = v4;
  }
}

void sub_26B16A3B4()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_26B16B970();
    *v0 = v4;
  }
}

void sub_26B16A42C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26B16AA60(0, *(v1 + 16) + 1, 1, v1, sub_26B173F04);
    *v0 = v3;
  }
}

uint64_t sub_26B16A4A4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_26B16A548(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_4();
    sub_26B16ACD4();
    *v1 = v2;
  }
}

void sub_26B16A59C(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_26B16B970();
    *v1 = v2;
  }
}

void sub_26B16A608(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    sub_26B16AA60(v2 > 1, a1 + 1, 1, *v1, sub_26B173F04);
    *v1 = v3;
  }
}

uint64_t sub_26B16A674(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_26B16A72C()
{
  OUTLINED_FUNCTION_20_2();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v6);
    if (v3)
    {
      sub_26B16C794(0, &qword_2803E7048, sub_26B16C964, MEMORY[0x277D84560]);
      v9 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v9);
      OUTLINED_FUNCTION_18_1(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_7_6();
        sub_26B152C58(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16A808()
{
  OUTLINED_FUNCTION_20_2();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_0_11(v9, &qword_2803E6DC8, MEMORY[0x277D849A8]);
      v10 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v10);
      OUTLINED_FUNCTION_18_1(v11);
      if (v1)
      {
LABEL_9:
        v12 = OUTLINED_FUNCTION_7_6();
        sub_26B173F08(v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 4 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16A8C0()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      sub_26B16CA98();
      v8 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_6_6(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_26B173560(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_26B16CB10(0, &qword_2803E6D18);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16A990()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v8, &qword_280D2DA80, MEMORY[0x277D83E40]);
      v9 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v9);
      OUTLINED_FUNCTION_18_1(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_7_6();
        sub_26B173588(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16AA60(char a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v9 == v10)
  {
LABEL_7:
    v11 = *(a4 + 16);
    if (v8 <= v11)
    {
      v12 = *(a4 + 16);
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      v13 = OUTLINED_FUNCTION_8_6();
      sub_26B16BDC8(v13, v14, v15, v16, v17);
      v18 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v18);
      OUTLINED_FUNCTION_21_1();
      v18[2] = v11;
      v18[3] = v19;
      if (a1)
      {
LABEL_12:
        a5(a4 + 32, v11, v18 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_26B16C9BC(0, &qword_280D2DA78);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v9)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_26B16AB90(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_26B16C794(0, &qword_2803E7038, sub_26B16C8E8, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26B173F04(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 4, a4 + 4, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}