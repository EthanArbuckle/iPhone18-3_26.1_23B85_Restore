unint64_t sub_26863B928(unint64_t result)
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

uint64_t sub_26863B948(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26863BA00(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_26863B948(a1, &a1[a2]);
  }

  v3 = sub_2686897B4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_268689754();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_268689804();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_26863BAB0(unint64_t result)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = *(result + 8);
  *(result + 16) = *result;
  *(result + 24) = 0;
  if (v3 >= 1)
  {
    v4 = v1;
    v5 = result;
    do
    {
      result = sub_2685B3B10();
      if (v2)
      {
        break;
      }

      if (result > 0xFFFFFFFE || result < 8 || (v6 = result & 7, v6 >= 6))
      {
        sub_26861C77C();
        swift_allocError();
        v72 = 3;
LABEL_66:
        *v71 = v72;
        result = swift_willThrow();
        break;
      }

      v7 = result >> 3;
      if ((result & 7) == 0)
      {
        *(v5 + 33) = 0;
        v5[5] = v7;
        v8 = v4[1];

        sub_2685B3560(v9);
        sub_268663B88(v7);
        sub_2685B403C(": ", 2, v10);
        v11 = sub_2685B3B10();
        *(v5 + 32) = 1;
        sub_268663B88(v11);
        goto LABEL_18;
      }

      if ((result & 7) > 2)
      {
        if (v6 == 3)
        {
          *(v5 + 33) = 3;
          v5[5] = v7;
          v27 = v4[1];

          sub_2685B3560(v28);
          sub_268663B88(v7);
          sub_2685B403C(" {\n", 3, v29);
          v30 = v4[1];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4[1] = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
            v4[1] = v30;
          }

          v33 = *(v30 + 2);
          v32 = *(v30 + 3);
          v34 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            v30 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v30);
          }

          *(v30 + 2) = v34;
          v30[v33 + 32] = 32;
          v4[1] = v30;
          v35 = *(v30 + 3);
          if ((v33 + 2) > (v35 >> 1))
          {
            v30 = sub_2685B3F48((v35 > 1), v33 + 2, 1, v30);
          }

          *(v30 + 2) = v33 + 2;
          v30[v34 + 32] = 32;
          v4[1] = v30;
          sub_26863BAB0(v5);
          sub_2685B4D0C(*(v4[1] + 16) - 1);
          sub_2685B4D0C(*(v4[1] + 16) - 1);
          v36 = v4[1];

          sub_2685B3560(v37);
          result = sub_2685B403C("}\n", 2, v38);
          goto LABEL_23;
        }

        if (v6 == 4)
        {
          *(v5 + 33) = 4;
          v5[5] = v7;
          break;
        }

        *(v5 + 33) = 5;
        v5[5] = v7;
        v12 = v4[1];

        sub_2685B3560(v13);
        sub_268663B88(v7);
        sub_2685B403C(": ", 2, v14);
        v15 = v5[1];
        if (v15 <= 3)
        {
          goto LABEL_68;
        }

        v16 = **v5;
        v17 = (v15 - 4);
        ++*v5;
        v5[1] = v17;
        *(v5 + 32) = 1;
        v18 = 8;
LABEL_17:
        sub_268663DD0(v16, v18, v17);
LABEL_18:
        v23 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v23;
        if ((result & 1) == 0)
        {
          result = sub_2685B3F48(0, *(v23 + 16) + 1, 1, v23);
          v23 = result;
          *v4 = result;
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_2685B3F48((v24 > 1), v25 + 1, 1, v23);
          v23 = result;
        }

        *(v23 + 16) = v25 + 1;
        *(v23 + v25 + 32) = 10;
        *v4 = v23;
        goto LABEL_23;
      }

      if (v6 == 1)
      {
        *(v5 + 33) = 1;
        v5[5] = v7;
        v19 = v4[1];

        sub_2685B3560(v20);
        sub_268663B88(v7);
        sub_2685B403C(": ", 2, v21);
        v22 = v5[1];
        if (v22 <= 7)
        {
LABEL_68:
          sub_26861C77C();
          swift_allocError();
          v72 = 1;
          goto LABEL_66;
        }

        v16 = **v5;
        v17 = (v22 - 8);
        *v5 += 2;
        v5[1] = v17;
        *(v5 + 32) = 1;
        v18 = 16;
        goto LABEL_17;
      }

      *(v5 + 33) = 2;
      v5[5] = v7;
      v39 = v4[1];

      sub_2685B3560(v40);
      sub_268663B88(v7);
      v77 = xmmword_26868A5E0;
      v41 = sub_2685B3B10();
      v42 = v5[1];
      if ((v42 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v43 = v41;
      v44 = (v42 - v41);
      if (v42 < v41)
      {
        sub_26861C77C();
        swift_allocError();
        *v74 = 1;
        swift_willThrow();
        result = sub_2685B593C(v77, *(&v77 + 1));
        break;
      }

      sub_2685B593C(0, 0xC000000000000000);
      v45 = *v5;
      *v5 = (*v5 + v43);
      v5[1] = v44;
      v46 = sub_26863BA00(v45, v43);
      v48 = v47;
      *&v77 = v46;
      *(&v77 + 1) = v47;
      *(v5 + 32) = 1;
      v49 = v47 >> 62;
      if ((v47 >> 62) > 1)
      {
        if (v49 != 2)
        {
          memset(v76, 0, 14);
          v50 = v76;
          goto LABEL_62;
        }

        v51 = *(v46 + 16);
        v52 = *(v46 + 24);
        v75 = v46;

        v53 = sub_268689764();
        if (v53)
        {
          v54 = sub_268689794();
          if (__OFSUB__(v51, v54))
          {
            goto LABEL_73;
          }

          v53 += v51 - v54;
        }

        v55 = __OFSUB__(v52, v51);
        v56 = v52 - v51;
        if (v55)
        {
          goto LABEL_72;
        }

        v57 = sub_268689784();
        if (v57 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = v57;
        }

        v59 = v58 + v53;
        if (v53)
        {
          v60 = v59;
        }

        else
        {
          v60 = 0;
        }

        sub_268636B98(v53, v60, v5, &v77, v4);
        v61 = v75;
      }

      else
      {
        if (!v49)
        {
          v76[0] = v46;
          LOWORD(v76[1]) = v47;
          BYTE2(v76[1]) = BYTE2(v47);
          BYTE3(v76[1]) = BYTE3(v47);
          BYTE4(v76[1]) = BYTE4(v47);
          BYTE5(v76[1]) = BYTE5(v47);
          v50 = v76 + BYTE6(v47);
LABEL_62:
          sub_268636B98(v76, v50, v5, &v77, v4);
          goto LABEL_63;
        }

        v62 = v46;
        v63 = (v46 >> 32) - v46;
        if (v46 >> 32 < v46)
        {
          goto LABEL_71;
        }

        v64 = v46;

        v65 = sub_268689764();
        if (v65)
        {
          v66 = sub_268689794();
          if (__OFSUB__(v62, v66))
          {
            goto LABEL_74;
          }

          v65 += v62 - v66;
        }

        v67 = sub_268689784();
        if (v67 >= v63)
        {
          v68 = v63;
        }

        else
        {
          v68 = v67;
        }

        v69 = v68 + v65;
        if (v65)
        {
          v70 = v69;
        }

        else
        {
          v70 = 0;
        }

        sub_268636B98(v65, v70, v5, &v77, v4);
        v61 = v64;
      }

      sub_2685B593C(v61, v48);
LABEL_63:
      result = sub_2685B593C(v77, *(&v77 + 1));
LABEL_23:
      v26 = v5[1];
      v5[2] = *v5;
      v5[3] = 0;
    }

    while (v26 > 0);
  }

  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26863C318()
{
  v2 = v0;
  v3 = *(v0 + 73);
  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    if (v5 != v4 && *v5 == *(v0 + 72))
    {
      v6 = v5 + 1;
      *(v0 + 40) = v6;
      if (v6 == v4)
      {
        return 0;
      }

      while (1)
      {
        v7 = *v6;
        if (v7 > 0x23)
        {
          return 0;
        }

        if (((1 << v7) & 0x100002600) != 0)
        {
          ++v6;
        }

        else
        {
          if (v7 != 35)
          {
            return 0;
          }

          *(v0 + 40) = ++v6;
          while (v6 != v4)
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 == 10 || v8 == 13)
            {
              goto LABEL_7;
            }
          }

          v6 = v4;
        }

LABEL_7:
        *(v0 + 40) = v6;
        if (v6 == v4)
        {
          return 0;
        }
      }
    }
  }

  v11 = *(v0 + 64);
  if (v11 >= 1)
  {
    v12 = *(v0 + 40);
    if (v12 != *(v0 + 48))
    {
      v13 = *v12;
      if (v13 == 59 || v13 == 44)
      {
        *(v0 + 40) = v12 + 1;
        sub_2685C01A0();
      }
    }
  }

  result = sub_2685C16D4();
  if (v1)
  {
    return v0;
  }

  if (v15)
  {
    if (*(v0 + 24))
    {
      v16 = result;
      v17 = v15;
      sub_2685B1724(v2, v32);
      v18 = v33;
      v19 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      result = v2[14];
      if (!result)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v0 = (*(v19 + 16))(result, v2[15], v16, v17, v18, v19);
      v21 = v20;

      result = __swift_destroy_boxed_opaque_existential_1(v32);
      if ((v21 & 1) == 0)
      {
        v22 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
          goto LABEL_43;
        }

        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
    }

    sub_2685C1CBC();
    swift_allocError();
    v30 = 7;
LABEL_37:
    *v29 = v30;
    swift_willThrow();
    return v0;
  }

  v23 = *(v0 + 80);
  if (v23)
  {
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 104);
    v32[0] = *(v0 + 80);
    v32[1] = v25;
    v32[2] = v24;
    v33 = v26;
    v27 = sub_2685C1818(v32);
    v35 = 0;
    v0 = v27;
    v31 = v28;
    sub_26863C664(v23);

    if ((v31 & 1) == 0)
    {
      v22 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
LABEL_43:
        v2[8] = v22;
        return v0;
      }

      goto LABEL_47;
    }

    if (v3)
    {
      return 0;
    }

    sub_2685C1CBC();
    swift_allocError();
    v30 = 3;
    goto LABEL_37;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_26863C664(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26863C6C4(float *a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48) || *v3 != 58)
  {
    v7 = 0;
    goto LABEL_7;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  *&result = COERCE_DOUBLE(sub_2685C10C4());
  if ((v5 & 1) == 0)
  {
    v6 = *&result;
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(sub_2685C124C(&unk_287928428));
  if ((result & 1) == 0)
  {
    *&result = COERCE_DOUBLE(sub_2685C12FC());
    if ((result & 0x100000000) == 0)
    {
      v6 = *&result;
      goto LABEL_9;
    }

    v7 = 1;
LABEL_7:
    sub_2685C1CBC();
    swift_allocError();
    *v8 = v7;
    *&result = COERCE_DOUBLE(swift_willThrow());
    return result;
  }

  v6 = NAN;
LABEL_9:
  *a1 = v6;
  return result;
}

unint64_t sub_26863C798(uint64_t a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48) || *v3 != 58)
  {
    v7 = 0;
    goto LABEL_7;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  v4 = COERCE_DOUBLE(sub_2685C10C4());
  if ((v5 & 1) == 0)
  {
    *&v9 = v4;
    result = v9;
    goto LABEL_9;
  }

  if ((sub_2685C124C(&unk_287928428) & 1) == 0)
  {
    result = sub_2685C12FC();
    if ((result & 0x100000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = 1;
LABEL_7:
    sub_2685C1CBC();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  result = 2143289344;
LABEL_9:
  *a1 = result;
  *(a1 + 4) = 0;
  return result;
}

void sub_26863C868(char **a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v3 == v4 || *v3 != 58)
  {
LABEL_60:
    v25 = 0;
    goto LABEL_61;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  v5 = *(v1 + 40);
  if (v5 != v4 && *v5 == 91)
  {
    *(v1 + 40) = v5 + 1;
    sub_2685C01A0();
    v6 = 1;
    while (1)
    {
      v7 = *(v1 + 40);
      if (v7 == v4)
      {
        break;
      }

      v8 = *v7;
      if (v8 == 93)
      {
        *(v1 + 40) = v7 + 1;
        sub_2685C01A0();
        return;
      }

      if ((v6 & 1) == 0)
      {
        for (; v8 <= 0x23; v8 = *v7)
        {
          if (((1 << v8) & 0x100002600) != 0)
          {
            ++v7;
          }

          else
          {
            if (v8 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v7;
            while (v7 != v4)
            {
              v10 = *v7++;
              v9 = v10;
              if (v10 == 10 || v9 == 13)
              {
                goto LABEL_12;
              }
            }

            v7 = v4;
          }

LABEL_12:
          *(v1 + 40) = v7;
          if (v7 == v4)
          {
            break;
          }
        }

LABEL_29:
        if (v7 == v4 || *v7 != 44)
        {
          goto LABEL_60;
        }

LABEL_45:
        ++v7;
LABEL_32:
        while (1)
        {
          *(v1 + 40) = v7;
          if (v7 == v4)
          {
            break;
          }

          v15 = *v7;
          if (v15 > 0x23)
          {
            break;
          }

          if (((1 << v15) & 0x100002600) != 0)
          {
            goto LABEL_45;
          }

          if (v15 != 35)
          {
            break;
          }

          *(v1 + 40) = ++v7;
          while (v7 != v4)
          {
            v17 = *v7++;
            v16 = v17;
            if (v17 == 10 || v16 == 13)
            {
              goto LABEL_32;
            }
          }

          v7 = v4;
        }
      }

LABEL_26:
      v12 = COERCE_DOUBLE(sub_2685C10C4());
      if (v13)
      {
        if (sub_2685C124C(&unk_287928738))
        {
          v14 = NAN;
        }

        else
        {
          v19 = *(v1 + 40);
          if (v19 == v4)
          {
            goto LABEL_73;
          }

          v20 = *v19;
          if (v20 == 45)
          {
            *(v1 + 40) = v19 + 1;
          }

          if ((sub_2685C124C(&unk_2879283D8) & 1) == 0 && (sub_2685C124C(&unk_287928400) & 1) == 0)
          {
            goto LABEL_73;
          }

          if (v20 == 45)
          {
            v14 = -INFINITY;
          }

          else
          {
            v14 = INFINITY;
          }
        }
      }

      else
      {
        v14 = v12;
      }

      v21 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_268666050(0, *(v21 + 2) + 1, 1, v21);
        *a1 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_268666050((v23 > 1), v24 + 1, 1, v21);
      }

      v6 = 0;
      *(v21 + 2) = v24 + 1;
      *&v21[4 * v24 + 32] = v14;
      *a1 = v21;
    }

    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v27 = COERCE_DOUBLE(sub_2685C10C4());
  if ((v28 & 1) == 0)
  {
    v29 = v27;
    goto LABEL_66;
  }

  if ((sub_2685C124C(&unk_287928428) & 1) == 0)
  {
    v34 = sub_2685C12FC();
    if ((v34 & 0x100000000) == 0)
    {
      v29 = *&v34;
      goto LABEL_66;
    }

LABEL_73:
    v25 = 1;
LABEL_61:
    sub_2685C1CBC();
    swift_allocError();
    *v26 = v25;
    swift_willThrow();
    return;
  }

  v29 = NAN;
LABEL_66:
  v30 = *a1;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v30;
  if ((v31 & 1) == 0)
  {
    v30 = sub_268666050(0, *(v30 + 2) + 1, 1, v30);
    *a1 = v30;
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = sub_268666050((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  *&v30[4 * v33 + 32] = v29;
  *a1 = v30;
}

uint64_t sub_26863CC20(double *a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48) || *v3 != 58)
  {
    v7 = 0;
    goto LABEL_7;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  result = sub_2685C10C4();
  if ((v5 & 1) == 0)
  {
    v6 = *&result;
    goto LABEL_9;
  }

  result = sub_2685C124C(&unk_287928450);
  if ((result & 1) == 0)
  {
    result = sub_2685C12FC();
    if ((result & 0x100000000) == 0)
    {
      v6 = *&result;
      goto LABEL_9;
    }

    v7 = 1;
LABEL_7:
    sub_2685C1CBC();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  v6 = NAN;
LABEL_9:
  *a1 = v6;
  return result;
}

uint64_t sub_26863CCF4(uint64_t a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48) || *v3 != 58)
  {
    v6 = 0;
    goto LABEL_7;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  *&result = COERCE_DOUBLE(sub_2685C10C4());
  if (v5)
  {
    if (sub_2685C124C(&unk_287928450))
    {
      *&result = NAN;
      goto LABEL_10;
    }

    v8 = sub_2685C12FC();
    if ((v8 & 0x100000000) == 0)
    {
      *&result = *&v8;
      goto LABEL_10;
    }

    v6 = 1;
LABEL_7:
    sub_2685C1CBC();
    swift_allocError();
    *v7 = v6;
    *&result = COERCE_DOUBLE(swift_willThrow());
    return result;
  }

LABEL_10:
  *a1 = *&result;
  *(a1 + 8) = 0;
  return result;
}

void sub_26863CDC4(char **a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v3 == v4 || *v3 != 58)
  {
LABEL_60:
    v25 = 0;
    goto LABEL_61;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  v5 = *(v1 + 40);
  if (v5 != v4 && *v5 == 91)
  {
    *(v1 + 40) = v5 + 1;
    sub_2685C01A0();
    v6 = 1;
    while (1)
    {
      v7 = *(v1 + 40);
      if (v7 == v4)
      {
        break;
      }

      v8 = *v7;
      if (v8 == 93)
      {
        *(v1 + 40) = v7 + 1;
        sub_2685C01A0();
        return;
      }

      if ((v6 & 1) == 0)
      {
        for (; v8 <= 0x23; v8 = *v7)
        {
          if (((1 << v8) & 0x100002600) != 0)
          {
            ++v7;
          }

          else
          {
            if (v8 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v7;
            while (v7 != v4)
            {
              v10 = *v7++;
              v9 = v10;
              if (v10 == 10 || v9 == 13)
              {
                goto LABEL_12;
              }
            }

            v7 = v4;
          }

LABEL_12:
          *(v1 + 40) = v7;
          if (v7 == v4)
          {
            break;
          }
        }

LABEL_29:
        if (v7 == v4 || *v7 != 44)
        {
          goto LABEL_60;
        }

LABEL_45:
        ++v7;
LABEL_32:
        while (1)
        {
          *(v1 + 40) = v7;
          if (v7 == v4)
          {
            break;
          }

          v15 = *v7;
          if (v15 > 0x23)
          {
            break;
          }

          if (((1 << v15) & 0x100002600) != 0)
          {
            goto LABEL_45;
          }

          if (v15 != 35)
          {
            break;
          }

          *(v1 + 40) = ++v7;
          while (v7 != v4)
          {
            v17 = *v7++;
            v16 = v17;
            if (v17 == 10 || v16 == 13)
            {
              goto LABEL_32;
            }
          }

          v7 = v4;
        }
      }

LABEL_26:
      v12 = sub_2685C10C4();
      if (v13)
      {
        if (sub_2685C124C(&unk_287928760))
        {
          v14 = NAN;
        }

        else
        {
          v19 = *(v1 + 40);
          if (v19 == v4)
          {
            goto LABEL_73;
          }

          v20 = *v19;
          if (v20 == 45)
          {
            *(v1 + 40) = v19 + 1;
          }

          if ((sub_2685C124C(&unk_2879283D8) & 1) == 0 && (sub_2685C124C(&unk_287928400) & 1) == 0)
          {
            goto LABEL_73;
          }

          if (v20 == 45)
          {
            v14 = -INFINITY;
          }

          else
          {
            v14 = INFINITY;
          }
        }
      }

      else
      {
        v14 = *&v12;
      }

      v21 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_26866617C(0, *(v21 + 2) + 1, 1, v21);
        *a1 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_26866617C((v23 > 1), v24 + 1, 1, v21);
      }

      v6 = 0;
      *(v21 + 2) = v24 + 1;
      *&v21[8 * v24 + 32] = v14;
      *a1 = v21;
    }

    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v27 = sub_2685C10C4();
  if ((v28 & 1) == 0)
  {
    v29 = *&v27;
    goto LABEL_66;
  }

  if ((sub_2685C124C(&unk_287928450) & 1) == 0)
  {
    v34 = sub_2685C12FC();
    if ((v34 & 0x100000000) == 0)
    {
      v29 = *&v34;
      goto LABEL_66;
    }

LABEL_73:
    v25 = 1;
LABEL_61:
    sub_2685C1CBC();
    swift_allocError();
    *v26 = v25;
    swift_willThrow();
    return;
  }

  v29 = NAN;
LABEL_66:
  v30 = *a1;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v30;
  if ((v31 & 1) == 0)
  {
    v30 = sub_26866617C(0, *(v30 + 2) + 1, 1, v30);
    *a1 = v30;
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = sub_26866617C((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  *&v30[8 * v33 + 32] = v29;
  *a1 = v30;
}

unint64_t sub_26863D178(_DWORD *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    v6 = 0;
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C0AEC();
    if (v2)
    {
      return result;
    }

    if (result == result)
    {
      *a1 = result;
      return result;
    }

    v6 = 1;
  }

  sub_2685C1CBC();
  swift_allocError();
  *v7 = v6;
  return swift_willThrow();
}

unint64_t sub_26863D228(uint64_t a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    v6 = 0;
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C0AEC();
    if (v2)
    {
      return result;
    }

    if (result == result)
    {
      *a1 = result;
      *(a1 + 4) = 0;
      return result;
    }

    v6 = 1;
  }

  sub_2685C1CBC();
  swift_allocError();
  *v7 = v6;
  return swift_willThrow();
}

void sub_26863D2DC(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_51:
    sub_2685C1CBC();
    swift_allocError();
    *v22 = 0;
LABEL_52:
    swift_willThrow();
    return;
  }

  *(v1 + 40) = v4 + 1;
  sub_2685C01A0();
  v6 = *(v1 + 40);
  if (v6 != v5 && *v6 == 91)
  {
    *(v1 + 40) = v6 + 1;
    sub_2685C01A0();
    v7 = 1;
    for (i = a1; ; *i = v18)
    {
      v8 = *(v1 + 40);
      if (v8 == v5)
      {
        break;
      }

      v9 = *v8;
      if (v9 == 93)
      {
        *(v1 + 40) = v8 + 1;
        sub_2685C01A0();
        return;
      }

      if ((v7 & 1) == 0)
      {
        for (; v9 <= 0x23; v9 = *v8)
        {
          if (((1 << v9) & 0x100002600) != 0)
          {
            ++v8;
          }

          else
          {
            if (v9 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v11 = *v8++;
              v10 = v11;
              if (v11 == 10 || v10 == 13)
              {
                goto LABEL_12;
              }
            }

            v8 = v5;
          }

LABEL_12:
          *(v1 + 40) = v8;
          if (v8 == v5)
          {
            break;
          }
        }

LABEL_29:
        if (v8 == v5 || *v8 != 44)
        {
          goto LABEL_51;
        }

LABEL_42:
        ++v8;
LABEL_32:
        while (1)
        {
          *(v1 + 40) = v8;
          if (v8 == v5)
          {
            break;
          }

          v14 = *v8;
          if (v14 > 0x23)
          {
            break;
          }

          if (((1 << v14) & 0x100002600) != 0)
          {
            goto LABEL_42;
          }

          if (v14 != 35)
          {
            break;
          }

          *(v1 + 40) = ++v8;
          while (v8 != v5)
          {
            v16 = *v8++;
            v15 = v16;
            if (v16 == 10 || v15 == 13)
            {
              goto LABEL_32;
            }
          }

          v8 = v5;
        }
      }

LABEL_23:
      if (v8 == v5)
      {
        goto LABEL_56;
      }

      if (*v8 == 45)
      {
        *(v1 + 40) = v8 + 1;
        if (v8[1] - 58 < 0xFFFFFFF6)
        {
          goto LABEL_56;
        }

        v12 = sub_2685C08D4();
        if (v2)
        {
          return;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        v13 = -v12;
      }

      else
      {
        v17 = sub_2685C08D4();
        if (v2)
        {
          return;
        }

        v13 = v17;
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }
      }

      if (v13 != v13)
      {
        goto LABEL_56;
      }

      v18 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_268666154(0, *(v18 + 2) + 1, 1, v18);
        *a1 = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_268666154((v20 > 1), v21 + 1, 1, v18);
      }

      v7 = 0;
      *(v18 + 2) = v21 + 1;
      *&v18[4 * v21 + 32] = v13;
      a1 = i;
    }

    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v23 = sub_2685C0AEC();
  if (!v2)
  {
    if (v23 != v23)
    {
LABEL_56:
      sub_2685C1CBC();
      swift_allocError();
      *v24 = 1;
      goto LABEL_52;
    }

    v25 = v23;
    v26 = *a1;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v26;
    if ((v27 & 1) == 0)
    {
      v26 = sub_268666154(0, *(v26 + 2) + 1, 1, v26);
      *a1 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      v26 = sub_268666154((v28 > 1), v29 + 1, 1, v26);
    }

    *(v26 + 2) = v29 + 1;
    *&v26[4 * v29 + 32] = v25;
    *a1 = v26;
  }
}

void sub_26863D68C(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_52:
    sub_2685C1CBC();
    swift_allocError();
    *v22 = 0;
LABEL_53:
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 != v5 && *v6 == 91)
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = 1;
      for (i = a1; ; *i = v18)
      {
        v8 = *(v1 + 40);
        if (v8 == v5)
        {
          break;
        }

        v9 = *v8;
        if (v9 == 93)
        {
          *(v1 + 40) = v8 + 1;
          sub_2685C01A0();
          return;
        }

        if ((v7 & 1) == 0)
        {
          for (; v9 <= 0x23; v9 = *v8)
          {
            if (((1 << v9) & 0x100002600) != 0)
            {
              ++v8;
            }

            else
            {
              if (v9 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v8;
              while (v8 != v5)
              {
                v11 = *v8++;
                v10 = v11;
                if (v11 == 10 || v10 == 13)
                {
                  goto LABEL_12;
                }
              }

              v8 = v5;
            }

LABEL_12:
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }
          }

LABEL_29:
          if (v8 == v5 || *v8 != 44)
          {
            goto LABEL_52;
          }

LABEL_42:
          ++v8;
LABEL_32:
          while (1)
          {
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }

            v14 = *v8;
            if (v14 > 0x23)
            {
              break;
            }

            if (((1 << v14) & 0x100002600) != 0)
            {
              goto LABEL_42;
            }

            if (v14 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v16 = *v8++;
              v15 = v16;
              if (v16 == 10 || v15 == 13)
              {
                goto LABEL_32;
              }
            }

            v8 = v5;
          }
        }

LABEL_23:
        if (v8 == v5)
        {
          goto LABEL_61;
        }

        if (*v8 == 45)
        {
          *(v1 + 40) = v8 + 1;
          if (v8[1] - 58 < 0xFFFFFFF6)
          {
            goto LABEL_61;
          }

          v12 = sub_2685C08D4();
          if (v2)
          {
            return;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            v13 = 0x8000000000000000;
            if (v12 != 0x8000000000000000)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v13 = -v12;
          }
        }

        else
        {
          v17 = sub_2685C08D4();
          if (v2)
          {
            return;
          }

          v13 = v17;
          if ((v17 & 0x8000000000000000) != 0)
          {
LABEL_61:
            sub_2685C1CBC();
            swift_allocError();
            *v29 = 1;
            goto LABEL_53;
          }
        }

        v18 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_268666168(0, *(v18 + 2) + 1, 1, v18);
          *a1 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_268666168((v20 > 1), v21 + 1, 1, v18);
        }

        v7 = 0;
        *(v18 + 2) = v21 + 1;
        *&v18[8 * v21 + 32] = v13;
        a1 = i;
      }

      if (v7)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v23 = sub_2685C0AEC();
    if (!v2)
    {
      v24 = v23;
      v25 = *a1;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v25;
      if ((v26 & 1) == 0)
      {
        v25 = sub_268666168(0, *(v25 + 2) + 1, 1, v25);
        *a1 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_268666168((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      *&v25[8 * v28 + 32] = v24;
      *a1 = v25;
    }
  }
}

unint64_t sub_26863DA2C(_DWORD *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    v6 = 0;
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C08D4();
    if (v2)
    {
      return result;
    }

    if (!HIDWORD(result))
    {
      *a1 = result;
      return result;
    }

    v6 = 1;
  }

  sub_2685C1CBC();
  swift_allocError();
  *v7 = v6;
  return swift_willThrow();
}

unint64_t sub_26863DADC(uint64_t a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    v6 = 0;
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C08D4();
    if (v2)
    {
      return result;
    }

    if (!HIDWORD(result))
    {
      *a1 = result;
      *(a1 + 4) = 0;
      return result;
    }

    v6 = 1;
  }

  sub_2685C1CBC();
  swift_allocError();
  *v7 = v6;
  return swift_willThrow();
}

void sub_26863DB90(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_44:
    sub_2685C1CBC();
    swift_allocError();
    *v21 = 0;
LABEL_45:
    swift_willThrow();
    return;
  }

  *(v1 + 40) = v4 + 1;
  sub_2685C01A0();
  v6 = *(v1 + 40);
  if (v6 != v5 && *v6 == 91)
  {
    *(v1 + 40) = v6 + 1;
    sub_2685C01A0();
    v7 = 1;
    for (i = a1; ; *i = v14)
    {
      v8 = *(v1 + 40);
      if (v8 == v5)
      {
        break;
      }

      v9 = *v8;
      if (v9 == 93)
      {
        *(v1 + 40) = v8 + 1;
        sub_2685C01A0();
        return;
      }

      if ((v7 & 1) == 0)
      {
        for (; v9 <= 0x23; v9 = *v8)
        {
          if (((1 << v9) & 0x100002600) != 0)
          {
            ++v8;
          }

          else
          {
            if (v9 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v11 = *v8++;
              v10 = v11;
              if (v11 == 10 || v10 == 13)
              {
                goto LABEL_12;
              }
            }

            v8 = v5;
          }

LABEL_12:
          *(v1 + 40) = v8;
          if (v8 == v5)
          {
            break;
          }
        }

LABEL_30:
        if (v8 == v5 || *v8 != 44)
        {
          goto LABEL_44;
        }

LABEL_43:
        ++v8;
LABEL_33:
        while (1)
        {
          *(v1 + 40) = v8;
          if (v8 == v5)
          {
            break;
          }

          v18 = *v8;
          if (v18 > 0x23)
          {
            break;
          }

          if (((1 << v18) & 0x100002600) != 0)
          {
            goto LABEL_43;
          }

          if (v18 != 35)
          {
            break;
          }

          *(v1 + 40) = ++v8;
          while (v8 != v5)
          {
            v20 = *v8++;
            v19 = v20;
            if (v20 == 10 || v19 == 13)
            {
              goto LABEL_33;
            }
          }

          v8 = v5;
        }
      }

LABEL_23:
      v12 = sub_2685C08D4();
      if (v2)
      {
        return;
      }

      v13 = v12;
      if (HIDWORD(v12))
      {
        goto LABEL_49;
      }

      v14 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_268666280(0, *(v14 + 2) + 1, 1, v14);
        *a1 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_268666280((v16 > 1), v17 + 1, 1, v14);
      }

      v7 = 0;
      *(v14 + 2) = v17 + 1;
      *&v14[4 * v17 + 32] = v13;
      a1 = i;
    }

    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v22 = sub_2685C08D4();
  if (!v2)
  {
    if (HIDWORD(v22))
    {
LABEL_49:
      sub_2685C1CBC();
      swift_allocError();
      *v23 = 1;
      goto LABEL_45;
    }

    v24 = v22;
    v25 = *a1;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_268666280(0, *(v25 + 2) + 1, 1, v25);
      *a1 = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_268666280((v27 > 1), v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    *&v25[4 * v28 + 32] = v24;
    *a1 = v25;
  }
}

uint64_t sub_26863DEE8(uint64_t *a1, uint64_t (*a2)(void))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = a2();
    if (!v3)
    {
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_26863DF8C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = a2();
    if (!v3)
    {
      *a1 = result;
      *(a1 + 8) = 0;
    }
  }

  return result;
}

void sub_26863E034(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_43:
    sub_2685C1CBC();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 != v5 && *v6 == 91)
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = 1;
      for (i = a1; ; *i = v14)
      {
        v8 = *(v1 + 40);
        if (v8 == v5)
        {
          break;
        }

        v9 = *v8;
        if (v9 == 93)
        {
          *(v1 + 40) = v8 + 1;
          sub_2685C01A0();
          return;
        }

        if ((v7 & 1) == 0)
        {
          for (; v9 <= 0x23; v9 = *v8)
          {
            if (((1 << v9) & 0x100002600) != 0)
            {
              ++v8;
            }

            else
            {
              if (v9 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v8;
              while (v8 != v5)
              {
                v11 = *v8++;
                v10 = v11;
                if (v11 == 10 || v10 == 13)
                {
                  goto LABEL_12;
                }
              }

              v8 = v5;
            }

LABEL_12:
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }
          }

LABEL_29:
          if (v8 == v5 || *v8 != 44)
          {
            goto LABEL_43;
          }

LABEL_42:
          ++v8;
LABEL_32:
          while (1)
          {
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }

            v18 = *v8;
            if (v18 > 0x23)
            {
              break;
            }

            if (((1 << v18) & 0x100002600) != 0)
            {
              goto LABEL_42;
            }

            if (v18 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v20 = *v8++;
              v19 = v20;
              if (v20 == 10 || v19 == 13)
              {
                goto LABEL_32;
              }
            }

            v8 = v5;
          }
        }

LABEL_23:
        v12 = sub_2685C08D4();
        if (v2)
        {
          return;
        }

        v13 = v12;
        v14 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_268666390(0, *(v14 + 2) + 1, 1, v14);
          *a1 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_268666390((v16 > 1), v17 + 1, 1, v14);
        }

        v7 = 0;
        *(v14 + 2) = v17 + 1;
        *&v14[8 * v17 + 32] = v13;
        a1 = i;
      }

      if (v7)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v22 = sub_2685C08D4();
    if (!v2)
    {
      v23 = v22;
      v24 = *a1;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_268666390(0, *(v24 + 2) + 1, 1, v24);
        *a1 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_268666390((v26 > 1), v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      *&v24[8 * v27 + 32] = v23;
      *a1 = v24;
    }
  }
}

uint64_t sub_26863E34C(uint64_t *a1, uint64_t (*a2)(void))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = a2();
    if (!v3)
    {
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_26863E3F0(uint64_t a1, uint64_t (*a2)(void))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = a2();
    if (!v3)
    {
      *a1 = result;
      *(a1 + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_26863E498(_BYTE *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C138C();
    if (!v2)
    {
      *a1 = result & 1;
    }
  }

  return result;
}

void sub_26863E538(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_43:
    sub_2685C1CBC();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 != v5 && *v6 == 91)
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = 1;
      for (i = a1; ; *i = v14)
      {
        v8 = *(v1 + 40);
        if (v8 == v5)
        {
          break;
        }

        v9 = *v8;
        if (v9 == 93)
        {
          *(v1 + 40) = v8 + 1;
          sub_2685C01A0();
          return;
        }

        if ((v7 & 1) == 0)
        {
          for (; v9 <= 0x23; v9 = *v8)
          {
            if (((1 << v9) & 0x100002600) != 0)
            {
              ++v8;
            }

            else
            {
              if (v9 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v8;
              while (v8 != v5)
              {
                v11 = *v8++;
                v10 = v11;
                if (v11 == 10 || v10 == 13)
                {
                  goto LABEL_12;
                }
              }

              v8 = v5;
            }

LABEL_12:
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }
          }

LABEL_29:
          if (v8 == v5 || *v8 != 44)
          {
            goto LABEL_43;
          }

LABEL_42:
          ++v8;
LABEL_32:
          while (1)
          {
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }

            v18 = *v8;
            if (v18 > 0x23)
            {
              break;
            }

            if (((1 << v18) & 0x100002600) != 0)
            {
              goto LABEL_42;
            }

            if (v18 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v20 = *v8++;
              v19 = v20;
              if (v20 == 10 || v19 == 13)
              {
                goto LABEL_32;
              }
            }

            v8 = v5;
          }
        }

LABEL_23:
        v12 = sub_2685C138C();
        if (v2)
        {
          return;
        }

        v13 = v12;
        v14 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_268665E50(0, *(v14 + 2) + 1, 1, v14);
          *a1 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_268665E50((v16 > 1), v17 + 1, 1, v14);
        }

        v7 = 0;
        *(v14 + 2) = v17 + 1;
        v14[v17 + 32] = v13 & 1;
        a1 = i;
      }

      if (v7)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v22 = sub_2685C138C();
    if (!v2)
    {
      v23 = v22;
      v24 = *a1;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_268665E50(0, *(v24 + 2) + 1, 1, v24);
        *a1 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_268665E50((v26 > 1), v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      v24[v27 + 32] = v23 & 1;
      *a1 = v24;
    }
  }
}

uint64_t sub_26863E858(uint64_t *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C0BA8();
    if (!v2)
    {
      v7 = result;
      v8 = v6;
      v9 = a1[1];

      *a1 = v7;
      a1[1] = v8;
    }
  }

  return result;
}

void sub_26863E904(char **a1)
{
  v3 = v2;
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_43:
    sub_2685C1CBC();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 != v5 && *v6 == 91)
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = 1;
      while (1)
      {
        v8 = *(v1 + 40);
        if (v8 == v5)
        {
          break;
        }

        v9 = *v8;
        if (v9 == 93)
        {
          *(v1 + 40) = v8 + 1;
          sub_2685C01A0();
          return;
        }

        if ((v7 & 1) == 0)
        {
          for (; v9 <= 0x23; v9 = *v8)
          {
            if (((1 << v9) & 0x100002600) != 0)
            {
              ++v8;
            }

            else
            {
              if (v9 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v8;
              while (v8 != v5)
              {
                v11 = *v8++;
                v10 = v11;
                if (v11 == 10 || v10 == 13)
                {
                  goto LABEL_12;
                }
              }

              v8 = v5;
            }

LABEL_12:
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }
          }

LABEL_29:
          if (v8 == v5 || *v8 != 44)
          {
            goto LABEL_43;
          }

LABEL_42:
          ++v8;
LABEL_32:
          while (1)
          {
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }

            v21 = *v8;
            if (v21 > 0x23)
            {
              break;
            }

            if (((1 << v21) & 0x100002600) != 0)
            {
              goto LABEL_42;
            }

            if (v21 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v23 = *v8++;
              v22 = v23;
              if (v23 == 10 || v22 == 13)
              {
                goto LABEL_32;
              }
            }

            v8 = v5;
          }
        }

LABEL_23:
        v12 = sub_2685C0BA8();
        if (v3)
        {
          return;
        }

        v14 = v12;
        v15 = v13;
        v16 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_2685B54B4(0, *(v16 + 2) + 1, 1, v16);
          *a1 = v16;
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        if (v19 >= v18 >> 1)
        {
          v16 = sub_2685B54B4((v18 > 1), v19 + 1, 1, v16);
        }

        v7 = 0;
        *(v16 + 2) = v19 + 1;
        v20 = &v16[16 * v19];
        *(v20 + 4) = v14;
        *(v20 + 5) = v15;
        *a1 = v16;
        v3 = 0;
      }

      if (v7)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v25 = sub_2685C0BA8();
    if (!v2)
    {
      v27 = v25;
      v28 = v26;
      v29 = *a1;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v29;
      if ((v30 & 1) == 0)
      {
        v29 = sub_2685B54B4(0, *(v29 + 2) + 1, 1, v29);
        *a1 = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_2685B54B4((v31 > 1), v32 + 1, 1, v29);
      }

      *(v29 + 2) = v32 + 1;
      v33 = &v29[16 * v32];
      *(v33 + 4) = v27;
      *(v33 + 5) = v28;
      *a1 = v29;
    }
  }
}

uint64_t sub_26863EC44(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = sub_2685C0DB8();
    if (!v3)
    {
      v9 = result;
      v10 = v8;
      result = a2(*a1, a1[1]);
      *a1 = v9;
      a1[1] = v10;
    }
  }

  return result;
}

void sub_26863ED00(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_27:
    sub_2685C1CBC();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 == v5 || *v6 != 91)
    {
      v8 = sub_2685C0DB8();
      if (!v2)
      {
        v10 = v8;
        v11 = v9;
        v12 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_268665F44(0, *(v12 + 2) + 1, 1, v12);
          *a1 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = sub_268665F44((v14 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v15 + 1;
        v16 = &v12[16 * v15];
        *(v16 + 4) = v10;
        *(v16 + 5) = v11;
        *a1 = v12;
      }
    }

    else
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = *(v1 + 40);
      if (v7 != v5 && *v7 == 93)
      {
LABEL_7:
        *(v1 + 40) = v7 + 1;
        sub_2685C01A0();
        return;
      }

      v17 = sub_2685C0DB8();
      if (!v2)
      {
        v19 = v17;
        v20 = v18;
        v21 = *a1;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v21;
        if ((v22 & 1) == 0)
        {
          v21 = sub_268665F44(0, *(v21 + 2) + 1, 1, v21);
          *a1 = v21;
        }

        v23 = *(v21 + 2);
        v24 = *(v21 + 3);
        v25 = v23 + 1;
        if (v23 >= v24 >> 1)
        {
          v39 = v23 + 1;
          v35 = v21;
          v36 = *(v21 + 2);
          v37 = sub_268665F44((v24 > 1), v23 + 1, 1, v35);
          v23 = v36;
          v25 = v39;
          v21 = v37;
        }

        while (1)
        {
          *(v21 + 2) = v25;
          v26 = &v21[16 * v23];
          *(v26 + 4) = v19;
          *(v26 + 5) = v20;
          *a1 = v21;
          v7 = *(v1 + 40);
          if (v7 != v5 && *v7 == 93)
          {
            goto LABEL_7;
          }

          sub_2685C01A0();
          v27 = *(v1 + 40);
          if (v27 == v5 || *v27 != 44)
          {
            goto LABEL_27;
          }

          *(v1 + 40) = v27 + 1;
          sub_2685C01A0();
          v19 = sub_2685C0DB8();
          v20 = v28;
          v21 = *a1;
          v29 = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v21;
          if ((v29 & 1) == 0)
          {
            v21 = sub_268665F44(0, *(v21 + 2) + 1, 1, v21);
            *a1 = v21;
          }

          v23 = *(v21 + 2);
          v30 = *(v21 + 3);
          v25 = v23 + 1;
          if (v23 >= v30 >> 1)
          {
            v38 = v23 + 1;
            v31 = v21;
            v32 = *(v21 + 2);
            v33 = sub_268665F44((v30 > 1), v23 + 1, 1, v31);
            v23 = v32;
            v25 = v38;
            v21 = v33;
            *a1 = v33;
          }
        }
      }
    }
  }
}

unsigned __int8 *sub_26863EFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_268689C74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v24 - v15;
  result = sub_2685C15D0();
  if (!v3)
  {
    if (v19)
    {
      v20 = sub_2685C0AEC();
      if (v20 != v20)
      {
        sub_2685C1CBC();
        swift_allocError();
        *v21 = 0;
        return swift_willThrow();
      }

      (*(a2 + 32))();
      v22 = *(a1 - 8);
      if ((*(v22 + 48))(v13, 1, a1) == 1)
      {
        (*(v8 + 8))(v13, v7);
        goto LABEL_7;
      }

      v16 = v13;
    }

    else
    {
      sub_2685C1DCC(result, v18, a1, a2, v16);
      v22 = *(a1 - 8);
      if ((*(v22 + 48))(v16, 1, a1) == 1)
      {
        (*(v8 + 8))(v16, v7);
LABEL_7:
        sub_2685C1CBC();
        swift_allocError();
        *v23 = 8;
        return swift_willThrow();
      }
    }

    return (*(v22 + 32))(a3, v16, a1);
  }

  return result;
}

unsigned __int8 *sub_26863F280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2685C01A0();
  v12 = *(v3 + 40);
  if (v12 == *(v3 + 48) || *v12 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v3 + 40) = v12 + 1;
    sub_2685C01A0();
    result = sub_26863EFE8(a2, a3, v11);
    if (!v4)
    {
      v14 = sub_268689C74();
      (*(*(v14 - 8) + 8))(a1, v14);
      (*(v8 + 32))(a1, v11, a2);
      return (*(v8 + 56))(a1, 0, 1, a2);
    }
  }

  return result;
}

unsigned __int8 *sub_26863F428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2685C01A0();
  v12 = *(v3 + 40);
  if (v12 == *(v3 + 48) || *v12 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v3 + 40) = v12 + 1;
    sub_2685C01A0();
    result = sub_26863EFE8(a2, a3, v11);
    if (!v4)
    {
      (*(v8 + 8))(a1, a2);
      return (*(v8 + 32))(a1, v11, a2);
    }
  }

  return result;
}

void sub_26863F58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v33 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v30 - v16;
  sub_2685C01A0();
  v18 = *(v3 + 40);
  v19 = *(v3 + 48);
  if (v18 == v19 || *v18 != 58)
  {
LABEL_39:
    sub_2685C1CBC();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }

  else
  {
    *(v3 + 40) = v18 + 1;
    sub_2685C01A0();
    v20 = *(v3 + 40);
    if (v20 != v19 && *v20 == 91)
    {
      *(v3 + 40) = v20 + 1;
      sub_2685C01A0();
      v31 = (v6 + 8);
      v32 = (v6 + 16);
      for (i = 1; ; i = 0)
      {
        v22 = *(v3 + 40);
        if (v22 == v19)
        {
          break;
        }

        v23 = *v22;
        if (v23 == 93)
        {
          *(v3 + 40) = v22 + 1;
          sub_2685C01A0();
          return;
        }

        if ((i & 1) == 0)
        {
          for (; v23 <= 0x23; v23 = *v22)
          {
            if (((1 << v23) & 0x100002600) != 0)
            {
              ++v22;
            }

            else
            {
              if (v23 != 35)
              {
                break;
              }

              *(v3 + 40) = ++v22;
              while (v22 != v19)
              {
                v25 = *v22++;
                v24 = v25;
                if (v25 == 10 || v24 == 13)
                {
                  goto LABEL_12;
                }
              }

              v22 = v19;
            }

LABEL_12:
            *(v3 + 40) = v22;
            if (v22 == v19)
            {
              break;
            }
          }

LABEL_25:
          if (v22 == v19 || *v22 != 44)
          {
            goto LABEL_39;
          }

LABEL_38:
          ++v22;
LABEL_28:
          while (1)
          {
            *(v3 + 40) = v22;
            if (v22 == v19)
            {
              break;
            }

            v26 = *v22;
            if (v26 > 0x23)
            {
              break;
            }

            if (((1 << v26) & 0x100002600) != 0)
            {
              goto LABEL_38;
            }

            if (v26 != 35)
            {
              break;
            }

            *(v3 + 40) = ++v22;
            while (v22 != v19)
            {
              v28 = *v22++;
              v27 = v28;
              if (v28 == 10 || v27 == 13)
              {
                goto LABEL_28;
              }
            }

            v22 = v19;
          }
        }

LABEL_23:
        sub_26863EFE8(a2, v34, v17);
        if (v4)
        {
          return;
        }

        (*v32)(v14, v17, a2);
        sub_268689BA4();
        sub_268689B84();
        (*v31)(v17, a2);
      }

      if (i)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    sub_26863EFE8(a2, v34, v10);
    if (!v4)
    {
      (*(v6 + 16))(v14, v10, a2);
      sub_268689BA4();
      sub_268689B84();
      (*(v6 + 8))(v10, a2);
    }
  }
}

uint64_t sub_26863F948(char *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v101 = *(a2 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v7;
  v9 = sub_268689C74();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v71 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v75 = &v71 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v71 - v22;
  v24 = *(v3 + 40);
  v25 = *(v3 + 48);
  v26 = v3;
  if (v24 != v25 && *v24 == 58)
  {
    *(v3 + 40) = v24 + 1;
    sub_2685C01A0();
  }

  v27 = v81;
  v28 = *(v81 + 16);
  v79 = a1;
  v29 = a1;
  v30 = v82;
  v73 = v28;
  v74 = v81 + 16;
  v28(v23, v29, v82);
  v77 = *(v101 + 48);
  v78 = v101 + 48;
  v31 = v77(v23, 1, v8);
  v32 = v30;
  v33 = *(v27 + 8);
  v33(v23, v32);
  if (v31 == 1)
  {
    (*(v80 + 16))(v8);
    (*(v101 + 56))(v20, 0, 1, v8);
    (*(v81 + 40))(v79, v20, v82);
  }

  v34 = *(v26 + 40);
  if (v34 == v25)
  {
    goto LABEL_10;
  }

  v35 = v26;
  v36 = *v34;
  *(v26 + 40) = v34 + 1;
  sub_2685C01A0();
  if (v36 != 60)
  {
    if (v36 == 123)
    {
      v37 = 125;
      goto LABEL_12;
    }

LABEL_10:
    sub_2685C1CBC();
    swift_allocError();
    *v38 = 0;
    return swift_willThrow();
  }

  v37 = 62;
LABEL_12:
  sub_268643DAC(v26, v93);
  *&v89 = 0;
  WORD4(v89) = 256;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  sub_268643DAC(v93, &v85);
  WORD4(v89) = v37;
  v40 = swift_conformsToProtocol2();
  if (!v40)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v42 = 6;
    swift_willThrow();
    sub_268643E08(v93);
    v43 = &v85;
    return sub_268643E5C(v43);
  }

  (*(v40 + 8))(&v83, v8, v40);
  sub_268643E08(v93);
  sub_2685B2FBC(v90);
  v90 = v83;
  v91 = v84;
  *&v92 = v8;
  *(&v92 + 1) = v80;
  v94[0] = v85;
  v94[1] = v86;
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v98 = v83;
  v99 = v84;
  v100 = v92;
  if (v8 != &type metadata for Google_Protobuf_Any)
  {
    if (v77(v79, 1, v8) != 1)
    {
      v41 = v76;
      (*(v80 + 64))(v94, &type metadata for TextFormatDecoder, &off_28792DCE0, v8);
      if (v41)
      {
LABEL_86:
        v43 = v94;
        return sub_268643E5C(v43);
      }

LABEL_85:
      sub_268643E08(v35);
      sub_268643DAC(v94, v35);
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_89;
  }

  v36 = v75;
  v73(v75, v79, v82);
  if (v77(v36, 1, &type metadata for Google_Protobuf_Any) == 1)
  {
LABEL_89:
    result = (v33)(v36, v82);
    goto LABEL_90;
  }

  (*(v101 + 32))(v72, v36, &type metadata for Google_Protobuf_Any);
  result = swift_dynamicCast();
  v44 = v86;
  if (v86)
  {
    v45 = *(&v95 + 1);
    v46 = v96;
    for (i = v79; v45 != v96; *(&v95 + 1) = v45)
    {
      v48 = *v45;
      if (v48 > 0x23)
      {
        break;
      }

      if (((1 << v48) & 0x100002600) != 0)
      {
        ++v45;
      }

      else
      {
        if (v48 != 35)
        {
          break;
        }

        *(&v95 + 1) = ++v45;
        while (v45 != v96)
        {
          v50 = *v45++;
          v49 = v50;
          if (v50 == 10 || v49 == 13)
          {
            goto LABEL_23;
          }
        }

        v45 = v96;
      }

LABEL_23:
      ;
    }

    v52 = v85;
    if (v45 == v96 || *v45 != 91)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        swift_allocObject();
        v44 = sub_26866D2A0(v44);
      }

      v63 = v76;
      sub_2686540A4(v44, v94);
      if (!v63)
      {
        if (!v44)
        {
LABEL_83:
          v64 = v71;
          (*(v101 + 56))(v71, 1, 1, &type metadata for Google_Protobuf_Any);
          goto LABEL_84;
        }

LABEL_59:
        v85 = v52;
        *&v86 = v44;
        sub_2685BA80C(v52, *(&v52 + 1));

        v64 = v71;
        swift_dynamicCast();
        (*(v101 + 56))(v64, 0, 1, &type metadata for Google_Protobuf_Any);
LABEL_84:
        (*(v81 + 40))(i, v64, v82);
        sub_2685C31B4(v52, *(&v52 + 1), v44);
        goto LABEL_85;
      }
    }

    else
    {
      v53 = v45 + 1;
      *(&v95 + 1) = v45 + 1;
      if (v45 + 1 != v96 && (*v53 & 0xDFu) - 91 >= 0xFFFFFFE6)
      {
        v54 = v45 + 2;
        *(&v95 + 1) = v45 + 2;
        if (v45 + 2 != v96)
        {
          v55 = 1;
          while (1)
          {
            v56 = *v54;
            v57 = (v56 - 58) > 0xFFFFFFF5 || (v56 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
            if (!v57 && (v56 - 46) >= 2 && v56 != 95)
            {
              break;
            }

            *(&v95 + 1) = ++v54;
            ++v55;
            if (v54 == v96)
            {
              goto LABEL_75;
            }
          }

          if (v56 == 93)
          {
            v58 = sub_2685B4E1C(v53, v55);
            if (v59)
            {
              v60 = v59;
              if (v54 != v46 && *v54 == 93)
              {
                v61 = v58;
                v62 = v54 + 1;
                for (*(&v95 + 1) = v54 + 1; v62 != v46; *(&v95 + 1) = v62)
                {
                  v65 = *v62;
                  if (v65 > 0x23)
                  {
                    break;
                  }

                  if (((1 << v65) & 0x100002600) != 0)
                  {
                    ++v62;
                  }

                  else
                  {
                    if (v65 != 35)
                    {
                      break;
                    }

                    *(&v95 + 1) = ++v62;
                    while (v62 != v46)
                    {
                      v67 = *v62++;
                      v66 = v67;
                      if (v67 == 10 || v66 == 13)
                      {
                        goto LABEL_61;
                      }
                    }

                    v62 = v46;
                  }

LABEL_61:
                  ;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  type metadata accessor for AnyMessageStorage();
                  swift_allocObject();
                  v44 = sub_26866D2A0(v44);
                }

                v70 = v76;
                sub_26866ADE4(v61, v60, v94);
                if (v70)
                {
                  sub_268643E5C(v94);

                  return sub_2685C31B4(v52, *(&v52 + 1), v44);
                }

                i = v79;
                if (!v44)
                {
                  goto LABEL_83;
                }

                goto LABEL_59;
              }
            }
          }
        }
      }

LABEL_75:
      sub_2685C1CBC();
      swift_allocError();
      *v69 = 0;
      swift_willThrow();
    }

    sub_268643E5C(v94);
    return sub_2685C31B4(v52, *(&v52 + 1), v44);
  }

LABEL_90:
  __break(1u);
  return result;
}

void sub_268640230(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v101 = a3;
  Description = a2[-1].Description;
  v10 = *(Description + 8);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v122 = &v90 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v102 = &v90 - v18;
  v19 = *(v3 + 40);
  v20 = *(v3 + 48);
  if (v19 != v20 && *v19 == 58)
  {
    *(v3 + 40) = v19 + 1;
    sub_2685C01A0();
    v19 = *(v3 + 40);
  }

  if (v19 == v20)
  {
    goto LABEL_91;
  }

  v21 = *v19;
  *(v3 + 40) = v19 + 1;
  sub_2685C01A0();
  if (v21 == 60)
  {
    v62 = 62;
LABEL_94:
    sub_268643DAC(v6, v113);
    *&v109 = 0;
    WORD4(v109) = 256;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    sub_268643DAC(v113, &v105);
    WORD4(v109) = v62;
    v63 = swift_conformsToProtocol2();
    v64 = v101;
    if (!v63)
    {
LABEL_98:
      sub_2685C1CBC();
      swift_allocError();
      *v65 = 6;
      swift_willThrow();
      sub_268643E08(v113);
      v66 = &v105;
      goto LABEL_147;
    }

    (*(v63 + 8))(&v103, a2, v63);
    sub_268643E08(v113);
    sub_2685B2FBC(v110);
    v110 = v103;
    v111 = v104;
    *&v112 = a2;
    *(&v112 + 1) = v64;
    v114 = v105;
    v115 = v106;
    v116 = v107;
    v117 = v108;
    v118 = v109;
    v119 = v103;
    v120 = v104;
    v121 = v112;
    if (a2 != &type metadata for Google_Protobuf_Any)
    {
      (*(v64 + 16))(a2, v64);
      (*(v64 + 64))(&v114, &type metadata for TextFormatDecoder, &off_28792DCE0, a2, v64);
      if (v4)
      {
        (*(Description + 1))(v13, a2);
        goto LABEL_146;
      }

      (*(Description + 2))(v102, v13, a2);
      sub_268689BA4();
      sub_268689B84();
      (*(Description + 1))(v13, a2);
      goto LABEL_145;
    }

    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v67 = qword_28029B270;
    v68 = *(&v116 + 1);
    for (i = v117; v68 != v117; *(&v116 + 1) = v68)
    {
      v70 = *v68;
      if (v70 > 0x23)
      {
        break;
      }

      if (((1 << v70) & 0x100002600) != 0)
      {
        ++v68;
      }

      else
      {
        if (v70 != 35)
        {
          break;
        }

        *(&v116 + 1) = ++v68;
        while (v68 != v117)
        {
          v72 = *v68++;
          v71 = v72;
          if (v72 == 10 || v71 == 13)
          {
            goto LABEL_104;
          }
        }

        v68 = v117;
      }

LABEL_104:
      ;
    }

    if (v68 == v117 || *v68 != 91)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        swift_allocObject();
        v67 = sub_26866D2A0(v67);
      }

      sub_2686540A4(v67, &v114);
      if (!v4)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v74 = v68 + 1;
      *(&v116 + 1) = v68 + 1;
      if (v68 + 1 == v117)
      {
        goto LABEL_148;
      }

      if ((*v74 & 0xDFu) - 91 < 0xFFFFFFE6)
      {
        goto LABEL_148;
      }

      v75 = v68 + 2;
      *(&v116 + 1) = v68 + 2;
      if (v68 + 2 == v117)
      {
        goto LABEL_148;
      }

      v76 = 1;
      while (1)
      {
        v77 = *v75;
        v78 = (v77 - 58) > 0xFFFFFFF5 || (v77 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
        if (!v78 && (v77 - 46) >= 2 && v77 != 95)
        {
          break;
        }

        *(&v116 + 1) = ++v75;
        ++v76;
        if (v75 == v117)
        {
          goto LABEL_148;
        }
      }

      if (v77 != 93)
      {
LABEL_148:
      }

      else
      {

        v79 = sub_2685B4E1C(v74, v76);
        if (v80)
        {
          v81 = v80;
          if (v75 != i && *v75 == 93)
          {
            v100 = a1;
            v82 = v79;
            v83 = v75 + 1;
            for (*(&v116 + 1) = v75 + 1; v83 != i; *(&v116 + 1) = v83)
            {
              v86 = *v83;
              if (v86 > 0x23)
              {
                break;
              }

              if (((1 << v86) & 0x100002600) != 0)
              {
                ++v83;
              }

              else
              {
                if (v86 != 35)
                {
                  break;
                }

                *(&v116 + 1) = ++v83;
                while (v83 != i)
                {
                  v88 = *v83++;
                  v87 = v88;
                  if (v88 == 10 || v87 == 13)
                  {
                    goto LABEL_154;
                  }
                }

                v83 = i;
              }

LABEL_154:
              ;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for AnyMessageStorage();
              swift_allocObject();
              v67 = sub_26866D2A0(v67);
            }

            sub_26866ADE4(v82, v81, &v114);
            if (v5)
            {
LABEL_173:
              sub_268643E5C(&v114);

              goto LABEL_139;
            }

LABEL_143:
            v105 = xmmword_26868A5E0;
            *&v106 = v67;
            sub_2685BA80C(0, 0xC000000000000000);

            swift_dynamicCast();
            sub_268689BA4();
            sub_268689B84();
            sub_2685B593C(0, 0xC000000000000000);

LABEL_145:
            sub_268643E08(v6);
            sub_268643DAC(&v114, v6);
            goto LABEL_146;
          }
        }
      }

      sub_2685C1CBC();
      swift_allocError();
      *v85 = 0;
      swift_willThrow();
    }

LABEL_138:
    sub_268643E5C(&v114);
LABEL_139:
    sub_2685B593C(0, 0xC000000000000000);

    return;
  }

  if (v21 == 123)
  {
    v62 = 125;
    goto LABEL_94;
  }

  if (v21 != 91)
  {
LABEL_91:
    sub_2685C1CBC();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();
    return;
  }

  v100 = a1;
  v22 = v101;
  v97 = v101 + 64;
  v98 = v101 + 16;
  v95 = (Description + 16);
  v96 = (Description + 8);
  v94 = xmmword_26868A5E0;
  for (j = 1; ; j = 0)
  {
    v24 = *(v6 + 40);
    v25 = *(v6 + 48);
    if (v24 != v25 && *v24 == 93)
    {
      *(v6 + 40) = v24 + 1;
      sub_2685C01A0();
      return;
    }

    if ((j & 1) == 0)
    {
      sub_2685C01A0();
      v26 = *(v6 + 40);
      if (v26 == v25 || *v26 != 44)
      {
        goto LABEL_91;
      }

      *(v6 + 40) = v26 + 1;
      sub_2685C01A0();
      v24 = *(v6 + 40);
    }

    if (v24 == v25)
    {
      goto LABEL_91;
    }

    v29 = *v24;
    v27 = v24 + 1;
    v28 = v29;
LABEL_18:
    while (1)
    {
      *(v6 + 40) = v27;
      if (v27 == v25)
      {
        break;
      }

      v30 = *v27;
      if (v30 > 0x23)
      {
        break;
      }

      if (((1 << v30) & 0x100002600) != 0)
      {
        ++v27;
      }

      else
      {
        if (v30 != 35)
        {
          break;
        }

        *(v6 + 40) = ++v27;
        while (v27 != v25)
        {
          v32 = *v27++;
          v31 = v32;
          if (v32 == 10 || v31 == 13)
          {
            goto LABEL_18;
          }
        }

        v27 = v25;
      }
    }

    if (v28 == 60)
    {
      v33 = 62;
    }

    else
    {
      if (v28 != 123)
      {
        goto LABEL_91;
      }

      v33 = 125;
    }

    sub_268643DAC(v6, v113);
    *&v109 = 0;
    WORD4(v109) = 256;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    sub_268643DAC(v113, &v105);
    WORD4(v109) = v33;
    v34 = swift_conformsToProtocol2();
    v35 = v122;
    if (!v34)
    {
      goto LABEL_98;
    }

    (*(v34 + 8))(&v103, a2, v34);
    sub_268643E08(v113);
    sub_2685B2FBC(v110);
    v110 = v103;
    v111 = v104;
    *&v112 = a2;
    *(&v112 + 1) = v22;
    v114 = v105;
    v115 = v106;
    v116 = v107;
    v117 = v108;
    v118 = v109;
    v119 = v103;
    v120 = v104;
    v121 = v112;
    if (a2 != &type metadata for Google_Protobuf_Any)
    {
      break;
    }

    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v36 = qword_28029B270;
    v37 = *(&v116 + 1);
    for (k = v117; v37 != v117; *(&v116 + 1) = v37)
    {
      v39 = *v37;
      if (v39 > 0x23)
      {
        break;
      }

      if (((1 << v39) & 0x100002600) == 0)
      {
        if (v39 == 35)
        {
          *(&v116 + 1) = ++v37;
          while (v37 != v117)
          {
            v41 = *v37++;
            v40 = v41;
            if (v41 == 10 || v40 == 13)
            {
              goto LABEL_41;
            }
          }

          v37 = v117;
          *(&v116 + 1) = v117;
        }

        break;
      }

      ++v37;
LABEL_41:
      ;
    }

    if (v37 == v117 || *v37 != 91)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        v53 = swift_allocObject();
        v99 = v5;
        *(v53 + 16) = 0;
        *(v53 + 24) = 0xE000000000000000;
        *(v53 + 32) = v94;
        *(v53 + 72) = 0;
        swift_beginAccess();
        v54 = *(v36 + 16);
        v92 = *(v36 + 24);
        v93 = v54;
        swift_beginAccess();
        *(v53 + 16) = v93;
        *(v53 + 24) = v92;
        swift_beginAccess();
        sub_268643E8C(v36 + 32, &v105);
        swift_beginAccess();

        v22 = v101;
        sub_268643EE8(&v105, v53 + 32);
        swift_endAccess();
        v5 = v99;

        v36 = v53;
      }

      sub_2686540A4(v36, &v114);
      if (v5)
      {
        goto LABEL_138;
      }

      v99 = 0;
    }

    else
    {
      v99 = v5;
      v42 = qword_28029B270;
      v43 = v37 + 1;
      *(&v116 + 1) = v37 + 1;
      if (v37 + 1 == v117)
      {
        goto LABEL_136;
      }

      if ((*v43 & 0xDFu) - 91 < 0xFFFFFFE6)
      {
        goto LABEL_136;
      }

      v44 = v37 + 2;
      *(&v116 + 1) = v37 + 2;
      if (v37 + 2 == v117)
      {
        goto LABEL_136;
      }

      v45 = 1;
      while (1)
      {
        v46 = *v44;
        v47 = (v46 - 58) > 0xFFFFFFF5 || (v46 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
        if (!v47 && (v46 - 46) >= 2 && v46 != 95)
        {
          break;
        }

        *(&v116 + 1) = ++v44;
        ++v45;
        if (v44 == v117)
        {
          goto LABEL_136;
        }
      }

      if (v46 != 93)
      {
LABEL_136:

LABEL_137:
        sub_2685C1CBC();
        swift_allocError();
        *v84 = 0;
        swift_willThrow();
        goto LABEL_138;
      }

      v48 = v45;
      v36 = v42;
      v49 = sub_2685B4E1C(v43, v48);
      if (!v50)
      {
        goto LABEL_137;
      }

      v51 = v50;
      if (v44 == k || *v44 != 93)
      {

        goto LABEL_137;
      }

      v52 = v44 + 1;
LABEL_76:
      while (1)
      {
        *(&v116 + 1) = v52;
        if (v52 == k)
        {
          break;
        }

        v55 = *v52;
        if (v55 > 0x23)
        {
          break;
        }

        if (((1 << v55) & 0x100002600) != 0)
        {
          ++v52;
        }

        else
        {
          if (v55 != 35)
          {
            break;
          }

          *(&v116 + 1) = ++v52;
          while (v52 != k)
          {
            v57 = *v52++;
            v56 = v57;
            if (v57 == 10 || v56 == 13)
            {
              goto LABEL_76;
            }
          }

          v52 = k;
        }
      }

      v93 = v49;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v101;
        v58 = v99;
      }

      else
      {
        type metadata accessor for AnyMessageStorage();
        v59 = swift_allocObject();
        *(v59 + 16) = 0;
        *(v59 + 24) = 0xE000000000000000;
        v92 = v51;
        *(v59 + 32) = v94;
        *(v59 + 72) = 0;
        swift_beginAccess();
        v60 = *(v36 + 16);
        v90 = *(v36 + 24);
        v91 = v60;
        swift_beginAccess();
        *(v59 + 16) = v91;
        *(v59 + 24) = v90;
        swift_beginAccess();
        sub_268643E8C(v36 + 32, &v105);
        swift_beginAccess();

        v51 = v92;
        sub_268643EE8(&v105, v59 + 32);
        swift_endAccess();

        v58 = v99;
        v36 = v59;
        v22 = v101;
      }

      sub_26866ADE4(v93, v51, &v114);
      if (v58)
      {
        goto LABEL_173;
      }

      v99 = 0;
    }

    v105 = v94;
    *&v106 = v36;
    sub_2685BA80C(0, 0xC000000000000000);

    swift_dynamicCast();
    sub_268689BA4();
    sub_268689B84();
    sub_2685B593C(0, 0xC000000000000000);

    v5 = v99;
LABEL_74:
    sub_268643E08(v6);
    sub_268643DAC(&v114, v6);
    sub_268643E5C(&v114);
  }

  (*(v22 + 16))(a2, v22);
  (*(v22 + 64))(&v114, &type metadata for TextFormatDecoder, &off_28792DCE0, a2, v22);
  if (!v5)
  {
    (*v95)(v102, v35, a2);
    sub_268689BA4();
    sub_268689B84();
    (*v96)(v35, a2);
    goto LABEL_74;
  }

  (*v96)(v35, a2);
LABEL_146:
  v66 = &v114;
LABEL_147:
  sub_268643E5C(v66);
}

uint64_t (*sub_2686411E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v6 = v5;
  v98 = a1;
  v106 = *(a5 + 8);
  v97 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v103 = v91 - v13;
  v113 = *(a4 + 8);
  v108 = a2;
  v15 = v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v101 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v110 = v91 - v23;
  v24 = sub_268689C74();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v100 = v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v99 = v91 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v35 = v91 - v34;
  v36 = sub_268689C74();
  v112 = *(v36 - 8);
  v37 = *(v112 + 64);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v104 = v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v105 = v17;
  v42 = *(v17 + 56);
  v115 = v91 - v43;
  v111 = v16;
  v42();
  v102 = v10;
  v46 = *(v10 + 56);
  v45 = v10 + 56;
  v44 = v46;
  v114 = v35;
  v46(v35, 1, 1, v15);
  v47 = *(v6 + 40);
  v48 = *(v6 + 48);
  if (v47 == v48)
  {
    goto LABEL_6;
  }

  v93 = v15;
  v107 = v36;
  v49 = *v47;
  *(v6 + 40) = v47 + 1;
  sub_2685C01A0();
  if (v49 == 60)
  {
    v92 = v45;
    v94 = v25;
    v95 = v24;
    v50 = 62;
  }

  else
  {
    v78 = v49 == 123;
    v36 = v107;
    if (!v78)
    {
LABEL_6:
      sub_2685C1CBC();
      swift_allocError();
      *v51 = 0;
      swift_willThrow();
LABEL_7:
      v52 = v112;
LABEL_93:
      (*(v25 + 8))(v114, v24);
      return (*(v52 + 8))(v115, v36);
    }

    v92 = v45;
    v94 = v25;
    v95 = v24;
    v50 = 125;
  }

  v91[1] = v106 + 32;
  v96 = v113 + 32;
  v53 = *(v6 + 40);
  v54 = v109;
  v55 = v110;
  while (1)
  {
    do
    {
      if (v53 != v48)
      {
        v56 = *v53;
        if (v56 == v50)
        {
          *(v6 + 40) = v53 + 1;
          sub_2685C01A0();
          v52 = v112;
          v81 = v104;
          v36 = v107;
          (*(v112 + 16))(v104, v115, v107);
          v82 = v105;
          if ((*(v105 + 48))(v81, 1, v111) == 1)
          {
            (*(v52 + 8))(v81, v36);
            v25 = v94;
            v24 = v95;
          }

          else
          {
            v109 = v44;
            (*(v82 + 32))(v55, v81, v111);
            v25 = v94;
            v24 = v95;
            v83 = v99;
            (*(v94 + 16))(v99, v114, v95);
            v84 = v102;
            v85 = v93;
            if ((*(v102 + 48))(v83, 1, v93) != 1)
            {
              (*(v84 + 32))(v103, v83, v85);
              (*(v82 + 16))(v101, v110, v111);
              v87 = v100;
              (*(v84 + 16))(v100, v103, v85);
              v109(v87, 0, 1, v85);
              v88 = v111;
              swift_getAssociatedConformanceWitness();
              sub_2686898F4();
              v109 = v54;
              sub_268689914();
              (*(v84 + 8))(v103, v85);
              (*(v82 + 8))(v110, v88);
              (*(v25 + 8))(v114, v24);
              return (*(v52 + 8))(v115, v36);
            }

            (*(v82 + 8))(v110, v111);
            (*(v25 + 8))(v83, v24);
          }

          sub_2685C1CBC();
          swift_allocError();
          *v86 = 0;
          swift_willThrow();
          goto LABEL_93;
        }

        for (; v56 <= 0x23; v56 = *v53)
        {
          if (((1 << v56) & 0x100002600) != 0)
          {
            ++v53;
          }

          else
          {
            if (v56 != 35)
            {
              break;
            }

            *(v6 + 40) = ++v53;
            while (v53 != v48)
            {
              v58 = *v53++;
              v57 = v58;
              if (v58 == 10 || v57 == 13)
              {
                goto LABEL_16;
              }
            }

            v53 = v48;
          }

LABEL_16:
          *(v6 + 40) = v53;
          if (v53 == v48)
          {
            break;
          }
        }
      }
    }

    while (v53 == v48);
    v59 = *v53;
    if (v59 == 91 || ((v59 - 58) <= 0xFFFFFFF6 ? (v60 = (v59 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6) : (v60 = 1), v61 = v53, !v60))
    {
      sub_2685C1CBC();
      swift_allocError();
      *v89 = 0;
      goto LABEL_97;
    }

    do
    {
      v62 = *v61;
      if ((v62 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v62 != 95 && (v62 - 48) > 9)
      {
        break;
      }

      *(v6 + 40) = ++v61;
    }

    while (v61 != v48);
    v64 = v61;
    if (v61 != v48)
    {
      do
      {
        v71 = *v64;
        if (v71 > 0x23)
        {
          break;
        }

        if (((1 << v71) & 0x100002600) != 0)
        {
          ++v64;
        }

        else
        {
          if (v71 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v64;
          while (v64 != v48)
          {
            v73 = *v64++;
            v72 = v73;
            if (v73 == 10 || v72 == 13)
            {
              goto LABEL_54;
            }
          }

          v64 = v48;
        }

LABEL_54:
        *(v6 + 40) = v64;
      }

      while (v64 != v48);
    }

    result = sub_2685B4E1C(v53, v61 - v53);
    if (!v66)
    {
      break;
    }

    v67 = result;
    v68 = v66;
    if (result == 7955819 && v66 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v67 == 49 && v68 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v69 = v54;
      (*(v113 + 32))(v115, v6, &type metadata for TextFormatDecoder, &off_28792DCE0);
    }

    else
    {
      if (v67 == 0x65756C6176 && v68 == 0xE500000000000000 || ((v77 = sub_268689E14(), v67 == 50) ? (v78 = v68 == 0xE100000000000000) : (v78 = 0), !v78 ? (v79 = 0) : (v79 = 1), (v77 & 1) != 0 || (v79 & 1) != 0))
      {
      }

      else
      {
        v80 = sub_268689E14();

        if ((v80 & 1) == 0)
        {
          sub_2685C1CBC();
          swift_allocError();
          *v90 = 7;
LABEL_97:
          swift_willThrow();
LABEL_98:
          v25 = v94;
          v24 = v95;
          v36 = v107;
          goto LABEL_7;
        }
      }

      v69 = v54;
      (*(v106 + 32))(v114, v6, &type metadata for TextFormatDecoder, &off_28792DCE0);
    }

    v54 = v69;
    if (v69)
    {
      goto LABEL_98;
    }

    v53 = *(v6 + 40);
    v48 = *(v6 + 48);
    if (v53 != v48)
    {
      v70 = *v53;
      if (v70 == 59 || v70 == 44)
      {
LABEL_74:
        ++v53;
LABEL_64:
        while (1)
        {
          *(v6 + 40) = v53;
          if (v53 == v48)
          {
            break;
          }

          v74 = *v53;
          if (v74 > 0x23)
          {
            break;
          }

          if (((1 << v74) & 0x100002600) != 0)
          {
            goto LABEL_74;
          }

          if (v74 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v53;
          while (v53 != v48)
          {
            v76 = *v53++;
            v75 = v76;
            if (v76 == 10 || v75 == 13)
            {
              goto LABEL_64;
            }
          }

          v53 = v48;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_268641C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v6 = v5;
  v94 = a5;
  v96 = a1;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v101 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(v11 + 8);
  v106 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v98 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v104 = &v88 - v20;
  v21 = sub_268689C74();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v95 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v97 = &v88 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v88 - v31;
  v33 = sub_268689C74();
  v108 = *(v33 - 8);
  v34 = *(v108 + 64);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v102 = &v88 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v103 = v14;
  v39 = *(v14 + 56);
  v111 = &v88 - v40;
  v39();
  v99 = v8;
  v100 = a3;
  v43 = *(v8 + 56);
  v42 = v8 + 56;
  v41 = v43;
  v110 = v32;
  v43(v32, 1, 1, a3);
  v44 = *(v6 + 40);
  v45 = *(v6 + 48);
  if (v44 == v45)
  {
    goto LABEL_6;
  }

  v105 = v33;
  v46 = *v44;
  *(v6 + 40) = v44 + 1;
  sub_2685C01A0();
  if (v46 == 60)
  {
    v90 = v41;
    v91 = v22;
    v92 = v21;
    v47 = 62;
  }

  else
  {
    v73 = v46 == 123;
    v33 = v105;
    if (!v73)
    {
LABEL_6:
      sub_2685C1CBC();
      swift_allocError();
      *v48 = 0;
      swift_willThrow();
      goto LABEL_7;
    }

    v90 = v41;
    v91 = v22;
    v92 = v21;
    v47 = 125;
  }

  v93 = v109 + 32;
  v50 = *(v6 + 40);
  v51 = v107;
  while (1)
  {
    do
    {
      if (v50 != v45)
      {
        v52 = *v50;
        if (v52 == v47)
        {
          *(v6 + 40) = v50 + 1;
          sub_2685C01A0();
          v49 = v108;
          v76 = v102;
          v33 = v105;
          (*(v108 + 16))(v102, v111, v105);
          v77 = v103;
          if ((*(v103 + 48))(v76, 1, AssociatedTypeWitness) == 1)
          {
            (*(v49 + 8))(v76, v33);
            v22 = v91;
            v21 = v92;
          }

          else
          {
            v94 = v42;
            v107 = v51;
            (*(v77 + 32))(v104, v76, AssociatedTypeWitness);
            v22 = v91;
            v21 = v92;
            v78 = v97;
            (*(v91 + 16))(v97, v110, v92);
            v79 = AssociatedTypeWitness;
            v80 = v77;
            v81 = v99;
            v82 = v100;
            if ((*(v99 + 48))(v78, 1, v100) != 1)
            {
              (*(v81 + 32))(v101, v78, v82);
              v84 = *(v80 + 16);
              v89 = v79;
              v84(v98, v104, v79);
              v85 = v95;
              (*(v81 + 16))(v95, v101, v82);
              v90(v85, 0, 1, v82);
              swift_getAssociatedConformanceWitness();
              sub_2686898F4();
              sub_268689914();
              (*(v81 + 8))(v101, v82);
              (*(v80 + 8))(v104, v89);
              (*(v22 + 8))(v110, v21);
              return (*(v49 + 8))(v111, v33);
            }

            (*(v80 + 8))(v104, v79);
            (*(v22 + 8))(v78, v21);
          }

          sub_2685C1CBC();
          swift_allocError();
          *v83 = 0;
          swift_willThrow();
          goto LABEL_93;
        }

        for (; v52 <= 0x23; v52 = *v50)
        {
          if (((1 << v52) & 0x100002600) != 0)
          {
            ++v50;
          }

          else
          {
            if (v52 != 35)
            {
              break;
            }

            *(v6 + 40) = ++v50;
            while (v50 != v45)
            {
              v54 = *v50++;
              v53 = v54;
              if (v54 == 10 || v53 == 13)
              {
                goto LABEL_16;
              }
            }

            v50 = v45;
          }

LABEL_16:
          *(v6 + 40) = v50;
          if (v50 == v45)
          {
            break;
          }
        }
      }
    }

    while (v50 == v45);
    v55 = *v50;
    if (v55 == 91 || ((v55 - 58) <= 0xFFFFFFF6 ? (v56 = (v55 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6) : (v56 = 1), v57 = v50, !v56))
    {
      sub_2685C1CBC();
      swift_allocError();
      *v86 = 0;
      goto LABEL_96;
    }

    do
    {
      v58 = *v57;
      if ((v58 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v58 != 95 && (v58 - 48) > 9)
      {
        break;
      }

      *(v6 + 40) = ++v57;
    }

    while (v57 != v45);
    v60 = v57;
    if (v57 != v45)
    {
      do
      {
        v66 = *v60;
        if (v66 > 0x23)
        {
          break;
        }

        if (((1 << v66) & 0x100002600) != 0)
        {
          ++v60;
        }

        else
        {
          if (v66 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v60;
          while (v60 != v45)
          {
            v68 = *v60++;
            v67 = v68;
            if (v68 == 10 || v67 == 13)
            {
              goto LABEL_53;
            }
          }

          v60 = v45;
        }

LABEL_53:
        *(v6 + 40) = v60;
      }

      while (v60 != v45);
    }

    result = sub_2685B4E1C(v50, v57 - v50);
    if (!v62)
    {
      __break(1u);
      return result;
    }

    v63 = result;
    v64 = v62;
    if (result == 7955819 && v62 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v63 == 49 && v64 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      (*(v109 + 32))(v111, v6, &type metadata for TextFormatDecoder, &off_28792DCE0);
      if (v51)
      {
        goto LABEL_97;
      }

      goto LABEL_48;
    }

    if (v63 == 0x65756C6176 && v64 == 0xE500000000000000 || ((v72 = sub_268689E14(), v63 == 50) ? (v73 = v64 == 0xE100000000000000) : (v73 = 0), !v73 ? (v74 = 0) : (v74 = 1), (v72 & 1) != 0 || (v74 & 1) != 0))
    {

      goto LABEL_86;
    }

    v75 = sub_268689E14();

    if ((v75 & 1) == 0)
    {
      break;
    }

LABEL_86:
    sub_26863F280(v110, v100, v94);
    if (v51)
    {
      goto LABEL_97;
    }

LABEL_48:
    v50 = *(v6 + 40);
    v45 = *(v6 + 48);
    if (v50 != v45)
    {
      v65 = *v50;
      if (v65 == 59 || v65 == 44)
      {
LABEL_73:
        ++v50;
LABEL_63:
        while (1)
        {
          *(v6 + 40) = v50;
          if (v50 == v45)
          {
            break;
          }

          v69 = *v50;
          if (v69 > 0x23)
          {
            break;
          }

          if (((1 << v69) & 0x100002600) != 0)
          {
            goto LABEL_73;
          }

          if (v69 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v50;
          while (v50 != v45)
          {
            v71 = *v50++;
            v70 = v71;
            if (v71 == 10 || v70 == 13)
            {
              goto LABEL_63;
            }
          }

          v50 = v45;
        }
      }
    }
  }

  sub_2685C1CBC();
  swift_allocError();
  *v87 = 7;
LABEL_96:
  swift_willThrow();
LABEL_97:
  v22 = v91;
  v21 = v92;
  v33 = v105;
LABEL_7:
  v49 = v108;
LABEL_93:
  (*(v22 + 8))(v110, v21);
  return (*(v49 + 8))(v111, v33);
}

void sub_26864272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(v6 + 40);
  v15 = *(v6 + 48);
  if (v14 != v15 && *v14 == 58)
  {
    *(v6 + 40) = v14 + 1;
    sub_2685C01A0();
    v14 = *(v6 + 40);
  }

  if (v14 == v15 || *v14 != 91)
  {
    a6(a1, a2, a3, a4, a5);
  }

  else
  {
    v16 = v7;
    *(v6 + 40) = v14 + 1;
    sub_2685C01A0();
    v17 = *(v6 + 40);
    if (v17 == *(v6 + 48) || *v17 != 93)
    {
      while (1)
      {
        a6(a1, a2, a3, a4, a5);
        if (v16)
        {
          break;
        }

        v16 = 0;
        v17 = *(v6 + 40);
        v18 = *(v6 + 48);
        if (v17 != v18 && *v17 == 93)
        {
          goto LABEL_8;
        }

        sub_2685C01A0();
        v19 = *(v6 + 40);
        if (v19 == v18 || *v19 != 44)
        {
          sub_2685C1CBC();
          swift_allocError();
          *v20 = 0;
          swift_willThrow();
          return;
        }

        *(v6 + 40) = v19 + 1;
        sub_2685C01A0();
      }
    }

    else
    {
LABEL_8:
      *(v6 + 40) = v17 + 1;
      sub_2685C01A0();
    }
  }
}

uint64_t (*sub_2686428B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v6 = v5;
  v94 = a5;
  v96 = a1;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v101 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(v11 + 8);
  v106 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v98 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v104 = &v88 - v20;
  v21 = sub_268689C74();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v95 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v97 = &v88 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v88 - v31;
  v33 = sub_268689C74();
  v108 = *(v33 - 8);
  v34 = *(v108 + 64);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v102 = &v88 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v103 = v14;
  v39 = *(v14 + 56);
  v111 = &v88 - v40;
  v39();
  v99 = v8;
  v100 = a3;
  v43 = *(v8 + 56);
  v42 = v8 + 56;
  v41 = v43;
  v110 = v32;
  v43(v32, 1, 1, a3);
  v44 = *(v6 + 40);
  v45 = *(v6 + 48);
  if (v44 == v45)
  {
    goto LABEL_6;
  }

  v105 = v33;
  v46 = *v44;
  *(v6 + 40) = v44 + 1;
  sub_2685C01A0();
  if (v46 == 60)
  {
    v90 = v41;
    v91 = v22;
    v92 = v21;
    v47 = 62;
  }

  else
  {
    v73 = v46 == 123;
    v33 = v105;
    if (!v73)
    {
LABEL_6:
      sub_2685C1CBC();
      swift_allocError();
      *v48 = 0;
      swift_willThrow();
      goto LABEL_7;
    }

    v90 = v41;
    v91 = v22;
    v92 = v21;
    v47 = 125;
  }

  v93 = v109 + 32;
  v50 = *(v6 + 40);
  v51 = v107;
  while (1)
  {
    do
    {
      if (v50 != v45)
      {
        v52 = *v50;
        if (v52 == v47)
        {
          *(v6 + 40) = v50 + 1;
          sub_2685C01A0();
          v49 = v108;
          v76 = v102;
          v33 = v105;
          (*(v108 + 16))(v102, v111, v105);
          v77 = v103;
          if ((*(v103 + 48))(v76, 1, AssociatedTypeWitness) == 1)
          {
            (*(v49 + 8))(v76, v33);
            v22 = v91;
            v21 = v92;
          }

          else
          {
            v94 = v42;
            v107 = v51;
            (*(v77 + 32))(v104, v76, AssociatedTypeWitness);
            v22 = v91;
            v21 = v92;
            v78 = v97;
            (*(v91 + 16))(v97, v110, v92);
            v79 = AssociatedTypeWitness;
            v80 = v77;
            v81 = v99;
            v82 = v100;
            if ((*(v99 + 48))(v78, 1, v100) != 1)
            {
              (*(v81 + 32))(v101, v78, v82);
              v84 = *(v80 + 16);
              v89 = v79;
              v84(v98, v104, v79);
              v85 = v95;
              (*(v81 + 16))(v95, v101, v82);
              v90(v85, 0, 1, v82);
              swift_getAssociatedConformanceWitness();
              sub_2686898F4();
              sub_268689914();
              (*(v81 + 8))(v101, v82);
              (*(v80 + 8))(v104, v89);
              (*(v22 + 8))(v110, v21);
              return (*(v49 + 8))(v111, v33);
            }

            (*(v80 + 8))(v104, v79);
            (*(v22 + 8))(v78, v21);
          }

          sub_2685C1CBC();
          swift_allocError();
          *v83 = 0;
          swift_willThrow();
          goto LABEL_93;
        }

        for (; v52 <= 0x23; v52 = *v50)
        {
          if (((1 << v52) & 0x100002600) != 0)
          {
            ++v50;
          }

          else
          {
            if (v52 != 35)
            {
              break;
            }

            *(v6 + 40) = ++v50;
            while (v50 != v45)
            {
              v54 = *v50++;
              v53 = v54;
              if (v54 == 10 || v53 == 13)
              {
                goto LABEL_16;
              }
            }

            v50 = v45;
          }

LABEL_16:
          *(v6 + 40) = v50;
          if (v50 == v45)
          {
            break;
          }
        }
      }
    }

    while (v50 == v45);
    v55 = *v50;
    if (v55 == 91 || ((v55 - 58) <= 0xFFFFFFF6 ? (v56 = (v55 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6) : (v56 = 1), v57 = v50, !v56))
    {
      sub_2685C1CBC();
      swift_allocError();
      *v86 = 0;
      goto LABEL_96;
    }

    do
    {
      v58 = *v57;
      if ((v58 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v58 != 95 && (v58 - 48) > 9)
      {
        break;
      }

      *(v6 + 40) = ++v57;
    }

    while (v57 != v45);
    v60 = v57;
    if (v57 != v45)
    {
      do
      {
        v66 = *v60;
        if (v66 > 0x23)
        {
          break;
        }

        if (((1 << v66) & 0x100002600) != 0)
        {
          ++v60;
        }

        else
        {
          if (v66 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v60;
          while (v60 != v45)
          {
            v68 = *v60++;
            v67 = v68;
            if (v68 == 10 || v67 == 13)
            {
              goto LABEL_53;
            }
          }

          v60 = v45;
        }

LABEL_53:
        *(v6 + 40) = v60;
      }

      while (v60 != v45);
    }

    result = sub_2685B4E1C(v50, v57 - v50);
    if (!v62)
    {
      __break(1u);
      return result;
    }

    v63 = result;
    v64 = v62;
    if (result == 7955819 && v62 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v63 == 49 && v64 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      (*(v109 + 32))(v111, v6, &type metadata for TextFormatDecoder, &off_28792DCE0);
      if (v51)
      {
        goto LABEL_97;
      }

      goto LABEL_48;
    }

    if (v63 == 0x65756C6176 && v64 == 0xE500000000000000 || ((v72 = sub_268689E14(), v63 == 50) ? (v73 = v64 == 0xE100000000000000) : (v73 = 0), !v73 ? (v74 = 0) : (v74 = 1), (v72 & 1) != 0 || (v74 & 1) != 0))
    {

      goto LABEL_86;
    }

    v75 = sub_268689E14();

    if ((v75 & 1) == 0)
    {
      break;
    }

LABEL_86:
    sub_26863F948(v110, v100, v94);
    if (v51)
    {
      goto LABEL_97;
    }

LABEL_48:
    v50 = *(v6 + 40);
    v45 = *(v6 + 48);
    if (v50 != v45)
    {
      v65 = *v50;
      if (v65 == 59 || v65 == 44)
      {
LABEL_73:
        ++v50;
LABEL_63:
        while (1)
        {
          *(v6 + 40) = v50;
          if (v50 == v45)
          {
            break;
          }

          v69 = *v50;
          if (v69 > 0x23)
          {
            break;
          }

          if (((1 << v69) & 0x100002600) != 0)
          {
            goto LABEL_73;
          }

          if (v69 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v50;
          while (v50 != v45)
          {
            v71 = *v50++;
            v70 = v71;
            if (v71 == 10 || v70 == 13)
            {
              goto LABEL_63;
            }
          }

          v50 = v45;
        }
      }
    }
  }

  sub_2685C1CBC();
  swift_allocError();
  *v87 = 7;
LABEL_96:
  swift_willThrow();
LABEL_97:
  v22 = v91;
  v21 = v92;
  v33 = v105;
LABEL_7:
  v49 = v108;
LABEL_93:
  (*(v22 + 8))(v110, v21);
  return (*(v49 + 8))(v111, v33);
}

void sub_268643344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 40);
  v13 = *(v5 + 48);
  if (v12 != v13 && *v12 == 58)
  {
    *(v5 + 40) = v12 + 1;
    sub_2685C01A0();
    v12 = *(v5 + 40);
  }

  if (v12 == v13 || *v12 != 91)
  {
    sub_2686428B4(a1, a2, a3, a4, a5);
  }

  else
  {
    v14 = v6;
    *(v5 + 40) = v12 + 1;
    sub_2685C01A0();
    v15 = *(v5 + 40);
    if (v15 == *(v5 + 48) || *v15 != 93)
    {
      while (1)
      {
        sub_2686428B4(a1, a2, a3, a4, a5);
        if (v14)
        {
          break;
        }

        v14 = 0;
        v15 = *(v5 + 40);
        v16 = *(v5 + 48);
        if (v15 != v16 && *v15 == 93)
        {
          goto LABEL_8;
        }

        sub_2685C01A0();
        v17 = *(v5 + 40);
        if (v17 == v16 || *v17 != 44)
        {
          sub_2685C1CBC();
          swift_allocError();
          *v18 = 0;
          swift_willThrow();
          return;
        }

        *(v5 + 40) = v17 + 1;
        sub_2685C01A0();
      }
    }

    else
    {
LABEL_8:
      *(v5 + 40) = v15 + 1;
      sub_2685C01A0();
    }
  }
}

uint64_t sub_2686434CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = v4[3];
  if (!v7)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    return sub_2685B2E64(&v34, &qword_28028D400, qword_268690748);
  }

  v30 = a1;
  v11 = v6[4];
  v12 = __swift_project_boxed_opaque_existential_1(v6, v7);
  v40 = v5;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16);
  (*(v11 + 8))(&v34, a2, a3, a4, v7, v11);
  (*(v13 + 8))(v16, v7);
  v17 = v40;
  if (!*(&v35 + 1))
  {
    return sub_2685B2E64(&v34, &qword_28028D400, qword_268690748);
  }

  sub_2685B17CC(&v34, v37);
  v18 = *v30;
  if (*(*v30 + 16) && (v19 = sub_2685B351C(a4), (v20 & 1) != 0))
  {
    sub_2685B1724(*(v18 + 56) + 40 * v19, &v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  sub_2685C2780(&v34, v32);
  v22 = v33;
  result = sub_2685B2E64(v32, &qword_28028C068, &unk_26868A6A0);
  if (!v22)
  {
    v25 = v38;
    v26 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v26 + 32))(v32, v6, &type metadata for TextFormatDecoder, &off_28792DCE0, v25, v26);
    if (!v17)
    {
      sub_268643CEC(v32, &v34);
      goto LABEL_15;
    }

LABEL_18:
    sub_2685B2E64(&v34, &qword_28028C068, &unk_26868A6A0);
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v23 = *(&v35 + 1);
  if (*(&v35 + 1))
  {
    v24 = v36;
    __swift_mutable_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    (*(v24 + 40))(v6, &type metadata for TextFormatDecoder, &off_28792DCE0, v23, v24);
    if (!v17)
    {
LABEL_15:
      sub_2685C2780(&v34, v32);
      v27 = v33;
      sub_2685B2E64(v32, &qword_28028C068, &unk_26868A6A0);
      if (v27)
      {
        sub_2685C2780(&v34, v32);
        sub_2685C2780(v32, v31);
        sub_2685C2E1C(v31, a4);
        sub_2685B2E64(v32, &qword_28028C068, &unk_26868A6A0);
      }

      else
      {
        sub_2685C1CBC();
        swift_allocError();
        *v28 = 10;
        swift_willThrow();
      }

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_268643870()
{
  sub_2685C1CBC();
  swift_allocError();
  *v0 = 9;
  return swift_willThrow();
}

uint64_t sub_2686438C0()
{
  result = sub_26863C318();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_268643AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268643B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268643CEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C068, &unk_26868A6A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t sub_26864404C(float a1)
{
  v2 = a1;
  MEMORY[0x26D61D8F0]();
  if (a1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x26D61D920](*&v3);
}

uint64_t sub_2686440C0(int a1, uint64_t a2)
{
  v4 = a1;
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v5);
  if (a1 < 0)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 45;
    *v2 = v6;
    v4 = -v4;
  }

  sub_268663B88(v4);
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v10;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *v2 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + v13 + 32) = 10;
  *v2 = v10;
  return result;
}

uint64_t sub_26864460C(uint64_t result, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v6) = (8 * a2) | 5;
      }

      else
      {
        v8 = (8 * (a2 & 0x1FFFFFFF)) | 5;
        do
        {
          *v5++ = v8 | 0x80;
          v6 = v8 >> 7;
          v9 = v8 >> 14;
          v8 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v6;
      *(v5 + 1) = v7;
      v5 += 5;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFloatField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 8))(fieldNumber, v6, v5, v10);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268644734(uint64_t result, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v6) = (8 * a2) | 1;
      }

      else
      {
        v8 = (8 * (a2 & 0x1FFFFFFF)) | 1;
        do
        {
          *v5++ = v8 | 0x80;
          v6 = v8 >> 7;
          v9 = v8 >> 14;
          v8 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v6;
      *(v5 + 1) = v7;
      v5 += 9;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedDoubleField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 16))(fieldNumber, v6, v5, v10);
    --v8;
  }

  while (!v4);
}

unint64_t sub_26864485C(unint64_t result, int a2)
{
  v4 = *(result + 16);
  v5 = (result + 32);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    result = sub_2685B9970(v6, a2);
    --v4;
  }

  while (!v2);
  return result;
}

uint64_t sub_2686448A4(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      *v5 = v9;
      v11 = v5 + 1;
      if (v7 < 0x80)
      {
        LOBYTE(v6) = v7;
      }

      else
      {
        do
        {
          *v11++ = v7 | 0x80;
          v6 = v7 >> 7;
          v12 = v7 >> 14;
          v7 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v11 = v6;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 24))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 32))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

unint64_t sub_268644A40(unint64_t result, int a2)
{
  v4 = *(result + 16);
  v5 = (result + 32);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    result = sub_2686265F4(v6, a2);
    --v4;
  }

  while (!v2);
  return result;
}

uint64_t sub_268644A88(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      *v5 = v9;
      v11 = v5 + 1;
      if (v7 < 0x80)
      {
        LOBYTE(v6) = v7;
      }

      else
      {
        do
        {
          *v11++ = v7 | 0x80;
          v6 = v7 >> 7;
          v12 = v7 >> 14;
          v7 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v11 = v6;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedUInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 40))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268644BB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = *(result + 16);
  v9 = (result + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    result = a5(v10, a2);
    --v8;
  }

  while (!v5);
  return result;
}

uint64_t sub_268644C04(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      *v5 = v9;
      v11 = v5 + 1;
      if (v7 < 0x80)
      {
        LOBYTE(v6) = v7;
      }

      else
      {
        do
        {
          *v11++ = v7 | 0x80;
          v6 = v7 >> 7;
          v12 = v7 >> 14;
          v7 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v11 = v6;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedUInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 48))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268644D1C(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 8 * a2;
    v5 = *v2;
    v6 = (result + 32);
    if (((a2 >> 25) & 0xF) != 0)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }

    v8 = 1;
    if (v4 >= 0x80)
    {
      v8 = 2;
    }

    if (v4 < 0x200000)
    {
      v7 = 3;
    }

    if (v4 >= 0x4000)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = *v6++;
      v11 = (2 * v10) ^ (v10 >> 31);
      if (v11 >= 0x80)
      {
        if (v11 >> 14)
        {
          if (v11 >= 0x200000)
          {
            v12 = v11 >> 28 ? 5 : 4;
          }

          else
          {
            v12 = 3;
          }
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 1;
      }

      v13 = v12 + v9;
      v14 = __OFADD__(v5, v13);
      v5 += v13;
      if (v14)
      {
        break;
      }

      if (!--v3)
      {
        *v2 = v5;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268644DC8(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      v11 = (2 * v7) ^ (v7 >> 63);
      *v5 = v9;
      v12 = v5 + 1;
      if (v11 < 0x80)
      {
        LOBYTE(v6) = v11;
      }

      else
      {
        do
        {
          *v12++ = v11 | 0x80;
          v6 = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v12 = v6;
      v5 = v12 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 56))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268644EE8(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 8 * a2;
    v5 = *v2;
    v6 = (result + 32);
    v7 = 4;
    if (((a2 >> 25) & 0xF) != 0)
    {
      v7 = 5;
    }

    v8 = 1;
    if (v4 >= 0x80)
    {
      v8 = 2;
    }

    if (v4 < 0x200000)
    {
      v7 = 3;
    }

    if (v4 >= 0x4000)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = *v6++;
      v11 = (2 * v10) ^ (v10 >> 63);
      if (v11 < 0x80)
      {
        v12 = 1;
        goto LABEL_26;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = 10;
        goto LABEL_26;
      }

      if (v11 >> 35)
      {
        if (v11 >> 49)
        {
          v11 >>= 28;
          v12 = 8;
LABEL_24:
          if (!(v11 >> 28))
          {
            goto LABEL_26;
          }

LABEL_25:
          ++v12;
          goto LABEL_26;
        }

        v12 = 6;
        if (v11 >> 42)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v11 >= 0x200000)
        {
          v12 = 4;
          goto LABEL_24;
        }

        v12 = 2;
        if (v11 >= 0x4000)
        {
          goto LABEL_25;
        }
      }

LABEL_26:
      v13 = __OFADD__(v5, v12 + v9);
      v5 += v12 + v9;
      if (v13)
      {
        __break(1u);
        return result;
      }

      if (!--v3)
      {
        *v2 = v5;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_268644FC8(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      v11 = (2 * v7) ^ (v7 >> 63);
      *v5 = v9;
      v12 = v5 + 1;
      if (v11 < 0x80)
      {
        LOBYTE(v6) = v11;
      }

      else
      {
        do
        {
          *v12++ = v11 | 0x80;
          v6 = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v12 = v6;
      v5 = v12 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 64))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFixed32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 72))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFixed64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 80))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_2686451B0(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *v2;
    v5 = 8 * a2;
    v6 = 8;
    if (((a2 >> 25) & 0xF) != 0)
    {
      v6 = 9;
    }

    v7 = 5;
    if (v5 >= 0x80)
    {
      v7 = 6;
    }

    if (v5 < 0x200000)
    {
      v6 = 7;
    }

    if (v5 >= 0x4000)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      v9 = v4 + v8;
      if (__OFADD__(v4, v8))
      {
        break;
      }

      v4 += v8;
      if (!--v3)
      {
        *v2 = v9;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSFixed32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 88))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268645280(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *v2;
    v5 = 8 * a2;
    v6 = 12;
    if (((a2 >> 25) & 0xF) != 0)
    {
      v6 = 13;
    }

    v7 = 9;
    if (v5 >= 0x80)
    {
      v7 = 10;
    }

    if (v5 < 0x200000)
    {
      v6 = 11;
    }

    if (v5 >= 0x4000)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      v9 = v4 + v8;
      if (__OFADD__(v4, v8))
      {
        break;
      }

      v4 += v8;
      if (!--v3)
      {
        *v2 = v9;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSFixed64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 96))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268645368(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *v2;
    v5 = 8 * a2;
    v6 = 5;
    if (((a2 >> 25) & 0xF) != 0)
    {
      v6 = 6;
    }

    v7 = 2;
    if (v5 >= 0x80)
    {
      v7 = 3;
    }

    if (v5 < 0x200000)
    {
      v6 = 4;
    }

    if (v5 >= 0x4000)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      v9 = v4 + v8;
      if (__OFADD__(v4, v8))
      {
        break;
      }

      v4 += v8;
      if (!--v3)
      {
        *v2 = v9;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2686453C8(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v6) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v6 = v8 >> 7;
          v9 = v8 >> 14;
          v8 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v6;
      v5[1] = v7;
      v5 += 2;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedBoolField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = value._rawValue + 32;
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 104))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedStringField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v4;
  v13 = v2;
  v6 = *(value._rawValue + 2);
  if (v6)
  {
    v7 = v3;
    v9 = *(v3 + 112);
    for (i = (value._rawValue + 40); ; i += 2)
    {
      v11 = *(i - 1);
      v12 = *i;

      v9(v11, v12, fieldNumber, v13, v7);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return;
      }
    }
  }
}

uint64_t sub_268645574(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = 8 * a2;
  v5 = *v2;
  v6 = 4;
  if (((a2 >> 25) & 0xF) != 0)
  {
    v6 = 5;
  }

  v7 = 1;
  if (v4 >= 0x80)
  {
    v7 = 2;
  }

  if (v4 < 0x200000)
  {
    v6 = 3;
  }

  if (v4 >= 0x4000)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  for (i = (result + 40); ; i += 2)
  {
    v10 = *(i - 1);
    v11 = *i;
    v12 = *i >> 62;
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        v10 = 0;
        v13 = 1;
        goto LABEL_38;
      }

      v16 = v10 + 16;
      v14 = *(v10 + 16);
      v15 = *(v16 + 8);
      v17 = __OFSUB__(v15, v14);
      v10 = v15 - v14;
      if (v17)
      {
        goto LABEL_45;
      }

      if (v10 < 0x80)
      {
LABEL_23:
        v13 = 1;
        goto LABEL_38;
      }
    }

    else if (v12)
    {
      v17 = __OFSUB__(HIDWORD(v10), v10);
      LODWORD(v10) = HIDWORD(v10) - v10;
      if (v17)
      {
        goto LABEL_46;
      }

      v10 = v10;
      if (v10 < 0x80)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = BYTE6(v11);
      if (BYTE6(v11) < 0x80uLL)
      {
        goto LABEL_23;
      }
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      v13 = 10;
      goto LABEL_38;
    }

    if (v10 >> 35)
    {
      if (!(v10 >> 49))
      {
        if (!(v10 >> 42))
        {
          v13 = 6;
          goto LABEL_38;
        }

        v13 = 6;
LABEL_37:
        ++v13;
        goto LABEL_38;
      }

      v18 = v10 >> 28;
      v13 = 8;
    }

    else
    {
      if (v10 < 0x200000)
      {
        v13 = 2;
        if (v10 >= 0x4000)
        {
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      v13 = 4;
      v18 = v10;
    }

    if (v18 >> 28)
    {
      goto LABEL_37;
    }

LABEL_38:
    v19 = v13 + v8;
    v17 = __OFADD__(v19, v10);
    v20 = v19 + v10;
    if (v17)
    {
      break;
    }

    v17 = __OFADD__(v5, v20);
    v5 += v20;
    if (v17)
    {
      goto LABEL_44;
    }

    if (!--v3)
    {
      *v2 = v5;
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_2686456C8(uint64_t result, int a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v43 = *(result + 16);
  if (v43)
  {
    v3 = 0;
    v4 = *v2;
    v5 = 8 * (a2 & 0x1FFFFFFF);
    v6 = v5 | 2;
    v7 = result + 32;
    v8 = *(result + 16);
    v45 = v5 | 2;
    v46 = v5;
    v44 = result + 32;
    while (1)
    {
      v11 = (v7 + 16 * v3);
      v13 = *v11;
      v12 = v11[1];
      if (v5 < 0x80)
      {
        LOBYTE(v15) = v6;
      }

      else
      {
        v14 = v6;
        do
        {
          *v4++ = v14 | 0x80;
          v15 = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }

      *v4 = v15;
      v17 = v4 + 1;
      v18 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v18 != 2)
        {
          *v17 = 0;
          goto LABEL_4;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        v22 = __OFSUB__(v20, v21);
        v19 = v20 - v21;
        if (v22)
        {
          goto LABEL_83;
        }

        if (v19 >= 0x80)
        {
          do
          {
LABEL_21:
            *v17++ = v19 | 0x80;
            v23 = v19 >> 7;
            v24 = v19 >> 14;
            v19 >>= 7;
          }

          while (v24);
          goto LABEL_24;
        }
      }

      else if (v18)
      {
        LODWORD(v19) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_84;
        }

        v19 = v19;
        if (v19 >= 0x80)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v19 = BYTE6(v12);
        if (BYTE6(v12) >= 0x80uLL)
        {
          goto LABEL_21;
        }
      }

      LOBYTE(v23) = v19;
LABEL_24:
      *v17 = v23;
      if (v18 <= 1)
      {
        if (v18)
        {
          if (__OFSUB__(HIDWORD(v13), v13))
          {
            goto LABEL_85;
          }

          v9 = HIDWORD(v13) - v13;
          goto LABEL_33;
        }

        v9 = BYTE6(v12);
LABEL_34:
        v10 = v17 + 1;
        if (!v9)
        {
          goto LABEL_5;
        }

        if (v18)
        {
          if (v18 == 2)
          {
            v27 = *(v13 + 16);
          }

          else
          {
            v27 = v13;
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = v27 + v9;
        if (__OFADD__(v27, v9))
        {
          goto LABEL_81;
        }

        v29 = v9;
        if (v28 < v27)
        {
          goto LABEL_82;
        }

        if (v28 == v27)
        {
          goto LABEL_5;
        }

        if (v18 == 2)
        {
          if (v27 < *(v13 + 16))
          {
            goto LABEL_87;
          }

          if (*(v13 + 24) < v28)
          {
            goto LABEL_90;
          }

          sub_2685BA80C(v13, v12);
          v38 = sub_268689764();
          if (v38)
          {
            v39 = sub_268689794();
            if (__OFSUB__(v27, v39))
            {
              goto LABEL_93;
            }

            v38 += v27 - v39;
          }

          if (__OFSUB__(v28, v27))
          {
            goto LABEL_91;
          }

          v40 = sub_268689784();
          if (v38)
          {
            if (v40 >= v9)
            {
              v35 = v9;
            }

            else
            {
              v35 = v40;
            }

            v36 = v10;
            v37 = v38;
LABEL_67:
            memmove(v36, v37, v35);
          }

LABEL_76:
          result = sub_2685B593C(v13, v12);
          v8 = v43;
        }

        else
        {
          if (v18 == 1)
          {
            if (v13 >> 32 < v28 || v27 < v13 || v13 >> 32 < v27 || v28 < v13)
            {
              goto LABEL_88;
            }

            sub_2685BA80C(v13, v12);
            v30 = sub_268689764();
            if (v30)
            {
              v31 = v30;
              v32 = sub_268689794();
              if (__OFSUB__(v27, v32))
              {
                goto LABEL_92;
              }

              v33 = (v27 - v32 + v31);
              v34 = sub_268689784();
              if (v33)
              {
                if (v34 >= v9)
                {
                  v35 = v9;
                }

                else
                {
                  v35 = v34;
                }

                v36 = v10;
                v37 = v33;
                goto LABEL_67;
              }
            }

            else
            {
              sub_268689784();
            }

            goto LABEL_76;
          }

          if (v27 > BYTE6(v12) || v28 > BYTE6(v12))
          {
            goto LABEL_89;
          }

          v47 = v13;
          v48 = v12;
          v49 = BYTE2(v12);
          v50 = BYTE3(v12);
          v51 = BYTE4(v12);
          v52 = BYTE5(v12);
          if (v9 > 13)
          {
            v29 = 14;
          }

          else if (v9 < 1)
          {
            goto LABEL_77;
          }

          result = memmove(v10, &v47 + v27, v29);
        }

LABEL_77:
        v6 = v45;
        v5 = v46;
        v7 = v44;
        goto LABEL_5;
      }

      if (v18 == 2)
      {
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        v9 = v25 - v26;
        if (__OFSUB__(v25, v26))
        {
          goto LABEL_86;
        }

LABEL_33:
        if (v9 < 0)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
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
        }

        goto LABEL_34;
      }

LABEL_4:
      v9 = 0;
      v10 = v17 + 1;
LABEL_5:
      ++v3;
      v4 = &v10[v9];
      if (v3 == v8)
      {
        *v42 = v4;
        break;
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedBytesField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v12 = v2;
  v5 = *(value._rawValue + 2);
  if (v5)
  {
    v6 = v3;
    v7 = *(v3 + 120);
    for (i = (value._rawValue + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      sub_2685BA80C(v9, *i);
      v7(v9, v10, fieldNumber, v12, v6);
      if (v4)
      {
        break;
      }

      sub_2685B593C(v9, v10);
      if (!--v5)
      {
        return;
      }
    }

    sub_2685B593C(v9, v10);
  }
}

uint64_t sub_268645BA8(int a1, uint64_t a2)
{
  v2 = a1;
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v2);
}

uint64_t sub_268645BE4(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v2);
}

uint64_t Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a6;
  v20 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268689B74();
  if (result)
  {
    v17[0] = v11;
    v14 = 0;
    v18 = a5;
    v19 = (v10 + 16);
    v17[1] = a5 + 128;
    while (1)
    {
      v15 = sub_268689B64();
      sub_268689B24();
      if (v15)
      {
        result = (*(v10 + 16))(v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, a4);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v17[0] != 8)
        {
          __break(1u);
          return result;
        }

        v23 = result;
        (*v19)(v12, &v23, a4);
        result = swift_unknownObjectRelease();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_11:
          __break(1u);
          return result;
        }
      }

      (*(v18 + 128))(v12, v20, a4, v22, v21);
      result = (*(v10 + 8))(v12, a4);
      if (!v6)
      {
        result = sub_268689B74();
        ++v14;
        if (v16 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t Visitor.visitRepeatedGroupField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a6;
  v20 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268689B74();
  if (result)
  {
    v17[0] = v11;
    v14 = 0;
    v18 = a5;
    v19 = (v10 + 16);
    v17[1] = a5 + 144;
    while (1)
    {
      v15 = sub_268689B64();
      sub_268689B24();
      if (v15)
      {
        result = (*(v10 + 16))(v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, a4);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v17[0] != 8)
        {
          __break(1u);
          return result;
        }

        v23 = result;
        (*v19)(v12, &v23, a4);
        result = swift_unknownObjectRelease();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_11:
          __break(1u);
          return result;
        }
      }

      (*(v18 + 144))(v12, v20, a4, v22, v21);
      result = (*(v10 + 8))(v12, a4);
      if (!v6)
      {
        result = sub_268689B74();
        ++v14;
        if (v16 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_268646148(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  sub_268663B88(v3);
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + v8 + 32) = 10;
  *v2 = v5;
  return result;
}

uint64_t dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 408))();
}

{
  return (*(a8 + 416))();
}

uint64_t sub_268646D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x26D61D920](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268646D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_268689EC4();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t static Message.jsonString<A>(from:options:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_2686899A4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  v18 = a2[1];
  v26[0] = *a2;
  v26[1] = v18;
  v19 = static Message.jsonUTF8Data<A>(from:options:)(a1, v26, a3, a4, a5, a6);
  if (v6)
  {
    return v17;
  }

  v21 = v19;
  v22 = v20;
  sub_268689994();
  result = sub_268689964();
  if (v24)
  {
    v17 = result;
    sub_2685B593C(v21, v22);
    return v17;
  }

  __break(1u);
  return result;
}

char *static Message.jsonUTF8Data<A>(from:options:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedConformanceWitness = a1;
  v63 = a5;
  v10 = a2;
  v59 = *(a3 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268689C74();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v54 - v18;
  v20 = *(a4 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17, v22);
  v60 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v24 = *(v55 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v25);
  v72 = &v54 - v26;
  v27 = *v10;
  v28 = v10[1];
  v29 = swift_conformsToProtocol2();
  if (a3 && v29)
  {
    (*(v29 + 8))(&v64, a3);
    v69 = v64;
    v70 = v65;
    LOBYTE(v71) = v27;
    HIBYTE(v71) = v28;
    v30 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_2685B3F48((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v30[v32 + 32] = 91;
    *&v68 = v30;
    WORD4(v68) = 256;
    (*(v20 + 16))(v60, AssociatedConformanceWitness, a4);
    sub_268689B14();
    v33 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_268689C94();
    v34 = v59;
    v60 = *(v59 + 48);
    v61 = v59 + 48;
    if ((v60)(v19, 1, a3) == 1)
    {
LABEL_8:
      (*(v55 + 8))(v72, v33);
      *&v68 = v30;
      v36 = *(v30 + 2);
      v35 = *(v30 + 3);
      if (v36 >= v35 >> 1)
      {
        v30 = sub_2685B3F48((v35 > 1), v36 + 1, 1, v30);
      }

      *(v30 + 2) = v36 + 1;
      v30[v36 + 32] = 93;
      *&v68 = v30;
      WORD4(v68) = 44;

      v10 = sub_26866677C(v37);

      v64 = v68;
      v65 = v69;
      v66 = v70;
      v67 = v71;
      sub_268647CF4(&v64);
    }

    else
    {
      v39 = 0;
      v41 = *(v34 + 32);
      v40 = v34 + 32;
      v58 = v41;
      v57 = v63 + 72;
      v59 = v40 - 24;
      v42 = 1;
      while (1)
      {
        v58(v13, v19, a3);
        if (v42)
        {
          v43 = *(v30 + 2);
        }

        else
        {
          v44 = v19;
          v45 = v13;
          v46 = v40;
          *&v68 = v30;
          v48 = *(v30 + 2);
          v47 = *(v30 + 3);
          v43 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v30 = sub_2685B3F48((v47 > 1), v48 + 1, 1, v30);
          }

          *(v30 + 2) = v43;
          v30[v48 + 32] = v39;
          v40 = v46;
          v13 = v45;
          v19 = v44;
          v33 = AssociatedTypeWitness;
        }

        *&v68 = v30;
        v49 = *(v30 + 3);
        if (v43 >= v49 >> 1)
        {
          v30 = sub_2685B3F48((v49 > 1), v43 + 1, 1, v30);
        }

        *(v30 + 2) = v43 + 1;
        v30[v43 + 32] = 123;
        *&v68 = v30;
        WORD4(v68) = 256;
        v10 = v13;
        (*(v63 + 72))(&v68, &type metadata for JSONEncodingVisitor, &off_28792D200, a3);
        if (v6)
        {
          break;
        }

        v30 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v68 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
          *&v68 = v30;
        }

        v52 = *(v30 + 2);
        v51 = *(v30 + 3);
        if (v52 >= v51 >> 1)
        {
          v30 = sub_2685B3F48((v51 > 1), v52 + 1, 1, v30);
          *&v68 = v30;
        }

        (*v59)(v13, a3);
        *(v30 + 2) = v52 + 1;
        v30[v52 + 32] = 125;
        *&v68 = v30;
        v39 = 44;
        WORD4(v68) = 44;
        sub_268689C94();
        v42 = 0;
        if ((v60)(v19, 1, a3) == 1)
        {
          goto LABEL_8;
        }
      }

      (*v59)(v13, a3);
      (*(v55 + 8))(v72, v33);
      v64 = v68;
      v65 = v69;
      v66 = v70;
      v67 = v71;
      sub_268647CF4(&v64);
    }
  }

  else
  {
    sub_2685D104C();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();
  }

  return v10;
}

uint64_t static Message.array(fromJSONString:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2686899A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && (v26 = a4, v17 = *a3, v18 = *(a3 + 8), sub_268689994(), v19 = sub_268689954(), v21 = v20, (*(v11 + 8))(v15, v10), v21 >> 60 != 15))
  {
    v24 = v17;
    v25 = v18;
    v5 = static Message.array(fromJSONUTF8Data:options:)(v19, v21, &v24);
    sub_2685B98FC(v19, v21);
  }

  else
  {
    sub_2685BD910();
    swift_allocError();
    *v22 = xmmword_26868A580;
    swift_willThrow();
  }

  return v5;
}

uint64_t static Message.array(fromJSONUTF8Data:options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  sub_268689BA4();
  result = sub_268689834();
  if (!v3)
  {
    return v7;
  }

  return result;
}

uint64_t sub_268647AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_2686898D4();
  v40[0] = result;
  if (a1)
  {
    v16 = a2 - a1;
    if (v16 >= 1)
    {
      *(&v38 + 1) = 0;
      v39[0] = 0;
      memset(&v39[8], 0, 32);
      *(&v37 + 1) = a3;
      v17 = a4 & 1;
      LOBYTE(v38) = a4 & 1;
      type metadata accessor for DoubleParser();
      v18 = swift_allocObject();
      v19 = swift_slowAlloc();
      *(v18 + 16) = v19;
      *(v18 + 24) = v19 + 128;
      *&v34 = a1;
      *(&v34 + 1) = v16;
      *&v35 = 0;
      *(&v35 + 1) = v18;
      *&v36 = a3;
      *(&v36 + 1) = a3;
      LOBYTE(v37) = v17;
      sub_26865DD80(v40, a5, a6);
      if (v7)
      {

LABEL_5:
        v30 = v38;
        v31 = *v39;
        v32 = *&v39[16];
        v33 = *&v39[32];
        v26 = v34;
        v27 = v35;
        v28 = v36;
        v29 = v37;
        return sub_268647D6C(&v26);
      }

      v20 = v35;
      if (v35 != *(&v34 + 1))
      {
        while (1)
        {
          v21 = *(v34 + v20);
          v22 = v21 > 0x20;
          v23 = (1 << v21) & 0x100002600;
          if (v22 || v23 == 0)
          {
            break;
          }

          if (*(&v34 + 1) == ++v20)
          {
            *&v35 = *(&v34 + 1);
            goto LABEL_13;
          }
        }

        *&v35 = v20;
        if (*(&v34 + 1) != v20)
        {

          sub_2685BD910();
          swift_allocError();
          *v25 = xmmword_268690760;
          swift_willThrow();
          goto LABEL_5;
        }
      }

LABEL_13:
      v30 = v38;
      v31 = *v39;
      v32 = *&v39[16];
      v33 = *&v39[32];
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      sub_268647D6C(&v26);
      result = v40[0];
    }
  }

  *a7 = result;
  return result;
}

uint64_t sub_268647DC0(char a1)
{
  result = a1 & 7;
  if (result > 5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268647DD4(unsigned int a1)
{
  v2 = (~a1 & 6) == 0 || a1 < 8;
  v3 = v2;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  return v4 | (v3 << 32);
}

uint64_t Google_Protobuf_Empty.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Empty.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

double Google_Protobuf_Empty.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  return result;
}

unint64_t sub_268647E94()
{
  type metadata accessor for InternPool();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  qword_28028D408 = v0;
  qword_28028D410 = sub_268688CB0(v1);
  qword_28028D418 = sub_268688E38(v1);
  result = sub_268688E38(v1);
  qword_28028D420 = result;
  return result;
}

uint64_t static Google_Protobuf_Empty._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028D410;
  v2 = qword_28028D418;
  v3 = qword_28028D420;
  *a1 = qword_28028D408;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Empty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    result = v6(a2, a3);
  }

  while (!v3 && (v8 & 1) == 0);
  return result;
}

uint64_t Google_Protobuf_Empty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  sub_2685BA80C(*v3, v9);
  UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
  return sub_2685B593C(v8, v9);
}

uint64_t static Google_Protobuf_Empty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2685BA80C(*a1, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6 & 1;
}

uint64_t Google_Protobuf_Empty.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268689E94();
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return sub_268689EF4();
    }

    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
  }

  else
  {
    if (!v3)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        return sub_268689EF4();
      }

      goto LABEL_9;
    }

    v4 = v1;
    v5 = v1 >> 32;
  }

  if (v4 != v5)
  {
LABEL_9:
    sub_268689844();
  }

  return sub_268689EF4();
}

double sub_2686481A8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  return result;
}

__n128 sub_2686481D4(__n128 *a1)
{
  sub_2685B593C(*v1, *(v1 + 8));
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_268648234@<X0>(void *a1@<X8>)
{
  if (qword_28028BDE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028D410;
  v2 = qword_28028D418;
  v3 = qword_28028D420;
  *a1 = qword_28028D408;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2686482D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268689E94();
  sub_2685DCF24(v4, v1, v2);
  return sub_268689EF4();
}

uint64_t sub_268648324()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268689E94();
  sub_2685DCF24(v4, v1, v2);
  return sub_268689EF4();
}

uint64_t sub_26864836C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2685BA80C(*a1, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6 & 1;
}

unint64_t sub_2686483EC(uint64_t a1)
{
  result = sub_268648414();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268648414()
{
  result = qword_28028D428;
  if (!qword_28028D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D428);
  }

  return result;
}

unint64_t sub_268648468(uint64_t a1)
{
  *(a1 + 8) = sub_268648498();
  result = sub_2686484EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268648498()
{
  result = qword_28028D430;
  if (!qword_28028D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D430);
  }

  return result;
}

unint64_t sub_2686484EC()
{
  result = qword_28028D438;
  if (!qword_28028D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D438);
  }

  return result;
}

unint64_t sub_268648544()
{
  result = qword_28028D440;
  if (!qword_28028D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D440);
  }

  return result;
}

uint64_t Google_Protobuf_Any.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  if (qword_28028BE58 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 16) = qword_28029B270;
}

uint64_t Google_Protobuf_Any.typeURL.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_268648674(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v7 = sub_26866D2A0(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 24);
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
}

uint64_t Google_Protobuf_Any.typeURL.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v8 = sub_26866D2A0(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 24);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

void (*Google_Protobuf_Any.typeURL.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v4 + 72) = *(v5 + 16);
  *(v4 + 80) = v6;

  return sub_268648838;
}

void sub_268648838(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v9 = sub_26866D2A0(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 24);
    *(v9 + 16) = v3;
    *(v9 + 24) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 16);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v15 = sub_26866D2A0(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 24);
    *(v15 + 16) = v3;
    *(v15 + 24) = v5;
  }

  free(v2);
}

uint64_t sub_268648980(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_2685BA80C(*a1, v4);
  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v7 = sub_26866D2A0(v7);
    *(a2 + 16) = v7;
  }

  v9[0] = v3;
  v9[1] = v4;
  v10 = 0;
  swift_beginAccess();
  sub_268643EE8(v9, v7 + 32);
  return swift_endAccess();
}

uint64_t Google_Protobuf_Any.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v7 = sub_26866D2A0(v7);
    *(v2 + 16) = v7;
  }

  v9[0] = a1;
  v9[1] = a2;
  v10 = 0;
  swift_beginAccess();
  sub_268643EE8(v9, v7 + 32);
  return swift_endAccess();
}

void (*Google_Protobuf_Any.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  *(v3 + 72) = sub_26866CF00();
  *(v4 + 80) = v6;
  return sub_268648B50;
}

void sub_268648B50(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    sub_2685BA80C(*(*a1 + 72), v5);
    v6 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = v2[11];
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v8 = sub_26866D2A0(v8);
      *(v9 + 16) = v8;
    }

    *v2 = v3;
    v2[1] = v5;
    *(v2 + 40) = 0;
    swift_beginAccess();
    sub_268643EE8(v2, v8 + 32);
    swift_endAccess();
    sub_2685B593C(v2[9], v2[10]);
  }

  else
  {
    v10 = *(v4 + 16);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v4 + 16);
    if ((v11 & 1) == 0)
    {
      v13 = v2[11];
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v12 = sub_26866D2A0(v12);
      *(v13 + 16) = v12;
    }

    *v2 = v3;
    v2[1] = v5;
    *(v2 + 40) = 0;
    swift_beginAccess();
    sub_268643EE8(v2, v12 + 32);
    swift_endAccess();
  }

  free(v2);
}

uint64_t Google_Protobuf_Any.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Any.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t static Google_Protobuf_Any._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D450;
  v2 = qword_28028D458;
  v3 = unk_28028D460;
  *a1 = qword_28028D448;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Any.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + 16);
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v10 = sub_26866D2A0(v11);
    *(v4 + 16) = v10;
  }

  return sub_268648E5C(v10, a1, a2, a3);
}

uint64_t sub_268648E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    v16 = a4 + 360;
    while ((v10 & 1) == 0)
    {
      if (result == 2)
      {
        v14 = sub_26866CF00();
        v15 = v11;
        (*(a4 + 360))(&v14, a3, a4);
        v12[0] = v14;
        v12[1] = v15;
        v13 = 0;
        swift_beginAccess();
        sub_268643EE8(v12, a1 + 32);
        swift_endAccess();
      }

      else if (result == 1)
      {
        swift_beginAccess();
        (*(a4 + 336))(a1 + 16, a3, a4);
        swift_endAccess();
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Any.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  result = sub_2686490B4(v3[2], a1, a2, a3);
  if (!v4)
  {
    sub_2685BA80C(v9, v8);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v8);
  }

  return result;
}

uint64_t sub_2686490B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26866D99C();
  if (!v4)
  {
    swift_beginAccess();
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = *(a4 + 112);
      v13 = *(a1 + 24);

      v12(v9, v10, 1, a3, a4);
    }

    v14 = sub_26866CF00();
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        return sub_2685B593C(v14, v15);
      }

      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      result = sub_2685B593C(v14, v15);
      if (v19 == v18)
      {
        return result;
      }
    }

    else if (v16)
    {
      v20 = v14;
      result = sub_2685B593C(v14, v15);
      if (v20 == v20 >> 32)
      {
        return result;
      }
    }

    else
    {
      v17 = v15;
      result = sub_2685B593C(v14, v15);
      if ((v17 & 0xFF000000000000) == 0)
      {
        return result;
      }
    }

    v21 = sub_26866CF00();
    v23 = v22;
    (*(a4 + 120))();
    return sub_2685B593C(v21, v23);
  }

  return result;
}

uint64_t Google_Protobuf_Any.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_268689E94();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {

    sub_268689A24();
  }

  return sub_268689EF4();
}

uint64_t sub_2686492DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  if (qword_28028BE58 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 16) = qword_28029B270;
}

uint64_t sub_2686493A4@<X0>(void *a1@<X8>)
{
  if (qword_28028BDE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D450;
  v2 = qword_28028D458;
  v3 = unk_28028D460;
  *a1 = qword_28028D448;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268649454()
{
  v1 = *(v0 + 16);
  sub_268689E94();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {

    sub_268689A24();
  }

  return sub_268689EF4();
}

uint64_t _s20SiriOntologyProtobuf07Google_C4_AnyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v4 != v7 && (sub_26866A280(v7) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v5, v6);
  v8 = sub_2686131DC(v2, v3, v5, v6);
  sub_2685B593C(v5, v6);
  sub_2685B593C(v2, v3);
  return v8 & 1;
}

unint64_t sub_26864957C(uint64_t a1)
{
  result = sub_2686495A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686495A4()
{
  result = qword_28028D468;
  if (!qword_28028D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D468);
  }

  return result;
}

unint64_t sub_2686495F8(uint64_t a1)
{
  *(a1 + 8) = sub_2685CFD4C();
  result = sub_268649628();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268649628()
{
  result = qword_28028D470;
  if (!qword_28028D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D470);
  }

  return result;
}

unint64_t sub_268649680()
{
  result = qword_28028D478;
  if (!qword_28028D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONEncodingOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for JSONEncodingOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_268649914(uint64_t result, int a2)
{
  if ((result & 0x80000000) != 0)
  {
    if (a2)
    {
      return ((result + 1) / a2 - 1);
    }
  }

  else
  {
    if (a2)
    {
      return (result / a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268649940(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    if (a2)
    {
      return (result + 1) / a2 - 1;
    }
  }

  else
  {
    if (a2)
    {
      result /= a2;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26864996C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_2685C4674(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v25;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v11 = v3 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = v4;
    }

    v22 = v3;
    v23 = v11;
    v12 = 15;
    v20 = v10;
    v21 = v5;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v5 = sub_268689A84();
        goto LABEL_5;
      }

      v13 = v12;
      if ((v12 & 0xC) == v10)
      {
        v13 = sub_26866A0F8(v12, v3, a2);
      }

      v14 = v13 >> 16;
      if (v13 >> 16 >= v23)
      {
        goto LABEL_35;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v16 = sub_268689AB4();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v24[0] = v3;
        v24[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(v24 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v15 = sub_268689D24();
        }

        v16 = *(v15 + v14);
      }

      v25 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2685C4674((v17 > 1), v18 + 1, 1);
        v6 = v25;
      }

      *(v6 + 16) = v18 + 1;
      *(v6 + 8 * v18 + 32) = v16;
      v10 = v20;
      if ((v12 & 0xC) == v20)
      {
        v3 = v22;
        v12 = sub_26866A0F8(v12, v22, a2);
        v19 = v21;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_13;
        }
      }

      else
      {
        v3 = v22;
        v19 = v21;
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v23 <= v12 >> 16)
      {
        goto LABEL_36;
      }

      v12 = sub_268689A94();
LABEL_13:
      ++v8;
      if (v4 == v19)
      {
        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268649BC0(unint64_t a1, unint64_t a2)
{
  result = sub_26864996C(a1, a2);
  v4 = *(result + 16);
  if (v4 < 0x14)
  {
    goto LABEL_3;
  }

  v7 = *(result + 32);
  v6 = *(result + 48);
  v5 = result + 32;
  v8 = vdupq_n_s64(0xFFFFFFFFFFFFFFC6);
  v9 = vdupq_n_s64(0xFFFFFFFFFFFFFFF6);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(v9, vaddq_s64(v7, v8)), vcgtq_u64(v9, vaddq_s64(v6, v8))))))
  {
    goto LABEL_3;
  }

  if (*(result + 64) != 45)
  {
    goto LABEL_3;
  }

  v11 = 1000 * v7.i64[0] + 100 * v7.i64[1] + 10 * v6.i64[0] + v6.i64[1];
  if (v11 == 53328)
  {
    goto LABEL_3;
  }

  v12 = *(result + 72);
  if ((v12 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v13 = *(result + 80);
  if ((v13 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (*(result + 88) != 45)
  {
    goto LABEL_3;
  }

  v14 = v13 + 10 * v12;
  if ((v14 - 541) < 0xFFFFFFFFFFFFFFF4)
  {
    goto LABEL_3;
  }

  v15 = *(result + 96);
  if ((v15 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v16 = *(result + 104);
  if ((v16 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (*(result + 112) != 84)
  {
    goto LABEL_3;
  }

  v17 = v16 + 10 * v15;
  if ((v17 - 560) < 0xFFFFFFFFFFFFFFE1)
  {
    goto LABEL_3;
  }

  v18 = *(result + 120);
  if ((v18 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v19 = *(result + 128);
  if ((v19 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (*(result + 136) != 58)
  {
    goto LABEL_3;
  }

  v20 = v19 + 10 * v18 - 528;
  if (v20 > 0x17)
  {
    goto LABEL_3;
  }

  v21 = *(result + 144);
  if ((v21 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v22 = *(result + 152);
  if ((v22 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (*(result + 160) != 58)
  {
    goto LABEL_3;
  }

  v23 = v22 + 10 * v21 - 528;
  if (v23 > 0x3B)
  {
    goto LABEL_3;
  }

  v24 = *(result + 168);
  if ((v24 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v25 = *(result + 176);
  if ((v25 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v26 = v25 + 10 * v24 - 528;
  if (v26 > 0x3D)
  {
    goto LABEL_3;
  }

  v27 = v14 - 528;
  v28 = qword_2879286B8[v14 - 525];
  HIDWORD(v29) = -1030792151 * (v11 + 12208);
  LODWORD(v29) = HIDWORD(v29);
  if ((v29 >> 4) < 0xA3D70B)
  {
    if (v27 < 3)
    {
      goto LABEL_34;
    }
  }

  else if ((v11 & 3) != 0 || !((v11 + 12208) % 0x64u) || v27 <= 2)
  {
    goto LABEL_34;
  }

  v30 = __OFADD__(v28++, 1);
  if (v30)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_34:
  v31 = v17 - 529;
  v30 = __OFADD__(v28, v31);
  v32 = v28 + v31;
  if (v30)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v33 = 365 * (v11 - 53328) - 719527;
  v30 = __OFADD__(v32, v33);
  v34 = v32 + v33;
  if (v30)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v35 = v11 - 53329;
  v30 = __OFADD__(v34, v35 >> 2);
  v36 = v34 + (v35 >> 2);
  if (v30)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v37 = v35 / 0x64u;
  v30 = __OFSUB__(v36, v37);
  v38 = v36 - v37;
  if (v30)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v39 = v35 / 0x190u;
  v30 = __OFADD__(v38, v39);
  v40 = v38 + v39;
  if (v30)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v41 = 86400 * v40;
  if ((v40 * 86400) >> 64 != (86400 * v40) >> 63)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v42 = v26 + 60 * (v23 + 60 * v20);
  v2 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (*(result + 184) == 46)
  {
    if (v4 == 20)
    {
      v43 = 20;
      goto LABEL_45;
    }

    v54 = 0;
    v55 = (result + 192);
    v43 = 20;
    v56 = 100000000;
    while (v4 != v43)
    {
      if ((*v55 - 58) < 0xFFFFFFFFFFFFFFF6)
      {
        goto LABEL_45;
      }

      v57 = (*v55 - 48) * v56;
      if (v57 < 0xFFFFFFFF80000000)
      {
        goto LABEL_83;
      }

      if (v57 > 0x7FFFFFFF)
      {
        goto LABEL_84;
      }

      v30 = __OFADD__(v54, v57);
      v54 += v57;
      if (v30)
      {
        goto LABEL_85;
      }

      v56 /= 10;
      ++v43;
      ++v55;
      if (v4 == v43)
      {
        v43 = *(result + 16);
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v43 = 19;
LABEL_45:
  if (v43 >= v4)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v44 = (v5 + 8 * v43);
  v45 = *v44;
  if (*v44 != 45 && v45 != 43)
  {
LABEL_66:

    if (v45 != 90)
    {
      goto LABEL_4;
    }

    v45 = v43 + 1;
    if (!__OFADD__(v43, 1))
    {
      goto LABEL_68;
    }

    goto LABEL_98;
  }

  v59 = *v44;
  v45 = v43 + 6;
  if (__OFADD__(v43, 6))
  {
    goto LABEL_94;
  }

  if (v4 < v45)
  {
    goto LABEL_3;
  }

  if (v43 + 1 >= v4)
  {
    goto LABEL_96;
  }

  if (v43 + 2 >= v4)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v46 = *(v5 + 8 * (v43 + 1));
  if ((v46 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v47 = *(v5 + 8 * (v43 + 2));
  if ((v47 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (v43 + 4 >= v4)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v43 + 5 >= v4)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v48 = *(v5 + 8 * (v43 + 4));
  if ((v48 - 58) < 0xFFFFFFFFFFFFFFF6 || (v49 = *(v5 + 8 * (v43 + 5)), (v49 - 58) < 0xFFFFFFFFFFFFFFF6) || (v50 = v47 + 10 * v46 - 528, v50 > 0xD) || (v43 = v49 + 10 * v48 - 528, v43 > 0x3B))
  {
LABEL_3:

    goto LABEL_4;
  }

  v51 = v44[3];

  if (v51 != 58)
  {
    goto LABEL_4;
  }

  v52 = 3600 * v50;
  if (v59 == 43)
  {
    v30 = __OFSUB__(v2, v52);
    v53 = v2 - v52;
    if (v30)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v2 = v53 - 60 * v43;
    if (!__OFSUB__(v53, 60 * v43))
    {
LABEL_80:
      if (v2 - 0x3AFFF44180 >= 0xFFFFFFB68879C780)
      {
LABEL_68:
        if (v45 == v4)
        {
          return v2;
        }
      }

LABEL_4:
      sub_2685BD910();
      swift_allocError();
      *v10 = xmmword_268690B50;
      swift_willThrow();
      return v2;
    }

    __break(1u);
    goto LABEL_66;
  }

  v30 = __OFADD__(v2, v52);
  v58 = v2 + v52;
  if (v30)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v2 = v58 + 60 * v43;
  if (!__OFADD__(v58, 60 * v43))
  {
    goto LABEL_80;
  }

LABEL_103:
  __break(1u);
  return result;
}