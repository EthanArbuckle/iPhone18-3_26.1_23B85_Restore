uint64_t sub_2685DBA60(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v6 = v4;
  result = MEMORY[0x26D61D8F0](a2);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = v3[3];
    v30 = v3[2];
    v31 = v10;
    v32 = *(v3 + 8);
    v11 = v3[1];
    v28 = *v3;
    v29 = v11;
    v12 = v9 - 1;
    for (i = (a1 + 48); ; i += 3)
    {
      v14 = *(i - 2);
      v15 = *(i - 1);
      v16 = *i;
      v25 = v30;
      v26 = v31;
      v27 = v32;
      v23 = v28;
      v24 = v29;
      sub_2685BA80C(v14, v15);

      a3(v17, &v23);
      if (v6)
      {
        MEMORY[0x26D61DC90](v6);
        v6 = 0;
        goto LABEL_5;
      }

      v18 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        break;
      }

      if (v18)
      {
        v19 = v14;
        v20 = v14 >> 32;
        goto LABEL_14;
      }

      if ((v15 & 0xFF000000000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_5:
      sub_2685B593C(v14, v15);

      if (!v12)
      {
        v21 = v26;
        v3[2] = v25;
        v3[3] = v21;
        *(v3 + 8) = v27;
        v22 = v24;
        *v3 = v23;
        v3[1] = v22;
        return result;
      }

      v30 = v25;
      v31 = v26;
      v32 = v27;
      v28 = v23;
      v29 = v24;
      --v12;
    }

    if (v18 != 2)
    {
      goto LABEL_5;
    }

    v19 = *(v14 + 16);
    v20 = *(v14 + 24);
LABEL_14:
    if (v19 == v20)
    {
      goto LABEL_5;
    }

LABEL_15:
    sub_268689844();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2685DBBD8(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D61D8F0](a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v18 = v2[2];
    v19 = v2[3];
    v20 = *(v2 + 8);
    v16 = *v2;
    v17 = v2[1];
    v6 = v5 - 1;
    for (i = (a1 + 60); ; i += 32)
    {
      v8 = *(i - 28);
      v9 = *(i - 20);
      v10 = *(i - 3);
      v11 = *(i - 1);
      v12 = *i;
      if ((*(i - 8) & 1) == 0)
      {
        MEMORY[0x26D61D8F0](1);
        result = MEMORY[0x26D61D920](v10);
      }

      if ((v12 & 1) == 0)
      {
        MEMORY[0x26D61D8F0](2);
        result = MEMORY[0x26D61D920](v11);
      }

      v13 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        break;
      }

      if (v13)
      {
        v14 = v8;
        v15 = v8 >> 32;
        goto LABEL_14;
      }

      if ((v9 & 0xFF000000000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (!v6)
      {
        v2[2] = v18;
        v2[3] = v19;
        *(v2 + 8) = v20;
        *v2 = v16;
        v2[1] = v17;
        return result;
      }

      --v6;
    }

    if (v13 != 2)
    {
      goto LABEL_16;
    }

    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
LABEL_14:
    if (v14 == v15)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_2685BA80C(v8, v9);
    sub_268689844();
    result = sub_2685B593C(v8, v9);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_2685DBD70(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D61D8F0](a2);
  v19 = *(a1 + 16);
  if (v19)
  {
    v5 = 0;
    v25 = v2[2];
    v26 = v2[3];
    v27 = *(v2 + 8);
    v23 = *v2;
    v24 = v2[1];
    v18 = a1 + 32;
    while (1)
    {
      v6 = (v18 + 56 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = v6[4];
      v20 = *(v6 + 10);
      v11 = *(v6 + 44);
      v21 = *(v6 + 12);
      v22 = v6[3];
      v28 = *(v6 + 52);
      v12 = *(*v6 + 16);
      if (v12)
      {
        MEMORY[0x26D61D8F0](1);
        MEMORY[0x26D61D8F0](*(v8 + 16));
        v13 = (v8 + 32);
        do
        {
          v14 = *v13++;
          sub_268689EC4();
          --v12;
        }

        while (v12);
      }

      if (v10)
      {
        break;
      }

      sub_2685BA80C(v7, v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      if ((v28 & 1) == 0)
      {
        MEMORY[0x26D61D8F0](4);
        MEMORY[0x26D61D920](v21);
      }

      v15 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v15 != 2)
        {
          goto LABEL_22;
        }

        v16 = *(v7 + 16);
        v17 = *(v7 + 24);
      }

      else
      {
        if (!v15)
        {
          if ((v9 & 0xFF000000000000) == 0)
          {
            goto LABEL_22;
          }

LABEL_21:
          sub_268689844();
          goto LABEL_22;
        }

        v16 = v7;
        v17 = v7 >> 32;
      }

      if (v16 != v17)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v5;

      sub_2685B593C(v7, v9);

      if (v5 == v19)
      {
        v2[2] = v25;
        v2[3] = v26;
        *(v2 + 8) = v27;
        *v2 = v23;
        v2[1] = v24;
        return result;
      }
    }

    MEMORY[0x26D61D8F0](2);

    sub_2685BA80C(v7, v9);

    sub_268689A24();
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_8:
    MEMORY[0x26D61D8F0](3);
    MEMORY[0x26D61D920](v20);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2685DBFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v33 + 2) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_2685C4674((v19 > 1), v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 2) = v22;
      v33 = v21;
      *&v21[8 * v20 + 32] = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_2685C3CDC(v35);
  v12 = v5;
  if (v5)
  {
    goto LABEL_28;
  }

  v23 = v35[0];
  v24 = *(v35[0] + 2);
  if (!v24)
  {
LABEL_23:
  }

  v25 = 0;
  while (v25 < *(v23 + 2))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_2685B351C(*&v23[8 * v25 + 32]);
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, v29, v28);
    ++v25;
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (v24 == v25)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v12);

  __break(1u);
  return result;
}

uint64_t sub_2685DC2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v7 = v6;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(*(a4 + 48) + ((v16 << 9) | (8 * v19)));
    if (v20 >= a2 && v20 < a3)
    {
      v35[0] = v17;
      v32 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v17 + 2) + 1, 1);
        v17 = v35[0];
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_2685C4674((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v17 = v35[0];
      }

      *(v17 + 2) = v23;
      *&v17[8 * v22 + 32] = v20;
      a3 = v32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  v35[0] = v17;

  sub_2685C3CDC(v35);
  v15 = v7;
  if (v7)
  {
    goto LABEL_28;
  }

  v24 = v35[0];
  v25 = *(v35[0] + 2);
  if (!v25)
  {
LABEL_23:
  }

  v26 = 0;
  while (v26 < *(v24 + 2))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v27 = sub_2685B351C(*&v24[8 * v26 + 32]);
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(*(a4 + 56) + 40 * v27, v35);
    v30 = v36;
    v29 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v29 + 48))(a1, a5, v38, v30, v29);
    ++v26;
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (v25 == v26)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v15);

  __break(1u);
  return result;
}

uint64_t sub_2685DC564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(*(a4 + 48) + ((v12 << 9) | (8 * v15)));
    if (v16 >= a2 && v16 < a3)
    {
      v31[0] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v13 + 2) + 1, 1);
        v13 = v31[0];
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v28 = *(v13 + 2);
        v29 = v18 + 1;
        sub_2685C4674((v17 > 1), v18 + 1, 1);
        v18 = v28;
        v19 = v29;
        v13 = v31[0];
      }

      *(v13 + 2) = v19;
      *&v13[8 * v18 + 32] = v16;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  v31[0] = v13;

  sub_2685C3CDC(v31);
  v10 = v30;
  if (v30)
  {
    goto LABEL_28;
  }

  v20 = v31[0];
  v21 = *(v31[0] + 2);
  if (!v21)
  {
  }

  v22 = 0;
  while (v22 < *(v20 + 2))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v23 = sub_2685B351C(*&v20[8 * v22 + 32]);
    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(*(a4 + 56) + 40 * v23, v31);
    v25 = v32;
    v26 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v26 + 48))(v34, &type metadata for HashVisitor, &off_287928AE0, v25, v26);
    ++v22;
    __swift_destroy_boxed_opaque_existential_1(v31);
    if (v21 == v22)
    {
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v10);

  __break(1u);
  return result;
}

uint64_t sub_2685DC83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v7 = v6;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(*(a4 + 48) + ((v16 << 9) | (8 * v19)));
    if (v20 >= a2 && v20 < a3)
    {
      v35[0] = v17;
      v32 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v17 + 2) + 1, 1);
        v17 = v35[0];
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_2685C4674((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v17 = v35[0];
      }

      *(v17 + 2) = v23;
      *&v17[8 * v22 + 32] = v20;
      a3 = v32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  v35[0] = v17;

  sub_2685C3CDC(v35);
  v15 = v7;
  if (v7)
  {
    goto LABEL_28;
  }

  v24 = v35[0];
  v25 = *(v35[0] + 2);
  if (!v25)
  {
  }

  v26 = 0;
  while (v26 < *(v24 + 2))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v27 = sub_2685B351C(*&v24[8 * v26 + 32]);
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(*(a4 + 56) + 40 * v27, v35);
    v29 = v36;
    v30 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v30 + 48))(a1, a5, v38, v29, v30);
    ++v26;
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (v25 == v26)
    {
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v15);

  __break(1u);
  return result;
}

__n128 sub_2685DCAD0(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  v5 = a1[3];
  v50 = a1[2];
  v51 = v5;
  v52 = *(a1 + 8);
  v6 = a1[1];
  v48 = *a1;
  v49 = v6;
  v7 = *(a2 + 16);
  if (v7)
  {
    v30 = a3;
    v31 = a4;
    MEMORY[0x26D61D8F0](1);
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v43 = v48;
    v44 = v49;
    v9 = v7 - 1;
    for (i = (a2 + 48); ; i += 3)
    {
      v11 = *(i - 2);
      v12 = *(i - 1);
      v13 = *i;
      v40 = v45;
      v41 = v46;
      v42 = v47;
      v38 = v43;
      v39 = v44;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
      if ((~v16 & 0x3000000000000000) == 0 && v17 == 255)
      {
        goto LABEL_21;
      }

      v18 = (v16 >> 60) & 3 | (4 * (v17 & 1));
      if (v18 > 2)
      {
        break;
      }

      if (!v18)
      {
        MEMORY[0x26D61D8F0](1);
        if (v15)
        {
          v20 = 0;
        }

        else
        {
          v20 = v14;
        }

        MEMORY[0x26D61D8F0](v20);
        goto LABEL_21;
      }

      if (v18 != 1)
      {
        MEMORY[0x26D61D8F0](3);
        sub_2685BA80C(v11, v12);

        sub_2685D10A0(v14, v15, v16, v17);
        sub_268689A24();
LABEL_24:
        sub_2685D1170(v14, v15, v16, v17);
        goto LABEL_37;
      }

      MEMORY[0x26D61D8F0](2);
      if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = 0;
      }

      MEMORY[0x26D61D920](v19);
      sub_2685BA80C(v11, v12);

LABEL_37:
      v24 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v24 == 2 && *(v11 + 16) != *(v11 + 24))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v24)
        {
          if (v11 == v11 >> 32)
          {
            goto LABEL_46;
          }

LABEL_45:
          sub_268689844();
          goto LABEL_46;
        }

        if ((v12 & 0xFF000000000000) != 0)
        {
          goto LABEL_45;
        }
      }

LABEL_46:
      sub_2685B593C(v11, v12);

      if (!v9)
      {
        v50 = v40;
        v51 = v41;
        v52 = v42;
        v48 = v38;
        v49 = v39;
        a4 = v31;
        v4 = a1;
        a3 = v30;
        goto LABEL_49;
      }

      v45 = v40;
      v46 = v41;
      v47 = v42;
      v43 = v38;
      v44 = v39;
      --v9;
    }

    if (v18 == 3)
    {
      MEMORY[0x26D61D8F0](4);
      sub_268689EB4();
LABEL_21:
      sub_2685BA80C(v11, v12);

      goto LABEL_37;
    }

    if (v18 == 4)
    {
      MEMORY[0x26D61D8F0](5);
      v35 = v40;
      v36 = v41;
      v37 = v42;
      v33 = v38;
      v34 = v39;
      if (*(v14 + 16))
      {
        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v11, v12);

        sub_2685D10A0(v14, v15, v16, v17);
        sub_268612CF4(&v33, v14);
      }

      else
      {
        sub_2685BA80C(v11, v12);

        sub_2685D10A0(v14, v15, v16, v17);
      }

      v21 = v16 >> 62;
      if ((v16 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_36;
        }

        v22 = *(v15 + 16);
        v23 = *(v15 + 24);
      }

      else
      {
        if (!v21)
        {
          if ((v16 & 0xFF000000000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_35:
          sub_268689844();
LABEL_36:
          sub_2685D1170(v14, v15, v16, v17);
          v40 = v35;
          v41 = v36;
          v42 = v37;
          v38 = v33;
          v39 = v34;
          goto LABEL_37;
        }

        v22 = v15;
        v23 = v15 >> 32;
      }

      if (v22 != v23)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    MEMORY[0x26D61D8F0](6);
    sub_2685BA80C(v11, v12);

    sub_2685D10A0(v14, v15, v16, v17);
    sub_2685DCAD0(&v38, v14, v15, v16 & 0xCFFFFFFFFFFFFFFFLL);
    goto LABEL_24;
  }

LABEL_49:
  v25 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_58;
    }

    v26 = *(a3 + 16);
    v27 = *(a3 + 24);
  }

  else
  {
    if (!v25)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v26 = a3;
    v27 = a3 >> 32;
  }

  if (v26 != v27)
  {
LABEL_57:
    sub_268689844();
  }

LABEL_58:
  v28 = v51;
  v4[2] = v50;
  v4[3] = v28;
  *(v4 + 8) = v52;
  result = v49;
  *v4 = v48;
  v4[1] = result;
  return result;
}

__n128 sub_2685DCF24(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(a1 + 8);
  v8 = *a1;
  v9 = a1[1];
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = a2;
    v6 = a2 >> 32;
  }

  if (v5 != v6)
  {
LABEL_9:
    sub_268689844();
  }

LABEL_10:
  a1[2] = v10;
  a1[3] = v11;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  a1[1] = v9;
  return result;
}

__n128 sub_2685DCFC0(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a1;
  v8 = a1[3];
  v70 = a1[2];
  v71 = v8;
  v72 = *(a1 + 8);
  v9 = a1[1];
  v68 = *a1;
  v69 = v9;
  v42 = *(a2 + 16);
  if (v42)
  {
    v37 = a5;
    MEMORY[0x26D61D8F0](999);
    v11 = 0;
    v65 = v70;
    v66 = v71;
    v67 = v72;
    v63 = v68;
    v64 = v69;
    v41 = a2 + 32;
    while (1)
    {
      v56 = v11;
      v12 = (v41 + 120 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = v12[4];
      v53 = *(v12 + 48);
      v48 = v12[5];
      v49 = v12[7];
      v50 = v12[9];
      v51 = v12[3];
      v54 = *(v12 + 64);
      v55 = *(v12 + 80);
      v17 = v12[11];
      v18 = v12[12];
      v19 = v12[14];
      v52 = v12[13];
      v62 = v67;
      v60 = v65;
      v61 = v66;
      v58 = v63;
      v59 = v64;
      v20 = *(*v12 + 16);
      v57 = v18;
      if (v20)
      {
        MEMORY[0x26D61D8F0](2);

        v47 = v13;
        v45 = v15;
        sub_2685BA80C(v13, v15);
        v46 = v16;

        v44 = v17;
        sub_268614834(v17, v18);
        v43 = v19;

        v21 = v20 - 1;
        v22 = (v14 + 64);
        v23 = v56;
        while (1)
        {
          v24 = *(v22 - 4);
          v25 = *(v22 - 3);
          v26 = *(v22 - 2);
          v27 = *v22;
          if (*(v22 - 1))
          {
            break;
          }

          sub_2685BA80C(v24, v25);
          if (v27 != 2)
          {
            goto LABEL_7;
          }

LABEL_8:
          v28 = v25 >> 62;
          if ((v25 >> 62) > 1)
          {
            if (v28 == 2 && *(v24 + 16) != *(v24 + 24))
            {
              goto LABEL_18;
            }
          }

          else
          {
            if (v28)
            {
              if (v24 == v24 >> 32)
              {
                goto LABEL_19;
              }

LABEL_18:
              sub_268689844();
              goto LABEL_19;
            }

            if ((v25 & 0xFF000000000000) != 0)
            {
              goto LABEL_18;
            }
          }

LABEL_19:
          sub_2685B593C(v24, v25);

          if (!v21)
          {
            v60 = v65;
            v61 = v66;
            v62 = v67;
            v58 = v63;
            v59 = v64;
            v13 = v47;
            v15 = v45;
            v29 = v43;
            v17 = v44;
            if (v46)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          v22 += 40;
          --v21;
        }

        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v24, v25);

        sub_268689A24();
        if (v27 == 2)
        {
          goto LABEL_8;
        }

LABEL_7:
        MEMORY[0x26D61D8F0](2);
        sub_268689EB4();
        goto LABEL_8;
      }

      sub_2685BA80C(v13, v15);

      sub_268614834(v17, v18);

      v29 = v19;
      v23 = v56;
      if (v16)
      {
LABEL_22:
        MEMORY[0x26D61D8F0](3);
        sub_268689A24();
      }

LABEL_23:
      if (v53)
      {
        if ((v54 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        MEMORY[0x26D61D8F0](4);
        MEMORY[0x26D61D920](v48);
        if ((v54 & 1) == 0)
        {
LABEL_39:
          MEMORY[0x26D61D8F0](5);
          MEMORY[0x26D61D920](v49);
          if (v55)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }
      }

      if (v55)
      {
        goto LABEL_30;
      }

LABEL_26:
      MEMORY[0x26D61D8F0](6);
      if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v30 = v50;
      }

      else
      {
        v30 = 0;
      }

      MEMORY[0x26D61D920](v30);
LABEL_30:
      if (v57 >> 60 != 15)
      {
        MEMORY[0x26D61D8F0](7);
        sub_2685BA80C(v17, v57);
        sub_268689844();
        sub_2685B98FC(v17, v57);
      }

      if (v29)
      {
        MEMORY[0x26D61D8F0](8);
        sub_268689A24();
      }

      v31 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v31 == 2 && *(v13 + 16) != *(v13 + 24))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v31)
        {
          if (v13 == v13 >> 32)
          {
            goto LABEL_48;
          }

LABEL_47:
          sub_268689844();
          goto LABEL_48;
        }

        if ((v15 & 0xFF000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

LABEL_48:
      v11 = v23 + 1;

      sub_2685B593C(v13, v15);

      sub_2685B98FC(v17, v57);

      if (v11 == v42)
      {
        v70 = v60;
        v71 = v61;
        v72 = v62;
        v68 = v58;
        v69 = v59;
        v5 = a4;
        v7 = a1;
        a5 = v37;
        v6 = a3;
        break;
      }

      v65 = v60;
      v66 = v61;
      v67 = v62;
      v63 = v58;
      v64 = v59;
    }
  }

  sub_2685DC564(&v68, 1000, 0x20000000, a5);
  v34 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_52;
    }

    v35 = *(v6 + 16);
    v36 = *(v6 + 24);
  }

  else
  {
    if (!v34)
    {
      if ((v5 & 0xFF000000000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_61;
    }

    v35 = v6;
    v36 = v6 >> 32;
  }

  if (v35 != v36)
  {
LABEL_61:
    sub_268689844();
  }

LABEL_52:
  v32 = v71;
  v7[2] = v70;
  v7[3] = v32;
  *(v7 + 8) = v72;
  result = v69;
  *v7 = v68;
  v7[1] = result;
  return result;
}

__n128 sub_2685DD548(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1[3];
  v55 = a1[2];
  v56 = v5;
  v57 = *(a1 + 8);
  v6 = a1[1];
  v53 = *a1;
  v54 = v6;
  v7 = *(a2 + 16);
  if (v7)
  {
    v35 = a3;
    v36 = a4;
    MEMORY[0x26D61D8F0](1);
    v9 = 0;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v48 = v53;
    v49 = v54;
    v10 = a2 + 32;
    while (1)
    {
      v11 = (v10 + 72 * v9);
      v47 = *(v11 + 8);
      v12 = v11[3];
      v45 = v11[2];
      v46 = v12;
      v13 = v11[1];
      v43 = *v11;
      v44 = v13;
      v14 = v43;
      v42 = v52;
      v40 = v50;
      v41 = v51;
      v38 = v48;
      v39 = v49;
      v15 = *(v43 + 16);
      if (v15)
      {
        MEMORY[0x26D61D8F0](1);
        MEMORY[0x26D61D8F0](v15);
        v16 = (v14 + 32);
        do
        {
          v17 = *v16++;
          sub_268689EC4();
          --v15;
        }

        while (v15);
      }

      v18 = *(&v43 + 1);
      v19 = *(*(&v43 + 1) + 16);
      if (v19)
      {
        MEMORY[0x26D61D8F0](2);
        MEMORY[0x26D61D8F0](v19);
        v20 = (v18 + 32);
        do
        {
          v21 = *v20++;
          sub_268689EC4();
          --v19;
        }

        while (v19);
      }

      if (v46)
      {
        break;
      }

      sub_268618FD8(&v43, v37);
      if (v47)
      {
        goto LABEL_11;
      }

LABEL_12:
      v22 = v44;
      v23 = *(v44 + 16);
      if (v23)
      {
        MEMORY[0x26D61D8F0](6);
        MEMORY[0x26D61D8F0](v23);
        v24 = (v22 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;

          sub_268689A24();

          v24 += 2;
          --v23;
        }

        while (v23);
      }

      v27 = v45 >> 62;
      if ((v45 >> 62) > 1)
      {
        if (v27 != 2)
        {
          goto LABEL_26;
        }

        v28 = *(*(&v44 + 1) + 16);
        v29 = *(*(&v44 + 1) + 24);
LABEL_24:
        if (v28 == v29)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_268689844();
        goto LABEL_26;
      }

      if (v27)
      {
        v28 = SDWORD2(v44);
        v29 = *(&v44 + 1) >> 32;
        goto LABEL_24;
      }

      if ((v45 & 0xFF000000000000) != 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      ++v9;
      sub_268619010(&v43);
      if (v9 == v7)
      {
        v55 = v40;
        v56 = v41;
        v57 = v42;
        v53 = v38;
        v54 = v39;
        a3 = v35;
        a4 = v36;
        goto LABEL_29;
      }

      v50 = v40;
      v51 = v41;
      v52 = v42;
      v48 = v38;
      v49 = v39;
    }

    MEMORY[0x26D61D8F0](3);
    sub_268618FD8(&v43, v37);
    sub_268689A24();
    if (!v47)
    {
      goto LABEL_12;
    }

LABEL_11:
    MEMORY[0x26D61D8F0](4);
    sub_268689A24();
    goto LABEL_12;
  }

LABEL_29:
  v30 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_38;
    }

    v31 = *(a3 + 16);
    v32 = *(a3 + 24);
  }

  else
  {
    if (!v30)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v31 = a3;
    v32 = a3 >> 32;
  }

  if (v31 != v32)
  {
LABEL_37:
    sub_268689844();
  }

LABEL_38:
  v33 = v56;
  a1[2] = v55;
  a1[3] = v33;
  *(a1 + 8) = v57;
  result = v54;
  *a1 = v53;
  a1[1] = result;
  return result;
}

__n128 sub_2685DD85C(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 8);
  v11 = *a1;
  v12 = a1[1];
  if (*(a2 + 16))
  {
    sub_2685DBD70(a2, 1);
  }

  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_12;
    }

    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v8 = a3;
    v9 = a3 >> 32;
  }

  if (v8 != v9)
  {
LABEL_11:
    sub_268689844();
  }

LABEL_12:
  a1[2] = v13;
  a1[3] = v14;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = v12;
  return result;
}

__n128 sub_2685DD944(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[3];
  v35 = a1[2];
  v36 = v7;
  v37 = *(a1 + 8);
  v8 = a1[1];
  v33 = *a1;
  v34 = v8;
  v9 = *(a2 + 16);
  if (v9)
  {
    MEMORY[0x26D61D8F0](1);
    v31 = v36;
    v32 = v37;
    v29 = v34;
    v30 = v35;
    v28 = v33;
    v11 = v9 - 1;
    for (i = (a2 + 48); ; i += 3)
    {
      v13 = *(i - 2);
      v14 = *(i - 1);
      v15 = *i;
      v25 = v30;
      v26 = v31;
      v27 = v32;
      v23 = v28;
      v24 = v29;
      sub_2685BA80C(v13, v14);

      sub_2685F25F4(v16, &v23);
      v17 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v17 == 2 && *(v13 + 16) != *(v13 + 24))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v17)
        {
          if (v13 == v13 >> 32)
          {
            goto LABEL_4;
          }

LABEL_14:
          sub_268689844();
          goto LABEL_4;
        }

        if ((v14 & 0xFF000000000000) != 0)
        {
          goto LABEL_14;
        }
      }

LABEL_4:
      sub_2685B593C(v13, v14);

      if (!v11)
      {
        v35 = v25;
        v36 = v26;
        v37 = v27;
        v33 = v23;
        v34 = v24;
        break;
      }

      v31 = v26;
      v32 = v27;
      v29 = v24;
      v30 = v25;
      v28 = v23;
      --v11;
    }
  }

  v18 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_25;
    }

    v19 = *(a3 + 16);
    v20 = *(a3 + 24);
  }

  else
  {
    if (!v18)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v19 = a3;
    v20 = a3 >> 32;
  }

  if (v19 != v20)
  {
LABEL_24:
    sub_268689844();
  }

LABEL_25:
  v21 = v36;
  a1[2] = v35;
  a1[3] = v21;
  *(a1 + 8) = v37;
  result = v34;
  *a1 = v33;
  a1[1] = result;
  return result;
}

__n128 sub_2685DDB54(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((a5 & 0xFF000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = a4;
    v11 = a4 >> 32;
  }

  if (v10 != v11)
  {
LABEL_13:
    sub_268689844();
  }

LABEL_14:
  a1[2] = v15;
  a1[3] = v16;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = v14;
  return result;
}

void (*Google_Protobuf_FileDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685DDD8C;
}

uint64_t sub_2685DDDF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F1768(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = v7[5];
  v7[4] = v4;
  v7[5] = v3;
}

uint64_t Google_Protobuf_FileDescriptorProto.package.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F1768(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = v8[5];
  v8[4] = a1;
  v8[5] = a2;
}

void (*Google_Protobuf_FileDescriptorProto.package.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 40))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685DDFCC;
}

void sub_2685DDFCC(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F1768(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = v9[5];
    v9[4] = v3;
    v9[5] = v5;

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
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F1768(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = v15[5];
    v15[4] = v3;
    v15[5] = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileDescriptorProto.hasPackage.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearPackage()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F1768(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = v3[5];
  v3[4] = 0;
  v3[5] = 0;
}

void (*Google_Protobuf_FileDescriptorProto.dependency.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 48);

  return sub_2685DE288;
}

void (*Google_Protobuf_FileDescriptorProto.publicDependency.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 56);

  return sub_2685DE380;
}

void (*Google_Protobuf_FileDescriptorProto.weakDependency.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 64);

  return sub_2685DE478;
}

void (*Google_Protobuf_FileDescriptorProto.messageType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 72);

  return sub_2685DE570;
}

void (*Google_Protobuf_FileDescriptorProto.enumType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 80);

  return sub_2685DE668;
}

void (*Google_Protobuf_FileDescriptorProto.service.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 88);

  return sub_2685DE760;
}

uint64_t Google_Protobuf_FileDescriptorProto.extension.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 96);
}

uint64_t sub_2685DE7D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F1768(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = v6[12];
  v6[12] = v3;
}

uint64_t Google_Protobuf_FileDescriptorProto.extension.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F1768(v6);
    *(v2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = v6[12];
  v6[12] = a1;
}

void (*Google_Protobuf_FileDescriptorProto.extension.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 96);

  return sub_2685DE994;
}

void sub_2685DE994(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(*a1 + 72);

    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F1768(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = v9[12];
    v9[12] = v3;

    v12 = *v4;
  }

  else
  {
    v13 = *(v5 + 16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 16);
    if ((v14 & 1) == 0)
    {
      v16 = v2[10];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F1768(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = v15[12];
    v15[12] = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_FileDescriptorProto.options.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[13];
  v5 = v3[14];
  v6 = v3[15];
  v7 = v3[16];
  if (v6)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  else
  {
    *a1 = xmmword_26868A5E0;
    a1[2] = MEMORY[0x277D84F98];
    if (qword_28028BD08 != -1)
    {
      swift_once();
    }

    a1[3] = qword_28028C660;
  }

  return sub_268601AE8(v4, v5, v6);
}

uint64_t sub_2685DEB8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[13];
  v5 = v3[14];
  v6 = v3[15];
  v7 = v3[16];
  if (v6)
  {
    v8 = v7;
    v9 = v6;
    v10 = v5;
    v11 = v4;
  }

  else
  {
    if (qword_28028BD08 != -1)
    {
      swift_once();
    }

    v11 = 0;
    v10 = 0xC000000000000000;
    v9 = MEMORY[0x277D84F98];
  }

  *a2 = v11;
  a2[1] = v10;
  a2[2] = v9;
  a2[3] = v8;
  return sub_268601AE8(v4, v5, v6);
}

uint64_t sub_2685DEC64(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_2685BA80C(*a1, v4);

  v7 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v9 = sub_2685F1768(v9);
    *(a2 + 16) = v9;
  }

  swift_beginAccess();
  v10 = v9[13];
  v11 = v9[14];
  v12 = v9[15];
  v13 = v9[16];
  v9[13] = v3;
  v9[14] = v4;
  v9[15] = v5;
  v9[16] = v6;
  return sub_268601B34(v10, v11, v12);
}

uint64_t Google_Protobuf_FileDescriptorProto.options.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F1768(v8);
    *(v1 + 16) = v8;
  }

  swift_beginAccess();
  v9 = v8[13];
  v10 = v8[14];
  v11 = v8[15];
  v12 = v8[16];
  v8[13] = v2;
  v8[14] = v3;
  v8[15] = v4;
  v8[16] = v5;
  return sub_268601B34(v9, v10, v11);
}

uint64_t Google_Protobuf_FileOptions.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = MEMORY[0x277D84F98];
  if (qword_28028BD08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 24) = qword_28028C660;
}

void (*Google_Protobuf_FileDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[13];
  v7 = v5[14];
  v8 = v5[15];
  v9 = v5[16];
  if (v8)
  {
    *v4 = v6;
    v4[1] = v7;
    v4[2] = v8;
    v4[3] = v9;
  }

  else
  {
    *v4 = xmmword_26868A5E0;
    v4[2] = MEMORY[0x277D84F98];
    if (qword_28028BD08 != -1)
    {
      swift_once();
    }

    v4[3] = qword_28028C660;
  }

  sub_268601AE8(v6, v7, v8);
  return sub_2685DEF70;
}

void sub_2685DEF70(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[13];
  if (a2)
  {
    sub_2685BA80C(**a1, v3);

    v8 = *(v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v7 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = v2[13];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v10 = sub_2685F1768(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    v12 = v10[13];
    v13 = v10[14];
    v14 = v10[15];
    v15 = v10[16];
    v10[13] = v4;
    v10[14] = v3;
    v10[15] = v6;
    v10[16] = v5;
    sub_268601B34(v12, v13, v14);
    v16 = v2[2];
    v17 = v2[3];
    sub_2685B593C(*v2, v2[1]);
  }

  else
  {
    v18 = *(v7 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v7 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v2[13];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v20 = sub_2685F1768(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = v20[13];
    v23 = v20[14];
    v24 = v20[15];
    v25 = v20[16];
    v20[13] = v4;
    v20[14] = v3;
    v20[15] = v6;
    v20[16] = v5;
    sub_268601B34(v22, v23, v24);
  }

  free(v2);
}

BOOL Google_Protobuf_FileDescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 120) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearOptions()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F1768(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = v3[13];
  v5 = v3[14];
  v6 = v3[15];
  v7 = v3[16];
  *(v3 + 13) = 0u;
  *(v3 + 15) = 0u;
  sub_268601B34(v4, v5, v6);
}

uint64_t Google_Protobuf_FileDescriptorProto.sourceCodeInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[17];
  v5 = v3[18];
  v6 = v3[19];
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    v7 = v3[17];
    v8 = v3[18];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xC000000000000000;
  if (v4)
  {
    v9 = v3[19];
  }

  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  return sub_268601B80(v4, v5, v6);
}

uint64_t sub_2685DF224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[17];
  v5 = v3[18];
  v6 = v3[19];
  v7 = 0xC000000000000000;
  if (v4)
  {
    v7 = v3[19];
    v8 = v3[18];
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  if (v4)
  {
    v9 = v3[17];
  }

  *a2 = v9;
  a2[1] = v8;
  a2[2] = v7;
  return sub_268601B80(v4, v5, v6);
}

uint64_t sub_2685DF294(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  sub_2685BA80C(v4, v5);
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F1768(v8);
    *(a2 + 16) = v8;
  }

  swift_beginAccess();
  v9 = v8[17];
  v10 = v8[18];
  v11 = v8[19];
  v8[17] = v3;
  v8[18] = v4;
  v8[19] = v5;
  return sub_268601BC8(v9, v10, v11);
}

uint64_t Google_Protobuf_FileDescriptorProto.sourceCodeInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F1768(v7);
    *(v1 + 16) = v7;
  }

  swift_beginAccess();
  v8 = v7[17];
  v9 = v7[18];
  v10 = v7[19];
  v7[17] = v2;
  v7[18] = v3;
  v7[19] = v4;
  return sub_268601BC8(v8, v9, v10);
}

double Google_Protobuf_SourceCodeInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

void (*Google_Protobuf_FileDescriptorProto.sourceCodeInfo.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[17];
  v7 = v5[18];
  v8 = v5[19];
  v9 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = v5[17];
    v10 = v5[18];
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xC000000000000000;
  if (v6)
  {
    v11 = v5[19];
  }

  *v4 = v9;
  v4[1] = v10;
  v4[2] = v11;
  sub_268601B80(v6, v7, v8);
  return sub_2685DF4C0;
}

void sub_2685DF4C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[12];
  if (a2)
  {
    v7 = **a1;

    sub_2685BA80C(v3, v5);
    v8 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = v2[12];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v10 = sub_2685F1768(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    v12 = v10[17];
    v13 = v10[18];
    v14 = v10[19];
    v10[17] = v4;
    v10[18] = v3;
    v10[19] = v5;
    sub_268601BC8(v12, v13, v14);
    v15 = *v2;
    v16 = v2[1];
    v17 = v2[2];

    sub_2685B593C(v16, v17);
  }

  else
  {
    v18 = *(v6 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v2[12];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v20 = sub_2685F1768(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = v20[17];
    v23 = v20[18];
    v24 = v20[19];
    v20[17] = v4;
    v20[18] = v3;
    v20[19] = v5;
    sub_268601BC8(v22, v23, v24);
  }

  free(v2);
}

BOOL Google_Protobuf_FileDescriptorProto.hasSourceCodeInfo.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 136) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearSourceCodeInfo()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F1768(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = v3[17];
  v5 = v3[18];
  v6 = v3[19];
  v3[18] = 0;
  v3[19] = 0;
  v3[17] = 0;
  sub_268601BC8(v4, v5, v6);
}

uint64_t Google_Protobuf_FileDescriptorProto.syntax.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 168))
  {
    v2 = *(v1 + 160);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685DF750@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 168))
  {
    v4 = *(v3 + 160);
    v5 = *(v3 + 168);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685DF7B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F1768(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = v7[21];
  v7[20] = v4;
  v7[21] = v3;
}

uint64_t Google_Protobuf_FileDescriptorProto.syntax.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F1768(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = v8[21];
  v8[20] = a1;
  v8[21] = a2;
}

void (*Google_Protobuf_FileDescriptorProto.syntax.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 168))
  {
    v6 = *(v5 + 160);
    v7 = *(v5 + 168);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685DF990;
}

void sub_2685DF990(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F1768(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = v9[21];
    v9[20] = v3;
    v9[21] = v5;

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
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F1768(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = v15[21];
    v15[20] = v3;
    v15[21] = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileDescriptorProto.hasSyntax.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 168) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearSyntax()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F1768(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = v3[21];
  v3[20] = 0;
  v3[21] = 0;
}

void (*Google_Protobuf_DescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685DFCAC;
}

BOOL Google_Protobuf_DescriptorProto.hasName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

void (*Google_Protobuf_DescriptorProto.field.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685DFE20;
}

uint64_t Google_Protobuf_DescriptorProto.extension.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t sub_2685DFE94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F4214(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

uint64_t Google_Protobuf_DescriptorProto.extension.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F4214(v6);
    *(v2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v6 + 40) = a1;
}

void (*Google_Protobuf_DescriptorProto.extension.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 40);

  return sub_2685E0054;
}

void sub_2685E0054(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(*a1 + 72);

    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F4214(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 40);
    *(v9 + 40) = v3;

    v12 = *v4;
  }

  else
  {
    v13 = *(v5 + 16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 16);
    if ((v14 & 1) == 0)
    {
      v16 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F4214(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 40);
    *(v15 + 40) = v3;
  }

  free(v2);
}

uint64_t sub_2685E017C()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 48);
}

uint64_t sub_2685E01C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 48);
  *(v13 + 48) = v10;
}

uint64_t sub_2685E02A4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a4(v11);
    *(v7 + 16) = v11;
  }

  swift_beginAccess();
  v12 = *(v11 + 48);
  *(v11 + 48) = a1;
}

void (*Google_Protobuf_DescriptorProto.nestedType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 48);

  return sub_2685E03E8;
}

void sub_2685E0418(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 48);
    *(v14 + 48) = v8;

    v17 = *v9;
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v10 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v7[10];
      a3(0);
      swift_allocObject();
      v20 = a5(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 48);
    *(v20 + 48) = v8;
  }

  free(v7);
}

uint64_t sub_2685E055C()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 56);
}

uint64_t sub_2685E05A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 56);
  *(v13 + 56) = v10;
}

uint64_t sub_2685E0684(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a4(v11);
    *(v7 + 16) = v11;
  }

  swift_beginAccess();
  v12 = *(v11 + 56);
  *(v11 + 56) = a1;
}

void (*Google_Protobuf_DescriptorProto.enumType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 56);

  return sub_2685E07C8;
}

void sub_2685E07F8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 56);
    *(v14 + 56) = v8;

    v17 = *v9;
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v10 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v7[10];
      a3(0);
      swift_allocObject();
      v20 = a5(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 56);
    *(v20 + 56) = v8;
  }

  free(v7);
}

uint64_t sub_2685E093C()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 64);
}

uint64_t sub_2685E0980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 64);
  *(v13 + 64) = v10;
}

uint64_t sub_2685E0A64(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a4(v11);
    *(v7 + 16) = v11;
  }

  swift_beginAccess();
  v12 = *(v11 + 64);
  *(v11 + 64) = a1;
}

void (*Google_Protobuf_DescriptorProto.extensionRange.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 64);

  return sub_2685E0BA8;
}

void sub_2685E0BD8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 64);
    *(v14 + 64) = v8;

    v17 = *v9;
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v10 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v7[10];
      a3(0);
      swift_allocObject();
      v20 = a5(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 64);
    *(v20 + 64) = v8;
  }

  free(v7);
}

uint64_t sub_2685E0D1C()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 72);
}

uint64_t sub_2685E0D60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 72);
  *(v13 + 72) = v10;
}

uint64_t sub_2685E0E44(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a4(v11);
    *(v7 + 16) = v11;
  }

  swift_beginAccess();
  v12 = *(v11 + 72);
  *(v11 + 72) = a1;
}

void (*Google_Protobuf_DescriptorProto.oneofDecl.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 72);

  return sub_2685E0F88;
}

void sub_2685E0FB8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 72);
    *(v14 + 72) = v8;

    v17 = *v9;
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v10 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v7[10];
      a3(0);
      swift_allocObject();
      v20 = a5(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 72);
    *(v20 + 72) = v8;
  }

  free(v7);
}

uint64_t Google_Protobuf_DescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  if (v4)
  {
    v8 = *(v3 + 112);
  }

  else
  {
    v8 = 33686018;
  }

  v9 = MEMORY[0x277D84F90];
  if (v4)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xC000000000000000;
  if (v4)
  {
    v11 = *(v3 + 96);
  }

  v12 = MEMORY[0x277D84F98];
  if (v4)
  {
    v12 = *(v3 + 104);
  }

  *(a1 + 32) = v8;
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  return sub_268601C34(v4, v5, v6);
}

uint64_t sub_2685E1184(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v17 = *a1;
  v18 = v3;
  v19 = *(a1 + 8);
  sub_268601CEC(&v17, v16);
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F4214(v6);
    *(a2 + 16) = v6;
  }

  v7 = v19;
  v14 = v17;
  v15 = v18;
  swift_beginAccess();
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  v10 = *(v6 + 96);
  v11 = *(v6 + 104);
  v12 = *(v6 + 112);
  *(v6 + 80) = v14;
  *(v6 + 96) = v15;
  *(v6 + 112) = v7;
  return sub_268601C90(v8, v9, v10);
}

uint64_t Google_Protobuf_DescriptorProto.options.setter(__int128 *a1)
{
  v12 = *a1;
  v13 = a1[1];
  v2 = *(a1 + 8);
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F4214(v5);
    *(v1 + 16) = v5;
  }

  swift_beginAccess();
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  v8 = *(v5 + 96);
  v9 = *(v5 + 104);
  v10 = *(v5 + 112);
  *(v5 + 80) = v12;
  *(v5 + 96) = v13;
  *(v5 + 112) = v2;
  return sub_268601C90(v6, v7, v8);
}

double Google_Protobuf_MessageOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 33686018;
  return result;
}

void (*Google_Protobuf_DescriptorProto.options.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  v8 = *(v5 + 96);
  v9 = *(v5 + 104);
  v10 = MEMORY[0x277D84F98];
  v11 = 0xC000000000000000;
  v12 = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = *(v5 + 112);
  }

  else
  {
    v13 = 33686018;
  }

  if (v6)
  {
    v12 = *(v5 + 80);
    v14 = *(v5 + 88);
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v11 = *(v5 + 96);
    v10 = *(v5 + 104);
  }

  *(v4 + 32) = v13;
  *v4 = v12;
  *(v4 + 8) = v14;
  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  sub_268601C34(v6, v7, v8);
  return sub_2685E13EC;
}

void sub_2685E13EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  if (a2)
  {
    v4 = v2[1];
    *(v2 + 40) = *v2;
    *(v2 + 56) = v4;
    *(v2 + 18) = *(v2 + 8);
    sub_268601CEC(v2 + 40, (v2 + 5));
    v5 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v3 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 21);
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v7 = sub_2685F4214(v7);
      *(v8 + 16) = v7;
    }

    v9 = *(v2 + 18);
    v26 = *(v2 + 40);
    v28 = *(v2 + 56);
    swift_beginAccess();
    v10 = *(v7 + 80);
    v11 = *(v7 + 88);
    v12 = *(v7 + 96);
    v13 = *(v7 + 104);
    v14 = *(v7 + 112);
    *(v7 + 80) = v26;
    *(v7 + 96) = v28;
    *(v7 + 112) = v9;
    sub_268601C90(v10, v11, v12);
    v15 = v2[1];
    v2[5] = *v2;
    v2[6] = v15;
    *(v2 + 28) = *(v2 + 8);
    sub_268601D24((v2 + 5));
  }

  else
  {
    v27 = *v2;
    v29 = v2[1];
    v16 = *(v2 + 8);
    v17 = *(v3 + 16);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v3 + 16);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 21);
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v19 = sub_2685F4214(v19);
      *(v20 + 16) = v19;
    }

    swift_beginAccess();
    v21 = *(v19 + 80);
    v22 = *(v19 + 88);
    v23 = *(v19 + 96);
    v24 = *(v19 + 104);
    v25 = *(v19 + 112);
    *(v19 + 80) = v27;
    *(v19 + 96) = v29;
    *(v19 + 112) = v16;
    sub_268601C90(v21, v22, v23);
  }

  free(v2);
}

BOOL Google_Protobuf_DescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 80) != 0;
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.clearOptions()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F4214(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  sub_268601C90(v4, v5, v6);
}

uint64_t Google_Protobuf_DescriptorProto.reservedRange.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 120);
}

uint64_t sub_2685E1694(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F4214(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 120);
  *(v6 + 120) = v3;
}

uint64_t Google_Protobuf_DescriptorProto.reservedRange.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F4214(v6);
    *(v2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 120);
  *(v6 + 120) = a1;
}

void (*Google_Protobuf_DescriptorProto.reservedRange.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 120);

  return sub_2685E1854;
}

void sub_2685E1854(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(*a1 + 72);

    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F4214(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 120);
    *(v9 + 120) = v3;

    v12 = *v4;
  }

  else
  {
    v13 = *(v5 + 16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 16);
    if ((v14 & 1) == 0)
    {
      v16 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F4214(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 120);
    *(v15 + 120) = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_DescriptorProto.reservedName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 128);
}

uint64_t sub_2685E19BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F4214(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 128);
  *(v6 + 128) = v3;
}

uint64_t Google_Protobuf_DescriptorProto.reservedName.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F4214(v6);
    *(v2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 128);
  *(v6 + 128) = a1;
}

void (*Google_Protobuf_DescriptorProto.reservedName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 128);

  return sub_2685E1B7C;
}

void sub_2685E1B7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(*a1 + 72);

    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F4214(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 128);
    *(v9 + 128) = v3;

    v12 = *v4;
  }

  else
  {
    v13 = *(v5 + 16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 16);
    if ((v14 & 1) == 0)
    {
      v16 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F4214(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 128);
    *(v15 + 128) = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_DescriptorProto.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_DescriptorProto.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.start.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 20))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_2685E1D4C(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v6 = sub_2685F6DD8(v6);
    *(a2 + 16) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 16) = v3;
  *(v6 + 20) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.start.setter(int a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v6 = sub_2685F6DD8(v6);
    *(v2 + 16) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 20) = 0;
  return result;
}

void (*Google_Protobuf_DescriptorProto.ExtensionRange.start.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v5 + 20))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E1EFC;
}

void sub_2685E1EFC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v6 = sub_2685F6DD8(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = v2;
  *(v6 + 20) = 0;

  free(v1);
}

BOOL Google_Protobuf_DescriptorProto.ExtensionRange.hasStart.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return (*(v1 + 20) & 1) == 0;
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.ExtensionRange.clearStart()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v3 = sub_2685F6DD8(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  *(v3 + 16) = 0;
  *(v3 + 20) = 1;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.end.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 28))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24);
  }
}

uint64_t sub_2685E20D8(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v6 = sub_2685F6DD8(v6);
    *(a2 + 16) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 28) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.end.setter(int a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v6 = sub_2685F6DD8(v6);
    *(v2 + 16) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 28) = 0;
  return result;
}

void (*Google_Protobuf_DescriptorProto.ExtensionRange.end.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v5 + 28))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E2288;
}

void sub_2685E2288(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v6 = sub_2685F6DD8(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 24) = v2;
  *(v6 + 28) = 0;

  free(v1);
}

BOOL Google_Protobuf_DescriptorProto.ExtensionRange.hasEnd.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return (*(v1 + 28) & 1) == 0;
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.ExtensionRange.clearEnd()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v3 = sub_2685F6DD8(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  *(v3 + 24) = 0;
  *(v3 + 28) = 1;
}

void (*Google_Protobuf_DescriptorProto.ExtensionRange.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];
  v10 = MEMORY[0x277D84F98];
  v11 = 0xC000000000000000;
  v12 = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = v5[4];
    v13 = v5[5];
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v11 = v5[6];
    v10 = v5[7];
  }

  *v4 = v12;
  v4[1] = v13;
  v4[2] = v11;
  v4[3] = v10;
  sub_268601C34(v6, v7, v8);
  return sub_2685E250C;
}

BOOL Google_Protobuf_DescriptorProto.ExtensionRange.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 32) != 0;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.start.getter()
{
  if (*(v0 + 20))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.start.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_DescriptorProto.ReservedRange.start.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 20))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685E2644;
}

uint64_t *sub_2685E2644(uint64_t *result)
{
  v1 = *result;
  *(v1 + 16) = *(result + 2);
  *(v1 + 20) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.end.getter()
{
  if (*(v0 + 28))
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.end.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_DescriptorProto.ReservedRange.end.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24);
  if (*(v1 + 28))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685E26D0;
}

uint64_t *sub_2685E26D0(uint64_t *result)
{
  v1 = *result;
  *(v1 + 24) = *(result + 2);
  *(v1 + 28) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

double Google_Protobuf_DescriptorProto.ReservedRange.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E290C;
}

void (*Google_Protobuf_FieldDescriptorProto.number.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (*(v5 + 36))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E2A3C;
}

BOOL Google_Protobuf_FieldDescriptorProto.hasNumber.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return (*(v1 + 36) & 1) == 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.label.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 37);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2685E2B34(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(a2 + 16) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 37) = v3;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.label.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F8130(v5);
    *(v1 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 37) = v2;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.label.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 37);
  if (v6 == 3)
  {
    LOBYTE(v6) = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E2CD4;
}

void sub_2685E2CD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 37) = v2;

  free(v1);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasLabel.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 37) != 3;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearLabel()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F8130(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  *(v3 + 37) = 3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.type.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 38);
  if (v5 == 18)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2685E2EAC(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(a2 + 16) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 38) = v3;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.type.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F8130(v5);
    *(v1 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 38) = v2;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.type.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 38);
  if (v6 == 18)
  {
    LOBYTE(v6) = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E304C;
}

void sub_2685E304C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 38) = v2;

  free(v1);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasType.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 38) != 18;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearType()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F8130(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  *(v3 + 38) = 18;
}

uint64_t Google_Protobuf_FieldDescriptorProto.typeName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E3238@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 48))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E329C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F8130(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 48);
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.typeName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F8130(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 48);
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
}

void (*Google_Protobuf_FieldDescriptorProto.typeName.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 48))
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 48);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E3478;
}

void sub_2685E3478(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F8130(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 48);
    *(v9 + 40) = v3;
    *(v9 + 48) = v5;

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
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F8130(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 48);
    *(v15 + 40) = v3;
    *(v15 + 48) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasTypeName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 48) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearTypeName()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F8130(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.extendee.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 64))
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E36D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 64))
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E3734(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F8130(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 64);
  *(v7 + 56) = v4;
  *(v7 + 64) = v3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.extendee.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F8130(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 64);
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
}

void (*Google_Protobuf_FieldDescriptorProto.extendee.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 64))
  {
    v6 = *(v5 + 56);
    v7 = *(v5 + 64);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E3910;
}

void sub_2685E3910(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F8130(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 64);
    *(v9 + 56) = v3;
    *(v9 + 64) = v5;

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
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F8130(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 64);
    *(v15 + 56) = v3;
    *(v15 + 64) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasExtendee.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearExtendee()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F8130(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.defaultValue.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 80))
  {
    v2 = *(v1 + 72);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E3B68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 80))
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E3BCC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F8130(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 80);
  *(v7 + 72) = v4;
  *(v7 + 80) = v3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.defaultValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F8130(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 80);
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;
}

void (*Google_Protobuf_FieldDescriptorProto.defaultValue.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 80))
  {
    v6 = *(v5 + 72);
    v7 = *(v5 + 80);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E3DA8;
}

void sub_2685E3DA8(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F8130(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 80);
    *(v9 + 72) = v3;
    *(v9 + 80) = v5;

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
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F8130(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 80);
    *(v15 + 72) = v3;
    *(v15 + 80) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasDefaultValue.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 80) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearDefaultValue()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F8130(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.oneofIndex.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 92))
  {
    return 0;
  }

  else
  {
    return *(v1 + 88);
  }
}

uint64_t sub_2685E3FE8(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(a2 + 16) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 88) = v3;
  *(v6 + 92) = 0;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.oneofIndex.setter(int a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(v2 + 16) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 88) = a1;
  *(v6 + 92) = 0;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.oneofIndex.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 88);
  if (*(v5 + 92))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E4198;
}

void sub_2685E4198(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 88) = v2;
  *(v6 + 92) = 0;

  free(v1);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasOneofIndex.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return (*(v1 + 92) & 1) == 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearOneofIndex()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F8130(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  *(v3 + 88) = 0;
  *(v3 + 92) = 1;
}

uint64_t Google_Protobuf_FieldDescriptorProto.jsonName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 104))
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E438C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 104))
  {
    v4 = *(v3 + 96);
    v5 = *(v3 + 104);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E43F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F8130(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 104);
  *(v7 + 96) = v4;
  *(v7 + 104) = v3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.jsonName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F8130(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 104);
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
}

void (*Google_Protobuf_FieldDescriptorProto.jsonName.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 104))
  {
    v6 = *(v5 + 96);
    v7 = *(v5 + 104);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E45CC;
}

void sub_2685E45CC(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F8130(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 104);
    *(v9 + 96) = v3;
    *(v9 + 104) = v5;

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
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2685F8130(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 104);
    *(v15 + 96) = v3;
    *(v15 + 104) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasJsonName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 104) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearJsonName()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F8130(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  v7 = *(v3 + 136);
  v8 = *(v3 + 144) | (*(v3 + 148) << 32);
  if (v4)
  {
    *a1 = v4;
    *(a1 + 32) = v8;
    *(a1 + 36) = WORD2(v8);
    v9 = v5;
    v10 = v6;
    v11 = v7;
  }

  else
  {
    v9 = 0;
    *a1 = MEMORY[0x277D84F90];
    *(a1 + 32) = 33751555;
    *(a1 + 36) = 514;
    v11 = MEMORY[0x277D84F98];
    v10 = 0xC000000000000000;
  }

  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  return sub_268601C34(v4, v5, v6);
}

uint64_t sub_2685E4874(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v19 = *a1;
  *v20 = v3;
  *&v20[14] = *(a1 + 30);
  sub_268601D9C(&v19, v18);
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(a2 + 16) = v6;
  }

  v7 = *&v20[20];
  v8 = *&v20[16];
  v16 = v19;
  v17 = *v20;
  swift_beginAccess();
  v9 = *(v6 + 112);
  v10 = *(v6 + 144);
  v11 = *(v6 + 120);
  v12 = *(v6 + 128);
  v13 = *(v6 + 136);
  v14 = *(v6 + 148);
  *(v6 + 112) = v16;
  *(v6 + 128) = v17;
  *(v6 + 144) = v8;
  *(v6 + 148) = v7;
  return sub_268601C90(v9, v11, v12);
}

uint64_t Google_Protobuf_FieldDescriptorProto.options.setter(__int128 *a1)
{
  v12 = *a1;
  v13 = a1[1];
  v2 = *(a1 + 8) | (*(a1 + 18) << 32);
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F8130(v5);
    *(v1 + 16) = v5;
  }

  swift_beginAccess();
  v6 = *(v5 + 112);
  v7 = *(v5 + 120);
  v8 = *(v5 + 128);
  v9 = *(v5 + 136);
  v10 = *(v5 + 144) | (*(v5 + 148) << 32);
  *(v5 + 112) = v12;
  *(v5 + 128) = v13;
  *(v5 + 144) = v2;
  *(v5 + 148) = WORD2(v2);
  return sub_268601C90(v6, v7, v8);
}

double Google_Protobuf_FieldOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *&result = 33751555;
  *(a1 + 32) = 33751555;
  *(a1 + 36) = 514;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.options.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 112);
  v7 = *(v5 + 120);
  v8 = *(v5 + 128);
  v9 = *(v5 + 136);
  v10 = *(v5 + 144) | (*(v5 + 148) << 32);
  if (v6)
  {
    *(v5 + 148);
    *(v4 + 32) = *(v5 + 144);
    *(v4 + 36) = WORD2(v10);
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
  }

  else
  {
    v12 = 0;
    *(v4 + 32) = 33751555;
    *(v4 + 36) = 514;
    v14 = MEMORY[0x277D84F98];
    v13 = 0xC000000000000000;
    v11 = MEMORY[0x277D84F90];
  }

  *v4 = v11;
  *(v4 + 8) = v12;
  *(v4 + 16) = v13;
  *(v4 + 24) = v14;
  sub_268601C34(v6, v7, v8);
  return sub_2685E4B4C;
}

void sub_2685E4B4C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 21);
  if (a2)
  {
    v4 = *(v2 + 1);
    *(v2 + 40) = *v2;
    *(v2 + 56) = v4;
    *(v2 + 70) = *(v2 + 30);
    sub_268601D9C((v2 + 40), (v2 + 80));
    v5 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v3 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 21);
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v7 = sub_2685F8130(v7);
      *(v8 + 16) = v7;
    }

    v9 = *(v2 + 38);
    v10 = *(v2 + 18);
    v28 = *(v2 + 40);
    v30 = *(v2 + 56);
    swift_beginAccess();
    v11 = *(v7 + 112);
    v12 = *(v7 + 144);
    v13 = *(v7 + 120);
    v14 = *(v7 + 128);
    v15 = *(v7 + 136);
    v16 = *(v7 + 148);
    *(v7 + 112) = v28;
    *(v7 + 128) = v30;
    *(v7 + 144) = v10;
    *(v7 + 148) = v9;
    sub_268601C90(v11, v13, v14);
    v17 = *(v2 + 1);
    *(v2 + 5) = *v2;
    *(v2 + 6) = v17;
    *(v2 + 110) = *(v2 + 30);
    sub_268601DD4((v2 + 80));
  }

  else
  {
    v29 = *v2;
    v31 = *(v2 + 1);
    v18 = *(v2 + 8) | (*(v2 + 18) << 32);
    v19 = *(v3 + 16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v3 + 16);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 21);
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v21 = sub_2685F8130(v21);
      *(v22 + 16) = v21;
    }

    swift_beginAccess();
    v23 = *(v21 + 112);
    v24 = *(v21 + 120);
    v25 = *(v21 + 128);
    v26 = *(v21 + 136);
    v27 = *(v21 + 144) | (*(v21 + 148) << 32);
    *(v21 + 112) = v29;
    *(v21 + 128) = v31;
    *(v21 + 144) = v18;
    *(v21 + 148) = WORD2(v18);
    sub_268601C90(v23, v24, v25);
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 112) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearOptions()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685F8130(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  v7 = *(v3 + 136);
  v8 = *(v3 + 144) | (*(v3 + 148) << 32);
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 142) = 0;
  sub_268601C90(v4, v5, v6);
}

SiriOntologyProtobuf::Google_Protobuf_FieldDescriptorProto::TypeEnum_optional __swiftcall Google_Protobuf_FieldDescriptorProto.TypeEnum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0x12)
  {
    v2 = 18;
  }

  *v1 = v2;
  return rawValue;
}

void (*Google_Protobuf_OneofDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E4F78;
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV14ExtensionRangeV7optionsAA0d1_c1_gH7OptionsVvg_0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = MEMORY[0x277D84F98];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F90];
  if (v4)
  {
    v10 = v3[4];
    v11 = v3[5];
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v9 = v3[6];
    v8 = v3[7];
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = v9;
  a1[3] = v8;
  return sub_268601C34(v4, v5, v6);
}

uint64_t sub_2685E5054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = MEMORY[0x277D84F90];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F98];
  if (v4)
  {
    v10 = v3[7];
    v9 = v3[6];
    v11 = v3[5];
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v8 = v3[4];
  }

  *a2 = v8;
  a2[1] = v11;
  a2[2] = v9;
  a2[3] = v10;
  return sub_268601C34(v4, v5, v6);
}

uint64_t sub_2685E50D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void *))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];

  sub_2685BA80C(v10, v11);

  v13 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v15 = a6(v15);
    *(a2 + 16) = v15;
  }

  swift_beginAccess();
  v16 = v15[4];
  v17 = v15[5];
  v18 = v15[6];
  v19 = v15[7];
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  return sub_268601C90(v16, v17, v18);
}

uint64_t sub_2685E51D4(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void *))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v12 = a3(v12);
    *(v3 + 16) = v12;
  }

  swift_beginAccess();
  v13 = v12[4];
  v14 = v12[5];
  v15 = v12[6];
  v16 = v12[7];
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  return sub_268601C90(v13, v14, v15);
}

double Google_Protobuf_OneofOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  return result;
}

void (*Google_Protobuf_OneofDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];
  v10 = MEMORY[0x277D84F98];
  v11 = 0xC000000000000000;
  v12 = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = v5[4];
    v13 = v5[5];
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v11 = v5[6];
    v10 = v5[7];
  }

  *v4 = v12;
  v4[1] = v13;
  v4[2] = v11;
  v4[3] = v10;
  sub_268601C34(v6, v7, v8);
  return sub_2685E5380;
}

void sub_2685E53AC(uint64_t **a1, char a2, void (*a3)(void), uint64_t (*a4)(void *))
{
  v6 = *a1;
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v11 = (*a1)[13];
  if (a2)
  {
    v12 = **a1;

    sub_2685BA80C(v7, v10);

    v13 = *(v11 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v11 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = v6[13];
      a3(0);
      swift_allocObject();
      v15 = a4(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = v15[4];
    v18 = v15[5];
    v19 = v15[6];
    v20 = v15[7];
    v15[4] = v8;
    v15[5] = v7;
    v15[6] = v10;
    v15[7] = v9;
    sub_268601C90(v17, v18, v19);
    v21 = *v6;
    v22 = v6[1];
    v23 = v6[2];
    v24 = v6[3];

    sub_2685B593C(v22, v23);
  }

  else
  {
    v25 = *(v11 + 16);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v11 + 16);
    if ((v26 & 1) == 0)
    {
      v28 = v6[13];
      a3(0);
      swift_allocObject();
      v27 = a4(v27);
      *(v28 + 16) = v27;
    }

    swift_beginAccess();
    v29 = v27[4];
    v30 = v27[5];
    v31 = v27[6];
    v32 = v27[7];
    v27[4] = v8;
    v27[5] = v7;
    v27[6] = v10;
    v27[7] = v9;
    sub_268601C90(v29, v30, v31);
  }

  free(v6);
}

uint64_t sub_2685E555C(void (*a1)(void), uint64_t (*a2)(void *))
{
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1(0);
    swift_allocObject();
    v7 = a2(v7);
    *(v2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = v7[4];
  v9 = v7[5];
  v10 = v7[6];
  v11 = v7[7];
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  return sub_268601C90(v8, v9, v10);
}

void (*Google_Protobuf_EnumDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E5724;
}

void (*Google_Protobuf_EnumDescriptorProto.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685E584C;
}

uint64_t Google_Protobuf_EnumDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  v9 = MEMORY[0x277D84F98];
  v10 = 0xC000000000000000;
  v11 = MEMORY[0x277D84F90];
  if (v4)
  {
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
  }

  else
  {
    v12 = 0;
  }

  if (v4)
  {
    v10 = *(v3 + 56);
    v9 = *(v3 + 64);
    v13 = *(v3 + 72);
  }

  else
  {
    v13 = 2;
  }

  if (v4)
  {
    v14 = HIBYTE(*(v3 + 72));
  }

  else
  {
    v14 = 2;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *(a1 + 32) = v13;
  *(a1 + 33) = v14;
  return sub_268601C34(v4, v5, v6);
}

uint64_t sub_2685E5918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = MEMORY[0x277D84F90];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F98];
  v11 = HIBYTE(*(v3 + 72));
  if (v4)
  {
    v12 = *(v3 + 72);
  }

  else
  {
    LOBYTE(v11) = 2;
    v12 = 2;
  }

  if (v4)
  {
    v10 = *(v3 + 64);
    v9 = *(v3 + 56);
    v13 = *(v3 + 48);
  }

  else
  {
    v13 = 0;
  }

  if (v4)
  {
    v8 = *(v3 + 40);
  }

  *a2 = v8;
  *(a2 + 8) = v13;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 33) = v11;
  return sub_268601C34(v4, v5, v6);
}

uint64_t sub_2685E59B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);

  sub_2685BA80C(v4, v5);

  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
    swift_allocObject();
    v11 = sub_2685FB91C(v11);
    *(a2 + 16) = v11;
  }

  swift_beginAccess();
  v12 = *(v11 + 40);
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  v15 = *(v11 + 64);
  *(v11 + 40) = v3;
  *(v11 + 48) = v4;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  v16 = *(v11 + 72);
  *(v11 + 72) = v7 | (v8 << 8);
  return sub_268601C90(v12, v13, v14);
}

uint64_t Google_Protobuf_EnumDescriptorProto.options.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
    swift_allocObject();
    v10 = sub_2685FB91C(v10);
    *(v1 + 16) = v10;
  }

  swift_beginAccess();
  v11 = *(v10 + 40);
  v12 = *(v10 + 48);
  v13 = *(v10 + 56);
  v14 = *(v10 + 64);
  *(v10 + 40) = v2;
  *(v10 + 48) = v3;
  *(v10 + 56) = v4;
  *(v10 + 64) = v5;
  v15 = *(v10 + 72);
  *(v10 + 72) = v6 | (v7 << 8);
  return sub_268601C90(v11, v12, v13);
}

double Google_Protobuf_EnumOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 514;
  return result;
}

void (*Google_Protobuf_EnumDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = *(v5 + 72);
  v11 = MEMORY[0x277D84F98];
  v12 = 0xC000000000000000;
  v13 = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = *(v5 + 40);
    v14 = *(v5 + 48);
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v12 = *(v5 + 56);
    v11 = *(v5 + 64);
    v15 = *(v5 + 72);
  }

  else
  {
    v15 = 2;
  }

  if (v6)
  {
    v16 = HIBYTE(*(v5 + 72));
  }

  else
  {
    v16 = 2;
  }

  *v4 = v13;
  *(v4 + 8) = v14;
  *(v4 + 16) = v12;
  *(v4 + 24) = v11;
  *(v4 + 32) = v15;
  *(v4 + 33) = v16;
  sub_268601C34(v6, v7, v8);
  return sub_2685E5C68;
}

void sub_2685E5C68(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 33);
  v9 = (*a1)[14];
  if (a2)
  {
    v10 = **a1;

    sub_2685BA80C(v3, v6);

    v11 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = v2[14];
      type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
      swift_allocObject();
      v13 = sub_2685FB91C(v13);
      *(v14 + 16) = v13;
    }

    swift_beginAccess();
    v15 = *(v13 + 40);
    v16 = *(v13 + 48);
    v17 = *(v13 + 56);
    v18 = *(v13 + 64);
    *(v13 + 40) = v4;
    *(v13 + 48) = v3;
    *(v13 + 56) = v6;
    *(v13 + 64) = v5;
    v19 = *(v13 + 72);
    *(v13 + 72) = v7 | (v8 << 8);
    sub_268601C90(v15, v16, v17);
    v20 = *v2;
    v21 = v2[1];
    v22 = v2[2];
    v23 = v2[3];

    sub_2685B593C(v21, v22);
  }

  else
  {
    v24 = *(v9 + 16);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v9 + 16);
    if ((v25 & 1) == 0)
    {
      v27 = v2[14];
      type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
      swift_allocObject();
      v26 = sub_2685FB91C(v26);
      *(v27 + 16) = v26;
    }

    swift_beginAccess();
    v28 = *(v26 + 40);
    v29 = *(v26 + 48);
    v30 = *(v26 + 56);
    v31 = *(v26 + 64);
    *(v26 + 40) = v4;
    *(v26 + 48) = v3;
    *(v26 + 56) = v6;
    *(v26 + 64) = v5;
    v32 = *(v26 + 72);
    *(v26 + 72) = v7 | (v8 << 8);
    sub_268601C90(v28, v29, v30);
  }

  free(v2);
}

BOOL Google_Protobuf_EnumDescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall Google_Protobuf_EnumDescriptorProto.clearOptions()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
    swift_allocObject();
    v3 = sub_2685FB91C(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  v8 = *(v3 + 72);
  *(v3 + 72) = 0;
  sub_268601C90(v4, v5, v6);
}

uint64_t sub_2685E5EE4()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 80);
}

uint64_t sub_2685E5F28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 80);
  *(v13 + 80) = v10;
}

uint64_t sub_2685E600C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a4(v11);
    *(v7 + 16) = v11;
  }

  swift_beginAccess();
  v12 = *(v11 + 80);
  *(v11 + 80) = a1;
}

void (*Google_Protobuf_EnumDescriptorProto.reservedRange.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 80);

  return sub_2685E6150;
}

void sub_2685E6180(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 80);
    *(v14 + 80) = v8;

    v17 = *v9;
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v10 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v7[10];
      a3(0);
      swift_allocObject();
      v20 = a5(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 80);
    *(v20 + 80) = v8;
  }

  free(v7);
}

uint64_t sub_2685E62C4()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 88);
}

uint64_t sub_2685E6308(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 88);
  *(v13 + 88) = v10;
}

uint64_t sub_2685E63EC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a4(v11);
    *(v7 + 16) = v11;
  }

  swift_beginAccess();
  v12 = *(v11 + 88);
  *(v11 + 88) = a1;
}

void (*Google_Protobuf_EnumDescriptorProto.reservedName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 88);

  return sub_2685E6530;
}

void sub_2685E6560(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 88);
    *(v14 + 88) = v8;

    v17 = *v9;
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v10 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v7[10];
      a3(0);
      swift_allocObject();
      v20 = a5(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 88);
    *(v20 + 88) = v8;
  }

  free(v7);
}

uint64_t *(*Google_Protobuf_EnumDescriptorProto.EnumReservedRange.start.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 20))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_268619478;
}

uint64_t *(*Google_Protobuf_EnumDescriptorProto.EnumReservedRange.end.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24);
  if (*(v1 + 28))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_26861947C;
}

void (*Google_Protobuf_EnumValueDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E6854;
}

uint64_t _s20SiriOntologyProtobuf07Google_C21_FieldDescriptorProtoV6numbers5Int32Vvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 36))
  {
    return 0;
  }

  else
  {
    return *(v1 + 32);
  }
}

uint64_t sub_2685E6900(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;
  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  result = swift_beginAccess();
  *(v13 + 32) = v10;
  *(v13 + 36) = 0;
  return result;
}

uint64_t sub_2685E69D4(int a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a4(v11);
    *(v7 + 16) = v11;
  }

  result = swift_beginAccess();
  *(v11 + 32) = a1;
  *(v11 + 36) = 0;
  return result;
}

void (*Google_Protobuf_EnumValueDescriptorProto.number.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (*(v5 + 36))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E6B18;
}

void sub_2685E6B48(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  v10 = *(v9 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = v7[9];
    a3(0);
    swift_allocObject();
    v12 = a5(v12);
    *(v13 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 32) = v8;
  *(v12 + 36) = 0;

  free(v7);
}

uint64_t sub_2685E6C54(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1(0);
    swift_allocObject();
    v8 = a3(v8);
    *(v3 + 16) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 32) = 0;
  *(v8 + 36) = 1;
  return result;
}

void (*Google_Protobuf_EnumValueDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = MEMORY[0x277D84F98];
  v11 = MEMORY[0x277D84F90];
  v12 = 0xC000000000000000;
  if (v6)
  {
    v11 = *(v5 + 40);
    v13 = *(v5 + 48);
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v12 = *(v5 + 56);
    v10 = *(v5 + 64);
    v14 = *(v5 + 72);
  }

  else
  {
    v14 = 2;
  }

  *v4 = v11;
  *(v4 + 8) = v13;
  *(v4 + 16) = v12;
  *(v4 + 24) = v10;
  *(v4 + 32) = v14;
  sub_268601C34(v6, v7, v8);
  return sub_2685E6DF8;
}

uint64_t sub_2685E6E90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v11 = *a1;
  v10 = a1[1];

  v12 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v14 = a7(v14);
    *(a2 + 16) = v14;
  }

  swift_beginAccess();
  v15 = *(v14 + 24);
  *(v14 + 16) = v11;
  *(v14 + 24) = v10;
}

uint64_t sub_2685E6F7C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v11 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    swift_allocObject();
    v13 = a5(v13);
    *(v8 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 24);
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
}

void (*Google_Protobuf_ServiceDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E70E4;
}

void sub_2685E7114(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  if (a2)
  {
    v11 = *(*a1 + 80);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[11];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 24);
    *(v14 + 16) = v8;
    *(v14 + 24) = v9;

    v17 = v7[10];
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v10 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v7[11];
      a3(0);
      swift_allocObject();
      v20 = a5(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 24);
    *(v20 + 16) = v8;
    *(v20 + 24) = v9;
  }

  free(v7);
}

uint64_t sub_2685E7284(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1(0);
    swift_allocObject();
    v8 = a3(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 24);
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
}

uint64_t sub_2685E7328(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 32);
  *(v13 + 32) = v10;
}

uint64_t sub_2685E740C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a4(v11);
    *(v7 + 16) = v11;
  }

  swift_beginAccess();
  v12 = *(v11 + 32);
  *(v11 + 32) = a1;
}

void (*Google_Protobuf_ServiceDescriptorProto.method.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685E7550;
}

void sub_2685E7580(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 32);
    *(v14 + 32) = v8;

    v17 = *v9;
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v10 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v7[10];
      a3(0);
      swift_allocObject();
      v20 = a5(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 32);
    *(v20 + 32) = v8;
  }

  free(v7);
}

uint64_t sub_2685E76C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  v10 = 0xC000000000000000;
  if (v4)
  {
    v9 = *(v3 + 40);
    v11 = *(v3 + 48);
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v10 = *(v3 + 56);
    v8 = *(v3 + 64);
    v12 = *(v3 + 72);
  }

  else
  {
    v12 = 2;
  }

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 32) = v12;
  return sub_268601C34(v4, v5, v6);
}

uint64_t sub_2685E7750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = MEMORY[0x277D84F90];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F98];
  if (v4)
  {
    v11 = *(v3 + 72);
  }

  else
  {
    v11 = 2;
  }

  if (v4)
  {
    v10 = *(v3 + 64);
    v9 = *(v3 + 56);
    v12 = *(v3 + 48);
  }

  else
  {
    v12 = 0;
  }

  if (v4)
  {
    v8 = *(v3 + 40);
  }

  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return sub_268601C34(v4, v5, v6);
}

uint64_t sub_2685E77DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(a1 + 32);

  sub_2685BA80C(v10, v11);

  v14 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v16 = a6(v16);
    *(a2 + 16) = v16;
  }

  swift_beginAccess();
  v17 = *(v16 + 40);
  v18 = *(v16 + 48);
  v19 = *(v16 + 56);
  v20 = *(v16 + 64);
  *(v16 + 40) = v9;
  *(v16 + 48) = v10;
  *(v16 + 56) = v11;
  *(v16 + 64) = v12;
  v21 = *(v16 + 72);
  *(v16 + 72) = v13;
  return sub_268601C90(v17, v18, v19);
}

uint64_t sub_2685E78F4(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 32);
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v13 = a3(v13);
    *(v3 + 16) = v13;
  }

  swift_beginAccess();
  v14 = *(v13 + 40);
  v15 = *(v13 + 48);
  v16 = *(v13 + 56);
  v17 = *(v13 + 64);
  *(v13 + 40) = v6;
  *(v13 + 48) = v7;
  *(v13 + 56) = v8;
  *(v13 + 64) = v9;
  v18 = *(v13 + 72);
  *(v13 + 72) = v10;
  return sub_268601C90(v14, v15, v16);
}

double Google_Protobuf_ServiceOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 2;
  return result;
}

void (*Google_Protobuf_ServiceDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = MEMORY[0x277D84F98];
  v11 = MEMORY[0x277D84F90];
  v12 = 0xC000000000000000;
  if (v6)
  {
    v11 = *(v5 + 40);
    v13 = *(v5 + 48);
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v12 = *(v5 + 56);
    v10 = *(v5 + 64);
    v14 = *(v5 + 72);
  }

  else
  {
    v14 = 2;
  }

  *v4 = v11;
  *(v4 + 8) = v13;
  *(v4 + 16) = v12;
  *(v4 + 24) = v10;
  *(v4 + 32) = v14;
  sub_268601C34(v6, v7, v8);
  return sub_2685E7AC4;
}

void sub_2685E7AF0(uint64_t **a1, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v11 = *(*a1 + 32);
  v12 = (*a1)[14];
  if (a2)
  {
    v13 = **a1;

    sub_2685BA80C(v7, v10);

    v14 = *(v12 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v12 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = v6[14];
      a3(0);
      swift_allocObject();
      v16 = a4(v16);
      *(v17 + 16) = v16;
    }

    swift_beginAccess();
    v18 = *(v16 + 40);
    v19 = *(v16 + 48);
    v20 = *(v16 + 56);
    v21 = *(v16 + 64);
    *(v16 + 40) = v8;
    *(v16 + 48) = v7;
    *(v16 + 56) = v10;
    *(v16 + 64) = v9;
    v22 = *(v16 + 72);
    *(v16 + 72) = v11;
    sub_268601C90(v18, v19, v20);
    v23 = *v6;
    v24 = v6[1];
    v25 = v6[2];
    v26 = v6[3];

    sub_2685B593C(v24, v25);
  }

  else
  {
    v27 = *(v12 + 16);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v12 + 16);
    if ((v28 & 1) == 0)
    {
      v30 = v6[14];
      a3(0);
      swift_allocObject();
      v29 = a4(v29);
      *(v30 + 16) = v29;
    }

    swift_beginAccess();
    v31 = *(v29 + 40);
    v32 = *(v29 + 48);
    v33 = *(v29 + 56);
    v34 = *(v29 + 64);
    *(v29 + 40) = v8;
    *(v29 + 48) = v7;
    *(v29 + 56) = v10;
    *(v29 + 64) = v9;
    v35 = *(v29 + 72);
    *(v29 + 72) = v11;
    sub_268601C90(v31, v32, v33);
  }

  free(v6);
}

uint64_t sub_2685E7CB4(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1(0);
    swift_allocObject();
    v7 = a2(v7);
    *(v2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  v11 = *(v7 + 64);
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  v12 = *(v7 + 72);
  *(v7 + 72) = 0;
  return sub_268601C90(v8, v9, v10);
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV4nameSSvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E7E10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E7E74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v7);

    *(a2 + 16) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  v9 = *(v7 + 24);
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
}

uint64_t Google_Protobuf_MethodDescriptorProto.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v9 = sub_2686145F0(v8);

    *(v3 + 16) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v10 = *(v8 + 24);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

void (*Google_Protobuf_MethodDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E8070;
}

void sub_2685E8070(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v11 = sub_2686145F0(v9);

      *(v10 + 16) = v11;
      v9 = v11;
    }

    swift_beginAccess();
    v12 = *(v9 + 24);
    *(v9 + 16) = v3;
    *(v9 + 24) = v5;

    v13 = v2[10];
  }

  else
  {
    v14 = *(v4 + 16);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v4 + 16);
    if ((v15 & 1) == 0)
    {
      v17 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v18 = sub_2686145F0(v16);

      *(v17 + 16) = v18;
      v16 = v18;
    }

    swift_beginAccess();
    v19 = *(v16 + 24);
    *(v16 + 16) = v3;
    *(v16 + 24) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearName()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2686145F0(v4);

    *(v1 + 16) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v6 = *(v4 + 24);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t _s20SiriOntologyProtobuf07Google_C20_FileDescriptorProtoV7packageSSvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E829C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E8300(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v7);

    *(a2 + 16) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  v9 = *(v7 + 40);
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
}

uint64_t Google_Protobuf_MethodDescriptorProto.inputType.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v9 = sub_2686145F0(v8);

    *(v3 + 16) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v10 = *(v8 + 40);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

void (*Google_Protobuf_MethodDescriptorProto.inputType.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 40))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E84FC;
}

void sub_2685E84FC(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v11 = sub_2686145F0(v9);

      *(v10 + 16) = v11;
      v9 = v11;
    }

    swift_beginAccess();
    v12 = *(v9 + 40);
    *(v9 + 32) = v3;
    *(v9 + 40) = v5;

    v13 = v2[10];
  }

  else
  {
    v14 = *(v4 + 16);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v4 + 16);
    if ((v15 & 1) == 0)
    {
      v17 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v18 = sub_2686145F0(v16);

      *(v17 + 16) = v18;
      v16 = v18;
    }

    swift_beginAccess();
    v19 = *(v16 + 40);
    *(v16 + 32) = v3;
    *(v16 + 40) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearInputType()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2686145F0(v4);

    *(v1 + 16) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v6 = *(v4 + 40);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
}

uint64_t Google_Protobuf_MethodDescriptorProto.outputType.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 56))
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E8728@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 56))
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E878C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v7);

    *(a2 + 16) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  v9 = *(v7 + 56);
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
}

uint64_t Google_Protobuf_MethodDescriptorProto.outputType.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v9 = sub_2686145F0(v8);

    *(v3 + 16) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v10 = *(v8 + 56);
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
}

void (*Google_Protobuf_MethodDescriptorProto.outputType.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (*(v5 + 56))
  {
    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E8988;
}

void sub_2685E8988(uint64_t a1, char a2)
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
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v11 = sub_2686145F0(v9);

      *(v10 + 16) = v11;
      v9 = v11;
    }

    swift_beginAccess();
    v12 = *(v9 + 56);
    *(v9 + 48) = v3;
    *(v9 + 56) = v5;

    v13 = v2[10];
  }

  else
  {
    v14 = *(v4 + 16);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v4 + 16);
    if ((v15 & 1) == 0)
    {
      v17 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v18 = sub_2686145F0(v16);

      *(v17 + 16) = v18;
      v16 = v18;
    }

    swift_beginAccess();
    v19 = *(v16 + 56);
    *(v16 + 48) = v3;
    *(v16 + 56) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_MethodDescriptorProto.hasOutputType.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 56) != 0;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearOutputType()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2686145F0(v4);

    *(v1 + 16) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v6 = *(v4 + 56);
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
}

uint64_t Google_Protobuf_MethodDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = *(v3 + 96);
  v9 = MEMORY[0x277D84F98];
  v10 = 0xC000000000000000;
  v11 = MEMORY[0x277D84F90];
  if (v4)
  {
    v11 = *(v3 + 64);
    v12 = *(v3 + 72);
  }

  else
  {
    v12 = 0;
  }

  if (v4)
  {
    v10 = *(v3 + 80);
    v9 = *(v3 + 88);
    v13 = *(v3 + 96);
  }

  else
  {
    v13 = 2;
  }

  if (v4)
  {
    v14 = HIBYTE(*(v3 + 96));
  }

  else
  {
    v14 = 3;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *(a1 + 32) = v13;
  *(a1 + 33) = v14;
  return sub_268601C34(v4, v5, v6);
}

double sub_2685E8C38@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v11 = *a1;
  v12 = v3;
  Google_Protobuf_MethodDescriptorProto.options.getter(&v7);
  v4 = v9;
  v5 = v10;
  *a2 = v7;
  result = *&v8;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_2685E8C9C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);

  sub_2685BA80C(v4, v5);

  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v12 = sub_2686145F0(v11);

    *(a2 + 16) = v12;
    v11 = v12;
  }

  swift_beginAccess();
  v13 = *(v11 + 64);
  v14 = *(v11 + 72);
  v15 = *(v11 + 80);
  v16 = *(v11 + 88);
  *(v11 + 64) = v3;
  *(v11 + 72) = v4;
  *(v11 + 80) = v5;
  *(v11 + 88) = v6;
  v17 = *(v11 + 96);
  *(v11 + 96) = v7 | (v8 << 8);
  return sub_268601C90(v13, v14, v15);
}

uint64_t Google_Protobuf_MethodDescriptorProto.options.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v12 = sub_2686145F0(v11);

    *(v2 + 16) = v12;
    v11 = v12;
  }

  swift_beginAccess();
  v13 = *(v11 + 64);
  v14 = *(v11 + 72);
  v15 = *(v11 + 80);
  v16 = *(v11 + 88);
  *(v11 + 64) = v3;
  *(v11 + 72) = v4;
  *(v11 + 80) = v5;
  *(v11 + 88) = v6;
  v17 = *(v11 + 96);
  *(v11 + 96) = v7 | (v8 << 8);
  return sub_268601C90(v13, v14, v15);
}

double Google_Protobuf_MethodOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 770;
  return result;
}

void (*Google_Protobuf_MethodDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  v10 = *(v5 + 96);
  v11 = MEMORY[0x277D84F98];
  v12 = 0xC000000000000000;
  v13 = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = *(v5 + 64);
    v14 = *(v5 + 72);
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v12 = *(v5 + 80);
    v11 = *(v5 + 88);
    v15 = *(v5 + 96);
  }

  else
  {
    v15 = 2;
  }

  if (v6)
  {
    v16 = HIBYTE(*(v5 + 96));
  }

  else
  {
    v16 = 3;
  }

  *v4 = v13;
  *(v4 + 8) = v14;
  *(v4 + 16) = v12;
  *(v4 + 24) = v11;
  *(v4 + 32) = v15;
  *(v4 + 33) = v16;
  sub_268601C34(v6, v7, v8);
  return sub_2685E8F70;
}

void sub_2685E8F70(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 33);
  v9 = (*a1)[14];
  if (a2)
  {
    v10 = **a1;

    sub_2685BA80C(v3, v6);

    v11 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = v2[14];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v15 = sub_2686145F0(v13);

      *(v14 + 16) = v15;
      v13 = v15;
    }

    swift_beginAccess();
    v16 = *(v13 + 64);
    v17 = *(v13 + 72);
    v18 = *(v13 + 80);
    v19 = *(v13 + 88);
    *(v13 + 64) = v4;
    *(v13 + 72) = v3;
    *(v13 + 80) = v6;
    *(v13 + 88) = v5;
    v20 = *(v13 + 96);
    *(v13 + 96) = v7 | (v8 << 8);
    sub_268601C90(v16, v17, v18);
    v21 = *v2;
    v22 = v2[1];
    v23 = v2[2];
    v24 = v2[3];

    sub_2685B593C(v22, v23);
  }

  else
  {
    v25 = *(v9 + 16);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v9 + 16);
    if ((v26 & 1) == 0)
    {
      v28 = v2[14];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v29 = sub_2686145F0(v27);

      *(v28 + 16) = v29;
      v27 = v29;
    }

    swift_beginAccess();
    v30 = *(v27 + 64);
    v31 = *(v27 + 72);
    v32 = *(v27 + 80);
    v33 = *(v27 + 88);
    *(v27 + 64) = v4;
    *(v27 + 72) = v3;
    *(v27 + 80) = v6;
    *(v27 + 88) = v5;
    v34 = *(v27 + 96);
    *(v27 + 96) = v7 | (v8 << 8);
    sub_268601C90(v30, v31, v32);
  }

  free(v2);
}

BOOL Google_Protobuf_MethodDescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearOptions()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2686145F0(v4);

    *(v1 + 16) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v6 = *(v4 + 64);
  v7 = *(v4 + 72);
  v8 = *(v4 + 80);
  v9 = *(v4 + 88);
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  v10 = *(v4 + 96);
  *(v4 + 96) = 0;
  sub_268601C90(v6, v7, v8);
}

uint64_t Google_Protobuf_MethodDescriptorProto.clientStreaming.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 98) & 1;
}

uint64_t sub_2685E9244(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2686145F0(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 98) = v3;
  return result;
}

uint64_t Google_Protobuf_MethodDescriptorProto.clientStreaming.setter(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2686145F0(v6);

    *(v2 + 16) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 98) = a1 & 1;
  return result;
}

void (*Google_Protobuf_MethodDescriptorProto.clientStreaming.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 98) & 1;
  return sub_2685E93FC;
}

void sub_2685E93FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v6);

    *(v7 + 16) = v8;
    v6 = v8;
  }

  swift_beginAccess();
  *(v6 + 98) = v3;

  free(v1);
}

BOOL Google_Protobuf_MethodDescriptorProto.hasClientStreaming.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 98) != 2;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearClientStreaming()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2686145F0(v4);

    *(v1 + 16) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 98) = 2;
}

uint64_t Google_Protobuf_MethodDescriptorProto.serverStreaming.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 99) & 1;
}

uint64_t sub_2685E95D8(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2686145F0(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 99) = v3;
  return result;
}

uint64_t Google_Protobuf_MethodDescriptorProto.serverStreaming.setter(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2686145F0(v6);

    *(v2 + 16) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 99) = a1 & 1;
  return result;
}

void (*Google_Protobuf_MethodDescriptorProto.serverStreaming.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 99) & 1;
  return sub_2685E9790;
}

void sub_2685E9790(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v6);

    *(v7 + 16) = v8;
    v6 = v8;
  }

  swift_beginAccess();
  *(v6 + 99) = v3;

  free(v1);
}

BOOL Google_Protobuf_MethodDescriptorProto.hasServerStreaming.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 99) != 2;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearServerStreaming()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2686145F0(v4);

    *(v1 + 16) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 99) = 2;
}

uint64_t sub_2685E9968@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_26868A5E0;
  a1(0);
  result = swift_initStaticObject();
  *(a2 + 16) = result;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E9A18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E9A7C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 24);
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
}

uint64_t Google_Protobuf_FileOptions.javaPackage.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 24);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

void (*Google_Protobuf_FileOptions.javaPackage.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E9C58;
}

void sub_2685E9C58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 24);
    *(v9 + 16) = v3;
    *(v9 + 24) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 24);
    *(v15 + 16) = v3;
    *(v15 + 24) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasJavaPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaPackage()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
}

uint64_t Google_Protobuf_FileOptions.javaOuterClassname.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E9EB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E9F14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 40);
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
}

uint64_t Google_Protobuf_FileOptions.javaOuterClassname.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 40);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

void (*Google_Protobuf_FileOptions.javaOuterClassname.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 40))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EA0F0;
}

void sub_2685EA0F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 40);
    *(v9 + 32) = v3;
    *(v9 + 40) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 40);
    *(v15 + 32) = v3;
    *(v15 + 40) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasJavaOuterClassname.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaOuterClassname()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

uint64_t Google_Protobuf_FileOptions.javaMultipleFiles.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 48) & 1;
}

uint64_t sub_2685EA328(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 48) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaMultipleFiles.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 48) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.javaMultipleFiles.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 48) & 1;
  return sub_2685EA4C8;
}

void sub_2685EA4C8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 48) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasJavaMultipleFiles.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 48) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaMultipleFiles()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 48) = 2;
}

uint64_t Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 49) & 1;
}

uint64_t sub_2685EA690(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 49) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 49) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 49) & 1;
  return sub_2685EA830;
}

void sub_2685EA830(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 49) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasJavaGenerateEqualsAndHash.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 49) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaGenerateEqualsAndHash()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 49) = 2;
}