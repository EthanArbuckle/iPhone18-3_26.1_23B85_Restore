void sub_26959FCF4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a1 & 0xC000000000000001;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2695B1278();
  v4 = a1 & 0xC000000000000001;
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v35 = MEMORY[0x277D84F90];
  do
  {
    v6 = v5;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x26D6416E0](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 invocation];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 keyboardInvocationContext];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v5 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = [v11 keyboardPresented];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_26959F730(0, *(v35 + 2) + 1, 1, v35);
    }

    v15 = *(v35 + 2);
    v14 = *(v35 + 3);
    if (v15 >= v14 >> 1)
    {
      v35 = sub_26959F730((v14 > 1), v15 + 1, 1, v35);
    }

    *(v35 + 2) = v15 + 1;
    v35[v15 + 32] = v12;
  }

  while (v5 != v3);
LABEL_24:
  v16 = *(v35 + 2);
  v17 = (v35 + 32);
  do
  {
    if (v16-- == 0)
    {
      break;
    }

    v19 = *v17++;
  }

  while (v19 != 1);

  if (v3)
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    v22 = 0x279C65000uLL;
    do
    {
      v23 = v20;
      while (1)
      {
        if (v4)
        {
          v24 = MEMORY[0x26D6416E0](v23, a1);
        }

        else
        {
          if (v23 >= *(v2 + 16))
          {
            goto LABEL_51;
          }

          v24 = *(a1 + 8 * v23 + 32);
        }

        v25 = v24;
        v20 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          return;
        }

        v26 = [v24 invocation];
        if (v26)
        {
          break;
        }

        ++v23;
        if (v20 == v3)
        {
          goto LABEL_46;
        }
      }

      v27 = *(v22 + 3584);
      v28 = v26;
      v29 = [v26 v27];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_26959F824(0, *(v21 + 2) + 1, 1, v21, &qword_28031D338, &qword_2695B2CE8);
      }

      v31 = *(v21 + 2);
      v30 = *(v21 + 3);
      if (v31 >= v30 >> 1)
      {
        v21 = sub_26959F824((v30 > 1), v31 + 1, 1, v21, &qword_28031D338, &qword_2695B2CE8);
      }

      *(v21 + 2) = v31 + 1;
      *&v21[4 * v31 + 32] = v29;
      v22 = 0x279C65000;
    }

    while (v20 != v3);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_46:
  v32 = *(v21 + 2);
  v33 = 32;
  do
  {
    if (!v32)
    {
      break;
    }

    v34 = *&v21[v33];
    v33 += 4;
    --v32;
  }

  while (v34 != 11);
}

uint64_t sub_2695A005C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_2695B1278();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = 0x279C65000uLL;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6416E0](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 ueiRequestCategorization];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = *(v6 + 3544);
    v12 = v10;
    v13 = [v10 v11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_26959F824(0, *(v5 + 2) + 1, 1, v5, &qword_28031D318, "f!");
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_26959F824((v14 > 1), v15 + 1, 1, v5, &qword_28031D318, "f!");
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v13;
    v6 = 0x279C65000;
  }

  while (v4 != v3);
LABEL_23:
  v16 = *(v5 + 2);
  if (v16)
  {
    v17 = (v5 + 32);
    do
    {
      v18 = v16-- != 0;
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = *v17++;
    }

    while (v20 != 2);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

BOOL sub_2695A023C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2695B1278();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D6416E0](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 requestContext];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 cancelled];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = [v11 reason];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_26959F824(0, *(v5 + 2) + 1, 1, v5, &qword_28031D330, &qword_2695B2CE0);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_26959F824((v14 > 1), v15 + 1, 1, v5, &qword_28031D330, &qword_2695B2CE0);
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v12;
  }

  while (v4 != v3);
LABEL_24:
  v16 = *(v5 + 2);
  v17 = 32;
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *&v5[v17];
    v17 += 4;
  }

  while (v20 != 1);
  v21 = v18 != 0;

  return v21;
}

BOOL sub_2695A0440(unint64_t a1, SEL *a2)
{
  v15 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v5 = sub_2695B1278();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6416E0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = [v8 *a2];

    ++v6;
    if (v11)
    {
      MEMORY[0x26D6414F0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2695B1058();
      }

      sub_2695B1068();
      v7 = v15;
      v6 = v10;
    }
  }

  if (v7 >> 62)
  {
    v13 = sub_2695B1278();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13 != 0;
}

BOOL sub_2695A05CC(unint64_t a1, SEL *a2)
{
  v17 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_2695B1278();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6416E0](v7, a1);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 requestContext];
      if (v10)
      {
        break;
      }

LABEL_6:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    v12 = [v10 *a2];

    if (!v12)
    {
      goto LABEL_6;
    }

    MEMORY[0x26D6414F0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2695B1058();
    }

    sub_2695B1068();
    v6 = v17;
  }

  while (v5 != v4);
LABEL_23:
  if (v6 >> 62)
  {
    v14 = sub_2695B1278();
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v14 != 0;
}

BOOL sub_2695A079C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_2695B1278();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = 0x279C65000uLL;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6416E0](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 invocation];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    [v10 *(v6 + 3584)];

    sub_2695B1188();
    sub_2695A133C();
    v12 = sub_2695B11A8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_26959F730(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_26959F730((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v5[v14 + 32] = v12 & 1;
    v6 = 0x279C65000;
  }

  while (v4 != v3);
LABEL_23:
  v15 = *(v5 + 2);
  v16 = (v5 + 32);
  do
  {
    v17 = v15;
    if (v15-- == 0)
    {
      break;
    }

    v19 = *v16++;
  }

  while (v19 != 1);
  v20 = v17 != 0;

  return v20;
}

BOOL sub_2695A09C4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_41:
    v3 = sub_2695B1278();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = a1 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = 0;
    v7 = 0x279C65000uLL;
    do
    {
      v8 = v6;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x26D6416E0](v8, a1);
        }

        else
        {
          if (v8 >= *(v2 + 16))
          {
            goto LABEL_40;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v11 = [v9 invocation];
        if (v11)
        {
          break;
        }

        ++v8;
        if (v6 == v3)
        {
          goto LABEL_19;
        }
      }

      v12 = v11;
      [v11 *(v7 + 3584)];

      sub_2695B1188();
      sub_2695A133C();
      v13 = sub_2695B11A8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_26959F730(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_26959F730((v14 > 1), v15 + 1, 1, v5);
      }

      *(v5 + 2) = v15 + 1;
      v5[v15 + 32] = v13 & 1;
      v7 = 0x279C65000;
    }

    while (v6 != v3);
  }

LABEL_19:
  v16 = *(v5 + 2);
  v17 = (v5 + 32);
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *v17++;
  }

  while (v20 != 1);

  v21 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v3 != v21)
  {
    if (v4)
    {
      v22 = MEMORY[0x26D6416E0](v21, a1);
    }

    else
    {
      if (v21 >= *(v2 + 16))
      {
        goto LABEL_38;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v25 = [v22 dictationContext];

    ++v21;
    if (v25)
    {
      MEMORY[0x26D6414F0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2695B1058();
      }

      sub_2695B1068();
      v30 = v31;
      v21 = v24;
    }
  }

  if (v30 >> 62)
  {
    v27 = sub_2695B1278();
  }

  else
  {
    v27 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v18 | v27;

  return v28 != 0;
}

uint64_t sub_2695A0CF8(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_97;
  }

  v57 = a2 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2695B1278())
  {
    v58 = v2 & 0xC000000000000001;
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      do
      {
        v7 = v5;
        while (1)
        {
          if (v58)
          {
            v8 = MEMORY[0x26D6416E0](v7, v2);
          }

          else
          {
            if (v7 >= *(v57 + 16))
            {
              goto LABEL_92;
            }

            v8 = *(v2 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          v10 = [v8 ueiRequestCategorization];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == i)
          {
            goto LABEL_21;
          }
        }

        v11 = v10;
        v12 = [v10 requestStatus];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_26959F824(0, *(v6 + 2) + 1, 1, v6, &qword_28031D318, "f!");
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_26959F824((v13 > 1), v14 + 1, 1, v6, &qword_28031D318, "f!");
        }

        *(v6 + 2) = v14 + 1;
        *&v6[4 * v14 + 32] = v12;
      }

      while (v5 != i);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v15 = *(v6 + 2);
    v16 = 32;
    do
    {
      v17 = v15;
      v18 = v15-- != 0;
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = *&v6[v16];
      v16 += 4;
    }

    while (v20 != 3);
    v55 = v19;

    v60 = v4;
    if (a1 >> 62)
    {
      v21 = sub_2695B1278();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = a1 & 0xC000000000000001;
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x277D84F90];
LABEL_32:
      v24 = v22;
      while (1)
      {
        if (v59)
        {
          v25 = MEMORY[0x26D6416E0](v24, a1);
        }

        else
        {
          if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          v25 = *(a1 + 8 * v24 + 32);
        }

        v26 = v25;
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v27 = [v25 requestContext];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 ended];

          if (v29)
          {
            MEMORY[0x26D6414F0]();
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v30 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2695B1058();
            }

            sub_2695B1068();
            v23 = v60;
            if (v22 != v21)
            {
              goto LABEL_32;
            }

            goto LABEL_48;
          }
        }

        else
        {
        }

        ++v24;
        if (v22 == v21)
        {
          goto LABEL_48;
        }
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_48:
    v54 = v23 >> 62 ? sub_2695B1278() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v31 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v32 = 0;
    v33 = MEMORY[0x277D84F90];
LABEL_52:
    v34 = v32;
    while (1)
    {
      if (v58)
      {
        v35 = MEMORY[0x26D6416E0](v34, v2);
      }

      else
      {
        if (v34 >= *(v57 + 16))
        {
          goto LABEL_96;
        }

        v35 = *(v2 + 8 * v34 + 32);
      }

      v36 = v35;
      v32 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = [v35 ueiRequestCategorization];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 requestStatus];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_26959F824(0, *(v33 + 2) + 1, 1, v33, &qword_28031D318, "f!");
        }

        v41 = *(v33 + 2);
        v40 = *(v33 + 3);
        if (v41 >= v40 >> 1)
        {
          v33 = sub_26959F824((v40 > 1), v41 + 1, 1, v33, &qword_28031D318, "f!");
        }

        *(v33 + 2) = v41 + 1;
        *&v33[4 * v41 + 32] = v39;
        if (v32 != i)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

      ++v34;
      if (v32 == i)
      {
        goto LABEL_68;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    v57 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_68:
  v42 = *(v33 + 2);
  v43 = 32;
  do
  {
    v44 = v42;
    if (!v42)
    {
      break;
    }

    v45 = *&v33[v43];
    v43 += 4;
    --v42;
  }

  while (v45 != 1);

  v2 = 0;
  v61 = v31;
  while (v21 != v2)
  {
    if (v59)
    {
      v46 = MEMORY[0x26D6416E0](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v46 = *(a1 + 8 * v2 + 32);
    }

    v47 = v46;
    v48 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v49 = [v46 partialResultGenerated];

    ++v2;
    if (v49)
    {
      MEMORY[0x26D6414F0]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v50 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2695B1058();
      }

      sub_2695B1068();
      v31 = v61;
      v2 = v48;
    }
  }

  if (v31 >> 62)
  {
    v51 = sub_2695B1278();
  }

  else
  {
    v51 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = (v54 | v51) != 0;
  if (!v44)
  {
    v52 = v55;
  }

  if (v17)
  {
    return v55;
  }

  else
  {
    return v52;
  }
}

unint64_t sub_2695A133C()
{
  result = qword_28031D320;
  if (!qword_28031D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D320);
  }

  return result;
}

uint64_t sub_2695A1390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v83 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A8, &unk_2695B2900);
  v4 = *(*(v80 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v80);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v66 - v15;
  v17 = sub_2695B0C78();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v76 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v78 = &v66 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v81 = &v66 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v66 - v26;
  sub_2695A37EC(v83, v16, &unk_28031D370, &unk_2695B2800);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2695A3348(v16, &unk_28031D370, &unk_2695B2800);
    return sub_2695A37EC(v3, v82, &qword_28031D1B8, &qword_2695B2538);
  }

  else
  {
    v70 = v12;
    v74 = *(v18 + 32);
    v75 = v18 + 32;
    v74(v27, v16, v17);
    v29 = *(v9 + 36);
    v77 = sub_269595A24();
    v30 = sub_2695B0F78();
    v31 = *(v18 + 16);
    v71 = v29;
    if (v30)
    {
      v32 = (v3 + v29);
      v33 = v81;
      v34 = v81;
    }

    else
    {
      v33 = v81;
      v34 = v81;
      v32 = v27;
    }

    v31(v34, v32, v17);
    result = sub_2695B0F98();
    if (result)
    {
      v35 = v79;
      v67 = v27;
      v31(v79, v27, v17);
      v68 = v3;
      v36 = v9;
      v37 = v80;
      v38 = v35 + *(v80 + 48);
      v73 = v31;
      v31(v38, v33, v17);
      sub_2695A37EC(v35, v7, &qword_28031D2A8, &unk_2695B2900);
      v39 = *(v37 + 48);
      v40 = v70;
      v41 = v7;
      v83 = v7;
      v42 = v74;
      v74(v70, v41, v17);
      v43 = &v83[v39];
      v44 = *(v18 + 8);
      v44(v43, v17);
      sub_2695A3854(v35, v83, &qword_28031D2A8, &unk_2695B2900);
      v45 = *(v37 + 48);
      v69 = v36;
      v46 = *(v36 + 36);
      v47 = v68;
      v42(v40 + v46, &v83[v45], v17);
      v48 = v40;
      v44(v83, v17);
      v49 = sub_2695B0F68();
      v72 = v18 + 16;
      if (v49)
      {
        v73(v78, v40, v17);
      }

      else
      {
        if (sub_2695B0F78())
        {
          v50 = v40 + v46;
          v51 = v78;
        }

        else
        {
          v51 = v78;
          v50 = v47;
        }

        v73(v51, v50, v17);
      }

      v52 = v81;
      v53 = v67;
      v54 = v71;
      v55 = sub_2695B0F78();
      v66 = v44;
      if (v55)
      {
        v44(v52, v17);
        v44(v53, v17);
        v56 = v76;
        v73(v76, v48 + v46, v17);
        sub_2695A3348(v48, &qword_28031D1B8, &qword_2695B2538);
      }

      else
      {
        v57 = sub_2695B0F68();
        v44(v52, v17);
        v44(v53, v17);
        if (v57)
        {
          v56 = v76;
          v73(v76, v48, v17);
          sub_2695A3348(v48, &qword_28031D1B8, &qword_2695B2538);
        }

        else
        {
          sub_2695A3348(v48, &qword_28031D1B8, &qword_2695B2538);
          v56 = v76;
          v73(v76, v47 + v54, v17);
        }
      }

      v58 = v79;
      v59 = v74;
      v74(v79, v78, v17);
      v60 = v80;
      v59(v58 + *(v80 + 48), v56, v17);
      v61 = v83;
      sub_2695A37EC(v58, v83, &qword_28031D2A8, &unk_2695B2900);
      v62 = *(v60 + 48);
      v63 = v82;
      v59(v82, v61, v17);
      v64 = (v61 + v62);
      v65 = v66;
      v66(v64, v17);
      sub_2695A3854(v58, v61, &qword_28031D2A8, &unk_2695B2900);
      v59(v63 + *(v69 + 36), (v61 + *(v60 + 48)), v17);
      return v65(v61, v17);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2695A1AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v50 - v10;
  v11 = sub_2695B0C78();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v50 - v27;
  v50 = a1;
  sub_2695A1390(a2, &v50 - v27);
  v29 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v30 = [v29 Wireless];
  swift_unknownObjectRelease();
  v31 = [v30 Bluetooth];
  swift_unknownObjectRelease();
  sub_2695A2A60(v31, v28, sub_2695A2158, 0, v24);

  v52 = a2;
  v32 = v11;
  v33 = v54;
  sub_2695968A8(v24, a2, v22);
  sub_2695A37EC(v22, v19, &unk_28031D370, &unk_2695B2800);
  v34 = *(v33 + 48);
  v53 = v32;
  if (v34(v19, 1, v32) == 1)
  {
    sub_2695A3348(v22, &unk_28031D370, &unk_2695B2800);
    sub_2695A3348(v24, &unk_28031D370, &unk_2695B2800);
    sub_2695A3348(v28, &qword_28031D1B8, &qword_2695B2538);
    sub_2695A3348(v19, &unk_28031D370, &unk_2695B2800);
    SeenResult = type metadata accessor for SegmentFlagLastSeenResult();
    v42 = v56;
    result = sub_2695A37EC(v52, &v56[*(SeenResult + 20)], &unk_28031D370, &unk_2695B2800);
  }

  else
  {
    v35 = *(v33 + 32);
    v35(v14, v19, v53);
    v36 = *(v25 + 36);
    v37 = sub_2695B0C98();
    v38 = v55;
    (*(*(v37 - 8) + 56))(v55, 1, 1, v37);
    v39 = sub_2695B0D68();
    v40 = v51;
    (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
    v45 = sub_2695AB4A4(v50 + v36, v38, v40);
    sub_2695A3348(v40, &unk_28031D360, &unk_2695B2B50);
    sub_2695A3348(v55, &qword_28031D288, &qword_2695B28D0);
    sub_2695A3348(v22, &unk_28031D370, &unk_2695B2800);
    sub_2695A3348(v24, &unk_28031D370, &unk_2695B2800);
    sub_2695A3348(v28, &qword_28031D1B8, &qword_2695B2538);
    if (v45 <= 27)
    {
      v46 = *(type metadata accessor for SegmentFlagLastSeenResult() + 20);
      v42 = v56;
      v47 = v53;
      v35(&v56[v46], v14, v53);
      result = (*(v33 + 56))(&v42[v46], 0, 1, v47);
      v44 = 4;
      goto LABEL_5;
    }

    v48 = v53;
    (*(v33 + 8))(v14, v53);
    v49 = type metadata accessor for SegmentFlagLastSeenResult();
    v42 = v56;
    result = (*(v33 + 56))(&v56[*(v49 + 20)], 1, 1, v48);
  }

  v44 = 7;
LABEL_5:
  *v42 = v44;
  return result;
}

uint64_t sub_2695A2178@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v67 = a3;
  v65 = a1;
  v72 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v7 = v6 - 8;
  v66 = *(v6 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v61 - v15;
  v17 = swift_allocObject();
  v71 = v17;
  *(v17 + 16) = 0;
  v61[1] = v17 + 16;
  v18 = swift_allocObject();
  v70 = v18;
  *(v18 + 16) = 0;
  v61[3] = v18 + 16;
  v19 = swift_allocObject();
  v74 = v19;
  *(v19 + 16) = 0;
  v61[2] = v19 + 16;
  v63 = v11;
  v73 = swift_allocBox();
  v21 = v20;
  v22 = sub_2695B0C78();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v69 = v21;
  v24(v21, 1, 1, v22);
  v25 = sub_2695B0FB8();
  v26 = *(v7 + 44);
  (*(v23 + 16))(v16, a2, v22);
  v24(v16, 0, 1, v22);
  v27 = sub_2695B0C38();
  v28 = 0;
  if ((*(v23 + 48))(v16, 1, v22) != 1)
  {
    v28 = sub_2695B0C38();
    (*(v23 + 8))(v16, v22);
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v27 endDate:v28 maxEvents:0 lastN:0 reversed:1];

  v65 = [v65 publisherWithUseCase:v25 options:v29];
  v80 = sub_2695AC690;
  v81 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_2695A33A8;
  v79 = &block_descriptor_14;
  v64 = _Block_copy(&aBlock);
  sub_2695A37EC(a2, v10, &qword_28031D1B8, &qword_2695B2538);
  v30 = (*(v66 + 80) + 24) & ~*(v66 + 80);
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v10;
  v33 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v71;
  *(v36 + 16) = v71;
  sub_2695A3854(v32, v36 + v30, &qword_28031D1B8, &qword_2695B2538);
  v38 = (v36 + v31);
  v39 = v68;
  *v38 = v67;
  v38[1] = v39;
  *(v36 + v33) = v73;
  *(v36 + v34) = v74;
  v40 = v70;
  *(v36 + v35) = v70;
  v80 = sub_2695A3B5C;
  v81 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_2695A3708;
  v79 = &block_descriptor_20;
  v41 = _Block_copy(&aBlock);

  v42 = v40;

  v43 = v65;
  v44 = v64;
  v45 = [v65 sinkWithCompletion:v64 shouldContinue:v41];
  _Block_release(v41);
  _Block_release(v44);

  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v46 = sub_2695B0EF8();
  __swift_project_value_buffer(v46, qword_2814B2250);
  swift_retain_n();
  swift_retain_n();

  v47 = sub_2695B0ED8();
  v48 = sub_2695B1128();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v49 = 136316418;
    *(v49 + 4) = sub_26959CE44(0xD000000000000027, 0x80000002695B3DE0, &aBlock);
    *(v49 + 12) = 2048;
    swift_beginAccess();
    *(v49 + 14) = *(v37 + 16);

    *(v49 + 22) = 2080;
    v75 = sub_2695A3AFC(0, &qword_28031D3A0, 0x277CF1030);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D3A8, &qword_2695B2D18);
    v51 = sub_2695B0FC8();
    v53 = sub_26959CE44(v51, v52, &aBlock);

    *(v49 + 24) = v53;
    *(v49 + 32) = 2048;
    swift_beginAccess();
    v54 = *(v74 + 16);

    *(v49 + 34) = v54;

    *(v49 + 42) = 2048;
    swift_beginAccess();
    v55 = *(v42 + 16);

    *(v49 + 44) = v55;

    *(v49 + 52) = 2080;
    v56 = v69;
    swift_beginAccess();
    sub_2695A37EC(v56, v62, &unk_28031D370, &unk_2695B2800);
    v57 = sub_2695B0FC8();
    v59 = sub_26959CE44(v57, v58, &aBlock);

    *(v49 + 54) = v59;
    _os_log_impl(&dword_269588000, v47, v48, "%s Scanned %ld %s events; %ld more recent, non-matching events; %ld date out of range; result %s", v49, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v50, -1, -1);
    MEMORY[0x26D641DE0](v49, -1, -1);
  }

  else
  {

    v56 = v69;
  }

  swift_beginAccess();
  sub_2695A37EC(v56, v72, &unk_28031D370, &unk_2695B2800);
}

uint64_t sub_2695A2A60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v67 = a3;
  v65 = a1;
  v72 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v7 = v6 - 8;
  v66 = *(v6 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v61 - v15;
  v17 = swift_allocObject();
  v71 = v17;
  *(v17 + 16) = 0;
  v61[1] = v17 + 16;
  v18 = swift_allocObject();
  v70 = v18;
  *(v18 + 16) = 0;
  v61[3] = v18 + 16;
  v19 = swift_allocObject();
  v74 = v19;
  *(v19 + 16) = 0;
  v61[2] = v19 + 16;
  v63 = v11;
  v73 = swift_allocBox();
  v21 = v20;
  v22 = sub_2695B0C78();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v69 = v21;
  v24(v21, 1, 1, v22);
  v25 = sub_2695B0FB8();
  v26 = *(v7 + 44);
  (*(v23 + 16))(v16, a2, v22);
  v24(v16, 0, 1, v22);
  v27 = sub_2695B0C38();
  v28 = 0;
  if ((*(v23 + 48))(v16, 1, v22) != 1)
  {
    v28 = sub_2695B0C38();
    (*(v23 + 8))(v16, v22);
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v27 endDate:v28 maxEvents:0 lastN:0 reversed:1];

  v65 = [v65 publisherWithUseCase:v25 options:v29];
  v80 = sub_2695AC690;
  v81 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_2695A33A8;
  v79 = &block_descriptor_0;
  v64 = _Block_copy(&aBlock);
  sub_2695A37EC(a2, v10, &qword_28031D1B8, &qword_2695B2538);
  v30 = (*(v66 + 80) + 24) & ~*(v66 + 80);
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v10;
  v33 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v71;
  *(v36 + 16) = v71;
  sub_2695A3854(v32, v36 + v30, &qword_28031D1B8, &qword_2695B2538);
  v38 = (v36 + v31);
  v39 = v68;
  *v38 = v67;
  v38[1] = v39;
  *(v36 + v33) = v73;
  *(v36 + v34) = v74;
  v40 = v70;
  *(v36 + v35) = v70;
  v80 = sub_2695A3778;
  v81 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_2695A3708;
  v79 = &block_descriptor_8;
  v41 = _Block_copy(&aBlock);

  v42 = v40;

  v43 = v65;
  v44 = v64;
  v45 = [v65 sinkWithCompletion:v64 shouldContinue:v41];
  _Block_release(v41);
  _Block_release(v44);

  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v46 = sub_2695B0EF8();
  __swift_project_value_buffer(v46, qword_2814B2250);
  swift_retain_n();
  swift_retain_n();

  v47 = sub_2695B0ED8();
  v48 = sub_2695B1128();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v49 = 136316418;
    *(v49 + 4) = sub_26959CE44(0xD000000000000027, 0x80000002695B3DE0, &aBlock);
    *(v49 + 12) = 2048;
    swift_beginAccess();
    *(v49 + 14) = *(v37 + 16);

    *(v49 + 22) = 2080;
    v75 = sub_2695A3AFC(0, &qword_28031D380, 0x277CF10C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D388, &qword_2695B2D10);
    v51 = sub_2695B0FC8();
    v53 = sub_26959CE44(v51, v52, &aBlock);

    *(v49 + 24) = v53;
    *(v49 + 32) = 2048;
    swift_beginAccess();
    v54 = *(v74 + 16);

    *(v49 + 34) = v54;

    *(v49 + 42) = 2048;
    swift_beginAccess();
    v55 = *(v42 + 16);

    *(v49 + 44) = v55;

    *(v49 + 52) = 2080;
    v56 = v69;
    swift_beginAccess();
    sub_2695A37EC(v56, v62, &unk_28031D370, &unk_2695B2800);
    v57 = sub_2695B0FC8();
    v59 = sub_26959CE44(v57, v58, &aBlock);

    *(v49 + 54) = v59;
    _os_log_impl(&dword_269588000, v47, v48, "%s Scanned %ld %s events; %ld more recent, non-matching events; %ld date out of range; result %s", v49, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v50, -1, -1);
    MEMORY[0x26D641DE0](v49, -1, -1);
  }

  else
  {

    v56 = v69;
  }

  swift_beginAccess();
  sub_2695A37EC(v56, v72, &unk_28031D370, &unk_2695B2800);
}

uint64_t sub_2695A3348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2695A33A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2695A3410(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a5;
  v38 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  v16 = sub_2695B0C78();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  result = swift_beginAccess();
  v23 = *(a2 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_14;
  }

  v36 = v21;
  *(a2 + 16) = v25;
  [a1 timestamp];
  sub_2695B0B98();
  sub_269595A24();
  if (sub_2695B0F98())
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538) + 36);
    if (sub_2695B0F78())
    {
      v27 = [a1 eventBody];
      if (v27)
      {
        v28 = v27;
        v29 = v38();

        if (v29)
        {
          (*(v17 + 32))(v15, v20, v16);
          (*(v17 + 56))(v15, 0, 1, v16);
          v30 = v36;
          swift_beginAccess();
          sub_2695A377C(v15, v30);
          return 0;
        }
      }

      (*(v17 + 8))(v20, v16);
      result = swift_beginAccess();
      v33 = *(a7 + 16);
      v24 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (!v24)
      {
        *(a7 + 16) = v34;
        return 1;
      }

LABEL_15:
      __break(1u);
      return result;
    }
  }

  (*(v17 + 8))(v20, v16);
  result = swift_beginAccess();
  v31 = *(a8 + 16);
  v24 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a8 + 16) = v32;
  return 1;
}

uint64_t sub_2695A3708(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2695A377C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695A37EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2695A3854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_4Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = v0 + v3;
  v9 = sub_2695B0C78();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v10(v8 + v1[11], v9);
  v11 = *(v0 + v4 + 8);

  v12 = *(v0 + v5);

  v13 = *(v0 + v6);

  v14 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | 7);
}

uint64_t sub_2695A3A30(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2695A3410(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

uint64_t sub_2695A3AFC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2695A3B60()
{
  sub_2695B1388();
  sub_2695B0FE8();

  return sub_2695B13A8();
}

unint64_t SegmentFlags.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F7473754377656ELL;
  v3 = 0x6D6F44736D6D6F63;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001ALL;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x73646F50726961;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F69746174636964;
  if (v1 != 1)
  {
    v5 = 7496035;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SiriUserSegments::SegmentFlags_optional __swiftcall SegmentFlags.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2695B1288();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2695A3E10()
{
  result = qword_2814B1FE0;
  if (!qword_2814B1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B1FE0);
  }

  return result;
}

uint64_t sub_2695A3E70()
{
  *v0;
  *v0;
  *v0;
  sub_2695B0FE8();
}

void sub_2695A3FB0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000072656DLL;
  v4 = 0x6F7473754377656ELL;
  v5 = 0xED0000746E616E69;
  v6 = 0x6D6F44736D6D6F63;
  if (v2 != 5)
  {
    v6 = 0xD00000000000001ALL;
    v5 = 0x80000002695B36F0;
  }

  v7 = 0xD000000000000011;
  v8 = 0x80000002695B36C0;
  if (v2 != 3)
  {
    v7 = 0x73646F50726961;
    v8 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE90000000000006ELL;
  v10 = 0x6F69746174636964;
  if (v2 != 1)
  {
    v10 = 7496035;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_2695A4160()
{
  result = qword_28031D3B0;
  if (!qword_28031D3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031D3B8, &qword_2695B2E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2695A4338()
{
  result = qword_28031D3C0;
  if (!qword_28031D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3C0);
  }

  return result;
}

uint64_t sub_2695A438C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000072656DLL;
  v3 = 0x6F7473754377656ELL;
  v4 = a1;
  v5 = 0xED0000746E616E69;
  v6 = 0xD00000000000001ALL;
  if (a1 == 5)
  {
    v6 = 0x6D6F44736D6D6F63;
  }

  else
  {
    v5 = 0x80000002695B36F0;
  }

  v7 = 0xD000000000000011;
  v8 = 0x80000002695B36C0;
  if (a1 != 3)
  {
    v7 = 0x73646F50726961;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x6F69746174636964;
  v10 = 0xE90000000000006ELL;
  if (a1 != 1)
  {
    v9 = 7496035;
    v10 = 0xE300000000000000;
  }

  if (!a1)
  {
    v9 = 0x6F7473754377656ELL;
    v10 = 0xEB0000000072656DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE90000000000006ELL;
        if (v11 != 0x6F69746174636964)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE300000000000000;
        if (v11 != 7496035)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED0000746E616E69;
        if (v11 != 0x6D6F44736D6D6F63)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x80000002695B36F0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x80000002695B36C0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v2 = 0xE700000000000000;
    v3 = 0x73646F50726961;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_2695B1328();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_2695A45C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6F69746174636964;
    v10 = 0xED0000796C6E4F6ELL;
    v11 = 0x80000002695B3730;
    v12 = 0xD000000000000018;
    if (a1 == 3)
    {
      v12 = 0xD000000000000016;
    }

    else
    {
      v11 = 0x80000002695B3750;
    }

    if (a1 != 2)
    {
      v9 = v12;
      v10 = v11;
    }

    v13 = 0x64656C6261736964;
    if (a1)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    if (v2 <= 1)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v3 = 0x80000002695B37D0;
      v4 = 0xD00000000000001ALL;
      v5 = 0x80000002695B37F0;
      v6 = 0xD00000000000001BLL;
      if (a1 != 9)
      {
        v6 = 0xD000000000000014;
        v5 = 0x80000002695B3810;
      }

      v7 = a1 == 8;
    }

    else
    {
      v3 = 0x80000002695B3770;
      v4 = 0xD000000000000013;
      v5 = 0x80000002695B3790;
      v6 = 0xD000000000000012;
      if (a1 != 6)
      {
        v6 = 0xD000000000000016;
        v5 = 0x80000002695B37B0;
      }

      v7 = a1 == 5;
    }

    if (v7)
    {
      v14 = v4;
    }

    else
    {
      v14 = v6;
    }

    if (v7)
    {
      v15 = v3;
    }

    else
    {
      v15 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v16 = 0xE800000000000000;
        if (v14 != 0x64656C6261736964)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        if (v14 != 0x6E776F6E6B6E75)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (a2 == 2)
    {
      v16 = 0xED0000796C6E4F6ELL;
      if (v14 != 0x6F69746174636964)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 != 3)
    {
      v16 = 0x80000002695B3750;
      if (v14 != 0xD000000000000018)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v17 = "active6MonthsOrMoreAgo";
    goto LABEL_57;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      v16 = 0x80000002695B3770;
      if (v14 != 0xD000000000000013)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 6)
    {
      v16 = 0x80000002695B3790;
      if (v14 != 0xD000000000000012)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v17 = "activeWithin7Days1Turn";
LABEL_57:
    v16 = (v17 - 32) | 0x8000000000000000;
    if (v14 != 0xD000000000000016)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    v16 = 0x80000002695B37D0;
    if (v14 != 0xD00000000000001ALL)
    {
      goto LABEL_62;
    }
  }

  else if (a2 == 9)
  {
    v16 = 0x80000002695B37F0;
    if (v14 != 0xD00000000000001BLL)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v16 = 0x80000002695B3810;
    if (v14 != 0xD000000000000014)
    {
LABEL_62:
      v18 = sub_2695B1328();
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v15 != v16)
  {
    goto LABEL_62;
  }

  v18 = 1;
LABEL_63:

  return v18 & 1;
}

uint64_t sub_2695A490C()
{
  sub_2695B0FE8();
}

unint64_t ActivitySegment.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x6F69746174636964;
    v8 = 0xD000000000000016;
    if (v1 != 3)
    {
      v8 = 0xD000000000000018;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0x64656C6261736964;
    }

    if (*v0 <= 1u)
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
    v2 = 0xD00000000000001ALL;
    v3 = 0xD00000000000001BLL;
    if (v1 != 9)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (v1 != 6)
    {
      v4 = 0xD000000000000016;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000013;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

SiriUserSegments::ActivitySegment_optional __swiftcall ActivitySegment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2695B1288();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2695A4CA8()
{
  result = qword_28031D3C8;
  if (!qword_28031D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3C8);
  }

  return result;
}

uint64_t sub_2695A4CFC()
{
  v1 = *v0;
  sub_2695B1388();
  sub_2695A490C();
  return sub_2695B13A8();
}

uint64_t sub_2695A4D4C()
{
  v1 = *v0;
  sub_2695B1388();
  sub_2695A490C();
  return sub_2695B13A8();
}

unint64_t sub_2695A4D9C@<X0>(unint64_t *a1@<X8>)
{
  result = ActivitySegment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2695A4E78()
{
  result = qword_28031D3D0;
  if (!qword_28031D3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031D3D8, &qword_2695B2F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivitySegment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivitySegment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2695A5050()
{
  result = qword_28031D3E0;
  if (!qword_28031D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriEnablementState(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for SiriEnablementState(_WORD *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2695A5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2695A5358;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2695A5358()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2695A544C()
{
  v1 = v0;
  sub_2695B1208();
  MEMORY[0x26D6414B0](0x6E72755420202020, 0xED0000203A444920);
  v2 = *(type metadata accessor for ConversationTurn() + 28);
  sub_2695B0C88();
  sub_2695A56B8();
  v3 = sub_2695B1318();
  MEMORY[0x26D6414B0](v3);

  MEMORY[0x26D6414B0](0xD00000000000001BLL, 0x80000002695B3E10);
  v4 = *v1;
  if (*v1 >> 62)
  {
    if (v4 < 0)
    {
      v14 = *v1;
    }

    sub_2695B1278();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_2695B1318();
  MEMORY[0x26D6414B0](v6);

  MEMORY[0x26D6414B0](0xD00000000000001BLL, 0x80000002695B3E30);
  v7 = v1[1];
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v15 = v1[1];
    }

    sub_2695B1278();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = sub_2695B1318();
  MEMORY[0x26D6414B0](v9);

  MEMORY[0x26D6414B0](0xD00000000000001CLL, 0x80000002695B3E50);
  v10 = v1[2];
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v16 = v1[2];
    }

    sub_2695B1278();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = sub_2695B1318();
  MEMORY[0x26D6414B0](v12);

  return 0;
}

uint64_t type metadata accessor for ConversationTurn()
{
  result = qword_28031D3F0;
  if (!qword_28031D3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2695A56B8()
{
  result = qword_28031D3E8;
  if (!qword_28031D3E8)
  {
    sub_2695B0C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3E8);
  }

  return result;
}

void sub_2695A5738()
{
  sub_2695A5834(319, &qword_28031D400, &qword_28031D408, 0x277D56858);
  if (v0 <= 0x3F)
  {
    sub_2695A5834(319, &qword_28031D410, &qword_28031D418, 0x277D5A800);
    if (v1 <= 0x3F)
    {
      sub_2695A5834(319, &qword_28031D420, &qword_28031D428, 0x277D59610);
      if (v2 <= 0x3F)
      {
        sub_2695B0C88();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2695A5834(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2695A588C(255, a3, a4);
    v5 = sub_2695B1078();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2695A588C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2695A58D4()
{
  v1 = sub_2695B0C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_2695B1208();
  MEMORY[0x26D6414B0](0xD00000000000002ALL, 0x80000002695B3E70);
  v10 = *v0;
  v11 = 0xEB0000000072656DLL;
  v12 = 0x6F7473754377656ELL;
  v13 = 0x80000002695B36F0;
  v14 = 0xD00000000000001ALL;
  if (v10 != 6)
  {
    v14 = 7104878;
    v13 = 0xE300000000000000;
  }

  v15 = 0xE700000000000000;
  v16 = 0x73646F50726961;
  if (v10 != 4)
  {
    v16 = 0x6D6F44736D6D6F63;
    v15 = 0xED0000746E616E69;
  }

  if (*v0 <= 5u)
  {
    v14 = v16;
    v13 = v15;
  }

  v17 = 0xE300000000000000;
  v18 = 7496035;
  if (v10 != 2)
  {
    v18 = 0xD000000000000011;
    v17 = 0x80000002695B36C0;
  }

  if (*v0)
  {
    v12 = 0x6F69746174636964;
    v11 = 0xE90000000000006ELL;
  }

  if (*v0 > 1u)
  {
    v12 = v18;
    v11 = v17;
  }

  if (*v0 <= 3u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  if (*v0 <= 3u)
  {
    v20 = v11;
  }

  else
  {
    v20 = v13;
  }

  MEMORY[0x26D6414B0](v19, v20);

  MEMORY[0x26D6414B0](0x65537473616C202CLL, 0xEC000000203A6E65);
  SeenResult = type metadata accessor for SegmentFlagLastSeenResult();
  sub_269591050(&v0[*(SeenResult + 20)], v9);
  v22 = sub_2695B0C78();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {
    v24 = 7104878;
    sub_2695910C0(v9);
    v25 = 0xE300000000000000;
  }

  else
  {
    sub_2695AC8F0(v5);
    v24 = sub_2695B0BB8();
    v25 = v26;
    (*(v2 + 8))(v5, v1);
    (*(v23 + 8))(v9, v22);
  }

  MEMORY[0x26D6414B0](v24, v25);

  MEMORY[0x26D6414B0](41, 0xE100000000000000);
  return v28[0];
}

uint64_t type metadata accessor for SegmentFlagLastSeenResult()
{
  result = qword_2814B1D70;
  if (!qword_2814B1D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2695A5CC0()
{
  sub_269595C60();
  if (v0 <= 0x3F)
  {
    sub_2695A5D44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2695A5D44()
{
  if (!qword_2814B1FB8)
  {
    sub_2695B0C78();
    v0 = sub_2695B1198();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B1FB8);
    }
  }
}

uint64_t sub_2695A5DAC(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = type metadata accessor for ConversationTurn();
  v2[16] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1E0, &qword_2695B2560);
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v7 = *(v6 + 64) + 15;
  v2[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1E8, &unk_2695B31E0);
  v2[22] = v8;
  v9 = *(v8 - 8);
  v2[23] = v9;
  v10 = *(v9 + 64) + 15;
  v2[24] = swift_task_alloc();
  v11 = sub_2695B0C78();
  v2[25] = v11;
  v12 = *(v11 - 8);
  v2[26] = v12;
  v13 = *(v12 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A5F84, 0, 0);
}

uint64_t sub_2695A5F84()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[14];
  sub_2695B0E28();
  sub_2695B0E98();
  v0[29] = sub_2695A7594(0, &qword_28031D408, 0x277D56858);
  v6 = sub_2695B0E78();
  v0[30] = sub_2695A7594(0, &qword_28031D418, 0x277D5A800);
  v7 = sub_2695B0E78();
  v8 = MEMORY[0x26D641320](v6, v7);

  v0[31] = sub_2695A7594(0, &qword_28031D428, 0x277D59610);
  v9 = sub_2695B0E78();
  v10 = MEMORY[0x26D641320](v8, v9);
  v0[32] = v10;

  sub_2695B09F8();
  sub_2695B0BA8();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v2, v4);
  v14 = v12;
  sub_2695B09D8();
  sub_2695B0BA8();
  v16 = v15;
  v13(v1, v4);
  v17 = *(MEMORY[0x277CE4850] + 4);
  v18 = swift_task_alloc();
  v0[33] = v18;
  *v18 = v0;
  v18[1] = sub_2695A61A0;

  return MEMORY[0x2821377A8](v0 + 2, v10, v14, 0, v16, 0, 0, 1);
}

uint64_t sub_2695A61A0()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_2695A74EC;
  }

  else
  {
    v4 = sub_2695A62CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2695A62CC()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2695B0DF8();
  sub_2695A75DC(&qword_28031D1F0, &qword_28031D1E0, &qword_2695B2560);
  sub_2695B0D78();
  (*(v6 + 8))(v4, v5);
  v8 = sub_2695B0EA8();
  (*(v2 + 8))(v1, v3);
  v0[7] = v8;
  v0[35] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D200, &qword_2695B2578);
  v10 = sub_2695A75DC(&qword_28031D208, &qword_28031D200, &qword_2695B2578);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  v0[36] = v12;
  *v12 = v0;
  v12[1] = sub_2695A6498;

  return MEMORY[0x282200308](v0 + 8, v9, v10);
}

uint64_t sub_2695A6498()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_2695A73A0;
  }

  else
  {
    v3 = sub_2695A65AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2695A65D0()
{
  v159 = v0;
  v1 = v0[38];
  if (v1)
  {
    v2 = MEMORY[0x26D641900]();
    v3 = sub_2695B0E58();
    v4 = v3;
    v0[10] = MEMORY[0x277D84F90];
    v153 = v2;
    v154 = v1;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_111;
    }

    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v7 = 0;
    v156 = MEMORY[0x277D84F90];
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6416E0](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_104;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
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
        v6 = sub_2695B1278();
        goto LABEL_4;
      }

      v11 = sub_2695B0D98();
      if (!v11)
      {
        goto LABEL_133;
      }

      v14 = v11;
      v15 = [v11 wrapAsAnyEvent];

      ++v7;
      if (v15)
      {
        MEMORY[0x26D6414F0]();
        if (*((v155[10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155[10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v155[10] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2695B1058();
        }

        sub_2695B1068();
        v156 = v155[10];
        v7 = v10;
      }
    }

    v18 = v155;
    v17 = v156;
    v19 = MEMORY[0x277D84F90];
    v155[11] = MEMORY[0x277D84F90];
    if (v156 >> 62)
    {
      v157 = v156 & 0xFFFFFFFFFFFFFF8;
      v4 = sub_2695B1278();
      if (v4)
      {
LABEL_18:
        v5 = v156 & 0xC000000000000001;
        v20 = 0x279C65000;
        v151 = MEMORY[0x277D84F90];
        v152 = MEMORY[0x277D84F90];
        v21 = 0;
        if ((v156 & 0xC000000000000001) != 0)
        {
LABEL_43:
          v22 = MEMORY[0x26D6416E0](v21, v17);
          goto LABEL_25;
        }

        while (1)
        {
          if (v21 >= *(v157 + 16))
          {
            goto LABEL_106;
          }

          v22 = *(v17 + 8 * v21 + 32);
LABEL_25:
          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_105;
          }

          if ([v22 *(v20 + 3752)] == 6)
          {
            v25 = [v23 payload];
            if (v25)
            {
              v26 = v25;
              v27 = sub_2695B0B78();
              v29 = v28;

              v30 = sub_2695B0B68();
              sub_26958B49C(v27, v29);
            }

            else
            {
              v30 = 0;
            }

            v32 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

            v31 = [v32 event];
            v20 = 0x279C65000uLL;
            if (!v31)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v31 = v23;
          }

          [v31 *(v20 + 3752)];
          v33 = sub_2695B1158();
          if (!v33 || v18[29] != v33)
          {
            goto LABEL_20;
          }

          v34 = [v31 payload];
          if (v34)
          {
            v35 = v34;
            v36 = sub_2695B0B78();
            v38 = v37;

            v39 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v40 = sub_2695B0B68();
            v41 = v36;
            v42 = v38;
            v18 = v155;
            v17 = v156;
            sub_26958B49C(v41, v42);
            v43 = v39;
          }

          else
          {
            v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v40 = 0;
          }

          v44 = [v43 initWithData_];

          v20 = 0x279C65000;
          if (!v44)
          {
            goto LABEL_21;
          }

          objc_opt_self();
          v31 = v44;
          if (swift_dynamicCastObjCClass())
          {

            MEMORY[0x26D6414F0]();
            if (*((v18[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v45 = *((v18[11] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2695B1058();
              v17 = v156;
            }

            sub_2695B1068();
            v152 = v18[11];
            if (v24 == v4)
            {
LABEL_50:
              v60 = MEMORY[0x277D84F90];
              v18[12] = MEMORY[0x277D84F90];
              v150 = v60;
              v61 = 0;
              if (v5)
              {
LABEL_75:
                v62 = MEMORY[0x26D6416E0](v61, v17);
                goto LABEL_57;
              }

              while (1)
              {
                if (v61 >= *(v157 + 16))
                {
                  goto LABEL_108;
                }

                v62 = *(v17 + 8 * v61 + 32);
LABEL_57:
                v63 = v62;
                v64 = v61 + 1;
                if (__OFADD__(v61, 1))
                {
                  goto LABEL_107;
                }

                if ([v62 *(v20 + 3752)] == 6)
                {
                  v65 = [v63 payload];
                  if (v65)
                  {
                    v66 = v65;
                    v67 = sub_2695B0B78();
                    v69 = v68;

                    v70 = sub_2695B0B68();
                    v71 = v67;
                    v18 = v155;
                    v72 = v69;
                    v20 = 0x279C65000;
                    sub_26958B49C(v71, v72);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v74 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

                  v73 = [v74 event];
                  v17 = v156;
                  if (!v73)
                  {
                    goto LABEL_53;
                  }
                }

                else
                {
                  v73 = v63;
                }

                [v73 *(v20 + 3752)];
                v75 = sub_2695B1158();
                if (!v75 || v18[30] != v75)
                {
LABEL_52:

LABEL_53:
                  ++v61;
                  if (v64 == v4)
                  {
                    goto LABEL_76;
                  }

                  if (v5)
                  {
                    goto LABEL_75;
                  }

                  continue;
                }

                v76 = [v73 payload];
                if (v76)
                {
                  v77 = v76;
                  v78 = sub_2695B0B78();
                  v80 = v79;

                  v81 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                  v82 = sub_2695B0B68();
                  v83 = v78;
                  v18 = v155;
                  sub_26958B49C(v83, v80);
                  v84 = v81;
                  v17 = v156;
                }

                else
                {
                  v84 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                  v82 = 0;
                }

                v85 = [v84 initWithData_];

                v20 = 0x279C65000uLL;
                if (!v85)
                {
                  goto LABEL_53;
                }

                objc_opt_self();
                v73 = v85;
                if (!swift_dynamicCastObjCClass())
                {
                  goto LABEL_52;
                }

                MEMORY[0x26D6414F0]();
                if (*((v18[12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18[12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v86 = *((v18[12] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_2695B1058();
                  v17 = v156;
                }

                sub_2695B1068();
                v150 = v18[12];
                if (v64 == v4)
                {
LABEL_76:
                  v87 = 0;
                  v18[13] = MEMORY[0x277D84F90];
                  while (2)
                  {
                    v88 = v87;
LABEL_80:
                    if (v5)
                    {
                      v89 = MEMORY[0x26D6416E0](v88, v17);
                    }

                    else
                    {
                      if (v88 >= *(v157 + 16))
                      {
                        goto LABEL_110;
                      }

                      v89 = *(v17 + 8 * v88 + 32);
                    }

                    v90 = v89;
                    v87 = v88 + 1;
                    if (__OFADD__(v88, 1))
                    {
                      goto LABEL_109;
                    }

                    if ([v89 *(v20 + 3752)] != 6)
                    {
                      v99 = v90;
                      goto LABEL_90;
                    }

                    v91 = [v90 payload];
                    if (v91)
                    {
                      v92 = v91;
                      v93 = sub_2695B0B78();
                      v95 = v94;

                      v96 = sub_2695B0B68();
                      v97 = v93;
                      v18 = v155;
                      v98 = v95;
                      v20 = 0x279C65000;
                      sub_26958B49C(v97, v98);
                    }

                    else
                    {
                      v96 = 0;
                    }

                    v100 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

                    v99 = [v100 event];
                    v17 = v156;
                    if (v99)
                    {
LABEL_90:
                      [v99 *(v20 + 3752)];
                      v101 = sub_2695B1158();
                      if (!v101 || v18[31] != v101)
                      {
                        goto LABEL_78;
                      }

                      v102 = [v99 payload];
                      if (v102)
                      {
                        v103 = v102;
                        v104 = sub_2695B0B78();
                        v106 = v105;

                        v107 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                        v108 = sub_2695B0B68();
                        v109 = v104;
                        v18 = v155;
                        sub_26958B49C(v109, v106);
                        v110 = v107;
                        v17 = v156;
                      }

                      else
                      {
                        v110 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                        v108 = 0;
                      }

                      v111 = [v110 initWithData_];

                      v20 = 0x279C65000;
                      if (v111)
                      {
                        objc_opt_self();
                        v99 = v111;
                        if (swift_dynamicCastObjCClass())
                        {

                          MEMORY[0x26D6414F0]();
                          if (*((v18[13] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18[13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            v112 = *((v18[13] & 0xFFFFFFFFFFFFFF8) + 0x10);
                            sub_2695B1058();
                            v17 = v156;
                          }

                          sub_2695B1068();
                          v151 = v18[13];
                          if (v87 == v4)
                          {
LABEL_102:
                            v113 = v151;
                            v114 = v152;
                            v115 = v150;
                            goto LABEL_114;
                          }

                          continue;
                        }

LABEL_78:
                      }
                    }

                    break;
                  }

                  ++v88;
                  if (v87 == v4)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_80;
                }

                ++v61;
                if (v5)
                {
                  goto LABEL_75;
                }
              }
            }

            ++v21;
            if (v5)
            {
              goto LABEL_43;
            }
          }

          else
          {
LABEL_20:

LABEL_21:
            ++v21;
            if (v24 == v4)
            {
              goto LABEL_50;
            }

            if (v5)
            {
              goto LABEL_43;
            }
          }
        }
      }
    }

    else
    {
      v157 = v156 & 0xFFFFFFFFFFFFFF8;
      v4 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_18;
      }
    }

    v155[13] = v19;
    v114 = v19;
    v113 = v19;
    v115 = v19;
LABEL_114:
    v116 = v18[18];
    v117 = v18[16];

    v118 = v116 + *(v117 + 28);
    sub_2695B0EB8();
    *v116 = v114;
    v116[1] = v115;
    v116[2] = v113;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v119 = v18[17];
    v120 = v18[18];
    v121 = sub_2695B0EF8();
    __swift_project_value_buffer(v121, qword_2814B2250);
    sub_2695A7624(v120, v119);
    v122 = v155;
    v123 = sub_2695B0ED8();
    v124 = sub_2695B1128();
    v125 = os_log_type_enabled(v123, v124);
    v126 = v155[17];
    if (v125)
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v158 = v128;
      *v127 = 136315138;
      v129 = sub_2695A544C();
      v131 = v130;
      sub_2695A7688(v126);
      v132 = v129;
      v122 = v155;
      v133 = sub_26959CE44(v132, v131, &v158);

      *(v127 + 4) = v133;
      _os_log_impl(&dword_269588000, v123, v124, "AIMLInstrumentationStreamSource turn: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v128);
      MEMORY[0x26D641DE0](v128, -1, -1);
      MEMORY[0x26D641DE0](v127, -1, -1);
    }

    else
    {

      sub_2695A7688(v126);
    }

    v134 = v122[18];
    v135 = __swift_project_boxed_opaque_existential_1(v122[15], *(v122[15] + 24));
    v0 = *v135;
    v136 = *(*v135 + 32);
    v11 = sub_26959F1C4(v134);
    if (*(v136 + 16) == 1)
    {
      v137 = v0[2];
      v138 = __CFADD__(v137, 1);
      v139 = v137 + 1;
      if (v138)
      {
        __break(1u);
        goto LABEL_132;
      }

      v0[2] = v139;
    }

    if (*(v136 + 19) != 1)
    {
LABEL_125:
      v142 = v122[35];
      sub_2695A7688(v122[18]);
      v143 = __OFADD__(v142, 1);
      v144 = v142 + 1;
      if (!v143)
      {
        objc_autoreleasePoolPop(v153);

        v122[35] = v144;
        v145 = v122;
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D200, &qword_2695B2578);
        v147 = sub_2695A75DC(&qword_28031D208, &qword_28031D200, &qword_2695B2578);
        v148 = *(MEMORY[0x277D856D0] + 4);
        v149 = swift_task_alloc();
        v145[36] = v149;
        *v149 = v145;
        v149[1] = sub_2695A6498;
        v11 = v145 + 8;
        v12 = v146;
        v13 = v147;

        return MEMORY[0x282200308](v11, v12, v13);
      }

      __break(1u);
      goto LABEL_130;
    }

    v140 = v0[3];
    v138 = __CFADD__(v140, 1);
    v141 = v140 + 1;
    if (!v138)
    {
      v0[3] = v141;
      goto LABEL_125;
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    return MEMORY[0x282200308](v11, v12, v13);
  }

  v46 = v0[7];

  if (qword_2814B1FD8 != -1)
  {
LABEL_130:
    swift_once();
  }

  v47 = sub_2695B0EF8();
  __swift_project_value_buffer(v47, qword_2814B2250);
  v48 = sub_2695B0ED8();
  v49 = sub_2695B1128();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v0[35];
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = v50;
    _os_log_impl(&dword_269588000, v48, v49, "AIMLInstrumentationStreamSource turn count: %ld", v51, 0xCu);
    v0 = v155;
    MEMORY[0x26D641DE0](v51, -1, -1);
  }

  v53 = v0[27];
  v52 = v0[28];
  v54 = v0[24];
  v55 = v0[21];
  v57 = v0[17];
  v56 = v0[18];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v58 = v0[1];

  return v58();
}

uint64_t sub_2695A73A0()
{
  *(v0 + 72) = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031CF98, qword_2695B2630);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2695A7434, 0, 0);
}

uint64_t sub_2695A7434()
{
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[37];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2695A74EC()
{
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2695A7594(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2695A75DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2695A7624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationTurn();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695A7688(uint64_t a1)
{
  v2 = type metadata accessor for ConversationTurn();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2695A7730()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2695A778C(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_2695B0A18();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A784C, 0, 0);
}

uint64_t sub_2695A784C()
{
  v25 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = sub_2695B0EF8();
  __swift_project_value_buffer(v5, qword_2814B2250);
  v6 = *(v2 + 16);
  v0[11] = v6;
  v0[12] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2695B0ED8();
  v8 = sub_2695B1128();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_26959CE44(0xD000000000000026, 0x80000002695B3F70, &v24);
    *(v13 + 12) = 2080;
    sub_2695A88D8(&qword_28031D258, MEMORY[0x277CC88A8]);
    v15 = sub_2695B1318();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_26959CE44(v15, v17, &v24);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_269588000, v7, v8, "SiriMetricsCalculator.%s calculationInterval: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v14, -1, -1);
    MEMORY[0x26D641DE0](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = type metadata accessor for SiriUsageMetricsTurnSink();
  v20 = swift_allocObject();
  v0[13] = v20;
  type metadata accessor for ValidTurnFeatureExtractor();
  v20[2] = 0;
  v20[3] = 0;
  swift_allocObject();
  v20[4] = sub_26959F1B4();
  v0[2] = v20;
  v0[5] = v19;
  v0[6] = &off_287A1A378;

  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_2695A7B78;
  v22 = v0[7];

  return sub_2695A5DAC(v22, (v0 + 2));
}

uint64_t sub_2695A7B78()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2695A7E1C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_2695A7C94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2695A7C94()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v14 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D350, &qword_2695B2D00);
  v6 = (type metadata accessor for SiriUsageMetrics() - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2695B31F0;
  v10 = v9 + v8;
  v3(v10, v5, v4);
  *(v10 + v6[8]) = *(v1 + 16);
  *(v10 + v6[7]) = 1;
  v11 = v10 + v7;
  v3(v11, v5, v4);
  *(v11 + v6[8]) = *(v1 + 24);
  *(v11 + v6[7]) = 2;

  v12 = v0[1];

  return v12(v9);
}

uint64_t sub_2695A7E1C()
{
  v1 = v0[13];
  v2 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2695A7E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2695B0A18();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2695B0C78();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A7FD8, 0, 0);
}

uint64_t sub_2695A7FD8()
{
  v41 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_2695B0EF8();
  __swift_project_value_buffer(v5, qword_2814B2250);
  v6 = *(v3 + 16);
  v0[14] = v6;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2695B0ED8();
  v8 = sub_2695B1128();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v13 = 136315394;
    *(v13 + 4) = sub_26959CE44(0xD000000000000020, 0x80000002695B3F40, &v40);
    *(v13 + 12) = 2080;
    sub_2695A88D8(&qword_28031D250, MEMORY[0x277CC9578]);
    v14 = sub_2695B1318();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_26959CE44(v14, v16, &v40);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_269588000, v7, v8, "SiriMetricsCalculator.%s calculationDate: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v39, -1, -1);
    MEMORY[0x26D641DE0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[16] = v17;
  v19 = v0[12];
  v21 = v0[2];
  v20 = v0[3];
  sub_2695B0C28();
  if (v20)
  {
    v0[17] = MEMORY[0x277D84F90];
    v0[18] = 0;
    v23 = v0[14];
    v22 = v0[15];
    v24 = v0[11];
    v25 = v0[12];
    v26 = v0[10];
    v28 = v0[7];
    v27 = v0[8];
    sub_2695B0C28();
    v23(v26, v24, v27);
    sub_2695B09E8();
    v29 = swift_task_alloc();
    v0[19] = v29;
    *v29 = v0;
    v29[1] = sub_2695A83BC;
    v30 = v0[4];
    v31 = v0[7];
    v32 = sub_2695A778C;
  }

  else
  {
    v34 = v0[13];
    v36 = v0[10];
    v35 = v0[11];
    v37 = v0[7];
    v38 = v0[9] + 8;
    (v0[16])(v0[12], v0[8]);

    v32 = v0[1];
    v31 = MEMORY[0x277D84F90];
  }

  return v32(v31);
}

uint64_t sub_2695A83BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v8 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[17];

    v6 = sub_2695A87E4;
  }

  else
  {
    v6 = sub_2695A84D8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2695A84D8()
{
  v1 = v0[20];
  result = v0[17];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[17];
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v3;
  }

  else
  {
    v16 = v4;
  }

  v7 = sub_26959F464(isUniquelyReferenced_nonNull_native, v16, 1, v0[17]);
  if (!*(v1 + 16))
  {
LABEL_13:
    v17 = v0[20];

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_5:
  v8 = (*(v7 + 24) >> 1) - *(v7 + 16);
  result = type metadata accessor for SiriUsageMetrics();
  v9 = *(result - 8);
  if (v8 < v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v0[20];
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = *(v9 + 72);
  swift_arrayInitWithCopy();

  if (v3)
  {
    v13 = *(v7 + 16);
    v14 = __OFADD__(v13, v3);
    v15 = v13 + v3;
    if (!v14)
    {
      *(v7 + 16) = v15;
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_14:
  v18 = v0[16];
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[3];
  v22 = v0[18] + 1;
  v23 = v0[9] + 8;
  (*(v0[6] + 8))(v0[7], v0[5]);
  v18(v19, v20);
  if (v22 == v21)
  {
    v24 = v0[13];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[7];
    v28 = v0[9] + 8;
    (v0[16])(v0[12], v0[8]);

    v29 = v0[1];
    v30 = v7;
  }

  else
  {
    v31 = v0[18] + 1;
    v0[17] = v7;
    v0[18] = v31;
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[11];
    v35 = v0[12];
    v36 = v0[10];
    v38 = v0[7];
    v37 = v0[8];
    sub_2695B0C28();
    v33(v36, v34, v37);
    sub_2695B09E8();
    v39 = swift_task_alloc();
    v0[19] = v39;
    *v39 = v0;
    v39[1] = sub_2695A83BC;
    v40 = v0[4];
    v30 = v0[7];
    v29 = sub_2695A778C;
  }

  return v29(v30);
}

uint64_t sub_2695A87E4()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9] + 8;
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1(v4, v6);
  v1(v2, v6);

  v8 = v0[1];
  v9 = v0[21];

  return v8();
}

uint64_t sub_2695A88D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2695A8920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2695A8968(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2695A89C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v5 = sub_2695B0C78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v43 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  result = sub_2695AB068(v47, a3, &unk_28031D370, &unk_2695B2800);
  v26 = a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v29 = *(v13 + 72);
    v46 = (v6 + 48);
    v47 = v29;
    v37 = (v6 + 8);
    v39 = (v6 + 56);
    v40 = (v6 + 32);
    v41 = v19;
    v42 = a3;
    v48 = v24;
    v45 = v22;
    do
    {
      sub_2695AB068(v28, v24, &unk_28031D370, &unk_2695B2800);
      sub_2695AB068(v24, v19, &unk_28031D370, &unk_2695B2800);
      v31 = *v46;
      if ((*v46)(v19, 1, v5) == 1)
      {
        sub_2695AB200(v19, &unk_28031D370, &unk_2695B2800);
        v30 = v45;
        sub_2695AB068(a3, v45, &unk_28031D370, &unk_2695B2800);
      }

      else
      {
        v44 = *v40;
        (v44)(v11, v19, v5);
        v32 = a3;
        v33 = v43;
        sub_2695AB068(v32, v43, &unk_28031D370, &unk_2695B2800);
        if (v31(v33, 1, v5) == 1)
        {
          sub_2695AB200(v33, &unk_28031D370, &unk_2695B2800);
          v30 = v45;
          (v44)(v45, v11, v5);
          (*v39)(v30, 0, 1, v5);
          v19 = v41;
          a3 = v42;
        }

        else
        {
          v34 = v38;
          v35 = v44;
          (v44)(v38, v33, v5);
          sub_269595A24();
          if (sub_2695B0F88())
          {
            v36 = v34;
          }

          else
          {
            v36 = v11;
          }

          (*v37)(v36, v5);
          v30 = v45;
          v35();
          (*v39)(v30, 0, 1, v5);
          v19 = v41;
          a3 = v42;
        }
      }

      v24 = v48;
      sub_2695AB200(v48, &unk_28031D370, &unk_2695B2800);
      sub_2695AB200(a3, &unk_28031D370, &unk_2695B2800);
      result = sub_2695AB190(v30, a3);
      v28 += v47;
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t sub_2695A8E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = *(*(type metadata accessor for SegmentFlagLastSeenResult() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = sub_2695B0C18();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v3[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A8F98, 0, 0);
}

uint64_t sub_2695A8F98()
{
  v38 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_2695B0EF8();
  v0[15] = __swift_project_value_buffer(v5, qword_2814B2250);
  sub_2695AB068(v4, v1, &qword_28031D1B8, &qword_2695B2538);
  sub_2695AB068(v3, v2, &unk_28031D370, &unk_2695B2800);
  v6 = sub_2695B0ED8();
  v7 = sub_2695B1128();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v36 = v7;
    v10 = v0[13];
    v33 = v0[12];
    v11 = v0[11];
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v12 = 136315394;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v13 = sub_2695B0C78();
    sub_2695B1268();
    MEMORY[0x26D6414B0](3943982, 0xE300000000000000);
    v14 = *(v10 + 36);
    sub_2695B1268();
    v15 = v0[2];
    v16 = v0[3];
    sub_2695AB200(v9, &qword_28031D1B8, &qword_2695B2538);
    v17 = sub_26959CE44(v15, v16, &v37);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_2695AB068(v33, v11, &unk_28031D370, &unk_2695B2800);
    v18 = *(v13 - 8);
    v19 = (*(v18 + 48))(v11, 1, v13);
    v20 = v0[11];
    if (v19 == 1)
    {
      sub_2695AB200(v0[11], &unk_28031D370, &unk_2695B2800);
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v25 = v0[9];
      v24 = v0[10];
      v34 = v0[8];
      sub_2695AC8F0(v24);
      v22 = sub_2695B0BB8();
      v21 = v26;
      (*(v25 + 8))(v24, v34);
      (*(v18 + 8))(v20, v13);
    }

    sub_2695AB200(v0[12], &unk_28031D370, &unk_2695B2800);
    v27 = sub_26959CE44(v22, v21, &v37);

    *(v12 + 14) = v27;
    _os_log_impl(&dword_269588000, v6, v36, "Starting CarPlaySegment.calculate(in dateRange: %s, lastSeen: %s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v35, -1, -1);
    MEMORY[0x26D641DE0](v12, -1, -1);
  }

  else
  {
    v23 = v0[12];

    sub_2695AB200(v23, &unk_28031D370, &unk_2695B2800);
    sub_2695AB200(v9, &qword_28031D1B8, &qword_2695B2538);
  }

  v28 = swift_task_alloc();
  v0[16] = v28;
  *v28 = v0;
  v28[1] = sub_2695A93C4;
  v29 = v0[5];
  v30 = v0[6];
  v31 = v0[4];

  return sub_2695A9698(v31, v29, v30);
}

uint64_t sub_2695A93C4()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2695A94C0, 0, 0);
}

uint64_t sub_2695A94C0()
{
  v20 = v0;
  v1 = v0[15];
  sub_2695AB0D0(v0[4], v0[7]);
  v2 = sub_2695B0ED8();
  v3 = sub_2695B1128();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_26959CE44(0xD000000000000017, 0x80000002695B3FA0, &v19);
    *(v6 + 12) = 2080;
    v8 = sub_2695A58D4();
    v10 = v9;
    sub_2695AB134(v5);
    v11 = sub_26959CE44(v8, v10, &v19);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_269588000, v2, v3, "Ended CarPlaySegment.%s -> %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v7, -1, -1);
    MEMORY[0x26D641DE0](v6, -1, -1);
  }

  else
  {

    sub_2695AB134(v5);
  }

  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2695A9698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_2695B0C78();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v3[16] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A9894, 0, 0);
}

uint64_t sub_2695A9894()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[3];
  sub_2695A1390(v0[4], v1);
  v4 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v5 = [v4 Connected];
  swift_unknownObjectRelease();
  sub_2695A2178(v5, v1, sub_2695AAFE8, 0, v2);

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_2695A99C8;
  v7 = v0[17];
  v8 = v0[14];

  return sub_2695AA004(v8, v7);
}

uint64_t sub_2695A99C8()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2695A9AC4, 0, 0);
}

uint64_t sub_2695A9AC4()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[11];
  v47 = v0[15];
  v48 = v0[10];
  v4 = v0[8];
  v49 = v0[12];
  v50 = v0[7];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D430, &qword_2695B3338);
  v6 = *(v3 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2695B31F0;
  sub_2695AB068(v5, v8 + v7, &unk_28031D370, &unk_2695B2800);
  sub_2695AB068(v1, v8 + v7 + v6, &unk_28031D370, &unk_2695B2800);
  sub_2695A89C4(v47, v8, v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2695AB068(v2, v49, &unk_28031D370, &unk_2695B2800);
  if ((*(v4 + 48))(v49, 1, v50) == 1)
  {
    v9 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[12];
    sub_2695AB200(v0[13], &unk_28031D370, &unk_2695B2800);
    sub_2695AB200(v11, &unk_28031D370, &unk_2695B2800);
    sub_2695AB200(v10, &unk_28031D370, &unk_2695B2800);
    sub_2695AB200(v9, &qword_28031D1B8, &qword_2695B2538);
    sub_2695AB200(v12, &unk_28031D370, &unk_2695B2800);
    v26 = v0[4];
    v27 = v0[2];
    SeenResult = type metadata accessor for SegmentFlagLastSeenResult();
    sub_2695AB068(v26, v27 + *(SeenResult + 20), &unk_28031D370, &unk_2695B2800);
LABEL_4:
    v29 = 7;
    goto LABEL_5;
  }

  v13 = v0[16];
  v14 = v0[6];
  v15 = v0[5];
  v16 = v0[3];
  v17 = *(v0[8] + 32);
  v17(v0[9], v0[12], v0[7]);
  v18 = *(v13 + 36);
  v19 = sub_2695B0C98();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = sub_2695B0D68();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = sub_2695AB4A4(v16 + v18, v14, v15);
  v22 = v0[17];
  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[13];
  v40 = v0[6];
  sub_2695AB200(v0[5], &unk_28031D360, &unk_2695B2B50);
  sub_2695AB200(v40, &qword_28031D288, &qword_2695B28D0);
  sub_2695AB200(v25, &unk_28031D370, &unk_2695B2800);
  sub_2695AB200(v24, &unk_28031D370, &unk_2695B2800);
  sub_2695AB200(v23, &unk_28031D370, &unk_2695B2800);
  sub_2695AB200(v22, &qword_28031D1B8, &qword_2695B2538);
  v42 = v0[8];
  v41 = v0[9];
  v43 = v0[7];
  v44 = v0[2];
  if (v21 > 29)
  {
    (*(v42 + 8))(v0[9], v0[7]);
    v46 = type metadata accessor for SegmentFlagLastSeenResult();
    (*(v42 + 56))(v44 + *(v46 + 20), 1, 1, v43);
    goto LABEL_4;
  }

  v45 = *(type metadata accessor for SegmentFlagLastSeenResult() + 20);
  v17(v44 + v45, v41, v43);
  (*(v42 + 56))(v44 + v45, 0, 1, v43);
  v29 = 2;
LABEL_5:
  v30 = v0[17];
  v31 = v0[14];
  v32 = v0[15];
  v34 = v0[12];
  v33 = v0[13];
  v35 = v0[9];
  v37 = v0[5];
  v36 = v0[6];
  *v0[2] = v29;

  v38 = v0[1];

  return v38();
}

uint64_t sub_2695AA004(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_2695AA0A8;

  return sub_2695AA3C4(a1, a2);
}

uint64_t sub_2695AA0A8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2695AA1DC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2695AA1DC()
{
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_2695B0EF8();
  __swift_project_value_buffer(v2, qword_2814B2250);
  MEMORY[0x26D641C60](v1);
  v3 = sub_2695B0ED8();
  v4 = sub_2695B1138();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x26D641C60](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_269588000, v3, v4, "Failed to check SELF events for Siri in car use: %@", v7, 0xCu);
    sub_2695AB200(v8, &qword_28031D280, &unk_2695B28C0);
    MEMORY[0x26D641DE0](v8, -1, -1);
    MEMORY[0x26D641DE0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[2];
  v11 = sub_2695B0C78();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_2695AA3C4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D438, &qword_2695B3348);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v2[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D440, &qword_2695B3350);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = *(v9 + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695AA540, 0, 0);
}

uint64_t sub_2695AA540()
{
  sub_2695B0E98();
  v1 = sub_2695AB260(0, &qword_28031D448, 0x277D587F0);
  v2 = sub_2695AAFF0();
  v3 = *(v2 + 52);
  v4 = (*(v2 + 48) + 7) & 0x1FFFFFFF8;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2695B2770;
  v6 = sub_2695AB260(0, &qword_28031D450, 0x277D58638);
  v0[20] = v6;
  *(v5 + 32) = v6;
  v7 = MEMORY[0x26D641340](v1, v5);
  v0[21] = v7;

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_2695AA678;
  v9 = v0[19];
  v10 = v0[10];

  return sub_26958E1F4(v9, v7, v10);
}

uint64_t sub_2695AA678()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2695AAF50;
  }

  else
  {
    v3 = sub_2695AA78C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2695AA78C()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = sub_2695B0C78();
  v0[24] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[25] = v7;
  v0[26] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3, 1, 1, v5);
  sub_2695B10C8();
  v0[27] = 0;
  v0[28] = 0;
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_2695AA8A8;
  v10 = v0[13];
  v11 = v0[11];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v11);
}

uint64_t sub_2695AA8A8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2695AA9A4, 0, 0);
}

uint64_t sub_2695AA9A4()
{
  v74 = v1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v1 + 224);
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_29;
    }

    v6 = *(v1 + 160);
    v7 = v3;
    v8 = sub_2695B0E48();
    v2 = v8;
    v0 = *(v1 + 216);
    v68 = v7;
    v70 = v1;
    v64 = v5;
    v66 = v1 + 64;
    if (v8 >> 62)
    {
LABEL_30:
      v56 = sub_2695B1278();
      if (__OFADD__(v0, v56))
      {
        __break(1u);
        return MEMORY[0x2822003E8](v56, v57, v58, v59);
      }

      v63 = v0 + v56;
      v9 = sub_2695B1278();
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_32:

      v50 = v70;
LABEL_33:
      v50[27] = v63;
      v50[28] = v64;
      v60 = *(MEMORY[0x277D85798] + 4);
      v61 = swift_task_alloc();
      v50[29] = v61;
      *v61 = v50;
      v61[1] = sub_2695AA8A8;
      v62 = v50[13];
      v59 = v50[11];
      v56 = v66;
      v57 = 0;
      v58 = 0;

      return MEMORY[0x2822003E8](v56, v57, v58, v59);
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFADD__(v0, v9))
    {
      v63 = v0 + v9;
      if (v9)
      {
LABEL_6:
        v10 = 0;
        v11 = v2 & 0xC000000000000001;
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        v0 = &unk_28031D458;
        v13 = 0x277D5A918;
        v71 = v2 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v11)
          {
            v14 = MEMORY[0x26D6416E0](v10, v2);
          }

          else
          {
            if (v10 >= *(v12 + 16))
            {
              goto LABEL_28;
            }

            v14 = *(v2 + 8 * v10 + 32);
          }

          v15 = v14;
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          sub_2695AB260(0, v0, v13);
          v17 = sub_2695B0DA8();
          if (!v17)
          {
            goto LABEL_8;
          }

          v18 = v17;
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (!v19)
          {
            break;
          }

          v20 = v9;
          v21 = v11;
          v22 = v2;
          v23 = v13;
          v24 = v0;
          v25 = [v19 bluetoothAudioDeviceCategory];

          v26 = v25 == 2;
          v0 = v24;
          v13 = v23;
          v2 = v22;
          v11 = v21;
          v9 = v20;
          v12 = v71;
          if (v26)
          {
            v50 = v70;
            v51 = v70[25];
            v52 = v70[26];
            v53 = v70[24];
            v55 = v70[15];
            v54 = v70[16];

            sub_2695B0E38();

            v51(v55, 0, 1, v53);
            sub_2695A377C(v55, v54);
            goto LABEL_33;
          }

LABEL_9:
          ++v10;
          if (v16 == v9)
          {
            goto LABEL_32;
          }
        }

LABEL_8:
        goto LABEL_9;
      }

      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_37;
  }

  (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));
  if (qword_2814B1FD8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v27 = sub_2695B0EF8();
  __swift_project_value_buffer(v27, qword_2814B2250);
  v28 = sub_2695B0ED8();
  v29 = sub_2695B1128();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v1 + 216);
    v31 = *(v1 + 224);
    v32 = *(v1 + 144);
    v72 = *(v1 + 152);
    v33 = *(v1 + 128);
    v67 = *(v1 + 168);
    v69 = *(v1 + 136);
    v34 = *(v1 + 120);
    v65 = *(v1 + 112);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v73 = v36;
    *v35 = 136315906;
    *(v35 + 4) = sub_26959CE44(0xD00000000000001ELL, 0x80000002695B3FC0, &v73);
    *(v35 + 12) = 2048;
    *(v35 + 14) = v31;
    *(v35 + 22) = 2048;
    *(v35 + 24) = v30;
    *(v35 + 32) = 2080;
    swift_beginAccess();
    sub_2695AB068(v33, v34, &unk_28031D370, &unk_2695B2800);
    v37 = sub_2695B0FC8();
    v39 = sub_26959CE44(v37, v38, &v73);

    *(v35 + 34) = v39;
    _os_log_impl(&dword_269588000, v28, v29, "%s Scanned %ld turns; %ld MHAssistantDaemonAudioBluetoothInfo events; result %s", v35, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v36, -1, -1);
    MEMORY[0x26D641DE0](v35, -1, -1);

    (*(v32 + 8))(v72, v69);
  }

  else
  {
    v41 = *(v1 + 144);
    v40 = *(v1 + 152);
    v42 = *(v1 + 136);

    (*(v41 + 8))(v40, v42);
  }

  v43 = *(v1 + 152);
  v45 = *(v1 + 120);
  v44 = *(v1 + 128);
  v46 = *(v1 + 104);
  v47 = *(v1 + 72);
  swift_beginAccess();
  sub_2695AB068(v44, v47, &unk_28031D370, &unk_2695B2800);
  sub_2695AB200(v44, &unk_28031D370, &unk_2695B2800);

  v48 = *(v1 + 8);

  return v48();
}

uint64_t sub_2695AAF50()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);

  v5 = *(v0 + 8);
  v6 = *(v0 + 184);

  return v5();
}

uint64_t sub_2695AAFF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D460, &qword_2695B3358);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_28031D468;
    v3 = &unk_2695B3360;
  }

  else
  {
    v2 = &unk_28031D470;
    v3 = &unk_2695B3368;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2695AB068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2695AB0D0(uint64_t a1, uint64_t a2)
{
  SeenResult = type metadata accessor for SegmentFlagLastSeenResult();
  (*(*(SeenResult - 8) + 16))(a2, a1, SeenResult);
  return a2;
}

uint64_t sub_2695AB134(uint64_t a1)
{
  SeenResult = type metadata accessor for SegmentFlagLastSeenResult();
  (*(*(SeenResult - 8) + 8))(a1, SeenResult);
  return a1;
}

uint64_t sub_2695AB190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695AB200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2695AB260(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2695AB2AC(uint64_t a1)
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

uint64_t sub_2695AB3B0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*sub_2695AB4A4(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v79 = a3;
  v82 = a2;
  v84 = a1;
  v4 = sub_2695B0A78();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v4);
  v85 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v75 - v9;
  v11 = sub_2695B0D68();
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v75 - v15;
  v16 = sub_2695B0C98();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v80 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D500, &qword_2695B33B8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v75 - v26;
  v89 = sub_2695B0D48();
  v28 = *(v89 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v89);
  v88 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v92 = &v75 - v32;
  sub_2695AC4DC(v82, v23, &qword_28031D288, &qword_2695B28D0);
  v81 = v17;
  v82 = v16;
  v33 = 1;
  if ((*(v17 + 48))(v23, 1, v16) != 1)
  {
    v35 = v80;
    v34 = v81;
    v36 = v82;
    (*(v81 + 32))(v80, v23, v82);
    sub_2695B0CA8();
    (*(v34 + 8))(v35, v36);
    v33 = 0;
  }

  v37 = v28;
  v38 = v89;
  (*(v28 + 56))(v27, v33, 1, v89);
  v39 = *(v28 + 48);
  v40 = v39(v27, 1, v38);
  v83 = v3;
  if (v40 == 1)
  {
    v41 = v92;
    sub_2695B0D18();
    v42 = v39(v27, 1, v38);
    v43 = v41;
    v44 = v77;
    if (v42 != 1)
    {
      sub_2695AC544(v27, &qword_28031D500, &qword_2695B33B8);
    }
  }

  else
  {
    v43 = v92;
    (*(v28 + 32))(v92, v27, v38);
    v44 = v77;
  }

  v45 = *(v28 + 16);
  v46 = v88;
  v45(v88, v43, v38);
  sub_2695AC4DC(v79, v10, &unk_28031D360, &unk_2695B2B50);
  v47 = v78;
  if ((*(v44 + 48))(v10, 1, v78) == 1)
  {
    sub_2695AC544(v10, &unk_28031D360, &unk_2695B2B50);
  }

  else
  {
    v48 = v75;
    (*(v44 + 32))(v75, v10, v47);
    (*(v44 + 16))(v76, v48, v47);
    sub_2695B0D28();
    (*(v44 + 8))(v48, v47);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D238, &qword_2695B33C0);
  v49 = sub_2695B0D38();
  v50 = *(v49 - 8);
  v51 = *(v50 + 72);
  v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2695B2770;
  (*(v50 + 104))(v53 + v52, *MEMORY[0x277CC9968], v49);
  sub_269591E84(v53);
  swift_setDeallocating();
  (*(v50 + 8))(v53 + v52, v49);
  swift_deallocClassInstance();
  v54 = v85;
  sub_2695B0CD8();

  v55 = sub_2695B0A28();
  if (v56)
  {
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_2695B1208();
    MEMORY[0x26D6414B0](0xD00000000000003ELL, 0x80000002695B4030);
    sub_2695B0C78();
    sub_2695AC5A4();
    v57 = sub_2695B1318();
    v58 = v46;
    MEMORY[0x26D6414B0](v57);

    MEMORY[0x26D6414B0](0x203A6F74202CLL, 0xE600000000000000);
    v59 = sub_2695B1318();
    MEMORY[0x26D6414B0](v59);

    MEMORY[0x26D6414B0](0xD00000000000001CLL, 0x80000002695B4070);
    v60 = v80;
    sub_2695B0CB8();
    v61 = v82;
    sub_2695B1268();
    (*(v81 + 8))(v60, v61);
    v62 = v90;
    v63 = v91;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v64 = sub_2695B0EF8();
    __swift_project_value_buffer(v64, qword_2814B2250);

    v65 = sub_2695B0ED8();
    v66 = sub_2695B1138();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v90 = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_26959CE44(v62, v63, &v90);
      _os_log_impl(&dword_269588000, v65, v66, "%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v69 = v68;
      v38 = v89;
      MEMORY[0x26D641DE0](v69, -1, -1);
      v70 = v67;
      v58 = v88;
      MEMORY[0x26D641DE0](v70, -1, -1);
    }

    sub_2695AC448();
    swift_allocError();
    *v71 = v62;
    v71[1] = v63;
    swift_willThrow();
    (*(v86 + 8))(v54, v87);
    v72 = *(v37 + 8);
    v72(v58, v38);
    v72(v92, v38);
  }

  else
  {
    v72 = v55;
    (*(v86 + 8))(v54, v87);
    v73 = *(v37 + 8);
    v73(v46, v38);
    v73(v92, v38);
  }

  return v72;
}

uint64_t sub_2695ABE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2695B0C18();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_2695B0C98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2695B0D48();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CC9830], v10);
  sub_2695B0CA8();
  (*(v11 + 8))(v14, v10);
  sub_2695B0CF8();
  v20 = sub_2695B0C78();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v9, 1, v20) == 1)
  {
    v39 = v16;
    v22 = v15;
    sub_2695AC544(v9, &unk_28031D370, &unk_2695B2800);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_2695B1208();
    MEMORY[0x26D6414B0](0xD000000000000030, 0x80000002695B3FF0);
    sub_2695B0D38();
    sub_2695B1268();
    MEMORY[0x26D6414B0](0x3A65756C6176202CLL, 0xE900000000000020);
    v45 = a1;
    v23 = sub_2695B1318();
    MEMORY[0x26D6414B0](v23);

    MEMORY[0x26D6414B0](0x203A6F74202CLL, 0xE600000000000000);
    v24 = v40;
    sub_2695AC8F0(v40);
    v25 = sub_2695B0BB8();
    v27 = v26;
    (*(v41 + 8))(v24, v42);
    MEMORY[0x26D6414B0](v25, v27);

    MEMORY[0x26D6414B0](96, 0xE100000000000000);
    v28 = v43;
    v29 = v44;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v30 = sub_2695B0EF8();
    __swift_project_value_buffer(v30, qword_2814B2250);

    v31 = sub_2695B0ED8();
    v32 = sub_2695B1138();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_26959CE44(v28, v29, &v43);
      _os_log_impl(&dword_269588000, v31, v32, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x26D641DE0](v34, -1, -1);
      MEMORY[0x26D641DE0](v33, -1, -1);
    }

    v35 = v39;
    sub_2695AC448();
    swift_allocError();
    *v36 = v28;
    v36[1] = v29;
    swift_willThrow();
    return (*(v35 + 8))(v19, v22);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    return (*(v21 + 32))(v38, v9, v20);
  }
}

unint64_t sub_2695AC448()
{
  result = qword_28031D4F8;
  if (!qword_28031D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D4F8);
  }

  return result;
}

uint64_t sub_2695AC4AC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2695AC4DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2695AC544(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2695AC5A4()
{
  result = qword_28031D250;
  if (!qword_28031D250)
  {
    sub_2695B0C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D250);
  }

  return result;
}

uint64_t sub_2695AC5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2695AC644(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2695AC690(void *a1)
{
  if ([a1 state] == 1)
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v2 = sub_2695B0EF8();
    __swift_project_value_buffer(v2, qword_2814B2250);
    v3 = a1;
    oslog = sub_2695B0ED8();
    v4 = sub_2695B1138();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v5 = 136315394;
      *(v5 + 4) = sub_26959CE44(0xD000000000000027, 0x80000002695B3DE0, &v11);
      *(v5 + 12) = 2112;
      v8 = [v3 error];
      if (v8)
      {
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      *(v5 + 14) = v8;
      *v6 = v9;
      _os_log_impl(&dword_269588000, oslog, v4, "%s Failure during Biome sink: %@", v5, 0x16u);
      sub_2695AC888(v6);
      MEMORY[0x26D641DE0](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x26D641DE0](v7, -1, -1);
      MEMORY[0x26D641DE0](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2695AC888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D280, &unk_2695B28C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2695AC8F0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_2695B0D68();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2695B0C08();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2695B0BE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2695B0BC8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2695B0BD8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v33);
  sub_2695B0D58();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_2695B0BF8();
  }

  return result;
}

uint64_t SegmentsSummary.membershipCheckedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SegmentsSummary() + 24);
  v4 = sub_2695B0C78();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SegmentsSummary()
{
  result = qword_2814B1FE8;
  if (!qword_2814B1FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SegmentsSummary.init(activitySegment:segmentFlags:at:)@<X0>(_BYTE *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v109 = a2;
  v91 = a4;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  v107 = *(EnablementStatus - 8);
  v108 = EnablementStatus;
  v7 = *(v107 + 64);
  MEMORY[0x28223BE20](EnablementStatus);
  v102 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D278, &qword_2695B3490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v99 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v89 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v95 = &v89 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v92 = &v89 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v93 = &v89 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v89 = &v89 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v90 = &v89 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v89 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v89 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v89 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v89 - v39;
  v41 = sub_2695B0C78();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v103 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v89 - v46;
  LOBYTE(a1) = *a1;
  v48 = *(v42 + 16);
  v100 = a3;
  v48(&v89 - v46, a3, v41);
  v49 = *(v42 + 56);
  v49(v40, 1, 1, v41);
  v105 = v38;
  v49(v38, 1, 1, v41);
  v104 = v35;
  v50 = v35;
  v51 = v89;
  v49(v50, 1, 1, v41);
  v97 = v32;
  v110 = v49;
  v49(v32, 1, 1, v41);
  (*(v107 + 56))(v106, 1, 1, v108);
  v52 = v91;
  *v91 = a1;
  v111 = type metadata accessor for SegmentsSummary();
  v53 = v111[6];
  v96 = v47;
  sub_2695B0BA8();
  sub_2695B0B98();
  *(v52 + 1) = v109;
  v98 = v40;
  v54 = v40;
  v55 = v90;
  sub_269591050(v54, v51);
  v109 = *(v42 + 48);
  v56 = v109(v51, 1, v41);
  v57 = 1;
  if (v56 != 1)
  {
    v58 = v103;
    (*(v42 + 32))(v103, v51, v41);
    sub_2695B0BA8();
    sub_2695B0B98();
    (*(v42 + 8))(v58, v41);
    v57 = 0;
  }

  v59 = 1;
  v110(v55, v57, 1, v41);
  sub_2695AB190(v55, &v52[v111[7]]);
  v60 = v92;
  sub_269591050(v105, v92);
  v61 = v109(v60, 1, v41);
  v62 = v93;
  if (v61 != 1)
  {
    v63 = v103;
    (*(v42 + 32))(v103, v60, v41);
    sub_2695B0BA8();
    sub_2695B0B98();
    (*(v42 + 8))(v63, v41);
    v59 = 0;
  }

  v64 = 1;
  v110(v62, v59, 1, v41);
  v65 = v52;
  sub_2695AB190(v62, &v52[v111[8]]);
  v66 = v94;
  sub_269591050(v104, v94);
  v67 = v109(v66, 1, v41);
  v68 = v101;
  v69 = v97;
  v70 = v95;
  if (v67 != 1)
  {
    v71 = v103;
    (*(v42 + 32))(v103, v66, v41);
    sub_2695B0BA8();
    sub_2695B0B98();
    (*(v42 + 8))(v71, v41);
    v64 = 0;
  }

  v110(v70, v64, 1, v41);
  v72 = v65;
  sub_2695AB190(v70, &v65[v111[9]]);
  v73 = v99;
  sub_269591050(v69, v99);
  v74 = v109(v73, 1, v41);
  v75 = v106;
  v76 = v69;
  if (v74 == 1)
  {
    v77 = *(v42 + 8);
    v77(v100, v41);
    v78 = v68;
    sub_2695B0910(v76, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v104, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v105, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v98, &unk_28031D370, &unk_2695B2800);
    v77(v96, v41);
    v79 = 1;
  }

  else
  {
    v80 = v103;
    (*(v42 + 32))(v103, v73, v41);
    sub_2695B0BA8();
    sub_2695B0B98();
    v81 = *(v42 + 8);
    v81(v100, v41);
    v81(v80, v41);
    v78 = v68;
    sub_2695B0910(v76, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v104, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v105, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v98, &unk_28031D370, &unk_2695B2800);
    v81(v96, v41);
    v79 = 0;
  }

  v82 = v107;
  v110(v78, v79, 1, v41);
  sub_2695AB190(v78, &v72[v111[10]]);
  v83 = *(v82 + 48);
  v84 = v108;
  v85 = v83(v75, 1, v108);
  v86 = v102;
  if (v85 == 1)
  {
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
    (*(*(v87 - 8) + 56))(v86, 1, 3, v87);
    if (v83(v75, 1, v84) != 1)
    {
      sub_2695B0910(v75, &qword_28031D278, &qword_2695B3490);
    }
  }

  else
  {
    sub_26958D54C(v75, v102);
  }

  return sub_26958D54C(v86, &v72[v111[11]]);
}

uint64_t SegmentsSummary.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v78 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v76 = &v72 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v75 = &v72 - v8;
  MEMORY[0x28223BE20](v7);
  v73 = &v72 - v9;
  v10 = sub_2695B0C18();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_2695B1208();
  MEMORY[0x26D6414B0](0xD000000000000021, 0x80000002695B4090);
  v15 = *v0;
  v82 = v11;
  if (v15 <= 4)
  {
    v26 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E75;
    v28 = 0xED0000796C6E4F6ELL;
    v29 = 0x6F69746174636964;
    v30 = 0x80000002695B3730;
    v31 = 0xD000000000000018;
    if (v15 == 3)
    {
      v31 = 0xD000000000000016;
    }

    else
    {
      v30 = 0x80000002695B3750;
    }

    if (v15 != 2)
    {
      v29 = v31;
      v28 = v30;
    }

    if (v15)
    {
      v27 = 0x64656C6261736964;
      v26 = 0xE800000000000000;
    }

    if (v15 <= 1)
    {
      v24 = v27;
    }

    else
    {
      v24 = v29;
    }

    if (v15 <= 1)
    {
      v25 = v26;
    }

    else
    {
      v25 = v28;
    }
  }

  else
  {
    v16 = 0x80000002695B37D0;
    v17 = 0xD00000000000001ALL;
    v18 = 0x80000002695B37F0;
    v19 = 0xD00000000000001BLL;
    if (v15 != 9)
    {
      v19 = 0xD000000000000014;
      v18 = 0x80000002695B3810;
    }

    if (v15 != 8)
    {
      v17 = v19;
      v16 = v18;
    }

    v20 = 0x80000002695B3770;
    v21 = 0xD000000000000013;
    v22 = 0x80000002695B3790;
    v23 = 0xD000000000000012;
    if (v15 != 6)
    {
      v23 = 0xD000000000000016;
      v22 = 0x80000002695B37B0;
    }

    if (v15 != 5)
    {
      v21 = v23;
      v20 = v22;
    }

    if (v15 <= 7)
    {
      v24 = v21;
    }

    else
    {
      v24 = v17;
    }

    if (v15 <= 7)
    {
      v25 = v20;
    }

    else
    {
      v25 = v16;
    }
  }

  MEMORY[0x26D6414B0](v24, v25);

  MEMORY[0x26D6414B0](0xD000000000000010, 0x80000002695B40C0);
  sub_2695ADF8C(*(v0 + 1));
  v32 = MEMORY[0x26D641500]();
  v34 = v33;

  MEMORY[0x26D6414B0](v32, v34);

  MEMORY[0x26D6414B0](0x203A7461202CLL, 0xE600000000000000);
  v35 = type metadata accessor for SegmentsSummary();
  v36 = *(v35 + 24);
  sub_2695AC8F0(v14);
  v37 = sub_2695B0BB8();
  v39 = v38;
  v41 = v82 + 8;
  v40 = *(v82 + 8);
  v40(v14, v10);
  MEMORY[0x26D6414B0](v37, v39);

  MEMORY[0x26D6414B0](0xD000000000000017, 0x80000002695B40E0);
  v74 = v35;
  v42 = *(v35 + 28);
  v77 = v0;
  v43 = v73;
  sub_269591050(&v77[v42], v73);
  v44 = sub_2695B0C78();
  v45 = *(v44 - 8);
  v72 = *(v45 + 48);
  v46 = v72(v43, 1, v44);
  v81 = v10;
  v82 = v41;
  v79 = v45;
  v80 = v40;
  if (v46 == 1)
  {
    sub_2695B0910(v43, &unk_28031D370, &unk_2695B2800);
    v47 = 0xE300000000000000;
    v48 = 7104878;
  }

  else
  {
    sub_2695AC8F0(v14);
    v48 = sub_2695B0BB8();
    v47 = v49;
    v40(v14, v10);
    (*(v45 + 8))(v43, v44);
  }

  MEMORY[0x26D6414B0](v48, v47);

  MEMORY[0x26D6414B0](0xD000000000000018, 0x80000002695B4100);
  v50 = v74;
  v51 = v75;
  v52 = v77;
  sub_269591050(&v77[v74[8]], v75);
  v53 = v72;
  v54 = v72(v51, 1, v44);
  v55 = v78;
  if (v54 == 1)
  {
    sub_2695B0910(v51, &unk_28031D370, &unk_2695B2800);
    v56 = 0xE300000000000000;
    v57 = 7104878;
  }

  else
  {
    sub_2695AC8F0(v14);
    v58 = sub_2695B0BB8();
    v56 = v59;
    v80(v14, v81);
    (*(v79 + 8))(v51, v44);
    v57 = v58;
  }

  MEMORY[0x26D6414B0](v57, v56);

  MEMORY[0x26D6414B0](0xD000000000000015, 0x80000002695B4120);
  v60 = v76;
  sub_269591050(&v52[v50[9]], v76);
  if (v53(v60, 1, v44) == 1)
  {
    sub_2695B0910(v60, &unk_28031D370, &unk_2695B2800);
    v61 = 0xE300000000000000;
    v62 = 7104878;
  }

  else
  {
    sub_2695AC8F0(v14);
    v63 = sub_2695B0BB8();
    v61 = v64;
    v80(v14, v81);
    (*(v79 + 8))(v60, v44);
    v62 = v63;
  }

  MEMORY[0x26D6414B0](v62, v61);

  MEMORY[0x26D6414B0](0xD000000000000017, 0x80000002695B4140);
  sub_269591050(&v52[v50[10]], v55);
  if (v53(v55, 1, v44) == 1)
  {
    sub_2695B0910(v55, &unk_28031D370, &unk_2695B2800);
    v65 = 0xE300000000000000;
    v66 = 7104878;
  }

  else
  {
    sub_2695AC8F0(v14);
    v67 = sub_2695B0BB8();
    v65 = v68;
    v80(v14, v81);
    (*(v79 + 8))(v55, v44);
    v66 = v67;
  }

  MEMORY[0x26D6414B0](v66, v65);

  MEMORY[0x26D6414B0](0xD000000000000019, 0x80000002695B4160);
  v69 = &v52[v50[11]];
  v70 = sub_26958BB30();
  MEMORY[0x26D6414B0](v70);

  MEMORY[0x26D6414B0](41, 0xE100000000000000);
  return v83;
}

uint64_t sub_2695ADF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  sub_2695AF51C(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_2695B11B8();
  v7 = v28;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_34;
    }

    v12 = *(*(a1 + 48) + result);
    if (v12 <= 2)
    {
      if (*(*(a1 + 48) + result))
      {
        if (v12 == 1)
        {
          v14 = 0xE90000000000006ELL;
          v13 = 0x6F69746174636964;
        }

        else
        {
          v14 = 0xE300000000000000;
          v13 = 7496035;
        }
      }

      else
      {
        v13 = 0x6F7473754377656ELL;
        v14 = 0xEB0000000072656DLL;
      }
    }

    else if (*(*(a1 + 48) + result) > 4u)
    {
      if (v12 == 5)
      {
        v13 = 0x6D6F44736D6D6F63;
        v14 = 0xED0000746E616E69;
      }

      else
      {
        v13 = 0xD00000000000001ALL;
        v14 = 0x80000002695B36F0;
      }
    }

    else if (v12 == 3)
    {
      v13 = 0xD000000000000011;
      v14 = 0x80000002695B36C0;
    }

    else
    {
      v14 = 0xE700000000000000;
      v13 = 0x73646F50726961;
    }

    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      sub_2695AF51C((v16 > 1), v17 + 1, 1);
      v7 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_35;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_36;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_37;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_2695B09B8(result, v15, 0);
          v7 = v28;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_2695B09B8(result, v15, 0);
      v7 = v28;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_2695AE2AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v32 = v9;
  v33 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    v17 = sub_2695A3B60();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v34 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 2)
      {
        break;
      }

      if (*(*(a2 + 48) + v19) > 4u)
      {
        if (v21 == 5)
        {
          v22 = 0x6D6F44736D6D6F63;
          v23 = 0xED0000746E616E69;
          if (v15 <= 2)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v22 = 0xD00000000000001ALL;
          v23 = 0x80000002695B36F0;
          if (v15 <= 2)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v21 == 3)
      {
        v22 = 0xD000000000000011;
        v23 = 0x80000002695B36C0;
        if (v15 <= 2)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v23 = 0xE700000000000000;
        v22 = 0x73646F50726961;
        if (v15 <= 2)
        {
          goto LABEL_48;
        }
      }

LABEL_28:
      v24 = 0xD000000000000011;
      v25 = 0xD00000000000001ALL;
      if (v15 == 5)
      {
        v25 = 0x6D6F44736D6D6F63;
      }

      v26 = 0xED0000746E616E69;
      if (v15 != 5)
      {
        v26 = 0x80000002695B36F0;
      }

      if (v15 != 3)
      {
        v24 = 0x73646F50726961;
      }

      v27 = 0x80000002695B36C0;
      if (v15 != 3)
      {
        v27 = 0xE700000000000000;
      }

      if (v15 <= 4)
      {
        v28 = v24;
      }

      else
      {
        v28 = v25;
      }

      if (v15 <= 4)
      {
        v29 = v27;
      }

      else
      {
        v29 = v26;
      }

      if (v22 == v28)
      {
        goto LABEL_58;
      }

LABEL_59:
      v31 = sub_2695B1328();

      if (v31)
      {
        goto LABEL_67;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v19))
    {
      v22 = 0x6F7473754377656ELL;
      v23 = 0xEB0000000072656DLL;
      if (v15 <= 2)
      {
        goto LABEL_48;
      }

      goto LABEL_28;
    }

    if (v21 == 1)
    {
      v22 = 0x6F69746174636964;
    }

    else
    {
      v22 = 7496035;
    }

    if (v21 == 1)
    {
      v23 = 0xE90000000000006ELL;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    if (v15 > 2)
    {
      goto LABEL_28;
    }

LABEL_48:
    if (v15)
    {
      if (v15 == 1)
      {
        v30 = 0x6F69746174636964;
      }

      else
      {
        v30 = 7496035;
      }

      if (v15 == 1)
      {
        v29 = 0xE90000000000006ELL;
      }

      else
      {
        v29 = 0xE300000000000000;
      }

      if (v22 == v30)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    v29 = 0xEB0000000072656DLL;
    if (v22 != 0x6F7473754377656ELL)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (v23 != v29)
    {
      goto LABEL_59;
    }

LABEL_67:
    v9 = v32;
    v3 = v33;
    v8 = v34;
  }

  while (v34);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2695AE674()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

uint64_t sub_2695AE6E8()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

unint64_t sub_2695AE72C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0xD000000000000015;
    if (v1 == 6)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 == 4)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x7974697669746361;
    if (*v0)
    {
      v2 = 0x46746E656D676573;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000013;
    }
  }
}

uint64_t sub_2695AE844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2695B066C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2695AE884(uint64_t a1)
{
  v2 = sub_2695AFFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2695AE8C0(uint64_t a1)
{
  v2 = sub_2695AFFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SegmentsSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D508, &qword_2695B3498);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2695AFFD8();
  sub_2695B13C8();
  LOBYTE(v20) = *v3;
  v21 = 0;
  sub_2695B002C();
  sub_2695B1308();
  if (!v2)
  {
    v20 = *(v3 + 8);
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D520, &qword_2695B34A0);
    sub_2695B0128(&qword_28031D528, sub_2695B0080);
    sub_2695B1308();
    v11 = type metadata accessor for SegmentsSummary();
    v12 = v11[6];
    LOBYTE(v20) = 2;
    sub_2695B0C78();
    sub_2695B0970(&qword_28031D0F0, MEMORY[0x277CC9578]);
    sub_2695B1308();
    v13 = v11[7];
    LOBYTE(v20) = 3;
    sub_2695B12F8();
    v14 = v11[8];
    LOBYTE(v20) = 4;
    sub_2695B12F8();
    v15 = v11[9];
    LOBYTE(v20) = 5;
    sub_2695B12F8();
    v16 = v11[10];
    LOBYTE(v20) = 6;
    sub_2695B12F8();
    v17 = v11[11];
    LOBYTE(v20) = 7;
    type metadata accessor for SiriFirstEnablementStatus();
    sub_2695B0970(&qword_28031D538, type metadata accessor for SiriFirstEnablementStatus);
    sub_2695B1308();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SegmentsSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus();
  v3 = *(*(EnablementStatus - 8) + 64);
  MEMORY[0x28223BE20](EnablementStatus);
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = v40 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v46 = v40 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v40 - v13;
  v15 = sub_2695B0C78();
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D540, &qword_2695B34A8);
  v20 = *(v19 - 8);
  v48 = v19;
  v49 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v40 - v22;
  v24 = type metadata accessor for SegmentsSummary();
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v29 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_2695AFFD8();
  v50 = v23;
  v30 = v51;
  sub_2695B13B8();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v31 = v18;
  v51 = v14;
  v54 = 0;
  sub_2695B00D4();
  v32 = v48;
  sub_2695B12C8();
  *v27 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D520, &qword_2695B34A0);
  v54 = 1;
  sub_2695B0128(&qword_28031D550, sub_2695B01A0);
  sub_2695B12C8();
  v33 = v49;
  *(v27 + 1) = v53;
  LOBYTE(v53) = 2;
  v40[2] = sub_2695B0970(&qword_28031D138, MEMORY[0x277CC9578]);
  sub_2695B12C8();
  (*(v47 + 32))(&v27[v24[6]], v31, v15);
  LOBYTE(v53) = 3;
  v34 = v51;
  v40[1] = 0;
  sub_2695B12B8();
  sub_2695AB190(v34, &v27[v24[7]]);
  LOBYTE(v53) = 4;
  v35 = v46;
  sub_2695B12B8();
  sub_2695AB190(v35, &v27[v24[8]]);
  LOBYTE(v53) = 5;
  v36 = v45;
  sub_2695B12B8();
  sub_2695AB190(v36, &v27[v24[9]]);
  LOBYTE(v53) = 6;
  v37 = v44;
  sub_2695B12B8();
  sub_2695AB190(v37, &v27[v24[10]]);
  LOBYTE(v53) = 7;
  sub_2695B0970(&qword_28031D560, type metadata accessor for SiriFirstEnablementStatus);
  v38 = v43;
  sub_2695B12C8();
  (*(v33 + 8))(v50, v32);
  sub_26958D54C(v38, &v27[v24[11]]);
  sub_2695B01F4(v27, v41);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_2695B0258(v27);
}

char *sub_2695AF51C(char *a1, int64_t a2, char a3)
{
  result = sub_2695AF53C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2695AF53C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D590, &qword_2695B36B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s16SiriUserSegments0C7SummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2695B0C78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v85 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v82 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v73[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v73[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v73[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D580, &unk_2695B36A8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v73[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v84 = &v73[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v73[-v29];
  if ((sub_2695A45C0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((sub_2695AE2AC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_31;
  }

  v80 = v14;
  v31 = v20;
  v32 = type metadata accessor for SegmentsSummary();
  v33 = *(v32 + 24);
  if ((sub_2695B0C48() & 1) == 0)
  {
    goto LABEL_31;
  }

  v81 = v4;
  v34 = a1;
  v35 = v5;
  v76 = v32;
  v77 = v34;
  v36 = *(v32 + 28);
  v37 = v31;
  v38 = *(v31 + 48);
  sub_269591050(v34 + v36, v30);
  v78 = a2;
  v39 = a2 + v36;
  v40 = v81;
  sub_269591050(v39, &v30[v38]);
  v79 = v35;
  v41 = *(v35 + 48);
  if (v41(v30, 1, v40) == 1)
  {
    if (v41(&v30[v38], 1, v40) == 1)
    {
      sub_2695B0910(v30, &unk_28031D370, &unk_2695B2800);
      goto LABEL_11;
    }

LABEL_9:
    v42 = v30;
LABEL_30:
    sub_2695B0910(v42, &qword_28031D580, &unk_2695B36A8);
    goto LABEL_31;
  }

  sub_269591050(v30, v19);
  if (v41(&v30[v38], 1, v40) == 1)
  {
    (*(v79 + 8))(v19, v40);
    goto LABEL_9;
  }

  v75 = v31;
  v43 = v79;
  v44 = v41;
  v45 = v85;
  (*(v79 + 32))(v85, &v30[v38], v40);
  sub_2695B0970(&qword_28031D588, MEMORY[0x277CC9578]);
  v74 = sub_2695B0FA8();
  v46 = v43;
  v37 = v75;
  v47 = *(v46 + 8);
  v48 = v45;
  v41 = v44;
  v47(v48, v81);
  v47(v19, v81);
  v40 = v81;
  sub_2695B0910(v30, &unk_28031D370, &unk_2695B2800);
  if ((v74 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v49 = v76;
  v50 = v77;
  v51 = v76[8];
  v52 = *(v37 + 48);
  sub_269591050(v77 + v51, v28);
  sub_269591050(v78 + v51, &v28[v52]);
  if (v41(v28, 1, v40) == 1)
  {
    if (v41(&v28[v52], 1, v40) == 1)
    {
      sub_2695B0910(v28, &unk_28031D370, &unk_2695B2800);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_269591050(v28, v17);
  if (v41(&v28[v52], 1, v40) == 1)
  {
    (*(v79 + 8))(v17, v40);
LABEL_16:
    v42 = v28;
    goto LABEL_30;
  }

  v53 = v79;
  v54 = v85;
  (*(v79 + 32))(v85, &v28[v52], v40);
  sub_2695B0970(&qword_28031D588, MEMORY[0x277CC9578]);
  v55 = sub_2695B0FA8();
  v56 = *(v53 + 8);
  v50 = v77;
  v56(v54, v40);
  v56(v17, v40);
  v49 = v76;
  sub_2695B0910(v28, &unk_28031D370, &unk_2695B2800);
  if ((v55 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  v57 = v49[9];
  v58 = *(v37 + 48);
  v59 = v84;
  sub_269591050(v50 + v57, v84);
  sub_269591050(v78 + v57, &v59[v58]);
  if (v41(v59, 1, v40) != 1)
  {
    v60 = v80;
    sub_269591050(v59, v80);
    if (v41(&v59[v58], 1, v40) != 1)
    {
      v61 = v79;
      v62 = v85;
      (*(v79 + 32))(v85, &v59[v58], v40);
      sub_2695B0970(&qword_28031D588, MEMORY[0x277CC9578]);
      LODWORD(v81) = sub_2695B0FA8();
      v63 = *(v61 + 8);
      v50 = v77;
      v63(v62, v40);
      v63(v60, v40);
      sub_2695B0910(v59, &unk_28031D370, &unk_2695B2800);
      if ((v81 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    (*(v79 + 8))(v60, v40);
LABEL_29:
    v42 = v59;
    goto LABEL_30;
  }

  if (v41(&v59[v58], 1, v40) != 1)
  {
    goto LABEL_29;
  }

  sub_2695B0910(v59, &unk_28031D370, &unk_2695B2800);
LABEL_24:
  v64 = v49[10];
  v65 = *(v37 + 48);
  v59 = v83;
  sub_269591050(v50 + v64, v83);
  sub_269591050(v78 + v64, &v59[v65]);
  if (v41(v59, 1, v40) == 1)
  {
    if (v41(&v59[v65], 1, v40) == 1)
    {
      sub_2695B0910(v59, &unk_28031D370, &unk_2695B2800);
LABEL_34:
      v67 = sub_26958D5F4(v50 + v49[11], v78 + v49[11]);
      return v67 & 1;
    }

    goto LABEL_29;
  }

  v66 = v82;
  sub_269591050(v59, v82);
  if (v41(&v59[v65], 1, v40) == 1)
  {
    (*(v79 + 8))(v66, v40);
    goto LABEL_29;
  }

  v69 = v79;
  v70 = v85;
  (*(v79 + 32))(v85, &v59[v65], v40);
  sub_2695B0970(&qword_28031D588, MEMORY[0x277CC9578]);
  v71 = sub_2695B0FA8();
  v72 = *(v69 + 8);
  v72(v70, v40);
  v72(v66, v40);
  sub_2695B0910(v59, &unk_28031D370, &unk_2695B2800);
  v49 = v76;
  if (v71)
  {
    goto LABEL_34;
  }

LABEL_31:
  v67 = 0;
  return v67 & 1;
}

unint64_t sub_2695AFFD8()
{
  result = qword_28031D510;
  if (!qword_28031D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D510);
  }

  return result;
}

unint64_t sub_2695B002C()
{
  result = qword_28031D518;
  if (!qword_28031D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D518);
  }

  return result;
}

unint64_t sub_2695B0080()
{
  result = qword_28031D530;
  if (!qword_28031D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D530);
  }

  return result;
}

unint64_t sub_2695B00D4()
{
  result = qword_28031D548;
  if (!qword_28031D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D548);
  }

  return result;
}

uint64_t sub_2695B0128(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031D520, &qword_2695B34A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2695B01A0()
{
  result = qword_28031D558;
  if (!qword_28031D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D558);
  }

  return result;
}

uint64_t sub_2695B01F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentsSummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695B0258(uint64_t a1)
{
  v2 = type metadata accessor for SegmentsSummary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2695B02DC()
{
  sub_2695B03A4();
  if (v0 <= 0x3F)
  {
    sub_2695B0C78();
    if (v1 <= 0x3F)
    {
      sub_2695A5D44();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SiriFirstEnablementStatus();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2695B03A4()
{
  if (!qword_2814B1E20)
  {
    sub_26959EB50();
    v0 = sub_2695B1118();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B1E20);
    }
  }
}

uint64_t getEnumTagSinglePayload for SegmentsSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentsSummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2695B0568()
{
  result = qword_28031D568;
  if (!qword_28031D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D568);
  }

  return result;
}

unint64_t sub_2695B05C0()
{
  result = qword_28031D570;
  if (!qword_28031D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D570);
  }

  return result;
}

unint64_t sub_2695B0618()
{
  result = qword_28031D578;
  if (!qword_28031D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D578);
  }

  return result;
}

uint64_t sub_2695B066C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEF746E656D676553;
  if (v4 || (sub_2695B1328() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46746E656D676573 && a2 == 0xEC0000007367616CLL || (sub_2695B1328() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002695B4180 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002695B41A0 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002695B41C0 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002695B41E0 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002695B4200 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002695B4220 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2695B1328();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2695B0910(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2695B0970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2695B09B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}